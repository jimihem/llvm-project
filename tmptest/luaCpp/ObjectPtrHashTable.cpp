#include "ObjectPtrHashTable.hpp"

unsigned ObjectPtrHashTable::getBucketIndex(const ObjectPtr &key) {
  return HashFunc(key) % capacity;
}

unsigned ObjectPtrHashTable::HashFunc(const ObjectPtr& key) {
  return key.get()->hash();
}
bool ObjectPtrHashTable::KeyEqual(const ObjectPtr& key1,
    const ObjectPtr& key2) {
  return *key1 == *key2;
}

ObjectPtrHashTable::ObjectPtrHashTable(unsigned initial_capacity)
    : capacity(initial_capacity), count(0) {
  buckets = new Node *[capacity]();
}

ObjectPtrHashTable::~ObjectPtrHashTable() {
  clear();
  delete[] buckets;
}

void ObjectPtrHashTable::insert(const ObjectPtr &key, const ObjectPtr &value) {
  if (count >= capacity * 0.75) {
    rehash(capacity * 2);
  }

  unsigned index = getBucketIndex(key);
  Node *current = buckets[index];

  while (current) {
    if (KeyEqual(current->key, key)) {
      current->value = value;
      return;
    }
    current = current->next;
  }

  Node *newNode = new Node(key, value);
  newNode->next = buckets[index];
  buckets[index] = newNode;
  count++;
}

bool ObjectPtrHashTable::get(const ObjectPtr &key, ObjectPtr &out_value) {
  unsigned index = getBucketIndex(key);
  Node *current = buckets[index];

  while (current) {
    if (KeyEqual(current->key, key)) {
      out_value = current->value;
      return true;
    }
    current = current->next;
  }
  return false;
}

bool ObjectPtrHashTable::remove(const ObjectPtr &key) {
  unsigned index = getBucketIndex(key);
  Node *current = buckets[index];
  Node *prev = nullptr;

  while (current) {
    if (KeyEqual(current->key, key)) {
      if (prev) {
        prev->next = current->next;
      } else {
        buckets[index] = current->next;
      }
      delete current;
      count--;
      return true;
    }
    prev = current;
    current = current->next;
  }
  return false;
}

void ObjectPtrHashTable::clear() {
  for (unsigned i = 0; i < capacity; ++i) {
    Node *current = buckets[i];
    while (current) {
      Node *temp = current;
      current = current->next;
      delete temp;
    }
    buckets[i] = nullptr;
  }
  count = 0;
}

unsigned ObjectPtrHashTable::size() const { return count; }

void ObjectPtrHashTable::rehash(unsigned new_capacity) {
  Node **new_buckets = new Node *[new_capacity]();

  for (unsigned i = 0; i < capacity; ++i) {
    Node *current = buckets[i];
    while (current) {
      Node *next = current->next;
      unsigned new_index = HashFunc(current->key) % new_capacity;

      current->next = new_buckets[new_index];
      new_buckets[new_index] = current;

      current = next;
    }
  }

  delete[] buckets;
  buckets = new_buckets;
  capacity = new_capacity;
}