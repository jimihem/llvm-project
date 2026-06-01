#include "LuaVMInstPrinter.h"
#include "llvm/MC/MCInst.h"
#include "llvm/MC/MCRegisterInfo.h"
#include "llvm/MC/MCSubtargetInfo.h"
#include "llvm/MC/MCExpr.h"
#include "llvm/Support/ErrorHandling.h"

using namespace llvm;
#define LLVM_NO_PROFILE_INSTRUMENT_FUNCTION
#include "LuaVMGenAsmWriter.inc"

LuaVMInstPrinter::LuaVMInstPrinter(const MCAsmInfo &MAI, const MCInstrInfo &MII,
                                   const MCRegisterInfo &MRI)
    : MCInstPrinter(MAI, MII, MRI) {}

void LuaVMInstPrinter::printRegName(raw_ostream &OS, MCRegister Reg) const{
  OS << ((LuaVMInstPrinter*)this)->getRegisterName(Reg);
}

void LuaVMInstPrinter::printOperand(const MCInst *MI, unsigned OpNo, raw_ostream &O) const {
  const MCOperand &Op = MI->getOperand(OpNo);
  if (Op.isReg()) {
    printRegName(O, MCRegister(Op.getReg()));
  } else if (Op.isImm()) {
    O << Op.getImm();
  } else if (Op.isExpr() && Op.getExpr()->getKind() == MCExpr::SymbolRef) {
    // Handle expressions (e.g., labels, offsets).
    // This is a complex topic. For now, just print the expression.
    Op.getExpr()->print(O, &MAI);
  } else {
    llvm_unreachable("Unhandled operand type!");
  }
}

void LuaVMInstPrinter::printInst(const MCInst *MI, uint64_t Address,
                                 StringRef Annot, const MCSubtargetInfo &STI,
                                 raw_ostream &OS) {
  printInstruction(MI, Address, OS);
}

void LuaVMInstPrinter::printAddr24Operand(const MCInst *MI, uint32_t OpIdx,
                                          raw_ostream &O) {
  if (MI->getOperand(OpIdx).isImm()) {
    O << MI->getOperand(OpIdx).getImm();
  } else if (MI->getOperand(OpIdx).isExpr() &&
             MI->getOperand(OpIdx).getExpr()->getKind() == MCExpr::SymbolRef) {
    MI->getOperand(OpIdx).getExpr()->print(O, &MAI, false);
  }else {
    llvm_unreachable("Not support operand");
  }
}

void LuaVMInstPrinter::printImm14Operand(const MCInst *MI, uint32_t OpIdx,
                                         raw_ostream &O) {
  printAddr24Operand(MI, OpIdx, O);
}

void LuaVMInstPrinter::printCondOperand(const MCInst *MI, uint32_t OpIdx,
                                      raw_ostream &O) {
  O << MI->getOperand(OpIdx).getImm();
}