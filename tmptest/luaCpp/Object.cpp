#include "Object.hpp"

Object::Object(Type kind, double dval, bool bval, void *ptr) {
  Kind = kind;
  switch (Kind) {
  case TNIL:
    break;
  case TBOOLEAN:
    this->bval = bval;
    break;
  case TNUMBER:
    this->dval = dval;
    break;
  case TFUNCTION:
    fun = (Function *)ptr;
    break;
  case TSTRING:
    str = (String *)ptr;
    break;
  case TTABLE:
    table = (Table *)ptr;
    break;
  case TUSERDATA:
    udata = (UserData *)ptr;
    break;
  case TTHREAD:
    thread = (Thread *)ptr;
    break;
  }
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
