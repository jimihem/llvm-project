#include "LuaVMMCCodeEmiter.h"
#include "llvm/Support/raw_ostream.h"
#define GET_INSTRINFO_ENUM
#include "LuaVMGenInstrInfo.inc"
#define GET_REGINFO_ENUM
#include "LuaVMGenRegisterInfo.inc"

#include "LuaVMGenMCCodeEmitter.inc"

LuaVMMCCodeEmitter::LuaVMMCCodeEmitter() {}

uint64_t LuaVMMCCodeEmitter::getAddr24OpValue(const MCInst& MI, unsigned OpIdx,
    SmallVectorImpl<MCFixup>& Fixups,
    const MCSubtargetInfo& STI) const {
  return 0;
}

uint64_t
LuaVMMCCodeEmitter::getMachineOpValue(const MCInst &MI, const MCOperand &Op,
                           SmallVectorImpl<MCFixup> &Fixups,
                                      const MCSubtargetInfo &STI) const {
  return 0;
}

uint64_t LuaVMMCCodeEmitter::getImm14OpValue(const MCInst &MI, unsigned OpIdx,
                         SmallVectorImpl<MCFixup> &Fixups,
                                             const MCSubtargetInfo &STI) const {
  return 0;
}

