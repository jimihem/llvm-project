#ifndef LLVM_LIB_TARGET_LUAVM_LUAVMASMPRINTER_H
#define LLVM_LIB_TARGET_LUAVM_LUAVMASMPRINTER_H

#include "LuaVM.h"
#include "llvm/CodeGen/AsmPrinter.h"
#include "llvm/MC/MCStreamer.h"
#include "llvm/Support/FormattedStream.h"

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
  void emitFunctionBodyStart(MachineFunction &MF) override;
  void emitFunctionBodyEnd(MachineFunction &MF) override;
};

} 

#endif 