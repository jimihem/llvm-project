#include "vm/vm.h"
#include <iostream>
#include <vector>

using namespace vm;

int main() {
    try {
        // 创建虚拟机，1个CPU，64KB内存
        VirtualMachine vm(64 * 1024, 1);
        
        // 示例程序：计算斐波那契数列
        std::vector<Byte> program = {
            // MOV R1, 0 (Fibonacci(0))
            static_cast<Byte>(OP_MOV), 0x10,  // R1 <- R0 (0)
            0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // 立即数0
            
            // MOV R2, 1 (Fibonacci(1))
            static_cast<Byte>(OP_MOV), 0x20,  // R2 <- R0 (0) + 1
            0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // 立即数1
            
            // MOV R3, 10 (循环次数)
            static_cast<Byte>(OP_MOV), 0x30,
            0x0A, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
            
            // loop:
            // ADD R4, R1, R2
            static_cast<Byte>(OP_ADD), 0x41,  // R4 <- R1 + R2
            
            // MOV R1, R2
            static_cast<Byte>(OP_MOV), 0x12,
            
            // MOV R2, R4
            static_cast<Byte>(OP_MOV), 0x24,
            
            // DEC R3
            static_cast<Byte>(OP_DEC), 0x33,
            
            // JNZ loop
            static_cast<Byte>(OP_JNZ), 0x00,
            0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // 跳转地址
            
            // HALT
            static_cast<Byte>(OP_HALT), 0x00
        };
        
        // 加载程序
        vm.loadProgram(program);
        
        // 启动所有CPU
        vm.startAll();
        
        // 等待执行完成
        std::this_thread::sleep_for(std::chrono::milliseconds(100));
        
        // 停止所有CPU
        vm.stopAll();
        
        std::cout << "Virtual machine execution completed." << std::endl;
        
    } catch (const std::exception& e) {
        std::cerr << "Error: " << e.what() << std::endl;
        return 1;
    }
    
    return 0;
}