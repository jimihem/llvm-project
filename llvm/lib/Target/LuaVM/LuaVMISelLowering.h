#ifndef LLVM_LIB_TARGET_LUAVM_LUAVMISELLOWERING_H
#define LLVM_LIB_TARGET_LUAVM_LUAVMISELLOWERING_H

#include "llvm/CodeGen/TargetLowering.h"


namespace llvm {
class LuaVMSubtarget;
class LuaVMTargetMachine;

namespace LuaVMISD {
enum NodeType : unsigned {
  FIRST_NUMBER = ISD::BUILTIN_OP_END,
  CMP,
  CMPU,
  DCMP,
  CALL,
  RET,
  Select,
  JCond,
  MOVI
};
}

class LuaVMTargetLowering : public TargetLowering {
public:
  LuaVMTargetLowering(const LuaVMTargetMachine &TM, const LuaVMSubtarget &STI);

  /// This method returns the name of a target specific DAG node.
  const char *getTargetNodeName(unsigned Opcode) const override;

  SDValue LowerOperation(SDValue Op, SelectionDAG &DAG) const override;

  void LowerOperationWrapper(SDNode *N, SmallVectorImpl<SDValue> &Results,
                             SelectionDAG &DAG) const {}

private:
  const LuaVMSubtarget &Subtarget;

  SDValue LowerBR_JT(SDValue Op, SelectionDAG &DAG) const;
  SDValue LowerBR_CC(SDValue Op, SelectionDAG &DAG) const;
  SDValue LowerSETCC(SDValue Op, SelectionDAG &DAG) const;
  SDValue LowerBRCOND(SDValue Op, SelectionDAG &DAG) const;
  SDValue LowerSELECT(SDValue Op, SelectionDAG &DAG) const;
  SDValue LowerSELECT_CC(SDValue Op, SelectionDAG &DAG) const;
  SDValue LowerConstant(SDValue Op, SelectionDAG &DAG) const;
  SDValue LowerConstantFP(SDValue Op, SelectionDAG &DAG) const;
  SDValue LowerGlobalAddress(SDValue Op, SelectionDAG &DAG) const;
  SDValue LowerFrameIndex(SDValue Op, SelectionDAG &DAG) const;

public:
  virtual bool CanLowerReturn(CallingConv::ID CallConv, MachineFunction &MF,
                              bool isVarArg,
                              const SmallVectorImpl<ISD::OutputArg> &Outs,
                              LLVMContext &Context) const override;

  virtual SDValue LowerReturn(SDValue Chain, CallingConv::ID CallConv,
                              bool isVarArg,
                              const SmallVectorImpl<ISD::OutputArg> &Outs,
                              const SmallVectorImpl<SDValue> &OutVals,
                              const SDLoc &dl,
                              SelectionDAG &DAG) const override;

  virtual SDValue
  LowerFormalArguments(SDValue Chain, CallingConv::ID CallConv, bool isVarArg,
                       const SmallVectorImpl<ISD::InputArg> &Ins,
                       const SDLoc &dl, SelectionDAG &DAG,
                       SmallVectorImpl<SDValue> &InVals) const override;

  virtual SDValue LowerCall(CallLoweringInfo &CLI,
                            SmallVectorImpl<SDValue> &InVals) const override;
};

}

#endif // LLVM_LIB_TARGET_LUAVM_LUAVMISELLOWERING_H