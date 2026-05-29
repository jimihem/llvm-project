#include "LuaVMAsmBackend.h"
#include "LuaVMMCTargetDesc.h"
#include "LuaVMFixUpKind.h"
#include "llvm/MC/MCAssembler.h"
#include "llvm/MC/MCELFObjectWriter.h"
#include "llvm/MC/MCFixupKindInfo.h"
#include "llvm/MC/MCSubtargetInfo.h"
#include "llvm/Support/ErrorHandling.h"

using namespace llvm;

class LuaVMMCELFObjectTargetWriter : public MCELFObjectTargetWriter {
public:
  LuaVMMCELFObjectTargetWriter()
      : MCELFObjectTargetWriter(false, ELF::ELFOSABI_NONE, ELF::EM_LUAVM,
                                true) {}

  unsigned getRelocType(MCContext& Ctx, const MCValue& Target,
      const MCFixup& Fixup, bool IsPCRel) const {
    return 0;
  }
};

LuaVMAsmBackend::LuaVMAsmBackend(const MCSubtargetInfo &STI)
    : MCAsmBackend(support::endianness::little), STI(STI) {}

std::unique_ptr<MCObjectTargetWriter>
LuaVMAsmBackend::createObjectTargetWriter() const {
  // Create an ELF writer for your target.
  // This tells LLVM how to write the final object file format.
  return std::make_unique<LuaVMMCELFObjectTargetWriter>();
}

void LuaVMAsmBackend::applyFixup(const MCAssembler &Asm, const MCFixup &Fixup, const MCValue &Target,
                                 MutableArrayRef<char> Data, uint64_t Value,
                                 bool IsResolved,
                                 const MCSubtargetInfo *STI) const {
  if (IsResolved) {
    if (Fixup.getKind() == FK_PCRel_addr24) {
      uint32_t *ptr = (uint32_t *)(Data.data() + Fixup.getOffset());
      uint32_t Val = *ptr;
      Val &= ~0x00ffffff;
      Val |= Value & 0x00ffffff;
      *ptr = Val;
    } else if (Fixup.getKind() == FK_PCRel_OFFSET_imm32) {
      uint64_t *ptr = (uint64_t *)(Data.data() + Fixup.getOffset());
      uint64_t Val = *ptr;
      Val &= ~0xffffffff;
      Val |= (Value - 8) & 0xffffffff;
      *ptr = Val;
    } else {
      llvm_unreachable("Not support fixup kind");
    }
  }
}

bool LuaVMAsmBackend::writeNopData(raw_ostream &OS, uint64_t Count,
                                   const MCSubtargetInfo *STI) const {
  uint32_t NopInstruction = 0x00000000; 
  for (uint64_t i = 0; i < Count; i += 4) {
      OS.write(reinterpret_cast<const char*>(&NopInstruction), 4);
  }
  return true;
}

bool LuaVMAsmBackend::fixupNeedsRelaxation(
    const MCFixup &Fixup, uint64_t Value,
    const MCRelaxableFragment* DF,
    const MCAsmLayout& Layout) const {
  return false;
}

unsigned LuaVMAsmBackend::getNumFixupKinds() const { 
    return 4;
}

/// Map a relocation name used in .reloc to a fixup kind.
std::optional<MCFixupKind> LuaVMAsmBackend::getFixupKind(StringRef Name) const {
  if (Name == "FK_PCRel_addr24") {
      return MCFixupKind(LuaVMMCFixupKind::FK_PCRel_addr24);
  } else if (Name == "FK_PCRel_OFFSET_imm32") {
      return MCFixupKind(LuaVMMCFixupKind::FK_PCRel_OFFSET_imm32);
  } else if (Name == "FK_DATA_imm14") {
      return MCFixupKind(LuaVMMCFixupKind::FK_DATA_imm14);
  } else if (Name == "FK_DATA_imm32") {
      return MCFixupKind(LuaVMMCFixupKind::FK_DATA_imm32);
  }
  return FK_NONE;
}

/// Get information on a fixup kind.
const MCFixupKindInfo &
LuaVMAsmBackend::getFixupKindInfo(MCFixupKind Kind) const {
  static const MCFixupKindInfo TargetFixUpInfo[] = {
      {"FK_PCRel_addr24", 0, 24, MCFixupKindInfo::FKF_IsPCRel},
      {"FK_PCRel_OFFSET_imm32", 0, 32, MCFixupKindInfo::FKF_IsPCRel},
      {"FK_DATA_imm14", 0, 14, 0},
      {"FK_DATA_imm32", 0, 32, 0},
  };
  if (Kind < FirstTargetFixupKind)
      return MCAsmBackend::getFixupKindInfo(Kind);

  Kind = MCFixupKind(Kind - FirstTargetFixupKind);
  return TargetFixUpInfo[Kind];
}
