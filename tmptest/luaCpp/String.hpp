#pragma once
class String {
  char *data;

  unsigned length;

  unsigned size();
public:
  String();

  String(char *d, unsigned l);

  unsigned hash();

  bool operator==(String &other);

  ~String();
};
