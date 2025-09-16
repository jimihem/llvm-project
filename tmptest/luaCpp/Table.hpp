#pragma once
#include "ObjectPtrArray.hpp"
#include "ObjectPtrHashTable.hpp"

class Table {
public:
  ObjectPtrHashTable Fields;
  ObjectPtrArray array;
  Table *metaTable;

  Table(const ObjectPtrArray &arr);

  void updateArray();

  void insert(const ObjectPtr& field, const ObjectPtr& value);

  ObjectPtr get(const ObjectPtr &field);
};