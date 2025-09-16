#include "ObjectPtrArray.hpp"
void ObjectPtrArray::resize(unsigned new_capacity) {
  ObjectPtr *new_data = new ObjectPtr[new_capacity];
  for (unsigned i = 0; i < size; ++i) {
    new_data[i] = data[i];
  }
  delete[] data;
  data = new_data;
  capacity = new_capacity;
}

ObjectPtrArray::ObjectPtrArray()
    : data(new ObjectPtr[1]), capacity(1), size(0) {}

ObjectPtrArray::~ObjectPtrArray() { delete[] data; }

void ObjectPtrArray::push_back(const ObjectPtr &value) {
  if (size >= capacity) {
    resize(capacity * 2);
  }
  data[size++] = value;
}

void ObjectPtrArray::pop_back() {
  if (size > 0) {
    size--;
    if (capacity > 1 && size < capacity / 4) {
      resize(capacity / 2);
    }
  }
}

ObjectPtr &ObjectPtrArray::operator[](unsigned index) const {
  return data[index];
}

unsigned ObjectPtrArray::get_size() const { return size; }
unsigned ObjectPtrArray::get_capacity() { return capacity; }