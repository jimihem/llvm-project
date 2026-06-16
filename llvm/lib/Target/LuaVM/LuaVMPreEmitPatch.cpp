//===-- LuaVMPreEmitPatch.cpp - Pre-Encode Patch Collection for LuaVM -------===//
//
// This file contains multiple machine function passes executed BEFORE
// instruction encoding stage.
// Current pass: Convert absolute symbol immediates to PC-relative PIC form.
//
// Supported instruction types & conversion rules:
// 1. IType: ADDi Rt, Rs, @GV  --> ADDi TMP1, PC, @GV; ADD Rt, Rs, TMP1
// 2. MType: LD  Rt, Base, @GV --> ADDi TMP1, PC, @GV; ADD TMP1, TMP1, Base; LD  Rt, TMP1, 0
// 3. MOVi:  MOVi Rt, @GV      --> ADDi Rt, PC, @GV
//
// Symbol filter: Process global symbols that are NOT (external & non-hidden),
//                plus constant pool and jump table symbols.
//===----------------------------------------------------------------------===//

#include "LuaVMSubtarget.h"
#include "llvm/CodeGen/MachineFunctionPass.h"
#include "llvm/CodeGen/MachineInstrBuilder.h"
#include "llvm/CodeGen/MachineRegisterInfo.h"
#include "llvm/CodeGen/MachineBasicBlock.h"
#include "llvm/CodeGen/MachineFunction.h"
#include "llvm/IR/GlobalValue.h"
#include "llvm/Support/Debug.h"
#include "llvm/Support/raw_ostream.h"

using namespace llvm;

#define DEBUG_TYPE "luavm-pic-lowering"

namespace {

/// Convert absolute symbol immediates to PC-relative PIC addressing before
/// encode
class LuaVMPICLowering : public MachineFunctionPass {
public:
  static char ID;
  LuaVMPICLowering() : MachineFunctionPass(ID) {}

  StringRef getPassName() const override {
    return "LuaVM PIC Address Lowering";
  }

  bool runOnMachineFunction(MachineFunction &MF) override;

private:
  /// Check if operand is symbol immediate requiring PIC conversion:
  /// Global(NOT external + non-hidden) / ConstantPool / JumpTable
  bool isSymbolImm(const MachineOperand &MO) const;
  bool isExportSymbol(const MachineOperand &MO) const;

  Register getPCReg() const { return LuaVM::PC; }
  Register getTmpReg(unsigned Id) { return Id ? LuaVM::TMP1 : LuaVM::TMP0; }

  bool handleIType(MachineBasicBlock &MBB, MachineInstr *MI);
  bool handleMType(MachineBasicBlock &MBB, MachineInstr *MI);
  bool handleMOVi(MachineBasicBlock &MBB, MachineInstr *MI);
};

} // end anonymous namespace

char LuaVMPICLowering::ID = 0;

// Exposed pass creation interface
FunctionPass *llvm::createLuaVMPICLoweringPass() {
  return new LuaVMPICLowering();
}

//===----------------------------------------------------------------------===//
// Main pass entry
//===----------------------------------------------------------------------===//
bool LuaVMPICLowering::runOnMachineFunction(MachineFunction &MF) {
  bool Changed = false;

  for (MachineBasicBlock &MBB : MF) {
    // Use pre-increment to avoid iterator invalidation
    for (MachineBasicBlock::iterator MI = MBB.begin(), E = MBB.end();
         MI != E;) {
      MachineInstr *Instr = &*MI;
      ++MI;

      unsigned Opc = Instr->getOpcode();

      // Dispatch by instruction type
      if (Opc == LuaVM::MOVi) {
        Changed |= handleMOVi(MBB, Instr);
      }
      // Process all MType load/store instructions
      else if (Opc == LuaVM::LD || Opc == LuaVM::LH || Opc == LuaVM::LB ||
               Opc == LuaVM::LDD || Opc == LuaVM::ST || Opc == LuaVM::SH ||
               Opc == LuaVM::SB || Opc == LuaVM::STD) {
        Changed |= handleMType(MBB, Instr);
      }
      // Process all IType immediate arithmetic/compare/shift instructions
      else if (Opc == LuaVM::ADDi || Opc == LuaVM::SUBi || Opc == LuaVM::MULi ||
               Opc == LuaVM::DIVi || Opc == LuaVM::DIViu ||
               Opc == LuaVM::ANDi || Opc == LuaVM::ORi || Opc == LuaVM::XORi ||
               Opc == LuaVM::NORi || Opc == LuaVM::CMPi ||
               Opc == LuaVM::CMPiu || Opc == LuaVM::SHLi ||
               Opc == LuaVM::SHRi || Opc == LuaVM::SRAi) {
        Changed |= handleIType(MBB, Instr);
      }
    }
  }
  return Changed;
}

//===----------------------------------------------------------------------===//
// Check whether operand needs PIC conversion
//===----------------------------------------------------------------------===//
bool LuaVMPICLowering::isSymbolImm(const MachineOperand &MO) const {
  return MO.isCPI() || MO.isJTI() || MO.isGlobal();
}

bool LuaVMPICLowering::isExportSymbol(const MachineOperand &MO) const {
  if (MO.isGlobal()) {
    const GlobalValue *GV = MO.getGlobal();
    return GV->getLinkage() == GlobalValue::ExternalLinkage &&
           !GV->hasHiddenVisibility();
  }
  return false;
}

//===----------------------------------------------------------------------===//
// Handle IType immediate instructions
//===----------------------------------------------------------------------===//
bool LuaVMPICLowering::handleIType(MachineBasicBlock &MBB, MachineInstr *MI) {
  MachineOperand &ImmOp =
      MI->getOperand(0).isDef() ? MI->getOperand(2) : MI->getOperand(1);

  // Skip non-symbol immediate
  if (!isSymbolImm(ImmOp))
    return false;
  bool IsExpSym = isExportSymbol(ImmOp);
  const LuaVMInstrInfo *TII =
      MBB.getParent()->getSubtarget<LuaVMSubtarget>().getInstrInfo();
  Register Tmp = getTmpReg(IsExpSym ? 0 : 1);
  Register PC = getPCReg();
  unsigned OldOpc = MI->getOpcode();
  unsigned NewOpc;

  // Map IType immediate opcode to corresponding RType register opcode
  switch (OldOpc) {
  case LuaVM::ADDi:
    NewOpc = LuaVM::ADD;
    break;
  case LuaVM::SUBi:
    NewOpc = LuaVM::SUB;
    break;
  case LuaVM::MULi:
    NewOpc = LuaVM::MUL;
    break;
  case LuaVM::DIVi:
    NewOpc = LuaVM::DIV;
    break;
  case LuaVM::DIViu:
    NewOpc = LuaVM::DIVu;
    break;
  case LuaVM::ANDi:
    NewOpc = LuaVM::AND;
    break;
  case LuaVM::ORi:
    NewOpc = LuaVM::OR;
    break;
  case LuaVM::XORi:
    NewOpc = LuaVM::XOR;
    break;
  case LuaVM::NORi:
    NewOpc = LuaVM::NOR;
    break;
  case LuaVM::SHLi:
    NewOpc = LuaVM::SHL;
    break;
  case LuaVM::SHRi:
    NewOpc = LuaVM::SHR;
    break;
  case LuaVM::SRAi:
    NewOpc = LuaVM::SRA;
    break;
  case LuaVM::CMPi:
    NewOpc = LuaVM::CMP;
    break;
  case LuaVM::CMPiu:
    NewOpc = LuaVM::CMPu;
    break;
  default:
    llvm_unreachable("Unsupported IType opcode for PIC lowering");
  }

  BuildMI(MBB, MI, MI->getDebugLoc(), TII->get(LuaVM::MOVi), Tmp).add(ImmOp);
  if (!IsExpSym)
    BuildMI(MBB, MI, MI->getDebugLoc(), TII->get(LuaVM::ADD), Tmp).addReg(Tmp).addReg(PC);

  // Rewrite original IType instruction to RType form
  MI->setDesc(TII->get(NewOpc));
  MI->getOperand(2).ChangeToRegister(Tmp, false);

  LLVM_DEBUG(dbgs() << "[PIC] IType converted: " << *MI << "\n");
  return true;
}

//===----------------------------------------------------------------------===//
// Handle MType load/store instructions
// All offset operands are fixed at index 2
//===----------------------------------------------------------------------===//
bool LuaVMPICLowering::handleMType(MachineBasicBlock &MBB, MachineInstr *MI) {
  const int OffsetIdx = 2;
  MachineOperand &OffsetOp = MI->getOperand(OffsetIdx);

  // Skip non-symbol immediate
  if (!isSymbolImm(OffsetOp))
    return false;
  bool IsExpSym = isExportSymbol(OffsetOp);
  const LuaVMInstrInfo *TII =
      MBB.getParent()->getSubtarget<LuaVMSubtarget>().getInstrInfo();
  Register Tmp = getTmpReg(IsExpSym ? 0 : 1);
  Register PC = getPCReg();
  Register BaseReg = MI->getOperand(OffsetIdx - 1).getReg();

  BuildMI(MBB, MI, MI->getDebugLoc(), TII->get(LuaVM::MOVi), Tmp).add(OffsetOp);

  if (!IsExpSym)
    BuildMI(MBB, MI, MI->getDebugLoc(), TII->get(LuaVM::ADD), Tmp).addReg(Tmp).addReg(PC);
  
  if (BaseReg != LuaVM::PDC0) {
    // Insert: ADD TMP1, Base, TMP1 before original instruction
    BuildMI(MBB, MI, MI->getDebugLoc(), TII->get(LuaVM::ADD), Tmp)
        .addReg(BaseReg)
        .addReg(Tmp);
  }

  // Update base register to temporary register
  MI->getOperand(OffsetIdx - 1).setReg(Tmp);
  OffsetOp.ChangeToImmediate(0);

  LLVM_DEBUG(dbgs() << "[PIC] MType converted: " << *MI << "\n");
  return true;
}

//===----------------------------------------------------------------------===//
// Handle MOVi large immediate instruction
//===----------------------------------------------------------------------===//
bool LuaVMPICLowering::handleMOVi(MachineBasicBlock &MBB, MachineInstr *MI) {
  MachineOperand &ImmOp = MI->getOperand(1);

  // Skip non-symbol immediate
  if (!isSymbolImm(ImmOp))
    return false;
  bool IsExpSym = isExportSymbol(ImmOp);
  const LuaVMInstrInfo *TII =
      MBB.getParent()->getSubtarget<LuaVMSubtarget>().getInstrInfo();
  Register Tmp = getTmpReg(IsExpSym ? 0 : 1);
  Register PC = getPCReg();
  Register DstReg = MI->getOperand(0).getReg();

  BuildMI(MBB, MI, MI->getDebugLoc(), TII->get(LuaVM::MOVi), Tmp).add(ImmOp);

  if (!IsExpSym) {
    BuildMI(MBB, MI, MI->getDebugLoc(), TII->get(LuaVM::ADD), DstReg).addReg(Tmp).addReg(PC);
  } else {
    BuildMI(MBB, MI, MI->getDebugLoc(), TII->get(LuaVM::ADDi), DstReg).addReg(Tmp).addImm(0);
  }

  LLVM_DEBUG(dbgs() << "[PIC] MOVi converted: " << *MI << "\n");
  MI->eraseFromParent();
  return true;
}