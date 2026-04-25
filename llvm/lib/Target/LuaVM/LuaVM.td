//===- LuaVM.td - Describe the Lua Virtual Machine ---------*- tablegen -*-===//
// Target descriptor file for the Lua Virtual Machine.
//===----------------------------------------------------------------------===//

include "llvm/Target/Target.td"
include "LuaVMRegisterInfo.td"
include "LuaVMInstrInfo.td"

def FakeFeature : SubtargetFeature<"FakeFeature", "FakeFeature", "false",
                                   "Fake Feature">;

def : Processor<"LuaVM", NoItineraries, [FakeFeature]>;

def LuaVMInstrInfo : InstrInfo{
  let isLittleEndianEncoding = false;
}

def LuaVM : Target {
  let InstructionSet = LuaVMInstrInfo;
}