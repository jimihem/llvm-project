cmake_minimum_required(VERSION 3.10)
project(LuaVm)

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

# 包含目录
include_directories(include)

# 源文件
set(SOURCES
	src/LuaVm.cpp
)

# 可执行文件
add_executable(LuaVm ${SOURCES})
