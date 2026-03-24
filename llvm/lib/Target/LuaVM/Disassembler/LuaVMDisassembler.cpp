#include "LuaVMDisassembler.h"
#include "llvm/MC/MCContext.h"
#include "llvm/MC/MCInst.h"
#include "llvm/MC/MCSubtargetInfo.h"
#include "llvm/Support/Endian.h"
#include "llvm/Support/raw_ostream.h"

using namespace llvm;
using namespace support::endian;

LuaVMDisassembler::LuaVMDisassembler(const MCSubtargetInfo &STI, MCContext &Ctx)
    : MCDisassembler(STI, Ctx) {}

MCDisassembler::DecodeStatus
LuaVMDisassembler::getInstruction(MCInst &Instr, uint64_t &Size,
                                  ArrayRef<uint8_t> Bytes, uint64_t Address,
                                  raw_ostream &CStream) const {
  
  // If the opcode is unknown, return Fail.
  return MCDisassembler::Fail;
}