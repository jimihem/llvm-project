#include "String.hpp"
String::String() {
  length = 0;
  data = 0;
}

String::String(char* d, unsigned l) {
  length = l;
  data = new char[length];
  for (unsigned i = 0; i < length; ++i) {
    data[i] = d[i];
  }
}

bool String::operator==(String &other) {
  if (length != other.length)
    return false;
  for (unsigned i = 0; i < length; ++i) {
    if (data[i] != other.data[i])
      return false;
  }
  return true;
}

unsigned String::hash() {
  unsigned long hash = 5381;
  for (unsigned i = 0; i < length; i++) {
    hash = ((hash << 5) + hash) + data[i];
  }
  return hash & 0xFFFFFFFF;
}

unsigned String::size() { return length; }

String::~String() {
  if (data)
    delete data;
}