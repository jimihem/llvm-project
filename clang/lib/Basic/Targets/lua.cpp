//===--- lua.cpp - Implement lua target feature support --------------===//
//
// Part of the LLVM Project, under the Apache License v2.0 with LLVM Exceptions.
// See https://llvm.org/LICENSE.txt for license information.
// SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
//
//===----------------------------------------------------------------------===//
//
// This file implements lua TargetInfo objects.
//
//===----------------------------------------------------------------------===//

#include "lua.h"
using namespace clang;
using namespace targets;
LuaTargetInfo::LuaTargetInfo(const llvm::Triple& Triple,
                             const TargetOptions &Opts)
    : TargetInfo(Triple) {
  BigEndian = false;
  TLSSupported = false;
  VLASupported = false;
  resetDataLayout("e-S32-p:32:32:32-i64:64:64-f64:64:64", "lua");
}
void LuaTargetInfo::getTargetDefines(const LangOptions& Opts,
    MacroBuilder& Builder) const {
  return;
}
ArrayRef<Builtin::Info> LuaTargetInfo::getTargetBuiltins() const {
  return ArrayRef<Builtin::Info>();
}
TargetInfo::BuiltinVaListKind LuaTargetInfo::getBuiltinVaListKind() const {
  return VoidPtrBuiltinVaList;
}
bool
LuaTargetInfo::validateAsmConstraint(const char*& Name,
    TargetInfo::ConstraintInfo& info) const {
  return true;
}
std::string_view LuaTargetInfo::getClobbers() const { return ""; }
ArrayRef<const char*> LuaTargetInfo::getGCCRegNames() const {
  return std::nullopt;
}
ArrayRef<TargetInfo::GCCRegAlias> LuaTargetInfo::getGCCRegAliases() const {
  return std::nullopt;
}
