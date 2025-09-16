#pragma once

template <typename T>
class Array {
private:
    T* data;
    unsigned capacity;
    unsigned size;

    void resize(unsigned new_capacity) {
        T* new_data = new T[new_capacity];
        for (unsigned i = 0; i < size; ++i) {
            new_data[i] = data[i];
        }
        delete[] data;
        data = new_data;
        capacity = new_capacity;
    }

public:
    Array() : data(new T[1]), capacity(1), size(0) {}
    
    ~Array() {
        delete[] data;
    }

    void push_back(const T& value) {
        if (size >= capacity) {
            resize(capacity * 2);
        }
        data[size++] = value;
    }

    void pop_back() {
        if (size > 0) {
            size--;
            if (capacity > 1 && size < capacity / 4) {
                resize(capacity / 2);
            }
        }
    }

    T& operator[](unsigned index) {
        return data[index];
    }

    const T& operator[](unsigned index) const {
        return data[index];
    }

    unsigned get_size() const { return size; }
    unsigned get_capacity() const { return capacity; }
};

