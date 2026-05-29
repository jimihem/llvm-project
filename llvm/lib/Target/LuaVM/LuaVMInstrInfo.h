#ifndef LLVM_LIB_TARGET_LUAVM_LUAVMINSTRINFO_H
#define LLVM_LIB_TARGET_LUAVM_LUAVMINSTRINFO_H
#include "llvm/CodeGen/TargetInstrInfo.h"

#define GET_INSTRINFO_HEADER
#define GET_INSTRINFO_ENUM
#include "LuaVMGenInstrInfo.inc"

namespace llvm {
class LuaVMSubtarget;
enum class Cond { EQ, LT, LE, GT, GE, NE };
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

  virtual void copyPhysReg(MachineBasicBlock &MBB,
                           MachineBasicBlock::iterator MI, const DebugLoc &DL,
                           MCRegister DestReg, MCRegister SrcReg,
                           bool KillSrc) const;
  virtual unsigned getInstSizeInBytes(const MachineInstr &MI) const;
  virtual bool isBranchOffsetInRange(unsigned BranchOpc,
                                     int64_t BrOffset) const;

  /// \returns The block that branch instruction \p MI jumps to.
  virtual MachineBasicBlock *getBranchDestBlock(const MachineInstr &MI) const;
  virtual void insertIndirectBranch(MachineBasicBlock &MBB,
                                    MachineBasicBlock &NewDestBB,
                                    MachineBasicBlock &RestoreBB,
                                    const DebugLoc &DL, int64_t BrOffset = 0,
                                    RegScavenger *RS = nullptr) const;
  virtual bool analyzeBranch(MachineBasicBlock &MBB, MachineBasicBlock *&TBB,
                             MachineBasicBlock *&FBB,
                             SmallVectorImpl<MachineOperand> &Cond,
                             bool AllowModify = false) const;
  virtual bool
  reverseBranchCondition(SmallVectorImpl<MachineOperand> &Cond) const;
  virtual unsigned insertBranch(MachineBasicBlock &MBB, MachineBasicBlock *TBB,
                                MachineBasicBlock *FBB,
                                ArrayRef<MachineOperand> Cond,
                                const DebugLoc &DL,
                                int *BytesAdded = nullptr) const;
  virtual unsigned removeBranch(MachineBasicBlock &MBB,
                                int *BytesRemoved = nullptr) const;
};

} // namespace llvm

#endif // LLVM_LIB_TARGET_LUAVM_LUAVMINSTRINFO_H