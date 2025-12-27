//===--- OperatorPrecedence.cpp ---------------------------------*- C++ -*-===//
//
// Part of the LLVM Project, under the Apache License v2.0 with LLVM Exceptions.
// See https://llvm.org/LICENSE.txt for license information.
// SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
//
//===----------------------------------------------------------------------===//
///
/// \file
/// Defines and computes precedence levels for binary/ternary operators.
///
//===----------------------------------------------------------------------===//
#include "clang/Basic/OperatorPrecedence.h"

namespace clang {

prec::Level getBinOpPrecedence(tok::TokenKind Kind, bool GreaterThanIsOperator,
                               bool CPlusPlus11, bool Lua) {
  switch (Kind) {
  case tok::greater:
    // C++ [temp.names]p3:
    //   [...] When parsing a template-argument-list, the first
    //   non-nested > is taken as the ending delimiter rather than a
    //   greater-than operator. [...]
    if (GreaterThanIsOperator)
      return prec::Relational;
    return prec::Unknown;

  case tok::greatergreater:
    // C++11 [temp.names]p3:
    //
    //   [...] Similarly, the first non-nested >> is treated as two
    //   consecutive but distinct > tokens, the first of which is
    //   taken as the end of the template-argument-list and completes
    //   the template-id. [...]
    if (GreaterThanIsOperator || !CPlusPlus11)
      return prec::Shift;
    return prec::Unknown;
  case tok::kw_or:
    if (Lua) {
      return prec::LogicalOr;
    }
    [[fallthrough]];
  case tok::kw_and:
    if (Lua) {
      return prec::LogicalAnd;
    }
    [[fallthrough]];
  case tok::concat:
    if (Lua) {
      return prec::ConCat;
    }
    [[fallthrough]];
  case tok::slashslash:
    if (Lua) {
      return prec::Multiplicative;
    }
    [[fallthrough]];
  case tok::tildeequal: 
  if (Lua) {
      return prec::Relational;
    }
    [[fallthrough]];
  case tok::tilde:
    if (Lua) {
      return prec::LuaExclusiveOr;
    }
    [[fallthrough]];
  default:                        return prec::Unknown;
  case tok::comma:                return prec::Comma;
  case tok::equal:
  case tok::starequal:
  case tok::slashequal:
  case tok::percentequal:
  case tok::plusequal:
  case tok::minusequal:
  case tok::lesslessequal:
  case tok::greatergreaterequal:
  case tok::ampequal:
  case tok::caretequal:
  case tok::pipeequal:            return prec::Assignment;
  case tok::question:             return prec::Conditional;
  case tok::pipepipe:             return prec::LogicalOr;
  case tok::caretcaret:
  case tok::ampamp:               return prec::LogicalAnd;
  case tok::pipe:
    if (Lua)
      return prec::LuaInclusiveOr;
    return prec::InclusiveOr;
  case tok::caret:
    if (Lua)
      return prec::LuaExp;
    return prec::ExclusiveOr;
  case tok::amp:
    if (Lua)
      return prec::LuaAnd;
    return prec::And;
  case tok::exclaimequal:
  case tok::equalequal:
    if (Lua)
      return prec::Relational;
    return prec::Equality;
  case tok::lessequal:
  case tok::less:
  case tok::greaterequal:         return prec::Relational;
  case tok::spaceship:            return prec::Spaceship;
  case tok::lessless:             return prec::Shift;
  case tok::plus:
  case tok::minus:                return prec::Additive;
  case tok::percent:
  case tok::slash:
  case tok::star:                 return prec::Multiplicative;
  case tok::periodstar:
  case tok::arrowstar:            return prec::PointerToMember;
  }
}

}  // namespace clang
