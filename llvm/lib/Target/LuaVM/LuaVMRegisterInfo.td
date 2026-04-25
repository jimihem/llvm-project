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
}
  
// Define register classes
// We have 13 general-purpose 32-bit registers (r0-r12) and 32 floating-point registers (f0-f31).
// Let's define two main classes for integers and floats.

// General Purpose Integer Registers (GPRs)
def GPRRegs : RegisterClass<"LuaVM", [i1, i8, i16, i32], 32, (add (sequence "R%u", 0, 12))>;

// Floating Point Registers (FPRs)
def FPRRegs : RegisterClass<"LuaVM", [f64], 64, (add (sequence "F%u", 0, 31))>;

def PDCRegs : RegisterClass<"LuaVM", [i1, i8, i16, i32], 32, (add PDC0, PDC1)>;
