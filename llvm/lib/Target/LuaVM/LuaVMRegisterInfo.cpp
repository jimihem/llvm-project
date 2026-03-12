#include "LuaVMRegisterInfo.h"
#include "LuaVM.h"
#include "LuaVMSubtarget.h"
#include "llvm/CodeGen/MachineFunction.h"
#include "llvm/CodeGen/MachineInstrBuilder.h"
#include "llvm/CodeGen/MachineRegisterInfo.h"
#include "llvm/CodeGen/RegisterScavenging.h"
#include "llvm/Support/ErrorHandling.h"

using namespace llvm;

#define GET_REGINFO_TARGET_DESC
#include "LuaVMGenRegisterInfo.inc"

LuaVMRegisterInfo::LuaVMRegisterInfo(const LuaVMSubtarget &ST) : LuaVMGenRegisterInfo(LuaVM::SP) {
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
  // Reserve special registers like Stack Pointer (SP), Frame Pointer (FP), etc.
  Reserved.set(LuaVM::SP);
  Reserved.set(LuaVM::ZERO); // The zero register is always reserved.
  return Reserved;
}

const TargetRegisterClass *
LuaVMRegisterInfo::intRegClass(unsigned Size) const {
  // Return the appropriate integer register class for a given size.
  // This is a placeholder. You need to ensure GPR register class exists.
  return &LuaVM::GPRRegClass;
}