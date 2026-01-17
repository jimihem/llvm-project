#pragma once

#include "cpu.h"
#include "memory.h"
#include "instruction.h"
#include <vector>
#include <memory>

namespace vm {

class VirtualMachine {
public:
    VirtualMachine(size_t memorySize = 64 * 1024, size_t cpuCount = 1);
    
    // CPU管理
    size_t createCPU();
    CPU& getCPU(size_t index);
    size_t cpuCount() const { return cpus_.size(); }
    
    // 内存管理
    std::shared_ptr<Memory> memory() { return memory_; }
    
    // 程序加载
    void loadProgram(const std::vector<Byte>& program, size_t offset = 0);
    void loadProgramFromFile(const std::string& filename, size_t offset = 0);
    
    // 虚拟机控制
    void startAll();
    void stopAll();
    void resetAll();
    
    // 扩展指令集
    void extendInstructionSet(Opcode op, InstructionHandler handler);
    
private:
    std::shared_ptr<Memory> memory_;
    std::shared_ptr<InstructionSet> isa_;
    std::vector<std::unique_ptr<CPU>> cpus_;
};

} // namespace vm