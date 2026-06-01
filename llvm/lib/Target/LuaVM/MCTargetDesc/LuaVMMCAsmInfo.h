#ifndef LUAVM_MC_ASM_INFO_H
#define LUAVM_MC_ASM_INFO_H
#include "llvm/MC/MCAsmInfoELF.h"
namespace llvm{

class LuaVMMCAsmInfo : public MCAsmInfoELF{
    public:
    LuaVMMCAsmInfo();
};

}









#endif  //LUAVM_MC_ASM_INFO_H