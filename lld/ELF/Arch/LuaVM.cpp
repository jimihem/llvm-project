#include "Target.h"
#include "Symbols.h"
#include "vm/OpCodeEnum.h"
#include "OutputSections.h"
using namespace lld;
using namespace lld::elf;

enum LuaVMReLType {
  REL_TYPE_PC_IMM14 = 1,
  REL_TYPE_IMM14 = 2,
  REL_TYPE_IMM32 = 3
};
class LuaVMTargetInfo : public TargetInfo {
public:
  LuaVMTargetInfo() { needsThunks = true; }
  virtual RelExpr getRelExpr(RelType type, const Symbol &s,
                             const uint8_t *loc) const {
    OpCode Op = OpCode(* loc);
    if (type == REL_TYPE_PC_IMM14) {
      if (Op == OpCode::JSUB) {
        if (s.isDefined())
          return R_LUAVM_CALL_THUNK_IMM14;
        else
          return R_LUAVM_GOT_CALL_THUNK_IMM14;
      }
      assert(s.isDefined());
      return R_LUAVM_THUNK_IMM14;
    } else if (type == REL_TYPE_IMM14) {
      return R_LUAVM_GOT_THUNK_IMM14;
    } else if (type == REL_TYPE_IMM32) {
      return R_LUAVM_GOT_THUNK_IMM32;
    }

    return R_ABS;
  }

  virtual void relocate(uint8_t* loc, const Relocation& rel,
      uint64_t val) const {

  }
  bool needsThunk(RelExpr expr, RelType type, const InputFile *file,
                              uint64_t branchAddr, const Symbol &s,
                              int64_t a) const {
    return false;
  }
};

TargetInfo *elf::getLuaVMTargetInfo() { 
    static LuaVMTargetInfo t;
    return &t; 
}