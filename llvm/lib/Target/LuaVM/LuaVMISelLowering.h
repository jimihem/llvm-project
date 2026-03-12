#ifndef LLVM_LIB_TARGET_LUAVM_LUAVMISELLOWERING_H
#define LLVM_LIB_TARGET_LUAVM_LUAVMISELLOWERING_H

#include "llvm/CodeGen/TargetLowering.h"

namespace llvm {
class LuaVMSubtarget;
class LuaVMTargetMachine;

class LuaVMTargetLowering : public TargetLowering {
public:
  LuaVMTargetLowering(const LuaVMTargetMachine &TM, const LuaVMSubtarget &STI);

  /// This method returns the name of a target specific DAG node.
  const char *getTargetNodeName(unsigned Opcode) const override;

  SDValue LowerOperation(SDValue Op, SelectionDAG &DAG) const override;

private:
  const LuaVMSubtarget &Subtarget;

  SDValue LowerBR_CC(SDValue Op, SelectionDAG &DAG) const;
};

}

#endif // LLVM_LIB_TARGET_LUAVM_LUAVMISELLOWERING_H