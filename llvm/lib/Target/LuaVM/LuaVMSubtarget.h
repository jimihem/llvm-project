#ifndef LLVM_LIB_TARGET_LUAVM_LUAVMSUBTARGET_H
#define LLVM_LIB_TARGET_LUAVM_LUAVMSUBTARGET_H

#include "llvm/CodeGen/TargetSubtargetInfo.h"
#include "llvm/Target/TargetMachine.h"

#define GET_SUBTARGETINFO_HEADER
#include "LuaVMGenSubtargetInfo.inc"

namespace llvm {
class StringRef;

class LuaVMSubtarget : public LuaVMGenSubtargetInfo {
public:
  LuaVMSubtarget(const Triple &TT, StringRef CPU, StringRef FS, const TargetMachine &TM);

private:
  // We don't have any subtarget-specific features yet, so no additional members.
  // InstrInfo, FrameLowering, and TLInfo are kept here for convenience.
  std::unique_ptr<const LuaVMInstrInfo> InstrInfo;
  std::unique_ptr<const LuaVMFrameLowering> FrameLowering;
  std::unique_ptr<const LuaVMTargetLowering> TLInfo;
};

} // End namespace llvm

#endif // LLVM_LIB_TARGET_LUAVM_LUAVMSUBTARGET_H