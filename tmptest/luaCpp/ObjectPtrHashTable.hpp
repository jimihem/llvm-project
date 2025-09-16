#pragma once
#include "ObjectPtr.hpp"
class ObjectPtrHashTable{
private:
  struct Node {
    ObjectPtr key;
    ObjectPtr value;
    Node *next;

    Node(const ObjectPtr &k, const ObjectPtr &v) : key(k), value(v), next(nullptr) {}
  };

  Node **buckets;
  unsigned capacity;
  unsigned count;

  unsigned getBucketIndex(const ObjectPtr &key);

  unsigned HashFunc(const ObjectPtr &key);
  bool KeyEqual(const ObjectPtr &key1, const ObjectPtr &key2);

public:
  explicit ObjectPtrHashTable(unsigned initial_capacity = 16);

  ~ObjectPtrHashTable();

  void insert(const ObjectPtr &key, const ObjectPtr &value);

  bool get(const ObjectPtr &key, ObjectPtr &out_value);

  bool remove(const ObjectPtr &key);

  void clear();

  unsigned size() const;

private:
  void rehash(unsigned new_capacity);
};