#ifndef VECTOR_H
#define VECTOR_H

template <typename T>
class Vector {
private:
    T* data;
    size_t capacity;
    size_t length;

    void resize(size_t new_capacity) {
        T* new_data = new T[new_capacity];
        for(size_t i = 0; i < length; ++i) {
            new_data[i] = data[i];
        }
        delete[] data;
        data = new_data;
        capacity = new_capacity;
    }

public:
    Vector() : data(nullptr), capacity(0), length(0) {}
    
    ~Vector() {
        delete[] data;
    }

    void push_back(const T& value) {
        if(length >= capacity) {
            resize(capacity == 0 ? 1 : capacity * 2);
        }
        data[length++] = value;
    }

    T& operator[](size_t index) {
        return data[index];
    }

    const T& operator[](size_t index) const {
        return data[index];
    }

    size_t size() const {
        return length;
    }

    bool empty() const {
        return length == 0;
    }

    void clear() {
        length = 0;
    }
};

#endif