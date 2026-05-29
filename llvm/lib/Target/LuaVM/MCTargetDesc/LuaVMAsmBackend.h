#ifndef LLVM_LIB_TARGET_LUAVM_MCTARGETDESC_LUAVMASMBACKEND_H
#define LLVM_LIB_TARGET_LUAVM_MCTARGETDESC_LUAVMASMBACKEND_H

#include "llvm/MC/MCAsmBackend.h"

namespace llvm {

class MCAssembler;
class MCSubtargetInfo;

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

  virtual bool fixupNeedsRelaxation(const MCFixup &Fixup, uint64_t Value,
                                    const MCRelaxableFragment *DF,
                                    const MCAsmLayout &Layout) const override;

  virtual unsigned getNumFixupKinds() const override;
  /// Map a relocation name used in .reloc to a fixup kind.
  virtual std::optional<MCFixupKind> getFixupKind(StringRef Name) const;

  /// Get information on a fixup kind.
  virtual const MCFixupKindInfo &getFixupKindInfo(MCFixupKind Kind) const;
};

} // end namespace llvm

#endif // LLVM_LIB_TARGET_LUAVM_MCTARGETDESC_LUAVMASMBACKEND_H