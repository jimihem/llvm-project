#include "LuaVMAsmParser.h"
#include "TargetInfo/LuaVMTargetInfo.h"
#include "llvm/MC/TargetRegistry.h"
#include "llvm/MC/MCContext.h"
#include "llvm/MC/MCExpr.h"
#include "llvm/MC/MCInst.h"
#include "llvm/MC/MCInstrInfo.h"
#include "llvm/MC/MCParser/MCParsedAsmOperand.h"
#include "llvm/MC/MCSymbol.h"
#include "llvm/MC/MCStreamer.h"

using namespace llvm;

#define GET_REGINFO_ENUM
#include "LuaVMGenRegisterInfo.inc"

#define GET_INSTRINFO_ENUM
#include "LuaVMGenInstrInfo.inc"

namespace llvm {

// Define a concrete operand type for our parser.
// This holds the parsed information for each operand (register, immediate,
// etc.).
struct LuaVMOperand : public MCParsedAsmOperand {
  enum KindTy { Token, Register, Immediate, Expression } Kind;

  SMLoc StartLoc, EndLoc;
  union {
    StringRef Tok;
    unsigned Reg;
    int64_t Imm;
    const MCExpr *Expr;
  };

  LuaVMOperand(KindTy K) : Kind(K) {}

public:
  // Factory methods for creating different types of operands.
  static std::unique_ptr<LuaVMOperand> CreateToken(StringRef Str, SMLoc S) {
    auto Op = std::make_unique<LuaVMOperand>(Token);
    Op->Tok = Str;
    Op->StartLoc = S;
    Op->EndLoc = S;
    return Op;
  }

  static std::unique_ptr<LuaVMOperand> CreateReg(unsigned R, SMLoc S, SMLoc E) {
    auto Op = std::make_unique<LuaVMOperand>(Register);
    Op->Reg = R;
    Op->StartLoc = S;
    Op->EndLoc = E;
    return Op;
  }

  static std::unique_ptr<LuaVMOperand> CreateImm(const int64_t Imm, SMLoc S,
                                                 SMLoc E) {
    auto Op = std::make_unique<LuaVMOperand>(Immediate);
    Op->Imm = Imm;
    Op->StartLoc = S;
    Op->EndLoc = E;
    return Op;
  }

  static std::unique_ptr<LuaVMOperand>
  CreateExpr(const MCExpr *Expr, SMLoc S, SMLoc E) {
    auto Op = std::make_unique<LuaVMOperand>(Expression);
    Op->Expr = Expr;
    Op->StartLoc = S;
    Op->EndLoc = E;
    return Op;
  }

  SMLoc getStartLoc() const override { return StartLoc; }
  SMLoc getEndLoc() const override { return EndLoc; }

  void print(raw_ostream &OS) const override {
    // For debugging purposes.
    switch (Kind) {
    case Token:
      OS << "token: '" << Tok << "'";
      break;
    case Immediate:
      OS << "imm: " << Imm;
      break;
    default:
      break;
    }
  }

  bool isToken() const { return Kind == Token; }
  bool isReg() const override { return Kind == Register; }
  bool isImm() const { return Kind == Immediate; }
  bool isMem() const { return Kind == Expression; }

  unsigned getReg() const override {
    assert(Kind == Register && "Invalid access!");
    return Reg;
  }

  const int64_t getImm() const {
    assert(Kind == Immediate && "Invalid access!");
    return Imm;
  }

  const MCExpr *getExpr() const {
    assert(isMem());
    return Expr;
  }

  void addRegOperands(MCInst &Inst, unsigned i) {
    Inst.addOperand(MCOperand::createReg(Reg));
  }

  void addImmOperands(MCInst &Inst, unsigned i) {
      if(Kind == Immediate)
          Inst.addOperand(MCOperand::createImm(Imm));
      else
          Inst.addOperand(MCOperand::createExpr(Expr));
  }
  StringRef getToken() { return Tok; }
};

#define GET_REGISTER_MATCHER
#define GET_MATCHER_IMPLEMENTATION
#define GET_TARGET_RECOGNIZER
#include "LuaVMGenAsmMatcher.inc"

// The main AsmParser class implementation.
LuaVMAsmParser::LuaVMAsmParser(MCTargetOptions const &Options,
                               const MCSubtargetInfo &STI,
                               const MCInstrInfo &MII)
    : MCTargetAsmParser(Options, STI, MII) {}

} // namespace llvm

bool LuaVMAsmParser::parseRegister(MCRegister &Reg, SMLoc &StartLoc,
                                   SMLoc &EndLoc) {
  llvm_unreachable("Need handle");
  return true;
}

OperandMatchResultTy LuaVMAsmParser::tryParseRegister(MCRegister &Reg,
                                                      SMLoc &StartLoc,
                                                      SMLoc &EndLoc) {
  
  return MatchOperand_Success;
}

bool LuaVMAsmParser::ParseInstruction(ParseInstructionInfo &Info,
                                      StringRef Name, SMLoc NameLoc,
                                      OperandVector &Operands) {
  Operands.push_back(LuaVMOperand::CreateToken(Name, NameLoc));
  MCAsmParser &Parser = getParser();
  while (Parser.getTok().isNot(AsmToken::EndOfStatement)) {
      if (Parser.getTok().is(AsmToken::Identifier)) {
          unsigned Reg = MatchRegisterName(Parser.getTok().getIdentifier());
          if (Reg) {
            Operands.push_back(LuaVMOperand::CreateReg(
                Reg, Parser.getTok().getLoc(), Parser.getTok().getEndLoc()));
          } else {
            MCSymbolRefExpr::VariantKind Kind = MCSymbolRefExpr::VK_None;
            StringRef IdVal = Parser.getTok().getIdentifier();
            size_t Pos = IdVal.find_last_of('@');
            if (Pos != StringRef::npos) {
              IdVal = IdVal.substr(0, Pos);
              Kind = MCSymbolRefExpr::getVariantKindForName(
                  Parser.getTok().getIdentifier().substr(Pos + 1));
            }
            MCSymbol *Symbol = Parser.getContext().getOrCreateSymbol(IdVal);
            const MCExpr *Expr =
                MCSymbolRefExpr::create(Symbol, Kind, Parser.getContext());
            Operands.push_back(LuaVMOperand::CreateExpr(
                Expr, Parser.getTok().getLoc(), Parser.getTok().getEndLoc()));
          }
      } else if (Parser.getTok().is(AsmToken::Integer)) {
          Operands.push_back(LuaVMOperand::CreateImm(
              Parser.getTok().getIntVal(), Parser.getTok().getLoc(),
              Parser.getTok().getEndLoc()));
      }
      Parser.Lex();
  }
  getParser().Lex();

  return false;
}
bool LuaVMAsmParser::MatchAndEmitInstruction(SMLoc IDLoc, unsigned &Opcode,
                                             OperandVector &Operands,
                                             MCStreamer &Out,
                                             uint64_t &ErrorInfo,
                                             bool MatchingInlineAsm) {
  MCInst Inst;
  MatchInstructionImpl(Operands, Inst, ErrorInfo, false);
  Out.emitInstruction(Inst, getSTI());
  return true;
}

unsigned LuaVMAsmParser::validateTargetOperandClass(MCParsedAsmOperand &Op,
                                                    unsigned Kind) {
  if (Op.isReg() && Kind > MatchClassKind::MCK_LAST_TOKEN &&
      Kind <= MatchClassKind::MCK_LAST_REGISTER)
      return Match_Success;
  else
      return Kind == MatchClassKind::MCK_Imm ? Match_Success
                                             : Match_InvalidOperand;
}

MCTargetAsmParser *CeateLuaVMAsmParser(const MCSubtargetInfo &STI,
                                       MCAsmParser &P, const MCInstrInfo &MII,
                                       const MCTargetOptions &Options) {
  return new LuaVMAsmParser(Options, STI, MII);
}

extern "C" LLVM_EXTERNAL_VISIBILITY void LLVMInitializeLuaVMAsmParser() {
  TargetRegistry::RegisterMCAsmParser(getTheLuaVMTarget(), CeateLuaVMAsmParser);
}