#include "LuaVMMCCodeEmiter.h"
#include "LuaVMFixUpKind.h"
#include "llvm/Support/EndianStream.h"
#include "llvm/Support/raw_ostream.h"
#include "llvm/MC/MCRegisterInfo.h"
#include "llvm/MC/MCExpr.h"
#include "llvm/Support/Casting.h"
#define GET_INSTRINFO_ENUM
#include "LuaVMGenInstrInfo.inc"
#define GET_REGINFO_ENUM
#include "LuaVMGenRegisterInfo.inc"

#include "LuaVMGenMCCodeEmitter.inc"

LuaVMMCCodeEmitter::LuaVMMCCodeEmitter(MCContext &Ctx) : Context(Ctx) {}

void LuaVMMCCodeEmitter::encodeInstruction(const MCInst &Inst,
                                           SmallVectorImpl<char> &CB,
                               SmallVectorImpl<MCFixup> &Fixups,
                               const MCSubtargetInfo &STI) const
{
  uint64_t Value = getBinaryCodeForInstr(Inst, Fixups, STI);
  uint8_t *ptr = (uint8_t *)&Value;
  if (Inst.getOpcode() == LuaVM::MOVi) {
    for (size_t i = 0; i < 8; i++) {
      CB.push_back(ptr[7 - i]);
    }
  } else {
    for (size_t i = 0; i < 4; i++) {
      CB.push_back(ptr[3 - i]);
    }
  }
}

uint64_t
LuaVMMCCodeEmitter::getAddr24OpValue(const MCInst &MI, unsigned OpIdx,
                                     SmallVectorImpl<MCFixup> &Fixups,
                                     const MCSubtargetInfo &STI) const {
  if (MI.getOperand(OpIdx).isExpr()) {
    MCFixup F = MCFixup::create(0, MI.getOperand(OpIdx).getExpr(),
                                MCFixupKind(LuaVMMCFixupKind::FK_PCRel_addr24));
    Fixups.push_back(F);
  } else {
    llvm_unreachable("Addr24 must be block symble");
  }
  return 0;
}

uint64_t
LuaVMMCCodeEmitter::getCondOpValue(const MCInst &MI, unsigned OpIdx,
                                     SmallVectorImpl<MCFixup> &Fixups,
                                     const MCSubtargetInfo &STI) const {
  return MI.getOperand(OpIdx).getImm();
}

uint64_t
LuaVMMCCodeEmitter::getMachineOpValue(const MCInst &MI, const MCOperand &Op,
                           SmallVectorImpl<MCFixup> &Fixups,
                                      const MCSubtargetInfo &STI) const {
  if (Op.isImm()) {
    return Op.getImm();
  } else if (Op.isReg()) {
    return Context.getRegisterInfo()->getEncodingValue(Op.getReg());
  } else if (Op.isExpr()) {
    assert(MI.getOpcode() == LuaVM::MOVi);
    MCFixupKind Kind = MCFixupKind::FK_NONE;
    MCSymbolRefExpr::VariantKind SymKind =
        dyn_cast<MCSymbolRefExpr>(Op.getExpr())->getKind();

    if (SymKind == MCSymbolRefExpr::VK_BLOCK ||
        SymKind == MCSymbolRefExpr::VK_LABEL) {
      Kind = MCFixupKind(LuaVMMCFixupKind::FK_PCRel_OFFSET_imm32);
    } else {
      Kind = MCFixupKind(LuaVMMCFixupKind::FK_DATA_imm32);
    }
    MCFixup F = MCFixup::create(0, Op.getExpr(), Kind);
    Fixups.push_back(F);
    return 0;
  }
  llvm_unreachable("unsupport operand");
  return 0;
}

uint64_t LuaVMMCCodeEmitter::getImm14OpValue(const MCInst &MI, unsigned OpIdx,
                         SmallVectorImpl<MCFixup> &Fixups,
                                             const MCSubtargetInfo &STI) const {
  if (MI.getOperand(OpIdx).isExpr()) {
    MCFixup F = MCFixup::create(0, MI.getOperand(OpIdx).getExpr(),
                                MCFixupKind(LuaVMMCFixupKind::FK_DATA_imm14));
    Fixups.push_back(F);
    return 0;
  }
  return MI.getOperand(OpIdx).getImm();
}

