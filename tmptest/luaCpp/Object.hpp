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
    Table *table;
    Function *fun;
    Thread *thread;
    String *str;
    UserData *udata;
  };

  Object(Type kind, double dval, bool bval, void *ptr);

  unsigned hash();

  bool operator==(Object &other);

  ~Object();
};