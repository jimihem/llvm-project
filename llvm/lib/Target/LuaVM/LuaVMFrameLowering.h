#ifndef LLVM_LIB_TARGET_LUAVM_LUAVMFRAMELOWERING_H
#define LLVM_LIB_TARGET_LUAVM_LUAVMFRAMELOWERING_H

#include "llvm/CodeGen/TargetFrameLowering.h"

namespace llvm {
class LuaVMSubtarget;

class LuaVMFrameLowering : public TargetFrameLowering {
protected:
  const LuaVMSubtarget &STI;

public:
  explicit LuaVMFrameLowering(const LuaVMSubtarget &ST)
      : TargetFrameLowering(StackGrowsDown, Align(8), 0, Align(8)), STI(ST) {}

  bool hasFP(const MachineFunction &MF) const override;

  void emitPrologue(MachineFunction &MF, MachineBasicBlock &MBB) const override;
  void emitEpilogue(MachineFunction &MF, MachineBasicBlock &MBB) const override;

  bool spillCalleeSavedRegisters(MachineBasicBlock &MBB,
                                MachineBasicBlock::iterator MI,
                                ArrayRef<CalleeSavedInfo> CSI,
                                const TargetRegisterInfo *TRI) const override;

  const TargetRegisterInfo *
  getCSRInfo(const MachineFunction &MF, const CallSiteInfo &CSI) const override;
};

} // End llvm namespace

#endif