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
  LD = 0b00000001,  // 加载i32
  ST = 0b00000010,  // 存储i32
  LH = 0b00000011,  // 加载i16
  SH = 0b00000100,  // 存储i16
  LB = 0b00000101,  // 加载i8
  SB = 0b00000110,  // 存储i8
  LDD = 0b00000111, // 加载double
  STD = 0b00001000, // 存储double
  LD_PIC = 0b00001001,  // 加载i32
  ST_PIC = 0b00001010, // 存储i32
  LH_PIC = 0b00001011, // 加载i16
  SH_PIC = 0b00001100, // 存储i16
  LB_PIC = 0b00001101, // 加载i8
  SB_PIC = 0b00001110, // 存储i8
  LDD_PIC = 0b00001111, // 加载double
  STD_PIC = 0b00010000, // 存储double
  // 算术立即数指令
  ADDi = 0b00100000,  // 有符号+，寄存器+立即数
  SUBi = 0b00100001,  // 有符号-，寄存器-立即数
  MULi = 0b00100100,  // 有符号*, 寄存器*立即数
  DIVi = 0b00100101,  // 有符号/, 寄存器/立即数
  ADDiu = 0b00100110, // 无符号+，寄存器+立即数
  SUBiu = 0b00100111, // 无符号-，寄存器-立即数
  MULiu = 0b00101010, // 无符号*, 寄存器*立即数
  DIViu = 0b00101011, // 无符号/, 寄存器/立即数

  ANDi = 0b00101100, // 寄存器&立即数
  ORi = 0b00101101,  // 寄存器|立即数
  XORi = 0b00101110, // 寄存器^立即数
  NORi = 0b00101111, //!(寄存器|立即数)

  CMPi = 0b00110000,  // 有符号比较，寄存器和立即数比较
  CMPiu = 0b00110001, // 无符号比较，寄存器和立即数比较

  SHLi = 0b00110010, // 寄存器<<立即数
  SHRi = 0b00110011, // 寄存器>>立即数
  SRAi = 0b00110100, // 算术右移，寄存器>>立即数
  MOVi = 0b00110101,

  // 算术寄存器指令
  ADD = 0b01000001, // 有符号+，寄存器+寄存器
  SUB = 0b01000010, // 有符号-，寄存器-寄存器
  MUL = 0b01000101, // 有符号*，寄存器*寄存器
  DIV = 0b01000110, // 有符号/，寄存器/寄存器

  ADDu = 0b01000111, // 无符号+，寄存器+寄存器
  SUBu = 0b01001000, // 无符号-，寄存器-寄存器
  MULu = 0b01001011, // 无符号*，寄存器*寄存器
  DIVu = 0b01001100, // 无符号/，寄存器/寄存器

  AND = 0b01001101, // 寄存器&寄存器
  OR = 0b01001110,  // 寄存器|寄存器
  XOR = 0b01001111, // 寄存器^寄存器
  NOT = 0b01010000, // ！寄存器
  NOR = 0b01010001, //!(寄存器|寄存器)

  CMP = 0b01010010,  // 有符号比较，寄存器和寄存器比较
  CMPu = 0b01010011, // 无符号比较，寄存器和寄存器比较

  SHL = 0b01010110, // 寄存器<<寄存器
  SHR = 0b01010111, // 寄存器>>寄存器
  SRA = 0b01011000, // 算术右移，寄存器>>寄存器
  SELCT = 0b01011001,

  // 双精度浮点指令，都是寄存器之间的运算
  ADDD = 0b01100000, // +
  SUBD = 0b01100001, // -
  MULD = 0b01100010, // *
  DIVD = 0b01100011, // /
  NEGD = 0b01100100, // -
  ABSD = 0b01100101, // 绝对值
  SQRD = 0b01100110, // 开平方
  CMPD = 0b01100111, // 比较
  MOVD = 0b01101000, // double寄存器复制
  SELCTD = 0b01101001,

  // 控制流指令,根据状态字的flag决定是否跳转
  JEQ = 0b10000000,
  JNE = 0b10000001,
  JLT = 0b10000010,
  JGT = 0b10000011,
  JLE = 0b10000100,
  JGE = 0b10000101,
  JMP = 0b10000110,
  JALR = 0b10000111,
  JSUB = 0b10001000,
  RET = 0b10001001,
  JIND = 0b10001010,
  JALR_PIC = 0b10001011,
  JSUB_PIC = 0b10001100,
  // 扩展指令
  SYSCALL = 0b10100000, // 系统调用
  DEBUG = 0b10100001    // 调试指令

};

enum class Cond {
    EQ, LT, LE, GT, GE, NE
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
  uint32_t pad : 9;    // 功能码
  uint32_t rd : 5;     // 目标寄存器
  uint32_t rt : 5;     // 源寄存器2
  uint32_t rs : 5;     // 源寄存器1
  uint32_t opcode : 8; // 操作码
};

// I型指令位域定义 (32位)
struct ITypeInstr {
  uint32_t imm : 14;   // 立即数
  uint32_t rt : 5;     // 目标/源寄存器2
  uint32_t rs : 5;     // 源寄存器1
  uint32_t opcode : 8; // 操作码
};

// J型指令位域定义 (32位)
struct JTypeInstr {
  uint32_t addr : 24;  // 跳转地址
  uint32_t opcode : 8; // 操作码
};

// F型浮点指令位域定义 (32位)
struct FTypeInstr {
  uint32_t pad : 9;   // 填充
  uint32_t fd : 5;     // 目标浮点寄存器
  uint32_t ft : 5;     // 源浮点寄存器2
  uint32_t fs : 5;     // 源浮点寄存器1
  uint32_t opcode : 8; // 操作码
};

// M型内存指令位域定义 (32位)
struct MTypeInstr {
  uint32_t offset : 14; // 偏移量
  uint32_t rt : 5;      // 目标寄存器
  uint32_t base : 5;    // 基址寄存器
  uint32_t opcode : 8;  // 操作码
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
  // 状态标志寄存器
  struct StatusFlags {
    bool zero : 1;          // 零标志
    bool sign : 1;          // 符号标志
    bool overflow : 1;      // 溢出标志
    bool carry : 1;         // 进位/借位标志
    uint32_t reserved : 28; // 保留位
  };

  // 寄存器定义
  static const int INT_REG_COUNT = 16;   // 16个32位整数寄存器
  static const int FLOAT_REG_COUNT = 32; // 32个双精度浮点寄存器

  uint32_t int_regs[INT_REG_COUNT] = {0};     // 整数寄存器
  double float_regs[FLOAT_REG_COUNT] = {0.0}; // 浮点寄存器
  uint32_t hi_reg = 0; // HI寄存器 (乘法/除法高位)
  uint32_t lo_reg = 0; // LO寄存器 (乘法/除法低位)
  StatusFlags flags = {false, false, false, false}; // 状态标志寄存器
  uint64_t pc = 0;                                  // 程序计数器
  bool running = false;                             // 运行状态
  bool paused = false;                              // 暂停状态
  std::thread exec_thread;                          // 执行线程
  std::mutex cpu_mutex;                             // CPU状态锁
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

    // ---------------- 内存操作指令 (M_TYPE) ----------------
    case OpCode::LD: { // 加载i32
      uint64_t addr = int_regs[instr.m_type.base] +
                      static_cast<int16_t>(instr.m_type.offset);
      int_regs[instr.m_type.rt] = mem->read_word(addr);
      break;
    }
    case OpCode::ST: { // 存储i32
      uint64_t addr = int_regs[instr.m_type.base] +
                      static_cast<int16_t>(instr.m_type.offset);
      mem->write_word(addr, int_regs[instr.m_type.rt]);
      break;
    }
    case OpCode::LH: { // 加载i16
      uint64_t addr = int_regs[instr.m_type.base] +
                      static_cast<int16_t>(instr.m_type.offset);
      // 注意：这里的读取实现取决于您是大端还是小端，这里假设小端
      int_regs[instr.m_type.rt] = static_cast<uint32_t>(mem->read_half(addr));
      break;
    }
    case OpCode::SH: { // 存储i16
      uint64_t addr = int_regs[instr.m_type.base] +
                      static_cast<int16_t>(instr.m_type.offset);
      mem->write_half(
          addr, static_cast<uint16_t>(int_regs[instr.m_type.rt] & 0xFFFF));
      break;
    }
    case OpCode::LB: { // 加载i8
      uint64_t addr = int_regs[instr.m_type.base] +
                      static_cast<int16_t>(instr.m_type.offset);
      int_regs[instr.m_type.rt] = static_cast<uint32_t>(mem->read_byte(addr));
      break;
    }
    case OpCode::SB: { // 存储i8
      uint64_t addr = int_regs[instr.m_type.base] +
                      static_cast<int16_t>(instr.m_type.offset);
      mem->write_byte(addr,
                      static_cast<uint8_t>(int_regs[instr.m_type.rt] & 0xFF));
      break;
    }
    case OpCode::LDD: { // 加载double
      uint64_t addr = int_regs[instr.m_type.base] +
                      static_cast<int16_t>(instr.m_type.offset);
      float_regs[instr.m_type.rt] = mem->read_double(addr);
      break;
    }
    case OpCode::STD: { // 存储double
      uint64_t addr = int_regs[instr.m_type.base] +
                      static_cast<int16_t>(instr.m_type.offset);
      mem->write_double(addr, float_regs[instr.m_type.rt]);
      break;
    }

    // ---------------- 算术立即数指令 (I_TYPE) ----------------
    case OpCode::ADDi: { // 有符号加法，寄存器+立即数
      int32_t a = static_cast<int32_t>(int_regs[instr.i_type.rs]);
      int32_t b = static_cast<int16_t>(instr.i_type.imm);
      int64_t full_res = static_cast<int64_t>(a) + b;
      int32_t res = static_cast<int32_t>(full_res);

      int_regs[instr.i_type.rt] = static_cast<uint32_t>(res);
      flags.overflow = (full_res != res);
      flags.zero = (res == 0);
      flags.sign = (res < 0);
      flags.carry = (full_res != static_cast<int64_t>(res));
      break;
    }
    case OpCode::SUBi: { // 有符号减法，寄存器-立即数
      int32_t a = static_cast<int32_t>(int_regs[instr.i_type.rs]);
      int32_t b = static_cast<int16_t>(instr.i_type.imm);
      int64_t full_res = static_cast<int64_t>(a) - b;
      int32_t res = static_cast<int32_t>(full_res);

      int_regs[instr.i_type.rt] = static_cast<uint32_t>(res);
      flags.overflow = (full_res != res);
      flags.zero = (res == 0);
      flags.sign = (res < 0);
      flags.carry = (full_res != static_cast<int64_t>(res));
      break;
    }
    case OpCode::MULi: { // 有符号乘法，寄存器*立即数
      int32_t a = static_cast<int32_t>(int_regs[instr.i_type.rs]);
      int32_t b = static_cast<int16_t>(instr.i_type.imm);
      int64_t full_res = static_cast<int64_t>(a) * b;
      int32_t res = static_cast<int32_t>(full_res);

      int_regs[instr.i_type.rt] = static_cast<uint32_t>(res);
      flags.overflow = (full_res != res);
      flags.zero = (res == 0);
      flags.sign = (res < 0);
      break;
    }
    case OpCode::DIVi: { // 有符号除法，寄存器/立即数
      int32_t a = static_cast<int32_t>(int_regs[instr.i_type.rs]);
      int32_t b = static_cast<int16_t>(instr.i_type.imm);
      if (b == 0) {
        std::cerr << "Division by zero error in DIVi!" << std::endl;
        running = false;
        break;
      }
      int32_t res = a / b;
      int_regs[instr.i_type.rt] = static_cast<uint32_t>(res);
      flags.overflow = false; // 除法一般不设置溢出标志
      flags.zero = (res == 0);
      flags.sign = (res < 0);
      break;
    }
    case OpCode::ADDiu: { // 无符号加法，寄存器+立即数
      uint32_t a = int_regs[instr.i_type.rs];
      uint32_t b = static_cast<uint32_t>(
          static_cast<int16_t>(instr.i_type.imm)); // 符号扩展后转为无符号
      uint32_t result = a + b;

      int_regs[instr.i_type.rt] = result;
      flags.zero = (result == 0);
      flags.sign = (static_cast<int32_t>(result) < 0);
      flags.carry = (result < a); // 简单的无符号进位判断
      break;
    }
    case OpCode::SUBiu: { // 无符号减法，寄存器-立即数
      uint32_t a = int_regs[instr.i_type.rs];
      uint32_t b =
          static_cast<uint32_t>(static_cast<int16_t>(instr.i_type.imm));
      uint32_t result = a - b;

      int_regs[instr.i_type.rt] = result;
      flags.zero = (result == 0);
      flags.sign = (static_cast<int32_t>(result) < 0);
      flags.carry = (result > a); // 简单的无符号借位判断
      break;
    }
    case OpCode::MULiu: { // 无符号乘法，寄存器*立即数
      uint32_t a = int_regs[instr.i_type.rs];
      uint32_t b =
          static_cast<uint32_t>(static_cast<int16_t>(instr.i_type.imm));
      uint64_t full_res = static_cast<uint64_t>(a) * b;
      uint32_t res = static_cast<uint32_t>(full_res);

      int_regs[instr.i_type.rt] = res;
      flags.zero = (res == 0);
      flags.sign = (static_cast<int32_t>(res) < 0);
      flags.overflow = (full_res != res);
      break;
    }
    case OpCode::DIViu: { // 无符号除法，寄存器/立即数
      uint32_t a = int_regs[instr.i_type.rs];
      uint32_t b =
          static_cast<uint32_t>(static_cast<int16_t>(instr.i_type.imm));
      if (b == 0) {
        std::cerr << "Division by zero error in DIViu!" << std::endl;
        running = false;
        break;
      }
      uint32_t res = a / b;
      int_regs[instr.i_type.rt] = res;
      flags.overflow = false;
      flags.zero = (res == 0);
      flags.sign = (static_cast<int32_t>(res) < 0);
      break;
    }
    case OpCode::ANDi: { // 寄存器&立即数
      uint32_t result =
          int_regs[instr.i_type.rs] & static_cast<uint32_t>(instr.i_type.imm);
      int_regs[instr.i_type.rt] = result;
      flags.zero = (result == 0);
      flags.sign = (static_cast<int32_t>(result) < 0);
      break;
    }
    case OpCode::ORi: { // 寄存器|立即数
      uint32_t result =
          int_regs[instr.i_type.rs] | static_cast<uint32_t>(instr.i_type.imm);
      int_regs[instr.i_type.rt] = result;
      flags.zero = (result == 0);
      flags.sign = (static_cast<int32_t>(result) < 0);
      break;
    }
    case OpCode::XORi: { // 寄存器^立即数
      uint32_t result =
          int_regs[instr.i_type.rs] ^ static_cast<uint32_t>(instr.i_type.imm);
      int_regs[instr.i_type.rt] = result;
      flags.zero = (result == 0);
      flags.sign = (static_cast<int32_t>(result) < 0);
      break;
    }
    case OpCode::NORi: { // !(寄存器|立即数)
      uint32_t result = ~(int_regs[instr.i_type.rs] |
                          static_cast<uint32_t>(instr.i_type.imm));
      int_regs[instr.i_type.rt] = result;
      flags.zero = (result == 0);
      flags.sign = (static_cast<int32_t>(result) < 0);
      break;
    }
    case OpCode::CMPi: { // 有符号比较，寄存器和立即数比较
      int32_t a = static_cast<int32_t>(int_regs[instr.i_type.rs]);
      int32_t b = static_cast<int16_t>(instr.i_type.imm);
      int32_t result = a - b;
      flags.zero = (result == 0);
      flags.sign = (result < 0);
      flags.overflow = 0; // 简化，实际需更精确计算
      flags.carry =
          (static_cast<uint32_t>(a) < static_cast<uint32_t>(b)); // 作为借位
      break;
    }
    case OpCode::CMPiu: { // 无符号比较，寄存器和立即数比较
      uint32_t a = int_regs[instr.i_type.rs];
      uint32_t b =
          static_cast<uint32_t>(static_cast<int16_t>(instr.i_type.imm));
      uint32_t result = a - b;
      flags.zero = (result == 0);
      flags.sign = (static_cast<int32_t>(result) < 0);
      flags.carry = (a < b);  // 无符号比较的借位标志
      flags.overflow = false; // 无符号比较不考虑溢出
      break;
    }
    case OpCode::SHLi: {                   // 寄存器<<立即数
      int shamt = instr.i_type.imm & 0x1F; // 取低5位作为移位量
      uint32_t result = int_regs[instr.i_type.rs] << shamt;
      int_regs[instr.i_type.rt] = result;
      flags.zero = (result == 0);
      flags.sign = (static_cast<int32_t>(result) < 0);
      break;
    }
    case OpCode::SHRi: { // 寄存器>>立即数 (逻辑右移)
      int shamt = instr.i_type.imm & 0x1F;
      uint32_t result = int_regs[instr.i_type.rs] >> shamt;
      int_regs[instr.i_type.rt] = result;
      flags.zero = (result == 0);
      flags.sign = (static_cast<int32_t>(result) < 0);
      break;
    }
    case OpCode::SRAi: { // 算术右移，寄存器>>立即数
      int shamt = instr.i_type.imm & 0x1F;
      int32_t val = static_cast<int32_t>(int_regs[instr.i_type.rs]);
      int32_t result = val >> shamt;
      int_regs[instr.i_type.rt] = static_cast<uint32_t>(result);
      flags.zero = (result == 0);
      flags.sign = (result < 0);
      break;
    }

    // ---------------- 算术寄存器指令 (R_TYPE) ----------------
    case OpCode::ADD: { // 有符号+，寄存器+寄存器
      int32_t a = static_cast<int32_t>(int_regs[instr.r_type.rs]);
      int32_t b = static_cast<int32_t>(int_regs[instr.r_type.rt]);
      int64_t full_res = static_cast<int64_t>(a) + b;
      int32_t res = static_cast<int32_t>(full_res);

      int_regs[instr.r_type.rd] = static_cast<uint32_t>(res);
      flags.overflow = (full_res != res);
      flags.zero = (res == 0);
      flags.sign = (res < 0);
      flags.carry = (full_res != static_cast<int64_t>(res));
      break;
    }
    case OpCode::SUB: { // 有符号-，寄存器-寄存器
      int32_t a = static_cast<int32_t>(int_regs[instr.r_type.rs]);
      int32_t b = static_cast<int32_t>(int_regs[instr.r_type.rt]);
      int64_t full_res = static_cast<int64_t>(a) - b;
      int32_t res = static_cast<int32_t>(full_res);

      int_regs[instr.r_type.rd] = static_cast<uint32_t>(res);
      flags.overflow = (full_res != res);
      flags.zero = (res == 0);
      flags.sign = (res < 0);
      flags.carry = (full_res != static_cast<int64_t>(res));
      break;
    }
    case OpCode::MUL: { // 有符号*，寄存器*寄存器
      int32_t a = static_cast<int32_t>(int_regs[instr.r_type.rs]);
      int32_t b = static_cast<int32_t>(int_regs[instr.r_type.rt]);
      int64_t full_res = static_cast<int64_t>(a) * b;
      int32_t res = static_cast<int32_t>(full_res);

      int_regs[instr.r_type.rd] = static_cast<uint32_t>(res);
      flags.overflow = (full_res != res);
      flags.zero = (res == 0);
      flags.sign = (res < 0);
      break;
    }
    case OpCode::DIV: { // 有符号/，寄存器/寄存器
      int32_t a = static_cast<int32_t>(int_regs[instr.r_type.rs]);
      int32_t b = static_cast<int32_t>(int_regs[instr.r_type.rt]);
      if (b == 0) {
        std::cerr << "Division by zero error in DIV!" << std::endl;
        running = false;
        break;
      }
      int32_t res = a / b;
      int_regs[instr.r_type.rd] = static_cast<uint32_t>(res);
      flags.overflow = false;
      flags.zero = (res == 0);
      flags.sign = (res < 0);
      break;
    }
    case OpCode::ADDu: { // 无符号+，寄存器+寄存器
      uint32_t a = int_regs[instr.r_type.rs];
      uint32_t b = int_regs[instr.r_type.rt];
      uint32_t result = a + b;

      int_regs[instr.r_type.rd] = result;
      flags.zero = (result == 0);
      flags.sign = (static_cast<int32_t>(result) < 0);
      flags.carry = (result < a);
      break;
    }
    case OpCode::SUBu: { // 无符号-，寄存器-寄存器
      uint32_t a = int_regs[instr.r_type.rs];
      uint32_t b = int_regs[instr.r_type.rt];
      uint32_t result = a - b;

      int_regs[instr.r_type.rd] = result;
      flags.zero = (result == 0);
      flags.sign = (static_cast<int32_t>(result) < 0);
      flags.carry = (result > a);
      break;
    }
    case OpCode::MULu: { // 无符号*，寄存器*寄存器
      uint32_t a = int_regs[instr.r_type.rs];
      uint32_t b = int_regs[instr.r_type.rt];
      uint64_t full_res = static_cast<uint64_t>(a) * b;
      uint32_t res = static_cast<uint32_t>(full_res);

      int_regs[instr.r_type.rd] = res;
      flags.zero = (res == 0);
      flags.sign = (static_cast<int32_t>(res) < 0);
      flags.overflow = (full_res != res);
      break;
    }
    case OpCode::DIVu: { // 无符号/，寄存器/寄存器
      uint32_t a = int_regs[instr.r_type.rs];
      uint32_t b = int_regs[instr.r_type.rt];
      if (b == 0) {
        std::cerr << "Division by zero error in DIVu!" << std::endl;
        running = false;
        break;
      }
      uint32_t res = a / b;
      int_regs[instr.r_type.rd] = res;
      flags.overflow = false;
      flags.zero = (res == 0);
      flags.sign = (static_cast<int32_t>(res) < 0);
      break;
    }
    case OpCode::AND: { // 寄存器&寄存器
      uint32_t result = int_regs[instr.r_type.rs] & int_regs[instr.r_type.rt];
      int_regs[instr.r_type.rd] = result;
      flags.zero = (result == 0);
      flags.sign = (static_cast<int32_t>(result) < 0);
      break;
    }
    case OpCode::OR: { // 寄存器|寄存器
      uint32_t result = int_regs[instr.r_type.rs] | int_regs[instr.r_type.rt];
      int_regs[instr.r_type.rd] = result;
      flags.zero = (result == 0);
      flags.sign = (static_cast<int32_t>(result) < 0);
      break;
    }
    case OpCode::XOR: { // 寄存器^寄存器
      uint32_t result = int_regs[instr.r_type.rs] ^ int_regs[instr.r_type.rt];
      int_regs[instr.r_type.rd] = result;
      flags.zero = (result == 0);
      flags.sign = (static_cast<int32_t>(result) < 0);
      break;
    }
    case OpCode::NOT: { // ！寄存器
      uint32_t result = ~int_regs[instr.r_type.rs];
      int_regs[instr.r_type.rd] = result;
      flags.zero = (result == 0);
      flags.sign = (static_cast<int32_t>(result) < 0);
      break;
    }
    case OpCode::NOR: { // !(寄存器|寄存器)
      uint32_t result =
          ~(int_regs[instr.r_type.rs] | int_regs[instr.r_type.rt]);
      int_regs[instr.r_type.rd] = result;
      flags.zero = (result == 0);
      flags.sign = (static_cast<int32_t>(result) < 0);
      break;
    }
    case OpCode::CMP: { // 有符号比较，寄存器和寄存器比较
      int32_t a = static_cast<int32_t>(int_regs[instr.r_type.rs]);
      int32_t b = static_cast<int32_t>(int_regs[instr.r_type.rt]);
      int32_t result = a - b;
      flags.zero = (result == 0);
      flags.sign = (result < 0);
      flags.overflow = 0; // 简化，实际需更精确计算
      flags.carry =
          (static_cast<uint32_t>(a) < static_cast<uint32_t>(b)); // 作为借位
      break;
    }
    case OpCode::CMPu: { // 无符号比较，寄存器和寄存器比较
      uint32_t a = int_regs[instr.r_type.rs];
      uint32_t b = int_regs[instr.r_type.rt];
      uint32_t result = a - b;
      flags.zero = (result == 0);
      flags.sign = (static_cast<int32_t>(result) < 0);
      flags.carry = (a < b);  // 无符号比较的借位标志
      flags.overflow = false; // 无符号比较不考虑溢出
      break;
    }
    case OpCode::SHL: {                             // 寄存器<<寄存器
      int shamt = int_regs[instr.r_type.rt] & 0x1F; // 取低5位
      uint32_t result = int_regs[instr.r_type.rs] << shamt;
      int_regs[instr.r_type.rd] = result;
      flags.zero = (result == 0);
      flags.sign = (static_cast<int32_t>(result) < 0);
      break;
    }
    case OpCode::SHR: { // 寄存器>>寄存器 (逻辑右移)
      int shamt = int_regs[instr.r_type.rt] & 0x1F;
      uint32_t result = int_regs[instr.r_type.rs] >> shamt;
      int_regs[instr.r_type.rd] = result;
      flags.zero = (result == 0);
      flags.sign = (static_cast<int32_t>(result) < 0);
      break;
    }
    case OpCode::SRA: { // 算术右移，寄存器>>寄存器
      int shamt = int_regs[instr.r_type.rt] & 0x1F;
      int32_t val = static_cast<int32_t>(int_regs[instr.r_type.rs]);
      int32_t result = val >> shamt;
      int_regs[instr.r_type.rd] = static_cast<uint32_t>(result);
      flags.zero = (result == 0);
      flags.sign = (result < 0);
      break;
    }

    // ---------------- 双精度浮点指令 (F_TYPE) ----------------
    case OpCode::ADDD: { // +
      float_regs[instr.f_type.fd] =
          float_regs[instr.f_type.fs] + float_regs[instr.f_type.ft];
      break;
    }
    case OpCode::SUBD: { // -
      float_regs[instr.f_type.fd] =
          float_regs[instr.f_type.fs] - float_regs[instr.f_type.ft];
      break;
    }
    case OpCode::MULD: { // *
      float_regs[instr.f_type.fd] =
          float_regs[instr.f_type.fs] * float_regs[instr.f_type.ft];
      break;
    }
    case OpCode::DIVD: { // /
      if (float_regs[instr.f_type.ft] == 0.0) {
        std::cerr << "Division by zero error in DIVD!" << std::endl;
        running = false;
        break;
      }
      float_regs[instr.f_type.fd] =
          float_regs[instr.f_type.fs] / float_regs[instr.f_type.ft];
      break;
    }
    case OpCode::NEGD: { // -
      float_regs[instr.f_type.fd] = -float_regs[instr.f_type.fs];
      break;
    }
    case OpCode::ABSD: { // 绝对值
      float_regs[instr.f_type.fd] = std::abs(float_regs[instr.f_type.fs]);
      break;
    }
    case OpCode::SQRD: { // 开平方
      if (float_regs[instr.f_type.fs] < 0.0) {
        std::cerr << "Square root of negative number error in SQRD!"
                  << std::endl;
        running = false;
        break;
      }
      float_regs[instr.f_type.fd] = std::sqrt(float_regs[instr.f_type.fs]);
      break;
    }
    case OpCode::CMPD: { // 比较
      double a = float_regs[instr.f_type.fs];
      double b = float_regs[instr.f_type.ft];
      flags.zero = (a == b);
      flags.sign = (a < b);
      // 浮点数比较的其他标志可以进一步扩展
      break;
    }
    case OpCode::MOVD: { // double寄存器复制
      float_regs[instr.f_type.fd] = float_regs[instr.f_type.fs];
      break;
    }

    // ---------------- 控制流指令 (J_TYPE) ----------------
    case OpCode::JEQ: { // 相等则跳转 (基于Z标志)
      if (flags.zero) {
        pc = static_cast<uint64_t>(instr.j_type.addr) * 4;
      } else {
        pc += 4; // 如果不跳转，需要补偿在run循环中增加的4
      }
      return; // 跳转后直接返回，不执行pc+=4
    }
    case OpCode::JNE: { // 不等则跳转 (基于Z标志)
      if (!flags.zero) {
        pc = static_cast<uint64_t>(instr.j_type.addr) * 4;
      } else {
        pc += 4; // 如果不跳转，需要补偿在run循环中增加的4
      }
      return; // 跳转后直接返回，不执行pc+=4
    }
    case OpCode::JLT: { // 小于则跳转 (基于S和O标志)
      // 对于有符号数，小于当且仅当 S != O
      if (flags.sign != flags.overflow) {
        pc = static_cast<uint64_t>(instr.j_type.addr) * 4;
      } else {
        pc += 4; // 如果不跳转，需要补偿在run循环中增加的4
      }
      return; // 跳转后直接返回，不执行pc+=4
    }
    case OpCode::JGT: { // 大于则跳转 (基于Z, S和O标志)
      // 对于有符号数，大于当且仅当 Z=0 且 S=O
      if (!flags.zero && flags.sign == flags.overflow) {
        pc = static_cast<uint64_t>(instr.j_type.addr) * 4;
      } else {
        pc += 4; // 如果不跳转，需要补偿在run循环中增加的4
      }
      return; // 跳转后直接返回，不执行pc+=4
    }
    case OpCode::JLE: { // 小于等于则跳转 (基于Z, S和O标志)
      // 对于有符号数，小于等于当且仅当 Z=1 或 S!=O
      if (flags.zero || (flags.sign != flags.overflow)) {
        pc = static_cast<uint64_t>(instr.j_type.addr) * 4;
      } else {
        pc += 4; // 如果不跳转，需要补偿在run循环中增加的4
      }
      return; // 跳转后直接返回，不执行pc+=4
    }
    case OpCode::JGE: { // 大于等于则跳转 (基于S和O标志)
      // 对于有符号数，大于等于当且仅当 S=O
      if (flags.sign == flags.overflow) {
        pc = static_cast<uint64_t>(instr.j_type.addr) * 4;
      } else {
        pc += 4; // 如果不跳转，需要补偿在run循环中增加的4
      }
      return; // 跳转后直接返回，不执行pc+=4
    }
    case OpCode::JMP: { // 无条件跳转
      pc = static_cast<uint64_t>(instr.j_type.addr) * 4;
      return; // 跳转后直接返回，不执行pc+=4
    }
    case OpCode::JALR: { // 间接调用 (链接)
      int_regs[15] = static_cast<uint32_t>(
          pc + 4); // 返回地址存到r15 (假设r15是链接寄存器)
      pc = int_regs[instr.r_type.rs];
      return; // 跳转后直接返回，不执行pc+=4
    }
    case OpCode::JSUB: {                            // 跳转子程序
      int_regs[15] = static_cast<uint32_t>(pc + 4); // 返回地址存到r15
      pc = static_cast<uint64_t>(instr.j_type.addr) * 4;
      return; // 跳转后直接返回，不执行pc+=4
    }
    case OpCode::RET: {  // 返回
      pc = int_regs[15]; // 从r15恢复PC
      return;            // 跳转后直接返回，不执行pc+=4
    }

    // ---------------- 扩展指令 (S_TYPE) ----------------
    case OpCode::SYSCALL: { // 系统调用
      // r0: 系统调用号
      uint32_t syscall_num = int_regs[0];
      // 根据syscall_num执行不同的系统调用
      // 例如: syscall_num == 1 -> 退出, syscall_num == 2 -> 打印等
      // 这里仅为示例，处理退出
      if (syscall_num == 1) {
        running = false;
      }
      break;
    }
    case OpCode::DEBUG: { // 调试指令
      std::cout << "=== DEBUG DUMP ===" << std::endl;
      std::cout << "PC: 0x" << std::hex << pc << std::dec << std::endl;
      std::cout << "FLAGS: Z=" << flags.zero << " S=" << flags.sign
                << " O=" << flags.overflow << " C=" << flags.carry << std::endl;
      for (int i = 0; i < INT_REG_COUNT; ++i) {
        std::cout << "r" << i << ": 0x" << std::hex << int_regs[i] << std::dec
                  << " ";
        if ((i + 1) % 4 == 0)
          std::cout << std::endl;
      }
      std::cout << std::endl;
      break;
    }

    default:
      std::cerr << "Unknown opcode: 0x" << std::hex << static_cast<int>(opcode)
                << std::dec << " at PC: 0x" << std::hex << pc << std::dec
                << std::endl;
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
