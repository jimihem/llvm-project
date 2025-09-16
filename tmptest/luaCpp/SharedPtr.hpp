#pragma once
template<typename T>
class SharedPtr {
private:
    T* ptr;
    unsigned int* ref_count;

    void release() {
      if (ref_count && --(*ref_count) == 0) {
        delete ptr;
        delete ref_count;
      }
    }

public:
    explicit SharedPtr(T* p = nullptr) : ptr(p), ref_count(new unsigned int(1)) {}

    SharedPtr(const SharedPtr& other) : ptr(other.ptr), ref_count(other.ref_count) {
        ++(*ref_count);
    }

    ~SharedPtr() {
        release();
    }

    SharedPtr &operator=(const SharedPtr &other) {
        if (this != &other) {
        release();
        ptr = other.ptr;
        ref_count = other.ref_count;
        ++(*ref_count);
        }
        return *this;
    }

    T& operator*() const { return *ptr; }
    T* operator->() const { return ptr; }
    T* get() const { return ptr; }

    unsigned use_count() const { 
        return ref_count ? *ref_count : 0; 
    }

    explicit operator bool() const { 
        return ptr != nullptr; 
    }
};


