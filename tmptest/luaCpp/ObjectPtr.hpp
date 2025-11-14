#pragma once
#include "Object.hpp"
class ObjectPtr {
private:
  Object *ptr;
  unsigned int *ref_count;

  void release();

public:
  ObjectPtr();

  ObjectPtr(Object *p);

  ObjectPtr(const ObjectPtr &other);

  ~ObjectPtr();

  ObjectPtr &operator=(const ObjectPtr &other);

  Object *operator->() const;

  Object &operator*() const;

  explicit operator bool() const;
};