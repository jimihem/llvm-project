#ifndef LLVM_LIB_TARGET_LUAVM_MCTARGETDESC_LUAVMASMBACKEND_H
#define LLVM_LIB_TARGET_LUAVM_MCTARGETDESC_LUAVMASMBACKEND_H

#include "llvm/MC/MCAsmBackend.h"
#include "llvm/MC/MCSymbol.h"
#include "llvm/Support/Endian.h"

namespace llvm {

class MCAssembler;
class MCObjectWriter;
class MCSubtargetInfo;
class Twine;

class LuaVMAsmBackend : public MCAsmBackend {
  const MCSubtargetInfo &STI;

public:
  explicit LuaVMAsmBackend(const MCSubtargetInfo &STI);

  std::unique_ptr<MCObjectTargetWriter>
  createObjectTargetWriter() const override;

  void applyFixup(const MCAssembler &Asm, const MCFixup &Fixup, const MCValue &Target,
                  MutableArrayRef<char> Data, uint64_t Value,
                  bool IsResolved,
                  const MCSubtargetInfo *STI) const override;

  bool writeNopData(raw_ostream &OS, uint64_t Count,
                    const MCSubtargetInfo *STI) const override;

  unsigned getNumMicroPaddingInstructions(MCContext &Ctx, unsigned NumBytes,
                                          const MCSubtargetInfo &STI) const override;

  bool fixupNeedsRelaxation(const MCFixup &Fixup, uint64_t Value,
                            const MCRelaxableFragment *DF,
                            const MCAsmLayout &Layout,
                            const MCSubtargetInfo *STI) const override;

  void relaxInstruction(MCInst &Inst, const MCSubtargetInfo &STI) const override;

  bool mayNeedRelaxation(const MCInst &Inst, const MCSubtargetInfo &STI) const override;
};

} // end namespace llvm

#endif // LLVM_LIB_TARGET_LUAVM_MCTARGETDESC_LUAVMASMBACKEND_H