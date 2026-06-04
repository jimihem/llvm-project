#include "LuaVMMCAsmInfo.h"

using namespace llvm;

LuaVMMCAsmInfo::LuaVMMCAsmInfo(bool LB) { IsLittleEndian = LB; }