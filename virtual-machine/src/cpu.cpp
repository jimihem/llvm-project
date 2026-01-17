#include "vm/cpu.h"
#include <iostream>
#include <stdexcept>

namespace vm {

CPU::CPU(std::shared_ptr<Memory> memory, std::shared_ptr<InstructionSet> isa)
    : memory_(std::move(memory))
    , isa_(std::move(isa))
    , regs_(static_cast<size_t>(Reg::COUNT), 0)
    , fregs_(16, 0.0) {
    reset();
}

CPU::~CPU() {
    stop();
}

void CPU::reset() {
    // 重置寄存器
    for (auto& reg : regs_) reg = 0;
    for (auto& freg : fregs_) freg = 0.0;
    
    // 设置初始值
    setReg(Reg::SP, memory_->size() - 1);
    setReg(Reg::BP, memory_->size() - 1);
    setReg(Reg::PC, 0);
    
    halted_ = false;
}

QWord CPU::getReg(Reg reg) const {
    return regs_[static_cast<size_t>(reg)];
}

void CPU::setReg(Reg reg, QWord value) {
    regs_[static_cast<size_t>(reg)] = value;
}

double CPU::getFReg(size_t index) const {
    if (index >= fregs_.size()) {
        throw std::out_of_range("Floating point register index out of range");
    }
    return fregs_[index];
}

void CPU::setFReg(size_t index, double value) {
    if (index >= fregs_.size()) {
        throw std::out_of_range("Floating point register index out of range");
    }
    fregs_[index] = value;
}

bool CPU::getFlag(Flags flag) const {
    return (regs_[static_cast<size_t>(Reg::FLAGS)] & flag) != 0;
}

void CPU::setFlag(Flags flag, bool value) {
    QWord flags = regs_[static_cast<size_t>(Reg::FLAGS)];
    if (value) {
        flags |= flag;
    } else {
        flags &= ~static_cast<QWord>(flag);
    }
    regs_[static_cast<size_t>(Reg::FLAGS)] = flags;
}

void CPU::updateFlags(QWord result, QWord a, QWord b, bool isSub) {
    setFlag(FLAG_ZERO, result == 0);
    setFlag(FLAG_SIGN, (result >> 63) & 1);
    
    // 进位标志
    if (isSub) {
        setFlag(FLAG_CARRY, b > a);
    } else {
        setFlag(FLAG_CARRY, result < a || result < b);
    }
    
    // 溢出标志（简化处理）
    bool a_sign = (a >> 63) & 1;
    bool b_sign = (b >> 63) & 1;
    bool r_sign = (result >> 63) & 1;
    
    if (isSub) {
        setFlag(FLAG_OVERFLOW, a_sign != b_sign && a_sign != r_sign);
    } else {
        setFlag(FLAG_OVERFLOW, a_sign == b_sign && a_sign != r_sign);
    }
}

void CPU::start() {
    if (!running_) {
        running_ = true;
        thread_ = std::thread(&CPU::run, this);
    }
}

void CPU::stop() {
    running_ = false;
    if (thread_.joinable()) {
        thread_.join();
    }
}

void CPU::step() {
    if (halted_) return;
    
    try {
        Instruction inst = fetch();
        execute(inst);
    } catch (const std::exception& e) {
        std::cerr << "CPU execution error: " << e.what() << std::endl;
        halted_ = true;
    }
}

void CPU::run() {
    while (running_ && !halted_) {
        step();
        // 可以在这里添加中断检查、调度等
    }
}

Instruction CPU::fetch() {
    QWord pc = getReg(Reg::PC);
    
    // 读取操作码
    Byte opcode = memory_->readByte(pc);
    
    // 这里简化处理，实际应该根据操作码解码变长指令
    // 为了示例，我们假设所有指令都是固定格式
    
    InstructionFormat format;
    format.opcode = opcode;
    format.addr_mode = memory_->readByte(pc + 1);
    format.size = 2;  // 基础大小
    
    // 更新PC
    setReg(Reg::PC, pc + format.size);
    
    return Instruction(static_cast<Opcode>(opcode), format.addr_mode);
}

void CPU::execute(const Instruction& inst) {
    auto handler = isa_->getHandler(inst.opcode());
    if (handler) {
        handler(*this, inst);
    } else {
        throw std::runtime_error("Unknown instruction");
    }
}

void CPU::push(QWord value) {
    QWord sp = getReg(Reg::SP);
    if (sp < sizeof(QWord)) {
        throw std::runtime_error("Stack overflow");
    }
    sp -= sizeof(QWord);
    memory_->writeQWord(sp, value);
    setReg(Reg::SP, sp);
}

QWord CPU::pop() {
    QWord sp = getReg(Reg::SP);
    if (sp + sizeof(QWord) > memory_->size()) {
        throw std::runtime_error("Stack underflow");
    }
    QWord value = memory_->readQWord(sp);
    sp += sizeof(QWord);
    setReg(Reg::SP, sp);
    return value;
}

void CPU::pushDouble(double value) {
    QWord sp = getReg(Reg::SP);
    if (sp < sizeof(double)) {
        throw std::runtime_error("Stack overflow");
    }
    sp -= sizeof(double);
    memory_->writeDouble(sp, value);
    setReg(Reg::SP, sp);
}

double CPU::popDouble() {
    QWord sp = getReg(Reg::SP);
    if (sp + sizeof(double) > memory_->size()) {
        throw std::runtime_error("Stack underflow");
    }
    double value = memory_->readDouble(sp);
    sp += sizeof(double);
    setReg(Reg::SP, sp);
    return value;
}

} // namespace vm