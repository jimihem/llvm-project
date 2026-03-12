//===- LuaVMInstrInfo.td - LuaVM Instruction Set Desc. ----------*- tablegen -*-===//
// This file describes the LuaVM instructions for the TableGen backend.
// It defines opcodes, operands, encoding, and selection patterns.
//===----------------------------------------------------------------------===//

#include "LuaVMRegisterInfo.td"
include "llvm/Target/TargetSelectionDAG.td"
include "llvm/Target/Target.td"

//===----------------------------------------------------------------------===//
// Instruction Formats
// Define the basic instruction layouts (R, I, J types).
//===----------------------------------------------------------------------===//

class Inst<string asmstr, SDPatternOperator opc, list<dag> pattern> : Instruction {
  field bits<32> Inst;
  let Namespace = "LuaVM";
  let AsmString = asmstr;
  let Pattern = pattern;
  dag OutOperandList = (outs);
  dag InOperandList = (ins);
  let DecoderNamespace = "LuaVM";
}

class RTypeInst<bits<6> op, string asmstr, SDPatternOperator opc, list<dag> pattern> : Inst<asmstr, opc, pattern> {
  bits<5> rs;
  bits<5> rt;
  bits<5> rd;
  bits<5> shamt;
  bits<6> funct;
  let Inst{31-26} = op;
  let Inst{25-21} = rs;
  let Inst{20-16} = rt;
  let Inst{15-11} = rd;
  let Inst{10-6} = shamt;
  let Inst{5-0} = funct;
  let DecoderMethod = "DecodeRTypeInstruction";
}

class ITypeInst<bits<6> op, string asmstr, SDPatternOperator opc, list<dag> pattern> : Inst<asmstr, opc, pattern> {
  bits<5> rs;
  bits<5> rt;
  bits<16> imm;
  let Inst{31-26} = op;
  let Inst{25-21} = rs;
  let Inst{20-16} = rt;
  let Inst{15-0} = imm;
  let DecoderMethod = "DecodeITypeInstruction";
}

class JTypeInst<bits<6> op, string asmstr, SDPatternOperator opc, list<dag> pattern> : Inst<asmstr, opc, pattern> {
  bits<26> addr;
  let Inst{31-26} = op;
  let Inst{25-0} = addr;
  let DecoderMethod = "DecodeJTypeInstruction";
}

//===----------------------------------------------------------------------===//
// Machine Instruction Definitions
// These map to your enum luavm_opcodes.
// The 'opc' field links to a SelectionDAG operator (for lowering).
// The 'pattern' field is for DAG selection.
//===----------------------------------------------------------------------===//

// Arithmetic and Logical Instructions
def ADDu : RTypeInst<0, "addu $rd, $rs, $rt", i32_add, [(set GPR:$rd, (add GPR:$rs, GPR:$rt))]>, IsaDWord;
def SUBu : RTypeInst<0, "subu $rd, $rs, $rt", i32_sub, [(set GPR:$rd, (sub GPR:$rs, GPR:$rt))]>, IsaDWord;
def AND : RTypeInst<0, "and $rd, $rs, $rt", and, [(set GPR:$rd, (and GPR:$rs, GPR:$rt))]>, IsaDWord;
def OR : RTypeInst<0, "or $rd, $rs, $rt", or, [(set GPR:$rd, (or GPR:$rs, GPR:$rt))]>, IsaDWord;
def XOR : RTypeInst<0, "xor $rd, $rs, $rt", xor, [(set GPR:$rd, (xor GPR:$rs, GPR:$rt))]>, IsaDWord;
def SLL : RTypeInst<0, "sll $rd, $rt, $shamt", shl, [(set GPR:$rd, (shl GPR:$rt, (uimm:$shamt))]>, IsaDWord;
def SRL : RTypeInst<0, "srl $rd, $rt, $shamt", shr, [(set GPR:$rd, (srl GPR:$rt, (uimm:$shamt))]>, IsaDWord;

// Immediate Instructions
def ADDiu : ITypeInst<9, "addiu $rt, $rs, $imm", i32_add, [(set GPR:$rt, (add GPR:$rs, simm16:$imm))]>;
def ANDi : ITypeInst<12, "andi $rt, $rs, $imm", and, [(set GPR:$rt, (and GPR:$rs, uimm16:$imm))]>;
def ORi : ITypeInst<13, "ori $rt, $rs, $imm", or, [(set GPR:$rt, (or GPR:$rs, uimm16:$imm))]>;
def XORi : ITypeInst<14, "xori $rt, $rs, $imm", xor, [(set GPR:$rt, (xor GPR:$rs, uimm16:$imm))]>;

// Load/Store Instructions
def LD : ITypeInst<35, "ld $rt, $imm($rs)", load, [(set GPR:$rt, (load GPR:$rs, simm16:$imm))]>;
def SD : ITypeInst<43, "sd $rt, $imm($rs)", store, [(store GPR:$rt, (add GPR:$rs, simm16:$imm))]>;

// Branch Instructions
def BEQ : ITypeInst<4, "beq $rs, $rt, $imm", brcond, []>; // Complex lowering required
def BNE : ITypeInst<5, "bne $rs, $rt, $imm", brcond, []>; // Complex lowering required

// Jump Instructions
def J : JTypeInst<2, "j $addr", br, []>; // Complex lowering required
def JR : RTypeInst<0, "jr $rs", brind, []>; // Complex lowering required

// System/Other Instructions
def NOP : RTypeInst<0, "nop", "noop", []>, IsaDWord;

//===----------------------------------------------------------------------===//
// Pseudo Instructions
// These are expanded by the compiler before final emission.
// For example, a move instruction might be an ADD with one operand as zero.
//===----------------------------------------------------------------------===//

def MOV : Pseudo<(outs GPR:$dst), (ins GPR:$src), [(set GPR:$dst, GPR:$src)], [(ADDu GPR:$dst, GPR:$zero, GPR:$src)]>;

//===----------------------------------------------------------------------===//
// Assembler/Parsing Patterns
// Define how the assembler should parse the instruction syntax.
// This uses the AsmParser and AsmMatcher mechanisms.
// The AsmString and Operands are crucial here.
// The InstAlias mechanism allows defining alternative mnemonics or expansions.
//===----------------------------------------------------------------------===//

// An alias can be useful. For example, 'move $d, $s' can be an alias for 'addu $d, $s, $zero'.
def : InstAlias<"move $dst, $src", (ADDu GPR:$dst, GPR:$src, GPR:$zero)>;

//===----------------------------------------------------------------------===//
// Subtarget Features
// Define features like specific instruction sets (e.g., FPU, SIMD).
// For now, we assume a base DWord (double-word, 32-bit) ISA.
//===----------------------------------------------------------------------===//

def IsaDWord : SubtargetFeature<"dword", "HasDWord", "true", "Double-Word Instructions">;