#include "ObjectPtr.hpp"

void ObjectPtr::release() {
  if (ref_count && --(*ref_count) == 0) {
    delete ptr;
    delete ref_count;
  }
}

ObjectPtr::ObjectPtr(Object *p)
    : ptr(p), ref_count(new unsigned int(1)) {}

ObjectPtr::ObjectPtr(const ObjectPtr &other)
    : ptr(other.ptr), ref_count(other.ref_count) {
  ++(*ref_count);
}

ObjectPtr::~ObjectPtr() { release(); }

ObjectPtr &ObjectPtr::operator=(const ObjectPtr &other) {
  if (this != &other) {
    release();
    ptr = other.ptr;
    ref_count = other.ref_count;
    ++(*ref_count);
  }
  return *this;
}

Object &ObjectPtr::operator*() const { return *ptr; }
Object *ObjectPtr::operator->() const { return ptr; }
Object *ObjectPtr::get() const { return ptr; }

unsigned ObjectPtr::use_count() const { return ref_count ? *ref_count : 0; }

ObjectPtr::operator bool() const { return ptr != nullptr; }
