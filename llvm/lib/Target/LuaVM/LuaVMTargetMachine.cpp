#include "LuaVM.h"
#include "LuaVMTargetMachine.h"
#include "TargetInfo/LuaVMTargetInfo.h"
#include "llvm/MC/TargetRegistry.h"

using namespace llvm;

extern "C" void LLVMInitializeLuaVMTarget() {
  RegisterTargetMachine<LuaVMTargetMachine> X(getTheLuaVMTarget());
}

LuaVMTargetMachine::LuaVMTargetMachine(
    const Target &T, const Triple &TT,
    StringRef CPU, StringRef FS, const TargetOptions &Options,
    std::optional<Reloc::Model> RM, std::optional<CodeModel::Model> CM,
    CodeGenOpt::Level OL, bool JIT)
    : LLVMTargetMachine(T, "", TT, CPU, FS, Options,
                        RM.value_or(Reloc::Static),
                        CM.value_or(CodeModel::Small), OL) {
  initAsmInfo();
  STI = std::make_unique<LuaVMSubtarget>(TT, CPU, FS, this);
  TII = std::make_unique<LuaVMInstrInfo>(*STI.get());
  TRI = std::make_unique<LuaVMRegisterInfo>(*STI.get());
  TFI = std::make_unique<LuaVMFrameLowering>(*STI.get());
  TLI = std::make_unique<LuaVMTargetLowering>(*this, *STI.get());
}

const LuaVMRegisterInfo* LuaVMTargetMachine::getRegisterInfo() const {
  return TRI.get();
}

const LuaVMInstrInfo *LuaVMTargetMachine::getInstrInfo() const {
  return TII.get();
}

const LuaVMFrameLowering *
LuaVMTargetMachine::getFrameLoweringInfo() const {
  return TFI.get();
}

const LuaVMTargetLowering *
LuaVMTargetMachine::getTargetLoweringInfo() const {
  return TLI.get();
}

const LuaVMSubtarget *
LuaVMTargetMachine::getSubtargetImpl(const Function &) const {
  return STI.get();
}