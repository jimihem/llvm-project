#include "vm/vm.h"
#include <fstream>
#include <stdexcept>

namespace vm {

VirtualMachine::VirtualMachine(size_t memorySize, size_t cpuCount)
    : memory_(std::make_shared<Memory>(memorySize))
    , isa_(std::make_shared<InstructionSet>()) {
    
    // 创建指定数量的CPU
    for (size_t i = 0; i < cpuCount; ++i) {
        cpus_.push_back(std::make_unique<CPU>(memory_, isa_));
    }
}

size_t VirtualMachine::createCPU() {
    cpus_.push_back(std::make_unique<CPU>(memory_, isa_));
    return cpus_.size() - 1;
}

CPU& VirtualMachine::getCPU(size_t index) {
    if (index >= cpus_.size()) {
        throw std::out_of_range("CPU index out of range");
    }
    return *cpus_[index];
}

void VirtualMachine::loadProgram(const std::vector<Byte>& program, size_t offset) {
    memory_->load(program, offset);
    
    // 重置所有CPU的PC到程序起始位置
    for (auto& cpu : cpus_) {
        cpu->setReg(Reg::PC, offset);
    }
}

void VirtualMachine::loadProgramFromFile(const std::string& filename, size_t offset) {
    std::ifstream file(filename, std::ios::binary | std::ios::ate);
    if (!file) {
        throw std::runtime_error("Cannot open file: " + filename);
    }
    
    std::streamsize size = file.tellg();
    file.seekg(0, std::ios::beg);
    
    std::vector<Byte> buffer(size);
    if (!file.read(reinterpret_cast<char*>(buffer.data()), size)) {
        throw std::runtime_error("Cannot read file: " + filename);
    }
    
    loadProgram(buffer, offset);
}

void VirtualMachine::startAll() {
    for (auto& cpu : cpus_) {
        cpu->start();
    }
}

void VirtualMachine::stopAll() {
    for (auto& cpu : cpus_) {
        cpu->stop();
    }
}

void VirtualMachine::resetAll() {
    for (auto& cpu : cpus_) {
        cpu->reset();
    }
}

void VirtualMachine::extendInstructionSet(Opcode op, InstructionHandler handler) {
    isa_->registerHandler(op, std::move(handler));
}

} // namespace vm