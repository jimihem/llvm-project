add_llvm_component_group(LuaVM)

set(LLVM_TARGET_DEFINITIONS LuaVM.td)

tablegen(LLVM LuaVMGenAsmMatcher.inc -gen-asm-matcher)
tablegen(LLVM LuaVMGenAsmWriter.inc -gen-asm-writer)
tablegen(LLVM LuaVMGenCallingConv.inc -gen-callingconv)
tablegen(LLVM LuaVMGenDAGISel.inc -gen-dag-isel)
tablegen(LLVM LuaVMGenDisassemblerTables.inc -gen-disassembler)
tablegen(LLVM LuaVMGenInstrInfo.inc -gen-instr-info)
tablegen(LLVM LuaVMGenMCCodeEmitter.inc -gen-emitter)
tablegen(LLVM LuaVMGenRegisterInfo.inc -gen-register-info)
tablegen(LLVM LuaVMGenSubtargetInfo.inc -gen-subtarget)

add_public_tablegen_target(LuaVMCommonTableGen)

add_llvm_target(LuaVMCodeGen
  LuaVMFrameLowering.cpp
  LuaVMISelDAGToDAG.cpp
  LuaVMISelLowering.cpp
  LuaVMInstrInfo.cpp
  LuaVMRegisterInfo.cpp
  LuaVMSubtarget.cpp
  LuaVMTargetMachine.cpp
  LuaVMAsmPrinter.cpp

  LINK_COMPONENTS
  Analysis
  AsmPrinter
  CodeGen
  Core
  MC
  SelectionDAG
  Support
  Target
  
  ADD_TO_COMPONENT
  LuaVM
  )

# Add the new MC and Disassembler components to the library
add_llvm_component_library(LLVMLuaVMInfo
  MCTargetDesc/LuaVMMCTargetDesc.cpp
  MCTargetDesc/LuaVMAsmBackend.cpp
  MCTargetDesc/LuaVMELFStreamer.cpp
  MCTargetDesc/LuaVMMCCodeEmiter.cpp
  MCTargetDesc/LuaVMMCAsmInfo.cpp
  TargetInfo/LuaVMTargetInfo.cpp
  Disassembler/LuaVMDisassembler.cpp
  InstPrinter/LuaVMInstPrinter.cpp
  AsmParser/LuaVMAsmParser.cpp

  LINK_COMPONENTS
  MC
  
  ADD_TO_COMPONENT
  LuaVM
  )