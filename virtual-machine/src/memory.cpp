#include "vm/memory.h"

namespace vm {

Memory::Memory(size_t size) : data_(size, 0) {}

Byte Memory::readByte(size_t address) const {
    std::lock_guard<std::mutex> lock(mutex_);
    checkAddress(address, sizeof(Byte));
    return data_[address];
}

Word Memory::readWord(size_t address) const {
    std::lock_guard<std::mutex> lock(mutex_);
    checkAddress(address, sizeof(Word));
    Word value = 0;
    std::memcpy(&value, &data_[address], sizeof(Word));
    return value;
}

DWord Memory::readDWord(size_t address) const {
    std::lock_guard<std::mutex> lock(mutex_);
    checkAddress(address, sizeof(DWord));
    DWord value = 0;
    std::memcpy(&value, &data_[address], sizeof(DWord));
    return value;
}

QWord Memory::readQWord(size_t address) const {
    std::lock_guard<std::mutex> lock(mutex_);
    checkAddress(address, sizeof(QWord));
    QWord value = 0;
    std::memcpy(&value, &data_[address], sizeof(QWord));
    return value;
}

double Memory::readDouble(size_t address) const {
    std::lock_guard<std::mutex> lock(mutex_);
    checkAddress(address, sizeof(double));
    double value = 0;
    std::memcpy(&value, &data_[address], sizeof(double));
    return value;
}

void Memory::writeByte(size_t address, Byte value) {
    std::lock_guard<std::mutex> lock(mutex_);
    checkAddress(address, sizeof(Byte));
    data_[address] = value;
}

void Memory::writeWord(size_t address, Word value) {
    std::lock_guard<std::mutex> lock(mutex_);
    checkAddress(address, sizeof(Word));
    std::memcpy(&data_[address], &value, sizeof(Word));
}

void Memory::writeDWord(size_t address, DWord value) {
    std::lock_guard<std::mutex> lock(mutex_);
    checkAddress(address, sizeof(DWord));
    std::memcpy(&data_[address], &value, sizeof(DWord));
}

void Memory::writeQWord(size_t address, QWord value) {
    std::lock_guard<std::mutex> lock(mutex_);
    checkAddress(address, sizeof(QWord));
    std::memcpy(&data_[address], &value, sizeof(QWord));
}

void Memory::writeDouble(size_t address, double value) {
    std::lock_guard<std::mutex> lock(mutex_);
    checkAddress(address, sizeof(double));
    std::memcpy(&data_[address], &value, sizeof(double));
}

void Memory::load(const std::vector<Byte>& data, size_t offset) {
    std::lock_guard<std::mutex> lock(mutex_);
    if (offset + data.size() > data_.size()) {
        throw std::out_of_range("Memory load out of range");
    }
    std::memcpy(&data_[offset], data.data(), data.size());
}

std::vector<Byte> Memory::dump(size_t address, size_t size) const {
    std::lock_guard<std::mutex> lock(mutex_);
    checkAddress(address, size);
    return std::vector<Byte>(data_.begin() + address,
                            data_.begin() + address + size);
}

void Memory::checkAddress(size_t address, size_t size) const {
    if (address + size > data_.size()) {
        throw std::out_of_range("Memory access out of range");
    }
}

void Memory::mapIO(size_t address, size_t size,
                   std::function<Byte(size_t)> read,
                   std::function<void(size_t, Byte)> write) {
    // 这里可以实现内存映射I/O
    // 简化实现：预留接口
}

} // namespace vm