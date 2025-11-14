#pragma once
#include "String.hpp"
class Function;
class Thread;
class UserData;
class Table;
class Object {
public:
  enum Type {
    TNIL,
    TBOOLEAN,
    TNUMBER,
    TFUNCTION,
    TSTRING,
    TTABLE,
    TUSERDATA,
    TTHREAD
  } Kind;

  union {
    double dval;
    bool bval;
    String *str;
    Table *table;
    Function *fun;
    Thread *thread;
    UserData *udata;
  };

  bool bLocal;

  Object();
  
  Object(bool bval);
  
  Object(double dval);
  
  Object(Function* ptr);
  
  Object(String* ptr);
  
  Object(Table* ptr);
  
  Object(UserData* ptr);
  
  Object(Thread* ptr);
  
  unsigned hash();

  bool operator==(Object &other);

  ~Object();
};