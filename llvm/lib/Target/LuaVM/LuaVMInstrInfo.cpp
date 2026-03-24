#include "LuaVMInstrInfo.h"

#define GET_INSTRINFO_CTOR_DTOR
#include "LuaVMGenInstrInfo.inc"
using namespace llvm;

LuaVMInstrInfo::LuaVMInstrInfo(const LuaVMSubtarget &STI)
    : LuaVMGenInstrInfo(),
      Subtarget(STI) {}
