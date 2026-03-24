#include "LuaVM.h"
#include "LuaVMTargetMachine.h"
#include "LuaVMInstrInfo.h"
#include "LuaVMSubtarget.h"
#include "llvm/CodeGen/SelectionDAGISel.h"

using namespace llvm;

#define DEBUG_TYPE "luavm-isel"

namespace {
class LuaVMDAGToDAGISel final : public SelectionDAGISel {
public:
  static char ID;
  explicit LuaVMDAGToDAGISel(LuaVMTargetMachine &TM, CodeGenOpt::Level OL)
      : SelectionDAGISel(ID, TM, OL) {}

  StringRef getPassName() const override {
    return "LuaVM DAG->DAG Pattern Instruction Selection";
  }

  bool runOnMachineFunction(MachineFunction &MF) override {
    Subtarget = &static_cast<const LuaVMSubtarget&>(MF.getSubtarget());
    return SelectionDAGISel::runOnMachineFunction(MF);
  }

protected:
  const LuaVMSubtarget *Subtarget;

  void Select(SDNode *N) override {
    // The main selection function. The auto-generated selector will handle most nodes.
    // If a node isn't handled by the patterns, it will fall through to this function.
    // For now, we let the default handling take care of it.
    SelectCode(N);
  }

  #include "LuaVMGenDAGISel.inc"

};
char LuaVMDAGToDAGISel::ID = 0;
} // end anonymous namespace

FunctionPass *llvm::createLuaVMISelDag(LuaVMTargetMachine &TM) {
  return new LuaVMDAGToDAGISel(TM, TM.getOptLevel());
}