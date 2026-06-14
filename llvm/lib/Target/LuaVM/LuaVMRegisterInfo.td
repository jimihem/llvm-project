//===- LuaVMRegisterInfo.td - LuaVM Register Info Definition ----*- tablegen -*-===//
// This file describes the LuaVM register file for the TableGen backend.
//===----------------------------------------------------------------------===//
let Namespace = "LuaVM" in {
  // Define individual registers
  // Integer registers r0-r12
  foreach i = 0-12 in {
    def R#i : Register<"r"#i>{
       let HWEncoding = i;
    }
  }

  // Float registers f0-f31
  foreach i = 0-31 in {
    def F#i : Register<"f"#i>{
       let HWEncoding = i;
    }
  }

  def HI : Register<"hi_r">;
  def LO : Register<"lo_r">;
  def STR : Register<"str">;
  def FP : Register<"fp">{
    let HWEncoding = 13;
  }
  def SP : Register<"sp">{
    let HWEncoding = 14;
  }
  def LINK : Register<"link">{
    let HWEncoding = 15;
  }
  def PDC0 : Register<"pdc0">{
    let HWEncoding = 16;
  }
  def PDC1 : Register<"pdc1">{
    let HWEncoding = 17;
  }
  def TMP0 : Register<"tmp0">{
    let HWEncoding = 18;
  }
  def TMP1 : Register<"tmp1">{
    let HWEncoding = 19;
  }
  def PC : Register<"pc">{
    let HWEncoding = 20;
  }
}
  
// Define register classes
// We have 13 general-purpose 32-bit registers (r0-r12) and 32 floating-point registers (f0-f31).
// Let's define two main classes for integers and floats.

// General Purpose Integer Registers (GPRs)
def GPRRegs : RegisterClass<"LuaVM", [i1, i8, i16, i32], 32, (add (sequence "R%u", 0, 12))>{
  let Size = 32;
}

// Floating Point Registers (FPRs)
def FPRRegs : RegisterClass<"LuaVM", [f64], 64, (add (sequence "F%u", 0, 31))>{
  let Size = 64;
}

def PDCRegs : RegisterClass<"LuaVM", [i1, i8, i16, i32], 32, (add PDC0, PDC1)>;

def TMPRegs : RegisterClass<"LuaVM", [i1, i8, i16, i32], 32, (add TMP0, TMP1)>;

def PCRegs : RegisterClass<"LuaVM", [i32], 32, (add PC)>;

def SGRegs : RegisterClass<"LuaVM", [i32], 32, (add HI, LO, STR, FP, SP, LINK)>;

def LuaVM_CC_CalleeSavedRegs : CalleeSavedRegs<(add R0, R1, R2, R3, R4, R5, R6, R7, R8, R9, R10, R11, R12, 
                               F0, F1, F2, F3, F4, F5, F6, F7, F8, F9, F10, F11, F12, F13, F14, F15, 
                               F16, F17, F18, F19, F20, F21, F22, F23, F24, F25, F26, F27, F28, F29, 
                               F30, F31, LINK)>;
