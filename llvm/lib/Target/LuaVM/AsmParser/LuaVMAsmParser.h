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

  // Include the auto-generated matcher.
#define GET_ASSEMBLER_HEADER
#include "LuaVMGenAsmMatcher.inc"

};

} // end namespace llvm

#endif // LLVM_LIB_TARGET_LUAVM_ASMPARSER_LUAVMASMPARSER_H