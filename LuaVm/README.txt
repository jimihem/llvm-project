virtual-machine/
├── CMakeLists.txt
├── include/
│   ├── vm/
│   │   ├── common.h
│   │   ├── cpu.h
│   │   ├── memory.h
│   │   ├── instruction.h
│   │   └── vm.h
│   └── instructions/
│       ├── arithmetic.h
│       ├── control.h
│       ├── memory_ops.h
│       └── system.h
└── src/
    ├── cpu.cpp
    ├── memory.cpp
    ├── instruction.cpp
    └── main.cpp