#ifndef LUAVM_FIXUP_KIND_H
#define LUAVM_FIXUP_KIND_H
#include "llvm/MC/MCFixup.h"
namespace llvm {
enum LuaVMMCFixupKind { 
    FK_PCRel_addr24 = MCFixupKind::FirstTargetFixupKind, 
    FK_PCRel_OFFSET_imm32,
    FK_DATA_imm14, 
    FK_PCRel_imm14, 
    FK_DATA_imm32,
};
}


#endif