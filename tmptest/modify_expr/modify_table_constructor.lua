---cc1 -no-round-trip-args  -undef -x lua -std=lua53 -ast-dump -triple lua_v53-pc-luaInterp-itanium_elf  C:\llvm\src\tmptest\modify_expr\modify_table_constructor.lua

--[[
tableconstructor ::= ‘{’ [fieldlist] ‘}’
	   fieldlist ::= field {fieldsep field} [fieldsep]
	       field ::= ‘[’ exp ‘]’ ‘=’ exp | Name ‘=’ exp | exp
	    fieldsep ::= ‘,’ | ‘;’
]]

a = { [f] = g; "x", "y"; x = 1, f, [30] = 23; 45 }
