#pragma once

template<typename K, typename V, unsigned (*HashFunc)(const K&), bool (*KeyEqual)(const K&, const K&)>
class HashTable {
private:
    struct Node {
        K key;
        V value;
        Node* next;
        
        Node(const K& k, const V& v) : key(k), value(v), next(nullptr) {}
    };

    Node** buckets;
    unsigned capacity;
    unsigned count;

    unsigned getBucketIndex(const K& key) const {
        return HashFunc(key) % capacity;
    }

public:
    explicit HashTable(unsigned initial_capacity = 16) : 
        capacity(initial_capacity), count(0) {
        buckets = new Node*[capacity]();
    }

    ~HashTable() {
        clear();
        delete[] buckets;
    }

    void insert(const K& key, const V& value) {
        if (count >= capacity * 0.75) {
            rehash(capacity * 2);
        }

        unsigned index = getBucketIndex(key);
        Node* current = buckets[index];
        
        while (current) {
            if (KeyEqual(current->key, key)) {
                current->value = value;
                return;
            }
            current = current->next;
        }
        
        Node* newNode = new Node(key, value);
        newNode->next = buckets[index];
        buckets[index] = newNode;
        count++;
    }

    bool get(const K& key, V& out_value) const {
        unsigned index = getBucketIndex(key);
        Node* current = buckets[index];
        
        while (current) {
            if (KeyEqual(current->key, key)) {
                out_value = current->value;
                return true;
            }
            current = current->next;
        }
        return false;
    }

    bool remove(const K& key) {
        unsigned index = getBucketIndex(key);
        Node* current = buckets[index];
        Node* prev = nullptr;
        
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

    void clear() {
        for (unsigned i = 0; i < capacity; ++i) {
            Node* current = buckets[i];
            while (current) {
                Node* temp = current;
                current = current->next;
                delete temp;
            }
            buckets[i] = nullptr;
        }
        count = 0;
    }

    unsigned size() const { return count; }

private:
    void rehash(unsigned new_capacity) {
        Node** new_buckets = new Node*[new_capacity]();
        
        for (unsigned i = 0; i < capacity; ++i) {
            Node* current = buckets[i];
            while (current) {
                Node* next = current->next;
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
};

