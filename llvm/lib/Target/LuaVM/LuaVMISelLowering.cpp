#include "LuaVMISelLowering.h"
#include "LuaVM.h"
#include "LuaVMTargetMachine.h"
#include "llvm/CodeGen/CallingConvLower.h"
#include "llvm/CodeGen/MachineFunction.h"
#include "llvm/CodeGen/MachineRegisterInfo.h"
#include "llvm/CodeGen/TargetLoweringObjectFileImpl.h"
#include "llvm/IR/DiagnosticInfo.h"
#include "llvm/IR/Intrinsics.h"
#include "llvm/Support/Debug.h"
#include "llvm/Support/raw_ostream.h"

using namespace llvm;

const char *LuaVMTargetLowering::getTargetNodeName(unsigned Opcode) const {
  switch (Opcode) {
  case LUAVM_ADD: return "LUAVM_ADD";
  case LUAVM_SUB: return "LUAVM_SUB";
  default: return nullptr;
  }
}

LuaVMTargetLowering::LuaVMTargetLowering(const LuaVMTargetMachine &TM, const LuaVMSubtarget &STI)
    : TargetLowering(TM, STI.computeRegisterProperties()), Subtarget(STI) {

  // Set up the operation actions.
  setOperationAction(ISD::SDIV, MVT::i32, Expand);
  setOperationAction(ISD::UDIV, MVT::i32, Expand);
  setOperationAction(ISD::SREM, MVT::i32, Expand);
  setOperationAction(ISD::UREM, MVT::i32, Expand);

  // Set up custom lowering actions.
  setOperationAction(ISD::BR_JT, MVT::i32, Custom);
  setOperationAction(ISD::BR_CC, MVT::i32, Custom);
  setOperationAction(ISD::SELECT_CC, MVT::i32, Custom);

  // Compute derived properties from the custom actions and global flags.
  computeKnownBitsForTargetNodes();
}

SDValue LuaVMTargetLowering::LowerOperation(SDValue Op, SelectionDAG &DAG) const {
  switch (Op.getOpcode()) {
  default:
    llvm_unreachable("Unimplemented operand");
  case ISD::BR_JT:
  case ISD::BR_CC:
  case ISD::SELECT_CC:
    return LowerBR_CC(Op, DAG);
  }
}

SDValue LuaVMTargetLowering::LowerBR_CC(SDValue Op, SelectionDAG &DAG) const {
  // Example lowering for conditional branches.
  // This is a complex lowering task.
  // For now, we just return an empty SDValue, which signals failure.
  // You would need to implement the actual lowering logic here.
  return SDValue();
}