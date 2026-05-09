#include "LuaVMInstrInfo.h"
#include "LuaVMRegisterInfo.h"

#define GET_INSTRINFO_CTOR_DTOR
#include "LuaVMGenInstrInfo.inc"
using namespace llvm;

LuaVMInstrInfo::LuaVMInstrInfo(const LuaVMSubtarget &STI)
    : LuaVMGenInstrInfo(LuaVM::ADJCALLSTACKUP, LuaVM::ADJCALLSTACKDOWN, ~0u, LuaVM::RET),
      Subtarget(STI) {}

void LuaVMInstrInfo::loadRegFromStackSlot(MachineBasicBlock &MBB,
                                          MachineBasicBlock::iterator MI,
                                          Register DestReg, int FrameIndex,
                                          const TargetRegisterClass *RC,
                                          const TargetRegisterInfo *TRI,
                                          Register VReg) const {
  DebugLoc DL;
  if (MI != MBB.end())
    DL = MI->getDebugLoc();
  unsigned opCode = 0;
  if (RC->getID() == LuaVM::GPRRegsRegClassID) {
    opCode = LuaVM::LD;
  } else if (RC->getID() == LuaVM::FPRRegsRegClassID) {
    opCode = LuaVM::LDD;
  }
  BuildMI(MBB, MI, DL, get(opCode), DestReg)
      .addFrameIndex(FrameIndex).addImm(0);
}

void LuaVMInstrInfo::storeRegToStackSlot(
    MachineBasicBlock &MBB, MachineBasicBlock::iterator MI, Register SrcReg,
    bool isKill, int FrameIndex, const TargetRegisterClass *RC,
    const TargetRegisterInfo *TRI, Register VReg) const {
  DebugLoc DL;
  if (MI != MBB.end())
    DL = MI->getDebugLoc();
  unsigned opCode = 0;
  if (RC->getID() == LuaVM::GPRRegsRegClassID) {
    opCode = LuaVM::ST;
  } else if (RC->getID() == LuaVM::FPRRegsRegClassID) {
    opCode = LuaVM::STD;
  }

  BuildMI(MBB, MI, DL, get(opCode))
      .addReg(SrcReg, isKill ? RegState::Kill : 0)
      .addFrameIndex(FrameIndex)
      .addImm(0);
}

unsigned LuaVMInstrInfo::isStoreToStackSlot(const MachineInstr &MI,
                                            int &FrameIndex) const {
  if ((MI.getOpcode() == LuaVM::ST || MI.getOpcode() == LuaVM::STD) &&
      MI.getOperand(1).isFI()) {
    FrameIndex = MI.getOperand(1).getIndex();
    return MI.getOperand(0).getReg();
  }
  return 0;
}

unsigned LuaVMInstrInfo::isLoadFromStackSlot(const MachineInstr &MI,
                                             int &FrameIndex) const {
  if ((MI.getOpcode() == LuaVM::LD || MI.getOpcode() == LuaVM::LDD) &&
      MI.getOperand(1).isFI()) {
    FrameIndex = MI.getOperand(1).getIndex();
    return MI.getOperand(0).getReg();
  }
  return 0;
}

int LuaVMInstrInfo::getSPAdjust(const MachineInstr &MI) const {
  return MI.getOperand(0).getImm();
}
