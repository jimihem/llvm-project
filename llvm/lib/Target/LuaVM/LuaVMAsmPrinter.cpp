#include "LuaVMAsmPrinter.h"
#include "TargetInfo/LuaVMTargetInfo.h"
#include "llvm/MC/MCStreamer.h"
#include "llvm/MC/TargetRegistry.h"

using namespace llvm;

char LuaVMAsmPrinter::ID = 0;

LuaVMAsmPrinter::LuaVMAsmPrinter(TargetMachine &TM, 
                                 std::unique_ptr<MCStreamer> Streamer)
    : AsmPrinter(TM, std::move(Streamer)) {}

bool LuaVMAsmPrinter::runOnMachineFunction(MachineFunction &MF) {
  SetupMachineFunction(MF);
  emitFunctionBody();
  return false;
}

void LuaVMAsmPrinter::emitInstruction(const MachineInstr *MI) {
  

  report_fatal_error("Unknown instruction encountered in LuaVMAsmPrinter!");
}

void LuaVMAsmPrinter::emitGlobalVariable(const GlobalVariable *GV) {
  // Handle global variable emission for LuaVM if necessary
  // OutStreamer->emitRawText("\t.global " + GV->getName().str());
}



extern "C" LLVM_EXTERNAL_VISIBILITY void LLVMInitializeLuaVMAsmPrinter() {
  RegisterAsmPrinter<LuaVMAsmPrinter> X(getTheLuaVMTarget());
}