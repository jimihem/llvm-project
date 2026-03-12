#include "LuaVMAsmParser.h"
#include "LuaVM.h"
#include "LuaVMRegisterInfo.td"
#include "llvm/ADT/STLExtras.h"
#include "llvm/ADT/StringSwitch.h"
#include "llvm/MC/MCContext.h"
#include "llvm/MC/MCExpr.h"
#include "llvm/MC/MCInst.h"
#include "llvm/MC/MCParser/MCAsmLexer.h"
#include "llvm/MC/MCParser/MCParsedAsmOperand.h"
#include "llvm/MC/MCParser/MCTargetAsmParser.h"
#include "llvm/MC/MCParser/MCAsmParserExtension.h"
#include "llvm/MC/MCStreamer.h"
#include "llvm/MC/MCSymbol.h"
#include "llvm/Support/TargetRegistry.h"

using namespace llvm;

// Include the auto-generated matcher.
#define GET_ASSEMBLER_HEADER
#include "LuaVMGenAsmMatcher.inc"

// Include the auto-generated instruction descriptions.
#define GET_REGISTER_MATCHER
#define GET_MATCHER_IMPLEMENTATION
#include "LuaVMGenAsmMatcher.inc"

namespace {

// Define a concrete operand type for our parser.
// This holds the parsed information for each operand (register, immediate, etc.).
struct LuaVMOperand : public MCParsedAsmOperand {
  enum KindTy {
    Token,
    Register,
    Immediate,
    Memory
  } Kind;

  SMLoc StartLoc, EndLoc;
  union {
    StringRef Tok;
    unsigned Reg;
    const MCExpr *Imm;
    struct {
      unsigned Base;
      const MCExpr *Disp;
    } Mem;
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

  static std::unique_ptr<LuaVMOperand> CreateImm(const MCExpr *Val, SMLoc S, SMLoc E) {
    auto Op = std::make_unique<LuaVMOperand>(Immediate);
    Op->Imm = Val;
    Op->StartLoc = S;
    Op->EndLoc = E;
    return Op;
  }

  static std::unique_ptr<LuaVMOperand> CreateMem(unsigned Base, const MCExpr *Disp, SMLoc S, SMLoc E) {
    auto Op = std::make_unique<LuaVMOperand>(Memory);
    Op->Mem.Base = Base;
    Op->Mem.Disp = Disp;
    Op->StartLoc = S;
    Op->EndLoc = E;
    return Op;
  }

  SMLoc getStartLoc() const override { return StartLoc; }
  SMLoc getEndLoc() const override { return EndLoc; }

  void print(raw_ostream &OS) const override {
    // For debugging purposes.
    switch (Kind) {
    case Token: OS << "token: '" << Tok << "'"; break;
    case Register: OS << "reg: " << getRegisterName(Reg); break;
    case Immediate: OS << "imm: " << *Imm; break;
    case Memory: OS << "mem: " << *Mem.Disp << "(" << getRegisterName(Mem.Base) << ")"; break;
    }
  }

  bool isToken() const { return Kind == Token; }
  bool isReg() const override { return Kind == Register; }
  bool isImm() const { return Kind == Immediate; }
  bool isMem() const { return Kind == Memory; }

  unsigned getReg() const override {
    assert(Kind == Register && "Invalid access!");
    return Reg;
  }

  const MCExpr *getImm() const {
    assert(Kind == Immediate && "Invalid access!");
    return Imm;
  }

  void addRegOperands(MCInst &Inst, unsigned N) const override {
    assert(N == 1 && "Invalid number of register operands!");
    Inst.addOperand(MCOperand::createReg(getReg()));
  }

  void addImmOperands(MCInst &Inst, unsigned N) const override {
    assert(N == 1 && "Invalid number of immediate operands!");
    const MCExpr *Expr = getImm();
    Inst.addOperand(MCOperand::createExpr(Expr));
  }

  bool isMem() const { return Kind == Memory; }
  unsigned getMemBase() const { assert(isMem()); return Mem.Base; }
  const MCExpr *getMemDisp() const { assert(isMem()); return Mem.Disp; }
};

} // end anonymous namespace

#define GET_TARGET_RECOGNIZER
#include "LuaVMGenAsmMatcher.inc"

// The main AsmParser class implementation.
LuaVMAsmParser::LuaVMAsmParser() : MCAsmParserExtension() {}

bool LuaVMAsmParser::ParseRegister(unsigned &RegNo, SMLoc &StartLoc, SMLoc &EndLoc) {
  StartLoc = Parser.getTok().getLoc();
  const AsmToken &Tok = Parser.getTok();

  if (Tok.isNot(AsmToken::Identifier)) {
    return Error(StartLoc, "register name expected");
  }

  StringRef Name = Tok.getString();
  if (Name.startswith("$")) {
    Name = Name.drop_front(1);
  }

  // Use the auto-generated matcher to find the register number.
  RegNo = MatchRegisterName(Name);
  if (RegNo == 0) {
    return Error(StartLoc, "invalid register name: " + Name);
  }
  EndLoc = Tok.getEndLoc();
  Parser.Lex(); // Consume the token
  return false;
}

bool LuaVMAsmParser::ParseInstruction(ParseInstructionInfo &Info, StringRef Name,
                                      SMLoc NameLoc, OperandVector &Operands) {
  // This is the entry point for parsing an instruction.
  // The name (e.g., "addu") has already been parsed.
  // We now parse its operands.

  // Lex the first operand.
  if (getLexer().isNot(AsmToken::EndOfStatement)) {
    if (parseOperand(Operands))
      return true; // Error occurred in parseOperand

    while (getLexer().is(AsmToken::Comma)) {
      Parser.Lex(); // Eat comma
      if (parseOperand(Operands))
        return true; // Error occurred in parseOperand
    }
  }
  // Ensure we're at the end of the statement.
  if (getLexer().isNot(AsmToken::EndOfStatement)) {
      return TokError("unexpected token in argument list");
  }
  Parser.Lex(); // Consume the EndOfStatement token
  return false;
}

bool LuaVMAsmParser::parseOperand(OperandVector &Operands) {
  // This function parses a single operand.
  // It determines the type (register, immediate, memory) and creates a LuaVMOperand.

  SMLoc S = Parser.getTok().getLoc();
  const AsmToken &Tok = Parser.getTok();

  // Handle registers
  if (Tok.is(AsmToken::Identifier) && Tok.getString().startswith("$")) {
    unsigned RegNo;
    SMLoc E;
    if (ParseRegister(RegNo, S, E))
      return true; // Error reported by ParseRegister
    Operands.push_back(LuaVMOperand::CreateReg(RegNo, S, E));
    return false;
  }

  // Handle immediates (signed, unsigned, hex, etc.)
  if (Tok.is(AsmToken::Integer) || Tok.is(AsmToken::String) || Tok.is(AsmToken::Dot)) {
    const MCExpr *ImmVal;
    if (getParser().parseExpression(ImmVal))
      return true; // Error reported by parseExpression
    Operands.push_back(LuaVMOperand::CreateImm(ImmVal, S, getLexer().getTok().getLoc()));
    return false;
  }

  // Handle memory operands like "disp($base)"
  if (Tok.is(AsmToken::LParen)) {
    // Look for pattern: expr(reg)
    // First, parse the displacement expression (can be a symbol or a number)
    const MCExpr *Disp;
    if (getParser().parseParenExpression(Disp))
        return true;

    SMLoc E = getLexer().getTok().getLoc();
    if (getLexer().isNot(AsmToken::LParen))
        return TokError("expected '(' for memory operand");
    
    Parser.Lex(); // Eat '('
    
    unsigned BaseReg;
    SMLoc BaseS = getLexer().getTok().getLoc();
    if (ParseRegister(BaseReg, BaseS, E))
        return true;

    if (getLexer().isNot(AsmToken::RParen))
        return TokError("expected ')' for memory operand");
    
    Parser.Lex(); // Eat ')'

    Operands.push_back(LuaVMOperand::CreateMem(BaseReg, Disp, S, E));
    return false;
  }

  // If none of the above matched, it's an error.
  return TokError("unknown operand kind");
}

bool LuaVMAsmParser::MatchAndEmitInstruction(SMLoc IDLoc, unsigned &Opcode,
                                             OperandVector &Operands, MCStreamer &Out,
                                             uint64_t &ErrorInfo,
                                             bool MatchingInlineAsm) {
  // This is the core of the matching process.
  // The auto-generated matcher (`MatchInstructionImpl`) attempts to match the
  // parsed operands against the instruction definitions in LuaVMInstrInfo.td.
  // If successful, it fills the MCInst and returns the opcode.
  // If not, it returns an error code which we propagate.

  MCInst Inst;
  unsigned MatchResult =
      MatchInstructionImpl(Operands, Inst, ErrorInfo, MatchingInlineAsm);

  switch (MatchResult) {
  default: llvm_unreachable("Unexpected match result");
  case Match_Success: {
    Inst.setLoc(IDLoc);
    Out.EmitInstruction(Inst, getSTI());
    return false; // Success
  }
  case Match_MissingFeature:
    return Error(IDLoc, "instruction requires a feature not available on the current target");
  case Match_InvalidOperand:
    // ErrorInfo contains the index of the invalid operand.
    return Error(Operands[ErrorInfo]->getStartLoc(), "invalid operand for instruction");
  case Match_UnsupportedOperand:
    return Error(IDLoc, "unsupported operand combination");
  case Match_ConstantRangeError:
    return Error(IDLoc, "constant value exceeds range of target operand");
  }
}

bool LuaVMAsmParser::ParseDirective(AsmToken DirectiveID) {
  // Handle directives like .text, .data, .globl, etc.
  // This is optional and can be left to the default handlers for now.
  return true; // Return true if handled, false to let the default handler try.
}

// This is the factory function that creates your parser.
extern "C" LLVM_EXTERNAL_VISIBILITY MCAsmParser *createLuaVMAsmParser(const MCSubtargetInfo &STI,
                                                                 MCContext &Ctx,
                                                                 MCStreamer &Out) {
  return new LuaVMAsmParser();
}