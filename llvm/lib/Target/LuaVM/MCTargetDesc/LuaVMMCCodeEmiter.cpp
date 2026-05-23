#include "LuaVMMCCodeEmiter.h"
#include "LuaVMFixUpKind.h"
#include "llvm/Support/EndianStream.h"
#include "llvm/Support/raw_ostream.h"
#include "llvm/MC/MCRegisterInfo.h"
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
      CB.push_back(ptr[i]);
    }
  } else {
    for (size_t i = 0; i < 4; i++) {
      CB.push_back(ptr[i]);
    }
  }
}

uint64_t
LuaVMMCCodeEmitter::getAddr24OpValue(const MCInst &MI, unsigned OpIdx,
                                     SmallVectorImpl<MCFixup> &Fixups,
                                     const MCSubtargetInfo &STI) const {
  if (MI.getOperand(OpIdx).isExpr()) {
    MCFixup F = MCFixup::create(0, MI.getOperand(OpIdx).getExpr(),
                                MCFixupKind(LuaVMMCFixupKind::FK_Data_3));
    Fixups.push_back(F);
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
    MCFixup F = MCFixup::create(0, Op.getExpr(), MCFixupKind::FK_Data_4);
    Fixups.push_back(F);
    return 0;
  }
  llvm_unreachable("unsupport operand");
  return 0;
}

uint64_t LuaVMMCCodeEmitter::getImm14OpValue(const MCInst &MI, unsigned OpIdx,
                         SmallVectorImpl<MCFixup> &Fixups,
                                             const MCSubtargetInfo &STI) const {
  return MI.getOperand(OpIdx).getImm();
}

