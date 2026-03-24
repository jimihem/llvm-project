#ifndef LLVM_LIB_TARGET_LUAVM_H
#define LLVM_LIB_TARGET_LUAVM_H

namespace llvm {
  class LuaVMTargetMachine;
  class FunctionPass;
  class MCAsmParser;
  class MCSubtargetInfo;
  class MCContext;
  class MCStreamer;

  // Passes
  FunctionPass *createLuaVMISelDag(LuaVMTargetMachine &TM);

  // AsmParser
  extern "C" MCAsmParser *createLuaVMAsmParser(const MCSubtargetInfo &STI,
                                               MCContext &Ctx,
                                               MCStreamer &Out);

} // end namespace llvm

#endif // LLVM_LIB_TARGET_LUAVM_H