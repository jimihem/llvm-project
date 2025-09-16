#include "CharArray.hpp"
void CharArray::resize(unsigned new_capacity) {
  char *new_data = new char[new_capacity];
  for (unsigned i = 0; i < size; ++i) {
    new_data[i] = data[i];
  }
  delete[] data;
  data = new_data;
  capacity = new_capacity;
}

CharArray::CharArray()
    : data(new char[1]), capacity(1), size(0) {}

CharArray::~CharArray() { delete[] data; }

void CharArray::push_back(const char &value) {
  if (size >= capacity) {
    resize(capacity * 2);
  }
  data[size++] = value;
}

void CharArray::pop_back() {
  if (size > 0) {
    size--;
    if (capacity > 1 && size < capacity / 4) {
      resize(capacity / 2);
    }
  }
}

char &CharArray::operator[](unsigned index) { return data[index]; }

unsigned CharArray::get_size() { return size; }
unsigned CharArray::get_capacity() { return capacity; }