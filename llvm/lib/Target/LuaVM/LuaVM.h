#ifndef LLVM_LIB_TARGET_LUAVM_H
#define LLVM_LIB_TARGET_LUAVM_H

namespace llvm {
  class LLVMTargetMachine;
  class FunctionPass;
  class MCAsmParser;
  class MCSubtargetInfo;
  class MCContext;
  class MCStreamer;

  // Passes
  FunctionPass *createLuaVMISelDag(LLVMTargetMachine &TM);

  // AsmParser
  extern "C" MCAsmParser *createLuaVMAsmParser(const MCSubtargetInfo &STI,
                                               MCContext &Ctx,
                                               MCStreamer &Out);

} // end namespace llvm

#endif // LLVM_LIB_TARGET_LUAVM_H