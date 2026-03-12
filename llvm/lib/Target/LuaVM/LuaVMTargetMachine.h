#ifndef LLVM_LIB_TARGET_LUAVM_LUAVMTARGETMACHINE_H
#define LLVM_LIB_TARGET_LUAVM_LUAVMTARGETMACHINE_H

#include "LuaVMSubtarget.h"
#include "llvm/Target/TargetMachine.h"

namespace llvm {

class LuaVMTargetMachine : public LLVMTargetMachine {
  std::unique_ptr<TargetLoweringObjectFile> TLOF;
  LuaVMSubtarget Subtarget;
public:
  LuaVMTargetMachine(const Target &T, const Triple &TT,
                     StringRef CPU, StringRef FS,
                     const TargetOptions &Options,
                     Optional<Reloc::Model> RM,
                     Optional<CodeModel::Model> CM,
                     CodeGenOpt::Level OL,
                     bool JIT);

  const LuaVMSubtarget *getSubtargetImpl(const Function &) const override;

  // Pass Pipeline Configuration
  TargetPassConfig *createPassConfig(PassManagerBase &PM) override;
};

} // end namespace llvm

#endif // LLVM_LIB_TARGET_LUAVM_LUAVMTARGETMACHINE_H