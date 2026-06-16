#include "Target.h"
#include "Symbols.h"
#include "vm/OpCodeEnum.h"
#include "OutputSections.h"
#include "llvm/Support/MathExtras.h"
#include "Thunks.h"
#include "llvm/Support/Endian.h"
#include "llvm/BinaryFormat/ELF.h"
#include "SyntheticSections.h"

using namespace lld;
using namespace lld::elf;
using namespace llvm::ELF;
using namespace llvm;
using namespace support::endian;

enum LuaVMReLType {
  REL_TYPE_PC_IMM14 = 1,
  REL_TYPE_IMM14 = 2,
  REL_TYPE_IMM32 = 3,
  REL_TYPE_PC_IMM32 = 4,
  REL_TYPE_PC_IMM24 = 5
};
class LuaVMTargetInfo : public TargetInfo {
public:
  LuaVMTargetInfo() {
    needsThunks = true;
    gotEntrySize = 4;
    gotRel = REL_TYPE_IMM32;
    relativeRel = REL_TYPE_PC_IMM32;
  }
  virtual RelExpr getRelExpr(RelType type, const Symbol &s,
                             const uint8_t *loc) const {
    if (type == REL_TYPE_PC_IMM14) {
      if (s.isDefined())
        return R_LUAVM_CALL_THUNK_IMM14;
      else
        return R_LUAVM_GOT_CALL_THUNK_IMM14;
    } else if (type == REL_TYPE_PC_IMM32) {
      assert(s.isDefined());
      return R_PC;
    } else if (type == REL_TYPE_IMM32) {
      return R_LUAVM_GOT_THUNK_IMM32;
    } else if (type == REL_TYPE_IMM14)
      llvm_unreachable("Not support REL_TYPE_IMM14");
    return R_ABS;
  }

  virtual void relocateAlloc(InputSectionBase& sec, uint8_t* buf) const {
    const unsigned bits = config->is64 ? 64 : 32;
    uint64_t secAddr = sec.getOutputSection()->addr;
    if (auto *s = dyn_cast<InputSection>(&sec))
      secAddr += s->outSecOff;
    for (const Relocation &rel : sec.relocs()) {
      uint8_t *loc = buf + rel.offset;
      const uint64_t val = SignExtend64(rel.sym->getVA(rel.addend), bits);
      if (rel.expr != R_RELAX_HINT)
        relocate(loc, rel, secAddr + rel.offset, val);
    }
  }

  virtual void relocate(uint8_t* loc, const Relocation& rel,
      uint64_t val) const {
    llvm_unreachable("Should not call this function");
  }

  void relocate(uint8_t *loc, const Relocation &rel, uint64_t src,
                uint64_t val) const {
    switch (rel.expr) {
    case R_PC: {
      uint64_t Movi = read64be(loc);
      int64_t imm51 = val - src - 8;
      Movi &= ~((((uint64_t)1) << 51) - 1);
      Movi |= imm51 & ((((uint64_t)1) << 51) - 1);
      write64be(loc, Movi);
      return;
    }
    case R_LUAVM_CALL_THUNK_IMM14: {
      if (rel.type == REL_TYPE_PC_IMM14) {
        uint32_t Jsub = read32be(loc);
        int32_t imm14 = val - src;
        assert(isInt<14>(imm14));
        Jsub &= ~((1 << 14) - 1);
        Jsub |= imm14 & ((1 << 14) - 1);
        write32be(loc, Jsub);
      } else {
        assert(rel.type == REL_TYPE_PC_IMM24);
        uint32_t addi = 0x20A3C008;//link = PC + 8
        int32_t imm24 = val - src;
        assert(isInt<24>(imm24));
        uint32_t jmp = 0x86;
        jmp |= imm24 & ((1 << 24) - 1);
        write32be(loc, addi);
        write32be(loc + 4, jmp);
      }
      return;
    }
    case R_LUAVM_GOT_CALL_THUNK_IMM14:
    case R_LUAVM_GOT_THUNK_IMM32: {
      assert(rel.type == REL_TYPE_PC_IMM24);
      uint32_t addi = 0x20A3C008; // link = PC + 8
      int32_t imm24 = val - src;
      assert(isInt<24>(imm24));
      uint32_t jmp = 0x86;
      jmp |= imm24 & ((1 << 24) - 1);
      write32be(loc, addi);
      write32be(loc + 4, jmp);
      return;
    }
    default:
      llvm_unreachable("Not support expr");
      break;
    }
  }
  bool needsThunk(RelExpr expr, RelType type, const InputFile *file,
                              uint64_t branchAddr, const Symbol &s,
                              int64_t a) const {
    if (!s.isDefined())
      return true;
    int64_t offset = s.getVA(a) - branchAddr;
    if (type == REL_TYPE_PC_IMM14) {
      return !isInt<14>(offset);
    } else if (type == REL_TYPE_PC_IMM24) {
      return !isInt<24>(offset);
    }
    return false;
  }

  bool inBranchRange(RelType type, uint64_t src, uint64_t dst) const {
    int64_t offset = dst - src;
    if (type == REL_TYPE_PC_IMM14) {
      return isInt<14>(offset);
    } else if (type == REL_TYPE_PC_IMM24) {
      return isInt<24>(offset);
    }
    return true;
  }
};

TargetInfo *elf::getLuaVMTargetInfo() { 
    static LuaVMTargetInfo t;
    return &t; 
}


class LuaVMCallThunk final : public Thunk {
  public:
    LuaVMCallThunk(Symbol &d, int64_t a)
        : Thunk(d, a){}
    virtual uint32_t size() { return 20; }
    virtual void writeTo(uint8_t *buf) {
      uint64_t target = destination.getVA();
      uint64_t src = getThunkTargetSym()->getVA();
      uint64_t Movi = target - src - 8;
      Movi &= ~(((uint64_t)0x1fff) << 51);
      Movi |= (((uint64_t)0x3598) << 51);

      uint32_t Add = 0x419d2600;
      uint32_t Jalr = (0x87 << 24) | (0x13 << 14);
      uint32_t Ret = 0x89 << 24;
      write64be(buf, Movi);
      buf += 8;
      write32be(buf, Add);
      buf += 4;
      write32be(buf, Jalr);
      buf += 4;
      write32be(buf, Ret);
    }

    // All Thunks must define at least one symbol, known as the thunk target
    // symbol, so that we can redirect relocations to it. The thunk may define
    // additional symbols, but these are never targets for relocations.
    virtual void addSymbols(ThunkSection& isec) {
      addSymbol(saver().save("__luavm_CallThunk" + destination.getName()),
                    STT_FUNC, 0, isec);
    }
    virtual bool isCompatibleWith(const InputSection &isec,
                                  const Relocation &rel) const {
      return rel.expr == R_LUAVM_CALL_THUNK_IMM14;
    }
};

class LuaVMGotCallThunk final : public Thunk {
  public:
    LuaVMGotCallThunk(Symbol &d, int64_t a) : Thunk(d, a) {}
    virtual uint32_t size() { return 24; }
    virtual void writeTo(uint8_t *buf) {
      uint64_t target = destination.getGotVA();
      uint64_t src = getThunkTargetSym()->getVA();
      uint64_t Movi = target - src - 8;
      Movi &= ~(((uint64_t)0x1fff) << 51);
      Movi |= (((uint64_t)0x3598) << 51);
      write64be(buf, Movi);
      buf += 8;

      uint32_t Add = 0x419d2600;
      write32be(buf, Add);
      buf += 4;
      uint32_t Load = 0x019CC000;
      write32be(buf, Load);
      buf += 4;
      uint32_t Jalr = (0x87 << 24) | (0x13 << 14);
      write32be(buf, Jalr);
      buf += 4;
      uint32_t Ret = 0x89 << 24;
      write32be(buf, Ret);
    }

    // All Thunks must define at least one symbol, known as the thunk target
    // symbol, so that we can redirect relocations to it. The thunk may define
    // additional symbols, but these are never targets for relocations.
    virtual void addSymbols(ThunkSection &isec) {
      addSymbol(saver().save("__luavm_GotCallThunk" + destination.getName()),
                    STT_FUNC, 0, isec);
    }
    virtual bool isCompatibleWith(const InputSection &,
                                  const Relocation &rel) const {
      return rel.expr == R_LUAVM_GOT_CALL_THUNK_IMM14;
    }
};

class LuaVMGotThunk final : public Thunk {
  public:
    LuaVMGotThunk(Symbol &d, int64_t a) : Thunk(d, a) {}
    virtual uint32_t size() { return 20; }
    virtual void writeTo(uint8_t* buf) {
      uint64_t target = destination.getGotVA();
      uint64_t src = getThunkTargetSym()->getVA();
      uint64_t Movi = target - src - 8;
      Movi &= ~(((uint64_t)0x1fff) << 51);
      Movi |= (((uint64_t)0x3598) << 51);
      write64be(buf, Movi);
      buf += 8;

      uint32_t Add = 0x419d2600;
      write32be(buf, Add);
      buf += 4;
      uint32_t Load = 0x019C8000;
      write32be(buf, Load);
      buf += 4;
      uint32_t Ret = 0x89 << 24;
      write32be(buf, Ret);
    }

    // All Thunks must define at least one symbol, known as the thunk target
    // symbol, so that we can redirect relocations to it. The thunk may define
    // additional symbols, but these are never targets for relocations.
    virtual void addSymbols(ThunkSection &isec) {
      addSymbol(
          saver().save("__luavm_GotThunk" + destination.getName()),
          STT_FUNC, 0, isec);
    }
    virtual bool isCompatibleWith(const InputSection &,
                                  const Relocation &rel) const {
      return rel.expr == R_LUAVM_GOT_THUNK_IMM32;
    }
};

Thunk* addThunkLuaVM(const InputSection& isec, Relocation& rel) {
  if (rel.expr == R_LUAVM_CALL_THUNK_IMM14)
    return make<LuaVMCallThunk>(*rel.sym, rel.addend);
  if (rel.expr == R_LUAVM_GOT_CALL_THUNK_IMM14)
    return make<LuaVMGotCallThunk>(*rel.sym, rel.addend);
  if (rel.expr == R_LUAVM_GOT_THUNK_IMM32)
    return make<LuaVMGotThunk>(*rel.sym, rel.addend);
  llvm_unreachable("Not support expr");
  return nullptr;
}