#pragma once

#include <cstdint>
#include <cstddef>
#include <vector>
#include <functional>
#include <memory>

namespace vm {

// 基础类型定义
using Byte = uint8_t;
using Word = uint16_t;
using DWord = uint32_t;
using QWord = uint64_t;

// 寄存器索引
enum class Reg {
    R0, R1, R2, R3, R4, R5, R6, R7,
    R8, R9, R10, R11, R12, R13, R14, R15,
    PC,  // 程序计数器
    SP,  // 栈指针
    BP,  // 基址指针
    FLAGS, // 标志寄存器
    COUNT
};

// 标志位
enum Flags {
    FLAG_ZERO = 1 << 0,    // 零标志
    FLAG_CARRY = 1 << 1,   // 进位标志
    FLAG_OVERFLOW = 1 << 2, // 溢出标志
    FLAG_SIGN = 1 << 3,    // 符号标志
    FLAG_INTERRUPT = 1 << 7 // 中断使能
};

// 操作码（可变长度）
enum Opcode : Byte {
    // 系统指令
    OP_NOP = 0x00,
    OP_HALT = 0x01,
    OP_SYSCALL = 0x02,
    
    // 整数运算
    OP_ADD = 0x10,
    OP_SUB = 0x11,
    OP_MUL = 0x12,
    OP_DIV = 0x13,
    OP_MOD = 0x14,
    OP_AND = 0x15,
    OP_OR = 0x16,
    OP_XOR = 0x17,
    OP_SHL = 0x18,
    OP_SHR = 0x19,
    OP_NEG = 0x1A,
    OP_NOT = 0x1B,
    OP_INC = 0x1C,
    OP_DEC = 0x1D,
    
    // 浮点运算
    OP_FADD = 0x20,
    OP_FSUB = 0x21,
    OP_FMUL = 0x22,
    OP_FDIV = 0x23,
    OP_FNEG = 0x24,
    
    // 内存操作
    OP_LOAD = 0x30,
    OP_STORE = 0x31,
    OP_PUSH = 0x32,
    OP_POP = 0x33,
    OP_MOV = 0x34,
    
    // 控制流
    OP_JMP = 0x40,
    OP_JZ = 0x41,
    OP_JNZ = 0x42,
    OP_JC = 0x43,
    OP_JNC = 0x44,
    OP_CALL = 0x45,
    OP_RET = 0x46,
    
    // 比较指令
    OP_CMP = 0x50,
    OP_TEST = 0x51,
    OP_FCMP = 0x52,
    
    // I/O 指令（预留）
    OP_IN = 0x60,
    OP_OUT = 0x61,
    
    // 扩展指令
    OP_EXT = 0xFF  // 扩展操作码前缀
};

// 寻址模式
enum AddrMode : Byte {
    AM_REG = 0x00,     // 寄存器
    AM_IMM = 0x01,     // 立即数
    AM_MEM = 0x02,     // 内存
    AM_REG_IND = 0x03, // 寄存器间接
    AM_DISP = 0x04     // 带位移
};

// 指令格式
struct InstructionFormat {
    Byte opcode;
    Byte addr_mode;  // 高4位为dst，低4位为src
    Byte size;       // 指令总大小
};

// 统一值类型
union Value {
    QWord i;
    double f;
    
    Value() : i(0) {}
    explicit Value(QWord v) : i(v) {}
    explicit Value(double v) : f(v) {}
};

} // namespace vm