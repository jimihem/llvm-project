#ifndef LLVM_LIB_TARGET_LUAVM_INSTPRINTER_LUAVMINSTPRINTER_H
#define LLVM_LIB_TARGET_LUAVM_INSTPRINTER_LUAVMINSTPRINTER_H

#include "llvm/MC/MCInstPrinter.h"

namespace llvm {

class LuaVMInstPrinter : public MCInstPrinter {
public:
  LuaVMInstPrinter(const MCAsmInfo &MAI, const MCInstrInfo &MII,
                   const MCRegisterInfo &MRI);
  
private:
  void printInstruction(const MCInst *MI, uint64_t Address, raw_ostream &O);
  const char *getRegisterName(MCRegister Reg);
  void printRegName(raw_ostream &OS, MCRegister Reg) const;
  void printOperand(const MCInst *MI, unsigned OpNo, raw_ostream &O) const;
  virtual std::pair<const char *, uint64_t> getMnemonic(const MCInst *MI);
  virtual void printInst(const MCInst *MI, uint64_t Address, StringRef Annot,
                         const MCSubtargetInfo &STI, raw_ostream &OS);
  void printAddr24Operand(const MCInst *MI, uint32_t OpIdx, raw_ostream &O);
  void printImm14Operand(const MCInst *MI, uint32_t OpIdx, raw_ostream &O);
  void printCondOperand(const MCInst *MI, uint32_t OpIdx, raw_ostream &O);
};

} // end namespace llvm

#endif // LLVM_LIB_TARGET_LUAVM_INSTPRINTER_LUAVMINSTPRINTER_H