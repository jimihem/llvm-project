#include "LuaVMRegisterInfo.h"
#include "LuaVMSubtarget.h"
#include "LuaVMFrameLowering.h"
#include "llvm/CodeGen/MachineFunction.h"

using namespace llvm;

#define GET_REGINFO_TARGET_DESC
#include "LuaVMGenRegisterInfo.inc"

LuaVMRegisterInfo::LuaVMRegisterInfo(const LuaVMSubtarget &ST) : LuaVMGenRegisterInfo(LuaVM::SP), STI(ST) {
  // Constructor body can be left empty if initialization is handled by TableGen.
}

const uint16_t *LuaVMRegisterInfo::getCalleeSavedRegs(const MachineFunction *MF) const {
  // Define which registers are callee-saved (preserved across function calls).
  // This is a placeholder. You need to define the actual list based on your ABI.
  static const uint16_t CalleeSavedRegs[] = { 0 }; // Placeholder, return null or real list
  return CalleeSavedRegs;
}

BitVector LuaVMRegisterInfo::getReservedRegs(const MachineFunction &MF) const {
  BitVector Reserved(getNumRegs());
  
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
  return false;
}

Register LuaVMRegisterInfo::getFrameRegister(const MachineFunction& MF) const {
  return Register();
}