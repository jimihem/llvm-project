#include "String.hpp"
#include"Table.hpp"
#include "Object.hpp"
#include"Function.hpp"

ObjectPtr BuildNil() {
    return ObjectPtr(new Object());
}

ObjectPtr BuildBool(bool bVal) { return ObjectPtr(new Object(bVal)); }

ObjectPtr BuildNumber(double dVal) { return ObjectPtr(new Object(dVal)); }

ObjectPtr BuildString(char *data, unsigned length) {
  String *str = new String(data, length);
  return ObjectPtr(new Object(str));
}

ObjectPtr BuildTable(const ObjectPtrArray& Values) {
  Table *tab = new Table(Values);
  return ObjectPtr(new Object(tab));
}

ObjectPtr BuildFunction() {
  Function* fun = new Function();
  return ObjectPtr(new Object(fun));
}

ObjectPtr GetMember(const ObjectPtr& Base, const ObjectPtr& Name, unsigned long long OpLoc) {
  return Base->table->get(Name);
}

ObjectPtr GetMemberFromName(const ObjectPtr& Base, char* Name, unsigned NameLen,
                            unsigned long long OpLoc) {
  return GetMember(Base, BuildString(Name, NameLen), OpLoc);
}

void SetMember(const ObjectPtr &Base, const ObjectPtr &Field,
               const ObjectPtr &Value, unsigned long long OpLoc) {
  Base->table->insert(Field, Value);
}

ObjectPtr GetObjectPtrFromArray(const ObjectPtrArray &Values) {
  return Values[0];
}

void PushArrayIntoArray(ObjectPtrArray& Arr1,
    const ObjectPtrArray& Arr2) {
  for (unsigned i = 0; i < Arr2.get_size(); i++) {
    Arr1.push_back(Arr2[i]);
  }
}

void SetAsLocal(ObjectPtr& LocalVar) { 
    LocalVar->bLocal = true; 
}

void SetFunctionUpValues(ObjectPtr &Fun, const ObjectPtrArray &Arr) {
  Fun->fun->SetUpValues(BuildTable(Arr));
}

void SetFunctionMethod(ObjectPtr &Fun, const MethodTy &Ptr) {
  Fun->fun->SetMethod(Ptr);
}

ObjectPtr GetUpValue(const ObjectPtr &Fun, const ObjectPtr &Var,
                     unsigned long long OpLoc) {
  return GetMember(Fun->fun->UpValues, Var, OpLoc);
}

void BuildModifyExpr(ObjectPtr& LHS, const ObjectPtr& RHS) {
    //...
}

ObjectPtrArray fun(const ObjectPtr& Base, const ObjectPtrArray &Parms) {
  return ObjectPtrArray();
}

int main() {
  
    ObjectPtr temp;
  SetFunctionMethod(temp, fun);
}