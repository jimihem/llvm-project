#include "LuaVMTargetMachine.h"
#include "LuaVM.h"
#include "LuaVMTargetTransformInfo.h"
#include "MCTargetDesc/LuaVMMCTargetDesc.h"
#include "llvm/CodeGen/Passes.h"
#include "llvm/CodeGen/TargetLoweringObjectFileImpl.h"
#include "llvm/Support/TargetRegistry.h"

using namespace llvm;

extern "C" void LLVMInitializeLuaVMTarget() {
  // Register the target machine factory.
  RegisterTargetMachine<LuaVMTargetMachine> X(TheLuaVMTarget);
}

LuaVMTargetMachine::LuaVMTargetMachine(const Target &T, const Triple &TT,
                                       StringRef CPU, StringRef FS,
                                       const TargetOptions &Options,
                                       Optional<Reloc::Model> RM,
                                       Optional<CodeModel::Model> CM,
                                       CodeGenOpt::Level OL,
                                       bool JIT)
    : LLVMTargetMachine(T, TT, CPU, FS, Options,
                        RM.getValueOr(Reloc::Static),
                        CM.getValueOr(CodeModel::Small), OL),
      TLOF(std::make_unique<LuaVMELFObjectFileLowering>()),
      Subtarget(TT, CPU, FS, *this) {
  initAsmInfo();
}

const LuaVMSubtarget *
LuaVMTargetMachine::getSubtargetImpl(const Function &) const {
  return &Subtarget;
}