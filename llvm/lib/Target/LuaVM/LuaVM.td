//===- LuaVM.td - Describe the Lua Virtual Machine ---------*- tablegen -*-===//
// Target descriptor file for the Lua Virtual Machine.
//===----------------------------------------------------------------------===//

include "LuaVMSubtarget.td"
include "LuaVMInstrInfo.td"
include "llvm/Target/Target.td"

def LuaVM : Target {
  let Name = "lua-vm";
  let Description = "Lua Virtual Machine";
  let TargetPrefix = "luavm";
  let AssemblyGrammar = "LuaVM::LuaVM";
  let HasJIT = 1;
  let LocalAsmParser = 1;
  let UseWinLinker = 0;
  let GlobalISelHelper = "LuaVM";
  let TargetMachine = "LuaVMTargetMachine";
  let InstructionSet = LuaVMInstrs;
  let CallFrameInfoDirection = DwarfCallFrame::CallFrameAddressIsRA;
}