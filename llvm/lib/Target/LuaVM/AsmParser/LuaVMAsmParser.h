#ifndef LLVM_LIB_TARGET_LUAVM_ASMPARSER_LUAVMASMPARSER_H
#define LLVM_LIB_TARGET_LUAVM_ASMPARSER_LUAVMASMPARSER_H

#include "LuaVMRegisterInfo.td"
#include "llvm/MC/MCParser/MCAsmParserExtension.h"
#include "llvm/MC/MCParser/MCParsedAsmOperand.h"
#include "llvm/MC/MCSymbol.h"
#include "llvm/Support/Compiler.h"

namespace llvm {

struct LuaVMOperand;
class LuaVMAsmParser : public MCAsmParserExtension {
  // ... (Typedefs and helper functions would go here)
  // For brevity, this is a minimal skeleton. A full parser is very complex.
  // It involves tokenizing, matching instruction names, parsing operands (registers, immediates, addresses),
  // and constructing an MCInst.

public:
  LuaVMAsmParser();

  bool ParseRegister(unsigned &RegNo, SMLoc &StartLoc, SMLoc &EndLoc) override;

  bool ParseInstruction(ParseInstructionInfo &Info, StringRef Name,
                        SMLoc NameLoc, OperandVector &Operands) override;

  bool ParseDirective(AsmToken DirectiveID) override;

private:
  bool MatchAndEmitInstruction(SMLoc IDLoc, unsigned &Opcode,
                               OperandVector &Operands, MCStreamer &Out,
                               uint64_t &ErrorInfo,
                               bool MatchingInlineAsm) override;
  bool parseOperand(llvm::SmallVectorImpl<std::unique_ptr<llvm::MCParsedAsmOperand>> &Operands);
};

} // end namespace llvm

#endif // LLVM_LIB_TARGET_LUAVM_ASMPARSER_LUAVMASMPARSER_H