#pragma once
class CharArray {
private:
  char *data;
  unsigned capacity;
  unsigned size;

  void resize(unsigned new_capacity);

public:
  CharArray();

  ~CharArray();

  void push_back(const char &value);

  void pop_back();

  char &operator[](unsigned index);

  unsigned get_size();
  unsigned get_capacity();
};