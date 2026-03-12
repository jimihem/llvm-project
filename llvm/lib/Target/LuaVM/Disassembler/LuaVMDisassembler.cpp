#include "LuaVMDisassembler.h"
#include "LuaVM.h"
#include "llvm/MC/MCContext.h"
#include "llvm/MC/MCInst.h"
#include "llvm/MC/MCSubtargetInfo.h"
#include "llvm/Support/Endian.h"
#include "llvm/Support/raw_ostream.h"

using namespace llvm;
using namespace support::endian;

LuaVMDisassembler::LuaVMDisassembler(const MCSubtargetInfo &STI, MCContext &Ctx)
    : MCDisassembler(STI, Ctx) {}

DecodeStatus LuaVMDisassembler::getInstruction(MCInst &Instr, uint64_t &Size,
                                               ArrayRef<uint8_t> Bytes, uint64_t Address,
                                               raw_ostream &VStream,
                                               raw_ostream &CStream) const {
  Size = 0;

  // Check if we have enough bytes for an instruction (assuming 4-byte instructions).
  if (Bytes.size() < 4) {
    return MCDisassembler::Fail;
  }

  // Read the instruction word from the byte array.
  uint32_t Insn = read32le(Bytes.data());

  // Decode the opcode from the upper 6 bits.
  uint8_t Opcode = (Insn >> 26) & 0x3F;

  // Dispatch based on the opcode to build the MCInst.
  // This is a simplified example. You'll need a much larger switch for all opcodes.
  switch (Opcode) {
    case 0x00: // R-type instructions
      uint8_t Funct = Insn & 0x3F;
      switch (Funct) {
        case 0x21: // ADDu
          Instr.setOpcode(LuaVM::ADDu);
          Instr.addOperand(MCOperand::createReg(LuaVM::R((Insn >> 11) & 0x1F))); // rd
          Instr.addOperand(MCOperand::createReg(LuaVM::R((Insn >> 21) & 0x1F))); // rs
          Instr.addOperand(MCOperand::createReg(LuaVM::R((Insn >> 16) & 0x1F))); // rt
          Size = 4;
          return MCDisassembler::Success;
        // Add other R-type instructions here...
      }
      break;
    case 0x09: // ADDiu (I-type)
      Instr.setOpcode(LuaVM::ADDiu);
      Instr.addOperand(MCOperand::createReg(LuaVM::R((Insn >> 16) & 0x1F))); // rt
      Instr.addOperand(MCOperand::createReg(LuaVM::R((Insn >> 21) & 0x1F))); // rs
      Instr.addOperand(MCOperand::createImm(int16_t(Insn & 0xFFFF))); // immediate (sign-extended)
      Size = 4;
      return MCDisassembler::Success;
    // Add other opcodes (LD, ST, JMP, etc.) here...
  }

  // If the opcode is unknown, return Fail.
  return MCDisassembler::Fail;
}