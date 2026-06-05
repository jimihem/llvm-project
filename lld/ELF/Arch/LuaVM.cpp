#include "Target.h"
using namespace lld;
using namespace lld::elf;

class LuaVMTargetInfo : public TargetInfo {
public:
  virtual RelExpr getRelExpr(RelType type, const Symbol &s,
                             const uint8_t *loc) const {
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