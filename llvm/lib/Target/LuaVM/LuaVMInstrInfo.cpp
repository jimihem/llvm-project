#include "LuaVMInstrInfo.h"
#include "LuaVMRegisterInfo.h"
#include "LuaVMSubtarget.h"
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

void LuaVMInstrInfo::copyPhysReg(MachineBasicBlock &MBB,
                                 MachineBasicBlock::iterator MI,
                                 const DebugLoc &DL, MCRegister DestReg,
                                 MCRegister SrcReg, bool KillSrc) const {
  if (Subtarget.getRegisterInfo()->getPhysRegBaseClass(DestReg)->getID() ==
      LuaVM::FPRRegsRegClassID) {
    BuildMI(MBB, MI, DL, get(LuaVM::MOVD), DestReg)
        .addReg(SrcReg, KillSrc ? RegState::Kill : 0);
  } else {
    BuildMI(MBB, MI, DL, get(LuaVM::ADDi), DestReg)
        .addReg(SrcReg, KillSrc ? RegState::Kill : 0)
        .addImm(0);
  }
}

unsigned LuaVMInstrInfo::getInstSizeInBytes(const MachineInstr &MI) const {
  if (MI.getOpcode() == LuaVM::MOVi)
    return 8;
  if (MI.isPseudo())
    return 0;
  return 4;
}

bool LuaVMInstrInfo::isBranchOffsetInRange(unsigned BranchOpc,
                                           int64_t BrOffset) const {
  int64_t min = -(1 << 23);
  int64_t max = (1 << 23) - 1;
  return BrOffset >= min && BrOffset <= max;
}

/// \returns The block that branch instruction \p MI jumps to.
MachineBasicBlock *
LuaVMInstrInfo::getBranchDestBlock(const MachineInstr &MI) const {
  if (MI.isBranch() && !MI.isIndirectBranch())
    return MI.getOperand(0).getMBB();
  return nullptr;
}
void LuaVMInstrInfo::insertIndirectBranch(MachineBasicBlock &MBB,
                                          MachineBasicBlock &NewDestBB,
                                          MachineBasicBlock &RestoreBB,
                                          const DebugLoc &DL, int64_t BrOffset,
                                          RegScavenger *RS) const {
  BuildMI(&MBB, DL, get(LuaVM::MOVi), LuaVM::R0).addMBB(&NewDestBB);
  BuildMI(&MBB, DL, get(LuaVM::JIND)).addReg(LuaVM::R0);
}

bool LuaVMInstrInfo::analyzeBranch(MachineBasicBlock &MBB,
                                   MachineBasicBlock *&TBB,
                                   MachineBasicBlock *&FBB,
                                   SmallVectorImpl<MachineOperand> &Cond,
                                   bool AllowModify) const {
  auto MI = MBB.getFirstTerminator();
  auto JMP = MBB.getLastNonDebugInstr();
  if (MI->isReturn() || MI->isIndirectBranch()) {
    TBB = nullptr;
    FBB = nullptr;
    return false;
  }
  if (MI == JMP) {
    TBB = MI->getOperand(0).getMBB();
    FBB = nullptr;
    return false;
  } else {
    TBB = MI->getOperand(0).getMBB();
    FBB = JMP->getOperand(0).getMBB();
    if (MI->getOpcode() == LuaVM::JNE) {
      Cond.push_back(MachineOperand::CreatePredicate((unsigned)Cond::NE));
    } else if (MI->getOpcode() == LuaVM::JEQ) {
      Cond.push_back(MachineOperand::CreatePredicate((unsigned)Cond::EQ));
    } else if (MI->getOpcode() == LuaVM::JLT) {
      Cond.push_back(MachineOperand::CreatePredicate((unsigned)Cond::LT));
    } else if (MI->getOpcode() == LuaVM::JLE) {
      Cond.push_back(MachineOperand::CreatePredicate((unsigned)Cond::LE));
    } else if (MI->getOpcode() == LuaVM::JGT) {
      Cond.push_back(MachineOperand::CreatePredicate((unsigned)Cond::GT));
    } else if (MI->getOpcode() == LuaVM::JGE) {
      Cond.push_back(MachineOperand::CreatePredicate((unsigned)Cond::GE));
    }
    return false;
  }
  return true;
}

bool LuaVMInstrInfo::reverseBranchCondition(
    SmallVectorImpl<MachineOperand>& Cond) const {
  return true;
}

unsigned LuaVMInstrInfo::insertBranch(MachineBasicBlock &MBB,
                                            MachineBasicBlock *TBB,
    MachineBasicBlock* FBB,
    ArrayRef<MachineOperand> Cond, const DebugLoc& DL,
    int* BytesAdded) const {
  auto MI = MBB.getLastNonDebugInstr();
  if (!FBB) {
    BuildMI(MBB, MI, DL, get(LuaVM::JMP)).addMBB(TBB);
    if (BytesAdded)
      *BytesAdded = 4;
    return 1;
  } else {
    assert(TBB && !Cond.empty());
    unsigned OpCode = 0;
    unsigned Pred = Cond[0].getPredicate();
    if (Pred == (unsigned)Cond::EQ)
      OpCode = LuaVM::JEQ;
    else if (Pred == (unsigned)Cond::NE)
      OpCode = LuaVM::JNE;
    else if (Pred == (unsigned)Cond::LT)
      OpCode = LuaVM::JLT;
    else if (Pred == (unsigned)Cond::LE)
      OpCode = LuaVM::JLE;
    else if (Pred == (unsigned)Cond::GT)
      OpCode = LuaVM::JGT;
    else if (Pred == (unsigned)Cond::GE)
      OpCode = LuaVM::JGE;
    BuildMI(MBB, MI, DL, get(OpCode)).addMBB(TBB);
    BuildMI(MBB, MI, DL, get(LuaVM::JMP)).addMBB(FBB);
    if (BytesAdded)
      *BytesAdded = 8;
    return 2;
  }
}

unsigned LuaVMInstrInfo::removeBranch(MachineBasicBlock &MBB,
    int* BytesRemoved) const {
  auto MI = MBB.getFirstTerminator();
  auto JMP = MBB.getLastNonDebugInstr();
  if (MI->isReturn() || MI->isIndirectBranch()) {
    if (BytesRemoved)
      *BytesRemoved = 0;
    return 0;
  }
  if (MI == JMP) {
    MI->eraseFromParent();
    if (BytesRemoved)
      *BytesRemoved = 4;
    return 1;
  } else {
    MI->eraseFromParent();
    JMP->eraseFromParent();
    if (BytesRemoved)
      *BytesRemoved = 8;
    return 2;
  }
}