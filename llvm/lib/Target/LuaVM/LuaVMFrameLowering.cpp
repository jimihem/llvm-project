#include "LuaVMFrameLowering.h"
#include "LuaVMInstrInfo.h"
#include "LuaVMRegisterInfo.h"
#include "LuaVMSubtarget.h"
#include "llvm/CodeGen/MachineFunction.h"
#include "llvm/CodeGen/MachineFrameInfo.h"
#include "llvm/Target/TargetMachine.h"

using namespace llvm;

bool LuaVMFrameLowering::hasFP(const MachineFunction &MF) const {
  return true;
}

void LuaVMFrameLowering::emitPrologue(MachineFunction &MF,
                                      MachineBasicBlock &MBB) const {
  // Emit the function prologue.
  // e.g., decrement stack pointer, save frame pointer, save registers.
  // This is a placeholder.
  MF.getFrameInfo().setStackSize(MF.getFrameInfo().getStackSize() +
                                 getOffsetOfLocalArea());
  MachineBasicBlock::iterator MBBI = MBB.begin();
  DebugLoc DL = MBBI != MBB.end() ? MBBI->getDebugLoc() : DebugLoc();
  BuildMI(MBB, MBBI, DL, STI.getInstrInfo()->get(LuaVM::ST))
      .addReg(LuaVM::FP)
      .addReg(LuaVM::SP)
      .addImm(0);
  BuildMI(MBB, MBBI, DL, STI.getInstrInfo()->get(LuaVM::ST))
      .addReg(LuaVM::LINK)
      .addReg(LuaVM::SP)
      .addImm(4);
  BuildMI(MBB, MBBI, DL, STI.getInstrInfo()->get(LuaVM::ADDi))
      .addReg(LuaVM::FP)
      .addReg(LuaVM::SP)
      .addImm(0);
  BuildMI(MBB, MBBI, DL, STI.getInstrInfo()->get(LuaVM::ADDi), LuaVM::SP)
      .addReg(LuaVM::SP)
      .addImm(MF.getFrameInfo().getStackSize());
}

void LuaVMFrameLowering::emitEpilogue(MachineFunction &MF, MachineBasicBlock &MBB) const {
  // Emit the function epilogue.
  // e.g., restore registers, increment stack pointer, return.
  // This is a placeholder.
  MachineBasicBlock::iterator MBBI = MBB.getFirstTerminator();
  DebugLoc DL = MBBI != MBB.end() ? MBBI->getDebugLoc() : DebugLoc();
  BuildMI(MBB, MBBI, DL, STI.getInstrInfo()->get(LuaVM::SUBi), LuaVM::SP)
      .addReg(LuaVM::SP)
      .addImm(MF.getFrameInfo().getStackSize());
  BuildMI(MBB, MBBI, DL, STI.getInstrInfo()->get(LuaVM::LD), LuaVM::FP)
      .addReg(LuaVM::SP)
      .addImm(0);
  BuildMI(MBB, MBBI, DL, STI.getInstrInfo()->get(LuaVM::LD), LuaVM::LINK)
      .addReg(LuaVM::SP)
      .addImm(4);
}

bool LuaVMFrameLowering::spillCalleeSavedRegisters(MachineBasicBlock &MBB,
                                                   MachineBasicBlock::iterator MI,
                                                   ArrayRef<CalleeSavedInfo> CSI,
                                                   const TargetRegisterInfo *TRI) const {
  // Implement logic to spill callee-saved registers.
  // This is a placeholder.
  return false; // Return true if not implemented or failed.
}

MachineBasicBlock::iterator LuaVMFrameLowering::eliminateCallFramePseudoInstr(
    MachineFunction &MF, MachineBasicBlock &MBB,
    MachineBasicBlock::iterator MI) const {
  unsigned OpCode =
      MI->getOpcode() == LuaVM::ADJCALLSTACKUP ? LuaVM::ADDi : LuaVM::SUBi;
  if (MI->getOperand(0).getImm() != 0) {
    const TargetInstrInfo *TII = MF.getSubtarget().getInstrInfo();
    BuildMI(MBB, MI, MI->getDebugLoc(), TII->get(OpCode), LuaVM::SP)
        .addReg(LuaVM::SP)
        .addImm(MI->getOperand(0).getImm());
  }
  return MBB.erase(MI);
}

StackOffset
LuaVMFrameLowering::getFrameIndexReference(const MachineFunction &MF, int FI,
                                           Register &FrameReg) const {
  FrameReg = LuaVM::FP;
  return StackOffset::getFixed(MF.getFrameInfo().getObjectOffset(FI));
}
