#include "LuaVMSubtarget.h"
#include "LuaVMTargetMachine.h"

using namespace llvm;
#define DEBUG_TYPE "luavm-subtarget"
#define GET_SUBTARGETINFO_TARGET_DESC
#define GET_SUBTARGETINFO_CTOR
#include "LuaVMGenSubtargetInfo.inc"

LuaVMSubtarget::LuaVMSubtarget(const Triple &TT, StringRef CPU, StringRef FS,
                               LuaVMTargetMachine *luaTM)
    : LuaVMGenSubtargetInfo(TT, CPU, /*TuneCPU*/ CPU, FS), FakeFeature(false),
      TM(luaTM) {}

const LuaVMInstrInfo *LuaVMSubtarget::getInstrInfo() const {
  return TM->getInstrInfo();
}

const LuaVMFrameLowering *LuaVMSubtarget::getFrameLowering() const {
  return TM->getFrameLoweringInfo();
}

const LuaVMTargetLowering *LuaVMSubtarget::getTargetLowering() const {
  return TM->getTargetLoweringInfo();
}

const LuaVMRegisterInfo *LuaVMSubtarget::getRegisterInfo() const {
  return TM->getRegisterInfo();
}