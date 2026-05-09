//===- LuaVMInstrInfo.td - LuaVM Instruction Set Desc. ----------*- tablegen -*-===//
// This file describes the LuaVM instructions for the TableGen backend.
// It defines opcodes, operands, encoding, and selection patterns.
//===----------------------------------------------------------------------===//

//===----------------------------------------------------------------------===//
// Instruction Formats
// Define the basic instruction layouts (R, I, J types).
//===----------------------------------------------------------------------===//

def CMPNodeSDT  : SDTypeProfile<0, 2, [SDTCisInt<0>, SDTCisInt<1>]>;
def Cmp : SDNode <"LuaVMISD::CMP", CMPNodeSDT, [SDNPOutGlue]>;
def Cmpu : SDNode <"LuaVMISD::CMPU", CMPNodeSDT, [SDNPOutGlue]>;

def DCMPNodeSDT  : SDTypeProfile<0, 2, [SDTCisVT<0, f64>, SDTCisVT<0, f64>]>;
def DCmp : SDNode <"LuaVMISD::DCMP", DCMPNodeSDT, [SDNPOutGlue]>;

def Call : SDNode<"LuaVMISD::CALL",
                   SDTypeProfile<0, -1, []>, // 0 output, variable inputs
                   [SDNPHasChain,    // Requires a chain for ordering
                    SDNPInGlue,     // Provides a glue token to connect with ret
                    SDNPOutGlue,
                    SDNPMayLoad,     // May read from memory
                    SDNPMayStore,
                    SDNPVariadic]>;  // May write to memory

def Ret : SDNode<"LuaVMISD::RET",
                     SDTypeProfile<0, -1, []>, // 0 output, variable inputs (return value)
                     [SDNPHasChain,      // Requires a chain for ordering
                      SDNPInGlue,        // Takes glue token from call
                      SDNPVariadic,
                     ]>;

def SDTLuaVMSelect : SDTypeProfile<1, 3, 
                     [SDTCisVT<1, OtherVT>, SDTCisSameAs<0, 2>, SDTCisSameAs<0, 3>]>;

def Select : SDNode<"LuaVMISD::Select", SDTLuaVMSelect, [SDNPHasChain, SDNPInGlue]>;

def SDTJCond : SDTypeProfile<0, 2, 
                     [SDTCisVT<0, OtherVT>, SDTCisVT<1, OtherVT>]>;
def JCond : SDNode<"LuaVMISD::JCond", SDTJCond, [SDNPHasChain, SDNPInGlue]>;

// Target-independent nodes, but with target-specific formats.

// Target-independent type requirements, but with target-specific formats.
def SDT_CallSeqStart : SDCallSeqStart<[SDTCisVT<0, i32>,
                                       SDTCisVT<1, i32>]>;
def SDT_CallSeqEnd   : SDCallSeqEnd<[SDTCisVT<0, i32>,
                                     SDTCisVT<1, i32>]>;

def callseq_start : SDNode<"ISD::CALLSEQ_START", SDT_CallSeqStart,
                           [SDNPHasChain, SDNPOutGlue]>;
def callseq_end   : SDNode<"ISD::CALLSEQ_END", SDT_CallSeqEnd,
                           [SDNPHasChain, SDNPOptInGlue, SDNPOutGlue]>;

def Movi : SDNode<"LuaVMISD::MOVI", SDTypeProfile<1, 1, [SDTCisVT<0, i32>, SDTCisVT<0, i32>]>, []>;

def imm14 : Operand<i32>{
  string PrintMethod = "printImm14Operand";
  string EncoderMethod = "getImm14OpValue";
  string OperandType = "OPERAND_IMMEDIATE";
}

def Addr24 : Operand<OtherVT>{
  string PrintMethod = "printAddr24Operand";
  string EncoderMethod = "getAddr24OpValue";
  string OperandType = "OPERAND_IMMEDIATE";
}

def Cond : Operand<i32>{
  string PrintMethod = "printCondOperand";
  string EncoderMethod = "getCondOpValue";
  string OperandType = "OPERAND_IMMEDIATE";
}

def imm12uFrag : PatFrag<(ops), (imm), [{
  if(Node->getOpcode() == ISD::TargetConstant || Node->getOpcode() == ISD::Constant){
    uint64_t imm = dyn_cast<ConstantSDNode>(Node)->getZExtValue();
    if(imm >= 1 << 12)
      return false;
    else
      return true;
  }
  return false;
}]>;

def imm12iFrag : PatFrag<(ops), (imm), [{
  if(Node->getOpcode() == ISD::TargetConstant || Node->getOpcode() == ISD::Constant){
    int64_t imm = dyn_cast<ConstantSDNode>(Node)->getSExtValue();
    if(imm > ((1 << 12) - 1) || imm < -(1 << 12))
      return false;
    else
      return true;
  }
  return false;
}]>;

def IndirectCallFrag : PatFrag<(ops node:$src), (Call node:$src), [{
  return Node->getOperand(1)->getOpcode() != ISD::TargetGlobalAddress;
}]>;

def LoadStoreAddr : ComplexPattern<i32, 2, "SelectLSAddr">;

class Inst<string asmstr, list<dag> pattern> : Instruction {
  bits<32> Inst;
  let Namespace = "LuaVM";
  let AsmString = asmstr;
  let Pattern = pattern;
  let DecoderNamespace = "LuaVM";
  let OutOperandList = (outs);
  let InOperandList = (ins);
}

class LInst<string asmstr, list<dag> pattern> : Instruction {
  bits<64> Inst;
  let Namespace = "LuaVM";
  let AsmString = asmstr;
  let Pattern = pattern;
  let DecoderNamespace = "LuaVM";
  let OutOperandList = (outs);
  let InOperandList = (ins);
}

class RTypeInst<bits<8> op, string asmstr, list<dag> pattern> : Inst<asmstr, pattern> {
  bits<5> rs;
  bits<5> rt;
  bits<5> rd;
  let Inst{31-24} = op;
  let Inst{23-19} = rs;
  let Inst{18-14} = rt;
  let Inst{13-9} = rd;
  let Inst{8-0} = 0;
  let DecoderMethod = "DecodeRTypeInstruction";
  let OutOperandList = (outs GPRRegs:$rd);
  let InOperandList = (ins GPRRegs:$rs, GPRRegs:$rt);
}

class ITypeInst<bits<8> op, string asmstr, list<dag> pattern> : Inst<asmstr, pattern> {
  bits<5> rs;
  bits<5> rt;
  bits<14> imm;
  let Inst{31-24} = op;
  let Inst{23-19} = rs;
  let Inst{18-14} = rt;
  let Inst{13-0} = imm;
  let DecoderMethod = "DecodeITypeInstruction";
  let OutOperandList = (outs GPRRegs:$rt);
  let InOperandList = (ins GPRRegs:$rs, imm14:$imm);
}

class LITypeInst<bits<8> op, string asmstr, list<dag> pattern> : LInst<asmstr, pattern> {
  bits<5> rt;
  bits<51> imm;
  let Inst{63-56} = op;
  let Inst{55-51} = rt;
  let Inst{50-0} = imm;
  let DecoderMethod = "DecodeLITypeInstruction";
  let OutOperandList = (outs GPRRegs:$rt);
  let InOperandList = (ins i32imm:$imm);
}

class JTypeInst<bits<8> op, string asmstr, list<dag> pattern> : Inst<asmstr, pattern> {
  bits<24> addr;
  let Inst{31-24} = op;
  let Inst{23-0} = addr;
  let DecoderMethod = "DecodeJTypeInstruction";
  let InOperandList = (ins Addr24:$addr);
}

class FTypeInst<bits<8> op, string asmstr, list<dag> pattern> : Inst<asmstr, pattern> {
  bits<5>  fd;
  bits<5>  ft;
  bits<5>  fs;
  let Inst{31-24} = op;
  let Inst{23-19} = fs;
  let Inst{18-14} = ft;
  let Inst{13-9} = fd;
  let Inst{8-0} = 0;
  let DecoderMethod = "DecodeFTypeInstruction";
  let OutOperandList = (outs FPRRegs:$fd);
  let InOperandList = (ins FPRRegs:$fs, FPRRegs:$ft);
}

class MTypeInst<bits<8> op, string asmstr, list<dag> pattern> : Inst<asmstr, pattern> {
  bits<14> offset;
  bits<5>  rt;
  bits<5>  base;
  let Inst{31-24} = op;
  let Inst{23-19} = base;
  let Inst{18-14} = rt;
  let Inst{13-0} = offset;
  let DecoderMethod = "DecodeFTypeInstruction";
}

//===----------------------------------------------------------------------===//
// Machine Instruction Definitions
// These map to your enum luavm_opcodes.
// The 'pattern' field is for DAG selection.
//===----------------------------------------------------------------------===//

// Pessimistically assume the stack pointer will be clobbered
let OutOperandList = (outs), Namespace = "LuaVM", isPseudo = 1 in {
    def ADJCALLSTACKDOWN : Instruction{
        let AsmString = "ADJCALLSTACKDOWN $stackSize0, $stackSize1";
        let InOperandList = (ins i32imm:$stackSize0, i32imm:$stackSize1);
        let Pattern = [(callseq_end i32:$stackSize0, i32:$stackSize1)];
    }

    def ADJCALLSTACKUP : Instruction{
        let AsmString = "ADJCALLSTACKUP $stackSize0, $stackSize1";
        let InOperandList = (ins i32imm:$stackSize0, i32imm:$stackSize1);
        let Pattern = [(callseq_start i32:$stackSize0, i32:$stackSize1)];
    }
}

let OutOperandList = (outs), InOperandList = (ins GPRRegs:$rt, GPRRegs:$base, imm14:$offset), mayStore = 1 in {
  def ST : MTypeInst<0b00000010, "st $rt, $base, $offset", []>;
  def SH : MTypeInst<0b00000100, "sh $rt, $base, $offset", []>;
  def SB : MTypeInst<0b00000110, "sb $rt, $base, $offset", []>;
}

let OutOperandList = (outs GPRRegs:$rt), InOperandList = (ins GPRRegs:$base, imm14:$offset),mayLoad = 1 in {
  def LD : MTypeInst<0b00000001, "ld $rt, $base, $offset", []>;
  def LH : MTypeInst<0b00000011, "lh $rt, $base, $offset", []>;
  def LB : MTypeInst<0b00000101, "lb $rt, $base, $offset", []>;
}

def LDD : MTypeInst<0b00000111, "ldd $rt, $base, $offset", []>{
  let OutOperandList = (outs FPRRegs:$rt);
  let InOperandList = (ins GPRRegs:$base, imm14:$offset);
  let mayLoad = 1;
}
def STD : MTypeInst<0b00001000, "std $rt, $base, $offset", []>{
  let OutOperandList = (outs);
  let InOperandList = (ins FPRRegs:$rt, GPRRegs:$base, imm14:$offset);
  let mayStore = 1;
}


  def ADDi : ITypeInst<0b00100000, "addi $rt, $rs, $imm", []>;
  def SUBi : ITypeInst<0b00100001, "subi $rt, $rs, $imm", []>;
  def MULi : ITypeInst<0b00100100, "muli $rt, $rs, $imm", []>;
  def DIVi : ITypeInst<0b00100101, "divi $rt, $rs, $imm", []>;
  def DIViu : ITypeInst<0b00101011, "diviu $rt, $rs, $imm", []>;
  def ANDi : ITypeInst<0b00101100, "andi $rt, $rs, $imm", []>;
  def ORi : ITypeInst<0b00101101, "ori $rt, $rs, $imm", []>;
  def XORi : ITypeInst<0b00101110, "xori $rt, $rs, $imm", []>;
  def NORi : ITypeInst<0b00101111, "nori $rt, $rs, $imm", []>;

  let OutOperandList = (outs), rt = 0 in {
    def CMPi : ITypeInst<0b00110000, "cmpi $rs, $imm", []>;
    def CMPiu : ITypeInst<0b00110001, "cmpu $rs, $imm", []>;
  }

  def SHLi : ITypeInst<0b00110010, "shli $rt, $rs, $imm", []>;
  def SHRi : ITypeInst<0b00110011, "shri $rt, $rs, $imm", []>;
  def SRAi : ITypeInst<0b00110100, "srai $rt, $rs, $imm", []>;

  def ADD : RTypeInst<0b01000001, "add $rd, $rs, $rt", []>;
  def SUB : RTypeInst<0b01000010, "sub $rd, $rs, $rt", []>;
  def MUL : RTypeInst<0b01000101, "mul $rd, $rs, $rt", []>;
  def DIV : RTypeInst<0b01000110, "div $rd, $rs, $rt", []>;
  def DIVu : RTypeInst<0b01001100, "divu $rd, $rs, $rt", []>;
  def AND : RTypeInst<0b01001101, "and $rd, $rs, $rt", []>;
  def OR : RTypeInst<0b01001110, "or $rd, $rs, $rt", []>;
  def XOR : RTypeInst<0b01001111, "xor $rd, $rs, $rt", []>;
  def NOR : RTypeInst<0b01010001, "nor $rd, $rs, $rt", []>;

  let OutOperandList = (outs), rd = 0 in {
    def CMP : RTypeInst<0b01010010, "cmp $rs, $rt", []>;
    def CMPu : RTypeInst<0b01010011, "cmpu $rs, $rt", []>;
  }

  def SHL : RTypeInst<0b01010110, "shl $rd, $rs, $rt", []>;
  def SHR : RTypeInst<0b01010111, "shr $rd, $rs, $rt", []>;
  def SRA : RTypeInst<0b01011000, "sra $rd, $rs, $rt", []>;


def MOVi : LITypeInst<0b00110101, "movi $rt, $imm", []>;

def SELECT : RTypeInst<0b01011001, "sel $rd, $rs, $rt, $cond", []>{
    bits<9> cond;
    let Inst{8-0} = cond;
    let InOperandList = (ins GPRRegs:$rs, GPRRegs:$rt, Cond:$cond);
}

def ADDD : FTypeInst<0b01100000, "addd $fd, $fs, $ft", []>;
def SUBD : FTypeInst<0b01100001, "subd $fd, $fs, $ft", []>;
def MULD : FTypeInst<0b01100010, "muld $fd, $fs, $ft", []>;
def DIVD : FTypeInst<0b01100011, "divd $fd, $fs, $ft", []>;
def SELECTD : FTypeInst<0b01101001, "seld $fd, $fs, $ft, $cond", []>{
    bits<9> cond;
    let Inst{8-0} = cond;
    let InOperandList = (ins FPRRegs:$fs, FPRRegs:$ft, Cond:$cond);
}


  def CMPD : FTypeInst<0b01100111, "cmpd $fd, $fs, $ft", []>{
    let isMoveReg = isCompare;
  }


let ft = 0, InOperandList = (ins FPRRegs:$fs) in {
  def NEGD : FTypeInst<0b01100100, "negd $fd, $fs", []>;
  def ABSD : FTypeInst<0b01100101, "absd $fd, $fs", []>;
  def SQRD : FTypeInst<0b01100110, "sqrd $fd, $fs", []>;
  def MOVD : FTypeInst<0b01101000, "movd $fd, $fs", []>{
    let isMoveReg = 1;
  }
}

let isBranch = 1 in {
  
    def JEQ : JTypeInst<0b10000000, "jeq $addr", []>;
    def JNE : JTypeInst<0b10000001, "jne $addr", []>;
    def JLT : JTypeInst<0b10000010, "jlt $addr", []>;
    def JGT : JTypeInst<0b10000011, "jgt $addr", []>;
    def JLE : JTypeInst<0b10000100, "jle $addr", []>;
    def JGE : JTypeInst<0b10000101, "jge $addr", []>;
    def JMP : JTypeInst<0b10000110, "jmp $addr", []>;
  

  let isCall = 1 ,OutOperandList = (outs), rs = 0 in {
    def JALR : ITypeInst<0b10000111, "jalr $rt", []>{
        let InOperandList = (ins GPRRegs:$rt);
        let imm = 0;
    }

    def JSUB : ITypeInst<0b10001000, "jusb $imm", []>{
        let InOperandList = (ins imm14:$imm);
        let rt = 0;
    }
  }

  let OutOperandList = (outs), rs = 0 in {
    def JIND : ITypeInst<0b10001010, "jind $rt", []>{
        let InOperandList = (ins GPRRegs:$rt);
        let imm = 0;
    }
  }
}

let isReturn = 1, InOperandList = (ins), addr = 0 in {
  def RET : JTypeInst<0b10001001, "ret", []>;
}

def : Pat<(add i32:$src0, imm12uFrag:$src1), (ADDi i32:$src0, i32:$src1)>;
def : Pat<(sub i32:$src0, imm12uFrag:$src1), (SUBi i32:$src0, i32:$src1)>;
def : Pat<(mul i32:$src0, imm12uFrag:$src1), (MULi i32:$src0, i32:$src1)>;
def : Pat<(sdiv i32:$src0, imm12iFrag:$src1), (DIVi i32:$src0, i32:$src1)>;
def : Pat<(udiv i32:$src0, imm12uFrag:$src1), (DIViu i32:$src0, i32:$src1)>;
def : Pat<(and i32:$src0, imm12uFrag:$src1), (ANDi i32:$src0, i32:$src1)>;
def : Pat<(or i32:$src0, imm12uFrag:$src1), (ORi i32:$src0, i32:$src1)>;
def : Pat<(xor i32:$src0, imm12uFrag:$src1), (XORi i32:$src0, i32:$src1)>;
def : Pat<(shl i32:$src0, (i32 imm12uFrag:$src1)), (SHLi i32:$src0, i32:$src1)>;
def : Pat<(srl i32:$src0, (i32 imm12uFrag:$src1)), (SHRi i32:$src0, i32:$src1)>;
def : Pat<(sra i32:$src0, (i32 imm12uFrag:$src1)), (SRAi i32:$src0, i32:$src1)>;

def : Pat<(add i32:$src0, i32:$src1), (ADD i32:$src0, i32:$src1)>;
def : Pat<(sub i32:$src0, i32:$src1), (SUB i32:$src0, i32:$src1)>;
def : Pat<(mul i32:$src0, i32:$src1), (MUL i32:$src0, i32:$src1)>;
def : Pat<(sdiv i32:$src0, i32:$src1), (DIV i32:$src0, i32:$src1)>;
def : Pat<(udiv i32:$src0, i32:$src1), (DIVu i32:$src0, i32:$src1)>;
def : Pat<(and i32:$src0, i32:$src1), (AND i32:$src0, i32:$src1)>;
def : Pat<(or i32:$src0, i32:$src1), (OR i32:$src0, i32:$src1)>;
def : Pat<(xor i32:$src0, i32:$src1), (XOR i32:$src0, i32:$src1)>;
def : Pat<(shl i32:$src0, i32:$src1), (SHL i32:$src0, i32:$src1)>;
def : Pat<(srl i32:$src0, i32:$src1), (SHR i32:$src0, i32:$src1)>;
def : Pat<(sra i32:$src0, i32:$src1), (SRA i32:$src0, i32:$src1)>;

def : Pat<(fadd f64:$src0, f64:$src1), (ADDD f64:$src0, f64:$src1)>;
def : Pat<(fsub f64:$src0, f64:$src1), (SUBD f64:$src0, f64:$src1)>;
def : Pat<(fmul f64:$src0, f64:$src1), (MULD f64:$src0, f64:$src1)>;
def : Pat<(fdiv f64:$src0, f64:$src1), (DIVD f64:$src0, f64:$src1)>;

def : Pat<(fneg f64:$src0), (NEGD f64:$src0)>;
def : Pat<(fabs f64:$src0), (ABSD f64:$src0)>;
def : Pat<(fsqrt f64:$src0), (SQRD f64:$src0)>;

def : Pat<(Ret), (RET)>;
def : Pat<(Call i32:$fun), (JSUB i32:$fun)>;
def : Pat<(IndirectCallFrag i32:$fun), (JALR i32:$fun)>;

def : Pat<(i32 (ld (LoadStoreAddr i32:$base, i32:$off))), (LD i32:$base, i32:$off)>;
def : Pat<(i16 (ld (LoadStoreAddr i32:$base, i32:$off))), (LH i32:$base, i32:$off)>;
def : Pat<(i8 (ld (LoadStoreAddr i32:$base, i32:$off))), (LB i32:$base, i32:$off)>;
def : Pat<(f64 (ld (LoadStoreAddr i32:$base, i32:$off))), (LDD i32:$base, i32:$off)>;

def : Pat<(st i32:$data, (LoadStoreAddr i32:$base, i32:$off)), (ST i32:$data, i32:$base, i32:$off)>;
def : Pat<(st i16:$data, (LoadStoreAddr i32:$base, i32:$off)), (SH i16:$data, i32:$base, i32:$off)>;
def : Pat<(st i8:$data, (LoadStoreAddr i32:$base, i32:$off)), (SB i8:$data, i32:$base, i32:$off)>;
def : Pat<(st f64:$data, (LoadStoreAddr i32:$base, i32:$off)), (STD f64:$data, i32:$base, i32:$off)>;

def : Pat<(Cmp i32:$src0, (i32 imm12uFrag:$src1)), (CMPi i32:$src0, i32:$src1)>;

def : Pat<(Cmpu i32:$src0, (i32 imm12uFrag:$src1)), (CMPiu i32:$src0, i32:$src1)>;

def : Pat<(Cmpu i1:$src0, (i32 0)), (CMPiu i1:$src0, (i32 0))>;

def : Pat<(Cmp i32:$src0, i32:$src1), (CMP i32:$src0, i32:$src1)>;

def : Pat<(Cmpu i32:$src0, i32:$src1), (CMPu i32:$src0, i32:$src1)>;

def : Pat<(DCmp f64:$src0, f64:$src1), (CMPD f64:$src0, f64:$src1)>;

def : Pat<(br OtherVT:$block), (JMP OtherVT:$block)>;

def : Pat<(brind i32:$block), (JIND i32:$block)>;

def : Pat<(JCond SETEQ, OtherVT:$block), (JEQ OtherVT:$block)>;

def : Pat<(JCond SETGT, OtherVT:$block), (JGT OtherVT:$block)>;

def : Pat<(JCond SETGE, OtherVT:$block), (JGE OtherVT:$block)>;

def : Pat<(JCond SETLT, OtherVT:$block), (JLT OtherVT:$block)>;

def : Pat<(JCond SETLE, OtherVT:$block), (JLE OtherVT:$block)>;

def : Pat<(JCond SETNE, OtherVT:$block), (JNE OtherVT:$block)>;

def : Pat<(Select SETEQ, f64:$src0, f64:$src1), (SELECTD f64:$src0, f64:$src1, 0)>;

def : Pat<(Select SETLT, f64:$src0, f64:$src1), (SELECTD f64:$src0, f64:$src1, 1)>;

def : Pat<(Select SETLE, f64:$src0, f64:$src1), (SELECTD f64:$src0, f64:$src1, 2)>;

def : Pat<(Select SETGT, f64:$src0, f64:$src1), (SELECTD f64:$src0, f64:$src1, 3)>;

def : Pat<(Select SETGE, f64:$src0, f64:$src1), (SELECTD f64:$src0, f64:$src1, 4)>;

def : Pat<(Select SETNE, f64:$src0, f64:$src1), (SELECTD f64:$src0, f64:$src1, 5)>;

def : Pat<(Select SETEQ, i32:$src0, i32:$src1), (SELECT i32:$src0, i32:$src1, 0)>;

def : Pat<(Select SETLT, i32:$src0, i32:$src1), (SELECT i32:$src0, i32:$src1, 1)>;

def : Pat<(Select SETLE, i32:$src0, i32:$src1), (SELECT i32:$src0, i32:$src1, 2)>;

def : Pat<(Select SETGT, i32:$src0, i32:$src1), (SELECT i32:$src0, i32:$src1, 3)>;

def : Pat<(Select SETGE, i32:$src0, i32:$src1), (SELECT i32:$src0, i32:$src1, 4)>;

def : Pat<(Select SETNE, i32:$src0, i32:$src1), (SELECT i32:$src0, i32:$src1, 5)>;

def : Pat<(Select SETEQ, i1:$src0, i1:$src1), (SELECT i1:$src0, i1:$src1, 0)>;

def : Pat<(Select SETLT, i1:$src0, i1:$src1), (SELECT i1:$src0, i1:$src1, 1)>;

def : Pat<(Select SETLE, i1:$src0, i1:$src1), (SELECT i1:$src0, i1:$src1, 2)>;

def : Pat<(Select SETGT, i1:$src0, i1:$src1), (SELECT i1:$src0, i1:$src1, 3)>;

def : Pat<(Select SETGE, i1:$src0, i1:$src1), (SELECT i1:$src0, i1:$src1, 4)>;

def : Pat<(Select SETNE, i1:$src0, i1:$src1), (SELECT i1:$src0, i1:$src1, 5)>;

def : Pat<(Movi i32:$imm), (MOVi i32:$imm)>;
