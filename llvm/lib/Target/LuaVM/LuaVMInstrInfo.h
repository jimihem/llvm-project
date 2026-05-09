#ifndef LLVM_LIB_TARGET_LUAVM_LUAVMINSTRINFO_H
#define LLVM_LIB_TARGET_LUAVM_LUAVMINSTRINFO_H
#include "llvm/CodeGen/TargetInstrInfo.h"

#define GET_INSTRINFO_HEADER
#define GET_INSTRINFO_ENUM
#include "LuaVMGenInstrInfo.inc"

namespace llvm {
class LuaVMSubtarget;

class LuaVMInstrInfo : public LuaVMGenInstrInfo {
  const LuaVMSubtarget &Subtarget;

public:
  explicit LuaVMInstrInfo(const LuaVMSubtarget &STI);

  virtual void loadRegFromStackSlot(MachineBasicBlock &MBB,
                                    MachineBasicBlock::iterator MI,
                                    Register DestReg, int FrameIndex,
                                    const TargetRegisterClass *RC,
                                    const TargetRegisterInfo *TRI,
                                    Register VReg) const;
  virtual void storeRegToStackSlot(MachineBasicBlock &MBB,
                                   MachineBasicBlock::iterator MI,
                                   Register SrcReg, bool isKill, int FrameIndex,
                                   const TargetRegisterClass *RC,
                                   const TargetRegisterInfo *TRI,
                                   Register VReg) const;
  virtual unsigned isStoreToStackSlot(const MachineInstr &MI,
                                      int &FrameIndex) const;
  virtual unsigned isLoadFromStackSlot(const MachineInstr &MI,
                                       int &FrameIndex) const;
  virtual int getSPAdjust(const MachineInstr &MI) const;
};

} // namespace llvm

#endif // LLVM_LIB_TARGET_LUAVM_LUAVMINSTRINFO_H