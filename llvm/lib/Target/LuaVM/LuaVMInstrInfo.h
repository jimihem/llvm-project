#ifndef LLVM_LIB_TARGET_LUAVM_LUAVMINSTRINFO_H
#define LLVM_LIB_TARGET_LUAVM_LUAVMINSTRINFO_H

#include "LuaVMGenInstrInfo.inc"

namespace llvm {
class LuaVMSubtarget;
class LuaVMRegisterInfo;

class LuaVMInstrInfo : public LuaVMGenInstrInfo {
  virtual void anchor();
protected:
  const LuaVMSubtarget &Subtarget;

public:
  explicit LuaVMInstrInfo(const LuaVMSubtarget &STI);

  const LuaVMRegisterInfo &getRegisterInfo() const override;
};

} // namespace llvm

#endif // LLVM_LIB_TARGET_LUAVM_LUAVMINSTRINFO_H