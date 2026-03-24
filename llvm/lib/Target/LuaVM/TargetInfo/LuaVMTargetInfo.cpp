#include "TargetInfo/LuaVMTargetInfo.h"
#include "llvm/MC/TargetRegistry.h"

using namespace llvm;
Target &llvm::getTheLuaVMTarget() { 
  static Target TheLuaVMTarget;
  return TheLuaVMTarget;
}

extern "C" void LLVMInitializeLuaVMTargetInfo() {
  // Register the target triple information.
  RegisterTarget<Triple::luavm> X(getTheLuaVMTarget(), "lua-vm",
                                  "Lua Virtual Machine", "LuaVM");
}