#include "LuaVMMCTargetDesc.h"
#include "llvm/Support/TargetRegistry.h"
using namespace llvm;

extern "C" void LLVMInitializeLuaVMTargetInfo() {
  // Register the target triple information.
  RegisterTarget<Triple::luavm> X(TheLuaVMTarget, "lua-vm",
                                  "Lua Virtual Machine", "LuaVM");
}