#include "vm/instruction.h"
#include "vm/cpu.h"

namespace vm {

Instruction::Instruction(Opcode op, Byte addr_mode,
                         const std::vector<Value>& operands)
    : operands_(operands) {
    format_.opcode = static_cast<Byte>(op);
    format_.addr_mode = addr_mode;
    format_.size = 2 + operands.size() * 8;  // 基础大小 + 操作数
}

Value Instruction::operand(size_t index) const {
    if (index >= operands_.size()) {
        return Value((uint64_t)0);
    }
    return operands_[index];
}

std::vector<Byte> Instruction::encode() const {
    std::vector<Byte> bytes;
    bytes.reserve(format_.size);
    
    bytes.push_back(format_.opcode);
    bytes.push_back(format_.addr_mode);
    
    for (const auto& operand : operands_) {
        const Byte* ptr = reinterpret_cast<const Byte*>(&operand.i);
        bytes.insert(bytes.end(), ptr, ptr + sizeof(QWord));
    }
    
    return bytes;
}

Instruction Instruction::decode(const std::vector<Byte>& bytes) {
    if (bytes.size() < 2) {
        throw std::runtime_error("Invalid instruction bytes");
    }
    
    InstructionFormat format;
    format.opcode = bytes[0];
    format.addr_mode = bytes[1];
    
    std::vector<Value> operands;
    size_t offset = 2;
    
    // 简化解码，实际应根据操作码和寻址模式解析
    while (offset + sizeof(QWord) <= bytes.size()) {
        Value val;
        std::memcpy(&val.i, &bytes[offset], sizeof(QWord));
        operands.push_back(val);
        offset += sizeof(QWord);
    }
    
    return Instruction(static_cast<Opcode>(format.opcode),
                      format.addr_mode, operands);
}

InstructionSet::InstructionSet() : handlers_(256) {
    // 注册默认指令处理器
    registerHandler(OP_NOP, handleNOP);
    registerHandler(OP_HALT, handleHALT);
    registerHandler(OP_ADD, handleADD);
    registerHandler(OP_SUB, handleSUB);
    registerHandler(OP_MUL, handleMUL);
    registerHandler(OP_DIV, handleDIV);
    registerHandler(OP_AND, handleAND);
    registerHandler(OP_OR, handleOR);
    registerHandler(OP_XOR, handleXOR);
    registerHandler(OP_JMP, handleJMP);
    registerHandler(OP_JZ, handleJZ);
    registerHandler(OP_JNZ, handleJNZ);
    registerHandler(OP_CALL, handleCALL);
    registerHandler(OP_RET, handleRET);
    registerHandler(OP_LOAD, handleLOAD);
    registerHandler(OP_STORE, handleSTORE);
    registerHandler(OP_MOV, handleMOV);
    registerHandler(OP_CMP, handleCMP);
    
    // 浮点指令
    registerHandler(OP_FADD, handleFADD);
    registerHandler(OP_FSUB, handleFSUB);
    registerHandler(OP_FMUL, handleFMUL);
    registerHandler(OP_FDIV, handleFDIV);
}

void InstructionSet::registerHandler(Opcode op, InstructionHandler handler) {
    handlers_[static_cast<Byte>(op)] = std::move(handler);
}

InstructionHandler InstructionSet::getHandler(Opcode op) const {
    return handlers_[static_cast<Byte>(op)];
}

// 指令处理器实现
void InstructionSet::handleNOP(CPU& cpu, const Instruction& inst) {
    // 什么也不做
}

void InstructionSet::handleHALT(CPU& cpu, const Instruction& inst) {
    // 标记CPU为停止状态
    // 实际实现中应该设置标志
}

void InstructionSet::handleADD(CPU& cpu, const Instruction& inst) {
    // 简化实现，实际应解析寻址模式
    // 这里假设寄存器-寄存器加法
    auto dst = static_cast<Reg>(inst.addrMode() >> 4);
    auto src = static_cast<Reg>(inst.addrMode() & 0x0F);
    
    QWord a = cpu.getReg(dst);
    QWord b = cpu.getReg(src);
    QWord result = a + b;
    
    cpu.setReg(dst, result);
    cpu.updateFlags(result, a, b, false);
}

void InstructionSet::handleSUB(CPU& cpu, const Instruction& inst) {
    auto dst = static_cast<Reg>(inst.addrMode() >> 4);
    auto src = static_cast<Reg>(inst.addrMode() & 0x0F);
    
    QWord a = cpu.getReg(dst);
    QWord b = cpu.getReg(src);
    QWord result = a - b;
    
    cpu.setReg(dst, result);
    cpu.updateFlags(result, a, b, true);
}

void InstructionSet::handleMUL(CPU& cpu, const Instruction& inst) {
    auto dst = static_cast<Reg>(inst.addrMode() >> 4);
    auto src = static_cast<Reg>(inst.addrMode() & 0x0F);
    
    QWord a = cpu.getReg(dst);
    QWord b = cpu.getReg(src);
    QWord result = a * b;
    
    cpu.setReg(dst, result);
    cpu.setFlag(FLAG_ZERO, result == 0);
    cpu.setFlag(FLAG_SIGN, (result >> 63) & 1);
}

void InstructionSet::handleDIV(CPU& cpu, const Instruction& inst) {
    auto dst = static_cast<Reg>(inst.addrMode() >> 4);
    auto src = static_cast<Reg>(inst.addrMode() & 0x0F);
    
    QWord a = cpu.getReg(dst);
    QWord b = cpu.getReg(src);
    
    if (b == 0) {
        throw std::runtime_error("Division by zero");
    }
    
    QWord result = a / b;
    cpu.setReg(dst, result);
    cpu.setFlag(FLAG_ZERO, result == 0);
}

void InstructionSet::handleAND(CPU& cpu, const Instruction& inst) {
    auto dst = static_cast<Reg>(inst.addrMode() >> 4);
    auto src = static_cast<Reg>(inst.addrMode() & 0x0F);
    
    QWord result = cpu.getReg(dst) & cpu.getReg(src);
    cpu.setReg(dst, result);
    cpu.setFlag(FLAG_ZERO, result == 0);
    cpu.setFlag(FLAG_SIGN, (result >> 63) & 1);
}

void InstructionSet::handleOR(CPU& cpu, const Instruction& inst) {
    auto dst = static_cast<Reg>(inst.addrMode() >> 4);
    auto src = static_cast<Reg>(inst.addrMode() & 0x0F);
    
    QWord result = cpu.getReg(dst) | cpu.getReg(src);
    cpu.setReg(dst, result);
    cpu.setFlag(FLAG_ZERO, result == 0);
    cpu.setFlag(FLAG_SIGN, (result >> 63) & 1);
}

void InstructionSet::handleXOR(CPU& cpu, const Instruction& inst) {
    auto dst = static_cast<Reg>(inst.addrMode() >> 4);
    auto src = static_cast<Reg>(inst.addrMode() & 0x0F);
    
    QWord result = cpu.getReg(dst) ^ cpu.getReg(src);
    cpu.setReg(dst, result);
    cpu.setFlag(FLAG_ZERO, result == 0);
    cpu.setFlag(FLAG_SIGN, (result >> 63) & 1);
}

void InstructionSet::handleJMP(CPU& cpu, const Instruction& inst) {
    QWord target = inst.operand(0).i;
    cpu.setReg(Reg::PC, target);
}

void InstructionSet::handleJZ(CPU& cpu, const Instruction& inst) {
    if (cpu.getFlag(FLAG_ZERO)) {
        QWord target = inst.operand(0).i;
        cpu.setReg(Reg::PC, target);
    }
}

void InstructionSet::handleJNZ(CPU& cpu, const Instruction& inst) {
    if (!cpu.getFlag(FLAG_ZERO)) {
        QWord target = inst.operand(0).i;
        cpu.setReg(Reg::PC, target);
    }
}

void InstructionSet::handleCALL(CPU& cpu, const Instruction& inst) {
    QWord pc = cpu.getReg(Reg::PC);
    cpu.push(pc);
    
    QWord target = inst.operand(0).i;
    cpu.setReg(Reg::PC, target);
}

void InstructionSet::handleRET(CPU& cpu, const Instruction& inst) {
    QWord target = cpu.pop();
    cpu.setReg(Reg::PC, target);
}

void InstructionSet::handleLOAD(CPU& cpu, const Instruction& inst) {
    auto dst = static_cast<Reg>(inst.addrMode() >> 4);
    QWord address = inst.operand(0).i;
    
    QWord value = cpu.memory()->readQWord(address);
    cpu.setReg(dst, value);
}

void InstructionSet::handleSTORE(CPU& cpu, const Instruction& inst) {
    auto src = static_cast<Reg>(inst.addrMode() & 0x0F);
    QWord address = inst.operand(0).i;
    
    QWord value = cpu.getReg(src);
    cpu.memory()->writeQWord(address, value);
}

void InstructionSet::handleMOV(CPU& cpu, const Instruction& inst) {
    auto dst = static_cast<Reg>(inst.addrMode() >> 4);
    auto src = static_cast<Reg>(inst.addrMode() & 0x0F);
    
    QWord value = cpu.getReg(src);
    cpu.setReg(dst, value);
}

void InstructionSet::handleCMP(CPU& cpu, const Instruction& inst) {
    auto dst = static_cast<Reg>(inst.addrMode() >> 4);
    auto src = static_cast<Reg>(inst.addrMode() & 0x0F);
    
    QWord a = cpu.getReg(dst);
    QWord b = cpu.getReg(src);
    QWord result = a - b;
    
    cpu.updateFlags(result, a, b, true);
}

// 浮点指令处理器
void InstructionSet::handleFADD(CPU& cpu, const Instruction& inst) {
    size_t dst = (inst.addrMode() >> 4) & 0x0F;
    size_t src = inst.addrMode() & 0x0F;
    
    double a = cpu.getFReg(dst);
    double b = cpu.getFReg(src);
    double result = a + b;
    
    cpu.setFReg(dst, result);
}

void InstructionSet::handleFSUB(CPU& cpu, const Instruction& inst) {
    size_t dst = (inst.addrMode() >> 4) & 0x0F;
    size_t src = inst.addrMode() & 0x0F;
    
    double a = cpu.getFReg(dst);
    double b = cpu.getFReg(src);
    double result = a - b;
    
    cpu.setFReg(dst, result);
}

void InstructionSet::handleFMUL(CPU& cpu, const Instruction& inst) {
    size_t dst = (inst.addrMode() >> 4) & 0x0F;
    size_t src = inst.addrMode() & 0x0F;
    
    double a = cpu.getFReg(dst);
    double b = cpu.getFReg(src);
    double result = a * b;
    
    cpu.setFReg(dst, result);
}

void InstructionSet::handleFDIV(CPU& cpu, const Instruction& inst) {
    size_t dst = (inst.addrMode() >> 4) & 0x0F;
    size_t src = inst.addrMode() & 0x0F;
    
    double a = cpu.getFReg(dst);
    double b = cpu.getFReg(src);
    
    if (b == 0.0) {
        throw std::runtime_error("Floating point division by zero");
    }
    
    double result = a / b;
    cpu.setFReg(dst, result);
}

} // namespace vm