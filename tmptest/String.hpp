#pragma once
#include "Array.hpp"

class String {
public:
  char *data;
  unsigned length;

  String(Array<char> &array) {
    length = array.get_size();
    data = new char[length];
    for (unsigned i = 0; i < length; ++i) {
      data[i] = array[i];
    }
  }

  char operator[](unsigned index) { return data[index]; }

  bool operator==(String &other) {
    if (length != other.length)
      return false;
    for (unsigned i = 0; i < length; ++i) {
      if (data[i] != other.data[i])
        return false;
    }
    return true;
  }

  ~String() { delete data; }
};
