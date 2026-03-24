#include "LuaVMInstPrinter.h"
#include "llvm/MC/MCInst.h"
#include "llvm/MC/MCRegisterInfo.h"
#include "llvm/MC/MCSubtargetInfo.h"
#include "llvm/MC/MCExpr.h"
#include "llvm/Support/ErrorHandling.h"

using namespace llvm;

LuaVMInstPrinter::LuaVMInstPrinter(const MCAsmInfo &MAI, const MCInstrInfo &MII,
                                   const MCRegisterInfo &MRI)
    : MCInstPrinter(MAI, MII, MRI) {}


void LuaVMInstPrinter::printOperand(const MCInst *MI, unsigned OpNo, raw_ostream &O) const {
  const MCOperand &Op = MI->getOperand(OpNo);
  if (Op.isReg()) {
    printRegName(O, Op.getReg());
  } else if (Op.isImm()) {
    O << Op.getImm();
  } else if (Op.isExpr()) {
    // Handle expressions (e.g., labels, offsets).
    // This is a complex topic. For now, just print the expression.
    Op.getExpr()->print(O, &MAI);
  } else {
    llvm_unreachable("Unhandled operand type!");
  }
}