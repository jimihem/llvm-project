#ifndef LLVM_LIB_TARGET_LUAVM_MCTARGETDESC_LUAVMMCCODEEMITER_H
#define LLVM_LIB_TARGET_LUAVM_MCTARGETDESC_LUAVMMCCODEEMITER_H
#include "llvm/MC/MCCodeEmitter.h"
#include "llvm/MC/MCFixup.h"
#include "llvm/MC/MCInst.h"
#include "llvm/MC/MCSubtargetInfo.h"
using namespace llvm;

class LuaVMMCCodeEmitter : public MCCodeEmitter {
public:
  LuaVMMCCodeEmitter();
  uint64_t getBinaryCodeForInstr(const MCInst &MI,
                                 SmallVectorImpl<MCFixup> &Fixups,
                                 const MCSubtargetInfo &STI) const;
  uint64_t getAddr24OpValue(const MCInst &MI, unsigned OpIdx, SmallVectorImpl<MCFixup> &Fixups,
                            const MCSubtargetInfo &STI) const;
  uint64_t getMachineOpValue(const MCInst &MI, const MCOperand &Op,
                             SmallVectorImpl<MCFixup> &Fixups,
                             const MCSubtargetInfo &STI) const;

  uint64_t getImm14OpValue(const MCInst &MI, unsigned OpIdx,
                            SmallVectorImpl<MCFixup> &Fixups,
                            const MCSubtargetInfo &STI) const;
};


#endif // LLVM_LIB_TARGET_LUAVM_MCTARGETDESC_LUAVMMCCODEEMITER_H