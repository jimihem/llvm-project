#pragma once
#include "ObjectPtr.hpp"
#include "ObjectPtrArray.hpp"
typedef ObjectPtrArray (*MethodTy)(const ObjectPtr &Base, const ObjectPtrArray &Parms);
class Function {
public:
  ObjectPtr UpValues;
  MethodTy Method;
  Function();
  void SetUpValues(const ObjectPtr& UVs);
  void SetMethod(MethodTy Ptr);
};