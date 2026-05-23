#include "LuaVMISelLowering.h"
#include "LuaVMInstrInfo.h"
#include "LuaVMTargetMachine.h"
#include "llvm/CodeGen/MachineFrameInfo.h"
#include "llvm/CodeGen/CallingConvLower.h"

using namespace llvm;

LuaVMTargetLowering::LuaVMTargetLowering(const LuaVMTargetMachine &TM,
                                         const LuaVMSubtarget &STI)
    : TargetLowering(TM), Subtarget(STI) {

  const LuaVMRegisterInfo *TRI = TM.getRegisterInfo();

  addRegisterClass(MVT::i1, TRI->getRegClass(LuaVM::GPRRegsRegClassID));
  addRegisterClass(MVT::i16, TRI->getRegClass(LuaVM::GPRRegsRegClassID));
  addRegisterClass(MVT::i32, TRI->getRegClass(LuaVM::GPRRegsRegClassID));
  addRegisterClass(MVT::f64, TRI->getRegClass(LuaVM::FPRRegsRegClassID));

  setOperationAction(ISD::BRCOND, MVT::Other, LegalizeAction::Custom);
  setOperationAction(ISD::SETCC, {MVT::i1, MVT::i32, MVT::f64},
                     LegalizeAction::Custom);
  setOperationAction(ISD::SELECT, {MVT::i32, MVT::f64}, LegalizeAction::Custom);
  setOperationAction(ISD::SELECT_CC, {MVT::i32, MVT::f64},
                     LegalizeAction::Custom);
  setOperationAction(ISD::BR_CC, {MVT::i32, MVT::i1, MVT::i8, MVT::i16},
                     LegalizeAction::Custom);
  setOperationAction(ISD::BR_JT, MVT::Other, LegalizeAction::Custom);
  setOperationAction(ISD::GlobalAddress, MVT::i32, LegalizeAction::Custom);
  setOperationAction(ISD::Constant, {MVT::i32, MVT::i1, MVT::i8, MVT::i16}, LegalizeAction::Custom);
  setOperationAction(ISD::ConstantFP, MVT::f64, LegalizeAction::Custom);
  setOperationAction(ISD::FrameIndex, MVT::i32, LegalizeAction::Custom);

  computeRegisterProperties(TRI);
}

SDValue LuaVMTargetLowering::LowerOperation(SDValue Op, SelectionDAG &DAG) const {
  switch (Op.getOpcode()) {
  default:
    llvm_unreachable("Unimplemented operand");
  case ISD::BR_JT:
    return LowerBR_JT(Op, DAG);
  case ISD::BR_CC:
    return LowerBR_CC(Op, DAG);
  case ISD::SETCC:
    return LowerSETCC(Op, DAG);
  case ISD::SELECT:
    return LowerSELECT(Op, DAG);
  case ISD::SELECT_CC:
    return LowerSELECT_CC(Op, DAG);
  case ISD::BRCOND:
    return LowerBRCOND(Op, DAG);
  case ISD::Constant:
    return LowerConstant(Op, DAG);
  case ISD::ConstantFP:
    return LowerConstantFP(Op, DAG);
  case ISD::GlobalAddress:
    return LowerGlobalAddress(Op, DAG);
  case ISD::FrameIndex:
    return LowerFrameIndex(Op, DAG);
  }
}

SDValue LuaVMTargetLowering::LowerConstant(SDValue Op,
                                           SelectionDAG &DAG) const {
  SDLoc dl(Op);
  unsigned Val = dyn_cast<ConstantSDNode>(Op)->getZExtValue();
  SDValue newVal = DAG.getTargetConstant(Val, dl, MVT::i32);
  return DAG.getNode(LuaVMISD::MOVI, dl, Op.getValueType(), newVal);
}

SDValue LuaVMTargetLowering::LowerConstantFP(SDValue Op,
                                             SelectionDAG &DAG) const {
  SDLoc dl(Op);
  ConstantFPSDNode *cfpNode = dyn_cast<ConstantFPSDNode>(Op);
  const ConstantFP *cfp = cfpNode->getConstantFPValue();
  SDValue cpi = DAG.getTargetConstantPool(cfp, MVT::i32);
  SDValue addr = DAG.getNode(LuaVMISD::MOVI, dl, MVT::i32, cpi);

  return DAG.getLoad(Op.getValueType(), dl, DAG.getEntryNode(), addr,
                     MachinePointerInfo(), MaybeAlign(0),
                     MachineMemOperand::MOLoad);
}

SDValue LuaVMTargetLowering::LowerGlobalAddress(SDValue Op,
                                                SelectionDAG &DAG) const {
  GlobalAddressSDNode *GV = dyn_cast<GlobalAddressSDNode>(Op.getNode());
  SDValue newGV = DAG.getTargetGlobalAddress(GV->getGlobal(), SDLoc(Op),
                                    GV->getValueType(0), GV->getOffset(),
                                    GV->getTargetFlags());
  return DAG.getNode(LuaVMISD::MOVI, SDLoc(Op), MVT::i32, newGV);
}

SDValue LuaVMTargetLowering::LowerFrameIndex(SDValue Op,
                                             SelectionDAG &DAG) const {
  unsigned fi = dyn_cast<FrameIndexSDNode>(Op)->getIndex();
  SDValue FI = DAG.getTargetFrameIndex(fi, MVT::i32);
  return DAG.getNode(LuaVMISD::MOVI, SDLoc(Op), MVT::i32, FI);
}

SDValue LuaVMTargetLowering::LowerBR_JT(SDValue Op, SelectionDAG &DAG) const {
  const SDLoc dl(Op);
  SDValue Chain = Op.getOperand(0);
  SDValue Table = Op.getOperand(1);
  SDValue Index = Op.getOperand(2);

  EVT PTy = MVT::i32;

  unsigned EntrySize = 4;

  if (llvm::isPowerOf2_32(EntrySize))
    Index = DAG.getNode(
        ISD::SHL, dl, Index.getValueType(), Index,
        DAG.getConstant(llvm::Log2_32(EntrySize), dl, Index.getValueType()));
  else
    Index = DAG.getNode(ISD::MUL, dl, Index.getValueType(), Index,
                        DAG.getConstant(EntrySize, dl, Index.getValueType()));
  SDValue Addr = DAG.getNode(ISD::ADD, dl, Index.getValueType(), Index, Table);

  EVT MemVT = PTy;
  SDValue LD =
      DAG.getLoad(MVT::i32, dl, Chain, Addr,
                  MachinePointerInfo::getJumpTable(DAG.getMachineFunction()));
  Addr = LD;
  if (isJumpTableRelative()) {
    Addr = DAG.getNode(ISD::ADD, dl, PTy, Addr,
                       getPICJumpTableRelocBase(Table, DAG));
  }

  return expandIndirectJTBranch(dl, LD.getValue(1), Addr, DAG);
}

SDValue LuaVMTargetLowering::LowerSETCC(SDValue Op, SelectionDAG &DAG) const {
  SDLoc dl(Op);
  SDValue Chain;
  SDValue lhs = Op.getOperand(0);
  SDValue rhs = Op.getOperand(1);
  SDValue CC = Op.getOperand(2);

  assert(dyn_cast<CondCodeSDNode>(CC));
  ISD::CondCode cc = dyn_cast<CondCodeSDNode>(CC)->get();

  bool bFloat = lhs.getValueType().isFloatingPoint();
  bool bUnsigned =
      !bFloat && (cc >= ISD::CondCode::SETUEQ && cc <= ISD::CondCode::SETUNE);

  LuaVMISD::NodeType opCode = LuaVMISD::CMP;

  if (bUnsigned) {
    opCode = LuaVMISD::CMPU;
  } else if (bFloat) {
    opCode = LuaVMISD::DCMP;
  }

  SDValue cmp = DAG.getNode(opCode, dl, MVT::Glue, {lhs, rhs});

  switch (cc) {
  case ISD::SETEQ:
  case ISD::SETUEQ:
    cc = ISD::SETEQ;
    break;
  case ISD::SETGT:
  case ISD::SETUGT:
    cc = ISD::SETGT;
    break;
  case ISD::SETGE:
  case ISD::SETUGE:
    cc = ISD::SETGE;
    break;
  case ISD::SETLT:
  case ISD::SETULT:
    cc = ISD::SETLT;
    break;
  case ISD::SETLE:
  case ISD::SETULE:
    cc = ISD::SETLE;
    break;
  case ISD::SETNE:
  case ISD::SETUNE:
    cc = ISD::SETNE;
    break;
  default:
    llvm_unreachable("");
    break;
  }

  CC = DAG.getCondCode(cc);

  SDVTList VTs = DAG.getVTList(MVT::i1, MVT::Other);

  SDValue select =
      DAG.getNode(LuaVMISD::Select, dl, VTs,
                  {Chain, CC, DAG.getRegister(LuaVM::PDC0, MVT::i1),
                   DAG.getRegister(LuaVM::PDC1, MVT::i1), cmp});
  return select;
}

SDValue LuaVMTargetLowering::LowerBRCOND(SDValue Op, SelectionDAG &DAG) const {
  const SDLoc dl(Op);
  SDValue chain = Op.getOperand(0);
  SDValue cc = Op.getOperand(1);
  SDValue block = Op.getOperand(2);

  SDValue cmp =
      DAG.getNode(LuaVMISD::CMPU, dl, MVT::Glue, {cc, DAG.getTargetConstant(0, dl, MVT::i32)});

  SDValue CC = DAG.getCondCode(ISD::SETNE);
  SDValue jCond =
      DAG.getNode(LuaVMISD::JCond, dl, MVT::Other, {chain, CC, block, cmp});

  return jCond;
}

SDValue LuaVMTargetLowering::LowerSELECT(SDValue Op, SelectionDAG &DAG) const {
  const SDLoc dl(Op);
  SDValue cc = Op.getOperand(0);
  SDValue src0 = Op.getOperand(1);
  SDValue src1 = Op.getOperand(2);

  SDValue cmp = DAG.getNode(LuaVMISD::CMPU, dl, MVT::Glue,
                            {cc, DAG.getTargetConstant(0, dl, MVT::i32)});

  SDValue CC = DAG.getCondCode(ISD::SETNE);
  SDValue select = DAG.getNode(LuaVMISD::Select, dl, Op.getValueType(),
                               {SDValue(), CC, src0, src1, cmp});
  return select;
}

SDValue LuaVMTargetLowering::LowerSELECT_CC(SDValue Op,
                                            SelectionDAG &DAG) const {
  const SDLoc dl(Op);
  SDValue chain;
  SDValue lhs = Op.getOperand(0);
  SDValue rhs = Op.getOperand(1);
  SDValue src0 = Op.getOperand(2);
  SDValue src1 = Op.getOperand(3);
  SDValue CC = Op.getOperand(4);

  assert(dyn_cast<CondCodeSDNode>(CC));
  ISD::CondCode cc = dyn_cast<CondCodeSDNode>(CC)->get();

  bool bFloat = lhs.getValueType().isFloatingPoint();
  bool bUnsigned =
      !bFloat && (cc >= ISD::CondCode::SETUEQ && cc <= ISD::CondCode::SETUNE);

  LuaVMISD::NodeType opCode = LuaVMISD::CMP;

  if (bUnsigned) {
    opCode = LuaVMISD::CMPU;
  } else if (bFloat) {
    opCode = LuaVMISD::DCMP;
  }

  SDValue cmp = DAG.getNode(opCode, dl, MVT::Glue, {lhs, rhs});

  switch (cc) {
  case ISD::SETEQ:
  case ISD::SETUEQ:
    cc = ISD::SETEQ;
    break;
  case ISD::SETGT:
  case ISD::SETUGT:
    cc = ISD::SETGT;
    break;
  case ISD::SETGE:
  case ISD::SETUGE:
    cc = ISD::SETGE;
    break;
  case ISD::SETLT:
  case ISD::SETULT:
    cc = ISD::SETLT;
    break;
  case ISD::SETLE:
  case ISD::SETULE:
    cc = ISD::SETLE;
    break;
  case ISD::SETNE:
  case ISD::SETUNE:
    cc = ISD::SETNE;
    break;
  default:
    llvm_unreachable("");
    break;
  }

  CC = DAG.getCondCode(cc);
  SDValue select =
      DAG.getNode(LuaVMISD::Select, dl, MVT::Other, {chain, CC, src0, src1, cmp});

  return select;
}

SDValue LuaVMTargetLowering::LowerBR_CC(SDValue Op, SelectionDAG &DAG) const {
  const SDLoc dl(Op);
  SDValue chain = Op.getOperand(0);
  SDValue CC = Op.getOperand(1);
  SDValue lhs = Op.getOperand(2);
  SDValue rhs = Op.getOperand(3);
  SDValue block = Op.getOperand(4);

  assert(dyn_cast<CondCodeSDNode>(CC));
  ISD::CondCode cc = dyn_cast<CondCodeSDNode>(CC)->get();

  bool bFloat = lhs.getValueType().isFloatingPoint();
  bool bUnsigned =
      !bFloat && (cc >= ISD::CondCode::SETUEQ && cc <= ISD::CondCode::SETUNE);

  LuaVMISD::NodeType opCode = LuaVMISD::CMP;

  if (bUnsigned) {
    opCode = LuaVMISD::CMPU;
  } else if (bFloat) {
    opCode = LuaVMISD::DCMP;
  }

  SDValue cmp = DAG.getNode(opCode, dl, MVT::Glue, {lhs, rhs});

  switch (cc) {
  case ISD::SETEQ:
  case ISD::SETUEQ:
    cc = ISD::SETEQ;
    break;
  case ISD::SETGT:
  case ISD::SETUGT:
    cc = ISD::SETGT;
    break;
  case ISD::SETGE:
  case ISD::SETUGE:
    cc = ISD::SETGE;
    break;
  case ISD::SETLT:
  case ISD::SETULT:
    cc = ISD::SETLT;
    break;
  case ISD::SETLE:
  case ISD::SETULE:
    cc = ISD::SETLE;
    break;
  case ISD::SETNE:
  case ISD::SETUNE:
    cc = ISD::SETNE;
    break;
  default:
    llvm_unreachable("");
    break;
  }

  CC = DAG.getCondCode(cc);
  SDValue jCond =
      DAG.getNode(LuaVMISD::JCond, dl, MVT::Other, {chain, CC, block, cmp});

  return jCond;
}

bool LuaVMTargetLowering::CanLowerReturn(
    CallingConv::ID CallConv, MachineFunction &MF, bool isVarArg,
    const SmallVectorImpl<ISD::OutputArg> &Outs, LLVMContext &Context) const {
  return true;
}

#include "LuaVMGenCallingConv.inc"

SDValue
LuaVMTargetLowering::LowerReturn(SDValue Chain, CallingConv::ID CallConv,
                                 bool isVarArg,
                                 const SmallVectorImpl<ISD::OutputArg> &Outs,
                                 const SmallVectorImpl<SDValue> &OutVals,
                                 const SDLoc &dl, SelectionDAG &DAG) const {
  int LAO = Subtarget.getFrameLowering()->getOffsetOfLocalArea();
  MachineFunction &MF = DAG.getMachineFunction();
  MachineFrameInfo &MFI = MF.getFrameInfo();
  
  SmallVector<CCValAssign> Locs;
  CCState State(CallConv, false, MF, Locs, *DAG.getContext());

  for (unsigned i = 0; i < Outs.size(); ++i) {
    if (LuaVMCC(i, Outs[i].VT, Outs[i].VT, CCValAssign::Full, Outs[i].Flags, State)) {
      llvm_unreachable("Cann't assign arg");
    }
  }

  SDValue Glue;
  SmallVector<SDValue> RegPass;
  for (auto &loc : Locs) {
    SDValue Val = OutVals[loc.getValNo()];
    if (loc.isRegLoc()) {
      Chain = DAG.getCopyToReg(Chain, dl, loc.getLocReg(), Val, Glue);
      Glue = Chain.getValue(1);
      RegPass.push_back(DAG.getRegister(loc.getLocReg(), loc.getLocVT()));
    } else {
      int FI = MFI.CreateFixedObject(loc.getLocVT() == MVT::f64 ? 8 : 4,
                                     loc.getLocMemOffset() + LAO, false);
      SDValue Addr = DAG.getFrameIndex(FI, MVT::i32);
      Chain = DAG.getStore(Chain, dl, Val, Addr, MachinePointerInfo());
    }
  }

  SmallVector<SDValue> Ops;
  Ops.push_back(Chain);
  Ops.append(RegPass);
  if (Glue)
    Ops.push_back(Glue);

  return DAG.getNode(LuaVMISD::RET, dl, MVT::Other, Ops);
}

SDValue LuaVMTargetLowering::LowerFormalArguments(
    SDValue Chain, CallingConv::ID CallConv, bool isVarArg,
    const SmallVectorImpl<ISD::InputArg> &Ins, const SDLoc &dl,
    SelectionDAG &DAG, SmallVectorImpl<SDValue> &InVals) const {
  MachineFunction &MF = DAG.getMachineFunction();
  MachineRegisterInfo &MRI = MF.getRegInfo();

  SmallVector<CCValAssign> Locs;
  CCState State(CallConv, isVarArg, MF, Locs, *DAG.getContext(), true);

  for (unsigned i = 0; i < Ins.size(); ++i) {
    if (LuaVMCC(i, Ins[i].VT, Ins[i].VT, CCValAssign::Full, Ins[i].Flags,
                State)) {
      llvm_unreachable("Cann't assign arg");
    }
  }

  for (auto &loc : Locs) {
    MVT VT = loc.getLocVT();
    SDValue Arg;
    if (loc.isRegLoc()) {
      unsigned Reg = MRI.createVirtualRegister(getRegClassFor(VT));
      Arg = DAG.getCopyFromReg(Chain, dl, Reg, VT);
      MRI.addLiveIn(loc.getLocReg(), Reg);
    } else {
      SDValue FP = DAG.getRegister(LuaVM::FP, MVT::i32);
      SDValue Off = DAG.getConstant(loc.getLocMemOffset(), dl, MVT::i32);
      SDValue Addr = DAG.getNode(ISD::ADD, dl, MVT::i32, FP, Off);
      Arg = DAG.getLoad(VT, dl, Chain, Addr, MachinePointerInfo());
    }
    Chain = Arg.getValue(1);
    InVals.push_back(Arg);
  }
  return Chain;
}

SDValue LuaVMTargetLowering::LowerCall(CallLoweringInfo &CLI,
                                       SmallVectorImpl<SDValue> &InVals) const {
  SelectionDAG &DAG = CLI.DAG;
  SDLoc dl = CLI.DL;
  SDValue Chain = CLI.Chain, Glue;
  SDValue Callee = CLI.Callee;
  const LuaVMRegisterInfo *TRI = Subtarget.getRegisterInfo();

  MachineFunction &MF = DAG.getMachineFunction();
  SmallVector<CCValAssign> Locs;
  CCState State(CLI.CallConv, CLI.IsVarArg, MF, Locs, *DAG.getContext(), true);

  for (size_t i = 0; i < CLI.Outs.size(); i++) {
    if (LuaVMCC(i, CLI.Outs[i].VT, CLI.Outs[i].VT, CCValAssign::Full,
                CLI.Outs[i].Flags, State)) {
      llvm_unreachable("Cann't assign arg");
    }
  }

  unsigned StackBytes = State.getStackSize();

  Chain = DAG.getCALLSEQ_START(Chain, StackBytes, 0, dl);
  Glue = Chain.getValue(1);
  SDValue MemChain = Chain;
  SmallVector<SDValue> RegPass;
  for (auto &loc : Locs) {
    MVT VT = loc.getLocVT();
    if (loc.isRegLoc()) {
      Chain = DAG.getCopyToReg(Chain, dl, loc.getLocReg(),
                               CLI.OutVals[loc.getValNo()], Glue);
      Glue = Chain.getValue(1);
      RegPass.push_back(DAG.getRegister(loc.getLocReg(), VT));
    } else {
      SDValue SP = DAG.getRegister(LuaVM::SP, MVT::i32);
      SDValue Off = DAG.getConstant(loc.getLocMemOffset(), dl, MVT::i32);
      SDValue Addr = DAG.getNode(ISD::ADD, dl, MVT::i32, SP, Off);
      Chain = DAG.getStore(Chain, dl, CLI.OutVals[loc.getValNo()], Addr,
                              MachinePointerInfo());
    }
  }

  SmallVector<SDValue> Ops;
  Ops.push_back(Chain);
  Ops.push_back(Callee);
  Ops.append(RegPass);

  SDValue RegMsk = DAG.getRegisterMask(TRI->getCallPreservedMask(MF, CLI.CallConv));
  Ops.push_back(RegMsk);

  if (Glue)
    Ops.push_back(Glue);

  Chain = DAG.getNode(LuaVMISD::CALL, dl, {MVT::Other, MVT::Glue}, Ops);
  Glue = Chain.getValue(1);
  unsigned LAO = Subtarget.getFrameLowering()->getOffsetOfLocalArea();
  Locs.clear();
  CCState RetState(CLI.CallConv, false, MF, Locs, *DAG.getContext(), false);

  for (size_t i = 0; i < CLI.Ins.size(); i++) {
    if (LuaVMCC(i, CLI.Ins[i].VT, CLI.Ins[i].VT, CCValAssign::Full,
                CLI.Ins[i].Flags, RetState)) {
      llvm_unreachable("Cann't assign arg");
    }
  }

  for (auto &loc : Locs) {
    MVT VT = loc.getLocVT();
    SDValue RetVal;
    if (loc.isRegLoc()) {
      RetVal = DAG.getCopyFromReg(Chain, dl, loc.getLocReg(), VT, Glue);
      Glue = RetVal.getValue(2);
    } else {
      SDValue SPFinal = DAG.getRegister(LuaVM::SP, MVT::i32);
      SDValue RetOff = DAG.getConstant(loc.getLocMemOffset() + LAO, dl, MVT::i32);
      SDValue RetAddr = DAG.getNode(ISD::ADD, dl, MVT::i32, SPFinal, RetOff);
      RetVal = DAG.getLoad(VT, dl, Chain, RetAddr, MachinePointerInfo());
    }
    Chain = RetVal.getValue(1);
    InVals.push_back(RetVal);
  }

  Chain = DAG.getCALLSEQ_END(Chain, StackBytes, 0, Glue, dl);

  return Chain;
}

const char *LuaVMTargetLowering::getTargetNodeName(unsigned Opcode) const {
  switch ((LuaVMISD::NodeType)Opcode) {
  case LuaVMISD::CALL:
    return "Call";
  case LuaVMISD::RET:
    return "Ret";
  case LuaVMISD::CMP:
    return "Cmp";
  case LuaVMISD::CMPU:
    return "Cmpu";
  case LuaVMISD::DCMP:
    return "DCmp";
  case LuaVMISD::JCond:
    return "JCond";
  case LuaVMISD::Select:
    return "Select";
  case LuaVMISD::MOVI:
    return "MOVI";
  default:
    return nullptr;
  }
}