#include "LuaVMAsmParser.h"
#include "llvm/MC/MCContext.h"
#include "llvm/MC/MCExpr.h"
#include "llvm/MC/MCInst.h"
#include "llvm/MC/MCInstrInfo.h"
#include "llvm/MC/MCParser/MCParsedAsmOperand.h"

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
  enum KindTy { Token, Register, Immediate, Memory } Kind;

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

  static std::unique_ptr<LuaVMOperand> CreateImm(const MCExpr *Val, SMLoc S,
                                                 SMLoc E) {
    auto Op = std::make_unique<LuaVMOperand>(Immediate);
    Op->Imm = Val;
    Op->StartLoc = S;
    Op->EndLoc = E;
    return Op;
  }

  static std::unique_ptr<LuaVMOperand>
  CreateMem(unsigned Base, const MCExpr *Disp, SMLoc S, SMLoc E) {
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
    case Token:
      OS << "token: '" << Tok << "'";
      break;
    case Immediate:
      OS << "imm: " << *Imm;
      break;
    default:
      break;
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

  unsigned getMemBase() const {
    assert(isMem());
    return Mem.Base;
  }
  const MCExpr *getMemDisp() const {
    assert(isMem());
    return Mem.Disp;
  }

  void addRegOperands(MCInst &Inst, unsigned i) {}
  void addImmOperands(MCInst &Inst, unsigned i) {}
  StringRef getToken() { return StringRef(); }
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