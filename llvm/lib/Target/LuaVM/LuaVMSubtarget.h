#ifndef LLVM_LIB_TARGET_LUAVM_LUAVMSUBTARGET_H
#define LLVM_LIB_TARGET_LUAVM_LUAVMSUBTARGET_H
#include "LuaVMInstrInfo.h"
#include "LuaVMRegisterInfo.h"
#include "LuaVMFrameLowering.h"
#include "LuaVMISelLowering.h"
#include "llvm/CodeGen/TargetSubtargetInfo.h"

#define GET_SUBTARGETINFO_HEADER
#define GET_SUBTARGETINFO_ENUM
#include "LuaVMGenSubtargetInfo.inc"

namespace llvm {
class StringRef;
class LuaVMTargetMachine;

class LuaVMSubtarget : public LuaVMGenSubtargetInfo {
  LuaVMTargetMachine *TM;

public:
  LuaVMSubtarget(const Triple &TT, StringRef CPU, StringRef FS,
                 LuaVMTargetMachine *luaTM);

private:
  bool FakeFeature;
  void ParseSubtargetFeatures(StringRef CPU, StringRef TuneCPU, StringRef FS);
  
  const LuaVMInstrInfo *getInstrInfo() const override;

  const LuaVMFrameLowering *getFrameLowering() const override;

  const LuaVMTargetLowering *getTargetLowering() const override;

  const LuaVMRegisterInfo *getRegisterInfo() const override;
};

} // End namespace llvm

#endif // LLVM_LIB_TARGET_LUAVM_LUAVMSUBTARGET_H