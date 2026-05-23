#include "LuaVMRegisterInfo.h"
#include "LuaVMSubtarget.h"
#include "LuaVMFrameLowering.h"
#include "llvm/CodeGen/MachineFunction.h"
#include "llvm/CodeGen//MachineFrameInfo.h"

using namespace llvm;

#define GET_REGINFO_TARGET_DESC
#include "LuaVMGenRegisterInfo.inc"

LuaVMRegisterInfo::LuaVMRegisterInfo(const LuaVMSubtarget &ST) : LuaVMGenRegisterInfo(LuaVM::SP), STI(ST) {
  // Constructor body can be left empty if initialization is handled by TableGen.
}

const uint16_t *LuaVMRegisterInfo::getCalleeSavedRegs(const MachineFunction *MF) const {
  return LuaVM_CC_CalleeSavedRegs_SaveList;
}

const uint32_t *
LuaVMRegisterInfo::getCallPreservedMask(const MachineFunction &MF,
                                        CallingConv::ID) const {
  return LuaVM_CC_CalleeSavedRegs_RegMask;
}

BitVector LuaVMRegisterInfo::getReservedRegs(const MachineFunction &MF) const {
  BitVector Reserved(getNumRegs());
  Reserved.set(LuaVM::R0);
  Reserved.set(LuaVM::FP);
  Reserved.set(LuaVM::SP);
  Reserved.set(LuaVM::LINK);
  Reserved.set(LuaVM::STR);
  Reserved.set(LuaVM::HI);
  Reserved.set(LuaVM::LO);
  Reserved.set(LuaVM::PDC0);
  Reserved.set(LuaVM::PDC1);
  return Reserved;
}

const TargetRegisterClass *
LuaVMRegisterInfo::intRegClass(unsigned Size) const {
  // Return the appropriate integer register class for a given size.
  // This is a placeholder. You need to ensure GPR register class exists.
  return &LuaVM::GPRRegsRegClass;
}

bool LuaVMRegisterInfo::eliminateFrameIndex(MachineBasicBlock::iterator MI,
                                            int SPAdj, unsigned FIOperandNum,
                                            RegScavenger *RS) const {
  MachineBasicBlock &MBB = *MI->getParent();
  MachineFunction &MF = *MBB.getParent();
  unsigned OpCode = MI->getOpcode();
  unsigned FI = MI->getOperand(FIOperandNum).getIndex();
  unsigned offset = MF.getFrameInfo().getObjectOffset(FI);

  if (OpCode == LuaVM::ST || OpCode == LuaVM::STD || OpCode == LuaVM::LD ||
      OpCode == LuaVM::LDD) {
    MI->getOperand(FIOperandNum).ChangeToRegister(LuaVM::FP, false);
    MI->getOperand(2).setImm(MI->getOperand(2).getImm() + offset);
  } else {
    BuildMI(MBB, MI, MI->getDebugLoc(), STI.getInstrInfo()->get(LuaVM::ADDi),
            LuaVM::R0)
        .addReg(LuaVM::SP)
        .addImm(offset);
    MI->getOperand(FIOperandNum).ChangeToRegister(LuaVM::R0, false);
  }
  return false;
}

Register LuaVMRegisterInfo::getFrameRegister(const MachineFunction& MF) const {
  return Register(LuaVM::FP);
}

const TargetRegisterClass *
LuaVMRegisterInfo::getPhysRegBaseClass(MCRegister Reg) const {
  for (const TargetRegisterClass *RC : regclasses()) {
    if (RC->contains(Reg))
      return RC;
  }
  assert(false && "Couldn't find the register class");
  return nullptr;
}