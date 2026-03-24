#include "LuaVMELFStreamer.h"
#include "LuaVMMCTargetDesc.h"

using namespace llvm;

LuaVMELFStreamer::LuaVMELFStreamer(MCContext &Context,
                                   std::unique_ptr<MCAsmBackend> &&MAB,
                                   std::unique_ptr<MCObjectWriter> &&OW,
                                   std::unique_ptr<MCCodeEmitter> &&Emitter)
    : MCELFStreamer(Context, std::move(MAB), std::move(OW), std::move(Emitter)) {
}

void LuaVMELFStreamer::finishImpl() {
  
}