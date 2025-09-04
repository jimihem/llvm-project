//===--- lua.h - Declare lua target feature support --------*- C++ -*-===//
//
// Part of the LLVM Project, under the Apache License v2.0 with LLVM Exceptions.
// See https://llvm.org/LICENSE.txt for license information.
// SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
//
//===----------------------------------------------------------------------===//
//
// This file declares lua TargetInfo objects.
//
//===----------------------------------------------------------------------===//
#ifndef LLVM_CLANG_LIB_BASIC_TARGETS_LUA_H
#define LLVM_CLANG_LIB_BASIC_TARGETS_LUA_H
#include "clang/Basic/TargetInfo.h"
#include "clang/Basic/TargetOptions.h"
namespace clang {
namespace targets {

class LuaTargetInfo : public TargetInfo {
public:
  LuaTargetInfo(const llvm::Triple &Triple, const TargetOptions &Opts);
  virtual void getTargetDefines(const LangOptions &Opts,
                                MacroBuilder &Builder) const;
  virtual ArrayRef<Builtin::Info> getTargetBuiltins() const;
  virtual BuiltinVaListKind getBuiltinVaListKind() const;
  virtual bool
  validateAsmConstraint(const char *&Name,
                        TargetInfo::ConstraintInfo &info) const;
  virtual std::string_view getClobbers() const;
  virtual ArrayRef<const char *> getGCCRegNames() const;
  virtual ArrayRef<GCCRegAlias> getGCCRegAliases() const;
};

} // namespace targets
} // namespace clang

#endif // LLVM_CLANG_LIB_BASIC_TARGETS_LUA_H
