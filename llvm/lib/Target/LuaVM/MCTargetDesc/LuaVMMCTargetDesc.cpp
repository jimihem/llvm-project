#include "LuaVMMCTargetDesc.h"
#include "LuaVMAsmBackend.h"
#include "LuaVMELFStreamer.h"
#include "LuaVMInstPrinter.h"
#include "LuaVMTargetMachine.h"
#include "llvm/ADT/STLExtras.h"
#include "llvm/MC/MCAsmBackend.h"
#include "llvm/MC/MCCodeEmitter.h"
#include "llvm/MC/MCContext.h"
#include "llvm/MC/MCInstrInfo.h"
#include "llvm/MC/MCObjectWriter.h"
#include "llvm/MC/MCRegisterInfo.h"
#include "llvm/MC/MCStreamer.h"
#include "llvm/MC/MCSubtargetInfo.h"
#include "llvm/Support/TargetRegistry.h"

using namespace llvm;

// This is the name the target is known by in the system.
Target llvm::TheLuaVMTarget;

extern "C" void LLVMInitializeLuaVMTargetMC() {
  // Register the target with LLVM's MC layer.
  // The third parameter is the name used in command lines (e.g., -mtriple=lua-vm-unknown-unknown).
  RegisterMCAsmInfo<LuaVMELFStreamer> X(TheLuaVMTarget);
  RegisterMCAsmBackendFactory<LuaVMAsmBackend> Y(TheLuaVMTarget);
  RegisterMCCodeEmitter<LuaVM MCCodeEmitter> Z(TheLuaVMTarget);
  RegisterTargetStreamer<LuaVMELFStreamer> A(TheLuaVMTarget);
}

StringRef llvm::selectLuaVMCPU(StringRef CPU) {
  if (CPU.empty() || CPU == "generic")
    return "generic-luavm";
  return CPU;
}

std::unique_ptr<MCAsmBackend> llvm::createLuaVMAsmBackend(const Target &T,
                                                          const MCSubtargetInfo &STI,
                                                          const MCRegisterInfo &MRI,
                                                          const MCTargetOptions &Options) {
  return std::make_unique<LuaVMAsmBackend>(STI);
}

std::unique_ptr<MCCodeEmitter> llvm::createLuaVM MCCodeEmitter(const MCInstrInfo &MCII,
                                                               const MCRegisterInfo &MRI,
                                                               MCContext &Ctx) {
  return std::make_unique<LuaVM MCCodeEmitter>(MCII, MRI, Ctx);
}