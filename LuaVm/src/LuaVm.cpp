#include <cmath> // 新增：引入数学库头文件
#include <condition_variable>
#include <cstdint>
#include <cstring>
#include <fcntl.h>
#include <fstream>
#include <iostream>
#include <mutex>
#include <thread>
#include <unordered_map>
#include <vector>

// 防止ELF结构体对齐问题
#pragma pack(push, 1)

// ========================== 1. 指令定义 ==========================
// 指令类型枚举
enum class OpCode : uint8_t {
  // 空指令
  NOP,
  // 内存操作指令
  LD,
  ST,
  LB,
  LBU,
  SB,
  LH,
  LHU,
  SH,
  LDD,
  STD,
  // 算术立即数指令
  ADDiu,
  ANDi,
  ORi,
  XORi,
  LUi,
  SLTi,
  SLTiu,
  BEQ,
  BNE,
  // 算术寄存器指令
  ADDu,
  SUBu,
  ADD,
  SUB,
  CLZ,
  CLO,
  MUL,
  AND,
  OR,
  XOR,
  NOR,
  ROL,
  ROR,
  SHL,
  SHR,
  SRA,
  SRAV,
  SHLV,
  SHRV,
  ROLV,
  RORV,
  SLT,
  SLTu,
  CMP,
  CMPu,
  MULT,
  MULTU,
  DIV,
  DIVU,
  MFHI,
  MFLO,
  MTHI,
  MTLO,
  // 双精度浮点指令
  ADDD,
  SUBD,
  MULD,
  DIVD,
  NEGD,
  ABSD,
  SQRD,
  CMPD,
  MOVD,
  CVTWD,
  CVTDW,
  CVTUDW,
  CVTDUW,
  // 控制流指令
  JEQ,
  JNE,
  JLT,
  JGT,
  JLE,
  JGE,
  JMP,
  JALR,
  BAL,
  JSUB,
  RET,
  // 扩展指令
  SYSCALL, // 系统调用
  DEBUG    // 调试指令
};

// 指令格式分类
enum class InstrFormat {
  R_TYPE, // 寄存器型 (opcode+rs+rt+rd+shamt+funct)
  I_TYPE, // 立即数型 (opcode+rs+rt+immediate)
  J_TYPE, // 跳转型 (opcode+address)
  F_TYPE, // 浮点型 (opcode+fs+ft+fd+funct)
  M_TYPE, // 内存型 (opcode+base+rt+offset)
  S_TYPE  // 系统调用/调试型
};

// R型指令位域定义 (32位)
struct RTypeInstr {
  uint32_t funct : 6;  // 功能码
  uint32_t shamt : 5;  // 移位量
  uint32_t rd : 5;     // 目标寄存器
  uint32_t rt : 5;     // 源寄存器2
  uint32_t rs : 5;     // 源寄存器1
  uint32_t opcode : 6; // 操作码
};

// I型指令位域定义 (32位)
struct ITypeInstr {
  uint32_t imm : 16;   // 立即数
  uint32_t rt : 5;     // 目标/源寄存器2
  uint32_t rs : 5;     // 源寄存器1
  uint32_t opcode : 6; // 操作码
};

// J型指令位域定义 (32位)
struct JTypeInstr {
  uint32_t addr : 26;  // 跳转地址
  uint32_t opcode : 6; // 操作码
};

// F型浮点指令位域定义 (32位)
struct FTypeInstr {
  uint32_t funct : 6;  // 功能码
  uint32_t fd : 5;     // 目标浮点寄存器
  uint32_t ft : 5;     // 源浮点寄存器2
  uint32_t fs : 5;     // 源浮点寄存器1
  uint32_t opcode : 6; // 操作码
  uint32_t pad : 5;    // 填充
};

// M型内存指令位域定义 (32位)
struct MTypeInstr {
  uint32_t offset : 16; // 偏移量
  uint32_t rt : 5;      // 目标寄存器
  uint32_t base : 5;    // 基址寄存器
  uint32_t opcode : 6;  // 操作码
};

// 通用指令联合体 (覆盖所有格式)
union Instruction {
  uint32_t raw;      // 原始32位指令
  RTypeInstr r_type; // R型
  ITypeInstr i_type; // I型
  JTypeInstr j_type; // J型
  FTypeInstr f_type; // F型
  MTypeInstr m_type; // M型
};

#pragma pack(pop)

// ========================== 2. 内存模块 (带同步) ==========================
class Memory {
private:
  std::vector<uint8_t> mem;                       // 内存空间
  mutable std::mutex mem_mutex;                   // 内存读写锁
  const size_t MAX_MEM_SIZE = 1024 * 1024 * 1024; // 1GB最大内存

public:
  Memory(size_t initial_size = 1024 * 1024) : mem(initial_size, 0) {}

  // 内存扩容
  void resize(size_t new_size) {
    std::lock_guard<std::mutex> lock(mem_mutex);
    if (new_size > MAX_MEM_SIZE)
      new_size = MAX_MEM_SIZE;
    mem.resize(new_size, 0);
  }

  // 读取字节
  uint8_t read_byte(uint64_t addr) const {
    std::lock_guard<std::mutex> lock(mem_mutex);
    if (addr >= mem.size())
      return 0;
    return mem[addr];
  }

  // 读取半字 (16位)
  uint16_t read_half(uint64_t addr) const {
    uint16_t val = 0;
    std::lock_guard<std::mutex> lock(mem_mutex);
    if (addr + 1 < mem.size()) {
      val = (mem[addr] << 8) | mem[addr + 1];
    }
    return val;
  }

  // 读取字 (32位)
  uint32_t read_word(uint64_t addr) const {
    uint32_t val = 0;
    std::lock_guard<std::mutex> lock(mem_mutex);
    if (addr + 3 < mem.size()) {
      val = (mem[addr] << 24) | (mem[addr + 1] << 16) | (mem[addr + 2] << 8) |
            mem[addr + 3];
    }
    return val;
  }

  // 读取双精度浮点数 (64位)
  double read_double(uint64_t addr) const {
    double val = 0.0;
    std::lock_guard<std::mutex> lock(mem_mutex);
    if (addr + 7 < mem.size()) {
      std::memcpy(&val, &mem[addr], sizeof(double));
    }
    return val;
  }

  // 写入字节
  void write_byte(uint64_t addr, uint8_t val) {
    std::lock_guard<std::mutex> lock(mem_mutex);
    if (addr >= mem.size())
      resize(addr + 1);
    mem[addr] = val;
  }

  // 写入半字
  void write_half(uint64_t addr, uint16_t val) {
    std::lock_guard<std::mutex> lock(mem_mutex);
    if (addr + 1 >= mem.size())
      resize(addr + 2);
    mem[addr] = (val >> 8) & 0xFF;
    mem[addr + 1] = val & 0xFF;
  }

  // 写入字
  void write_word(uint64_t addr, uint32_t val) {
    std::lock_guard<std::mutex> lock(mem_mutex);
    if (addr + 3 >= mem.size())
      resize(addr + 4);
    mem[addr] = (val >> 24) & 0xFF;
    mem[addr + 1] = (val >> 16) & 0xFF;
    mem[addr + 2] = (val >> 8) & 0xFF;
    mem[addr + 3] = val & 0xFF;
  }

  // 写入双精度浮点数
  void write_double(uint64_t addr, double val) {
    std::lock_guard<std::mutex> lock(mem_mutex);
    if (addr + 7 >= mem.size())
      resize(addr + 8);
    std::memcpy(&mem[addr], &val, sizeof(double));
  }

  // 批量写入内存 (用于加载ELF段)
  void write_block(uint64_t addr, const uint8_t *data, size_t size) {
    std::lock_guard<std::mutex> lock(mem_mutex);
    if (addr + size > mem.size())
      resize(addr + size);
    std::memcpy(&mem[addr], data, size);
  }

  size_t get_size() const {
    std::lock_guard<std::mutex> lock(mem_mutex);
    return mem.size();
  }
};

// ========================== 3. CPU执行单元 ==========================
class CPU {
public:
  // 寄存器定义
  static const int INT_REG_COUNT = 16;   // 16个32位整数寄存器
  static const int FLOAT_REG_COUNT = 32; // 32个双精度浮点寄存器

  uint32_t int_regs[INT_REG_COUNT] = {0};     // 整数寄存器
  double float_regs[FLOAT_REG_COUNT] = {0.0}; // 浮点寄存器
  uint32_t hi_reg = 0;        // HI寄存器 (乘法/除法高位)
  uint32_t lo_reg = 0;        // LO寄存器 (乘法/除法低位)
  uint64_t pc = 0;            // 程序计数器
  bool running = false;       // 运行状态
  bool paused = false;        // 暂停状态
  std::thread exec_thread;    // 执行线程
  std::mutex cpu_mutex;       // CPU状态锁
  std::condition_variable cv; // 条件变量 (暂停/继续)
  Memory *mem = nullptr;      // 内存指针

  CPU(Memory *memory) : mem(memory) {}
  ~CPU() { stop(); }

  // 设置起始PC
  void set_start_pc(uint64_t start_pc) {
    std::lock_guard<std::mutex> lock(cpu_mutex);
    pc = start_pc;
  }

  // 启动执行
  void start() {
    std::lock_guard<std::mutex> lock(cpu_mutex);
    if (running)
      return;
    running = true;
    paused = false;
    exec_thread = std::thread(&CPU::run, this);
  }

  // 停止执行
  void stop() {
    {
      std::lock_guard<std::mutex> lock(cpu_mutex);
      running = false;
    }
    cv.notify_one();
    if (exec_thread.joinable()) {
      exec_thread.join();
    }
  }

  // 暂停执行
  void pause() {
    std::lock_guard<std::mutex> lock(cpu_mutex);
    paused = true;
  }

  // 继续执行
  void resume() {
    {
      std::lock_guard<std::mutex> lock(cpu_mutex);
      paused = false;
    }
    cv.notify_one();
  }

  // 核心执行循环
  void run() {
    while (true) {
      // 检查暂停状态
      std::unique_lock<std::mutex> lock(cpu_mutex);
      cv.wait(lock, [this]() { return !paused || !running; });
      if (!running)
        break;
      lock.unlock();

      // 读取当前指令
      Instruction instr;
      instr.raw = mem->read_word(pc);
      if (instr.raw == 0 &&
          static_cast<OpCode>(instr.r_type.opcode) == OpCode::NOP) {
        pc += 4; // NOP指令，PC+4
        continue;
      }

      // 执行指令
      execute_instruction(instr);

      // PC自增 (跳转指令会覆盖此值)
      pc += 4;
    }
  }

  // 核心指令执行函数
  void execute_instruction(const Instruction &instr) {
    OpCode opcode = static_cast<OpCode>(instr.r_type.opcode);
    switch (opcode) {
    case OpCode::NOP:
      // 空指令，无操作
      break;

    // ---------------- 内存操作指令 ----------------
    case OpCode::LD: { // 加载字
      uint64_t addr = int_regs[instr.m_type.base] +
                      static_cast<int16_t>(instr.m_type.offset);
      int_regs[instr.m_type.rt] = mem->read_word(addr);
      break;
    }
    case OpCode::ST: { // 存储字
      uint64_t addr = int_regs[instr.m_type.base] +
                      static_cast<int16_t>(instr.m_type.offset);
      mem->write_word(addr, int_regs[instr.m_type.rt]);
      break;
    }
    case OpCode::LB: { // 加载字节 (有符号)
      uint64_t addr = int_regs[instr.m_type.base] +
                      static_cast<int16_t>(instr.m_type.offset);
      int8_t val = static_cast<int8_t>(mem->read_byte(addr));
      int_regs[instr.m_type.rt] = static_cast<int32_t>(val);
      break;
    }
    case OpCode::LBU: { // 加载字节 (无符号)
      uint64_t addr = int_regs[instr.m_type.base] +
                      static_cast<int16_t>(instr.m_type.offset);
      int_regs[instr.m_type.rt] = static_cast<uint32_t>(mem->read_byte(addr));
      break;
    }
    case OpCode::SB: { // 存储字节
      uint64_t addr = int_regs[instr.m_type.base] +
                      static_cast<int16_t>(instr.m_type.offset);
      mem->write_byte(addr,
                      static_cast<uint8_t>(int_regs[instr.m_type.rt] & 0xFF));
      break;
    }
    case OpCode::LH: { // 加载半字 (有符号)
      uint64_t addr = int_regs[instr.m_type.base] +
                      static_cast<int16_t>(instr.m_type.offset);
      int16_t val = static_cast<int16_t>(mem->read_half(addr));
      int_regs[instr.m_type.rt] = static_cast<int32_t>(val);
      break;
    }
    case OpCode::LHU: { // 加载半字 (无符号)
      uint64_t addr = int_regs[instr.m_type.base] +
                      static_cast<int16_t>(instr.m_type.offset);
      int_regs[instr.m_type.rt] = static_cast<uint32_t>(mem->read_half(addr));
      break;
    }
    case OpCode::SH: { // 存储半字
      uint64_t addr = int_regs[instr.m_type.base] +
                      static_cast<int16_t>(instr.m_type.offset);
      mem->write_half(
          addr, static_cast<uint16_t>(int_regs[instr.m_type.rt] & 0xFFFF));
      break;
    }
    case OpCode::LDD: { // 加载双精度浮点数
      uint64_t addr = int_regs[instr.m_type.base] +
                      static_cast<int16_t>(instr.m_type.offset);
      float_regs[instr.m_type.rt] = mem->read_double(addr);
      break;
    }
    case OpCode::STD: { // 存储双精度浮点数
      uint64_t addr = int_regs[instr.m_type.base] +
                      static_cast<int16_t>(instr.m_type.offset);
      mem->write_double(addr, float_regs[instr.m_type.rt]);
      break;
    }

    // ---------------- 算术立即数指令 ----------------
    case OpCode::ADDiu: { // 立即数加法 (无溢出)
      int32_t rs_val = static_cast<int32_t>(int_regs[instr.i_type.rs]);
      int32_t imm_val = static_cast<int16_t>(instr.i_type.imm);
      int_regs[instr.i_type.rt] = static_cast<uint32_t>(rs_val + imm_val);
      break;
    }
    case OpCode::ANDi: { // 立即数与
      int_regs[instr.i_type.rt] =
          int_regs[instr.i_type.rs] & static_cast<uint32_t>(instr.i_type.imm);
      break;
    }
    case OpCode::ORi: { // 立即数或
      int_regs[instr.i_type.rt] =
          int_regs[instr.i_type.rs] | static_cast<uint32_t>(instr.i_type.imm);
      break;
    }
    case OpCode::XORi: { // 立即数异或
      int_regs[instr.i_type.rt] =
          int_regs[instr.i_type.rs] ^ static_cast<uint32_t>(instr.i_type.imm);
      break;
    }
    case OpCode::LUi: { // 加载高位立即数
      int_regs[instr.i_type.rt] = static_cast<uint32_t>(instr.i_type.imm) << 16;
      break;
    }
    case OpCode::SLTi: { // 立即数小于则置1 (有符号)
      int32_t rs_val = static_cast<int32_t>(int_regs[instr.i_type.rs]);
      int32_t imm_val = static_cast<int16_t>(instr.i_type.imm);
      int_regs[instr.i_type.rt] = (rs_val < imm_val) ? 1 : 0;
      break;
    }
    case OpCode::SLTiu: { // 立即数小于则置1 (无符号)
      uint32_t rs_val = int_regs[instr.i_type.rs];
      uint32_t imm_val = static_cast<uint16_t>(instr.i_type.imm);
      int_regs[instr.i_type.rt] = (rs_val < imm_val) ? 1 : 0;
      break;
    }
    case OpCode::BEQ: { // 相等则分支
      if (int_regs[instr.i_type.rs] == int_regs[instr.i_type.rt]) {
        pc += static_cast<int16_t>(instr.i_type.imm) * 4;
      }
      break;
    }
    case OpCode::BNE: { // 不相等则分支
      if (int_regs[instr.i_type.rs] != int_regs[instr.i_type.rt]) {
        pc += static_cast<int16_t>(instr.i_type.imm) * 4;
      }
      break;
    }

    // ---------------- 算术寄存器指令 ----------------
    case OpCode::ADDu: { // 寄存器加法 (无溢出)
      int_regs[instr.r_type.rd] =
          int_regs[instr.r_type.rs] + int_regs[instr.r_type.rt];
      break;
    }
    case OpCode::SUBu: { // 寄存器减法 (无溢出)
      int_regs[instr.r_type.rd] =
          int_regs[instr.r_type.rs] - int_regs[instr.r_type.rt];
      break;
    }
    case OpCode::ADD: { // 寄存器加法 (有溢出，简化实现：仅检查溢出)
      int32_t a = static_cast<int32_t>(int_regs[instr.r_type.rs]);
      int32_t b = static_cast<int32_t>(int_regs[instr.r_type.rt]);
      int32_t res = a + b;
      // 溢出检查 (简单实现)
      if (((a ^ res) & (b ^ res)) & 0x80000000) {
        std::cerr << "ADD instruction overflow!" << std::endl;
      }
      int_regs[instr.r_type.rd] = static_cast<uint32_t>(res);
      break;
    }
    case OpCode::SUB: { // 寄存器减法 (有溢出)
      int32_t a = static_cast<int32_t>(int_regs[instr.r_type.rs]);
      int32_t b = static_cast<int32_t>(int_regs[instr.r_type.rt]);
      int32_t res = a - b;
      if (((a ^ b) & (a ^ res)) & 0x80000000) {
        std::cerr << "SUB instruction overflow!" << std::endl;
      }
      int_regs[instr.r_type.rd] = static_cast<uint32_t>(res);
      break;
    }
    case OpCode::CLZ: { // 前导零计数
      uint32_t val = int_regs[instr.r_type.rs];
      int count = 0;
      for (int i = 31; i >= 0; --i) {
        if ((val >> i) & 1)
          break;
        count++;
      }
      int_regs[instr.r_type.rd] = count;
      break;
    }
    case OpCode::CLO: { // 前导一计数
      uint32_t val = int_regs[instr.r_type.rs];
      int count = 0;
      for (int i = 31; i >= 0; --i) {
        if (!((val >> i) & 1))
          break;
        count++;
      }
      int_regs[instr.r_type.rd] = count;
      break;
    }
    case OpCode::MUL: { // 32位乘法
      uint32_t a = int_regs[instr.r_type.rs];
      uint32_t b = int_regs[instr.r_type.rt];
      int_regs[instr.r_type.rd] = a * b;
      break;
    }
    case OpCode::AND: { // 寄存器与
      int_regs[instr.r_type.rd] =
          int_regs[instr.r_type.rs] & int_regs[instr.r_type.rt];
      break;
    }
    case OpCode::OR: { // 寄存器或
      int_regs[instr.r_type.rd] =
          int_regs[instr.r_type.rs] | int_regs[instr.r_type.rt];
      break;
    }
    case OpCode::XOR: { // 寄存器异或
      int_regs[instr.r_type.rd] =
          int_regs[instr.r_type.rs] ^ int_regs[instr.r_type.rt];
      break;
    }
    case OpCode::NOR: { // 寄存器或非
      int_regs[instr.r_type.rd] =
          ~(int_regs[instr.r_type.rs] | int_regs[instr.r_type.rt]);
      break;
    }
    case OpCode::ROL: { // 循环左移 (立即数)
      uint32_t val = int_regs[instr.r_type.rs];
      int shamt = instr.r_type.shamt;
      int_regs[instr.r_type.rd] = (val << shamt) | (val >> (32 - shamt));
      break;
    }
    case OpCode::ROR: { // 循环右移 (立即数)
      uint32_t val = int_regs[instr.r_type.rs];
      int shamt = instr.r_type.shamt;
      int_regs[instr.r_type.rd] = (val >> shamt) | (val << (32 - shamt));
      break;
    }
    case OpCode::SHL: { // 逻辑左移 (立即数)
      int_regs[instr.r_type.rd] = int_regs[instr.r_type.rs]
                                  << instr.r_type.shamt;
      break;
    }
    case OpCode::SHR: { // 逻辑右移 (立即数)
      int_regs[instr.r_type.rd] =
          int_regs[instr.r_type.rs] >> instr.r_type.shamt;
      break;
    }
    case OpCode::SRA: { // 算术右移 (立即数)
      int32_t val = static_cast<int32_t>(int_regs[instr.r_type.rs]);
      int_regs[instr.r_type.rd] =
          static_cast<uint32_t>(val >> instr.r_type.shamt);
      break;
    }
    case OpCode::SRAV: { // 算术右移 (寄存器)
      int32_t val = static_cast<int32_t>(int_regs[instr.r_type.rs]);
      int shamt = int_regs[instr.r_type.rt] & 0x1F; // 取低5位
      int_regs[instr.r_type.rd] = static_cast<uint32_t>(val >> shamt);
      break;
    }
    case OpCode::SHLV: { // 逻辑左移 (寄存器)
      int shamt = int_regs[instr.r_type.rt] & 0x1F;
      int_regs[instr.r_type.rd] = int_regs[instr.r_type.rs] << shamt;
      break;
    }
    case OpCode::SHRV: { // 逻辑右移 (寄存器)
      int shamt = int_regs[instr.r_type.rt] & 0x1F;
      int_regs[instr.r_type.rd] = int_regs[instr.r_type.rs] >> shamt;
      break;
    }
    case OpCode::ROLV: { // 循环左移 (寄存器)
      uint32_t val = int_regs[instr.r_type.rs];
      int shamt = int_regs[instr.r_type.rt] & 0x1F;
      int_regs[instr.r_type.rd] = (val << shamt) | (val >> (32 - shamt));
      break;
    }
    case OpCode::RORV: { // 循环右移 (寄存器)
      uint32_t val = int_regs[instr.r_type.rs];
      int shamt = int_regs[instr.r_type.rt] & 0x1F;
      int_regs[instr.r_type.rd] = (val >> shamt) | (val << (32 - shamt));
      break;
    }
    case OpCode::SLT: { // 小于则置1 (有符号)
      int32_t a = static_cast<int32_t>(int_regs[instr.r_type.rs]);
      int32_t b = static_cast<int32_t>(int_regs[instr.r_type.rt]);
      int_regs[instr.r_type.rd] = (a < b) ? 1 : 0;
      break;
    }
    case OpCode::SLTu: { // 小于则置1 (无符号)
      uint32_t a = int_regs[instr.r_type.rs];
      uint32_t b = int_regs[instr.r_type.rt];
      int_regs[instr.r_type.rd] = (a < b) ? 1 : 0;
      break;
    }
    case OpCode::CMP: { // 有符号比较 (结果存在flags，简化：存到rd)
      int32_t a = static_cast<int32_t>(int_regs[instr.r_type.rs]);
      int32_t b = static_cast<int32_t>(int_regs[instr.r_type.rt]);
      if (a == b)
        int_regs[instr.r_type.rd] = 0;
      else if (a < b)
        int_regs[instr.r_type.rd] = 1;
      else
        int_regs[instr.r_type.rd] = 2;
      break;
    }
    case OpCode::CMPu: { // 无符号比较
      uint32_t a = int_regs[instr.r_type.rs];
      uint32_t b = int_regs[instr.r_type.rt];
      if (a == b)
        int_regs[instr.r_type.rd] = 0;
      else if (a < b)
        int_regs[instr.r_type.rd] = 1;
      else
        int_regs[instr.r_type.rd] = 2;
      break;
    }
    case OpCode::MULT: { // 64位乘法 (有符号)
      int64_t a = static_cast<int32_t>(int_regs[instr.r_type.rs]);
      int64_t b = static_cast<int32_t>(int_regs[instr.r_type.rt]);
      int64_t res = a * b;
      hi_reg = static_cast<uint32_t>((res >> 32) & 0xFFFFFFFF);
      lo_reg = static_cast<uint32_t>(res & 0xFFFFFFFF);
      break;
    }
    case OpCode::MULTU: { // 64位乘法 (无符号)
      uint64_t a = int_regs[instr.r_type.rs];
      uint64_t b = int_regs[instr.r_type.rt];
      uint64_t res = a * b;
      hi_reg = static_cast<uint32_t>((res >> 32) & 0xFFFFFFFF);
      lo_reg = static_cast<uint32_t>(res & 0xFFFFFFFF);
      break;
    }
    case OpCode::DIV: { // 除法 (有符号)
      int32_t a = static_cast<int32_t>(int_regs[instr.r_type.rs]);
      int32_t b = static_cast<int32_t>(int_regs[instr.r_type.rt]);
      if (b == 0) {
        std::cerr << "DIV division by zero!" << std::endl;
        break;
      }
      lo_reg = static_cast<uint32_t>(a / b);
      hi_reg = static_cast<uint32_t>(a % b);
      break;
    }
    case OpCode::DIVU: { // 除法 (无符号)
      uint32_t a = int_regs[instr.r_type.rs];
      uint32_t b = int_regs[instr.r_type.rt];
      if (b == 0) {
        std::cerr << "DIVU division by zero!" << std::endl;
        break;
      }
      lo_reg = a / b;
      hi_reg = a % b;
      break;
    }
    case OpCode::MFHI: { // 从HI寄存器读取
      int_regs[instr.r_type.rd] = hi_reg;
      break;
    }
    case OpCode::MFLO: { // 从LO寄存器读取
      int_regs[instr.r_type.rd] = lo_reg;
      break;
    }
    case OpCode::MTHI: { // 写入HI寄存器
      hi_reg = int_regs[instr.r_type.rs];
      break;
    }
    case OpCode::MTLO: { // 写入LO寄存器
      lo_reg = int_regs[instr.r_type.rs];
      break;
    }

    // ---------------- 双精度浮点指令 ----------------
    case OpCode::ADDD: { // 双精度加法
      float_regs[instr.f_type.fd] =
          float_regs[instr.f_type.fs] + float_regs[instr.f_type.ft];
      break;
    }
    case OpCode::SUBD: { // 双精度减法
      float_regs[instr.f_type.fd] =
          float_regs[instr.f_type.fs] - float_regs[instr.f_type.ft];
      break;
    }
    case OpCode::MULD: { // 双精度乘法
      float_regs[instr.f_type.fd] =
          float_regs[instr.f_type.fs] * float_regs[instr.f_type.ft];
      break;
    }
    case OpCode::DIVD: { // 双精度除法
      if (float_regs[instr.f_type.ft] == 0.0) {
        std::cerr << "DIVD division by zero!" << std::endl;
        break;
      }
      float_regs[instr.f_type.fd] =
          float_regs[instr.f_type.fs] / float_regs[instr.f_type.ft];
      break;
    }
    case OpCode::NEGD: { // 双精度取反
      float_regs[instr.f_type.fd] = -float_regs[instr.f_type.fs];
      break;
    }
    case OpCode::ABSD: { // 双精度绝对值
      float_regs[instr.f_type.fd] = std::abs(float_regs[instr.f_type.fs]);
      break;
    }
    case OpCode::SQRD: { // 双精度平方根
      if (float_regs[instr.f_type.fs] < 0.0) {
        std::cerr << "SQRD square root of negative number!" << std::endl;
        break;
      }
      float_regs[instr.f_type.fd] = std::sqrt(float_regs[instr.f_type.fs]);
      break;
    }
    case OpCode::CMPD: { // 双精度比较
      double a = float_regs[instr.f_type.fs];
      double b = float_regs[instr.f_type.ft];
      if (a == b)
        float_regs[instr.f_type.fd] = 0;
      else if (a < b)
        float_regs[instr.f_type.fd] = 1;
      else
        float_regs[instr.f_type.fd] = 2;
      break;
    }
    case OpCode::MOVD: { // 双精度移动
      float_regs[instr.f_type.fd] = float_regs[instr.f_type.fs];
      break;
    }
    case OpCode::CVTWD: { // 字转双精度
      float_regs[instr.f_type.fd] =
          static_cast<double>(static_cast<int32_t>(int_regs[instr.r_type.rs]));
      break;
    }
    case OpCode::CVTDW: { // 双精度转字
      int_regs[instr.r_type.rd] = static_cast<uint32_t>(
          static_cast<int32_t>(float_regs[instr.f_type.fs]));
      break;
    }
    case OpCode::CVTUDW: { // 无符号字转双精度
      float_regs[instr.f_type.fd] =
          static_cast<double>(int_regs[instr.r_type.rs]);
      break;
    }
    case OpCode::CVTDUW: { // 双精度转无符号字
      int_regs[instr.r_type.rd] =
          static_cast<uint32_t>(float_regs[instr.f_type.fs]);
      break;
    }

    // ---------------- 控制流指令 ----------------
    case OpCode::JEQ: { // 等于则跳转
      if (int_regs[instr.i_type.rs] == int_regs[instr.i_type.rt]) {
        pc = static_cast<uint64_t>(instr.j_type.addr) * 4;
      }
      break;
    }
    case OpCode::JNE: { // 不等于则跳转
      if (int_regs[instr.i_type.rs] != int_regs[instr.i_type.rt]) {
        pc = static_cast<uint64_t>(instr.j_type.addr) * 4;
      }
      break;
    }
    case OpCode::JLT: { // 小于则跳转
      if (static_cast<int32_t>(int_regs[instr.i_type.rs]) <
          static_cast<int32_t>(int_regs[instr.i_type.rt])) {
        pc = static_cast<uint64_t>(instr.j_type.addr) * 4;
      }
      break;
    }
    case OpCode::JGT: { // 大于则跳转
      if (static_cast<int32_t>(int_regs[instr.i_type.rs]) >
          static_cast<int32_t>(int_regs[instr.i_type.rt])) {
        pc = static_cast<uint64_t>(instr.j_type.addr) * 4;
      }
      break;
    }
    case OpCode::JLE: { // 小于等于则跳转
      if (static_cast<int32_t>(int_regs[instr.i_type.rs]) <=
          static_cast<int32_t>(int_regs[instr.i_type.rt])) {
        pc = static_cast<uint64_t>(instr.j_type.addr) * 4;
      }
      break;
    }
    case OpCode::JGE: { // 大于等于则跳转
      if (static_cast<int32_t>(int_regs[instr.i_type.rs]) >=
          static_cast<int32_t>(int_regs[instr.i_type.rt])) {
        pc = static_cast<uint64_t>(instr.j_type.addr) * 4;
      }
      break;
    }
    case OpCode::JMP: { // 无条件跳转
      pc = static_cast<uint64_t>(instr.j_type.addr) * 4;
      break;
    }
    case OpCode::JALR: {     // 间接调用 (链接)
      int_regs[15] = pc + 4; // 返回地址存到r15
      pc = int_regs[instr.r_type.rs];
      break;
    }
    case OpCode::BAL: { // 分支并链接
      int_regs[15] = pc + 4;
      pc += static_cast<int16_t>(instr.i_type.imm) * 4;
      break;
    }
    case OpCode::JSUB: { // 跳转子程序
      int_regs[15] = pc + 4;
      pc = static_cast<uint64_t>(instr.j_type.addr) * 4;
      break;
    }
    case OpCode::RET: { // 返回
      pc = int_regs[15];
      break;
    }

    // ---------------- 扩展指令 ----------------
    case OpCode::SYSCALL: { // 系统调用 (加载新程序)
      // r0: 程序路径地址, r1: 起始PC
      uint64_t path_addr = int_regs[0];
      uint64_t new_pc = int_regs[1];

      // 读取程序路径
      std::string path;
      char c;
      uint64_t addr = path_addr;
      while ((c = mem->read_byte(addr)) != 0) {
        path += c;
        addr++;
      }

      // 调用LuaVM的ELF加载接口 (需要LuaVM指针，简化：此处仅打印)
      std::cout << "SYSCALL: Loading program " << path << " at PC " << new_pc
                << std::endl;
      // 实际实现需将CPU指针传递给LuaVM，调用load_elf
      break;
    }
    case OpCode::DEBUG: { // 调试指令 (打印寄存器状态)
      std::cout << "=== DEBUG: PC = " << pc << " ===" << std::endl;
      std::cout << "Integer Registers:" << std::endl;
      for (int i = 0; i < INT_REG_COUNT; ++i) {
        std::cout << "r" << i << ": 0x" << std::hex << int_regs[i] << std::dec
                  << std::endl;
      }
      std::cout << "HI: 0x" << std::hex << hi_reg << ", LO: 0x" << lo_reg
                << std::dec << std::endl;
      std::cout << "-------------------------" << std::endl;
      break;
    }

    default:
      std::cerr << "Unimplemented opcode: " << static_cast<int>(opcode)
                << " at PC: " << pc << std::endl;
      running = false;
      break;
    }
  }
};

// ========================== 4. LuaVM核心 ==========================
class LuaVM {
private:
  Memory memory;                          // 内存模块
  std::vector<std::unique_ptr<CPU>> cpus; // CPU容器
  std::mutex vm_mutex;                    // LuaVM锁

public:
  LuaVM() = default;

  // 加载ELF文件
  bool load_elf(const std::string &elf_path, uint64_t &entry_pc) {
    
    return true;
  }

  // 创建新CPU并加载ELF执行
  CPU *create_cpu_with_elf(const std::string &elf_path) {
    std::lock_guard<std::mutex> lock(vm_mutex);

    // 加载ELF文件
    uint64_t entry_pc = 0;
    if (!load_elf(elf_path, entry_pc)) {
      return nullptr;
    }

    // 创建新CPU
    auto cpu = std::make_unique<CPU>(&memory);
    cpu->set_start_pc(entry_pc);
    cpu->start();

    // 添加到CPU容器
    CPU *cpu_ptr = cpu.get();
    cpus.push_back(std::move(cpu));
    return cpu_ptr;
  }

  // 获取内存引用
  Memory &get_memory() { return memory; }

  // 获取CPU列表
  std::vector<CPU *> get_cpus() {
    std::lock_guard<std::mutex> lock(vm_mutex);
    std::vector<CPU *> res;
    for (auto &cpu : cpus) {
      res.push_back(cpu.get());
    }
    return res;
  }

  // 停止所有CPU
  void stop_all_cpus() {
    std::lock_guard<std::mutex> lock(vm_mutex);
    for (auto &cpu : cpus) {
      cpu->stop();
    }
    cpus.clear();
  }
};

// ========================== 5. 测试代码 ==========================
int main() {
  // 创建LuaVM
  LuaVM vm;

  // 示例：加载ELF文件 (替换为实际ELF路径)
  std::string elf_path = "test.elf";
  CPU *cpu = vm.create_cpu_with_elf(elf_path);
  if (cpu) {
    std::cout << "CPU created, running ELF: " << elf_path << std::endl;

    // 运行一段时间后暂停
    std::this_thread::sleep_for(std::chrono::seconds(5));
    cpu->pause();
    std::cout << "CPU paused" << std::endl;

    // 继续运行
    std::this_thread::sleep_for(std::chrono::seconds(2));
    cpu->resume();
    std::cout << "CPU resumed" << std::endl;

    // 最终停止
    std::this_thread::sleep_for(std::chrono::seconds(5));
    vm.stop_all_cpus();
    std::cout << "All CPUs stopped" << std::endl;
  } else {
    std::cerr << "Failed to create CPU with ELF file" << std::endl;
  }

  return 0;
}
