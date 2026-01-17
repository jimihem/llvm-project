#pragma once

#include "common.h"
#include <vector>
#include <functional>
#include <memory>

namespace vm {

class CPU;
class Instruction;

// 指令处理器类型
using InstructionHandler = std::function<void(CPU&, const Instruction&)>;

// 变长指令
class Instruction {
public:
    Instruction(Opcode op, Byte addr_mode = 0,
                const std::vector<Value>& operands = {});
    
    Opcode opcode() const { return static_cast<Opcode>(format_.opcode); }
    Byte addrMode() const { return format_.addr_mode; }
    Byte size() const { return format_.size; }
    
    const std::vector<Value>& operands() const { return operands_; }
    Value operand(size_t index) const;
    
    // 编码/解码
    std::vector<Byte> encode() const;
    static Instruction decode(const std::vector<Byte>& bytes);
    
private:
    InstructionFormat format_;
    std::vector<Value> operands_;
};

// 指令集
class InstructionSet {
public:
    InstructionSet();
    
    void registerHandler(Opcode op, InstructionHandler handler);
    InstructionHandler getHandler(Opcode op) const;
    
    // 预定义指令处理器
    static void handleNOP(CPU& cpu, const Instruction& inst);
    static void handleHALT(CPU& cpu, const Instruction& inst);
    static void handleADD(CPU& cpu, const Instruction& inst);
    static void handleSUB(CPU& cpu, const Instruction& inst);
    static void handleMUL(CPU& cpu, const Instruction& inst);
    static void handleDIV(CPU& cpu, const Instruction& inst);
    static void handleAND(CPU& cpu, const Instruction& inst);
    static void handleOR(CPU& cpu, const Instruction& inst);
    static void handleXOR(CPU& cpu, const Instruction& inst);
    static void handleJMP(CPU& cpu, const Instruction& inst);
    static void handleJZ(CPU& cpu, const Instruction& inst);
    static void handleJNZ(CPU& cpu, const Instruction& inst);
    static void handleCALL(CPU& cpu, const Instruction& inst);
    static void handleRET(CPU& cpu, const Instruction& inst);
    static void handleLOAD(CPU& cpu, const Instruction& inst);
    static void handleSTORE(CPU& cpu, const Instruction& inst);
    static void handleMOV(CPU& cpu, const Instruction& inst);
    static void handleCMP(CPU& cpu, const Instruction& inst);
    
    // 浮点指令
    static void handleFADD(CPU& cpu, const Instruction& inst);
    static void handleFSUB(CPU& cpu, const Instruction& inst);
    static void handleFMUL(CPU& cpu, const Instruction& inst);
    static void handleFDIV(CPU& cpu, const Instruction& inst);
    
private:
    std::vector<InstructionHandler> handlers_;
};

} // namespace vm