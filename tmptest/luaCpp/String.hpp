#pragma once
#include "CharArray.hpp"
class String {
  char *data;
  unsigned length;
public:
  String(CharArray &array);

  char operator[](unsigned index);

  bool operator==(String &other);

  unsigned size();

  unsigned hash();

  ~String();
};
