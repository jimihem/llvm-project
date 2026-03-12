#include "LuaVMAsmPrinter.h"
#include "LuaVM.h"
#include "llvm/CodeGen/MachineFunction.h"
#include "llvm/CodeGen/MachineInstr.h"
#include "llvm/CodeGen/MachineBasicBlock.h"
#include "llvm/MC/MCAsmInfo.h"
#include "llvm/MC/MCInst.h"
#include "llvm/MC/MCStreamer.h"
#include "llvm/MC/MCSymbol.h"
#include "llvm/Support/raw_ostream.h"
#include "llvm/Support/ErrorHandling.h"

using namespace llvm;

char LuaVMAsmPrinter::ID = 0;

LuaVMAsmPrinter::LuaVMAsmPrinter(TargetMachine &TM, 
                                 std::unique_ptr<MCStreamer> Streamer)
    : AsmPrinter(TM, std::move(Streamer)) {}

bool LuaVMAsmPrinter::runOnMachineFunction(MachineFunction &MF) {
  auto *MFI = MF.getInfo<LuaVMMachineFunctionInfo>();
  if (MFI) {
    // Handle LuaVM-specific function info if needed
  }

  emitFunctionBodyStart(MF);

  for (const auto &MBB : MF) {
    for (const auto &MI : MBB) {
      emitInstruction(&MI);
    }
  }

  emitFunctionBodyEnd(MF);

  return false;
}

void LuaVMAsmPrinter::emitInstruction(const MachineInstr *MI) {
  if (MI->getOpcode() == LuaVM::ADD_RR) {
    const MachineOperand &Dst = MI->getOperand(0);
    const MachineOperand &Src1 = MI->getOperand(1);
    const MachineOperand &Src2 = MI->getOperand(2);

    OutStreamer->addComment("Custom LuaVM ADD instruction");
    OutStreamer->emitRawText("\tADD R" + Twine(Dst.getReg()) + ", R" +
                             Twine(Src1.getReg()) + ", R" + Twine(Src2.getReg()));
    return;
  }

  if (MI->getOpcode() == LuaVM::LOADK) {
    const MachineOperand &Dst = MI->getOperand(0);
    const MachineOperand &ConstIdx = MI->getOperand(1);
    OutStreamer->emitRawText("\tLOADK R" + Twine(Dst.getReg()) + ", const(" + Twine(ConstIdx.getImm()) + ")");
    return;
  }

  report_fatal_error("Unknown instruction encountered in LuaVMAsmPrinter!");
}

void LuaVMAsmPrinter::emitGlobalVariable(const GlobalVariable *GV) {
  // Handle global variable emission for LuaVM if necessary
  // OutStreamer->emitRawText("\t.global " + GV->getName().str());
}

void LuaVMAsmPrinter::emitFunctionBodyStart(MachineFunction &MF) {
  MCSymbol *Sym = getSymbol(&MF);
  OutStreamer->emitLabel(Sym);
  OutStreamer->emitRawText("\t; Function " + MF.getName().str() + " starts here");
}

void LuaVMAsmPrinter::emitFunctionBodyEnd(MachineFunction &MF) {
  OutStreamer->emitRawText("\t; Function ends");
}

extern "C" LLVM_EXTERNAL_VISIBILITY void LLVMInitializeLuaVMTargetAsmPrinter() {
  RegisterAsmPrinter<LuaVMAsmPrinter> X(getTheLuaVMTarget());
}