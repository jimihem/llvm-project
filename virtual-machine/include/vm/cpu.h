#pragma once

#include "common.h"
#include "memory.h"
#include "instruction.h"
#include <vector>
#include <atomic>
#include <thread>
#include <condition_variable>

namespace vm {

class CPU {
public:
    CPU(std::shared_ptr<Memory> memory, std::shared_ptr<InstructionSet> isa);
    ~CPU();
    
    // 禁止拷贝
    CPU(const CPU&) = delete;
    CPU& operator=(const CPU&) = delete;
    
    // 寄存器操作
    QWord getReg(Reg reg) const;
    void setReg(Reg reg, QWord value);
    double getFReg(size_t index) const;
    void setFReg(size_t index, double value);
    
    // 标志位操作
    bool getFlag(Flags flag) const;
    void setFlag(Flags flag, bool value);
    void updateFlags(QWord result, QWord a, QWord b, bool isSub = false);
    
    // CPU控制
    void reset();
    void start();
    void stop();
    void step();
    void run();
    
    // 状态查询
    bool isRunning() const { return running_; }
    bool isHalted() const { return halted_; }
    
    // 线程支持
    void join() { if (thread_.joinable()) thread_.join(); }
    
private:
    // 寄存器
    std::vector<QWord> regs_;
    std::vector<double> fregs_;  // 浮点寄存器
    
    // 组件
    std::shared_ptr<Memory> memory_;
    std::shared_ptr<InstructionSet> isa_;
    
    // 状态
    std::atomic<bool> running_{false};
    std::atomic<bool> halted_{false};
    
    // 执行线程
    std::thread thread_;
    
    // 内部方法
    Instruction fetch();
    void execute(const Instruction& inst);
    
    // 寻址解析
    Value resolveOperand(const Instruction& inst, size_t index, bool isDst = false);
    void writeOperand(const Instruction& inst, size_t index, const Value& value);

  public:
    // 栈操作
    void push(QWord value);
    QWord pop();
    void pushDouble(double value);
    double popDouble();
	std::shared_ptr<Memory> memory() const { return memory_; }
};

} // namespace vm