#include "LuaVMSubtarget.h"
#include "LuaVM.h"
#include "llvm/Support/TargetRegistry.h"

using namespace llvm;

#define GET_SUBTARGETINFO_TARGET_DESC
#define GET_SUBTARGETINFO_CTOR
#include "LuaVMGenSubtargetInfo.inc"

LuaVMSubtarget::LuaVMSubtarget(const Triple &TT, StringRef CPU,
                               StringRef FS, const TargetMachine &TM)
    : LuaVMGenSubtargetInfo(TT, CPU, /*TuneCPU*/ CPU, FS),
      InstrInfo(initializeInstrInfo()),
      FrameLowering(initializeFrameLowering()),
      TLInfo(TM, *this) {
}