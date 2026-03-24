//===- LuaVMInstrInfo.td - LuaVM Instruction Set Desc. ----------*- tablegen -*-===//
// This file describes the LuaVM instructions for the TableGen backend.
// It defines opcodes, operands, encoding, and selection patterns.
//===----------------------------------------------------------------------===//

//===----------------------------------------------------------------------===//
// Instruction Formats
// Define the basic instruction layouts (R, I, J types).
//===----------------------------------------------------------------------===//

def LuaVMCMPNodeSDT  : SDTypeProfile<0, 2, []>;
def LuaVMCMPNode : SDNode <"LuaVM::CMP", LuaVMCMPNodeSDT, [SDNPOutGlue]>;

def LuaVMBrCondNodeSDT  : SDTypeProfile<0, 1, [SDTCisInt<0>]>;
def LuaVMBrCondNode : SDNode <"LuaVM::BrCond", LuaVMBrCondNodeSDT, [SDNPInGlue]>;

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

class Inst<string asmstr, list<dag> pattern> : Instruction {
  bits<32> Inst;
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

let Defs = [STR] in {
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
}

def ADDD : FTypeInst<0b01100000, "addd $fd, $fs, $ft", []>;
def SUBD : FTypeInst<0b01100001, "subd $fd, $fs, $ft", []>;
def MULD : FTypeInst<0b01100010, "muld $fd, $fs, $ft", []>;
def DIVD : FTypeInst<0b01100011, "divd $fd, $fs, $ft", []>;

let Defs = [STR] in {
  def CMPD : FTypeInst<0b01100111, "cmpd $fd, $fs, $ft", []>{
    let isMoveReg = isCompare;
  }
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
  let Uses = [STR] in {
    def JEQ : JTypeInst<0b10000000, "jeq $addr", []>;
    def JNE : JTypeInst<0b10000001, "jne $addr", []>;
    def JLT : JTypeInst<0b10000010, "jlt $addr", []>;
    def JGT : JTypeInst<0b10000011, "jgt $addr", []>;
    def JLE : JTypeInst<0b10000100, "jle $addr", []>;
    def JGE : JTypeInst<0b10000101, "jge $addr", []>;
    def JMP : JTypeInst<0b10000110, "jmp $addr", []>;
  }

  let isCall = 1 in {
    def JALR : ITypeInst<0b10000111, "jalr $rt", []>;
    def JSUB : ITypeInst<0b10001000, "jusb $imm", []>;
  }
}

let isReturn = 1 in {
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

