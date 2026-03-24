#ifndef LLVM_LIB_TARGET_LUAVM_MCTARGETDESC_LUAVMELFSTREAMER_H
#define LLVM_LIB_TARGET_LUAVM_MCTARGETDESC_LUAVMELFSTREAMER_H

#include "llvm/MC/MCELFStreamer.h"
#include "llvm/MC/MCCodeEmitter.h"
#include "llvm/MC/MCObjectWriter.h"
#include "LuaVMAsmBackend.h"
namespace llvm {

class LuaVMELFStreamer : public MCELFStreamer {
public:
  LuaVMELFStreamer(MCContext &Context, std::unique_ptr<MCAsmBackend> &&MAB,
                   std::unique_ptr<MCObjectWriter> &&OW,
                   std::unique_ptr<MCCodeEmitter> &&Emitter);

  void finishImpl() override;
};

} // end namespace llvm

#endif // LLVM_LIB_TARGET_LUAVM_MCTARGETDESC_LUAVMELFSTREAMER_H