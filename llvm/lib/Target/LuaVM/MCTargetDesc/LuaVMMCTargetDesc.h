#ifndef LLVM_LIB_TARGET_LUAVM_MCTARGETDESC_LUAVMMCTARGETDESC_H
#define LLVM_LIB_TARGET_LUAVM_MCTARGETDESC_LUAVMMCTARGETDESC_H

#include "llvm/MC/MCTargetOptions.h"

namespace llvm {
class MCAsmBackend;
class MCCodeEmitter;
class MCContext;
class MCInstrInfo;
class MCRegisterInfo;
class MCSubtargetInfo;
class StringRef;
class Target;

extern Target TheLuaVMTarget;

// Factory methods for creating components of the LuaVM target.
std::unique_ptr<MCAsmBackend> createLuaVMAsmBackend(const Target &T,
                                                    const MCSubtargetInfo &STI,
                                                    const MCRegisterInfo &MRI,
                                                    const MCTargetOptions &Options);

std::unique_ptr<MCCodeEmitter> createLuaVMMCCodeEmitter(const MCInstrInfo &MCII,
                                                         const MCRegisterInfo &MRI,
                                                         MCContext &Ctx);

StringRef selectLuaVMCPU(StringRef CPU);

} // End llvm namespace

#endif // LLVM_LIB_TARGET_LUAVM_MCTARGETDESC_LUAVMMCTARGETDESC_H