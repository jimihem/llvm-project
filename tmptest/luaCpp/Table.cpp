#include"Table.hpp"

Table::Table(const ObjectPtrArray &arr) {
  metaTable = 0;
  double index = 0.0;
  for (unsigned i = 0; i < arr.get_size() / 2; i++) {

    ObjectPtr field = arr[2 * i];
    ObjectPtr value = arr[2 * i + 1];

    if (!field) {
      index += 1.0;
      const ObjectPtr tempFiled(new Object(0.0));
      ObjectPtr outValue(0);
      while (Fields.get(tempFiled, outValue)) {
        index += 1.0;
        tempFiled->dval = index;
      }
      field = tempFiled;
    }
    const ObjectPtr cfield = field;
    const ObjectPtr cvalue = value;
    if (value->Kind == Object::TNIL) {
      Fields.remove(cfield);
    } else {
      Fields.insert(cfield, cvalue);
    }
  }
  updateArray();
}

void Table::updateArray() {
  unsigned index = array.get_size() + 1;
  ObjectPtr tempFiled = ObjectPtr(new Object((double)index));
  ObjectPtr outValue(0);
  while (Fields.get(tempFiled, outValue)) {
    array.push_back(outValue);
    tempFiled->dval += 1.0;
  }
}

void Table::insert(const ObjectPtr &field, const ObjectPtr &value) {
  ObjectPtr outValue(0);
  if (value->Kind == Object::TNIL) {
    Fields.remove(field);

  } else {
    Fields.insert(field, value);
  }
}

ObjectPtr Table::get(const ObjectPtr &field) {
  ObjectPtr ret(0);
  Fields.get(field, ret);
  return ret;
}

