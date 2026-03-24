#ifndef LLVM_LIB_TARGET_LUAVM_INSTPRINTER_LUAVMINSTPRINTER_H
#define LLVM_LIB_TARGET_LUAVM_INSTPRINTER_LUAVMINSTPRINTER_H

#include "llvm/MC/MCInstPrinter.h"

namespace llvm {

class LuaVMInstPrinter : public MCInstPrinter {
public:
  LuaVMInstPrinter(const MCAsmInfo &MAI, const MCInstrInfo &MII,
                   const MCRegisterInfo &MRI);
  
private:
  void printOperand(const MCInst *MI, unsigned OpNo, raw_ostream &O) const;
};

} // end namespace llvm

#endif // LLVM_LIB_TARGET_LUAVM_INSTPRINTER_LUAVMINSTPRINTER_H