#include "Object.hpp"

Object::Object() { Kind = TNIL; }

Object::Object(bool bval) {
  Kind = TBOOLEAN;
  this->bval = bval;
}

Object::Object(double dval) {
  Kind = TNUMBER;
  this->dval = dval;
}

Object::Object(Function *ptr) {
  Kind = TFUNCTION;
  this->fun = ptr;
}

Object::Object(String *ptr) {
  Kind = TSTRING;
  this->str = ptr;
}

Object::Object(Table *ptr) {
  Kind = TTABLE;
  this->table = ptr;
}

Object::Object(UserData *ptr) {
  Kind = TUSERDATA;
  this->udata = ptr;
}

Object::Object(Thread *ptr) {
  Kind = TTHREAD;
  this->thread = ptr;
}

unsigned Object::hash() {
  void *ptr = 0;
  switch (Kind) {
  case TNIL:
    return 0;
  case TBOOLEAN:
    return bval;
  case TNUMBER: {
    unsigned long long INT64 = *(unsigned long long *)&dval;
    return (unsigned)((INT64 >> 32) ^ INT64);
  }
  case TSTRING:
    return str->hash();
  case TFUNCTION:
    return (unsigned)fun;
  case TTABLE:
    return (unsigned)table;
  case TUSERDATA:
    return (unsigned)udata;
  case TTHREAD:
    return (unsigned)thread;
  }
  return 0;
}

bool Object::operator==(Object &other) {
  if (Kind != other.Kind)
    return false;
  switch (Kind) {
  case TBOOLEAN:
    return bval == other.bval;
  case TNUMBER:
    return dval == other.dval;
  case TFUNCTION:
    return fun == other.fun;
  case TSTRING:
    return *str == *other.str;
  case TTABLE:
    return table == other.table;
  case TUSERDATA:
    return udata == other.udata;
  case TTHREAD:
    return thread == other.thread;
  }
  return false;
}

Object::~Object() {
  switch (Kind) {
  case TNIL:
  case TBOOLEAN:
  case TNUMBER:
    break;
  case TFUNCTION:
    delete fun;
    break;
  case TSTRING:
    delete str;
    break;
  case TTABLE:
    delete table;
    break;
  case TUSERDATA:
    delete udata;
    break;
  case TTHREAD:
    delete thread;
    break;
  }
}
