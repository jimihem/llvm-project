#pragma once
#include "ObjectPtr.hpp"
class ObjectPtrArray {
private:
  ObjectPtr *data;
  unsigned capacity;
  unsigned size;

  void resize(unsigned new_capacity);

public:
  ObjectPtrArray();

  ~ObjectPtrArray();

  void push_back(const ObjectPtr &value);

  void pop_back();

  ObjectPtr &operator[](unsigned index) const;

  unsigned get_size() const;
  unsigned get_capacity();
};
