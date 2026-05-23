#ifndef LLVM_LIB_TARGET_LUAVM_LUAVMREGISTERINFO_H
#define LLVM_LIB_TARGET_LUAVM_LUAVMREGISTERINFO_H

#include "llvm/CodeGen/TargetRegisterInfo.h"

#define GET_REGINFO_HEADER
#define GET_REGINFO_ENUM
#include "LuaVMGenRegisterInfo.inc"

namespace llvm {
class LuaVMSubtarget;
class TargetRegisterClass;

class LuaVMRegisterInfo : public LuaVMGenRegisterInfo {
  const LuaVMSubtarget &STI;

public:
  LuaVMRegisterInfo(const LuaVMSubtarget &ST);

  const uint16_t *getCalleeSavedRegs(const MachineFunction *MF) const override;
  virtual const uint32_t *getCallPreservedMask(const MachineFunction &MF,
                                               CallingConv::ID) const;

  BitVector getReservedRegs(const MachineFunction &MF) const override;

  const TargetRegisterClass *intRegClass(unsigned Size) const;

  bool eliminateFrameIndex(MachineBasicBlock::iterator MI, int SPAdj,
                                   unsigned FIOperandNum,
                                   RegScavenger *RS = nullptr) const override;

  Register getFrameRegister(const MachineFunction &MF) const override;
  virtual const TargetRegisterClass *getPhysRegBaseClass(MCRegister Reg) const;
};

} // end namespace llvm

#endif // LLVM_LIB_TARGET_LUAVM_LUAVMREGISTERINFO_H