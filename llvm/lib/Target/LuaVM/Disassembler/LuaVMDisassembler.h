#ifndef LLVM_LIB_TARGET_LUAVM_DISASSEMBLER_LUAVMDISASSEMBLER_H
#define LLVM_LIB_TARGET_LUAVM_DISASSEMBLER_LUAVMDISASSEMBLER_H

#include "llvm/MC/MCDisassembler/MCDisassembler.h"

namespace llvm {

class LuaVMDisassembler : public MCDisassembler {
public:
  LuaVMDisassembler(const MCSubtargetInfo &STI, MCContext &Ctx);

  ~LuaVMDisassembler() override = default;

  DecodeStatus getInstruction(MCInst &Instr, uint64_t &Size,
                              ArrayRef<uint8_t> Bytes, uint64_t Address,
                              raw_ostream &VStream) const override;
  unsigned getFPRReg(uint8_t HWEnc) const;
  unsigned getRegEnc(uint8_t HWEnc) const;
};

} // end namespace llvm

#endif // LLVM_LIB_TARGET_LUAVM_DISASSEMBLER_LUAVMDISASSEMBLER_H