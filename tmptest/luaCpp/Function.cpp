#include"Function.hpp"

Function::Function(){
	Method = nullptr;
}

void Function::SetUpValues(const ObjectPtr &UVs) {
	UpValues = UVs;
}

void Function::SetMethod(MethodTy Ptr) {
  Method = Ptr;
}