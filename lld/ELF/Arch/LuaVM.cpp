#include "Target.h"
#include "Symbols.h"
#include "vm/OpCodeEnum.h"
using namespace lld;
using namespace lld::elf;

enum LuaVMReLType { REL_TYPE_IMM14 = 1, REL_TYPE_IMM32 = 2 };
class LuaVMTargetInfo : public TargetInfo {
public:
  virtual RelExpr getRelExpr(RelType type, const Symbol &s,
                             const uint8_t *loc) const {
    OpCode Op = OpCode(* loc);
    if (s.isDefined()) {
      if (Op == OpCode::JSUB)
        return R_LUAVM_CALL_THUNK;
      else if (Op == OpCode::MOVi)
        return R_LUAVM_GV_THUNK_IMM32;
      else if (Op == OpCode::SB || Op == OpCode::SH || Op == OpCode::ST ||
               Op == OpCode::STD || Op == OpCode::LB || Op == OpCode::LH ||
               Op == OpCode::LD || Op == OpCode::LDD)
        return R_LUAVM_GV_THUNK_IMM14_LS;
    } else {
      if (Op == OpCode::JSUB)
        return R_LUAVM_GOT_CALL_THUNK;
      else if (Op == OpCode::MOVi)
        return R_LUAVM_GOT_GV_THUNK_IMM32;
      else if (Op == OpCode::SB || Op == OpCode::SH || Op == OpCode::ST ||
               Op == OpCode::STD || Op == OpCode::LB || Op == OpCode::LH ||
               Op == OpCode::LD || Op == OpCode::LDD)
        return R_LUAVM_GOT_GV_THUNK_IMM14_LS;
    }
    llvm_unreachable("No support RelType");
    return R_ABS;
  }

  virtual void relocate(uint8_t* loc, const Relocation& rel,
      uint64_t val) const {

  }
};

TargetInfo *elf::getLuaVMTargetInfo() { 
    static LuaVMTargetInfo t;
    return &t; 
}