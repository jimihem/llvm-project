---cc1 -undef -x lua -std=lua53 -ast-dump -triple lua_v53-pc-luaInterp-itanium_elf  C:\llvm\src\tmptest\string3.lua

[[---cc1 -undef -x lua -s
td=lua53 -ast-dump
-triple lua_v53-pc-luaInterp-itanium_elf  C:\llvm\src\tmptest\string.lua
]]
