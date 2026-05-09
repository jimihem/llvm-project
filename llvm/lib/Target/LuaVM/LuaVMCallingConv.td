
def AssignGPRRegs : CCAssignToReg<[R1, R2, R3, R4, R5, R6, R7, R8, R9, R10, R11, R12]>;

def AssignFPRRegs : CCAssignToReg<[F0, F1, F2, F3, F4, F5, F6, F7, F8, F9, F10, F11, F12, F13, F14, F15, 
                               F16, F17, F18, F19, F20, F21, F22, F23, F24, F25, F26, F27, F28, F29, 
                               F30, F31]>;

def AssignToStack : CCAssignToStack<0, 0>;

def IfVarArg : CCIfVarArg<AssignToStack>;

def IfIntArg : CCIfType<[i1, i8, i16, i32], AssignGPRRegs>;

def IfFloatArg : CCIf<"ValVT == MVT::f64", AssignFPRRegs>;

def LuaVMCC : CallingConv<[IfVarArg, IfIntArg, IfFloatArg, AssignToStack]>;




