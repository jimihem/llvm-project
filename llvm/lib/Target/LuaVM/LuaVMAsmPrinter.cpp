#include "LuaVMAsmPrinter.h"
#include "TargetInfo/LuaVMTargetInfo.h"
#include "LuaVMTargetMachine.h"
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

static MCOperand lowerSymbolOperand(const MachineOperand &MO, MCSymbol *Sym,
                                    const AsmPrinter &AP, MCSymbolRefExpr::VariantKind Kind) {
  MCContext &Ctx = AP.OutContext;

  const MCExpr *ME = MCSymbolRefExpr::create(Sym, Kind, Ctx);

  if (!MO.isJTI() && !MO.isMBB() && MO.getOffset())
    ME = MCBinaryExpr::createAdd(
        ME, MCConstantExpr::create(MO.getOffset(), Ctx), Ctx);

  return MCOperand::createExpr(ME);
}

bool LuaVMAsmPrinter::lowerOperand(const MachineOperand &MO,
                                   MCOperand &MCOp) const {
  switch (MO.getType()) {
  default:
    report_fatal_error("lowerOperand: unknown operand type");
  case MachineOperand::MO_Register:
    // Ignore all implicit register operands.
    if (MO.isImplicit())
      return false;
    MCOp = MCOperand::createReg(MO.getReg());
    break;
  case MachineOperand::MO_Immediate:
    MCOp = MCOperand::createImm(MO.getImm());
    break;
  case MachineOperand::MO_MachineBasicBlock:
    MCOp = lowerSymbolOperand(MO, MO.getMBB()->getSymbol(), *this,
                              MCSymbolRefExpr::VK_BLOCK);
    break;
  case MachineOperand::MO_GlobalAddress: {
    MCSymbolRefExpr::VariantKind Kind;
    if (const Function *fun = dyn_cast<Function>(MO.getGlobal()))
      Kind = MCSymbolRefExpr::VK_FUN;
    else
      Kind = MCSymbolRefExpr::VK_GV;
    MCOp = lowerSymbolOperand(MO, getSymbolPreferLocal(*MO.getGlobal()), *this,
                              Kind);
    break;
  }
  case MachineOperand::MO_ConstantPoolIndex:
    MCOp = lowerSymbolOperand(MO, GetCPISymbol(MO.getIndex()), *this,
                              MCSymbolRefExpr::VK_CP);
    break;
  case MachineOperand::MO_JumpTableIndex:
    MCOp = lowerSymbolOperand(MO, GetJTISymbol(MO.getIndex()), *this,
                              MCSymbolRefExpr::VK_JT);
    break;
  case MachineOperand::MO_MCSymbol:
    MCOp = lowerSymbolOperand(MO, MO.getMCSymbol(), *this,
                              MCSymbolRefExpr::VK_LABEL);
    break;
  }
  return true;
}

bool LuaVMAsmPrinter::lowerToMCInst(const MachineInstr *MI, MCInst &OutMI) {
  if (MI->getOpcode() == LuaVM::KILL || 
      MI->getOpcode() == LuaVM::IMPLICIT_DEF) {
    return false;
  }
  assert(!MI->isPseudo() && "Need expand pseudo instruction");
  OutMI.setOpcode(MI->getOpcode());
  OutMI.setFlags(MI->getFlags());
  for (size_t i = 0; i < MI->getNumExplicitOperands(); i++) {
    MCOperand MCOp;
    if (lowerOperand(MI->getOperand(i), MCOp))
      OutMI.addOperand(MCOp);
  }
  return true;
}

void LuaVMAsmPrinter::emitInstruction(const MachineInstr *MI) {
  MCInst OutMI;
  if (lowerToMCInst(MI, OutMI))
    OutStreamer->emitInstruction(OutMI, *TM.getMCSubtargetInfo());
}


extern "C" LLVM_EXTERNAL_VISIBILITY void LLVMInitializeLuaVMAsmPrinter() {
  RegisterAsmPrinter<LuaVMAsmPrinter> X(getTheLuaVMTarget());
}