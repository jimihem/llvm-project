#ifndef LLVM_LIB_TARGET_LUAVM_MCTARGETDESC_LUAVMELFSTREAMER_H
#define LLVM_LIB_TARGET_LUAVM_MCTARGETDESC_LUAVMELFSTREAMER_H

#include "llvm/MC/ELFStreamer.h"

namespace llvm {

class LuaVMELFStreamer : public MCELFStreamer {
public:
  LuaVMELFStreamer(MCContext &Context, std::unique_ptr<MCAsmBackend> &&MAB,
                   std::unique_ptr<MCObjectWriter> &&OW,
                   std::unique_ptr<MCCodeEmitter> &&Emitter);

  void finish() override;
};

} // end namespace llvm

#endif // LLVM_LIB_TARGET_LUAVM_MCTARGETDESC_LUAVMELFSTREAMER_H