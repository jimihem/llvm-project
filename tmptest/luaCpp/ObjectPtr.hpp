#pragma once
#include "Object.hpp"
class ObjectPtr {
private:
  Object *ptr;
  unsigned int *ref_count;

  void release();

public:
  explicit ObjectPtr(Object *p = nullptr);

  ObjectPtr(const ObjectPtr &other);

  ~ObjectPtr();

  ObjectPtr &operator=(const ObjectPtr &other);

  Object &operator*() const;
  Object *operator->() const;
  Object *get() const;

  unsigned use_count() const;

  explicit operator bool() const;
};