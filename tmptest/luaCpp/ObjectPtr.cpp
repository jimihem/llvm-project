#include "ObjectPtr.hpp"

void ObjectPtr::release() {
  if (ref_count && --(*ref_count) == 0) {
    delete ptr;
    delete ref_count;
  }
}

ObjectPtr::ObjectPtr()
    : ptr(0), ref_count(0) {

}

ObjectPtr::ObjectPtr(Object *p)
    : ptr(p), ref_count(p ? new unsigned int(1) : 0) {}

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

Object * ObjectPtr::operator->() const{ return ptr; }

Object &ObjectPtr::operator *() const { return *ptr; }

ObjectPtr::operator bool() const { return ptr->Kind != Object::TNIL; }
