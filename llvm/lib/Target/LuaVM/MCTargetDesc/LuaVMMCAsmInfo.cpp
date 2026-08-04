#include "LuaVMMCAsmInfo.h"

using namespace llvm;

LuaVMMCAsmInfo::LuaVMMCAsmInfo(bool LB) { 
    IsLittleEndian = LB;
    MaxInstLength = 8;
    MinInstAlignment = 4;
    SupportsDebugInformation = true;
}