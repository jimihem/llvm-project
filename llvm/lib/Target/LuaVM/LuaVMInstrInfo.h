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

};

} // namespace llvm

#endif // LLVM_LIB_TARGET_LUAVM_LUAVMINSTRINFO_H