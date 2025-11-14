---cc1 -no-round-trip-args  -undef -x lua -std=lua53 -ast-dump -triple lua_v53-pc-luaInterp-itanium_elf  C:\llvm\src\tmptest\modify_expr\declaration.lua

--[[
		 function funcname funcbody | 
		 local function Name funcbody | 
		 local namelist [‘=’ explist] 
]]

local a, b, c = { [f] = g; "x", "y"; x = 1, f, [30] = 23; 45 }, {}

local function firstFun (a, b)
end

function secondFun (a, b)
end