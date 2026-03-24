#ifndef LLVM_LIB_TARGET_LUAVM_LUAVMASMPRINTER_H
#define LLVM_LIB_TARGET_LUAVM_LUAVMASMPRINTER_H

#include "llvm/CodeGen/AsmPrinter.h"

namespace llvm {

class LuaVMAsmPrinter : public AsmPrinter {
public:
  explicit LuaVMAsmPrinter(TargetMachine &TM, 
                          std::unique_ptr<MCStreamer> Streamer);

  static char ID;

  bool runOnMachineFunction(MachineFunction &MF) override;

  StringRef getPassName() const override {
    return "LuaVM Assembly Printer";
  }

  void emitInstruction(const MachineInstr *MI) override;
  void emitGlobalVariable(const GlobalVariable *GV) override;
};

} 

#endif 