#pragma once

#include "common.h"
#include <vector>
#include <cstring>
#include <stdexcept>
#include <mutex>

namespace vm {

class Memory {
public:
    explicit Memory(size_t size = 64 * 1024); // 默认64KB
    ~Memory() = default;
    
    // 禁止拷贝
    Memory(const Memory&) = delete;
    Memory& operator=(const Memory&) = delete;
    
    // 允许移动
    Memory(Memory&&) = default;
    Memory& operator=(Memory&&) = default;
    
    // 读写内存
    Byte readByte(size_t address) const;
    Word readWord(size_t address) const;
    DWord readDWord(size_t address) const;
    QWord readQWord(size_t address) const;
    double readDouble(size_t address) const;
    
    void writeByte(size_t address, Byte value);
    void writeWord(size_t address, Word value);
    void writeDWord(size_t address, DWord value);
    void writeQWord(size_t address, QWord value);
    void writeDouble(size_t address, double value);
    
    // 批量操作
    void load(const std::vector<Byte>& data, size_t offset = 0);
    std::vector<Byte> dump(size_t address, size_t size) const;
    
    // 内存映射
    void mapIO(size_t address, size_t size,
               std::function<Byte(size_t)> read,
               std::function<void(size_t, Byte)> write);
    
    size_t size() const { return data_.size(); }
    
private:
    std::vector<Byte> data_;
    mutable std::mutex mutex_;
    
    void checkAddress(size_t address, size_t size) const;
};

} // namespace vm