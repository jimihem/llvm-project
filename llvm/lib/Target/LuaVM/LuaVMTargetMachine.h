#ifndef LLVM_LIB_TARGET_LUAVM_LUAVMTARGETMACHINE_H
#define LLVM_LIB_TARGET_LUAVM_LUAVMTARGETMACHINE_H
#include "LuaVMSubtarget.h"
#include "LuaVMInstrInfo.h"
#include "LuaVMRegisterInfo.h"
#include "LuaVMFrameLowering.h"
#include "LuaVMISelLowering.h"
#include "llvm/Target/TargetMachine.h"
#include "llvm/CodeGen/TargetPassConfig.h"
#include "llvm/CodeGen/TargetLoweringObjectFileImpl.h"
#include <optional>

namespace llvm {

class LuaVMPassConfig : public TargetPassConfig {
public:
  LuaVMPassConfig(LLVMTargetMachine &TM, PassManagerBase &pm)
      : TargetPassConfig(TM, pm) {}
  virtual void addIRPasses() override;
  virtual void addCodeGenPrepare() override;
  virtual void addISelPrepare() override;
  virtual bool addInstSelector() override;
  virtual void addMachinePasses() override;
};

class LuaVMTargetMachine : public LLVMTargetMachine {
  std::unique_ptr<LuaVMSubtarget> STI;
  std::unique_ptr<LuaVMInstrInfo> TII;
  std::unique_ptr<LuaVMRegisterInfo> TRI;
  std::unique_ptr<LuaVMFrameLowering> TFI;
  std::unique_ptr<LuaVMTargetLowering> TLI;
  std::unique_ptr<TargetLoweringObjectFileELF> TLO;

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
  TargetLoweringObjectFile *getObjFileLowering() const;
  LuaVMPassConfig *createPassConfig(PassManagerBase &PM);
};

} // end namespace llvm

#endif // LLVM_LIB_TARGET_LUAVM_LUAVMTARGETMACHINE_H