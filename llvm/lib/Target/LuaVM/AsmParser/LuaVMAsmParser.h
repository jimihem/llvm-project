#ifndef LLVM_LIB_TARGET_LUAVM_ASMPARSER_LUAVMASMPARSER_H
#define LLVM_LIB_TARGET_LUAVM_ASMPARSER_LUAVMASMPARSER_H

#include "llvm/MC/MCParser/MCTargetAsmParser.h"

namespace llvm {

struct LuaVMOperand;
class LuaVMAsmParser : public MCTargetAsmParser {
  // ... (Typedefs and helper functions would go here)
  // For brevity, this is a minimal skeleton. A full parser is very complex.
  // It involves tokenizing, matching instruction names, parsing operands (registers, immediates, addresses),
  // and constructing an MCInst.

public:
  LuaVMAsmParser(MCTargetOptions const &, const MCSubtargetInfo &STI,
                 const MCInstrInfo &MII);
  virtual bool parseRegister(MCRegister &Reg, SMLoc &StartLoc,
                             SMLoc &EndLoc) override;
  virtual OperandMatchResultTy
  tryParseRegister(MCRegister &Reg, SMLoc &StartLoc, SMLoc &EndLoc) override;
  virtual bool ParseInstruction(ParseInstructionInfo &Info, StringRef Name,
                                SMLoc NameLoc,
                                OperandVector &Operands) override;
  virtual bool MatchAndEmitInstruction(SMLoc IDLoc, unsigned &Opcode,
                                       OperandVector &Operands, MCStreamer &Out,
                                       uint64_t &ErrorInfo,
                                       bool MatchingInlineAsm) override;
  virtual unsigned validateTargetOperandClass(MCParsedAsmOperand &Op,
                                              unsigned Kind);
  // Include the auto-generated matcher.
#define GET_ASSEMBLER_HEADER
#include "LuaVMGenAsmMatcher.inc"

};

} // end namespace llvm

#endif // LLVM_LIB_TARGET_LUAVM_ASMPARSER_LUAVMASMPARSER_H