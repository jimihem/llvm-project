#ifndef OPCODE_ENUM_H
#define OPCODE_ENUM_H
enum class OpCode : uint8_t {
  // No operation
  NOP,
  // Memory operation instructions
  LD = 0b00000001,      // Load i32
  ST = 0b00000010,      // Store i32
  LH = 0b00000011,      // Load i16
  SH = 0b00000100,      // Store i16
  LB = 0b00000101,      // Load i8
  SB = 0b00000110,      // Store i8
  LDD = 0b00000111,     // Load double
  STD = 0b00001000,     // Store double
  LD_PIC = 0b00001001,  // Load i32
  ST_PIC = 0b00001010,  // Store i32
  LH_PIC = 0b00001011,  // Load i16
  SH_PIC = 0b00001100,  // Store i16
  LB_PIC = 0b00001101,  // Load i8
  SB_PIC = 0b00001110,  // Store i8
  LDD_PIC = 0b00001111, // Load double
  STD_PIC = 0b00010000, // Store double
  // Arithmetic immediate instructions
  ADDi = 0b00100000,  // Signed add, register + immediate
  SUBi = 0b00100001,  // Signed sub, register - immediate
  MULi = 0b00100100,  // Signed mul, register * immediate
  DIVi = 0b00100101,  // Signed div, register / immediate
  ADDiu = 0b00100110, // Unsigned add, register + immediate
  SUBiu = 0b00100111, // Unsigned sub, register - immediate
  MULiu = 0b00101010, // Unsigned mul, register * immediate
  DIViu = 0b00101011, // Unsigned div, register / immediate

  ANDi = 0b00101100, // Register & immediate
  ORi = 0b00101101,  // Register | immediate
  XORi = 0b00101110, // Register ^ immediate
  NORi = 0b00101111, // !(Register | immediate)

  CMPi = 0b00110000,  // Signed compare, register vs immediate
  CMPiu = 0b00110001, // Unsigned compare, register vs immediate

  SHLi = 0b00110010, // Register << immediate
  SHRi = 0b00110011, // Register >> immediate (logical)
  SRAi = 0b00110100, // Arithmetic right shift, register >> immediate
  MOVi = 0b00110101,

  // Arithmetic register instructions
  ADD = 0b01000001, // Signed add, register + register
  SUB = 0b01000010, // Signed sub, register - register
  MUL = 0b01000101, // Signed mul, register * register
  DIV = 0b01000110, // Signed div, register / register

  ADDu = 0b01000111, // Unsigned add, register + register
  SUBu = 0b01001000, // Unsigned sub, register - register
  MULu = 0b01001011, // Unsigned mul, register * register
  DIVu = 0b01001100, // Unsigned div, register / register

  AND = 0b01001101, // Register & register
  OR = 0b01001110,  // Register | register
  XOR = 0b01001111, // Register ^ register
  NOT = 0b01010000, // Bitwise NOT register
  NOR = 0b01010001, // !(Register | register)

  CMP = 0b01010010,  // Signed compare, register vs register
  CMPu = 0b01010011, // Unsigned compare, register vs register

  SHL = 0b01010110, // Register << register
  SHR = 0b01010111, // Register >> register (logical)
  SRA = 0b01011000, // Arithmetic right shift, register >> register
  SELCT = 0b01011001,

  // Double-precision floating-point instructions (register to register)
  ADDD = 0b01100000, // Add
  SUBD = 0b01100001, // Subtract
  MULD = 0b01100010, // Multiply
  DIVD = 0b01100011, // Divide
  NEGD = 0b01100100, // Negate
  ABSD = 0b01100101, // Absolute value
  SQRD = 0b01100110, // Square root
  CMPD = 0b01100111, // Compare
  MOVD = 0b01101000, // Copy double register
  SELCTD = 0b01101001,

  // Control flow instructions, branch based on status flags
  JEQ = 0b10000000,
  JNE = 0b10000001,
  JLT = 0b10000010,
  JGT = 0b10000011,
  JLE = 0b10000100,
  JGE = 0b10000101,
  JMP = 0b10000110,
  JALR = 0b10000111,
  JSUB = 0b10001000,
  RET = 0b10001001,
  JIND = 0b10001010,
  JALR_PIC = 0b10001011,
  JSUB_PIC = 0b10001100,
  // Extended instructions
  SYSCALL = 0b10100000, // System call
  DEBUG = 0b10100001    // Debug instruction
};

#endif //OPCODE_ENUM_H