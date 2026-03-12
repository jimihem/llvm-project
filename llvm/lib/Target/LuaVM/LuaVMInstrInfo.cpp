#include "LuaVMInstrInfo.h"
#include "LuaVM.h"
#include "LuaVMRegisterInfo.h"
#include "llvm/ADT/STLExtras.h"
#include "llvm/CodeGen/MachineInstrBuilder.h"
#include "llvm/Support/ErrorHandling.h"

using namespace llvm;

LuaVMInstrInfo::LuaVMInstrInfo(const LuaVMSubtarget &STI)
    : LuaVMGenInstrInfo(LuaVM::ADJCALLSTACKDOWN, LuaVM::ADJCALLSTACKUP),
      Subtarget(STI) {}

const LuaVMRegisterInfo &LuaVMInstrInfo::getRegisterInfo() const {
  // This function must return an instance of your RegisterInfo subclass.
  // You need to define LuaVMRegisterInfo in LuaVMRegisterInfo.h/cpp.
  // For now, this will cause a compilation error until LuaVMRegisterInfo is fully implemented.
  llvm_unreachable("getRegisterInfo not implemented yet.");
}