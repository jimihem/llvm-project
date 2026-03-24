#ifndef LLVM_LIB_TARGET_LUAVM_LUAVMTARGETMACHINE_H
#define LLVM_LIB_TARGET_LUAVM_LUAVMTARGETMACHINE_H
#include "LuaVMSubtarget.h"
#include "LuaVMInstrInfo.h"
#include "LuaVMRegisterInfo.h"
#include "LuaVMFrameLowering.h"
#include "LuaVMISelLowering.h"
#include "llvm/Target/TargetMachine.h"
#include <optional>

namespace llvm {
class LuaVMTargetMachine : public LLVMTargetMachine {
  std::unique_ptr<LuaVMSubtarget> STI;
  std::unique_ptr<LuaVMInstrInfo> TII;
  std::unique_ptr<LuaVMRegisterInfo> TRI;
  std::unique_ptr<LuaVMFrameLowering> TFI;
  std::unique_ptr<LuaVMTargetLowering> TLI;

public:
  LuaVMTargetMachine(const Target &T, const Triple &TT, StringRef CPU,
                     StringRef FS, const TargetOptions &Options,
                     std::optional<Reloc::Model> RM,
                     std::optional<CodeModel::Model> CM, CodeGenOpt::Level OL,
                     bool JIT);

  const LuaVMSubtarget *getSubtargetImpl(const Function &) const override;
  const LuaVMRegisterInfo *getRegisterInfo() const;
  const LuaVMInstrInfo *getInstrInfo() const;
  const LuaVMFrameLowering *getFrameLoweringInfo() const;
  const LuaVMTargetLowering *getTargetLoweringInfo() const;
};

} // end namespace llvm

#endif // LLVM_LIB_TARGET_LUAVM_LUAVMTARGETMACHINE_H