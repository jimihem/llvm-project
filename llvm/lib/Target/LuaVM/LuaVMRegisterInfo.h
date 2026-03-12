#ifndef LLVM_LIB_TARGET_LUAVM_LUAVMREGISTERINFO_H
#define LLVM_LIB_TARGET_LUAVM_LUAVMREGISTERINFO_H

#include "llvm/CodeGen/TargetRegisterInfo.h"

#define GET_REGINFO_HEADER
#include "LuaVMGenRegisterInfo.inc"

namespace llvm {
class LuaVMSubtarget;
class TargetRegisterClass;

struct LuaVMRegisterInfo : public LuaVMGenRegisterInfo {
  LuaVMRegisterInfo(const LuaVMSubtarget &ST);

  const uint16_t *getCalleeSavedRegs(const MachineFunction *MF) const override;

  BitVector getReservedRegs(const MachineFunction &MF) const override;

  const TargetRegisterClass *intRegClass(unsigned Size) const override;
};

} // end namespace llvm

#endif // LLVM_LIB_TARGET_LUAVM_LUAVMREGISTERINFO_H