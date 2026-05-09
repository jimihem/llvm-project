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
      : TargetFrameLowering(StackGrowsUp, Align(8), 4, Align(8)), STI(ST) {}

  bool hasFP(const MachineFunction &MF) const override;

  void emitPrologue(MachineFunction &MF, MachineBasicBlock &MBB) const override;
  void emitEpilogue(MachineFunction &MF, MachineBasicBlock &MBB) const override;

  bool spillCalleeSavedRegisters(MachineBasicBlock &MBB,
                                MachineBasicBlock::iterator MI,
                                ArrayRef<CalleeSavedInfo> CSI,
                                const TargetRegisterInfo *TRI) const override;
  virtual MachineBasicBlock::iterator
  eliminateCallFramePseudoInstr(MachineFunction &MF, MachineBasicBlock &MBB,
                                MachineBasicBlock::iterator MI) const;
  virtual bool allocateScavengingFrameIndexesNearIncomingSP(
      const MachineFunction &MF) const {
    return false;
  }

  virtual bool targetHandlesStackFrameRounding() const { return true; }
};

} // End llvm namespace

#endif