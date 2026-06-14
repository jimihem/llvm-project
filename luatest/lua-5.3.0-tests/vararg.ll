; ModuleID = 'D:\llvm-project\luatest\lua-5.3.0-tests\vararg.lua'
source_filename = "D:\\llvm-project\\luatest\\lua-5.3.0-tests\\vararg.lua"
target datalayout = "e-m:e-p:32:32-n32"
target triple = "lua_v53-pc-luaInterp-itanium_elf"

%class.__lua_object_ptr = type { ptr, ptr }

@g_hidden_var = hidden global i32 0, align 4
@__lua.var.__Lua_Temp_Closure_11 = hidden global %class.__lua_object_ptr zeroinitializer, align 4
@__dso_handle = external hidden global i8
@.str = private unnamed_addr constant [15 x i8] c"testing vararg\00", align 1
@__lua.var._ENV = external global %class.__lua_object_ptr, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"print\00", align 1
@__lua.var._G = external global %class.__lua_object_ptr, align 4
@.str.2 = private unnamed_addr constant [4 x i8] c"arg\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"f\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"c12\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"vararg\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"assert\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"alo\00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c"a\00", align 1
@.str.9 = private unnamed_addr constant [2 x i8] c"b\00", align 1
@.str.10 = private unnamed_addr constant [2 x i8] c"n\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"next\00", align 1
@.str.12 = private unnamed_addr constant [2 x i8] c"+\00", align 1
@.str.13 = private unnamed_addr constant [4 x i8] c"lim\00", align 1
@.str.14 = private unnamed_addr constant [2 x i8] c"g\00", align 1
@.str.15 = private unnamed_addr constant [5 x i8] c"math\00", align 1
@.str.16 = private unnamed_addr constant [4 x i8] c"max\00", align 1
@.str.17 = private unnamed_addr constant [8 x i8] c"oneless\00", align 1
@.str.18 = private unnamed_addr constant [2 x i8] c"d\00", align 1
@.str.19 = private unnamed_addr constant [2 x i8] c"e\00", align 1
@.str.20 = private unnamed_addr constant [17 x i8] c"[ return {...} ]\00", align 1
@.str.21 = private unnamed_addr constant [5 x i8] c"load\00", align 1
@.str.22 = private unnamed_addr constant [2 x i8] c"x\00", align 1
@.str.23 = private unnamed_addr constant [145 x i8] c"[\0D\0A  local x = {...}\0D\0A  for i=1,select('#', ...) do assert(x[i] == select(i, ...)) end\0D\0A  assert(x[select('#', ...)+1] == nil)\0D\0A  return true\0D\0A]\00", align 1
@.str.24 = private unnamed_addr constant [6 x i8] c"table\00", align 1
@.str.25 = private unnamed_addr constant [7 x i8] c"unpack\00", align 1
@.str.26 = private unnamed_addr constant [7 x i8] c"select\00", align 1
@.str.27 = private unnamed_addr constant [6 x i8] c"pcall\00", align 1
@.str.28 = private unnamed_addr constant [3 x i8] c"OK\00", align 1
@.str.29 = private unnamed_addr constant [2 x i8] c"#\00", align 1
@.str.30 = private unnamed_addr constant [6 x i8] c"pairs\00", align 1
@.str.31 = private unnamed_addr constant [3 x i8] c"a8\00", align 1
@.str.32 = private unnamed_addr constant [3 x i8] c"a9\00", align 1
@.str.33 = private unnamed_addr constant [4 x i8] c"a10\00", align 1
@.str.34 = private unnamed_addr constant [4 x i8] c"a11\00", align 1
@.str.35 = private unnamed_addr constant [4 x i8] c"a12\00", align 1
@.str.36 = private unnamed_addr constant [4 x i8] c"a13\00", align 1
@.str.37 = private unnamed_addr constant [4 x i8] c"a14\00", align 1
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @_GLOBAL__sub_I_vararg.lua, ptr null }]

; Function Attrs: noinline nounwind
define internal void @__cxx_global_var_init() #0 {
entry:
  %ref.tmp = alloca ptr, align 4
  store ptr @__lua.fun.__Lua_Temp_Method_0, ptr %ref.tmp, align 4
  call void @__lua.fun.__lua_build_closure_with_function(ptr sret(%class.__lua_object_ptr) align 4 @__lua.var.__Lua_Temp_Closure_11, ptr noundef nonnull align 4 dereferenceable(4) %ref.tmp)
  %0 = call i32 @__cxa_atexit(ptr @__lua.cxxmethod.d__lua_object_ptr, ptr @__lua.var.__Lua_Temp_Closure_11, ptr @__dso_handle) #3
  ret void
}

declare void @__lua.fun.__lua_build_closure_with_function(ptr sret(%class.__lua_object_ptr) align 4, ptr noundef nonnull align 4 dereferenceable(4)) #1

; Function Attrs: noinline nounwind optnone
define internal void @__lua.fun.__Lua_Temp_Method_0(ptr noalias sret(%class.__lua_object_ptr) align 4 %agg.result, ptr noundef nonnull align 4 dereferenceable(8) %closure, ptr noundef nonnull align 4 dereferenceable(8) %parms) #2 {
entry:
  %result.ptr = alloca ptr, align 4
  %closure.addr = alloca ptr, align 4
  %parms.addr = alloca ptr, align 4
  %__Lua_Temp_Table_0 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp = alloca %class.__lua_object_ptr, align 4
  %ref.tmp1 = alloca %class.__lua_object_ptr, align 4
  %agg.tmp.ensured = alloca %class.__lua_object_ptr, align 4
  %ref.tmp2 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp3 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp4 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp5 = alloca %class.__lua_object_ptr, align 4
  %__Lua_Temp_Closure_0 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp6 = alloca ptr, align 4
  %ref.tmp7 = alloca %class.__lua_object_ptr, align 4
  %__Lua_Temp_Closure_1 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp8 = alloca ptr, align 4
  %ref.tmp9 = alloca %class.__lua_object_ptr, align 4
  %__Lua_Temp_Closure_2 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp10 = alloca ptr, align 4
  %ref.tmp11 = alloca %class.__lua_object_ptr, align 4
  %call = alloca %class.__lua_object_ptr, align 4
  %__Lua_Temp_Closure_3 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp12 = alloca ptr, align 4
  %__Lua_Temp_Table_14 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp13 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp14 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp15 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp16 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp17 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp18 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp19 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp20 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp21 = alloca %class.__lua_object_ptr, align 4
  %agg.tmp.ensured22 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp23 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp24 = alloca %class.__lua_object_ptr, align 4
  %__Lua_Temp_Table_15 = alloca %class.__lua_object_ptr, align 4
  %__Lua_Temp_Table_16 = alloca %class.__lua_object_ptr, align 4
  %__Lua_Temp_Table_17 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp25 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp26 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp27 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp28 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp29 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp30 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp31 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp32 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp33 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp34 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp35 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp36 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp37 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp38 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp39 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp40 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp41 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp42 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp43 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp44 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp45 = alloca %class.__lua_object_ptr, align 4
  %agg.tmp.ensured46 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp47 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp48 = alloca %class.__lua_object_ptr, align 4
  %__Lua_Temp_Table_18 = alloca %class.__lua_object_ptr, align 4
  %__Lua_Temp_Table_19 = alloca %class.__lua_object_ptr, align 4
  %__Lua_Temp_Table_20 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp49 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp50 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp51 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp52 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp53 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp54 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp55 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp56 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp57 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp58 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp59 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp60 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp61 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp62 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp63 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp64 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp65 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp66 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp67 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp68 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp69 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp70 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp71 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp72 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp73 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp74 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp75 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp76 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp77 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp78 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp79 = alloca %class.__lua_object_ptr, align 4
  %agg.tmp.ensured80 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp81 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp82 = alloca %class.__lua_object_ptr, align 4
  %__Lua_Temp_Table_21 = alloca %class.__lua_object_ptr, align 4
  %__Lua_Temp_Table_22 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp83 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp84 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp85 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp86 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp87 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp88 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp89 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp90 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp91 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp92 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp93 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp94 = alloca %class.__lua_object_ptr, align 4
  %agg.tmp.ensured95 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp96 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp97 = alloca %class.__lua_object_ptr, align 4
  %__Lua_Temp_Table_23 = alloca %class.__lua_object_ptr, align 4
  %__Lua_Temp_Table_24 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp98 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp99 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp100 = alloca %class.__lua_object_ptr, align 4
  %__Lua_Temp_Table_25 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp101 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp102 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp103 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp104 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp105 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp106 = alloca %class.__lua_object_ptr, align 4
  %__Lua_Temp_Obj_2 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp107 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp108 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp109 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp110 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp111 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp112 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp113 = alloca %class.__lua_object_ptr, align 4
  %__Lua_Temp_Table_26 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp114 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp115 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp116 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp117 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp118 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp119 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp120 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp121 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp122 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp123 = alloca %class.__lua_object_ptr, align 4
  %agg.tmp.ensured124 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp125 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp126 = alloca %class.__lua_object_ptr, align 4
  %__Lua_Temp_Table_27 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp127 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp128 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp129 = alloca %class.__lua_object_ptr, align 4
  %__Lua_Temp_Table_28 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp130 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp131 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp132 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp133 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp134 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp135 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp136 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp137 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp138 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp139 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp140 = alloca %class.__lua_object_ptr, align 4
  %__Lua_Temp_Table_29 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp141 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp142 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp143 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp144 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp145 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp146 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp147 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp148 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp149 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp150 = alloca %class.__lua_object_ptr, align 4
  %agg.tmp.ensured151 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp152 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp153 = alloca %class.__lua_object_ptr, align 4
  %__Lua_Temp_Table_30 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp154 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp155 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp156 = alloca %class.__lua_object_ptr, align 4
  %__Lua_Temp_Table_31 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp157 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp158 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp159 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp160 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp161 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp162 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp163 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp164 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp165 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp166 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp167 = alloca %class.__lua_object_ptr, align 4
  %__Lua_Temp_Table_32 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp168 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp169 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp170 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp171 = alloca %class.__lua_object_ptr, align 4
  %agg.tmp.ensured172 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp173 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp174 = alloca %class.__lua_object_ptr, align 4
  %__Lua_Temp_Table_33 = alloca %class.__lua_object_ptr, align 4
  %__Lua_Temp_Table_34 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp175 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp176 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp177 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp178 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp179 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp180 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp181 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp182 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp183 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp184 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp185 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp186 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp187 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp188 = alloca %class.__lua_object_ptr, align 4
  %agg.tmp.ensured189 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp190 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp191 = alloca %class.__lua_object_ptr, align 4
  %a = alloca %class.__lua_object_ptr, align 4
  %__Lua_Temp_Table_35 = alloca %class.__lua_object_ptr, align 4
  %__Lua_Temp_Table_36 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp192 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp193 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp194 = alloca %class.__lua_object_ptr, align 4
  %__Lua_Temp_Table_37 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp195 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp196 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp197 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp198 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp199 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp200 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp201 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp202 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp203 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp204 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp205 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp206 = alloca %class.__lua_object_ptr, align 4
  %b = alloca %class.__lua_object_ptr, align 4
  %c = alloca %class.__lua_object_ptr, align 4
  %__Lua_Temp_Table_38 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp207 = alloca %class.__lua_object_ptr, align 4
  %__Lua_Temp_Obj_3 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp208 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp209 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp210 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp211 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp212 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp213 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp214 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp215 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp216 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp217 = alloca %class.__lua_object_ptr, align 4
  %__Lua_Temp_Table_39 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp218 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp219 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp220 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp221 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp222 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp223 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp224 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp225 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp226 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp227 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp228 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp229 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp230 = alloca %class.__lua_object_ptr, align 4
  %agg.tmp.ensured231 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp232 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp233 = alloca %class.__lua_object_ptr, align 4
  %__Lua_Temp_Table_40 = alloca %class.__lua_object_ptr, align 4
  %__Lua_Temp_Table_41 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp234 = alloca %class.__lua_object_ptr, align 4
  %__Lua_Temp_Table_42 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp235 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp236 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp237 = alloca %class.__lua_object_ptr, align 4
  %__Lua_Temp_Table_43 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp238 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp239 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp240 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp241 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp242 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp243 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp244 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp245 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp246 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp247 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp248 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp249 = alloca %class.__lua_object_ptr, align 4
  %__Lua_Temp_Table_44 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp250 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp251 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp252 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp253 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp254 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp255 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp256 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp257 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp258 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp259 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp260 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp261 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp262 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp263 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp264 = alloca %class.__lua_object_ptr, align 4
  %agg.tmp.ensured265 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp266 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp267 = alloca %class.__lua_object_ptr, align 4
  %__Lua_Temp_Table_45 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp268 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp269 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp270 = alloca %class.__lua_object_ptr, align 4
  %__Lua_Temp_Table_46 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp271 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp272 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp273 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp274 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp275 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp276 = alloca %class.__lua_object_ptr, align 4
  %__Lua_Temp_Table_47 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp277 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp278 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp279 = alloca %class.__lua_object_ptr, align 4
  %agg.tmp.ensured280 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp281 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp282 = alloca %class.__lua_object_ptr, align 4
  %t = alloca %class.__lua_object_ptr, align 4
  %__Lua_Temp_Table_48 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp283 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp284 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp285 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp286 = alloca %class.__lua_object_ptr, align 4
  %__Lua_Temp_Closure_4 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp287 = alloca ptr, align 4
  %ref.tmp288 = alloca %class.__lua_object_ptr, align 4
  %__Lua_Temp_Table_51 = alloca %class.__lua_object_ptr, align 4
  %__Lua_Temp_Table_52 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp289 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp290 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp291 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp292 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp293 = alloca %class.__lua_object_ptr, align 4
  %__Lua_Temp_Table_53 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp294 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp295 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp296 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp297 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp298 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp299 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp300 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp301 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp302 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp303 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp304 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp305 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp306 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp307 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp308 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp309 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp310 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp311 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp312 = alloca %class.__lua_object_ptr, align 4
  %agg.tmp.ensured313 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp314 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp315 = alloca %class.__lua_object_ptr, align 4
  %__Lua_Temp_Table_54 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp316 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp317 = alloca %class.__lua_object_ptr, align 4
  %agg.tmp.ensured318 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp319 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp320 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp321 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp322 = alloca %class.__lua_object_ptr, align 4
  %i = alloca %class.__lua_object_ptr, align 4
  %a323 = alloca %class.__lua_object_ptr, align 4
  %__Lua_Temp_Table_55 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp324 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp325 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp326 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp327 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp329 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp330 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp331 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp332 = alloca %class.__lua_object_ptr, align 4
  %__Lua_Temp_Closure_5 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp333 = alloca ptr, align 4
  %ref.tmp334 = alloca %class.__lua_object_ptr, align 4
  %__Lua_Temp_Closure_6 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp335 = alloca ptr, align 4
  %ref.tmp336 = alloca %class.__lua_object_ptr, align 4
  %__Lua_Temp_Table_59 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp337 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp338 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp339 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp340 = alloca %class.__lua_object_ptr, align 4
  %agg.tmp.ensured341 = alloca %class.__lua_object_ptr, align 4
  %__Lua_Temp_Table_60 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp342 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp343 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp344 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp345 = alloca %class.__lua_object_ptr, align 4
  %agg.tmp.ensured346 = alloca %class.__lua_object_ptr, align 4
  %__Lua_Temp_Table_61 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp347 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp349 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp350 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp351 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp354 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp355 = alloca %class.__lua_object_ptr, align 4
  %__Lua_Temp_Table_62 = alloca %class.__lua_object_ptr, align 4
  %__Lua_Temp_Table_63 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp357 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp358 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp359 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp360 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp361 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp362 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp363 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp364 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp365 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp366 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp367 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp368 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp369 = alloca %class.__lua_object_ptr, align 4
  %agg.tmp.ensured370 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp371 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp372 = alloca %class.__lua_object_ptr, align 4
  %__Lua_Temp_Table_64 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp373 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp374 = alloca %class.__lua_object_ptr, align 4
  %agg.tmp.ensured375 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp376 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp377 = alloca %class.__lua_object_ptr, align 4
  %__Lua_Temp_Closure_7 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp378 = alloca ptr, align 4
  %ref.tmp379 = alloca %class.__lua_object_ptr, align 4
  %__Lua_Temp_Closure_8 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp380 = alloca ptr, align 4
  %ref.tmp381 = alloca %class.__lua_object_ptr, align 4
  %__Lua_Temp_Table_73 = alloca %class.__lua_object_ptr, align 4
  %__Lua_Temp_Table_74 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp382 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp383 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp384 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp385 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp386 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp387 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp388 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp389 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp390 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp391 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp392 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp393 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp394 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp395 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp396 = alloca %class.__lua_object_ptr, align 4
  %__Lua_Temp_Obj_5 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp397 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp398 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp399 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp400 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp401 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp402 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp403 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp404 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp405 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp406 = alloca %class.__lua_object_ptr, align 4
  %__Lua_Temp_Table_75 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp407 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp408 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp409 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp410 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp411 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp412 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp413 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp414 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp415 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp416 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp417 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp418 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp419 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp420 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp421 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp422 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp423 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp424 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp425 = alloca %class.__lua_object_ptr, align 4
  %agg.tmp.ensured426 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp427 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp428 = alloca %class.__lua_object_ptr, align 4
  %__Lua_Temp_Table_76 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp429 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp430 = alloca %class.__lua_object_ptr, align 4
  %__Lua_Temp_Obj_6 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp431 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp432 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp433 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp434 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp435 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp436 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp437 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp438 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp439 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp440 = alloca %class.__lua_object_ptr, align 4
  %__Lua_Temp_Table_77 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp441 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp442 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp443 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp444 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp445 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp446 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp447 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp448 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp449 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp450 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp451 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp452 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp453 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp454 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp455 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp456 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp457 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp458 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp459 = alloca %class.__lua_object_ptr, align 4
  %agg.tmp.ensured460 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp461 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp462 = alloca %class.__lua_object_ptr, align 4
  %__Lua_Temp_Table_78 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp463 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp464 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp465 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp466 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp467 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp468 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp469 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp470 = alloca %class.__lua_object_ptr, align 4
  %__Lua_Temp_Table_79 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp471 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp472 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp473 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp474 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp475 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp476 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp477 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp478 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp479 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp480 = alloca %class.__lua_object_ptr, align 4
  %__Lua_Temp_Table_80 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp481 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp482 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp483 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp484 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp485 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp486 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp487 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp488 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp489 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp490 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp491 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp492 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp493 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp494 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp495 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp496 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp497 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp498 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp499 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp500 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp501 = alloca %class.__lua_object_ptr, align 4
  %agg.tmp.ensured502 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp503 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp504 = alloca %class.__lua_object_ptr, align 4
  %__Lua_Temp_Table_81 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp505 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp506 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp507 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp508 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp509 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp510 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp511 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp512 = alloca %class.__lua_object_ptr, align 4
  %__Lua_Temp_Table_82 = alloca %class.__lua_object_ptr, align 4
  %__Lua_Temp_Table_83 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp513 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp514 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp515 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp516 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp517 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp518 = alloca %class.__lua_object_ptr, align 4
  %__Lua_Temp_Table_84 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp519 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp520 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp521 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp522 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp523 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp524 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp525 = alloca %class.__lua_object_ptr, align 4
  %agg.tmp.ensured526 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp527 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp528 = alloca %class.__lua_object_ptr, align 4
  %__Lua_Temp_Table_85 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp529 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp530 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp531 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp532 = alloca %class.__lua_object_ptr, align 4
  %agg.tmp.ensured533 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp534 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp535 = alloca %class.__lua_object_ptr, align 4
  %__Lua_Temp_Table_86 = alloca %class.__lua_object_ptr, align 4
  %__Lua_Temp_Table_87 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp536 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp537 = alloca %class.__lua_object_ptr, align 4
  %__Lua_Temp_Table_88 = alloca %class.__lua_object_ptr, align 4
  %__Lua_Temp_Table_89 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp538 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp539 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp540 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp541 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp542 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp543 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp544 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp545 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp546 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp547 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp548 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp549 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp550 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp551 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp552 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp553 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp554 = alloca %class.__lua_object_ptr, align 4
  %__Lua_Temp_Table_90 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp555 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp556 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp557 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp558 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp559 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp560 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp561 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp562 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp563 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp564 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp565 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp566 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp567 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp568 = alloca %class.__lua_object_ptr, align 4
  %agg.tmp.ensured569 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp570 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp571 = alloca %class.__lua_object_ptr, align 4
  %__Lua_Temp_Table_91 = alloca %class.__lua_object_ptr, align 4
  %__Lua_Temp_Table_92 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp572 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp573 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp574 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp575 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp576 = alloca %class.__lua_object_ptr, align 4
  %__Lua_Temp_Table_93 = alloca %class.__lua_object_ptr, align 4
  %__Lua_Temp_Table_94 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp577 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp578 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp579 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp580 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp581 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp582 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp583 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp584 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp585 = alloca %class.__lua_object_ptr, align 4
  %agg.tmp.ensured586 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp587 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp588 = alloca %class.__lua_object_ptr, align 4
  %__Lua_Temp_Table_95 = alloca %class.__lua_object_ptr, align 4
  %__Lua_Temp_Table_96 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp589 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp590 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp591 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp592 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp593 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp594 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp595 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp596 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp597 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp598 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp599 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp600 = alloca %class.__lua_object_ptr, align 4
  %__Lua_Temp_Table_97 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp601 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp602 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp603 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp604 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp605 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp606 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp607 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp608 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp609 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp610 = alloca %class.__lua_object_ptr, align 4
  %agg.tmp.ensured611 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp612 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp613 = alloca %class.__lua_object_ptr, align 4
  %__Lua_Temp_Table_98 = alloca %class.__lua_object_ptr, align 4
  %__Lua_Temp_Table_99 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp614 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp615 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp616 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp617 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp618 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp619 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp620 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp621 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp622 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp623 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp624 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp625 = alloca %class.__lua_object_ptr, align 4
  %__Lua_Temp_Table_100 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp626 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp627 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp628 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp629 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp630 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp631 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp632 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp633 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp634 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp635 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp636 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp637 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp638 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp639 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp640 = alloca %class.__lua_object_ptr, align 4
  %agg.tmp.ensured641 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp642 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp643 = alloca %class.__lua_object_ptr, align 4
  %__Lua_Temp_Table_101 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp644 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp645 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp646 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp647 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp648 = alloca %class.__lua_object_ptr, align 4
  %agg.tmp.ensured649 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp650 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp651 = alloca %class.__lua_object_ptr, align 4
  %__Lua_Temp_Table_102 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp652 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp653 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp654 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp655 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp656 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp657 = alloca %class.__lua_object_ptr, align 4
  %agg.tmp.ensured658 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp659 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp660 = alloca %class.__lua_object_ptr, align 4
  %aux = alloca %class.__lua_object_ptr, align 4
  %__Lua_Temp_Closure_9 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp661 = alloca ptr, align 4
  %__Lua_Temp_Table_107 = alloca %class.__lua_object_ptr, align 4
  %__Lua_Temp_Table_108 = alloca %class.__lua_object_ptr, align 4
  %__Lua_Temp_Table_109 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp662 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp663 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp664 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp665 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp666 = alloca %class.__lua_object_ptr, align 4
  %__Lua_Temp_Table_110 = alloca %class.__lua_object_ptr, align 4
  %__Lua_Temp_Table_111 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp667 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp668 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp669 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp670 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp671 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp672 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp673 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp674 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp675 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp676 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp677 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp678 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp679 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp680 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp681 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp682 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp683 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp684 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp685 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp686 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp687 = alloca %class.__lua_object_ptr, align 4
  %agg.tmp.ensured688 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp689 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp690 = alloca %class.__lua_object_ptr, align 4
  %__Lua_Temp_Closure_10 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp691 = alloca ptr, align 4
  %ref.tmp692 = alloca %class.__lua_object_ptr, align 4
  %agg.tmp.ensured693 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp694 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp695 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp696 = alloca %class.__lua_object_ptr, align 4
  %__Lua_Temp_Table_112 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp697 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp698 = alloca %class.__lua_object_ptr, align 4
  %agg.tmp.ensured699 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp700 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp701 = alloca %class.__lua_object_ptr, align 4
  store ptr %agg.result, ptr %result.ptr, align 4
  store ptr %closure, ptr %closure.addr, align 4
  store ptr %parms, ptr %parms.addr, align 4
  call void @__lua.fun.__lua_build_table(ptr sret(%class.__lua_object_ptr) align 4 %__Lua_Temp_Table_0)
  call void @__lua.fun.__lua_build_number(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp, double noundef 1.000000e+00)
  call void @__lua.fun.__lua_build_string(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp1, ptr noundef @.str, i32 noundef 14)
  call void @__lua.fun.__lua_set_member(ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Table_0, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp1, i32 noundef 858)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp1)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp)
  call void @__lua.fun.__lua_build_string(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp3, ptr noundef @.str.1, i32 noundef 5)
  call void @__lua.fun.__lua_get_member(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp2, ptr noundef nonnull align 4 dereferenceable(8) @__lua.var._ENV, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp3, i32 noundef 852)
  call void @__lua.fun.__lua_call(ptr sret(%class.__lua_object_ptr) align 4 %agg.tmp.ensured, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp2, ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Table_0, i32 noundef 852)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %agg.tmp.ensured)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp2)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp3)
  call void @__lua.fun.__lua_build_string(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp4, ptr noundef @.str.2, i32 noundef 3)
  call void @__lua.fun.__lua_build_nil(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp5)
  call void @__lua.fun.__lua_set_member(ptr noundef nonnull align 4 dereferenceable(8) @__lua.var._G, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp4, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp5, i32 noundef 886)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp5)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp4)
  call void @__lua.fun.__lua_build_closure(ptr sret(%class.__lua_object_ptr) align 4 %__Lua_Temp_Closure_0)
  store ptr @__lua.fun.__Lua_Temp_Method_1, ptr %ref.tmp6, align 4
  call void @__lua.fun.__lua_set_closure_function(ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Closure_0, ptr noundef nonnull align 4 dereferenceable(4) %ref.tmp6, i32 noundef 905)
  call void @__lua.fun.__lua_build_string(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp7, ptr noundef @.str.3, i32 noundef 1)
  call void @__lua.fun.__lua_set_member(ptr noundef nonnull align 4 dereferenceable(8) @__lua.var._ENV, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp7, ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Closure_0, i32 noundef 905)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp7)
  call void @__lua.fun.__lua_build_closure(ptr sret(%class.__lua_object_ptr) align 4 %__Lua_Temp_Closure_1)
  store ptr @__lua.fun.__Lua_Temp_Method_2, ptr %ref.tmp8, align 4
  call void @__lua.fun.__lua_set_closure_function(ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Closure_1, ptr noundef nonnull align 4 dereferenceable(4) %ref.tmp8, i32 noundef 1039)
  call void @__lua.fun.__lua_build_string(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp9, ptr noundef @.str.4, i32 noundef 3)
  call void @__lua.fun.__lua_set_member(ptr noundef nonnull align 4 dereferenceable(8) @__lua.var._ENV, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp9, ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Closure_1, i32 noundef 1039)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp9)
  call void @__lua.fun.__lua_build_closure(ptr sret(%class.__lua_object_ptr) align 4 %__Lua_Temp_Closure_2)
  store ptr @__lua.fun.__Lua_Temp_Method_3, ptr %ref.tmp10, align 4
  call void @__lua.fun.__lua_set_closure_function(ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Closure_2, ptr noundef nonnull align 4 dereferenceable(4) %ref.tmp10, i32 noundef 1217)
  call void @__lua.fun.__lua_build_string(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp11, ptr noundef @.str.5, i32 noundef 6)
  call void @__lua.fun.__lua_set_member(ptr noundef nonnull align 4 dereferenceable(8) @__lua.var._ENV, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp11, ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Closure_2, i32 noundef 1217)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp11)
  call void @__lua.fun.__lua_build_nil(ptr sret(%class.__lua_object_ptr) align 4 %call)
  call void @__lua.fun.__lua_build_closure(ptr sret(%class.__lua_object_ptr) align 4 %__Lua_Temp_Closure_3)
  store ptr @__lua.fun.__Lua_Temp_Method_4, ptr %ref.tmp12, align 4
  call void @__lua.fun.__lua_set_closure_function(ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Closure_3, ptr noundef nonnull align 4 dereferenceable(4) %ref.tmp12, i32 noundef 1287)
  call void @__lua.fun.__lua_assign_local_var(ptr noundef nonnull align 4 dereferenceable(8) %call, ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Closure_3, i32 noundef 1287)
  call void @__lua.fun.__lua_build_table(ptr sret(%class.__lua_object_ptr) align 4 %__Lua_Temp_Table_14)
  call void @__lua.fun.__lua_build_number(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp13, double noundef 1.000000e+00)
  call void @__lua.fun.__lua_build_string(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp18, ptr noundef @.str.3, i32 noundef 1)
  call void @__lua.fun.__lua_get_member(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp17, ptr noundef nonnull align 4 dereferenceable(8) @__lua.var._ENV, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp18, i32 noundef 1351)
  call void @__lua.fun.__lua_build_table(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp19)
  call void @__lua.fun.__lua_call(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp16, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp17, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp19, i32 noundef 1351)
  call void @__lua.fun.__lua_build_number(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp20, double noundef 1.000000e+00)
  call void @__lua.fun.__lua_get_member(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp15, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp16, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp20, i32 noundef 1355)
  call void @__lua.fun.__lua_build_number(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp21, double noundef 0.000000e+00)
  call void @__lua.fun.__lua_binop(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp14, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp15, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp21, i32 noundef 14, i32 noundef 1355)
  call void @__lua.fun.__lua_set_member(ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Table_14, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp13, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp14, i32 noundef 1355)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp14)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp21)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp15)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp20)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp16)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp19)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp17)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp18)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp13)
  call void @__lua.fun.__lua_build_string(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp24, ptr noundef @.str.6, i32 noundef 6)
  call void @__lua.fun.__lua_get_member(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp23, ptr noundef nonnull align 4 dereferenceable(8) @__lua.var._ENV, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp24, i32 noundef 1344)
  call void @__lua.fun.__lua_call(ptr sret(%class.__lua_object_ptr) align 4 %agg.tmp.ensured22, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp23, ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Table_14, i32 noundef 1344)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %agg.tmp.ensured22)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp23)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp24)
  call void @__lua.fun.__lua_build_table(ptr sret(%class.__lua_object_ptr) align 4 %__Lua_Temp_Table_15)
  call void @__lua.fun.__lua_build_table(ptr sret(%class.__lua_object_ptr) align 4 %__Lua_Temp_Table_16)
  call void @__lua.fun.__lua_build_table(ptr sret(%class.__lua_object_ptr) align 4 %__Lua_Temp_Table_17)
  call void @__lua.fun.__lua_build_number(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp25, double noundef 1.000000e+00)
  call void @__lua.fun.__lua_build_number(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp26, double noundef 1.000000e+00)
  call void @__lua.fun.__lua_set_member(ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Table_17, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp25, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp26, i32 noundef 1372)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp26)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp25)
  call void @__lua.fun.__lua_build_number(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp27, double noundef 1.000000e+00)
  call void @__lua.fun.__lua_build_number(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp28, double noundef 2.000000e+00)
  call void @__lua.fun.__lua_set_member(ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Table_17, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp27, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp28, i32 noundef 1374)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp28)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp27)
  call void @__lua.fun.__lua_build_number(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp29, double noundef 1.000000e+00)
  call void @__lua.fun.__lua_build_number(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp30, double noundef 3.000000e+00)
  call void @__lua.fun.__lua_set_member(ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Table_17, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp29, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp30, i32 noundef 1376)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp30)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp29)
  call void @__lua.fun.__lua_build_number(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp31, double noundef 1.000000e+00)
  call void @__lua.fun.__lua_set_member(ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Table_16, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp31, ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Table_17, i32 noundef 1371)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp31)
  call void @__lua.fun.__lua_build_number(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp32, double noundef 2.000000e+00)
  call void @__lua.fun.__lua_build_number(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp33, double noundef 1.000000e+00)
  call void @__lua.fun.__lua_set_member(ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Table_16, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp32, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp33, i32 noundef 1380)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp33)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp32)
  call void @__lua.fun.__lua_build_number(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp34, double noundef 3.000000e+00)
  call void @__lua.fun.__lua_build_number(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp35, double noundef 2.000000e+00)
  call void @__lua.fun.__lua_set_member(ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Table_16, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp34, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp35, i32 noundef 1383)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp35)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp34)
  call void @__lua.fun.__lua_build_number(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp36, double noundef 4.000000e+00)
  call void @__lua.fun.__lua_build_number(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp37, double noundef 3.000000e+00)
  call void @__lua.fun.__lua_set_member(ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Table_16, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp36, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp37, i32 noundef 1386)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp37)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp36)
  call void @__lua.fun.__lua_build_number(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp38, double noundef 1.000000e+00)
  call void @__lua.fun.__lua_build_string(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp43, ptr noundef @.str.3, i32 noundef 1)
  call void @__lua.fun.__lua_get_member(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp42, ptr noundef nonnull align 4 dereferenceable(8) @__lua.var._ENV, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp43, i32 noundef 1369)
  call void @__lua.fun.__lua_call(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp41, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp42, ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Table_16, i32 noundef 1369)
  call void @__lua.fun.__lua_build_number(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp44, double noundef 1.000000e+00)
  call void @__lua.fun.__lua_get_member(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp40, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp41, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp44, i32 noundef 1389)
  call void @__lua.fun.__lua_build_number(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp45, double noundef 3.000000e+00)
  call void @__lua.fun.__lua_binop(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp39, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp40, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp45, i32 noundef 14, i32 noundef 1389)
  call void @__lua.fun.__lua_set_member(ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Table_15, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp38, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp39, i32 noundef 1389)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp39)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp45)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp40)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp44)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp41)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp42)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp43)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp38)
  call void @__lua.fun.__lua_build_string(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp48, ptr noundef @.str.6, i32 noundef 6)
  call void @__lua.fun.__lua_get_member(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp47, ptr noundef nonnull align 4 dereferenceable(8) @__lua.var._ENV, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp48, i32 noundef 1362)
  call void @__lua.fun.__lua_call(ptr sret(%class.__lua_object_ptr) align 4 %agg.tmp.ensured46, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp47, ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Table_15, i32 noundef 1362)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %agg.tmp.ensured46)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp47)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp48)
  call void @__lua.fun.__lua_build_table(ptr sret(%class.__lua_object_ptr) align 4 %__Lua_Temp_Table_18)
  call void @__lua.fun.__lua_build_table(ptr sret(%class.__lua_object_ptr) align 4 %__Lua_Temp_Table_19)
  call void @__lua.fun.__lua_build_table(ptr sret(%class.__lua_object_ptr) align 4 %__Lua_Temp_Table_20)
  call void @__lua.fun.__lua_build_number(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp49, double noundef 1.000000e+00)
  call void @__lua.fun.__lua_build_string(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp50, ptr noundef @.str.7, i32 noundef 3)
  call void @__lua.fun.__lua_set_member(ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Table_20, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp49, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp50, i32 noundef 1406)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp50)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp49)
  call void @__lua.fun.__lua_build_number(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp51, double noundef 1.000000e+00)
  call void @__lua.fun.__lua_build_nil(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp52)
  call void @__lua.fun.__lua_set_member(ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Table_20, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp51, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp52, i32 noundef 1413)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp52)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp51)
  call void @__lua.fun.__lua_build_number(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp53, double noundef 1.000000e+00)
  call void @__lua.fun.__lua_build_number(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp54, double noundef 4.500000e+01)
  call void @__lua.fun.__lua_set_member(ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Table_20, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp53, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp54, i32 noundef 1418)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp54)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp53)
  call void @__lua.fun.__lua_build_number(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp55, double noundef 1.000000e+00)
  call void @__lua.fun.__lua_build_string(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp57, ptr noundef @.str.3, i32 noundef 1)
  call void @__lua.fun.__lua_get_member(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp56, ptr noundef nonnull align 4 dereferenceable(8) @__lua.var._ENV, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp57, i32 noundef 1422)
  call void @__lua.fun.__lua_set_member(ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Table_20, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp55, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp56, i32 noundef 1422)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp56)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp57)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp55)
  call void @__lua.fun.__lua_build_number(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp58, double noundef 1.000000e+00)
  call void @__lua.fun.__lua_build_nil(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp59)
  call void @__lua.fun.__lua_set_member(ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Table_20, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp58, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp59, i32 noundef 1425)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp59)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp58)
  call void @__lua.fun.__lua_build_number(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp60, double noundef 1.000000e+00)
  call void @__lua.fun.__lua_set_member(ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Table_19, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp60, ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Table_20, i32 noundef 1405)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp60)
  call void @__lua.fun.__lua_build_number(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp61, double noundef 2.000000e+00)
  call void @__lua.fun.__lua_build_string(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp62, ptr noundef @.str.7, i32 noundef 3)
  call void @__lua.fun.__lua_set_member(ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Table_19, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp61, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp62, i32 noundef 1431)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp62)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp61)
  call void @__lua.fun.__lua_build_number(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp63, double noundef 3.000000e+00)
  call void @__lua.fun.__lua_build_nil(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp64)
  call void @__lua.fun.__lua_set_member(ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Table_19, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp63, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp64, i32 noundef 1438)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp64)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp63)
  call void @__lua.fun.__lua_build_number(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp65, double noundef 4.000000e+00)
  call void @__lua.fun.__lua_build_number(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp66, double noundef 4.500000e+01)
  call void @__lua.fun.__lua_set_member(ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Table_19, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp65, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp66, i32 noundef 1443)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp66)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp65)
  call void @__lua.fun.__lua_build_number(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp67, double noundef 5.000000e+00)
  call void @__lua.fun.__lua_build_string(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp69, ptr noundef @.str.3, i32 noundef 1)
  call void @__lua.fun.__lua_get_member(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp68, ptr noundef nonnull align 4 dereferenceable(8) @__lua.var._ENV, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp69, i32 noundef 1447)
  call void @__lua.fun.__lua_set_member(ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Table_19, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp67, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp68, i32 noundef 1447)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp68)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp69)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp67)
  call void @__lua.fun.__lua_build_number(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp70, double noundef 6.000000e+00)
  call void @__lua.fun.__lua_build_nil(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp71)
  call void @__lua.fun.__lua_set_member(ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Table_19, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp70, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp71, i32 noundef 1450)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp71)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp70)
  call void @__lua.fun.__lua_build_number(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp72, double noundef 1.000000e+00)
  call void @__lua.fun.__lua_build_string(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp77, ptr noundef @.str.3, i32 noundef 1)
  call void @__lua.fun.__lua_get_member(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp76, ptr noundef nonnull align 4 dereferenceable(8) @__lua.var._ENV, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp77, i32 noundef 1403)
  call void @__lua.fun.__lua_call(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp75, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp76, ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Table_19, i32 noundef 1403)
  call void @__lua.fun.__lua_build_number(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp78, double noundef 1.000000e+00)
  call void @__lua.fun.__lua_get_member(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp74, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp75, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp78, i32 noundef 1455)
  call void @__lua.fun.__lua_build_number(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp79, double noundef 5.000000e+00)
  call void @__lua.fun.__lua_binop(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp73, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp74, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp79, i32 noundef 14, i32 noundef 1455)
  call void @__lua.fun.__lua_set_member(ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Table_18, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp72, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp73, i32 noundef 1455)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp73)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp79)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp74)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp78)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp75)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp76)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp77)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp72)
  call void @__lua.fun.__lua_build_string(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp82, ptr noundef @.str.6, i32 noundef 6)
  call void @__lua.fun.__lua_get_member(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp81, ptr noundef nonnull align 4 dereferenceable(8) @__lua.var._ENV, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp82, i32 noundef 1396)
  call void @__lua.fun.__lua_call(ptr sret(%class.__lua_object_ptr) align 4 %agg.tmp.ensured80, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp81, ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Table_18, i32 noundef 1396)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %agg.tmp.ensured80)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp81)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp82)
  call void @__lua.fun.__lua_build_table(ptr sret(%class.__lua_object_ptr) align 4 %__Lua_Temp_Table_21)
  call void @__lua.fun.__lua_build_table(ptr sret(%class.__lua_object_ptr) align 4 %__Lua_Temp_Table_22)
  call void @__lua.fun.__lua_build_number(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp83, double noundef 1.000000e+00)
  call void @__lua.fun.__lua_build_number(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp84, double noundef 1.000000e+00)
  call void @__lua.fun.__lua_set_member(ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Table_22, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp83, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp84, i32 noundef 1475)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp84)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp83)
  call void @__lua.fun.__lua_build_number(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp85, double noundef 2.000000e+00)
  call void @__lua.fun.__lua_build_number(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp86, double noundef 2.000000e+00)
  call void @__lua.fun.__lua_set_member(ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Table_22, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp85, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp86, i32 noundef 1477)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp86)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp85)
  call void @__lua.fun.__lua_build_number(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp87, double noundef 1.000000e+00)
  call void @__lua.fun.__lua_build_string(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp92, ptr noundef @.str.4, i32 noundef 3)
  call void @__lua.fun.__lua_get_member(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp91, ptr noundef nonnull align 4 dereferenceable(8) @__lua.var._ENV, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp92, i32 noundef 1471)
  call void @__lua.fun.__lua_call(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp90, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp91, ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Table_22, i32 noundef 1471)
  call void @__lua.fun.__lua_build_number(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp93, double noundef 1.000000e+00)
  call void @__lua.fun.__lua_get_member(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp89, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp90, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp93, i32 noundef 1479)
  call void @__lua.fun.__lua_build_number(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp94, double noundef 5.500000e+01)
  call void @__lua.fun.__lua_binop(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp88, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp89, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp94, i32 noundef 14, i32 noundef 1479)
  call void @__lua.fun.__lua_set_member(ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Table_21, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp87, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp88, i32 noundef 1479)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp88)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp94)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp89)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp93)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp90)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp91)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp92)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp87)
  call void @__lua.fun.__lua_build_string(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp97, ptr noundef @.str.6, i32 noundef 6)
  call void @__lua.fun.__lua_get_member(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp96, ptr noundef nonnull align 4 dereferenceable(8) @__lua.var._ENV, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp97, i32 noundef 1464)
  call void @__lua.fun.__lua_call(ptr sret(%class.__lua_object_ptr) align 4 %agg.tmp.ensured95, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp96, ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Table_21, i32 noundef 1464)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %agg.tmp.ensured95)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp96)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp97)
  call void @__lua.fun.__lua_build_table(ptr sret(%class.__lua_object_ptr) align 4 %__Lua_Temp_Table_23)
  call void @__lua.fun.__lua_build_table(ptr sret(%class.__lua_object_ptr) align 4 %__Lua_Temp_Table_24)
  call void @__lua.fun.__lua_build_number(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp98, double noundef 1.000000e+00)
  call void @__lua.fun.__lua_build_string(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp100, ptr noundef @.str.4, i32 noundef 3)
  call void @__lua.fun.__lua_get_member(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp99, ptr noundef nonnull align 4 dereferenceable(8) @__lua.var._ENV, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp100, i32 noundef 1504)
  call void @__lua.fun.__lua_set_member(ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Table_24, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp98, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp99, i32 noundef 1504)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp99)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp100)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp98)
  call void @__lua.fun.__lua_build_table(ptr sret(%class.__lua_object_ptr) align 4 %__Lua_Temp_Table_25)
  call void @__lua.fun.__lua_build_number(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp101, double noundef 1.000000e+00)
  call void @__lua.fun.__lua_build_number(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp102, double noundef 1.000000e+00)
  call void @__lua.fun.__lua_set_member(ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Table_25, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp101, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp102, i32 noundef 1510)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp102)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp101)
  call void @__lua.fun.__lua_build_number(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp103, double noundef 1.000000e+00)
  call void @__lua.fun.__lua_build_number(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp104, double noundef 2.000000e+00)
  call void @__lua.fun.__lua_set_member(ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Table_25, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp103, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp104, i32 noundef 1512)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp104)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp103)
  call void @__lua.fun.__lua_build_number(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp105, double noundef 2.000000e+00)
  call void @__lua.fun.__lua_set_member(ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Table_24, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp105, ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Table_25, i32 noundef 1509)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp105)
  call void @__lua.fun.__lua_call(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp106, ptr noundef nonnull align 4 dereferenceable(8) %call, ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Table_24, i32 noundef 1499)
  call void @__lua.fun.__lua_add_last_exp(ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Table_23, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp106, i32 noundef 1499)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp106)
  call void @__lua.fun.__lua_build_nil(ptr sret(%class.__lua_object_ptr) align 4 %__Lua_Temp_Obj_2)
  call void @__lua.fun.__lua_build_string(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp109, ptr noundef @.str.6, i32 noundef 6)
  call void @__lua.fun.__lua_get_member(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp108, ptr noundef nonnull align 4 dereferenceable(8) @__lua.var._ENV, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp109, i32 noundef 1492)
  call void @__lua.fun.__lua_call(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp107, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp108, ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Table_23, i32 noundef 1492)
  call void @__lua.fun.__lua_assign_local_var(ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Obj_2, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp107, i32 noundef 1490)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp107)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp108)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp109)
  call void @__lua.fun.__lua_build_string(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp110, ptr noundef @.str.8, i32 noundef 1)
  call void @__lua.fun.__lua_build_nil(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp111)
  call void @__lua.fun.__lua_set_member(ptr noundef nonnull align 4 dereferenceable(8) @__lua.var._ENV, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp110, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp111, i32 noundef 1490)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp111)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp110)
  call void @__lua.fun.__lua_build_string(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp112, ptr noundef @.str.9, i32 noundef 1)
  call void @__lua.fun.__lua_build_nil(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp113)
  call void @__lua.fun.__lua_set_member(ptr noundef nonnull align 4 dereferenceable(8) @__lua.var._ENV, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp112, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp113, i32 noundef 1490)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp113)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp112)
  call void @__lua.fun.__lua_build_table(ptr sret(%class.__lua_object_ptr) align 4 %__Lua_Temp_Table_26)
  call void @__lua.fun.__lua_build_number(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp114, double noundef 1.000000e+00)
  call void @__lua.fun.__lua_build_string(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp118, ptr noundef @.str.8, i32 noundef 1)
  call void @__lua.fun.__lua_get_member(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp117, ptr noundef nonnull align 4 dereferenceable(8) @__lua.var._ENV, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp118, i32 noundef 1525)
  call void @__lua.fun.__lua_build_number(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp119, double noundef 5.500000e+01)
  call void @__lua.fun.__lua_binop(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp116, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp117, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp119, i32 noundef 14, i32 noundef 1527)
  call void @__lua.fun.__lua_build_string(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp122, ptr noundef @.str.9, i32 noundef 1)
  call void @__lua.fun.__lua_get_member(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp121, ptr noundef nonnull align 4 dereferenceable(8) @__lua.var._ENV, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp122, i32 noundef 1537)
  call void @__lua.fun.__lua_build_number(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp123, double noundef 2.000000e+00)
  call void @__lua.fun.__lua_binop(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp120, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp121, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp123, i32 noundef 14, i32 noundef 1539)
  call void @__lua.fun.__lua_binop(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp115, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp116, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp120, i32 noundef 16, i32 noundef 1533)
  call void @__lua.fun.__lua_set_member(ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Table_26, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp114, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp115, i32 noundef 1533)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp115)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp120)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp123)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp121)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp122)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp116)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp119)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp117)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp118)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp114)
  call void @__lua.fun.__lua_build_string(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp126, ptr noundef @.str.6, i32 noundef 6)
  call void @__lua.fun.__lua_get_member(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp125, ptr noundef nonnull align 4 dereferenceable(8) @__lua.var._ENV, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp126, i32 noundef 1518)
  call void @__lua.fun.__lua_call(ptr sret(%class.__lua_object_ptr) align 4 %agg.tmp.ensured124, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp125, ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Table_26, i32 noundef 1518)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %agg.tmp.ensured124)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp125)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp126)
  call void @__lua.fun.__lua_build_table(ptr sret(%class.__lua_object_ptr) align 4 %__Lua_Temp_Table_27)
  call void @__lua.fun.__lua_build_number(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp127, double noundef 1.000000e+00)
  call void @__lua.fun.__lua_build_string(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp129, ptr noundef @.str.4, i32 noundef 3)
  call void @__lua.fun.__lua_get_member(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp128, ptr noundef nonnull align 4 dereferenceable(8) @__lua.var._ENV, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp129, i32 noundef 1555)
  call void @__lua.fun.__lua_set_member(ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Table_27, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp127, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp128, i32 noundef 1555)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp128)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp129)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp127)
  call void @__lua.fun.__lua_build_table(ptr sret(%class.__lua_object_ptr) align 4 %__Lua_Temp_Table_28)
  call void @__lua.fun.__lua_build_number(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp130, double noundef 1.000000e+00)
  call void @__lua.fun.__lua_build_number(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp131, double noundef 1.000000e+00)
  call void @__lua.fun.__lua_set_member(ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Table_28, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp130, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp131, i32 noundef 1561)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp131)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp130)
  call void @__lua.fun.__lua_build_number(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp132, double noundef 1.000000e+00)
  call void @__lua.fun.__lua_build_number(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp133, double noundef 2.000000e+00)
  call void @__lua.fun.__lua_set_member(ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Table_28, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp132, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp133, i32 noundef 1563)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp133)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp132)
  call void @__lua.fun.__lua_build_string(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp134, ptr noundef @.str.10, i32 noundef 1)
  call void @__lua.fun.__lua_build_number(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp135, double noundef 2.000000e+00)
  call void @__lua.fun.__lua_set_member(ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Table_28, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp134, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp135, i32 noundef 1566)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp135)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp134)
  call void @__lua.fun.__lua_build_number(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp136, double noundef 2.000000e+00)
  call void @__lua.fun.__lua_set_member(ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Table_27, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp136, ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Table_28, i32 noundef 1560)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp136)
  call void @__lua.fun.__lua_build_string(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp137, ptr noundef @.str.8, i32 noundef 1)
  call void @__lua.fun.__lua_call(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp139, ptr noundef nonnull align 4 dereferenceable(8) %call, ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Table_27, i32 noundef 1550)
  call void @__lua.fun.__lua_build_number(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp140, double noundef 1.000000e+00)
  call void @__lua.fun.__lua_get_member(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp138, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp139, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp140, i32 noundef 1548)
  call void @__lua.fun.__lua_set_member(ptr noundef nonnull align 4 dereferenceable(8) @__lua.var._ENV, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp137, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp138, i32 noundef 1548)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp138)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp140)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp139)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp137)
  call void @__lua.fun.__lua_build_table(ptr sret(%class.__lua_object_ptr) align 4 %__Lua_Temp_Table_29)
  call void @__lua.fun.__lua_build_number(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp141, double noundef 1.000000e+00)
  call void @__lua.fun.__lua_build_string(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp145, ptr noundef @.str.8, i32 noundef 1)
  call void @__lua.fun.__lua_get_member(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp144, ptr noundef nonnull align 4 dereferenceable(8) @__lua.var._ENV, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp145, i32 noundef 1579)
  call void @__lua.fun.__lua_build_number(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp146, double noundef 5.500000e+01)
  call void @__lua.fun.__lua_binop(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp143, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp144, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp146, i32 noundef 14, i32 noundef 1581)
  call void @__lua.fun.__lua_build_string(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp149, ptr noundef @.str.9, i32 noundef 1)
  call void @__lua.fun.__lua_get_member(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp148, ptr noundef nonnull align 4 dereferenceable(8) @__lua.var._ENV, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp149, i32 noundef 1591)
  call void @__lua.fun.__lua_build_number(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp150, double noundef 2.000000e+00)
  call void @__lua.fun.__lua_binop(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp147, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp148, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp150, i32 noundef 14, i32 noundef 1593)
  call void @__lua.fun.__lua_binop(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp142, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp143, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp147, i32 noundef 16, i32 noundef 1587)
  call void @__lua.fun.__lua_set_member(ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Table_29, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp141, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp142, i32 noundef 1587)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp142)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp147)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp150)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp148)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp149)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp143)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp146)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp144)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp145)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp141)
  call void @__lua.fun.__lua_build_string(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp153, ptr noundef @.str.6, i32 noundef 6)
  call void @__lua.fun.__lua_get_member(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp152, ptr noundef nonnull align 4 dereferenceable(8) @__lua.var._ENV, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp153, i32 noundef 1572)
  call void @__lua.fun.__lua_call(ptr sret(%class.__lua_object_ptr) align 4 %agg.tmp.ensured151, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp152, ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Table_29, i32 noundef 1572)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %agg.tmp.ensured151)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp152)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp153)
  call void @__lua.fun.__lua_build_table(ptr sret(%class.__lua_object_ptr) align 4 %__Lua_Temp_Table_30)
  call void @__lua.fun.__lua_build_number(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp154, double noundef 1.000000e+00)
  call void @__lua.fun.__lua_build_string(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp156, ptr noundef @.str.4, i32 noundef 3)
  call void @__lua.fun.__lua_get_member(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp155, ptr noundef nonnull align 4 dereferenceable(8) @__lua.var._ENV, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp156, i32 noundef 1609)
  call void @__lua.fun.__lua_set_member(ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Table_30, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp154, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp155, i32 noundef 1609)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp155)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp156)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp154)
  call void @__lua.fun.__lua_build_table(ptr sret(%class.__lua_object_ptr) align 4 %__Lua_Temp_Table_31)
  call void @__lua.fun.__lua_build_number(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp157, double noundef 1.000000e+00)
  call void @__lua.fun.__lua_build_number(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp158, double noundef 1.000000e+00)
  call void @__lua.fun.__lua_set_member(ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Table_31, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp157, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp158, i32 noundef 1615)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp158)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp157)
  call void @__lua.fun.__lua_build_number(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp159, double noundef 1.000000e+00)
  call void @__lua.fun.__lua_build_number(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp160, double noundef 2.000000e+00)
  call void @__lua.fun.__lua_set_member(ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Table_31, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp159, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp160, i32 noundef 1617)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp160)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp159)
  call void @__lua.fun.__lua_build_string(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp161, ptr noundef @.str.10, i32 noundef 1)
  call void @__lua.fun.__lua_build_number(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp162, double noundef 1.000000e+00)
  call void @__lua.fun.__lua_set_member(ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Table_31, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp161, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp162, i32 noundef 1620)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp162)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp161)
  call void @__lua.fun.__lua_build_number(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp163, double noundef 2.000000e+00)
  call void @__lua.fun.__lua_set_member(ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Table_30, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp163, ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Table_31, i32 noundef 1614)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp163)
  call void @__lua.fun.__lua_build_string(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp164, ptr noundef @.str.8, i32 noundef 1)
  call void @__lua.fun.__lua_call(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp166, ptr noundef nonnull align 4 dereferenceable(8) %call, ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Table_30, i32 noundef 1604)
  call void @__lua.fun.__lua_build_number(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp167, double noundef 1.000000e+00)
  call void @__lua.fun.__lua_get_member(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp165, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp166, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp167, i32 noundef 1602)
  call void @__lua.fun.__lua_set_member(ptr noundef nonnull align 4 dereferenceable(8) @__lua.var._ENV, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp164, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp165, i32 noundef 1602)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp165)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp167)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp166)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp164)
  call void @__lua.fun.__lua_build_table(ptr sret(%class.__lua_object_ptr) align 4 %__Lua_Temp_Table_32)
  call void @__lua.fun.__lua_build_number(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp168, double noundef 1.000000e+00)
  call void @__lua.fun.__lua_build_string(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp171, ptr noundef @.str.8, i32 noundef 1)
  call void @__lua.fun.__lua_get_member(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp170, ptr noundef nonnull align 4 dereferenceable(8) @__lua.var._ENV, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp171, i32 noundef 1637)
  call void @__lua.fun.__lua_unop(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp169, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp170, i32 noundef 9, i32 noundef 1633)
  call void @__lua.fun.__lua_set_member(ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Table_32, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp168, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp169, i32 noundef 1633)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp169)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp170)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp171)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp168)
  call void @__lua.fun.__lua_build_string(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp174, ptr noundef @.str.6, i32 noundef 6)
  call void @__lua.fun.__lua_get_member(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp173, ptr noundef nonnull align 4 dereferenceable(8) @__lua.var._ENV, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp174, i32 noundef 1626)
  call void @__lua.fun.__lua_call(ptr sret(%class.__lua_object_ptr) align 4 %agg.tmp.ensured172, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp173, ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Table_32, i32 noundef 1626)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %agg.tmp.ensured172)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp173)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp174)
  call void @__lua.fun.__lua_build_table(ptr sret(%class.__lua_object_ptr) align 4 %__Lua_Temp_Table_33)
  call void @__lua.fun.__lua_build_table(ptr sret(%class.__lua_object_ptr) align 4 %__Lua_Temp_Table_34)
  call void @__lua.fun.__lua_build_number(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp175, double noundef 1.000000e+00)
  call void @__lua.fun.__lua_build_number(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp176, double noundef 1.000000e+00)
  call void @__lua.fun.__lua_set_member(ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Table_34, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp175, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp176, i32 noundef 1652)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp176)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp175)
  call void @__lua.fun.__lua_build_number(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp177, double noundef 2.000000e+00)
  call void @__lua.fun.__lua_build_number(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp178, double noundef 2.000000e+00)
  call void @__lua.fun.__lua_set_member(ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Table_34, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp177, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp178, i32 noundef 1654)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp178)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp177)
  call void @__lua.fun.__lua_build_number(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp179, double noundef 3.000000e+00)
  call void @__lua.fun.__lua_build_number(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp180, double noundef 3.000000e+00)
  call void @__lua.fun.__lua_set_member(ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Table_34, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp179, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp180, i32 noundef 1656)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp180)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp179)
  call void @__lua.fun.__lua_build_number(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp181, double noundef 1.000000e+00)
  call void @__lua.fun.__lua_build_string(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp186, ptr noundef @.str.4, i32 noundef 3)
  call void @__lua.fun.__lua_get_member(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp185, ptr noundef nonnull align 4 dereferenceable(8) @__lua.var._ENV, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp186, i32 noundef 1648)
  call void @__lua.fun.__lua_call(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp184, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp185, ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Table_34, i32 noundef 1648)
  call void @__lua.fun.__lua_build_number(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp187, double noundef 1.000000e+00)
  call void @__lua.fun.__lua_get_member(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp183, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp184, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp187, i32 noundef 1659)
  call void @__lua.fun.__lua_build_bool(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp188, i1 noundef zeroext false)
  call void @__lua.fun.__lua_binop(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp182, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp183, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp188, i32 noundef 14, i32 noundef 1659)
  call void @__lua.fun.__lua_set_member(ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Table_33, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp181, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp182, i32 noundef 1659)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp182)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp188)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp183)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp187)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp184)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp185)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp186)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp181)
  call void @__lua.fun.__lua_build_string(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp191, ptr noundef @.str.6, i32 noundef 6)
  call void @__lua.fun.__lua_get_member(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp190, ptr noundef nonnull align 4 dereferenceable(8) @__lua.var._ENV, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp191, i32 noundef 1641)
  call void @__lua.fun.__lua_call(ptr sret(%class.__lua_object_ptr) align 4 %agg.tmp.ensured189, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp190, ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Table_33, i32 noundef 1641)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %agg.tmp.ensured189)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp190)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp191)
  call void @__lua.fun.__lua_build_nil(ptr sret(%class.__lua_object_ptr) align 4 %a)
  call void @__lua.fun.__lua_build_table(ptr sret(%class.__lua_object_ptr) align 4 %__Lua_Temp_Table_35)
  call void @__lua.fun.__lua_build_table(ptr sret(%class.__lua_object_ptr) align 4 %__Lua_Temp_Table_36)
  call void @__lua.fun.__lua_build_number(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp192, double noundef 1.000000e+00)
  call void @__lua.fun.__lua_build_string(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp194, ptr noundef @.str.11, i32 noundef 4)
  call void @__lua.fun.__lua_get_member(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp193, ptr noundef nonnull align 4 dereferenceable(8) @__lua.var._ENV, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp194, i32 noundef 1692)
  call void @__lua.fun.__lua_set_member(ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Table_36, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp192, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp193, i32 noundef 1692)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp193)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp194)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp192)
  call void @__lua.fun.__lua_build_table(ptr sret(%class.__lua_object_ptr) align 4 %__Lua_Temp_Table_37)
  call void @__lua.fun.__lua_build_number(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp195, double noundef 1.000000e+00)
  call void @__lua.fun.__lua_set_member(ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Table_37, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp195, ptr noundef nonnull align 4 dereferenceable(8) @__lua.var._G, i32 noundef 1699)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp195)
  call void @__lua.fun.__lua_build_number(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp196, double noundef 1.000000e+00)
  call void @__lua.fun.__lua_build_nil(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp197)
  call void @__lua.fun.__lua_set_member(ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Table_37, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp196, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp197, i32 noundef 1702)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp197)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp196)
  call void @__lua.fun.__lua_build_string(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp198, ptr noundef @.str.10, i32 noundef 1)
  call void @__lua.fun.__lua_build_number(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp199, double noundef 2.000000e+00)
  call void @__lua.fun.__lua_set_member(ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Table_37, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp198, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp199, i32 noundef 1707)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp199)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp198)
  call void @__lua.fun.__lua_build_number(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp200, double noundef 2.000000e+00)
  call void @__lua.fun.__lua_set_member(ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Table_36, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp200, ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Table_37, i32 noundef 1698)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp200)
  call void @__lua.fun.__lua_call(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp201, ptr noundef nonnull align 4 dereferenceable(8) %call, ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Table_36, i32 noundef 1687)
  call void @__lua.fun.__lua_add_last_exp(ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Table_35, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp201, i32 noundef 1687)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp201)
  call void @__lua.fun.__lua_build_string(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp205, ptr noundef @.str.5, i32 noundef 6)
  call void @__lua.fun.__lua_get_member(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp204, ptr noundef nonnull align 4 dereferenceable(8) @__lua.var._ENV, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp205, i32 noundef 1680)
  call void @__lua.fun.__lua_call(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp203, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp204, ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Table_35, i32 noundef 1680)
  call void @__lua.fun.__lua_build_number(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp206, double noundef 1.000000e+00)
  call void @__lua.fun.__lua_get_member(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp202, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp203, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp206, i32 noundef 1680)
  call void @__lua.fun.__lua_assign_local_var(ptr noundef nonnull align 4 dereferenceable(8) %a, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp202, i32 noundef 1680)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp202)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp206)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp203)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp204)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp205)
  call void @__lua.fun.__lua_build_nil(ptr sret(%class.__lua_object_ptr) align 4 %b)
  call void @__lua.fun.__lua_build_nil(ptr sret(%class.__lua_object_ptr) align 4 %c)
  call void @__lua.fun.__lua_build_table(ptr sret(%class.__lua_object_ptr) align 4 %__Lua_Temp_Table_38)
  call void @__lua.fun.__lua_build_number(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp207, double noundef 1.000000e+00)
  call void @__lua.fun.__lua_set_member(ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Table_38, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp207, ptr noundef nonnull align 4 dereferenceable(8) @__lua.var._G, i32 noundef 1731)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp207)
  call void @__lua.fun.__lua_build_nil(ptr sret(%class.__lua_object_ptr) align 4 %__Lua_Temp_Obj_3)
  call void @__lua.fun.__lua_build_string(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp210, ptr noundef @.str.11, i32 noundef 4)
  call void @__lua.fun.__lua_get_member(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp209, ptr noundef nonnull align 4 dereferenceable(8) @__lua.var._ENV, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp210, i32 noundef 1726)
  call void @__lua.fun.__lua_call(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp208, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp209, ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Table_38, i32 noundef 1726)
  call void @__lua.fun.__lua_assign_local_var(ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Obj_3, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp208, i32 noundef 1726)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp208)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp209)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp210)
  call void @__lua.fun.__lua_build_string(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp214, ptr noundef @.str.11, i32 noundef 4)
  call void @__lua.fun.__lua_get_member(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp213, ptr noundef nonnull align 4 dereferenceable(8) @__lua.var._ENV, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp214, i32 noundef 1726)
  call void @__lua.fun.__lua_call(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp212, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp213, ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Table_38, i32 noundef 1726)
  call void @__lua.fun.__lua_build_number(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp215, double noundef 1.000000e+00)
  call void @__lua.fun.__lua_get_member(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp211, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp212, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp215, i32 noundef 1726)
  call void @__lua.fun.__lua_assign_local_var(ptr noundef nonnull align 4 dereferenceable(8) %b, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp211, i32 noundef 1726)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp211)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp215)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp212)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp213)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp214)
  call void @__lua.fun.__lua_build_number(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp217, double noundef 1.000000e+00)
  call void @__lua.fun.__lua_get_member(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp216, ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Obj_3, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp217, i32 noundef 1726)
  call void @__lua.fun.__lua_assign_local_var(ptr noundef nonnull align 4 dereferenceable(8) %c, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp216, i32 noundef 1726)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp216)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp217)
  call void @__lua.fun.__lua_build_table(ptr sret(%class.__lua_object_ptr) align 4 %__Lua_Temp_Table_39)
  call void @__lua.fun.__lua_build_number(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp218, double noundef 1.000000e+00)
  call void @__lua.fun.__lua_build_number(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp223, double noundef 1.000000e+00)
  call void @__lua.fun.__lua_get_member(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp222, ptr noundef nonnull align 4 dereferenceable(8) %a, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp223, i32 noundef 1744)
  call void @__lua.fun.__lua_binop(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp221, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp222, ptr noundef nonnull align 4 dereferenceable(8) %b, i32 noundef 14, i32 noundef 1748)
  call void @__lua.fun.__lua_build_number(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp226, double noundef 2.000000e+00)
  call void @__lua.fun.__lua_get_member(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp225, ptr noundef nonnull align 4 dereferenceable(8) %a, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp226, i32 noundef 1758)
  call void @__lua.fun.__lua_binop(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp224, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp225, ptr noundef nonnull align 4 dereferenceable(8) %c, i32 noundef 14, i32 noundef 1762)
  call void @__lua.fun.__lua_binop(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp220, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp221, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp224, i32 noundef 16, i32 noundef 1753)
  call void @__lua.fun.__lua_build_string(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp229, ptr noundef @.str.10, i32 noundef 1)
  call void @__lua.fun.__lua_get_member(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp228, ptr noundef nonnull align 4 dereferenceable(8) %a, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp229, i32 noundef 1772)
  call void @__lua.fun.__lua_build_number(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp230, double noundef 2.000000e+00)
  call void @__lua.fun.__lua_binop(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp227, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp228, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp230, i32 noundef 14, i32 noundef 1775)
  call void @__lua.fun.__lua_binop(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp219, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp220, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp227, i32 noundef 16, i32 noundef 1767)
  call void @__lua.fun.__lua_set_member(ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Table_39, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp218, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp219, i32 noundef 1767)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp219)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp227)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp230)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp228)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp229)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp220)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp224)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp225)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp226)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp221)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp222)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp223)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp218)
  call void @__lua.fun.__lua_build_string(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp233, ptr noundef @.str.6, i32 noundef 6)
  call void @__lua.fun.__lua_get_member(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp232, ptr noundef nonnull align 4 dereferenceable(8) @__lua.var._ENV, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp233, i32 noundef 1736)
  call void @__lua.fun.__lua_call(ptr sret(%class.__lua_object_ptr) align 4 %agg.tmp.ensured231, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp232, ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Table_39, i32 noundef 1736)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %agg.tmp.ensured231)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp232)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp233)
  call void @__lua.fun.__lua_build_table(ptr sret(%class.__lua_object_ptr) align 4 %__Lua_Temp_Table_40)
  call void @__lua.fun.__lua_build_table(ptr sret(%class.__lua_object_ptr) align 4 %__Lua_Temp_Table_41)
  call void @__lua.fun.__lua_build_number(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp234, double noundef 1.000000e+00)
  call void @__lua.fun.__lua_set_member(ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Table_41, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp234, ptr noundef nonnull align 4 dereferenceable(8) %call, i32 noundef 1798)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp234)
  call void @__lua.fun.__lua_build_table(ptr sret(%class.__lua_object_ptr) align 4 %__Lua_Temp_Table_42)
  call void @__lua.fun.__lua_build_number(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp235, double noundef 1.000000e+00)
  call void @__lua.fun.__lua_build_string(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp237, ptr noundef @.str.4, i32 noundef 3)
  call void @__lua.fun.__lua_get_member(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp236, ptr noundef nonnull align 4 dereferenceable(8) @__lua.var._ENV, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp237, i32 noundef 1805)
  call void @__lua.fun.__lua_set_member(ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Table_42, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp235, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp236, i32 noundef 1805)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp236)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp237)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp235)
  call void @__lua.fun.__lua_build_table(ptr sret(%class.__lua_object_ptr) align 4 %__Lua_Temp_Table_43)
  call void @__lua.fun.__lua_build_number(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp238, double noundef 1.000000e+00)
  call void @__lua.fun.__lua_build_number(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp239, double noundef 1.000000e+00)
  call void @__lua.fun.__lua_set_member(ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Table_43, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp238, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp239, i32 noundef 1811)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp239)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp238)
  call void @__lua.fun.__lua_build_number(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp240, double noundef 1.000000e+00)
  call void @__lua.fun.__lua_build_number(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp241, double noundef 2.000000e+00)
  call void @__lua.fun.__lua_set_member(ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Table_43, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp240, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp241, i32 noundef 1813)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp241)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp240)
  call void @__lua.fun.__lua_build_number(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp242, double noundef 1.000000e+00)
  call void @__lua.fun.__lua_set_member(ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Table_42, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp242, ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Table_43, i32 noundef 1810)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp242)
  call void @__lua.fun.__lua_build_number(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp243, double noundef 2.000000e+00)
  call void @__lua.fun.__lua_set_member(ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Table_41, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp243, ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Table_42, i32 noundef 1804)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp243)
  call void @__lua.fun.__lua_call(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp244, ptr noundef nonnull align 4 dereferenceable(8) %call, ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Table_41, i32 noundef 1793)
  call void @__lua.fun.__lua_add_last_exp(ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Table_40, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp244, i32 noundef 1793)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp244)
  call void @__lua.fun.__lua_build_string(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp248, ptr noundef @.str.5, i32 noundef 6)
  call void @__lua.fun.__lua_get_member(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp247, ptr noundef nonnull align 4 dereferenceable(8) @__lua.var._ENV, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp248, i32 noundef 1786)
  call void @__lua.fun.__lua_call(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp246, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp247, ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Table_40, i32 noundef 1786)
  call void @__lua.fun.__lua_build_number(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp249, double noundef 1.000000e+00)
  call void @__lua.fun.__lua_get_member(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp245, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp246, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp249, i32 noundef 1784)
  call void @__lua.fun.__lua_assign_local_var(ptr noundef nonnull align 4 dereferenceable(8) %a, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp245, i32 noundef 1784)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp245)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp249)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp246)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp247)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp248)
  call void @__lua.fun.__lua_build_table(ptr sret(%class.__lua_object_ptr) align 4 %__Lua_Temp_Table_44)
  call void @__lua.fun.__lua_build_number(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp250, double noundef 1.000000e+00)
  call void @__lua.fun.__lua_build_string(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp255, ptr noundef @.str.10, i32 noundef 1)
  call void @__lua.fun.__lua_get_member(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp254, ptr noundef nonnull align 4 dereferenceable(8) %a, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp255, i32 noundef 1828)
  call void @__lua.fun.__lua_build_number(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp256, double noundef 2.000000e+00)
  call void @__lua.fun.__lua_binop(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp253, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp254, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp256, i32 noundef 14, i32 noundef 1831)
  call void @__lua.fun.__lua_build_number(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp259, double noundef 1.000000e+00)
  call void @__lua.fun.__lua_get_member(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp258, ptr noundef nonnull align 4 dereferenceable(8) %a, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp259, i32 noundef 1841)
  call void @__lua.fun.__lua_build_number(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp260, double noundef 5.500000e+01)
  call void @__lua.fun.__lua_binop(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp257, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp258, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp260, i32 noundef 14, i32 noundef 1845)
  call void @__lua.fun.__lua_binop(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp252, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp253, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp257, i32 noundef 16, i32 noundef 1836)
  call void @__lua.fun.__lua_build_number(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp263, double noundef 2.000000e+00)
  call void @__lua.fun.__lua_get_member(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp262, ptr noundef nonnull align 4 dereferenceable(8) %a, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp263, i32 noundef 1856)
  call void @__lua.fun.__lua_build_number(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp264, double noundef 2.000000e+00)
  call void @__lua.fun.__lua_binop(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp261, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp262, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp264, i32 noundef 14, i32 noundef 1860)
  call void @__lua.fun.__lua_binop(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp251, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp252, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp261, i32 noundef 16, i32 noundef 1851)
  call void @__lua.fun.__lua_set_member(ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Table_44, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp250, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp251, i32 noundef 1851)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp251)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp261)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp264)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp262)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp263)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp252)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp257)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp260)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp258)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp259)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp253)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp256)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp254)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp255)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp250)
  call void @__lua.fun.__lua_build_string(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp267, ptr noundef @.str.6, i32 noundef 6)
  call void @__lua.fun.__lua_get_member(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp266, ptr noundef nonnull align 4 dereferenceable(8) @__lua.var._ENV, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp267, i32 noundef 1820)
  call void @__lua.fun.__lua_call(ptr sret(%class.__lua_object_ptr) align 4 %agg.tmp.ensured265, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp266, ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Table_44, i32 noundef 1820)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %agg.tmp.ensured265)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp266)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp267)
  call void @__lua.fun.__lua_build_table(ptr sret(%class.__lua_object_ptr) align 4 %__Lua_Temp_Table_45)
  call void @__lua.fun.__lua_build_number(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp268, double noundef 1.000000e+00)
  call void @__lua.fun.__lua_build_string(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp270, ptr noundef @.str.1, i32 noundef 5)
  call void @__lua.fun.__lua_get_member(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp269, ptr noundef nonnull align 4 dereferenceable(8) @__lua.var._ENV, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp270, i32 noundef 1876)
  call void @__lua.fun.__lua_set_member(ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Table_45, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp268, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp269, i32 noundef 1876)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp269)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp270)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp268)
  call void @__lua.fun.__lua_build_table(ptr sret(%class.__lua_object_ptr) align 4 %__Lua_Temp_Table_46)
  call void @__lua.fun.__lua_build_number(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp271, double noundef 1.000000e+00)
  call void @__lua.fun.__lua_build_string(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp272, ptr noundef @.str.12, i32 noundef 1)
  call void @__lua.fun.__lua_set_member(ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Table_46, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp271, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp272, i32 noundef 1884)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp272)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp271)
  call void @__lua.fun.__lua_build_number(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp273, double noundef 2.000000e+00)
  call void @__lua.fun.__lua_set_member(ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Table_45, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp273, ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Table_46, i32 noundef 1883)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp273)
  call void @__lua.fun.__lua_call(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp275, ptr noundef nonnull align 4 dereferenceable(8) %call, ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Table_45, i32 noundef 1871)
  call void @__lua.fun.__lua_build_number(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp276, double noundef 1.000000e+00)
  call void @__lua.fun.__lua_get_member(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp274, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp275, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp276, i32 noundef 1869)
  call void @__lua.fun.__lua_assign_local_var(ptr noundef nonnull align 4 dereferenceable(8) %a, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp274, i32 noundef 1869)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp274)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp276)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp275)
  call void @__lua.fun.__lua_build_table(ptr sret(%class.__lua_object_ptr) align 4 %__Lua_Temp_Table_47)
  call void @__lua.fun.__lua_build_number(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp277, double noundef 1.000000e+00)
  call void @__lua.fun.__lua_build_nil(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp279)
  call void @__lua.fun.__lua_binop(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp278, ptr noundef nonnull align 4 dereferenceable(8) %a, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp279, i32 noundef 14, i32 noundef 1900)
  call void @__lua.fun.__lua_set_member(ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Table_47, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp277, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp278, i32 noundef 1900)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp278)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp279)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp277)
  call void @__lua.fun.__lua_build_string(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp282, ptr noundef @.str.6, i32 noundef 6)
  call void @__lua.fun.__lua_get_member(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp281, ptr noundef nonnull align 4 dereferenceable(8) @__lua.var._ENV, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp282, i32 noundef 1891)
  call void @__lua.fun.__lua_call(ptr sret(%class.__lua_object_ptr) align 4 %agg.tmp.ensured280, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp281, ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Table_47, i32 noundef 1891)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %agg.tmp.ensured280)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp281)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp282)
  call void @__lua.fun.__lua_build_nil(ptr sret(%class.__lua_object_ptr) align 4 %t)
  call void @__lua.fun.__lua_build_table(ptr sret(%class.__lua_object_ptr) align 4 %__Lua_Temp_Table_48)
  call void @__lua.fun.__lua_build_number(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp283, double noundef 1.000000e+00)
  call void @__lua.fun.__lua_build_number(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp284, double noundef 1.000000e+00)
  call void @__lua.fun.__lua_set_member(ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Table_48, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp283, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp284, i32 noundef 1922)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp284)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp283)
  call void @__lua.fun.__lua_build_number(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp285, double noundef 1.000000e+00)
  call void @__lua.fun.__lua_build_number(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp286, double noundef 1.000000e+01)
  call void @__lua.fun.__lua_set_member(ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Table_48, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp285, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp286, i32 noundef 1925)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp286)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp285)
  call void @__lua.fun.__lua_assign_local_var(ptr noundef nonnull align 4 dereferenceable(8) %t, ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Table_48, i32 noundef 1921)
  call void @__lua.fun.__lua_build_closure(ptr sret(%class.__lua_object_ptr) align 4 %__Lua_Temp_Closure_4)
  store ptr @__lua.fun.__Lua_Temp_Method_5, ptr %ref.tmp287, align 4
  call void @__lua.fun.__lua_set_closure_function(ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Closure_4, ptr noundef nonnull align 4 dereferenceable(4) %ref.tmp287, i32 noundef 1943)
  call void @__lua.fun.__lua_build_string(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp288, ptr noundef @.str.3, i32 noundef 1)
  call void @__lua.fun.__lua_set_member(ptr noundef nonnull align 4 dereferenceable(8) %t, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp288, ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Closure_4, i32 noundef 1943)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp288)
  call void @__lua.fun.__lua_build_table(ptr sret(%class.__lua_object_ptr) align 4 %__Lua_Temp_Table_51)
  call void @__lua.fun.__lua_build_table(ptr sret(%class.__lua_object_ptr) align 4 %__Lua_Temp_Table_52)
  call void @__lua.fun.__lua_build_number(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp289, double noundef 1.000000e+00)
  call void @__lua.fun.__lua_set_member(ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Table_52, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp289, ptr noundef nonnull align 4 dereferenceable(8) %t, i32 noundef 2002)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp289)
  call void @__lua.fun.__lua_build_number(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp290, double noundef 1.000000e+00)
  call void @__lua.fun.__lua_build_number(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp291, double noundef 1.000000e+00)
  call void @__lua.fun.__lua_set_member(ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Table_52, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp290, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp291, i32 noundef 2006)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp291)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp290)
  call void @__lua.fun.__lua_build_number(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp292, double noundef 2.000000e+00)
  call void @__lua.fun.__lua_build_number(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp293, double noundef 4.000000e+00)
  call void @__lua.fun.__lua_set_member(ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Table_52, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp292, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp293, i32 noundef 2008)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp293)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp292)
  call void @__lua.fun.__lua_build_table(ptr sret(%class.__lua_object_ptr) align 4 %__Lua_Temp_Table_53)
  call void @__lua.fun.__lua_build_number(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp294, double noundef 1.000000e+00)
  call void @__lua.fun.__lua_set_member(ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Table_53, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp294, ptr noundef nonnull align 4 dereferenceable(8) %t, i32 noundef 2020)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp294)
  call void @__lua.fun.__lua_build_number(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp295, double noundef 1.000000e+00)
  call void @__lua.fun.__lua_build_number(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp296, double noundef 2.000000e+00)
  call void @__lua.fun.__lua_set_member(ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Table_53, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp295, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp296, i32 noundef 2024)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp296)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp295)
  call void @__lua.fun.__lua_build_number(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp297, double noundef 1.000000e+00)
  call void @__lua.fun.__lua_build_string(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp303, ptr noundef @.str.3, i32 noundef 1)
  call void @__lua.fun.__lua_get_member(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp302, ptr noundef nonnull align 4 dereferenceable(8) %t, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp303, i32 noundef 2003)
  call void @__lua.fun.__lua_call(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp301, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp302, ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Table_52, i32 noundef 2003)
  call void @__lua.fun.__lua_build_number(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp304, double noundef 1.000000e+00)
  call void @__lua.fun.__lua_get_member(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp300, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp301, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp304, i32 noundef 2011)
  call void @__lua.fun.__lua_build_number(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp305, double noundef 3.000000e+00)
  call void @__lua.fun.__lua_binop(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp299, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp300, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp305, i32 noundef 14, i32 noundef 2011)
  call void @__lua.fun.__lua_build_string(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp310, ptr noundef @.str.3, i32 noundef 1)
  call void @__lua.fun.__lua_get_member(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp309, ptr noundef nonnull align 4 dereferenceable(8) %t, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp310, i32 noundef 2021)
  call void @__lua.fun.__lua_call(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp308, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp309, ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Table_53, i32 noundef 2021)
  call void @__lua.fun.__lua_build_number(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp311, double noundef 1.000000e+00)
  call void @__lua.fun.__lua_get_member(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp307, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp308, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp311, i32 noundef 2027)
  call void @__lua.fun.__lua_build_number(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp312, double noundef 1.100000e+01)
  call void @__lua.fun.__lua_binop(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp306, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp307, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp312, i32 noundef 14, i32 noundef 2027)
  call void @__lua.fun.__lua_binop(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp298, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp299, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp306, i32 noundef 16, i32 noundef 2016)
  call void @__lua.fun.__lua_set_member(ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Table_51, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp297, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp298, i32 noundef 2016)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp298)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp306)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp312)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp307)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp311)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp308)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp309)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp310)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp299)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp305)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp300)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp304)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp301)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp302)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp303)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp297)
  call void @__lua.fun.__lua_build_string(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp315, ptr noundef @.str.6, i32 noundef 6)
  call void @__lua.fun.__lua_get_member(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp314, ptr noundef nonnull align 4 dereferenceable(8) @__lua.var._ENV, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp315, i32 noundef 1995)
  call void @__lua.fun.__lua_call(ptr sret(%class.__lua_object_ptr) align 4 %agg.tmp.ensured313, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp314, ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Table_51, i32 noundef 1995)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %agg.tmp.ensured313)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp314)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp315)
  call void @__lua.fun.__lua_build_table(ptr sret(%class.__lua_object_ptr) align 4 %__Lua_Temp_Table_54)
  call void @__lua.fun.__lua_build_number(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp316, double noundef 1.000000e+00)
  call void @__lua.fun.__lua_build_string(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp317, ptr noundef @.str.12, i32 noundef 1)
  call void @__lua.fun.__lua_set_member(ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Table_54, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp316, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp317, i32 noundef 2041)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp317)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp316)
  call void @__lua.fun.__lua_build_string(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp320, ptr noundef @.str.1, i32 noundef 5)
  call void @__lua.fun.__lua_get_member(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp319, ptr noundef nonnull align 4 dereferenceable(8) @__lua.var._ENV, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp320, i32 noundef 2035)
  call void @__lua.fun.__lua_call(ptr sret(%class.__lua_object_ptr) align 4 %agg.tmp.ensured318, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp319, ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Table_54, i32 noundef 2035)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %agg.tmp.ensured318)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp319)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp320)
  call void @__lua.fun.__lua_build_string(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp321, ptr noundef @.str.13, i32 noundef 3)
  call void @__lua.fun.__lua_build_number(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp322, double noundef 2.000000e+01)
  call void @__lua.fun.__lua_set_member(ptr noundef nonnull align 4 dereferenceable(8) @__lua.var._ENV, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp321, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp322, i32 noundef 2053)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp322)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp321)
  call void @__lua.fun.__lua_build_nil(ptr sret(%class.__lua_object_ptr) align 4 %i)
  call void @__lua.fun.__lua_build_nil(ptr sret(%class.__lua_object_ptr) align 4 %a323)
  call void @__lua.fun.__lua_build_table(ptr sret(%class.__lua_object_ptr) align 4 %__Lua_Temp_Table_55)
  call void @__lua.fun.__lua_build_number(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp324, double noundef 1.000000e+00)
  call void @__lua.fun.__lua_assign_local_var(ptr noundef nonnull align 4 dereferenceable(8) %i, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp324, i32 noundef 2072)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp324)
  call void @__lua.fun.__lua_assign_local_var(ptr noundef nonnull align 4 dereferenceable(8) %a323, ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Table_55, i32 noundef 2075)
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  call void @__lua.fun.__lua_build_string(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp327, ptr noundef @.str.13, i32 noundef 3)
  call void @__lua.fun.__lua_get_member(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp326, ptr noundef nonnull align 4 dereferenceable(8) @__lua.var._ENV, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp327, i32 noundef 2090)
  call void @__lua.fun.__lua_binop(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp325, ptr noundef nonnull align 4 dereferenceable(8) %i, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp326, i32 noundef 12, i32 noundef 2087)
  %call328 = call zeroext i1 @__lua.fun.__lua_to_bool(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp325, i32 noundef 2087)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp325)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp326)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp327)
  br i1 %call328, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  call void @__lua.fun.__lua_build_number(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp330, double noundef 3.000000e-01)
  call void @__lua.fun.__lua_binop(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp329, ptr noundef nonnull align 4 dereferenceable(8) %i, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp330, i32 noundef 5, i32 noundef 2105)
  call void @__lua.fun.__lua_set_member(ptr noundef nonnull align 4 dereferenceable(8) %a323, ptr noundef nonnull align 4 dereferenceable(8) %i, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp329, i32 noundef 2102)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp329)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp330)
  call void @__lua.fun.__lua_build_number(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp332, double noundef 1.000000e+00)
  call void @__lua.fun.__lua_binop(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp331, ptr noundef nonnull align 4 dereferenceable(8) %i, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp332, i32 noundef 5, i32 noundef 2114)
  call void @__lua.fun.__lua_assign_local_var(ptr noundef nonnull align 4 dereferenceable(8) %i, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp331, i32 noundef 2112)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp331)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp332)
  br label %while.cond

while.end:                                        ; preds = %while.cond
  call void @__lua.fun.__lua_build_closure(ptr sret(%class.__lua_object_ptr) align 4 %__Lua_Temp_Closure_5)
  store ptr @__lua.fun.__Lua_Temp_Method_6, ptr %ref.tmp333, align 4
  call void @__lua.fun.__lua_set_closure_function(ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Closure_5, ptr noundef nonnull align 4 dereferenceable(4) %ref.tmp333, i32 noundef 2134)
  call void @__lua.fun.__lua_build_string(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp334, ptr noundef @.str.3, i32 noundef 1)
  call void @__lua.fun.__lua_set_member(ptr noundef nonnull align 4 dereferenceable(8) @__lua.var._ENV, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp334, ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Closure_5, i32 noundef 2134)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp334)
  call void @__lua.fun.__lua_build_closure(ptr sret(%class.__lua_object_ptr) align 4 %__Lua_Temp_Closure_6)
  store ptr @__lua.fun.__Lua_Temp_Method_7, ptr %ref.tmp335, align 4
  call void @__lua.fun.__lua_set_closure_function(ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Closure_6, ptr noundef nonnull align 4 dereferenceable(4) %ref.tmp335, i32 noundef 2288)
  call void @__lua.fun.__lua_build_string(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp336, ptr noundef @.str.14, i32 noundef 1)
  call void @__lua.fun.__lua_set_member(ptr noundef nonnull align 4 dereferenceable(8) @__lua.var._ENV, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp336, ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Closure_6, i32 noundef 2288)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp336)
  call void @__lua.fun.__lua_build_table(ptr sret(%class.__lua_object_ptr) align 4 %__Lua_Temp_Table_59)
  call void @__lua.fun.__lua_build_number(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp337, double noundef 1.000000e+00)
  call void @__lua.fun.__lua_build_string(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp339, ptr noundef @.str.3, i32 noundef 1)
  call void @__lua.fun.__lua_get_member(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp338, ptr noundef nonnull align 4 dereferenceable(8) @__lua.var._ENV, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp339, i32 noundef 2355)
  call void @__lua.fun.__lua_set_member(ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Table_59, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp337, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp338, i32 noundef 2355)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp338)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp339)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp337)
  call void @__lua.fun.__lua_build_number(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp340, double noundef 2.000000e+00)
  call void @__lua.fun.__lua_set_member(ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Table_59, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp340, ptr noundef nonnull align 4 dereferenceable(8) %a323, i32 noundef 2358)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp340)
  call void @__lua.fun.__lua_call(ptr sret(%class.__lua_object_ptr) align 4 %agg.tmp.ensured341, ptr noundef nonnull align 4 dereferenceable(8) %call, ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Table_59, i32 noundef 2350)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %agg.tmp.ensured341)
  call void @__lua.fun.__lua_build_table(ptr sret(%class.__lua_object_ptr) align 4 %__Lua_Temp_Table_60)
  call void @__lua.fun.__lua_build_number(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp342, double noundef 1.000000e+00)
  call void @__lua.fun.__lua_build_string(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp344, ptr noundef @.str.14, i32 noundef 1)
  call void @__lua.fun.__lua_get_member(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp343, ptr noundef nonnull align 4 dereferenceable(8) @__lua.var._ENV, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp344, i32 noundef 2367)
  call void @__lua.fun.__lua_set_member(ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Table_60, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp342, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp343, i32 noundef 2367)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp343)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp344)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp342)
  call void @__lua.fun.__lua_build_number(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp345, double noundef 2.000000e+00)
  call void @__lua.fun.__lua_set_member(ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Table_60, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp345, ptr noundef nonnull align 4 dereferenceable(8) %a323, i32 noundef 2370)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp345)
  call void @__lua.fun.__lua_call(ptr sret(%class.__lua_object_ptr) align 4 %agg.tmp.ensured346, ptr noundef nonnull align 4 dereferenceable(8) %call, ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Table_60, i32 noundef 2362)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %agg.tmp.ensured346)
  call void @__lua.fun.__lua_build_table(ptr sret(%class.__lua_object_ptr) align 4 %__Lua_Temp_Table_61)
  call void @__lua.fun.__lua_assign_local_var(ptr noundef nonnull align 4 dereferenceable(8) %a323, ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Table_61, i32 noundef 2378)
  call void @__lua.fun.__lua_build_number(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp347, double noundef 1.000000e+00)
  call void @__lua.fun.__lua_assign_local_var(ptr noundef nonnull align 4 dereferenceable(8) %i, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp347, i32 noundef 2386)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp347)
  br label %while.cond348

while.cond348:                                    ; preds = %while.body353, %while.end
  call void @__lua.fun.__lua_build_string(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp351, ptr noundef @.str.13, i32 noundef 3)
  call void @__lua.fun.__lua_get_member(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp350, ptr noundef nonnull align 4 dereferenceable(8) @__lua.var._ENV, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp351, i32 noundef 2402)
  call void @__lua.fun.__lua_binop(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp349, ptr noundef nonnull align 4 dereferenceable(8) %i, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp350, i32 noundef 12, i32 noundef 2399)
  %call352 = call zeroext i1 @__lua.fun.__lua_to_bool(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp349, i32 noundef 2399)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp349)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp350)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp351)
  br i1 %call352, label %while.body353, label %while.end356

while.body353:                                    ; preds = %while.cond348
  call void @__lua.fun.__lua_set_member(ptr noundef nonnull align 4 dereferenceable(8) %a323, ptr noundef nonnull align 4 dereferenceable(8) %i, ptr noundef nonnull align 4 dereferenceable(8) %i, i32 noundef 2414)
  call void @__lua.fun.__lua_build_number(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp355, double noundef 1.000000e+00)
  call void @__lua.fun.__lua_binop(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp354, ptr noundef nonnull align 4 dereferenceable(8) %i, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp355, i32 noundef 5, i32 noundef 2422)
  call void @__lua.fun.__lua_assign_local_var(ptr noundef nonnull align 4 dereferenceable(8) %i, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp354, i32 noundef 2420)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp354)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp355)
  br label %while.cond348

while.end356:                                     ; preds = %while.cond348
  call void @__lua.fun.__lua_build_table(ptr sret(%class.__lua_object_ptr) align 4 %__Lua_Temp_Table_62)
  call void @__lua.fun.__lua_build_table(ptr sret(%class.__lua_object_ptr) align 4 %__Lua_Temp_Table_63)
  call void @__lua.fun.__lua_build_number(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp357, double noundef 1.000000e+00)
  call void @__lua.fun.__lua_build_string(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp360, ptr noundef @.str.15, i32 noundef 4)
  call void @__lua.fun.__lua_get_member(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp359, ptr noundef nonnull align 4 dereferenceable(8) @__lua.var._ENV, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp360, i32 noundef 2442)
  call void @__lua.fun.__lua_build_string(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp361, ptr noundef @.str.16, i32 noundef 3)
  call void @__lua.fun.__lua_get_member(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp358, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp359, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp361, i32 noundef 2446)
  call void @__lua.fun.__lua_set_member(ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Table_63, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp357, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp358, i32 noundef 2446)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp358)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp361)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp359)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp360)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp357)
  call void @__lua.fun.__lua_build_number(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp362, double noundef 2.000000e+00)
  call void @__lua.fun.__lua_set_member(ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Table_63, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp362, ptr noundef nonnull align 4 dereferenceable(8) %a323, i32 noundef 2452)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp362)
  call void @__lua.fun.__lua_build_number(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp363, double noundef 1.000000e+00)
  call void @__lua.fun.__lua_call(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp366, ptr noundef nonnull align 4 dereferenceable(8) %call, ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Table_63, i32 noundef 2437)
  call void @__lua.fun.__lua_build_number(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp367, double noundef 1.000000e+00)
  call void @__lua.fun.__lua_get_member(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp365, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp366, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp367, i32 noundef 2455)
  call void @__lua.fun.__lua_build_string(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp369, ptr noundef @.str.13, i32 noundef 3)
  call void @__lua.fun.__lua_get_member(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp368, ptr noundef nonnull align 4 dereferenceable(8) @__lua.var._ENV, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp369, i32 noundef 2458)
  call void @__lua.fun.__lua_binop(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp364, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp365, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp368, i32 noundef 14, i32 noundef 2455)
  call void @__lua.fun.__lua_set_member(ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Table_62, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp363, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp364, i32 noundef 2455)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp364)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp368)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp369)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp365)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp367)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp366)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp363)
  call void @__lua.fun.__lua_build_string(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp372, ptr noundef @.str.6, i32 noundef 6)
  call void @__lua.fun.__lua_get_member(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp371, ptr noundef nonnull align 4 dereferenceable(8) @__lua.var._ENV, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp372, i32 noundef 2430)
  call void @__lua.fun.__lua_call(ptr sret(%class.__lua_object_ptr) align 4 %agg.tmp.ensured370, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp371, ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Table_62, i32 noundef 2430)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %agg.tmp.ensured370)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp371)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp372)
  call void @__lua.fun.__lua_build_table(ptr sret(%class.__lua_object_ptr) align 4 %__Lua_Temp_Table_64)
  call void @__lua.fun.__lua_build_number(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp373, double noundef 1.000000e+00)
  call void @__lua.fun.__lua_build_string(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp374, ptr noundef @.str.12, i32 noundef 1)
  call void @__lua.fun.__lua_set_member(ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Table_64, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp373, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp374, i32 noundef 2472)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp374)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp373)
  call void @__lua.fun.__lua_build_string(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp377, ptr noundef @.str.1, i32 noundef 5)
  call void @__lua.fun.__lua_get_member(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp376, ptr noundef nonnull align 4 dereferenceable(8) @__lua.var._ENV, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp377, i32 noundef 2466)
  call void @__lua.fun.__lua_call(ptr sret(%class.__lua_object_ptr) align 4 %agg.tmp.ensured375, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp376, ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Table_64, i32 noundef 2466)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %agg.tmp.ensured375)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp376)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp377)
  call void @__lua.fun.__lua_build_closure(ptr sret(%class.__lua_object_ptr) align 4 %__Lua_Temp_Closure_7)
  store ptr @__lua.fun.__Lua_Temp_Method_8, ptr %ref.tmp378, align 4
  call void @__lua.fun.__lua_set_closure_function(ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Closure_7, ptr noundef nonnull align 4 dereferenceable(4) %ref.tmp378, i32 noundef 2523)
  call void @__lua.fun.__lua_build_string(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp379, ptr noundef @.str.17, i32 noundef 7)
  call void @__lua.fun.__lua_set_member(ptr noundef nonnull align 4 dereferenceable(8) @__lua.var._ENV, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp379, ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Closure_7, i32 noundef 2523)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp379)
  call void @__lua.fun.__lua_build_closure(ptr sret(%class.__lua_object_ptr) align 4 %__Lua_Temp_Closure_8)
  store ptr @__lua.fun.__Lua_Temp_Method_9, ptr %ref.tmp380, align 4
  call void @__lua.fun.__lua_set_closure_function(ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Closure_8, ptr noundef nonnull align 4 dereferenceable(4) %ref.tmp380, i32 noundef 2561)
  call void @__lua.fun.__lua_build_string(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp381, ptr noundef @.str.3, i32 noundef 1)
  call void @__lua.fun.__lua_set_member(ptr noundef nonnull align 4 dereferenceable(8) @__lua.var._ENV, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp381, ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Closure_8, i32 noundef 2561)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp381)
  call void @__lua.fun.__lua_build_table(ptr sret(%class.__lua_object_ptr) align 4 %__Lua_Temp_Table_73)
  call void @__lua.fun.__lua_build_table(ptr sret(%class.__lua_object_ptr) align 4 %__Lua_Temp_Table_74)
  call void @__lua.fun.__lua_build_number(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp382, double noundef 1.000000e+00)
  call void @__lua.fun.__lua_build_number(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp383, double noundef 1.000000e+01)
  call void @__lua.fun.__lua_set_member(ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Table_74, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp382, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp383, i32 noundef 2822)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp383)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp382)
  call void @__lua.fun.__lua_build_number(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp384, double noundef 2.000000e+00)
  call void @__lua.fun.__lua_build_number(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp385, double noundef 5.000000e+00)
  call void @__lua.fun.__lua_set_member(ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Table_74, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp384, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp385, i32 noundef 2825)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp385)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp384)
  call void @__lua.fun.__lua_build_number(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp386, double noundef 3.000000e+00)
  call void @__lua.fun.__lua_build_number(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp387, double noundef 4.000000e+00)
  call void @__lua.fun.__lua_set_member(ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Table_74, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp386, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp387, i32 noundef 2827)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp387)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp386)
  call void @__lua.fun.__lua_build_number(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp388, double noundef 4.000000e+00)
  call void @__lua.fun.__lua_build_number(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp389, double noundef 3.000000e+00)
  call void @__lua.fun.__lua_set_member(ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Table_74, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp388, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp389, i32 noundef 2829)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp389)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp388)
  call void @__lua.fun.__lua_build_number(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp390, double noundef 5.000000e+00)
  call void @__lua.fun.__lua_build_number(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp391, double noundef 2.000000e+00)
  call void @__lua.fun.__lua_set_member(ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Table_74, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp390, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp391, i32 noundef 2831)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp391)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp390)
  call void @__lua.fun.__lua_build_number(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp392, double noundef 6.000000e+00)
  call void @__lua.fun.__lua_build_number(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp393, double noundef 1.000000e+00)
  call void @__lua.fun.__lua_set_member(ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Table_74, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp392, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp393, i32 noundef 2833)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp393)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp392)
  call void @__lua.fun.__lua_build_string(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp396, ptr noundef @.str.3, i32 noundef 1)
  call void @__lua.fun.__lua_get_member(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp395, ptr noundef nonnull align 4 dereferenceable(8) @__lua.var._ENV, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp396, i32 noundef 2820)
  call void @__lua.fun.__lua_call(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp394, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp395, ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Table_74, i32 noundef 2820)
  call void @__lua.fun.__lua_add_last_exp(ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Table_73, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp394, i32 noundef 2820)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp394)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp395)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp396)
  call void @__lua.fun.__lua_build_nil(ptr sret(%class.__lua_object_ptr) align 4 %__Lua_Temp_Obj_5)
  call void @__lua.fun.__lua_build_string(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp399, ptr noundef @.str.6, i32 noundef 6)
  call void @__lua.fun.__lua_get_member(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp398, ptr noundef nonnull align 4 dereferenceable(8) @__lua.var._ENV, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp399, i32 noundef 2813)
  call void @__lua.fun.__lua_call(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp397, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp398, ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Table_73, i32 noundef 2813)
  call void @__lua.fun.__lua_assign_local_var(ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Obj_5, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp397, i32 noundef 2811)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp397)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp398)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp399)
  call void @__lua.fun.__lua_build_nil(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp400)
  call void @__lua.fun.__lua_assign_local_var(ptr noundef nonnull align 4 dereferenceable(8) %a323, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp400, i32 noundef 2811)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp400)
  call void @__lua.fun.__lua_build_nil(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp401)
  call void @__lua.fun.__lua_assign_local_var(ptr noundef nonnull align 4 dereferenceable(8) %b, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp401, i32 noundef 2811)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp401)
  call void @__lua.fun.__lua_build_nil(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp402)
  call void @__lua.fun.__lua_assign_local_var(ptr noundef nonnull align 4 dereferenceable(8) %c, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp402, i32 noundef 2811)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp402)
  call void @__lua.fun.__lua_build_string(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp403, ptr noundef @.str.18, i32 noundef 1)
  call void @__lua.fun.__lua_build_nil(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp404)
  call void @__lua.fun.__lua_set_member(ptr noundef nonnull align 4 dereferenceable(8) @__lua.var._ENV, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp403, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp404, i32 noundef 2811)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp404)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp403)
  call void @__lua.fun.__lua_build_string(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp405, ptr noundef @.str.19, i32 noundef 1)
  call void @__lua.fun.__lua_build_nil(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp406)
  call void @__lua.fun.__lua_set_member(ptr noundef nonnull align 4 dereferenceable(8) @__lua.var._ENV, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp405, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp406, i32 noundef 2811)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp406)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp405)
  call void @__lua.fun.__lua_build_table(ptr sret(%class.__lua_object_ptr) align 4 %__Lua_Temp_Table_75)
  call void @__lua.fun.__lua_build_number(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp407, double noundef 1.000000e+00)
  call void @__lua.fun.__lua_build_number(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp413, double noundef 5.000000e+00)
  call void @__lua.fun.__lua_binop(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp412, ptr noundef nonnull align 4 dereferenceable(8) %a323, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp413, i32 noundef 14, i32 noundef 2846)
  call void @__lua.fun.__lua_build_number(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp415, double noundef 4.000000e+00)
  call void @__lua.fun.__lua_binop(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp414, ptr noundef nonnull align 4 dereferenceable(8) %b, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp415, i32 noundef 14, i32 noundef 2855)
  call void @__lua.fun.__lua_binop(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp411, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp412, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp414, i32 noundef 16, i32 noundef 2850)
  call void @__lua.fun.__lua_build_number(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp417, double noundef 3.000000e+00)
  call void @__lua.fun.__lua_binop(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp416, ptr noundef nonnull align 4 dereferenceable(8) %c, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp417, i32 noundef 14, i32 noundef 2864)
  call void @__lua.fun.__lua_binop(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp410, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp411, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp416, i32 noundef 16, i32 noundef 2859)
  call void @__lua.fun.__lua_build_string(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp420, ptr noundef @.str.18, i32 noundef 1)
  call void @__lua.fun.__lua_get_member(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp419, ptr noundef nonnull align 4 dereferenceable(8) @__lua.var._ENV, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp420, i32 noundef 2872)
  call void @__lua.fun.__lua_build_number(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp421, double noundef 2.000000e+00)
  call void @__lua.fun.__lua_binop(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp418, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp419, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp421, i32 noundef 14, i32 noundef 2873)
  call void @__lua.fun.__lua_binop(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp409, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp410, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp418, i32 noundef 16, i32 noundef 2868)
  call void @__lua.fun.__lua_build_string(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp424, ptr noundef @.str.19, i32 noundef 1)
  call void @__lua.fun.__lua_get_member(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp423, ptr noundef nonnull align 4 dereferenceable(8) @__lua.var._ENV, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp424, i32 noundef 2881)
  call void @__lua.fun.__lua_build_number(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp425, double noundef 1.000000e+00)
  call void @__lua.fun.__lua_binop(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp422, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp423, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp425, i32 noundef 14, i32 noundef 2882)
  call void @__lua.fun.__lua_binop(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp408, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp409, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp422, i32 noundef 16, i32 noundef 2877)
  call void @__lua.fun.__lua_set_member(ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Table_75, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp407, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp408, i32 noundef 2877)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp408)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp422)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp425)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp423)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp424)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp409)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp418)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp421)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp419)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp420)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp410)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp416)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp417)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp411)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp414)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp415)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp412)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp413)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp407)
  call void @__lua.fun.__lua_build_string(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp428, ptr noundef @.str.6, i32 noundef 6)
  call void @__lua.fun.__lua_get_member(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp427, ptr noundef nonnull align 4 dereferenceable(8) @__lua.var._ENV, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp428, i32 noundef 2838)
  call void @__lua.fun.__lua_call(ptr sret(%class.__lua_object_ptr) align 4 %agg.tmp.ensured426, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp427, ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Table_75, i32 noundef 2838)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %agg.tmp.ensured426)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp427)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp428)
  call void @__lua.fun.__lua_build_table(ptr sret(%class.__lua_object_ptr) align 4 %__Lua_Temp_Table_76)
  call void @__lua.fun.__lua_build_number(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp429, double noundef 1.000000e+00)
  call void @__lua.fun.__lua_build_number(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp430, double noundef 4.000000e+00)
  call void @__lua.fun.__lua_set_member(ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Table_76, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp429, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp430, i32 noundef 2904)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp430)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp429)
  call void @__lua.fun.__lua_build_nil(ptr sret(%class.__lua_object_ptr) align 4 %__Lua_Temp_Obj_6)
  call void @__lua.fun.__lua_build_string(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp433, ptr noundef @.str.3, i32 noundef 1)
  call void @__lua.fun.__lua_get_member(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp432, ptr noundef nonnull align 4 dereferenceable(8) @__lua.var._ENV, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp433, i32 noundef 2902)
  call void @__lua.fun.__lua_call(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp431, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp432, ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Table_76, i32 noundef 2902)
  call void @__lua.fun.__lua_assign_local_var(ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Obj_6, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp431, i32 noundef 2900)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp431)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp432)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp433)
  call void @__lua.fun.__lua_build_nil(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp434)
  call void @__lua.fun.__lua_assign_local_var(ptr noundef nonnull align 4 dereferenceable(8) %a323, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp434, i32 noundef 2900)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp434)
  call void @__lua.fun.__lua_build_nil(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp435)
  call void @__lua.fun.__lua_assign_local_var(ptr noundef nonnull align 4 dereferenceable(8) %b, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp435, i32 noundef 2900)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp435)
  call void @__lua.fun.__lua_build_nil(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp436)
  call void @__lua.fun.__lua_assign_local_var(ptr noundef nonnull align 4 dereferenceable(8) %c, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp436, i32 noundef 2900)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp436)
  call void @__lua.fun.__lua_build_string(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp437, ptr noundef @.str.18, i32 noundef 1)
  call void @__lua.fun.__lua_build_nil(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp438)
  call void @__lua.fun.__lua_set_member(ptr noundef nonnull align 4 dereferenceable(8) @__lua.var._ENV, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp437, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp438, i32 noundef 2900)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp438)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp437)
  call void @__lua.fun.__lua_build_string(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp439, ptr noundef @.str.19, i32 noundef 1)
  call void @__lua.fun.__lua_build_nil(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp440)
  call void @__lua.fun.__lua_set_member(ptr noundef nonnull align 4 dereferenceable(8) @__lua.var._ENV, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp439, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp440, i32 noundef 2900)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp440)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp439)
  call void @__lua.fun.__lua_build_table(ptr sret(%class.__lua_object_ptr) align 4 %__Lua_Temp_Table_77)
  call void @__lua.fun.__lua_build_number(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp441, double noundef 1.000000e+00)
  call void @__lua.fun.__lua_build_nil(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp447)
  call void @__lua.fun.__lua_binop(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp446, ptr noundef nonnull align 4 dereferenceable(8) %a323, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp447, i32 noundef 14, i32 noundef 2916)
  call void @__lua.fun.__lua_build_nil(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp449)
  call void @__lua.fun.__lua_binop(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp448, ptr noundef nonnull align 4 dereferenceable(8) %b, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp449, i32 noundef 14, i32 noundef 2927)
  call void @__lua.fun.__lua_binop(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp445, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp446, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp448, i32 noundef 16, i32 noundef 2922)
  call void @__lua.fun.__lua_build_nil(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp451)
  call void @__lua.fun.__lua_binop(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp450, ptr noundef nonnull align 4 dereferenceable(8) %c, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp451, i32 noundef 14, i32 noundef 2938)
  call void @__lua.fun.__lua_binop(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp444, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp445, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp450, i32 noundef 16, i32 noundef 2933)
  call void @__lua.fun.__lua_build_string(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp454, ptr noundef @.str.18, i32 noundef 1)
  call void @__lua.fun.__lua_get_member(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp453, ptr noundef nonnull align 4 dereferenceable(8) @__lua.var._ENV, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp454, i32 noundef 2948)
  call void @__lua.fun.__lua_build_nil(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp455)
  call void @__lua.fun.__lua_binop(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp452, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp453, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp455, i32 noundef 14, i32 noundef 2949)
  call void @__lua.fun.__lua_binop(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp443, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp444, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp452, i32 noundef 16, i32 noundef 2944)
  call void @__lua.fun.__lua_build_string(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp458, ptr noundef @.str.19, i32 noundef 1)
  call void @__lua.fun.__lua_get_member(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp457, ptr noundef nonnull align 4 dereferenceable(8) @__lua.var._ENV, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp458, i32 noundef 2959)
  call void @__lua.fun.__lua_build_nil(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp459)
  call void @__lua.fun.__lua_binop(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp456, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp457, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp459, i32 noundef 14, i32 noundef 2960)
  call void @__lua.fun.__lua_binop(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp442, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp443, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp456, i32 noundef 16, i32 noundef 2955)
  call void @__lua.fun.__lua_set_member(ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Table_77, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp441, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp442, i32 noundef 2955)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp442)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp456)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp459)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp457)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp458)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp443)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp452)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp455)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp453)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp454)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp444)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp450)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp451)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp445)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp448)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp449)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp446)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp447)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp441)
  call void @__lua.fun.__lua_build_string(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp462, ptr noundef @.str.6, i32 noundef 6)
  call void @__lua.fun.__lua_get_member(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp461, ptr noundef nonnull align 4 dereferenceable(8) @__lua.var._ENV, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp462, i32 noundef 2908)
  call void @__lua.fun.__lua_call(ptr sret(%class.__lua_object_ptr) align 4 %agg.tmp.ensured460, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp461, ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Table_77, i32 noundef 2908)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %agg.tmp.ensured460)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp461)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp462)
  call void @__lua.fun.__lua_build_table(ptr sret(%class.__lua_object_ptr) align 4 %__Lua_Temp_Table_78)
  call void @__lua.fun.__lua_build_number(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp463, double noundef 1.000000e+00)
  call void @__lua.fun.__lua_build_string(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp464, ptr noundef @.str.20, i32 noundef 16)
  call void @__lua.fun.__lua_set_member(ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Table_78, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp463, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp464, i32 noundef 3008)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp464)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp463)
  call void @__lua.fun.__lua_build_string(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp465, ptr noundef @.str.3, i32 noundef 1)
  call void @__lua.fun.__lua_build_string(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp469, ptr noundef @.str.21, i32 noundef 4)
  call void @__lua.fun.__lua_get_member(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp468, ptr noundef nonnull align 4 dereferenceable(8) @__lua.var._ENV, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp469, i32 noundef 3004)
  call void @__lua.fun.__lua_call(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp467, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp468, ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Table_78, i32 noundef 3004)
  call void @__lua.fun.__lua_build_number(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp470, double noundef 1.000000e+00)
  call void @__lua.fun.__lua_get_member(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp466, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp467, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp470, i32 noundef 3002)
  call void @__lua.fun.__lua_set_member(ptr noundef nonnull align 4 dereferenceable(8) @__lua.var._ENV, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp465, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp466, i32 noundef 3002)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp466)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp470)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp467)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp468)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp469)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp465)
  call void @__lua.fun.__lua_build_table(ptr sret(%class.__lua_object_ptr) align 4 %__Lua_Temp_Table_79)
  call void @__lua.fun.__lua_build_number(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp471, double noundef 1.000000e+00)
  call void @__lua.fun.__lua_build_number(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp472, double noundef 2.000000e+00)
  call void @__lua.fun.__lua_set_member(ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Table_79, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp471, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp472, i32 noundef 3034)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp472)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp471)
  call void @__lua.fun.__lua_build_number(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp473, double noundef 2.000000e+00)
  call void @__lua.fun.__lua_build_number(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp474, double noundef 3.000000e+00)
  call void @__lua.fun.__lua_set_member(ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Table_79, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp473, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp474, i32 noundef 3036)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp474)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp473)
  call void @__lua.fun.__lua_build_string(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp475, ptr noundef @.str.22, i32 noundef 1)
  call void @__lua.fun.__lua_build_string(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp479, ptr noundef @.str.3, i32 noundef 1)
  call void @__lua.fun.__lua_get_member(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp478, ptr noundef nonnull align 4 dereferenceable(8) @__lua.var._ENV, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp479, i32 noundef 3032)
  call void @__lua.fun.__lua_call(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp477, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp478, ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Table_79, i32 noundef 3032)
  call void @__lua.fun.__lua_build_number(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp480, double noundef 1.000000e+00)
  call void @__lua.fun.__lua_get_member(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp476, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp477, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp480, i32 noundef 3030)
  call void @__lua.fun.__lua_set_member(ptr noundef nonnull align 4 dereferenceable(8) @__lua.var._ENV, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp475, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp476, i32 noundef 3030)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp476)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp480)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp477)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp478)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp479)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp475)
  call void @__lua.fun.__lua_build_table(ptr sret(%class.__lua_object_ptr) align 4 %__Lua_Temp_Table_80)
  call void @__lua.fun.__lua_build_number(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp481, double noundef 1.000000e+00)
  call void @__lua.fun.__lua_build_string(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp487, ptr noundef @.str.22, i32 noundef 1)
  call void @__lua.fun.__lua_get_member(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp486, ptr noundef nonnull align 4 dereferenceable(8) @__lua.var._ENV, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp487, i32 noundef 3047)
  call void @__lua.fun.__lua_build_number(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp488, double noundef 1.000000e+00)
  call void @__lua.fun.__lua_get_member(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp485, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp486, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp488, i32 noundef 3048)
  call void @__lua.fun.__lua_build_number(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp489, double noundef 2.000000e+00)
  call void @__lua.fun.__lua_binop(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp484, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp485, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp489, i32 noundef 14, i32 noundef 3052)
  call void @__lua.fun.__lua_build_string(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp493, ptr noundef @.str.22, i32 noundef 1)
  call void @__lua.fun.__lua_get_member(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp492, ptr noundef nonnull align 4 dereferenceable(8) @__lua.var._ENV, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp493, i32 noundef 3061)
  call void @__lua.fun.__lua_build_number(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp494, double noundef 2.000000e+00)
  call void @__lua.fun.__lua_get_member(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp491, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp492, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp494, i32 noundef 3062)
  call void @__lua.fun.__lua_build_number(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp495, double noundef 3.000000e+00)
  call void @__lua.fun.__lua_binop(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp490, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp491, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp495, i32 noundef 14, i32 noundef 3066)
  call void @__lua.fun.__lua_binop(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp483, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp484, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp490, i32 noundef 16, i32 noundef 3057)
  call void @__lua.fun.__lua_build_string(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp499, ptr noundef @.str.22, i32 noundef 1)
  call void @__lua.fun.__lua_get_member(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp498, ptr noundef nonnull align 4 dereferenceable(8) @__lua.var._ENV, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp499, i32 noundef 3075)
  call void @__lua.fun.__lua_build_number(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp500, double noundef 3.000000e+00)
  call void @__lua.fun.__lua_get_member(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp497, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp498, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp500, i32 noundef 3076)
  call void @__lua.fun.__lua_build_nil(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp501)
  call void @__lua.fun.__lua_binop(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp496, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp497, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp501, i32 noundef 14, i32 noundef 3080)
  call void @__lua.fun.__lua_binop(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp482, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp483, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp496, i32 noundef 16, i32 noundef 3071)
  call void @__lua.fun.__lua_set_member(ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Table_80, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp481, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp482, i32 noundef 3071)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp482)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp496)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp501)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp497)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp500)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp498)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp499)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp483)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp490)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp495)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp491)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp494)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp492)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp493)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp484)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp489)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp485)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp488)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp486)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp487)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp481)
  call void @__lua.fun.__lua_build_string(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp504, ptr noundef @.str.6, i32 noundef 6)
  call void @__lua.fun.__lua_get_member(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp503, ptr noundef nonnull align 4 dereferenceable(8) @__lua.var._ENV, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp504, i32 noundef 3040)
  call void @__lua.fun.__lua_call(ptr sret(%class.__lua_object_ptr) align 4 %agg.tmp.ensured502, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp503, ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Table_80, i32 noundef 3040)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %agg.tmp.ensured502)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp503)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp504)
  call void @__lua.fun.__lua_build_table(ptr sret(%class.__lua_object_ptr) align 4 %__Lua_Temp_Table_81)
  call void @__lua.fun.__lua_build_number(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp505, double noundef 1.000000e+00)
  call void @__lua.fun.__lua_build_string(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp506, ptr noundef @.str.23, i32 noundef 144)
  call void @__lua.fun.__lua_set_member(ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Table_81, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp505, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp506, i32 noundef 3101)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp506)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp505)
  call void @__lua.fun.__lua_build_string(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp507, ptr noundef @.str.3, i32 noundef 1)
  call void @__lua.fun.__lua_build_string(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp511, ptr noundef @.str.21, i32 noundef 4)
  call void @__lua.fun.__lua_get_member(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp510, ptr noundef nonnull align 4 dereferenceable(8) @__lua.var._ENV, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp511, i32 noundef 3097)
  call void @__lua.fun.__lua_call(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp509, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp510, ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Table_81, i32 noundef 3097)
  call void @__lua.fun.__lua_build_number(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp512, double noundef 1.000000e+00)
  call void @__lua.fun.__lua_get_member(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp508, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp509, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp512, i32 noundef 3095)
  call void @__lua.fun.__lua_set_member(ptr noundef nonnull align 4 dereferenceable(8) @__lua.var._ENV, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp507, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp508, i32 noundef 3095)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp508)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp512)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp509)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp510)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp511)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp507)
  call void @__lua.fun.__lua_build_table(ptr sret(%class.__lua_object_ptr) align 4 %__Lua_Temp_Table_82)
  call void @__lua.fun.__lua_build_table(ptr sret(%class.__lua_object_ptr) align 4 %__Lua_Temp_Table_83)
  call void @__lua.fun.__lua_build_number(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp513, double noundef 1.000000e+00)
  call void @__lua.fun.__lua_build_string(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp514, ptr noundef @.str.8, i32 noundef 1)
  call void @__lua.fun.__lua_set_member(ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Table_83, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp513, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp514, i32 noundef 3260)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp514)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp513)
  call void @__lua.fun.__lua_build_number(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp515, double noundef 2.000000e+00)
  call void @__lua.fun.__lua_build_string(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp516, ptr noundef @.str.9, i32 noundef 1)
  call void @__lua.fun.__lua_set_member(ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Table_83, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp515, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp516, i32 noundef 3265)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp516)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp515)
  call void @__lua.fun.__lua_build_number(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp517, double noundef 3.000000e+00)
  call void @__lua.fun.__lua_build_nil(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp518)
  call void @__lua.fun.__lua_set_member(ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Table_83, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp517, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp518, i32 noundef 3270)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp518)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp517)
  call void @__lua.fun.__lua_build_table(ptr sret(%class.__lua_object_ptr) align 4 %__Lua_Temp_Table_84)
  call void @__lua.fun.__lua_build_number(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp519, double noundef 4.000000e+00)
  call void @__lua.fun.__lua_set_member(ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Table_83, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp519, ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Table_84, i32 noundef 3275)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp519)
  call void @__lua.fun.__lua_build_number(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp520, double noundef 5.000000e+00)
  call void @__lua.fun.__lua_build_string(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp522, ptr noundef @.str.6, i32 noundef 6)
  call void @__lua.fun.__lua_get_member(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp521, ptr noundef nonnull align 4 dereferenceable(8) @__lua.var._ENV, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp522, i32 noundef 3279)
  call void @__lua.fun.__lua_set_member(ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Table_83, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp520, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp521, i32 noundef 3279)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp521)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp522)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp520)
  call void @__lua.fun.__lua_build_string(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp525, ptr noundef @.str.3, i32 noundef 1)
  call void @__lua.fun.__lua_get_member(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp524, ptr noundef nonnull align 4 dereferenceable(8) @__lua.var._ENV, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp525, i32 noundef 3258)
  call void @__lua.fun.__lua_call(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp523, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp524, ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Table_83, i32 noundef 3258)
  call void @__lua.fun.__lua_add_last_exp(ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Table_82, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp523, i32 noundef 3258)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp523)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp524)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp525)
  call void @__lua.fun.__lua_build_string(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp528, ptr noundef @.str.6, i32 noundef 6)
  call void @__lua.fun.__lua_get_member(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp527, ptr noundef nonnull align 4 dereferenceable(8) @__lua.var._ENV, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp528, i32 noundef 3251)
  call void @__lua.fun.__lua_call(ptr sret(%class.__lua_object_ptr) align 4 %agg.tmp.ensured526, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp527, ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Table_82, i32 noundef 3251)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %agg.tmp.ensured526)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp527)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp528)
  call void @__lua.fun.__lua_build_table(ptr sret(%class.__lua_object_ptr) align 4 %__Lua_Temp_Table_85)
  call void @__lua.fun.__lua_build_string(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp531, ptr noundef @.str.3, i32 noundef 1)
  call void @__lua.fun.__lua_get_member(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp530, ptr noundef nonnull align 4 dereferenceable(8) @__lua.var._ENV, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp531, i32 noundef 3296)
  call void @__lua.fun.__lua_build_table(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp532)
  call void @__lua.fun.__lua_call(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp529, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp530, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp532, i32 noundef 3296)
  call void @__lua.fun.__lua_add_last_exp(ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Table_85, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp529, i32 noundef 3296)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp529)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp532)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp530)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp531)
  call void @__lua.fun.__lua_build_string(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp535, ptr noundef @.str.6, i32 noundef 6)
  call void @__lua.fun.__lua_get_member(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp534, ptr noundef nonnull align 4 dereferenceable(8) @__lua.var._ENV, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp535, i32 noundef 3289)
  call void @__lua.fun.__lua_call(ptr sret(%class.__lua_object_ptr) align 4 %agg.tmp.ensured533, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp534, ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Table_85, i32 noundef 3289)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %agg.tmp.ensured533)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp534)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp535)
  call void @__lua.fun.__lua_build_table(ptr sret(%class.__lua_object_ptr) align 4 %__Lua_Temp_Table_86)
  call void @__lua.fun.__lua_build_table(ptr sret(%class.__lua_object_ptr) align 4 %__Lua_Temp_Table_87)
  call void @__lua.fun.__lua_build_number(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp536, double noundef 1.000000e+00)
  call void @__lua.fun.__lua_build_number(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp537, double noundef 3.000000e+00)
  call void @__lua.fun.__lua_set_member(ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Table_87, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp536, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp537, i32 noundef 3316)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp537)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp536)
  call void @__lua.fun.__lua_build_table(ptr sret(%class.__lua_object_ptr) align 4 %__Lua_Temp_Table_88)
  call void @__lua.fun.__lua_build_table(ptr sret(%class.__lua_object_ptr) align 4 %__Lua_Temp_Table_89)
  call void @__lua.fun.__lua_build_number(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp538, double noundef 1.000000e+00)
  call void @__lua.fun.__lua_build_number(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp539, double noundef 1.000000e+01)
  call void @__lua.fun.__lua_set_member(ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Table_89, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp538, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp539, i32 noundef 3332)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp539)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp538)
  call void @__lua.fun.__lua_build_number(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp540, double noundef 1.000000e+00)
  call void @__lua.fun.__lua_build_number(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp541, double noundef 2.000000e+01)
  call void @__lua.fun.__lua_set_member(ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Table_89, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp540, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp541, i32 noundef 3335)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp541)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp540)
  call void @__lua.fun.__lua_build_number(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp542, double noundef 1.000000e+00)
  call void @__lua.fun.__lua_build_number(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp543, double noundef 3.000000e+01)
  call void @__lua.fun.__lua_set_member(ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Table_89, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp542, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp543, i32 noundef 3338)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp543)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp542)
  call void @__lua.fun.__lua_build_number(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp544, double noundef 1.000000e+00)
  call void @__lua.fun.__lua_build_number(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp545, double noundef 4.000000e+01)
  call void @__lua.fun.__lua_set_member(ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Table_89, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp544, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp545, i32 noundef 3341)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp545)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp544)
  call void @__lua.fun.__lua_build_number(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp546, double noundef 1.000000e+00)
  call void @__lua.fun.__lua_set_member(ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Table_88, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp546, ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Table_89, i32 noundef 3331)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp546)
  call void @__lua.fun.__lua_build_string(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp550, ptr noundef @.str.24, i32 noundef 5)
  call void @__lua.fun.__lua_get_member(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp549, ptr noundef nonnull align 4 dereferenceable(8) @__lua.var._ENV, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp550, i32 noundef 3319)
  call void @__lua.fun.__lua_build_string(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp551, ptr noundef @.str.25, i32 noundef 6)
  call void @__lua.fun.__lua_get_member(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp548, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp549, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp551, i32 noundef 3324)
  call void @__lua.fun.__lua_call(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp547, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp548, ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Table_88, i32 noundef 3324)
  call void @__lua.fun.__lua_add_last_exp(ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Table_87, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp547, i32 noundef 3324)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp547)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp548)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp551)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp549)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp550)
  call void @__lua.fun.__lua_build_string(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp554, ptr noundef @.str.26, i32 noundef 6)
  call void @__lua.fun.__lua_get_member(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp553, ptr noundef nonnull align 4 dereferenceable(8) @__lua.var._ENV, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp554, i32 noundef 3309)
  call void @__lua.fun.__lua_call(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp552, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp553, ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Table_87, i32 noundef 3309)
  call void @__lua.fun.__lua_add_last_exp(ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Table_86, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp552, i32 noundef 3309)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp552)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp553)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp554)
  call void @__lua.fun.__lua_assign_local_var(ptr noundef nonnull align 4 dereferenceable(8) %a323, ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Table_86, i32 noundef 3306)
  call void @__lua.fun.__lua_build_table(ptr sret(%class.__lua_object_ptr) align 4 %__Lua_Temp_Table_90)
  call void @__lua.fun.__lua_build_number(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp555, double noundef 1.000000e+00)
  call void @__lua.fun.__lua_unop(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp559, ptr noundef nonnull align 4 dereferenceable(8) %a323, i32 noundef 14, i32 noundef 3355)
  call void @__lua.fun.__lua_build_number(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp560, double noundef 2.000000e+00)
  call void @__lua.fun.__lua_binop(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp558, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp559, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp560, i32 noundef 14, i32 noundef 3358)
  call void @__lua.fun.__lua_build_number(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp563, double noundef 1.000000e+00)
  call void @__lua.fun.__lua_get_member(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp562, ptr noundef nonnull align 4 dereferenceable(8) %a323, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp563, i32 noundef 3368)
  call void @__lua.fun.__lua_build_number(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp564, double noundef 3.000000e+01)
  call void @__lua.fun.__lua_binop(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp561, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp562, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp564, i32 noundef 14, i32 noundef 3372)
  call void @__lua.fun.__lua_binop(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp557, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp558, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp561, i32 noundef 16, i32 noundef 3363)
  call void @__lua.fun.__lua_build_number(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp567, double noundef 2.000000e+00)
  call void @__lua.fun.__lua_get_member(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp566, ptr noundef nonnull align 4 dereferenceable(8) %a323, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp567, i32 noundef 3383)
  call void @__lua.fun.__lua_build_number(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp568, double noundef 4.000000e+01)
  call void @__lua.fun.__lua_binop(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp565, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp566, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp568, i32 noundef 14, i32 noundef 3387)
  call void @__lua.fun.__lua_binop(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp556, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp557, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp565, i32 noundef 16, i32 noundef 3378)
  call void @__lua.fun.__lua_set_member(ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Table_90, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp555, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp556, i32 noundef 3378)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp556)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp565)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp568)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp566)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp567)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp557)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp561)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp564)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp562)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp563)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp558)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp560)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp559)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp555)
  call void @__lua.fun.__lua_build_string(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp571, ptr noundef @.str.6, i32 noundef 6)
  call void @__lua.fun.__lua_get_member(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp570, ptr noundef nonnull align 4 dereferenceable(8) @__lua.var._ENV, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp571, i32 noundef 3348)
  call void @__lua.fun.__lua_call(ptr sret(%class.__lua_object_ptr) align 4 %agg.tmp.ensured569, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp570, ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Table_90, i32 noundef 3348)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %agg.tmp.ensured569)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp570)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp571)
  call void @__lua.fun.__lua_build_table(ptr sret(%class.__lua_object_ptr) align 4 %__Lua_Temp_Table_91)
  call void @__lua.fun.__lua_build_table(ptr sret(%class.__lua_object_ptr) align 4 %__Lua_Temp_Table_92)
  call void @__lua.fun.__lua_build_number(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp572, double noundef 1.000000e+00)
  call void @__lua.fun.__lua_build_number(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp573, double noundef 1.000000e+00)
  call void @__lua.fun.__lua_set_member(ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Table_92, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp572, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp573, i32 noundef 3407)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp573)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp572)
  call void @__lua.fun.__lua_build_string(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp576, ptr noundef @.str.26, i32 noundef 6)
  call void @__lua.fun.__lua_get_member(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp575, ptr noundef nonnull align 4 dereferenceable(8) @__lua.var._ENV, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp576, i32 noundef 3400)
  call void @__lua.fun.__lua_call(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp574, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp575, ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Table_92, i32 noundef 3400)
  call void @__lua.fun.__lua_add_last_exp(ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Table_91, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp574, i32 noundef 3400)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp574)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp575)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp576)
  call void @__lua.fun.__lua_assign_local_var(ptr noundef nonnull align 4 dereferenceable(8) %a323, ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Table_91, i32 noundef 3397)
  call void @__lua.fun.__lua_build_table(ptr sret(%class.__lua_object_ptr) align 4 %__Lua_Temp_Table_93)
  call void @__lua.fun.__lua_build_table(ptr sret(%class.__lua_object_ptr) align 4 %__Lua_Temp_Table_94)
  call void @__lua.fun.__lua_build_number(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp577, double noundef 1.000000e+00)
  call void @__lua.fun.__lua_set_member(ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Table_94, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp577, ptr noundef nonnull align 4 dereferenceable(8) %a323, i32 noundef 3424)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp577)
  call void @__lua.fun.__lua_build_number(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp578, double noundef 1.000000e+00)
  call void @__lua.fun.__lua_build_string(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp583, ptr noundef @.str.11, i32 noundef 4)
  call void @__lua.fun.__lua_get_member(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp582, ptr noundef nonnull align 4 dereferenceable(8) @__lua.var._ENV, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp583, i32 noundef 3419)
  call void @__lua.fun.__lua_call(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp581, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp582, ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Table_94, i32 noundef 3419)
  call void @__lua.fun.__lua_build_number(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp584, double noundef 1.000000e+00)
  call void @__lua.fun.__lua_get_member(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp580, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp581, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp584, i32 noundef 3427)
  call void @__lua.fun.__lua_build_nil(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp585)
  call void @__lua.fun.__lua_binop(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp579, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp580, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp585, i32 noundef 14, i32 noundef 3427)
  call void @__lua.fun.__lua_set_member(ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Table_93, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp578, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp579, i32 noundef 3427)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp579)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp585)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp580)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp584)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp581)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp582)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp583)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp578)
  call void @__lua.fun.__lua_build_string(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp588, ptr noundef @.str.6, i32 noundef 6)
  call void @__lua.fun.__lua_get_member(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp587, ptr noundef nonnull align 4 dereferenceable(8) @__lua.var._ENV, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp588, i32 noundef 3412)
  call void @__lua.fun.__lua_call(ptr sret(%class.__lua_object_ptr) align 4 %agg.tmp.ensured586, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp587, ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Table_93, i32 noundef 3412)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %agg.tmp.ensured586)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp587)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp588)
  call void @__lua.fun.__lua_build_table(ptr sret(%class.__lua_object_ptr) align 4 %__Lua_Temp_Table_95)
  call void @__lua.fun.__lua_build_table(ptr sret(%class.__lua_object_ptr) align 4 %__Lua_Temp_Table_96)
  call void @__lua.fun.__lua_build_number(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp589, double noundef 1.000000e+00)
  call void @__lua.fun.__lua_build_number(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp591, double noundef 1.000000e+00)
  call void @__lua.fun.__lua_unop(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp590, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp591, i32 noundef 7, i32 noundef 3448)
  call void @__lua.fun.__lua_set_member(ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Table_96, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp589, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp590, i32 noundef 3448)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp590)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp591)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp589)
  call void @__lua.fun.__lua_build_number(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp592, double noundef 2.000000e+00)
  call void @__lua.fun.__lua_build_number(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp593, double noundef 3.000000e+00)
  call void @__lua.fun.__lua_set_member(ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Table_96, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp592, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp593, i32 noundef 3452)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp593)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp592)
  call void @__lua.fun.__lua_build_number(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp594, double noundef 3.000000e+00)
  call void @__lua.fun.__lua_build_number(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp595, double noundef 5.000000e+00)
  call void @__lua.fun.__lua_set_member(ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Table_96, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp594, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp595, i32 noundef 3455)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp595)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp594)
  call void @__lua.fun.__lua_build_number(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp596, double noundef 4.000000e+00)
  call void @__lua.fun.__lua_build_number(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp597, double noundef 7.000000e+00)
  call void @__lua.fun.__lua_set_member(ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Table_96, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp596, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp597, i32 noundef 3458)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp597)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp596)
  call void @__lua.fun.__lua_build_string(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp600, ptr noundef @.str.26, i32 noundef 6)
  call void @__lua.fun.__lua_get_member(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp599, ptr noundef nonnull align 4 dereferenceable(8) @__lua.var._ENV, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp600, i32 noundef 3441)
  call void @__lua.fun.__lua_call(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp598, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp599, ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Table_96, i32 noundef 3441)
  call void @__lua.fun.__lua_add_last_exp(ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Table_95, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp598, i32 noundef 3441)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp598)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp599)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp600)
  call void @__lua.fun.__lua_assign_local_var(ptr noundef nonnull align 4 dereferenceable(8) %a323, ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Table_95, i32 noundef 3438)
  call void @__lua.fun.__lua_build_table(ptr sret(%class.__lua_object_ptr) align 4 %__Lua_Temp_Table_97)
  call void @__lua.fun.__lua_build_number(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp601, double noundef 1.000000e+00)
  call void @__lua.fun.__lua_build_number(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp605, double noundef 1.000000e+00)
  call void @__lua.fun.__lua_get_member(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp604, ptr noundef nonnull align 4 dereferenceable(8) %a323, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp605, i32 noundef 3471)
  call void @__lua.fun.__lua_build_number(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp606, double noundef 7.000000e+00)
  call void @__lua.fun.__lua_binop(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp603, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp604, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp606, i32 noundef 14, i32 noundef 3475)
  call void @__lua.fun.__lua_build_number(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp609, double noundef 2.000000e+00)
  call void @__lua.fun.__lua_get_member(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp608, ptr noundef nonnull align 4 dereferenceable(8) %a323, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp609, i32 noundef 3485)
  call void @__lua.fun.__lua_build_nil(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp610)
  call void @__lua.fun.__lua_binop(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp607, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp608, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp610, i32 noundef 14, i32 noundef 3489)
  call void @__lua.fun.__lua_binop(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp602, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp603, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp607, i32 noundef 16, i32 noundef 3480)
  call void @__lua.fun.__lua_set_member(ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Table_97, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp601, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp602, i32 noundef 3480)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp602)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp607)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp610)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp608)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp609)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp603)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp606)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp604)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp605)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp601)
  call void @__lua.fun.__lua_build_string(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp613, ptr noundef @.str.6, i32 noundef 6)
  call void @__lua.fun.__lua_get_member(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp612, ptr noundef nonnull align 4 dereferenceable(8) @__lua.var._ENV, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp613, i32 noundef 3463)
  call void @__lua.fun.__lua_call(ptr sret(%class.__lua_object_ptr) align 4 %agg.tmp.ensured611, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp612, ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Table_97, i32 noundef 3463)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %agg.tmp.ensured611)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp612)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp613)
  call void @__lua.fun.__lua_build_table(ptr sret(%class.__lua_object_ptr) align 4 %__Lua_Temp_Table_98)
  call void @__lua.fun.__lua_build_table(ptr sret(%class.__lua_object_ptr) align 4 %__Lua_Temp_Table_99)
  call void @__lua.fun.__lua_build_number(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp614, double noundef 1.000000e+00)
  call void @__lua.fun.__lua_build_number(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp616, double noundef 2.000000e+00)
  call void @__lua.fun.__lua_unop(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp615, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp616, i32 noundef 7, i32 noundef 3510)
  call void @__lua.fun.__lua_set_member(ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Table_99, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp614, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp615, i32 noundef 3510)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp615)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp616)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp614)
  call void @__lua.fun.__lua_build_number(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp617, double noundef 2.000000e+00)
  call void @__lua.fun.__lua_build_number(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp618, double noundef 3.000000e+00)
  call void @__lua.fun.__lua_set_member(ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Table_99, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp617, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp618, i32 noundef 3514)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp618)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp617)
  call void @__lua.fun.__lua_build_number(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp619, double noundef 3.000000e+00)
  call void @__lua.fun.__lua_build_number(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp620, double noundef 5.000000e+00)
  call void @__lua.fun.__lua_set_member(ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Table_99, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp619, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp620, i32 noundef 3517)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp620)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp619)
  call void @__lua.fun.__lua_build_number(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp621, double noundef 4.000000e+00)
  call void @__lua.fun.__lua_build_number(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp622, double noundef 7.000000e+00)
  call void @__lua.fun.__lua_set_member(ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Table_99, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp621, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp622, i32 noundef 3520)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp622)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp621)
  call void @__lua.fun.__lua_build_string(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp625, ptr noundef @.str.26, i32 noundef 6)
  call void @__lua.fun.__lua_get_member(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp624, ptr noundef nonnull align 4 dereferenceable(8) @__lua.var._ENV, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp625, i32 noundef 3503)
  call void @__lua.fun.__lua_call(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp623, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp624, ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Table_99, i32 noundef 3503)
  call void @__lua.fun.__lua_add_last_exp(ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Table_98, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp623, i32 noundef 3503)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp623)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp624)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp625)
  call void @__lua.fun.__lua_assign_local_var(ptr noundef nonnull align 4 dereferenceable(8) %a323, ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Table_98, i32 noundef 3500)
  call void @__lua.fun.__lua_build_table(ptr sret(%class.__lua_object_ptr) align 4 %__Lua_Temp_Table_100)
  call void @__lua.fun.__lua_build_number(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp626, double noundef 1.000000e+00)
  call void @__lua.fun.__lua_build_number(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp631, double noundef 1.000000e+00)
  call void @__lua.fun.__lua_get_member(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp630, ptr noundef nonnull align 4 dereferenceable(8) %a323, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp631, i32 noundef 3533)
  call void @__lua.fun.__lua_build_number(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp632, double noundef 5.000000e+00)
  call void @__lua.fun.__lua_binop(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp629, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp630, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp632, i32 noundef 14, i32 noundef 3537)
  call void @__lua.fun.__lua_build_number(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp635, double noundef 2.000000e+00)
  call void @__lua.fun.__lua_get_member(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp634, ptr noundef nonnull align 4 dereferenceable(8) %a323, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp635, i32 noundef 3547)
  call void @__lua.fun.__lua_build_number(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp636, double noundef 7.000000e+00)
  call void @__lua.fun.__lua_binop(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp633, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp634, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp636, i32 noundef 14, i32 noundef 3551)
  call void @__lua.fun.__lua_binop(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp628, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp629, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp633, i32 noundef 16, i32 noundef 3542)
  call void @__lua.fun.__lua_build_number(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp639, double noundef 3.000000e+00)
  call void @__lua.fun.__lua_get_member(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp638, ptr noundef nonnull align 4 dereferenceable(8) %a323, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp639, i32 noundef 3561)
  call void @__lua.fun.__lua_build_nil(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp640)
  call void @__lua.fun.__lua_binop(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp637, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp638, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp640, i32 noundef 14, i32 noundef 3565)
  call void @__lua.fun.__lua_binop(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp627, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp628, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp637, i32 noundef 16, i32 noundef 3556)
  call void @__lua.fun.__lua_set_member(ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Table_100, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp626, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp627, i32 noundef 3556)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp627)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp637)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp640)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp638)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp639)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp628)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp633)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp636)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp634)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp635)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp629)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp632)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp630)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp631)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp626)
  call void @__lua.fun.__lua_build_string(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp643, ptr noundef @.str.6, i32 noundef 6)
  call void @__lua.fun.__lua_get_member(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp642, ptr noundef nonnull align 4 dereferenceable(8) @__lua.var._ENV, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp643, i32 noundef 3525)
  call void @__lua.fun.__lua_call(ptr sret(%class.__lua_object_ptr) align 4 %agg.tmp.ensured641, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp642, ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Table_100, i32 noundef 3525)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %agg.tmp.ensured641)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp642)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp643)
  call void @__lua.fun.__lua_build_table(ptr sret(%class.__lua_object_ptr) align 4 %__Lua_Temp_Table_101)
  call void @__lua.fun.__lua_build_number(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp644, double noundef 1.000000e+00)
  call void @__lua.fun.__lua_build_string(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp646, ptr noundef @.str.26, i32 noundef 6)
  call void @__lua.fun.__lua_get_member(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp645, ptr noundef nonnull align 4 dereferenceable(8) @__lua.var._ENV, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp646, i32 noundef 3580)
  call void @__lua.fun.__lua_set_member(ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Table_101, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp644, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp645, i32 noundef 3580)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp645)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp646)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp644)
  call void @__lua.fun.__lua_build_number(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp647, double noundef 2.000000e+00)
  call void @__lua.fun.__lua_build_number(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp648, double noundef 1.000000e+04)
  call void @__lua.fun.__lua_set_member(ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Table_101, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp647, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp648, i32 noundef 3588)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp648)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp647)
  call void @__lua.fun.__lua_build_string(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp651, ptr noundef @.str.27, i32 noundef 5)
  call void @__lua.fun.__lua_get_member(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp650, ptr noundef nonnull align 4 dereferenceable(8) @__lua.var._ENV, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp651, i32 noundef 3574)
  call void @__lua.fun.__lua_call(ptr sret(%class.__lua_object_ptr) align 4 %agg.tmp.ensured649, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp650, ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Table_101, i32 noundef 3574)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %agg.tmp.ensured649)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp650)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp651)
  call void @__lua.fun.__lua_build_table(ptr sret(%class.__lua_object_ptr) align 4 %__Lua_Temp_Table_102)
  call void @__lua.fun.__lua_build_number(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp652, double noundef 1.000000e+00)
  call void @__lua.fun.__lua_build_string(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp654, ptr noundef @.str.26, i32 noundef 6)
  call void @__lua.fun.__lua_get_member(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp653, ptr noundef nonnull align 4 dereferenceable(8) @__lua.var._ENV, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp654, i32 noundef 3602)
  call void @__lua.fun.__lua_set_member(ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Table_102, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp652, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp653, i32 noundef 3602)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp653)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp654)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp652)
  call void @__lua.fun.__lua_build_number(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp655, double noundef 2.000000e+00)
  call void @__lua.fun.__lua_build_number(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp657, double noundef 1.000000e+04)
  call void @__lua.fun.__lua_unop(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp656, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp657, i32 noundef 7, i32 noundef 3610)
  call void @__lua.fun.__lua_set_member(ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Table_102, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp655, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp656, i32 noundef 3610)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp656)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp657)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp655)
  call void @__lua.fun.__lua_build_string(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp660, ptr noundef @.str.27, i32 noundef 5)
  call void @__lua.fun.__lua_get_member(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp659, ptr noundef nonnull align 4 dereferenceable(8) @__lua.var._ENV, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp660, i32 noundef 3596)
  call void @__lua.fun.__lua_call(ptr sret(%class.__lua_object_ptr) align 4 %agg.tmp.ensured658, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp659, ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Table_102, i32 noundef 3596)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %agg.tmp.ensured658)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp659)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp660)
  call void @__lua.fun.__lua_build_nil(ptr sret(%class.__lua_object_ptr) align 4 %aux)
  call void @__lua.fun.__lua_build_closure(ptr sret(%class.__lua_object_ptr) align 4 %__Lua_Temp_Closure_9)
  store ptr @__lua.fun.__Lua_Temp_Method_10, ptr %ref.tmp661, align 4
  call void @__lua.fun.__lua_set_closure_function(ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Closure_9, ptr noundef nonnull align 4 dereferenceable(4) %ref.tmp661, i32 noundef 3646)
  call void @__lua.fun.__lua_assign_local_var(ptr noundef nonnull align 4 dereferenceable(8) %aux, ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Closure_9, i32 noundef 3646)
  call void @__lua.fun.__lua_build_table(ptr sret(%class.__lua_object_ptr) align 4 %__Lua_Temp_Table_107)
  call void @__lua.fun.__lua_build_table(ptr sret(%class.__lua_object_ptr) align 4 %__Lua_Temp_Table_108)
  call void @__lua.fun.__lua_build_table(ptr sret(%class.__lua_object_ptr) align 4 %__Lua_Temp_Table_109)
  call void @__lua.fun.__lua_build_number(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp662, double noundef 1.000000e+00)
  call void @__lua.fun.__lua_build_number(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp663, double noundef 1.000000e+00)
  call void @__lua.fun.__lua_set_member(ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Table_109, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp662, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp663, i32 noundef 3758)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp663)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp662)
  call void @__lua.fun.__lua_build_number(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp664, double noundef 1.000000e+00)
  call void @__lua.fun.__lua_build_number(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp665, double noundef 2.000000e+00)
  call void @__lua.fun.__lua_set_member(ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Table_109, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp664, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp665, i32 noundef 3761)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp665)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp664)
  call void @__lua.fun.__lua_build_number(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp666, double noundef 1.000000e+00)
  call void @__lua.fun.__lua_set_member(ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Table_108, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp666, ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Table_109, i32 noundef 3757)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp666)
  call void @__lua.fun.__lua_build_table(ptr sret(%class.__lua_object_ptr) align 4 %__Lua_Temp_Table_110)
  call void @__lua.fun.__lua_build_table(ptr sret(%class.__lua_object_ptr) align 4 %__Lua_Temp_Table_111)
  call void @__lua.fun.__lua_build_number(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp667, double noundef 1.000000e+00)
  call void @__lua.fun.__lua_build_number(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp668, double noundef 1.000000e+00)
  call void @__lua.fun.__lua_set_member(ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Table_111, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp667, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp668, i32 noundef 3782)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp668)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp667)
  call void @__lua.fun.__lua_build_number(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp669, double noundef 1.000000e+00)
  call void @__lua.fun.__lua_build_number(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp670, double noundef 2.000000e+00)
  call void @__lua.fun.__lua_set_member(ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Table_111, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp669, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp670, i32 noundef 3785)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp670)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp669)
  call void @__lua.fun.__lua_build_number(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp671, double noundef 1.000000e+00)
  call void @__lua.fun.__lua_set_member(ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Table_110, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp671, ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Table_111, i32 noundef 3781)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp671)
  call void @__lua.fun.__lua_build_number(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp672, double noundef 1.000000e+00)
  call void @__lua.fun.__lua_call(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp677, ptr noundef nonnull align 4 dereferenceable(8) %aux, ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Table_108, i32 noundef 3753)
  call void @__lua.fun.__lua_build_number(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp678, double noundef 1.000000e+00)
  call void @__lua.fun.__lua_get_member(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp676, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp677, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp678, i32 noundef 3753)
  call void @__lua.fun.__lua_build_number(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp679, double noundef 1.000000e+00)
  call void @__lua.fun.__lua_get_member(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp675, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp676, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp679, i32 noundef 3764)
  call void @__lua.fun.__lua_build_number(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp680, double noundef 1.000000e+00)
  call void @__lua.fun.__lua_binop(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp674, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp675, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp680, i32 noundef 14, i32 noundef 3768)
  call void @__lua.fun.__lua_call(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp684, ptr noundef nonnull align 4 dereferenceable(8) %aux, ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Table_110, i32 noundef 3777)
  call void @__lua.fun.__lua_build_number(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp685, double noundef 1.000000e+00)
  call void @__lua.fun.__lua_get_member(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp683, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp684, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp685, i32 noundef 3777)
  call void @__lua.fun.__lua_build_number(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp686, double noundef 2.000000e+00)
  call void @__lua.fun.__lua_get_member(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp682, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp683, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp686, i32 noundef 3788)
  call void @__lua.fun.__lua_build_number(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp687, double noundef 2.000000e+00)
  call void @__lua.fun.__lua_binop(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp681, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp682, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp687, i32 noundef 14, i32 noundef 3792)
  call void @__lua.fun.__lua_binop(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp673, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp674, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp681, i32 noundef 16, i32 noundef 3773)
  call void @__lua.fun.__lua_set_member(ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Table_107, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp672, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp673, i32 noundef 3773)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp673)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp681)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp687)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp682)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp686)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp683)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp685)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp684)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp674)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp680)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp675)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp679)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp676)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp678)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp677)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp672)
  call void @__lua.fun.__lua_build_string(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp690, ptr noundef @.str.6, i32 noundef 6)
  call void @__lua.fun.__lua_get_member(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp689, ptr noundef nonnull align 4 dereferenceable(8) @__lua.var._ENV, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp690, i32 noundef 3746)
  call void @__lua.fun.__lua_call(ptr sret(%class.__lua_object_ptr) align 4 %agg.tmp.ensured688, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp689, ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Table_107, i32 noundef 3746)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %agg.tmp.ensured688)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp689)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp690)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Table_111)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Table_110)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Table_109)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Table_108)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Table_107)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Closure_9)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %aux)
  call void @__lua.fun.__lua_build_closure(ptr sret(%class.__lua_object_ptr) align 4 %__Lua_Temp_Closure_10)
  store ptr @__lua.fun.__Lua_Temp_Method_11, ptr %ref.tmp691, align 4
  call void @__lua.fun.__lua_set_closure_function(ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Closure_10, ptr noundef nonnull align 4 dereferenceable(4) %ref.tmp691, i32 noundef 3835)
  call void @__lua.fun.__lua_build_string(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp692, ptr noundef @.str.3, i32 noundef 1)
  call void @__lua.fun.__lua_set_member(ptr noundef nonnull align 4 dereferenceable(8) @__lua.var._ENV, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp692, ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Closure_10, i32 noundef 3835)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp692)
  call void @__lua.fun.__lua_build_string(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp695, ptr noundef @.str.3, i32 noundef 1)
  call void @__lua.fun.__lua_get_member(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp694, ptr noundef nonnull align 4 dereferenceable(8) @__lua.var._ENV, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp695, i32 noundef 4178)
  call void @__lua.fun.__lua_build_table(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp696)
  call void @__lua.fun.__lua_call(ptr sret(%class.__lua_object_ptr) align 4 %agg.tmp.ensured693, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp694, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp696, i32 noundef 4178)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %agg.tmp.ensured693)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp696)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp694)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp695)
  call void @__lua.fun.__lua_build_table(ptr sret(%class.__lua_object_ptr) align 4 %__Lua_Temp_Table_112)
  call void @__lua.fun.__lua_build_number(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp697, double noundef 1.000000e+00)
  call void @__lua.fun.__lua_build_string(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp698, ptr noundef @.str.28, i32 noundef 2)
  call void @__lua.fun.__lua_set_member(ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Table_112, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp697, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp698, i32 noundef 4193)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp698)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp697)
  call void @__lua.fun.__lua_build_string(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp701, ptr noundef @.str.1, i32 noundef 5)
  call void @__lua.fun.__lua_get_member(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp700, ptr noundef nonnull align 4 dereferenceable(8) @__lua.var._ENV, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp701, i32 noundef 4187)
  call void @__lua.fun.__lua_call(ptr sret(%class.__lua_object_ptr) align 4 %agg.tmp.ensured699, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp700, ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Table_112, i32 noundef 4187)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %agg.tmp.ensured699)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp700)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp701)
  call void @__lua.fun.__lua_build_nil(ptr sret(%class.__lua_object_ptr) align 4 %agg.result)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Table_112)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Closure_10)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Table_102)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Table_101)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Table_100)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Table_99)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Table_98)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Table_97)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Table_96)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Table_95)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Table_94)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Table_93)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Table_92)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Table_91)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Table_90)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Table_89)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Table_88)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Table_87)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Table_86)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Table_85)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Table_84)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Table_83)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Table_82)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Table_81)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Table_80)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Table_79)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Table_78)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Table_77)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Obj_6)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Table_76)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Table_75)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Obj_5)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Table_74)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Table_73)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Closure_8)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Closure_7)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Table_64)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Table_63)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Table_62)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Table_61)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Table_60)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Table_59)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Closure_6)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Closure_5)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Table_55)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %a323)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %i)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Table_54)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Table_53)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Table_52)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Table_51)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Closure_4)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Table_48)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %t)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Table_47)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Table_46)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Table_45)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Table_44)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Table_43)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Table_42)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Table_41)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Table_40)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Table_39)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Obj_3)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Table_38)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %c)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %b)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Table_37)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Table_36)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Table_35)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %a)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Table_34)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Table_33)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Table_32)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Table_31)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Table_30)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Table_29)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Table_28)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Table_27)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Table_26)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Obj_2)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Table_25)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Table_24)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Table_23)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Table_22)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Table_21)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Table_20)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Table_19)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Table_18)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Table_17)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Table_16)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Table_15)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Table_14)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Closure_3)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %call)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Closure_2)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Closure_1)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Closure_0)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Table_0)
  ret void
}

declare void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8)) unnamed_addr #1

; Function Attrs: nounwind
declare i32 @__cxa_atexit(ptr, ptr, ptr) #3

declare void @__lua.fun.__lua_build_table(ptr sret(%class.__lua_object_ptr) align 4) #1

declare void @__lua.fun.__lua_set_member(ptr noundef nonnull align 4 dereferenceable(8), ptr noundef nonnull align 4 dereferenceable(8), ptr noundef nonnull align 4 dereferenceable(8), i32 noundef) #1

declare void @__lua.fun.__lua_build_number(ptr sret(%class.__lua_object_ptr) align 4, double noundef) #1

declare void @__lua.fun.__lua_build_string(ptr sret(%class.__lua_object_ptr) align 4, ptr noundef, i32 noundef) #1

declare void @__lua.fun.__lua_call(ptr sret(%class.__lua_object_ptr) align 4, ptr noundef nonnull align 4 dereferenceable(8), ptr noundef nonnull align 4 dereferenceable(8), i32 noundef) #1

declare void @__lua.fun.__lua_get_member(ptr sret(%class.__lua_object_ptr) align 4, ptr noundef nonnull align 4 dereferenceable(8), ptr noundef nonnull align 4 dereferenceable(8), i32 noundef) #1

declare void @__lua.fun.__lua_build_nil(ptr sret(%class.__lua_object_ptr) align 4) #1

declare void @__lua.fun.__lua_build_closure(ptr sret(%class.__lua_object_ptr) align 4) #1

declare void @__lua.fun.__lua_set_closure_function(ptr noundef nonnull align 4 dereferenceable(8), ptr noundef nonnull align 4 dereferenceable(4), i32 noundef) #1

; Function Attrs: noinline nounwind optnone
define internal void @__lua.fun.__Lua_Temp_Method_1(ptr noalias sret(%class.__lua_object_ptr) align 4 %agg.result, ptr noundef nonnull align 4 dereferenceable(8) %closure, ptr noundef nonnull align 4 dereferenceable(8) %parms) #2 {
entry:
  %result.ptr = alloca ptr, align 4
  %closure.addr = alloca ptr, align 4
  %parms.addr = alloca ptr, align 4
  %a = alloca %class.__lua_object_ptr, align 4
  %__lua_ellipsis = alloca %class.__lua_object_ptr, align 4
  %ref.tmp = alloca %class.__lua_object_ptr, align 4
  %ref.tmp1 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp2 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp3 = alloca %class.__lua_object_ptr, align 4
  %arg = alloca %class.__lua_object_ptr, align 4
  %__Lua_Temp_Table_1 = alloca %class.__lua_object_ptr, align 4
  %__Lua_Temp_Table_2 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp4 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp5 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp6 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp7 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp8 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp9 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp10 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp11 = alloca %class.__lua_object_ptr, align 4
  %i = alloca %class.__lua_object_ptr, align 4
  %__Lua_Temp_Obj_0 = alloca %class.__lua_object_ptr, align 4
  %__Lua_Temp_Obj_1 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp12 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp13 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp14 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp15 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp16 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp17 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp18 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp19 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp20 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp21 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp22 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp23 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp24 = alloca %class.__lua_object_ptr, align 4
  %__Lua_Temp_Table_3 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp25 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp26 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp27 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp28 = alloca %class.__lua_object_ptr, align 4
  %agg.tmp.ensured = alloca %class.__lua_object_ptr, align 4
  %ref.tmp29 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp30 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp31 = alloca %class.__lua_object_ptr, align 4
  %nrvo = alloca i1, align 1
  %ref.tmp32 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp33 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp34 = alloca %class.__lua_object_ptr, align 4
  store ptr %agg.result, ptr %result.ptr, align 4
  store ptr %closure, ptr %closure.addr, align 4
  store ptr %parms, ptr %parms.addr, align 4
  call void @__lua.fun.__lua_build_nil(ptr sret(%class.__lua_object_ptr) align 4 %a)
  call void @__lua.fun.__lua_build_nil(ptr sret(%class.__lua_object_ptr) align 4 %__lua_ellipsis)
  %0 = load ptr, ptr %parms.addr, align 4
  call void @__lua.fun.__lua_build_number(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp1, double noundef 1.000000e+00)
  call void @__lua.fun.__lua_get_member(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp, ptr noundef nonnull align 4 dereferenceable(8) %0, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp1, i32 noundef 906)
  call void @__lua.fun.__lua_assign_local_var(ptr noundef nonnull align 4 dereferenceable(8) %a, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp, i32 noundef 906)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp1)
  %1 = load ptr, ptr %parms.addr, align 4
  call void @__lua.fun.__lua_build_number(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp3, double noundef 2.000000e+00)
  call void @__lua.fun.__lua_get_ellipsis(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp2, ptr noundef nonnull align 4 dereferenceable(8) %1, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp3, i32 noundef 909)
  call void @__lua.fun.__lua_assign_local_var(ptr noundef nonnull align 4 dereferenceable(8) %__lua_ellipsis, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp2, i32 noundef 909)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp2)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp3)
  call void @__lua.fun.__lua_build_nil(ptr sret(%class.__lua_object_ptr) align 4 %arg)
  call void @__lua.fun.__lua_build_table(ptr sret(%class.__lua_object_ptr) align 4 %__Lua_Temp_Table_1)
  call void @__lua.fun.__lua_build_table(ptr sret(%class.__lua_object_ptr) align 4 %__Lua_Temp_Table_2)
  call void @__lua.fun.__lua_build_number(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp4, double noundef 1.000000e+00)
  call void @__lua.fun.__lua_build_string(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp5, ptr noundef @.str.29, i32 noundef 1)
  call void @__lua.fun.__lua_set_member(ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Table_2, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp4, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp5, i32 noundef 941)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp5)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp4)
  call void @__lua.fun.__lua_add_last_exp(ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Table_2, ptr noundef nonnull align 4 dereferenceable(8) %__lua_ellipsis, i32 noundef 946)
  call void @__lua.fun.__lua_build_string(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp6, ptr noundef @.str.10, i32 noundef 1)
  call void @__lua.fun.__lua_build_string(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp10, ptr noundef @.str.26, i32 noundef 6)
  call void @__lua.fun.__lua_get_member(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp9, ptr noundef nonnull align 4 dereferenceable(8) @__lua.var._ENV, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp10, i32 noundef 934)
  call void @__lua.fun.__lua_call(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp8, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp9, ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Table_2, i32 noundef 934)
  call void @__lua.fun.__lua_build_number(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp11, double noundef 1.000000e+00)
  call void @__lua.fun.__lua_get_member(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp7, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp8, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp11, i32 noundef 934)
  call void @__lua.fun.__lua_set_member(ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Table_1, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp6, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp7, i32 noundef 932)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp7)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp11)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp8)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp9)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp10)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp6)
  call void @__lua.fun.__lua_add_last_exp(ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Table_1, ptr noundef nonnull align 4 dereferenceable(8) %__lua_ellipsis, i32 noundef 952)
  call void @__lua.fun.__lua_assign_local_var(ptr noundef nonnull align 4 dereferenceable(8) %arg, ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Table_1, i32 noundef 929)
  call void @__lua.fun.__lua_build_nil(ptr sret(%class.__lua_object_ptr) align 4 %i)
  call void @__lua.fun.__lua_build_nil(ptr sret(%class.__lua_object_ptr) align 4 %__Lua_Temp_Obj_0)
  call void @__lua.fun.__lua_build_nil(ptr sret(%class.__lua_object_ptr) align 4 %__Lua_Temp_Obj_1)
  call void @__lua.fun.__lua_build_number(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp12, double noundef 1.000000e+00)
  call void @__lua.fun.__lua_assign_local_var(ptr noundef nonnull align 4 dereferenceable(8) %i, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp12, i32 noundef 964)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp12)
  call void @__lua.fun.__lua_build_string(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp14, ptr noundef @.str.10, i32 noundef 1)
  call void @__lua.fun.__lua_get_member(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp13, ptr noundef nonnull align 4 dereferenceable(8) %arg, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp14, i32 noundef 971)
  call void @__lua.fun.__lua_assign_local_var(ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Obj_0, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp13, i32 noundef 964)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp13)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp14)
  call void @__lua.fun.__lua_build_number(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp15, double noundef 1.000000e+00)
  call void @__lua.fun.__lua_assign_local_var(ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Obj_1, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp15, i32 noundef 964)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp15)
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  call void @__lua.fun.__lua_build_number(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp19, double noundef 0.000000e+00)
  call void @__lua.fun.__lua_binop(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp18, ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Obj_1, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp19, i32 noundef 13, i32 noundef 960)
  call void @__lua.fun.__lua_binop(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp20, ptr noundef nonnull align 4 dereferenceable(8) %i, ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Obj_0, i32 noundef 12, i32 noundef 960)
  call void @__lua.fun.__lua_binop(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp17, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp18, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp20, i32 noundef 16, i32 noundef 960)
  call void @__lua.fun.__lua_build_number(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp23, double noundef 0.000000e+00)
  call void @__lua.fun.__lua_binop(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp22, ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Obj_1, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp23, i32 noundef 10, i32 noundef 960)
  call void @__lua.fun.__lua_binop(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp24, ptr noundef nonnull align 4 dereferenceable(8) %i, ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Obj_0, i32 noundef 13, i32 noundef 960)
  call void @__lua.fun.__lua_binop(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp21, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp22, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp24, i32 noundef 16, i32 noundef 960)
  call void @__lua.fun.__lua_binop(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp16, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp17, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp21, i32 noundef 18, i32 noundef 960)
  %call = call zeroext i1 @__lua.fun.__lua_to_bool(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp16, i32 noundef 960)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp16)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp21)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp24)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp22)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp23)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp17)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp20)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp18)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp19)
  br i1 %call, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  call void @__lua.fun.__lua_build_table(ptr sret(%class.__lua_object_ptr) align 4 %__Lua_Temp_Table_3)
  call void @__lua.fun.__lua_build_number(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp25, double noundef 1.000000e+00)
  call void @__lua.fun.__lua_get_member(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp27, ptr noundef nonnull align 4 dereferenceable(8) %a, ptr noundef nonnull align 4 dereferenceable(8) %i, i32 noundef 985)
  call void @__lua.fun.__lua_get_member(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp28, ptr noundef nonnull align 4 dereferenceable(8) %arg, ptr noundef nonnull align 4 dereferenceable(8) %i, i32 noundef 993)
  call void @__lua.fun.__lua_binop(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp26, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp27, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp28, i32 noundef 14, i32 noundef 988)
  call void @__lua.fun.__lua_set_member(ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Table_3, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp25, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp26, i32 noundef 988)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp26)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp28)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp27)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp25)
  call void @__lua.fun.__lua_build_string(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp30, ptr noundef @.str.6, i32 noundef 6)
  call void @__lua.fun.__lua_get_member(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp29, ptr noundef nonnull align 4 dereferenceable(8) @__lua.var._ENV, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp30, i32 noundef 977)
  call void @__lua.fun.__lua_call(ptr sret(%class.__lua_object_ptr) align 4 %agg.tmp.ensured, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp29, ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Table_3, i32 noundef 977)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %agg.tmp.ensured)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp29)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp30)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Table_3)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  call void @__lua.fun.__lua_binop(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp31, ptr noundef nonnull align 4 dereferenceable(8) %i, ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Obj_1, i32 noundef 5, i32 noundef 960)
  call void @__lua.fun.__lua_assign_local_var(ptr noundef nonnull align 4 dereferenceable(8) %i, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp31, i32 noundef 960)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp31)
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i1 false, ptr %nrvo, align 1
  call void @__lua.fun.__lua_build_table(ptr sret(%class.__lua_object_ptr) align 4 %agg.result)
  call void @__lua.fun.__lua_build_number(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp32, double noundef 1.000000e+00)
  call void @__lua.fun.__lua_build_string(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp34, ptr noundef @.str.10, i32 noundef 1)
  call void @__lua.fun.__lua_get_member(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp33, ptr noundef nonnull align 4 dereferenceable(8) %arg, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp34, i32 noundef 1015)
  call void @__lua.fun.__lua_set_member(ptr noundef nonnull align 4 dereferenceable(8) %agg.result, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp32, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp33, i32 noundef 1015)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp33)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp34)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp32)
  store i1 true, ptr %nrvo, align 1
  %nrvo.val = load i1, ptr %nrvo, align 1
  br i1 %nrvo.val, label %nrvo.skipdtor, label %nrvo.unused

nrvo.unused:                                      ; preds = %for.end
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %agg.result)
  br label %nrvo.skipdtor

nrvo.skipdtor:                                    ; preds = %nrvo.unused, %for.end
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Obj_1)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Obj_0)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %i)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Table_2)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Table_1)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %arg)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %__lua_ellipsis)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %a)
  ret void
}

; Function Attrs: noinline nounwind optnone
define internal void @__lua.fun.__Lua_Temp_Method_2(ptr noalias sret(%class.__lua_object_ptr) align 4 %agg.result, ptr noundef nonnull align 4 dereferenceable(8) %closure, ptr noundef nonnull align 4 dereferenceable(8) %parms) #2 {
entry:
  %result.ptr = alloca ptr, align 4
  %closure.addr = alloca ptr, align 4
  %parms.addr = alloca ptr, align 4
  %__lua_ellipsis = alloca %class.__lua_object_ptr, align 4
  %ref.tmp = alloca %class.__lua_object_ptr, align 4
  %ref.tmp1 = alloca %class.__lua_object_ptr, align 4
  %__Lua_Temp_Table_5 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp2 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp3 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp4 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp5 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp6 = alloca %class.__lua_object_ptr, align 4
  %agg.tmp.ensured = alloca %class.__lua_object_ptr, align 4
  %ref.tmp7 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp8 = alloca %class.__lua_object_ptr, align 4
  %x = alloca %class.__lua_object_ptr, align 4
  %__Lua_Temp_Table_6 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp9 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp10 = alloca %class.__lua_object_ptr, align 4
  %res = alloca %class.__lua_object_ptr, align 4
  %ref.tmp11 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp12 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp13 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp14 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp15 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp16 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp17 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp18 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp19 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp20 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp21 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp22 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp23 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp24 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp25 = alloca %class.__lua_object_ptr, align 4
  %nrvo = alloca i1, align 1
  %ref.tmp26 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp27 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp28 = alloca %class.__lua_object_ptr, align 4
  store ptr %agg.result, ptr %result.ptr, align 4
  store ptr %closure, ptr %closure.addr, align 4
  store ptr %parms, ptr %parms.addr, align 4
  call void @__lua.fun.__lua_build_nil(ptr sret(%class.__lua_object_ptr) align 4 %__lua_ellipsis)
  %0 = load ptr, ptr %parms.addr, align 4
  call void @__lua.fun.__lua_build_number(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp1, double noundef 1.000000e+00)
  call void @__lua.fun.__lua_get_ellipsis(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp, ptr noundef nonnull align 4 dereferenceable(8) %0, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp1, i32 noundef 1040)
  call void @__lua.fun.__lua_assign_local_var(ptr noundef nonnull align 4 dereferenceable(8) %__lua_ellipsis, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp, i32 noundef 1040)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp1)
  call void @__lua.fun.__lua_build_table(ptr sret(%class.__lua_object_ptr) align 4 %__Lua_Temp_Table_5)
  call void @__lua.fun.__lua_build_number(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp2, double noundef 1.000000e+00)
  call void @__lua.fun.__lua_build_string(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp5, ptr noundef @.str.2, i32 noundef 3)
  call void @__lua.fun.__lua_get_member(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp4, ptr noundef nonnull align 4 dereferenceable(8) @__lua.var._ENV, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp5, i32 noundef 1055)
  call void @__lua.fun.__lua_build_nil(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp6)
  call void @__lua.fun.__lua_binop(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp3, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp4, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp6, i32 noundef 14, i32 noundef 1059)
  call void @__lua.fun.__lua_set_member(ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Table_5, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp2, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp3, i32 noundef 1059)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp3)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp6)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp4)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp5)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp2)
  call void @__lua.fun.__lua_build_string(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp8, ptr noundef @.str.6, i32 noundef 6)
  call void @__lua.fun.__lua_get_member(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp7, ptr noundef nonnull align 4 dereferenceable(8) @__lua.var._ENV, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp8, i32 noundef 1048)
  call void @__lua.fun.__lua_call(ptr sret(%class.__lua_object_ptr) align 4 %agg.tmp.ensured, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp7, ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Table_5, i32 noundef 1048)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %agg.tmp.ensured)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp7)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp8)
  call void @__lua.fun.__lua_build_nil(ptr sret(%class.__lua_object_ptr) align 4 %x)
  call void @__lua.fun.__lua_build_table(ptr sret(%class.__lua_object_ptr) align 4 %__Lua_Temp_Table_6)
  call void @__lua.fun.__lua_add_last_exp(ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Table_6, ptr noundef nonnull align 4 dereferenceable(8) %__lua_ellipsis, i32 noundef 1081)
  call void @__lua.fun.__lua_assign_local_var(ptr noundef nonnull align 4 dereferenceable(8) %x, ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Table_6, i32 noundef 1080)
  call void @__lua.fun.__lua_build_string(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp9, ptr noundef @.str.10, i32 noundef 1)
  call void @__lua.fun.__lua_unop(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp10, ptr noundef nonnull align 4 dereferenceable(8) %x, i32 noundef 14, i32 noundef 1093)
  call void @__lua.fun.__lua_set_member(ptr noundef nonnull align 4 dereferenceable(8) %x, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp9, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp10, i32 noundef 1091)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp10)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp9)
  call void @__lua.fun.__lua_build_nil(ptr sret(%class.__lua_object_ptr) align 4 %res)
  call void @__lua.fun.__lua_build_string(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp15, ptr noundef @.str.10, i32 noundef 1)
  call void @__lua.fun.__lua_get_member(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp14, ptr noundef nonnull align 4 dereferenceable(8) %x, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp15, i32 noundef 1113)
  call void @__lua.fun.__lua_build_number(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp16, double noundef 2.000000e+00)
  call void @__lua.fun.__lua_binop(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp13, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp14, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp16, i32 noundef 14, i32 noundef 1115)
  call void @__lua.fun.__lua_build_number(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp19, double noundef 1.000000e+00)
  call void @__lua.fun.__lua_get_member(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp18, ptr noundef nonnull align 4 dereferenceable(8) %x, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp19, i32 noundef 1124)
  call void @__lua.fun.__lua_build_number(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp20, double noundef 1.000000e+00)
  call void @__lua.fun.__lua_binop(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp17, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp18, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp20, i32 noundef 14, i32 noundef 1128)
  call void @__lua.fun.__lua_binop(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp12, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp13, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp17, i32 noundef 16, i32 noundef 1119)
  call void @__lua.fun.__lua_build_number(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp23, double noundef 2.000000e+00)
  call void @__lua.fun.__lua_get_member(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp22, ptr noundef nonnull align 4 dereferenceable(8) %x, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp23, i32 noundef 1138)
  call void @__lua.fun.__lua_build_number(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp24, double noundef 2.000000e+00)
  call void @__lua.fun.__lua_binop(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp21, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp22, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp24, i32 noundef 14, i32 noundef 1142)
  call void @__lua.fun.__lua_binop(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp11, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp12, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp21, i32 noundef 16, i32 noundef 1133)
  call void @__lua.fun.__lua_assign_local_var(ptr noundef nonnull align 4 dereferenceable(8) %res, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp11, i32 noundef 1133)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp11)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp21)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp24)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp22)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp23)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp12)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp17)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp20)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp18)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp19)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp13)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp16)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp14)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp15)
  %call = call zeroext i1 @__lua.fun.__lua_to_bool(ptr noundef nonnull align 4 dereferenceable(8) %res, i32 noundef 1154)
  br i1 %call, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__lua.fun.__lua_build_number(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp25, double noundef 5.500000e+01)
  call void @__lua.fun.__lua_assign_local_var(ptr noundef nonnull align 4 dereferenceable(8) %res, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp25, i32 noundef 1167)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp25)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  store i1 false, ptr %nrvo, align 1
  call void @__lua.fun.__lua_build_table(ptr sret(%class.__lua_object_ptr) align 4 %agg.result)
  call void @__lua.fun.__lua_build_number(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp26, double noundef 1.000000e+00)
  call void @__lua.fun.__lua_set_member(ptr noundef nonnull align 4 dereferenceable(8) %agg.result, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp26, ptr noundef nonnull align 4 dereferenceable(8) %res, i32 noundef 1186)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp26)
  call void @__lua.fun.__lua_build_number(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp27, double noundef 2.000000e+00)
  call void @__lua.fun.__lua_build_number(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp28, double noundef 2.000000e+00)
  call void @__lua.fun.__lua_set_member(ptr noundef nonnull align 4 dereferenceable(8) %agg.result, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp27, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp28, i32 noundef 1191)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp28)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp27)
  store i1 true, ptr %nrvo, align 1
  %nrvo.val = load i1, ptr %nrvo, align 1
  br i1 %nrvo.val, label %nrvo.skipdtor, label %nrvo.unused

nrvo.unused:                                      ; preds = %if.end
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %agg.result)
  br label %nrvo.skipdtor

nrvo.skipdtor:                                    ; preds = %nrvo.unused, %if.end
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %res)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Table_6)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %x)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Table_5)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %__lua_ellipsis)
  ret void
}

; Function Attrs: noinline nounwind optnone
define internal void @__lua.fun.__Lua_Temp_Method_3(ptr noalias sret(%class.__lua_object_ptr) align 4 %agg.result, ptr noundef nonnull align 4 dereferenceable(8) %closure, ptr noundef nonnull align 4 dereferenceable(8) %parms) #2 {
entry:
  %result.ptr = alloca ptr, align 4
  %closure.addr = alloca ptr, align 4
  %parms.addr = alloca ptr, align 4
  %__lua_ellipsis = alloca %class.__lua_object_ptr, align 4
  %ref.tmp = alloca %class.__lua_object_ptr, align 4
  %ref.tmp1 = alloca %class.__lua_object_ptr, align 4
  %nrvo = alloca i1, align 1
  %__Lua_Temp_Table_9 = alloca %class.__lua_object_ptr, align 4
  %__Lua_Temp_Table_10 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp2 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp3 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp4 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp5 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp6 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp7 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp8 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp9 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp10 = alloca %class.__lua_object_ptr, align 4
  store ptr %agg.result, ptr %result.ptr, align 4
  store ptr %closure, ptr %closure.addr, align 4
  store ptr %parms, ptr %parms.addr, align 4
  call void @__lua.fun.__lua_build_nil(ptr sret(%class.__lua_object_ptr) align 4 %__lua_ellipsis)
  %0 = load ptr, ptr %parms.addr, align 4
  call void @__lua.fun.__lua_build_number(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp1, double noundef 1.000000e+00)
  call void @__lua.fun.__lua_get_ellipsis(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp, ptr noundef nonnull align 4 dereferenceable(8) %0, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp1, i32 noundef 1218)
  call void @__lua.fun.__lua_assign_local_var(ptr noundef nonnull align 4 dereferenceable(8) %__lua_ellipsis, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp, i32 noundef 1218)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp1)
  store i1 false, ptr %nrvo, align 1
  call void @__lua.fun.__lua_build_table(ptr sret(%class.__lua_object_ptr) align 4 %agg.result)
  call void @__lua.fun.__lua_build_table(ptr sret(%class.__lua_object_ptr) align 4 %__Lua_Temp_Table_9)
  call void @__lua.fun.__lua_build_table(ptr sret(%class.__lua_object_ptr) align 4 %__Lua_Temp_Table_10)
  call void @__lua.fun.__lua_build_number(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp2, double noundef 1.000000e+00)
  call void @__lua.fun.__lua_build_string(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp3, ptr noundef @.str.29, i32 noundef 1)
  call void @__lua.fun.__lua_set_member(ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Table_10, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp2, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp3, i32 noundef 1242)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp3)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp2)
  call void @__lua.fun.__lua_add_last_exp(ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Table_10, ptr noundef nonnull align 4 dereferenceable(8) %__lua_ellipsis, i32 noundef 1247)
  call void @__lua.fun.__lua_build_string(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp4, ptr noundef @.str.10, i32 noundef 1)
  call void @__lua.fun.__lua_build_string(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp8, ptr noundef @.str.26, i32 noundef 6)
  call void @__lua.fun.__lua_get_member(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp7, ptr noundef nonnull align 4 dereferenceable(8) @__lua.var._ENV, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp8, i32 noundef 1235)
  call void @__lua.fun.__lua_call(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp6, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp7, ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Table_10, i32 noundef 1235)
  call void @__lua.fun.__lua_build_number(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp9, double noundef 1.000000e+00)
  call void @__lua.fun.__lua_get_member(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp5, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp6, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp9, i32 noundef 1235)
  call void @__lua.fun.__lua_set_member(ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Table_9, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp4, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp5, i32 noundef 1233)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp5)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp9)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp6)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp7)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp8)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp4)
  call void @__lua.fun.__lua_add_last_exp(ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Table_9, ptr noundef nonnull align 4 dereferenceable(8) %__lua_ellipsis, i32 noundef 1253)
  call void @__lua.fun.__lua_build_number(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp10, double noundef 1.000000e+00)
  call void @__lua.fun.__lua_set_member(ptr noundef nonnull align 4 dereferenceable(8) %agg.result, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp10, ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Table_9, i32 noundef 1230)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp10)
  store i1 true, ptr %nrvo, align 1
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Table_10)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Table_9)
  %nrvo.val = load i1, ptr %nrvo, align 1
  br i1 %nrvo.val, label %nrvo.skipdtor, label %nrvo.unused

nrvo.unused:                                      ; preds = %entry
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %agg.result)
  br label %nrvo.skipdtor

nrvo.skipdtor:                                    ; preds = %nrvo.unused, %entry
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %__lua_ellipsis)
  ret void
}

; Function Attrs: noinline nounwind optnone
define internal void @__lua.fun.__Lua_Temp_Method_4(ptr noalias sret(%class.__lua_object_ptr) align 4 %agg.result, ptr noundef nonnull align 4 dereferenceable(8) %closure, ptr noundef nonnull align 4 dereferenceable(8) %parms) #2 {
entry:
  %result.ptr = alloca ptr, align 4
  %closure.addr = alloca ptr, align 4
  %parms.addr = alloca ptr, align 4
  %f = alloca %class.__lua_object_ptr, align 4
  %args = alloca %class.__lua_object_ptr, align 4
  %ref.tmp = alloca %class.__lua_object_ptr, align 4
  %ref.tmp1 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp2 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp3 = alloca %class.__lua_object_ptr, align 4
  %nrvo = alloca i1, align 1
  %__Lua_Temp_Table_12 = alloca %class.__lua_object_ptr, align 4
  %__Lua_Temp_Table_13 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp4 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp5 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp6 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp7 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp8 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp9 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp10 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp11 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp12 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp13 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp14 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp15 = alloca %class.__lua_object_ptr, align 4
  store ptr %agg.result, ptr %result.ptr, align 4
  store ptr %closure, ptr %closure.addr, align 4
  store ptr %parms, ptr %parms.addr, align 4
  call void @__lua.fun.__lua_build_nil(ptr sret(%class.__lua_object_ptr) align 4 %f)
  call void @__lua.fun.__lua_build_nil(ptr sret(%class.__lua_object_ptr) align 4 %args)
  %0 = load ptr, ptr %parms.addr, align 4
  call void @__lua.fun.__lua_build_number(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp1, double noundef 1.000000e+00)
  call void @__lua.fun.__lua_get_member(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp, ptr noundef nonnull align 4 dereferenceable(8) %0, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp1, i32 noundef 1288)
  call void @__lua.fun.__lua_assign_local_var(ptr noundef nonnull align 4 dereferenceable(8) %f, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp, i32 noundef 1288)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp1)
  %1 = load ptr, ptr %parms.addr, align 4
  call void @__lua.fun.__lua_build_number(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp3, double noundef 2.000000e+00)
  call void @__lua.fun.__lua_get_member(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp2, ptr noundef nonnull align 4 dereferenceable(8) %1, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp3, i32 noundef 1291)
  call void @__lua.fun.__lua_assign_local_var(ptr noundef nonnull align 4 dereferenceable(8) %args, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp2, i32 noundef 1291)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp2)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp3)
  store i1 false, ptr %nrvo, align 1
  call void @__lua.fun.__lua_build_table(ptr sret(%class.__lua_object_ptr) align 4 %agg.result)
  call void @__lua.fun.__lua_build_table(ptr sret(%class.__lua_object_ptr) align 4 %__Lua_Temp_Table_12)
  call void @__lua.fun.__lua_build_table(ptr sret(%class.__lua_object_ptr) align 4 %__Lua_Temp_Table_13)
  call void @__lua.fun.__lua_build_number(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp4, double noundef 1.000000e+00)
  call void @__lua.fun.__lua_set_member(ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Table_13, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp4, ptr noundef nonnull align 4 dereferenceable(8) %args, i32 noundef 1319)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp4)
  call void @__lua.fun.__lua_build_number(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp5, double noundef 2.000000e+00)
  call void @__lua.fun.__lua_build_number(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp6, double noundef 1.000000e+00)
  call void @__lua.fun.__lua_set_member(ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Table_13, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp5, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp6, i32 noundef 1325)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp6)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp5)
  call void @__lua.fun.__lua_build_number(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp7, double noundef 3.000000e+00)
  call void @__lua.fun.__lua_build_string(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp9, ptr noundef @.str.10, i32 noundef 1)
  call void @__lua.fun.__lua_get_member(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp8, ptr noundef nonnull align 4 dereferenceable(8) %args, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp9, i32 noundef 1332)
  call void @__lua.fun.__lua_set_member(ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Table_13, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp7, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp8, i32 noundef 1332)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp8)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp9)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp7)
  call void @__lua.fun.__lua_build_string(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp13, ptr noundef @.str.24, i32 noundef 5)
  call void @__lua.fun.__lua_get_member(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp12, ptr noundef nonnull align 4 dereferenceable(8) @__lua.var._ENV, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp13, i32 noundef 1306)
  call void @__lua.fun.__lua_build_string(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp14, ptr noundef @.str.25, i32 noundef 6)
  call void @__lua.fun.__lua_get_member(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp11, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp12, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp14, i32 noundef 1311)
  call void @__lua.fun.__lua_call(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp10, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp11, ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Table_13, i32 noundef 1311)
  call void @__lua.fun.__lua_add_last_exp(ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Table_12, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp10, i32 noundef 1311)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp10)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp11)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp14)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp12)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp13)
  call void @__lua.fun.__lua_call(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp15, ptr noundef nonnull align 4 dereferenceable(8) %f, ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Table_12, i32 noundef 1304)
  call void @__lua.fun.__lua_add_last_exp(ptr noundef nonnull align 4 dereferenceable(8) %agg.result, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp15, i32 noundef 1304)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp15)
  store i1 true, ptr %nrvo, align 1
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Table_13)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Table_12)
  %nrvo.val = load i1, ptr %nrvo, align 1
  br i1 %nrvo.val, label %nrvo.skipdtor, label %nrvo.unused

nrvo.unused:                                      ; preds = %entry
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %agg.result)
  br label %nrvo.skipdtor

nrvo.skipdtor:                                    ; preds = %nrvo.unused, %entry
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %args)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %f)
  ret void
}

declare void @__lua.fun.__lua_assign_local_var(ptr noundef nonnull align 4 dereferenceable(8), ptr noundef nonnull align 4 dereferenceable(8), i32 noundef) #1

declare void @__lua.fun.__lua_binop(ptr sret(%class.__lua_object_ptr) align 4, ptr noundef nonnull align 4 dereferenceable(8), ptr noundef nonnull align 4 dereferenceable(8), i32 noundef, i32 noundef) #1

declare void @__lua.fun.__lua_add_last_exp(ptr noundef nonnull align 4 dereferenceable(8), ptr noundef nonnull align 4 dereferenceable(8), i32 noundef) #1

declare void @__lua.fun.__lua_unop(ptr sret(%class.__lua_object_ptr) align 4, ptr noundef nonnull align 4 dereferenceable(8), i32 noundef, i32 noundef) #1

declare void @__lua.fun.__lua_build_bool(ptr sret(%class.__lua_object_ptr) align 4, i1 noundef zeroext) #1

; Function Attrs: noinline nounwind optnone
define internal void @__lua.fun.__Lua_Temp_Method_5(ptr noalias sret(%class.__lua_object_ptr) align 4 %agg.result, ptr noundef nonnull align 4 dereferenceable(8) %closure, ptr noundef nonnull align 4 dereferenceable(8) %parms) #2 {
entry:
  %result.ptr = alloca ptr, align 4
  %closure.addr = alloca ptr, align 4
  %parms.addr = alloca ptr, align 4
  %self = alloca %class.__lua_object_ptr, align 4
  %__lua_ellipsis = alloca %class.__lua_object_ptr, align 4
  %ref.tmp = alloca %class.__lua_object_ptr, align 4
  %ref.tmp1 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp2 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp3 = alloca %class.__lua_object_ptr, align 4
  %arg = alloca %class.__lua_object_ptr, align 4
  %__Lua_Temp_Table_49 = alloca %class.__lua_object_ptr, align 4
  %nrvo = alloca i1, align 1
  %ref.tmp4 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp5 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp6 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp7 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp8 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp9 = alloca %class.__lua_object_ptr, align 4
  store ptr %agg.result, ptr %result.ptr, align 4
  store ptr %closure, ptr %closure.addr, align 4
  store ptr %parms, ptr %parms.addr, align 4
  call void @__lua.fun.__lua_build_nil(ptr sret(%class.__lua_object_ptr) align 4 %self)
  call void @__lua.fun.__lua_build_nil(ptr sret(%class.__lua_object_ptr) align 4 %__lua_ellipsis)
  %0 = load ptr, ptr %parms.addr, align 4
  call void @__lua.fun.__lua_build_number(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp1, double noundef 1.000000e+00)
  call void @__lua.fun.__lua_get_member(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp, ptr noundef nonnull align 4 dereferenceable(8) %0, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp1, i32 noundef 1943)
  call void @__lua.fun.__lua_assign_local_var(ptr noundef nonnull align 4 dereferenceable(8) %self, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp, i32 noundef 1943)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp1)
  %1 = load ptr, ptr %parms.addr, align 4
  call void @__lua.fun.__lua_build_number(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp3, double noundef 2.000000e+00)
  call void @__lua.fun.__lua_get_ellipsis(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp2, ptr noundef nonnull align 4 dereferenceable(8) %1, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp3, i32 noundef 1944)
  call void @__lua.fun.__lua_assign_local_var(ptr noundef nonnull align 4 dereferenceable(8) %__lua_ellipsis, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp2, i32 noundef 1944)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp2)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp3)
  call void @__lua.fun.__lua_build_nil(ptr sret(%class.__lua_object_ptr) align 4 %arg)
  call void @__lua.fun.__lua_build_table(ptr sret(%class.__lua_object_ptr) align 4 %__Lua_Temp_Table_49)
  call void @__lua.fun.__lua_add_last_exp(ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Table_49, ptr noundef nonnull align 4 dereferenceable(8) %__lua_ellipsis, i32 noundef 1962)
  call void @__lua.fun.__lua_assign_local_var(ptr noundef nonnull align 4 dereferenceable(8) %arg, ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Table_49, i32 noundef 1961)
  store i1 false, ptr %nrvo, align 1
  call void @__lua.fun.__lua_build_table(ptr sret(%class.__lua_object_ptr) align 4 %agg.result)
  call void @__lua.fun.__lua_build_number(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp4, double noundef 1.000000e+00)
  call void @__lua.fun.__lua_build_number(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp8, double noundef 1.000000e+00)
  call void @__lua.fun.__lua_get_member(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp7, ptr noundef nonnull align 4 dereferenceable(8) %__lua_ellipsis, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp8, i32 noundef 1980)
  call void @__lua.fun.__lua_get_member(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp6, ptr noundef nonnull align 4 dereferenceable(8) %self, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp7, i32 noundef 1979)
  call void @__lua.fun.__lua_unop(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp9, ptr noundef nonnull align 4 dereferenceable(8) %arg, i32 noundef 14, i32 noundef 1985)
  call void @__lua.fun.__lua_binop(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp5, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp6, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp9, i32 noundef 5, i32 noundef 1984)
  call void @__lua.fun.__lua_set_member(ptr noundef nonnull align 4 dereferenceable(8) %agg.result, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp4, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp5, i32 noundef 1984)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp5)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp9)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp6)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp7)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp8)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp4)
  store i1 true, ptr %nrvo, align 1
  %nrvo.val = load i1, ptr %nrvo, align 1
  br i1 %nrvo.val, label %nrvo.skipdtor, label %nrvo.unused

nrvo.unused:                                      ; preds = %entry
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %agg.result)
  br label %nrvo.skipdtor

nrvo.skipdtor:                                    ; preds = %nrvo.unused, %entry
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Table_49)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %arg)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %__lua_ellipsis)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %self)
  ret void
}

declare zeroext i1 @__lua.fun.__lua_to_bool(ptr noundef nonnull align 4 dereferenceable(8), i32 noundef) #1

; Function Attrs: noinline nounwind optnone
define internal void @__lua.fun.__Lua_Temp_Method_6(ptr noalias sret(%class.__lua_object_ptr) align 4 %agg.result, ptr noundef nonnull align 4 dereferenceable(8) %closure, ptr noundef nonnull align 4 dereferenceable(8) %parms) #2 {
entry:
  %result.ptr = alloca ptr, align 4
  %closure.addr = alloca ptr, align 4
  %parms.addr = alloca ptr, align 4
  %a = alloca %class.__lua_object_ptr, align 4
  %b = alloca %class.__lua_object_ptr, align 4
  %c = alloca %class.__lua_object_ptr, align 4
  %d = alloca %class.__lua_object_ptr, align 4
  %__lua_ellipsis = alloca %class.__lua_object_ptr, align 4
  %ref.tmp = alloca %class.__lua_object_ptr, align 4
  %ref.tmp1 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp2 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp3 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp4 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp5 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp6 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp7 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp8 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp9 = alloca %class.__lua_object_ptr, align 4
  %more = alloca %class.__lua_object_ptr, align 4
  %__Lua_Temp_Table_56 = alloca %class.__lua_object_ptr, align 4
  %__Lua_Temp_Table_57 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp10 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp11 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp12 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp13 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp14 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp15 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp16 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp17 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp18 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp19 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp20 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp21 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp22 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp23 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp24 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp25 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp26 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp27 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp28 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp29 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp30 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp31 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp32 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp33 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp34 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp35 = alloca %class.__lua_object_ptr, align 4
  %agg.tmp.ensured = alloca %class.__lua_object_ptr, align 4
  %ref.tmp36 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp37 = alloca %class.__lua_object_ptr, align 4
  store ptr %agg.result, ptr %result.ptr, align 4
  store ptr %closure, ptr %closure.addr, align 4
  store ptr %parms, ptr %parms.addr, align 4
  call void @__lua.fun.__lua_build_nil(ptr sret(%class.__lua_object_ptr) align 4 %a)
  call void @__lua.fun.__lua_build_nil(ptr sret(%class.__lua_object_ptr) align 4 %b)
  call void @__lua.fun.__lua_build_nil(ptr sret(%class.__lua_object_ptr) align 4 %c)
  call void @__lua.fun.__lua_build_nil(ptr sret(%class.__lua_object_ptr) align 4 %d)
  call void @__lua.fun.__lua_build_nil(ptr sret(%class.__lua_object_ptr) align 4 %__lua_ellipsis)
  %0 = load ptr, ptr %parms.addr, align 4
  call void @__lua.fun.__lua_build_number(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp1, double noundef 1.000000e+00)
  call void @__lua.fun.__lua_get_member(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp, ptr noundef nonnull align 4 dereferenceable(8) %0, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp1, i32 noundef 2135)
  call void @__lua.fun.__lua_assign_local_var(ptr noundef nonnull align 4 dereferenceable(8) %a, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp, i32 noundef 2135)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp1)
  %1 = load ptr, ptr %parms.addr, align 4
  call void @__lua.fun.__lua_build_number(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp3, double noundef 2.000000e+00)
  call void @__lua.fun.__lua_get_member(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp2, ptr noundef nonnull align 4 dereferenceable(8) %1, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp3, i32 noundef 2138)
  call void @__lua.fun.__lua_assign_local_var(ptr noundef nonnull align 4 dereferenceable(8) %b, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp2, i32 noundef 2138)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp2)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp3)
  %2 = load ptr, ptr %parms.addr, align 4
  call void @__lua.fun.__lua_build_number(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp5, double noundef 3.000000e+00)
  call void @__lua.fun.__lua_get_member(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp4, ptr noundef nonnull align 4 dereferenceable(8) %2, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp5, i32 noundef 2141)
  call void @__lua.fun.__lua_assign_local_var(ptr noundef nonnull align 4 dereferenceable(8) %c, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp4, i32 noundef 2141)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp4)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp5)
  %3 = load ptr, ptr %parms.addr, align 4
  call void @__lua.fun.__lua_build_number(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp7, double noundef 4.000000e+00)
  call void @__lua.fun.__lua_get_member(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp6, ptr noundef nonnull align 4 dereferenceable(8) %3, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp7, i32 noundef 2144)
  call void @__lua.fun.__lua_assign_local_var(ptr noundef nonnull align 4 dereferenceable(8) %d, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp6, i32 noundef 2144)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp6)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp7)
  %4 = load ptr, ptr %parms.addr, align 4
  call void @__lua.fun.__lua_build_number(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp9, double noundef 5.000000e+00)
  call void @__lua.fun.__lua_get_ellipsis(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp8, ptr noundef nonnull align 4 dereferenceable(8) %4, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp9, i32 noundef 2147)
  call void @__lua.fun.__lua_assign_local_var(ptr noundef nonnull align 4 dereferenceable(8) %__lua_ellipsis, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp8, i32 noundef 2147)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp8)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp9)
  call void @__lua.fun.__lua_build_nil(ptr sret(%class.__lua_object_ptr) align 4 %more)
  call void @__lua.fun.__lua_build_table(ptr sret(%class.__lua_object_ptr) align 4 %__Lua_Temp_Table_56)
  call void @__lua.fun.__lua_add_last_exp(ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Table_56, ptr noundef nonnull align 4 dereferenceable(8) %__lua_ellipsis, i32 noundef 2169)
  call void @__lua.fun.__lua_assign_local_var(ptr noundef nonnull align 4 dereferenceable(8) %more, ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Table_56, i32 noundef 2168)
  call void @__lua.fun.__lua_build_table(ptr sret(%class.__lua_object_ptr) align 4 %__Lua_Temp_Table_57)
  call void @__lua.fun.__lua_build_number(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp10, double noundef 1.000000e+00)
  call void @__lua.fun.__lua_build_number(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp15, double noundef 1.300000e+00)
  call void @__lua.fun.__lua_binop(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp14, ptr noundef nonnull align 4 dereferenceable(8) %a, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp15, i32 noundef 14, i32 noundef 2186)
  call void @__lua.fun.__lua_build_number(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp18, double noundef 1.000000e+00)
  call void @__lua.fun.__lua_get_member(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp17, ptr noundef nonnull align 4 dereferenceable(8) %more, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp18, i32 noundef 2201)
  call void @__lua.fun.__lua_build_number(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp19, double noundef 5.300000e+00)
  call void @__lua.fun.__lua_binop(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp16, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp17, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp19, i32 noundef 14, i32 noundef 2205)
  call void @__lua.fun.__lua_binop(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp13, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp14, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp16, i32 noundef 16, i32 noundef 2193)
  call void @__lua.fun.__lua_build_string(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp24, ptr noundef @.str.13, i32 noundef 3)
  call void @__lua.fun.__lua_get_member(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp23, ptr noundef nonnull align 4 dereferenceable(8) @__lua.var._ENV, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp24, i32 noundef 2231)
  call void @__lua.fun.__lua_build_number(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp25, double noundef 4.000000e+00)
  call void @__lua.fun.__lua_binop(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp22, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp23, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp25, i32 noundef 6, i32 noundef 2234)
  call void @__lua.fun.__lua_get_member(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp21, ptr noundef nonnull align 4 dereferenceable(8) %more, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp22, i32 noundef 2230)
  call void @__lua.fun.__lua_build_string(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp28, ptr noundef @.str.13, i32 noundef 3)
  call void @__lua.fun.__lua_get_member(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp27, ptr noundef nonnull align 4 dereferenceable(8) @__lua.var._ENV, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp28, i32 noundef 2241)
  call void @__lua.fun.__lua_build_number(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp29, double noundef 3.000000e-01)
  call void @__lua.fun.__lua_binop(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp26, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp27, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp29, i32 noundef 5, i32 noundef 2244)
  call void @__lua.fun.__lua_binop(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp20, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp21, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp26, i32 noundef 14, i32 noundef 2238)
  call void @__lua.fun.__lua_binop(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp12, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp13, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp20, i32 noundef 16, i32 noundef 2212)
  call void @__lua.fun.__lua_build_string(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp34, ptr noundef @.str.13, i32 noundef 3)
  call void @__lua.fun.__lua_get_member(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp33, ptr noundef nonnull align 4 dereferenceable(8) @__lua.var._ENV, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp34, i32 noundef 2262)
  call void @__lua.fun.__lua_build_number(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp35, double noundef 3.000000e+00)
  call void @__lua.fun.__lua_binop(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp32, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp33, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp35, i32 noundef 6, i32 noundef 2265)
  call void @__lua.fun.__lua_get_member(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp31, ptr noundef nonnull align 4 dereferenceable(8) %more, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp32, i32 noundef 2261)
  call void @__lua.fun.__lua_unop(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp30, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp31, i32 noundef 9, i32 noundef 2253)
  call void @__lua.fun.__lua_binop(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp11, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp12, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp30, i32 noundef 16, i32 noundef 2249)
  call void @__lua.fun.__lua_set_member(ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Table_57, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp10, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp11, i32 noundef 2249)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp11)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp30)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp31)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp32)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp35)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp33)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp34)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp12)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp20)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp26)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp29)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp27)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp28)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp21)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp22)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp25)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp23)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp24)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp13)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp16)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp19)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp17)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp18)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp14)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp15)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp10)
  call void @__lua.fun.__lua_build_string(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp37, ptr noundef @.str.6, i32 noundef 6)
  call void @__lua.fun.__lua_get_member(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp36, ptr noundef nonnull align 4 dereferenceable(8) @__lua.var._ENV, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp37, i32 noundef 2177)
  call void @__lua.fun.__lua_call(ptr sret(%class.__lua_object_ptr) align 4 %agg.tmp.ensured, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp36, ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Table_57, i32 noundef 2177)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %agg.tmp.ensured)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp36)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp37)
  call void @__lua.fun.__lua_build_nil(ptr sret(%class.__lua_object_ptr) align 4 %agg.result)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Table_57)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Table_56)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %more)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %__lua_ellipsis)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %d)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %c)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %b)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %a)
  ret void
}

; Function Attrs: noinline nounwind optnone
define internal void @__lua.fun.__Lua_Temp_Method_7(ptr noalias sret(%class.__lua_object_ptr) align 4 %agg.result, ptr noundef nonnull align 4 dereferenceable(8) %closure, ptr noundef nonnull align 4 dereferenceable(8) %parms) #2 {
entry:
  %result.ptr = alloca ptr, align 4
  %closure.addr = alloca ptr, align 4
  %parms.addr = alloca ptr, align 4
  %a = alloca %class.__lua_object_ptr, align 4
  %b = alloca %class.__lua_object_ptr, align 4
  %c = alloca %class.__lua_object_ptr, align 4
  %ref.tmp = alloca %class.__lua_object_ptr, align 4
  %ref.tmp1 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp2 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp3 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp4 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp5 = alloca %class.__lua_object_ptr, align 4
  %__Lua_Temp_Table_58 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp6 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp7 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp8 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp9 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp10 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp11 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp12 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp13 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp14 = alloca %class.__lua_object_ptr, align 4
  %agg.tmp.ensured = alloca %class.__lua_object_ptr, align 4
  %ref.tmp15 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp16 = alloca %class.__lua_object_ptr, align 4
  store ptr %agg.result, ptr %result.ptr, align 4
  store ptr %closure, ptr %closure.addr, align 4
  store ptr %parms, ptr %parms.addr, align 4
  call void @__lua.fun.__lua_build_nil(ptr sret(%class.__lua_object_ptr) align 4 %a)
  call void @__lua.fun.__lua_build_nil(ptr sret(%class.__lua_object_ptr) align 4 %b)
  call void @__lua.fun.__lua_build_nil(ptr sret(%class.__lua_object_ptr) align 4 %c)
  %0 = load ptr, ptr %parms.addr, align 4
  call void @__lua.fun.__lua_build_number(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp1, double noundef 1.000000e+00)
  call void @__lua.fun.__lua_get_member(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp, ptr noundef nonnull align 4 dereferenceable(8) %0, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp1, i32 noundef 2289)
  call void @__lua.fun.__lua_assign_local_var(ptr noundef nonnull align 4 dereferenceable(8) %a, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp, i32 noundef 2289)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp1)
  %1 = load ptr, ptr %parms.addr, align 4
  call void @__lua.fun.__lua_build_number(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp3, double noundef 2.000000e+00)
  call void @__lua.fun.__lua_get_member(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp2, ptr noundef nonnull align 4 dereferenceable(8) %1, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp3, i32 noundef 2291)
  call void @__lua.fun.__lua_assign_local_var(ptr noundef nonnull align 4 dereferenceable(8) %b, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp2, i32 noundef 2291)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp2)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp3)
  %2 = load ptr, ptr %parms.addr, align 4
  call void @__lua.fun.__lua_build_number(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp5, double noundef 3.000000e+00)
  call void @__lua.fun.__lua_get_member(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp4, ptr noundef nonnull align 4 dereferenceable(8) %2, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp5, i32 noundef 2293)
  call void @__lua.fun.__lua_assign_local_var(ptr noundef nonnull align 4 dereferenceable(8) %c, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp4, i32 noundef 2293)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp4)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp5)
  call void @__lua.fun.__lua_build_table(ptr sret(%class.__lua_object_ptr) align 4 %__Lua_Temp_Table_58)
  call void @__lua.fun.__lua_build_number(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp6, double noundef 1.000000e+00)
  call void @__lua.fun.__lua_build_number(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp10, double noundef 1.300000e+00)
  call void @__lua.fun.__lua_binop(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp9, ptr noundef nonnull align 4 dereferenceable(8) %a, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp10, i32 noundef 14, i32 noundef 2308)
  call void @__lua.fun.__lua_build_number(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp12, double noundef 2.300000e+00)
  call void @__lua.fun.__lua_binop(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp11, ptr noundef nonnull align 4 dereferenceable(8) %b, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp12, i32 noundef 14, i32 noundef 2321)
  call void @__lua.fun.__lua_binop(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp8, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp9, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp11, i32 noundef 16, i32 noundef 2315)
  call void @__lua.fun.__lua_build_number(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp14, double noundef 3.300000e+00)
  call void @__lua.fun.__lua_binop(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp13, ptr noundef nonnull align 4 dereferenceable(8) %c, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp14, i32 noundef 14, i32 noundef 2334)
  call void @__lua.fun.__lua_binop(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp7, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp8, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp13, i32 noundef 16, i32 noundef 2328)
  call void @__lua.fun.__lua_set_member(ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Table_58, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp6, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp7, i32 noundef 2328)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp7)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp13)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp14)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp8)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp11)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp12)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp9)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp10)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp6)
  call void @__lua.fun.__lua_build_string(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp16, ptr noundef @.str.6, i32 noundef 6)
  call void @__lua.fun.__lua_get_member(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp15, ptr noundef nonnull align 4 dereferenceable(8) @__lua.var._ENV, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp16, i32 noundef 2299)
  call void @__lua.fun.__lua_call(ptr sret(%class.__lua_object_ptr) align 4 %agg.tmp.ensured, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp15, ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Table_58, i32 noundef 2299)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %agg.tmp.ensured)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp15)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp16)
  call void @__lua.fun.__lua_build_nil(ptr sret(%class.__lua_object_ptr) align 4 %agg.result)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Table_58)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %c)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %b)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %a)
  ret void
}

; Function Attrs: noinline nounwind optnone
define internal void @__lua.fun.__Lua_Temp_Method_8(ptr noalias sret(%class.__lua_object_ptr) align 4 %agg.result, ptr noundef nonnull align 4 dereferenceable(8) %closure, ptr noundef nonnull align 4 dereferenceable(8) %parms) #2 {
entry:
  %result.ptr = alloca ptr, align 4
  %closure.addr = alloca ptr, align 4
  %parms.addr = alloca ptr, align 4
  %a = alloca %class.__lua_object_ptr, align 4
  %__lua_ellipsis = alloca %class.__lua_object_ptr, align 4
  %ref.tmp = alloca %class.__lua_object_ptr, align 4
  %ref.tmp1 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp2 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp3 = alloca %class.__lua_object_ptr, align 4
  %nrvo = alloca i1, align 1
  store ptr %agg.result, ptr %result.ptr, align 4
  store ptr %closure, ptr %closure.addr, align 4
  store ptr %parms, ptr %parms.addr, align 4
  call void @__lua.fun.__lua_build_nil(ptr sret(%class.__lua_object_ptr) align 4 %a)
  call void @__lua.fun.__lua_build_nil(ptr sret(%class.__lua_object_ptr) align 4 %__lua_ellipsis)
  %0 = load ptr, ptr %parms.addr, align 4
  call void @__lua.fun.__lua_build_number(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp1, double noundef 1.000000e+00)
  call void @__lua.fun.__lua_get_member(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp, ptr noundef nonnull align 4 dereferenceable(8) %0, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp1, i32 noundef 2524)
  call void @__lua.fun.__lua_assign_local_var(ptr noundef nonnull align 4 dereferenceable(8) %a, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp, i32 noundef 2524)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp1)
  %1 = load ptr, ptr %parms.addr, align 4
  call void @__lua.fun.__lua_build_number(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp3, double noundef 2.000000e+00)
  call void @__lua.fun.__lua_get_ellipsis(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp2, ptr noundef nonnull align 4 dereferenceable(8) %1, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp3, i32 noundef 2527)
  call void @__lua.fun.__lua_assign_local_var(ptr noundef nonnull align 4 dereferenceable(8) %__lua_ellipsis, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp2, i32 noundef 2527)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp2)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp3)
  store i1 false, ptr %nrvo, align 1
  call void @__lua.fun.__lua_build_table(ptr sret(%class.__lua_object_ptr) align 4 %agg.result)
  call void @__lua.fun.__lua_add_last_exp(ptr noundef nonnull align 4 dereferenceable(8) %agg.result, ptr noundef nonnull align 4 dereferenceable(8) %__lua_ellipsis, i32 noundef 2539)
  store i1 true, ptr %nrvo, align 1
  %nrvo.val = load i1, ptr %nrvo, align 1
  br i1 %nrvo.val, label %nrvo.skipdtor, label %nrvo.unused

nrvo.unused:                                      ; preds = %entry
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %agg.result)
  br label %nrvo.skipdtor

nrvo.skipdtor:                                    ; preds = %nrvo.unused, %entry
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %__lua_ellipsis)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %a)
  ret void
}

; Function Attrs: noinline nounwind optnone
define internal void @__lua.fun.__Lua_Temp_Method_9(ptr noalias sret(%class.__lua_object_ptr) align 4 %agg.result, ptr noundef nonnull align 4 dereferenceable(8) %closure, ptr noundef nonnull align 4 dereferenceable(8) %parms) #2 {
entry:
  %result.ptr = alloca ptr, align 4
  %closure.addr = alloca ptr, align 4
  %parms.addr = alloca ptr, align 4
  %n = alloca %class.__lua_object_ptr, align 4
  %a = alloca %class.__lua_object_ptr, align 4
  %__lua_ellipsis = alloca %class.__lua_object_ptr, align 4
  %ref.tmp = alloca %class.__lua_object_ptr, align 4
  %ref.tmp1 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp2 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp3 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp4 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp5 = alloca %class.__lua_object_ptr, align 4
  %b = alloca %class.__lua_object_ptr, align 4
  %ref.tmp6 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp7 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp8 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp9 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp10 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp11 = alloca %class.__lua_object_ptr, align 4
  %b12 = alloca %class.__lua_object_ptr, align 4
  %c = alloca %class.__lua_object_ptr, align 4
  %d = alloca %class.__lua_object_ptr, align 4
  %__Lua_Temp_Obj_4 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp13 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp14 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp15 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp16 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp17 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp18 = alloca %class.__lua_object_ptr, align 4
  %nrvo = alloca i1, align 1
  %ref.tmp19 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp20 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp21 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp22 = alloca %class.__lua_object_ptr, align 4
  %__Lua_Temp_Table_67 = alloca %class.__lua_object_ptr, align 4
  %__Lua_Temp_Table_68 = alloca %class.__lua_object_ptr, align 4
  %__Lua_Temp_Table_69 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp23 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp24 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp25 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp26 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp27 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp28 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp29 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp30 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp31 = alloca %class.__lua_object_ptr, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %ref.tmp32 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp33 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp34 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp35 = alloca %class.__lua_object_ptr, align 4
  %__Lua_Temp_Table_70 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp36 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp37 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp38 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp39 = alloca %class.__lua_object_ptr, align 4
  %agg.tmp.ensured = alloca %class.__lua_object_ptr, align 4
  %ref.tmp40 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp41 = alloca %class.__lua_object_ptr, align 4
  %nrvo42 = alloca i1, align 1
  %__Lua_Temp_Table_72 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp43 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp44 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp45 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp46 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp47 = alloca %class.__lua_object_ptr, align 4
  store ptr %agg.result, ptr %result.ptr, align 4
  store ptr %closure, ptr %closure.addr, align 4
  store ptr %parms, ptr %parms.addr, align 4
  call void @__lua.fun.__lua_build_nil(ptr sret(%class.__lua_object_ptr) align 4 %n)
  call void @__lua.fun.__lua_build_nil(ptr sret(%class.__lua_object_ptr) align 4 %a)
  call void @__lua.fun.__lua_build_nil(ptr sret(%class.__lua_object_ptr) align 4 %__lua_ellipsis)
  %0 = load ptr, ptr %parms.addr, align 4
  call void @__lua.fun.__lua_build_number(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp1, double noundef 1.000000e+00)
  call void @__lua.fun.__lua_get_member(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp, ptr noundef nonnull align 4 dereferenceable(8) %0, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp1, i32 noundef 2562)
  call void @__lua.fun.__lua_assign_local_var(ptr noundef nonnull align 4 dereferenceable(8) %n, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp, i32 noundef 2562)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp1)
  %1 = load ptr, ptr %parms.addr, align 4
  call void @__lua.fun.__lua_build_number(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp3, double noundef 2.000000e+00)
  call void @__lua.fun.__lua_get_member(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp2, ptr noundef nonnull align 4 dereferenceable(8) %1, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp3, i32 noundef 2565)
  call void @__lua.fun.__lua_assign_local_var(ptr noundef nonnull align 4 dereferenceable(8) %a, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp2, i32 noundef 2565)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp2)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp3)
  %2 = load ptr, ptr %parms.addr, align 4
  call void @__lua.fun.__lua_build_number(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp5, double noundef 3.000000e+00)
  call void @__lua.fun.__lua_get_ellipsis(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp4, ptr noundef nonnull align 4 dereferenceable(8) %2, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp5, i32 noundef 2568)
  call void @__lua.fun.__lua_assign_local_var(ptr noundef nonnull align 4 dereferenceable(8) %__lua_ellipsis, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp4, i32 noundef 2568)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp4)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp5)
  call void @__lua.fun.__lua_build_nil(ptr sret(%class.__lua_object_ptr) align 4 %b)
  call void @__lua.fun.__lua_build_string(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp8, ptr noundef @.str.2, i32 noundef 3)
  call void @__lua.fun.__lua_get_member(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp7, ptr noundef nonnull align 4 dereferenceable(8) @__lua.var._ENV, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp8, i32 noundef 2594)
  call void @__lua.fun.__lua_build_nil(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp9)
  call void @__lua.fun.__lua_binop(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp6, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp7, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp9, i32 noundef 14, i32 noundef 2598)
  call void @__lua.fun.__lua_assign_local_var(ptr noundef nonnull align 4 dereferenceable(8) %b, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp6, i32 noundef 2598)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp6)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp9)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp7)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp8)
  call void @__lua.fun.__lua_build_number(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp11, double noundef 0.000000e+00)
  call void @__lua.fun.__lua_binop(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp10, ptr noundef nonnull align 4 dereferenceable(8) %n, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp11, i32 noundef 14, i32 noundef 2614)
  %call = call zeroext i1 @__lua.fun.__lua_to_bool(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp10, i32 noundef 2614)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp10)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp11)
  br i1 %call, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__lua.fun.__lua_build_nil(ptr sret(%class.__lua_object_ptr) align 4 %b12)
  call void @__lua.fun.__lua_build_nil(ptr sret(%class.__lua_object_ptr) align 4 %c)
  call void @__lua.fun.__lua_build_nil(ptr sret(%class.__lua_object_ptr) align 4 %d)
  call void @__lua.fun.__lua_build_nil(ptr sret(%class.__lua_object_ptr) align 4 %__Lua_Temp_Obj_4)
  call void @__lua.fun.__lua_assign_local_var(ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Obj_4, ptr noundef nonnull align 4 dereferenceable(8) %__lua_ellipsis, i32 noundef 2645)
  call void @__lua.fun.__lua_build_number(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp14, double noundef 1.000000e+00)
  call void @__lua.fun.__lua_get_member(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp13, ptr noundef nonnull align 4 dereferenceable(8) %__lua_ellipsis, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp14, i32 noundef 2645)
  call void @__lua.fun.__lua_assign_local_var(ptr noundef nonnull align 4 dereferenceable(8) %b12, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp13, i32 noundef 2645)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp13)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp14)
  call void @__lua.fun.__lua_build_number(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp16, double noundef 1.000000e+00)
  call void @__lua.fun.__lua_get_member(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp15, ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Obj_4, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp16, i32 noundef 2645)
  call void @__lua.fun.__lua_assign_local_var(ptr noundef nonnull align 4 dereferenceable(8) %c, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp15, i32 noundef 2645)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp15)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp16)
  call void @__lua.fun.__lua_build_number(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp18, double noundef 2.000000e+00)
  call void @__lua.fun.__lua_get_member(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp17, ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Obj_4, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp18, i32 noundef 2645)
  call void @__lua.fun.__lua_assign_local_var(ptr noundef nonnull align 4 dereferenceable(8) %d, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp17, i32 noundef 2645)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp17)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp18)
  store i1 false, ptr %nrvo, align 1
  call void @__lua.fun.__lua_build_table(ptr sret(%class.__lua_object_ptr) align 4 %agg.result)
  call void @__lua.fun.__lua_build_number(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp19, double noundef 1.000000e+00)
  call void @__lua.fun.__lua_set_member(ptr noundef nonnull align 4 dereferenceable(8) %agg.result, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp19, ptr noundef nonnull align 4 dereferenceable(8) %a, i32 noundef 2661)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp19)
  call void @__lua.fun.__lua_build_number(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp20, double noundef 2.000000e+00)
  call void @__lua.fun.__lua_set_member(ptr noundef nonnull align 4 dereferenceable(8) %agg.result, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp20, ptr noundef nonnull align 4 dereferenceable(8) %b12, i32 noundef 2664)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp20)
  call void @__lua.fun.__lua_build_number(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp21, double noundef 3.000000e+00)
  call void @__lua.fun.__lua_set_member(ptr noundef nonnull align 4 dereferenceable(8) %agg.result, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp21, ptr noundef nonnull align 4 dereferenceable(8) %c, i32 noundef 2667)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp21)
  call void @__lua.fun.__lua_build_number(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp22, double noundef 4.000000e+00)
  call void @__lua.fun.__lua_set_member(ptr noundef nonnull align 4 dereferenceable(8) %agg.result, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp22, ptr noundef nonnull align 4 dereferenceable(8) %d, i32 noundef 2670)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp22)
  call void @__lua.fun.__lua_build_table(ptr sret(%class.__lua_object_ptr) align 4 %__Lua_Temp_Table_67)
  call void @__lua.fun.__lua_build_table(ptr sret(%class.__lua_object_ptr) align 4 %__Lua_Temp_Table_68)
  call void @__lua.fun.__lua_build_table(ptr sret(%class.__lua_object_ptr) align 4 %__Lua_Temp_Table_69)
  call void @__lua.fun.__lua_add_last_exp(ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Table_69, ptr noundef nonnull align 4 dereferenceable(8) %__lua_ellipsis, i32 noundef 2697)
  call void @__lua.fun.__lua_build_string(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp25, ptr noundef @.str.17, i32 noundef 7)
  call void @__lua.fun.__lua_get_member(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp24, ptr noundef nonnull align 4 dereferenceable(8) @__lua.var._ENV, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp25, i32 noundef 2689)
  call void @__lua.fun.__lua_call(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp23, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp24, ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Table_69, i32 noundef 2689)
  call void @__lua.fun.__lua_add_last_exp(ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Table_68, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp23, i32 noundef 2689)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp23)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp24)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp25)
  call void @__lua.fun.__lua_build_string(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp28, ptr noundef @.str.17, i32 noundef 7)
  call void @__lua.fun.__lua_get_member(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp27, ptr noundef nonnull align 4 dereferenceable(8) @__lua.var._ENV, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp28, i32 noundef 2681)
  call void @__lua.fun.__lua_call(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp26, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp27, ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Table_68, i32 noundef 2681)
  call void @__lua.fun.__lua_add_last_exp(ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Table_67, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp26, i32 noundef 2681)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp26)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp27)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp28)
  call void @__lua.fun.__lua_build_string(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp31, ptr noundef @.str.17, i32 noundef 7)
  call void @__lua.fun.__lua_get_member(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp30, ptr noundef nonnull align 4 dereferenceable(8) @__lua.var._ENV, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp31, i32 noundef 2673)
  call void @__lua.fun.__lua_call(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp29, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp30, ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Table_67, i32 noundef 2673)
  call void @__lua.fun.__lua_add_last_exp(ptr noundef nonnull align 4 dereferenceable(8) %agg.result, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp29, i32 noundef 2673)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp29)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp30)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp31)
  store i1 true, ptr %nrvo, align 1
  store i32 1, ptr %cleanup.dest.slot, align 4
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Table_69)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Table_68)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Table_67)
  %nrvo.val = load i1, ptr %nrvo, align 1
  br i1 %nrvo.val, label %nrvo.skipdtor, label %nrvo.unused

nrvo.unused:                                      ; preds = %if.then
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %agg.result)
  br label %nrvo.skipdtor

nrvo.skipdtor:                                    ; preds = %nrvo.unused, %if.then
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Obj_4)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %d)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %c)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %b12)
  br label %cleanup

if.else:                                          ; preds = %entry
  call void @__lua.fun.__lua_build_number(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp33, double noundef 1.000000e+00)
  call void @__lua.fun.__lua_binop(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp32, ptr noundef nonnull align 4 dereferenceable(8) %n, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp33, i32 noundef 6, i32 noundef 2728)
  call void @__lua.fun.__lua_assign_local_var(ptr noundef nonnull align 4 dereferenceable(8) %n, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp32, i32 noundef 2725)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp32)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp33)
  call void @__lua.fun.__lua_build_number(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp35, double noundef 1.000000e+00)
  call void @__lua.fun.__lua_get_member(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp34, ptr noundef nonnull align 4 dereferenceable(8) %__lua_ellipsis, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp35, i32 noundef 2725)
  call void @__lua.fun.__lua_assign_local_var(ptr noundef nonnull align 4 dereferenceable(8) %b, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp34, i32 noundef 2725)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp34)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp35)
  call void @__lua.fun.__lua_assign_local_var(ptr noundef nonnull align 4 dereferenceable(8) %a, ptr noundef nonnull align 4 dereferenceable(8) %a, i32 noundef 2725)
  call void @__lua.fun.__lua_build_table(ptr sret(%class.__lua_object_ptr) align 4 %__Lua_Temp_Table_70)
  call void @__lua.fun.__lua_build_number(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp36, double noundef 1.000000e+00)
  call void @__lua.fun.__lua_build_number(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp39, double noundef 1.000000e+00)
  call void @__lua.fun.__lua_get_member(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp38, ptr noundef nonnull align 4 dereferenceable(8) %__lua_ellipsis, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp39, i32 noundef 2753)
  call void @__lua.fun.__lua_binop(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp37, ptr noundef nonnull align 4 dereferenceable(8) %b, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp38, i32 noundef 14, i32 noundef 2753)
  call void @__lua.fun.__lua_set_member(ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Table_70, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp36, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp37, i32 noundef 2753)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp37)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp38)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp39)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp36)
  call void @__lua.fun.__lua_build_string(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp41, ptr noundef @.str.6, i32 noundef 6)
  call void @__lua.fun.__lua_get_member(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp40, ptr noundef nonnull align 4 dereferenceable(8) @__lua.var._ENV, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp41, i32 noundef 2744)
  call void @__lua.fun.__lua_call(ptr sret(%class.__lua_object_ptr) align 4 %agg.tmp.ensured, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp40, ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Table_70, i32 noundef 2744)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %agg.tmp.ensured)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp40)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp41)
  store i1 false, ptr %nrvo42, align 1
  call void @__lua.fun.__lua_build_table(ptr sret(%class.__lua_object_ptr) align 4 %agg.result)
  call void @__lua.fun.__lua_build_table(ptr sret(%class.__lua_object_ptr) align 4 %__Lua_Temp_Table_72)
  call void @__lua.fun.__lua_build_number(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp43, double noundef 1.000000e+00)
  call void @__lua.fun.__lua_set_member(ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Table_72, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp43, ptr noundef nonnull align 4 dereferenceable(8) %n, i32 noundef 2775)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp43)
  call void @__lua.fun.__lua_build_number(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp44, double noundef 2.000000e+00)
  call void @__lua.fun.__lua_set_member(ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Table_72, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp44, ptr noundef nonnull align 4 dereferenceable(8) %a, i32 noundef 2778)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp44)
  call void @__lua.fun.__lua_add_last_exp(ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Table_72, ptr noundef nonnull align 4 dereferenceable(8) %__lua_ellipsis, i32 noundef 2781)
  call void @__lua.fun.__lua_build_string(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp47, ptr noundef @.str.3, i32 noundef 1)
  call void @__lua.fun.__lua_get_member(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp46, ptr noundef nonnull align 4 dereferenceable(8) @__lua.var._ENV, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp47, i32 noundef 2773)
  call void @__lua.fun.__lua_call(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp45, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp46, ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Table_72, i32 noundef 2773)
  call void @__lua.fun.__lua_add_last_exp(ptr noundef nonnull align 4 dereferenceable(8) %agg.result, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp45, i32 noundef 2773)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp45)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp46)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp47)
  store i1 true, ptr %nrvo42, align 1
  store i32 1, ptr %cleanup.dest.slot, align 4
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Table_72)
  %nrvo.val48 = load i1, ptr %nrvo42, align 1
  br i1 %nrvo.val48, label %nrvo.skipdtor50, label %nrvo.unused49

nrvo.unused49:                                    ; preds = %if.else
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %agg.result)
  br label %nrvo.skipdtor50

nrvo.skipdtor50:                                  ; preds = %nrvo.unused49, %if.else
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Table_70)
  br label %cleanup

cleanup:                                          ; preds = %nrvo.skipdtor50, %nrvo.skipdtor
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %b)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %__lua_ellipsis)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %a)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %n)
  ret void
}

; Function Attrs: noinline nounwind optnone
define internal void @__lua.fun.__Lua_Temp_Method_10(ptr noalias sret(%class.__lua_object_ptr) align 4 %agg.result, ptr noundef nonnull align 4 dereferenceable(8) %closure, ptr noundef nonnull align 4 dereferenceable(8) %parms) #2 {
entry:
  %result.ptr = alloca ptr, align 4
  %closure.addr = alloca ptr, align 4
  %parms.addr = alloca ptr, align 4
  %v = alloca %class.__lua_object_ptr, align 4
  %ref.tmp = alloca %class.__lua_object_ptr, align 4
  %ref.tmp1 = alloca %class.__lua_object_ptr, align 4
  %t = alloca %class.__lua_object_ptr, align 4
  %__Lua_Temp_Table_103 = alloca %class.__lua_object_ptr, align 4
  %__Lua_Temp_Obj_7 = alloca %class.__lua_object_ptr, align 4
  %__Lua_Temp_Obj_8 = alloca %class.__lua_object_ptr, align 4
  %__Lua_Temp_Obj_9 = alloca %class.__lua_object_ptr, align 4
  %k = alloca %class.__lua_object_ptr, align 4
  %val = alloca %class.__lua_object_ptr, align 4
  %__Lua_Temp_Table_104 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp2 = alloca %class.__lua_object_ptr, align 4
  %__Lua_Temp_Obj_10 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp3 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp4 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp5 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp6 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp7 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp8 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp9 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp10 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp11 = alloca %class.__lua_object_ptr, align 4
  %__Lua_Temp_Table_105 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp12 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp13 = alloca %class.__lua_object_ptr, align 4
  %__Lua_Temp_Obj_11 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp14 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp15 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp16 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp17 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp18 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp19 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp20 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp21 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp22 = alloca %class.__lua_object_ptr, align 4
  %__Lua_Temp_Obj_12 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp23 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp24 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp25 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp26 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp27 = alloca %class.__lua_object_ptr, align 4
  %nrvo = alloca i1, align 1
  %ref.tmp28 = alloca %class.__lua_object_ptr, align 4
  store ptr %agg.result, ptr %result.ptr, align 4
  store ptr %closure, ptr %closure.addr, align 4
  store ptr %parms, ptr %parms.addr, align 4
  call void @__lua.fun.__lua_build_nil(ptr sret(%class.__lua_object_ptr) align 4 %v)
  %0 = load ptr, ptr %parms.addr, align 4
  call void @__lua.fun.__lua_build_number(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp1, double noundef 1.000000e+00)
  call void @__lua.fun.__lua_get_member(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp, ptr noundef nonnull align 4 dereferenceable(8) %0, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp1, i32 noundef 3647)
  call void @__lua.fun.__lua_assign_local_var(ptr noundef nonnull align 4 dereferenceable(8) %v, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp, i32 noundef 3647)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp1)
  call void @__lua.fun.__lua_build_nil(ptr sret(%class.__lua_object_ptr) align 4 %t)
  call void @__lua.fun.__lua_build_table(ptr sret(%class.__lua_object_ptr) align 4 %__Lua_Temp_Table_103)
  call void @__lua.fun.__lua_assign_local_var(ptr noundef nonnull align 4 dereferenceable(8) %t, ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Table_103, i32 noundef 3667)
  call void @__lua.fun.__lua_build_nil(ptr sret(%class.__lua_object_ptr) align 4 %__Lua_Temp_Obj_7)
  call void @__lua.fun.__lua_build_nil(ptr sret(%class.__lua_object_ptr) align 4 %__Lua_Temp_Obj_8)
  call void @__lua.fun.__lua_build_nil(ptr sret(%class.__lua_object_ptr) align 4 %__Lua_Temp_Obj_9)
  call void @__lua.fun.__lua_build_nil(ptr sret(%class.__lua_object_ptr) align 4 %k)
  call void @__lua.fun.__lua_build_nil(ptr sret(%class.__lua_object_ptr) align 4 %val)
  call void @__lua.fun.__lua_build_table(ptr sret(%class.__lua_object_ptr) align 4 %__Lua_Temp_Table_104)
  call void @__lua.fun.__lua_build_number(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp2, double noundef 1.000000e+00)
  call void @__lua.fun.__lua_set_member(ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Table_104, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp2, ptr noundef nonnull align 4 dereferenceable(8) %v, i32 noundef 3697)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp2)
  call void @__lua.fun.__lua_build_nil(ptr sret(%class.__lua_object_ptr) align 4 %__Lua_Temp_Obj_10)
  call void @__lua.fun.__lua_build_string(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp5, ptr noundef @.str.30, i32 noundef 5)
  call void @__lua.fun.__lua_get_member(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp4, ptr noundef nonnull align 4 dereferenceable(8) @__lua.var._ENV, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp5, i32 noundef 3691)
  call void @__lua.fun.__lua_call(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp3, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp4, ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Table_104, i32 noundef 3691)
  call void @__lua.fun.__lua_assign_local_var(ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Obj_10, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp3, i32 noundef 3691)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp3)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp4)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp5)
  call void @__lua.fun.__lua_build_number(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp7, double noundef 1.000000e+00)
  call void @__lua.fun.__lua_get_member(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp6, ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Obj_10, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp7, i32 noundef 3691)
  call void @__lua.fun.__lua_assign_local_var(ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Obj_7, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp6, i32 noundef 3691)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp6)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp7)
  call void @__lua.fun.__lua_build_number(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp9, double noundef 2.000000e+00)
  call void @__lua.fun.__lua_get_member(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp8, ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Obj_10, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp9, i32 noundef 3691)
  call void @__lua.fun.__lua_assign_local_var(ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Obj_8, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp8, i32 noundef 3691)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp8)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp9)
  call void @__lua.fun.__lua_build_number(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp11, double noundef 3.000000e+00)
  call void @__lua.fun.__lua_get_member(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp10, ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Obj_10, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp11, i32 noundef 3691)
  call void @__lua.fun.__lua_assign_local_var(ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Obj_9, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp10, i32 noundef 3691)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp10)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp11)
  call void @__lua.fun.__lua_build_table(ptr sret(%class.__lua_object_ptr) align 4 %__Lua_Temp_Table_105)
  call void @__lua.fun.__lua_build_number(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp12, double noundef 1.000000e+00)
  call void @__lua.fun.__lua_set_member(ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Table_105, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp12, ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Obj_8, i32 noundef 3700)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp12)
  call void @__lua.fun.__lua_build_number(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp13, double noundef 2.000000e+00)
  call void @__lua.fun.__lua_set_member(ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Table_105, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp13, ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Obj_9, i32 noundef 3700)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp13)
  call void @__lua.fun.__lua_build_nil(ptr sret(%class.__lua_object_ptr) align 4 %__Lua_Temp_Obj_11)
  call void @__lua.fun.__lua_call(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp14, ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Obj_7, ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Table_105, i32 noundef 3677)
  call void @__lua.fun.__lua_assign_local_var(ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Obj_11, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp14, i32 noundef 3677)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp14)
  call void @__lua.fun.__lua_build_number(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp16, double noundef 0.000000e+00)
  call void @__lua.fun.__lua_get_member(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp15, ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Obj_11, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp16, i32 noundef 3681)
  call void @__lua.fun.__lua_assign_local_var(ptr noundef nonnull align 4 dereferenceable(8) %k, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp15, i32 noundef 3688)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp15)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp16)
  call void @__lua.fun.__lua_build_number(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp18, double noundef 1.000000e+00)
  call void @__lua.fun.__lua_get_member(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp17, ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Obj_11, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp18, i32 noundef 3684)
  call void @__lua.fun.__lua_assign_local_var(ptr noundef nonnull align 4 dereferenceable(8) %val, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp17, i32 noundef 3688)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp17)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp18)
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  call void @__lua.fun.__lua_build_nil(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp20)
  call void @__lua.fun.__lua_binop(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp19, ptr noundef nonnull align 4 dereferenceable(8) %k, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp20, i32 noundef 18, i32 noundef 3677)
  %call = call zeroext i1 @__lua.fun.__lua_to_bool(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp19, i32 noundef 3677)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp19)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp20)
  br i1 %call, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  call void @__lua.fun.__lua_set_member(ptr noundef nonnull align 4 dereferenceable(8) %t, ptr noundef nonnull align 4 dereferenceable(8) %k, ptr noundef nonnull align 4 dereferenceable(8) %val, i32 noundef 3708)
  call void @__lua.fun.__lua_assign_local_var(ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Obj_9, ptr noundef nonnull align 4 dereferenceable(8) %k, i32 noundef 3677)
  call void @__lua.fun.__lua_build_number(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp21, double noundef 1.000000e+00)
  call void @__lua.fun.__lua_set_member(ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Table_105, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp21, ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Obj_8, i32 noundef 3700)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp21)
  call void @__lua.fun.__lua_build_number(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp22, double noundef 2.000000e+00)
  call void @__lua.fun.__lua_set_member(ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Table_105, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp22, ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Obj_9, i32 noundef 3700)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp22)
  call void @__lua.fun.__lua_build_nil(ptr sret(%class.__lua_object_ptr) align 4 %__Lua_Temp_Obj_12)
  call void @__lua.fun.__lua_call(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp23, ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Obj_7, ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Table_105, i32 noundef 3677)
  call void @__lua.fun.__lua_assign_local_var(ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Obj_12, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp23, i32 noundef 3677)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp23)
  call void @__lua.fun.__lua_build_number(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp25, double noundef 0.000000e+00)
  call void @__lua.fun.__lua_get_member(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp24, ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Obj_12, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp25, i32 noundef 3681)
  call void @__lua.fun.__lua_assign_local_var(ptr noundef nonnull align 4 dereferenceable(8) %k, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp24, i32 noundef 3688)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp24)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp25)
  call void @__lua.fun.__lua_build_number(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp27, double noundef 1.000000e+00)
  call void @__lua.fun.__lua_get_member(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp26, ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Obj_12, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp27, i32 noundef 3684)
  call void @__lua.fun.__lua_assign_local_var(ptr noundef nonnull align 4 dereferenceable(8) %val, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp26, i32 noundef 3688)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp26)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp27)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Obj_12)
  br label %while.cond

while.end:                                        ; preds = %while.cond
  store i1 false, ptr %nrvo, align 1
  call void @__lua.fun.__lua_build_table(ptr sret(%class.__lua_object_ptr) align 4 %agg.result)
  call void @__lua.fun.__lua_build_number(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp28, double noundef 1.000000e+00)
  call void @__lua.fun.__lua_set_member(ptr noundef nonnull align 4 dereferenceable(8) %agg.result, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp28, ptr noundef nonnull align 4 dereferenceable(8) %t, i32 noundef 3732)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp28)
  store i1 true, ptr %nrvo, align 1
  %nrvo.val = load i1, ptr %nrvo, align 1
  br i1 %nrvo.val, label %nrvo.skipdtor, label %nrvo.unused

nrvo.unused:                                      ; preds = %while.end
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %agg.result)
  br label %nrvo.skipdtor

nrvo.skipdtor:                                    ; preds = %nrvo.unused, %while.end
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Obj_11)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Table_105)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Obj_10)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Table_104)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %val)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %k)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Obj_9)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Obj_8)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Obj_7)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Table_103)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %t)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %v)
  ret void
}

; Function Attrs: noinline nounwind optnone
define internal void @__lua.fun.__Lua_Temp_Method_11(ptr noalias sret(%class.__lua_object_ptr) align 4 %agg.result, ptr noundef nonnull align 4 dereferenceable(8) %closure, ptr noundef nonnull align 4 dereferenceable(8) %parms) #2 {
entry:
  %result.ptr = alloca ptr, align 4
  %closure.addr = alloca ptr, align 4
  %parms.addr = alloca ptr, align 4
  %p1 = alloca %class.__lua_object_ptr, align 4
  %p2 = alloca %class.__lua_object_ptr, align 4
  %p3 = alloca %class.__lua_object_ptr, align 4
  %p4 = alloca %class.__lua_object_ptr, align 4
  %p5 = alloca %class.__lua_object_ptr, align 4
  %p6 = alloca %class.__lua_object_ptr, align 4
  %p7 = alloca %class.__lua_object_ptr, align 4
  %p8 = alloca %class.__lua_object_ptr, align 4
  %p9 = alloca %class.__lua_object_ptr, align 4
  %p10 = alloca %class.__lua_object_ptr, align 4
  %p11 = alloca %class.__lua_object_ptr, align 4
  %p12 = alloca %class.__lua_object_ptr, align 4
  %p13 = alloca %class.__lua_object_ptr, align 4
  %p14 = alloca %class.__lua_object_ptr, align 4
  %p15 = alloca %class.__lua_object_ptr, align 4
  %p16 = alloca %class.__lua_object_ptr, align 4
  %p17 = alloca %class.__lua_object_ptr, align 4
  %p18 = alloca %class.__lua_object_ptr, align 4
  %p19 = alloca %class.__lua_object_ptr, align 4
  %p20 = alloca %class.__lua_object_ptr, align 4
  %p21 = alloca %class.__lua_object_ptr, align 4
  %p22 = alloca %class.__lua_object_ptr, align 4
  %p23 = alloca %class.__lua_object_ptr, align 4
  %p24 = alloca %class.__lua_object_ptr, align 4
  %p25 = alloca %class.__lua_object_ptr, align 4
  %p26 = alloca %class.__lua_object_ptr, align 4
  %p27 = alloca %class.__lua_object_ptr, align 4
  %p28 = alloca %class.__lua_object_ptr, align 4
  %p29 = alloca %class.__lua_object_ptr, align 4
  %p30 = alloca %class.__lua_object_ptr, align 4
  %p31 = alloca %class.__lua_object_ptr, align 4
  %p32 = alloca %class.__lua_object_ptr, align 4
  %p33 = alloca %class.__lua_object_ptr, align 4
  %p34 = alloca %class.__lua_object_ptr, align 4
  %p35 = alloca %class.__lua_object_ptr, align 4
  %p36 = alloca %class.__lua_object_ptr, align 4
  %p37 = alloca %class.__lua_object_ptr, align 4
  %p38 = alloca %class.__lua_object_ptr, align 4
  %p39 = alloca %class.__lua_object_ptr, align 4
  %p40 = alloca %class.__lua_object_ptr, align 4
  %p41 = alloca %class.__lua_object_ptr, align 4
  %p42 = alloca %class.__lua_object_ptr, align 4
  %p43 = alloca %class.__lua_object_ptr, align 4
  %p44 = alloca %class.__lua_object_ptr, align 4
  %p45 = alloca %class.__lua_object_ptr, align 4
  %p46 = alloca %class.__lua_object_ptr, align 4
  %p48 = alloca %class.__lua_object_ptr, align 4
  %p49 = alloca %class.__lua_object_ptr, align 4
  %p50 = alloca %class.__lua_object_ptr, align 4
  %__lua_ellipsis = alloca %class.__lua_object_ptr, align 4
  %ref.tmp = alloca %class.__lua_object_ptr, align 4
  %ref.tmp1 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp2 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp3 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp4 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp5 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp6 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp7 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp8 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp9 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp10 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp11 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp12 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp13 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp14 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp15 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp16 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp17 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp18 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp19 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp20 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp21 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp22 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp23 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp24 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp25 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp26 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp27 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp28 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp29 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp30 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp31 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp32 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp33 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp34 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp35 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp36 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp37 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp38 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp39 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp40 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp41 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp42 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp43 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp44 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp45 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp46 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp47 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp48 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp49 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp50 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp51 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp52 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp53 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp54 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp55 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp56 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp57 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp58 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp59 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp60 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp61 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp62 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp63 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp64 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp65 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp66 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp67 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp68 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp69 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp70 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp71 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp72 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp73 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp74 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp75 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp76 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp77 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp78 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp79 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp80 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp81 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp82 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp83 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp84 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp85 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp86 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp87 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp88 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp89 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp90 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp91 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp92 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp93 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp94 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp95 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp96 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp97 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp98 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp99 = alloca %class.__lua_object_ptr, align 4
  %a1 = alloca %class.__lua_object_ptr, align 4
  %a2 = alloca %class.__lua_object_ptr, align 4
  %a3 = alloca %class.__lua_object_ptr, align 4
  %a4 = alloca %class.__lua_object_ptr, align 4
  %a5 = alloca %class.__lua_object_ptr, align 4
  %a6 = alloca %class.__lua_object_ptr, align 4
  %a7 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp100 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp101 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp102 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp103 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp104 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp105 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp106 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp107 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp108 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp109 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp110 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp111 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp112 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp113 = alloca %class.__lua_object_ptr, align 4
  store ptr %agg.result, ptr %result.ptr, align 4
  store ptr %closure, ptr %closure.addr, align 4
  store ptr %parms, ptr %parms.addr, align 4
  call void @__lua.fun.__lua_build_nil(ptr sret(%class.__lua_object_ptr) align 4 %p1)
  call void @__lua.fun.__lua_build_nil(ptr sret(%class.__lua_object_ptr) align 4 %p2)
  call void @__lua.fun.__lua_build_nil(ptr sret(%class.__lua_object_ptr) align 4 %p3)
  call void @__lua.fun.__lua_build_nil(ptr sret(%class.__lua_object_ptr) align 4 %p4)
  call void @__lua.fun.__lua_build_nil(ptr sret(%class.__lua_object_ptr) align 4 %p5)
  call void @__lua.fun.__lua_build_nil(ptr sret(%class.__lua_object_ptr) align 4 %p6)
  call void @__lua.fun.__lua_build_nil(ptr sret(%class.__lua_object_ptr) align 4 %p7)
  call void @__lua.fun.__lua_build_nil(ptr sret(%class.__lua_object_ptr) align 4 %p8)
  call void @__lua.fun.__lua_build_nil(ptr sret(%class.__lua_object_ptr) align 4 %p9)
  call void @__lua.fun.__lua_build_nil(ptr sret(%class.__lua_object_ptr) align 4 %p10)
  call void @__lua.fun.__lua_build_nil(ptr sret(%class.__lua_object_ptr) align 4 %p11)
  call void @__lua.fun.__lua_build_nil(ptr sret(%class.__lua_object_ptr) align 4 %p12)
  call void @__lua.fun.__lua_build_nil(ptr sret(%class.__lua_object_ptr) align 4 %p13)
  call void @__lua.fun.__lua_build_nil(ptr sret(%class.__lua_object_ptr) align 4 %p14)
  call void @__lua.fun.__lua_build_nil(ptr sret(%class.__lua_object_ptr) align 4 %p15)
  call void @__lua.fun.__lua_build_nil(ptr sret(%class.__lua_object_ptr) align 4 %p16)
  call void @__lua.fun.__lua_build_nil(ptr sret(%class.__lua_object_ptr) align 4 %p17)
  call void @__lua.fun.__lua_build_nil(ptr sret(%class.__lua_object_ptr) align 4 %p18)
  call void @__lua.fun.__lua_build_nil(ptr sret(%class.__lua_object_ptr) align 4 %p19)
  call void @__lua.fun.__lua_build_nil(ptr sret(%class.__lua_object_ptr) align 4 %p20)
  call void @__lua.fun.__lua_build_nil(ptr sret(%class.__lua_object_ptr) align 4 %p21)
  call void @__lua.fun.__lua_build_nil(ptr sret(%class.__lua_object_ptr) align 4 %p22)
  call void @__lua.fun.__lua_build_nil(ptr sret(%class.__lua_object_ptr) align 4 %p23)
  call void @__lua.fun.__lua_build_nil(ptr sret(%class.__lua_object_ptr) align 4 %p24)
  call void @__lua.fun.__lua_build_nil(ptr sret(%class.__lua_object_ptr) align 4 %p25)
  call void @__lua.fun.__lua_build_nil(ptr sret(%class.__lua_object_ptr) align 4 %p26)
  call void @__lua.fun.__lua_build_nil(ptr sret(%class.__lua_object_ptr) align 4 %p27)
  call void @__lua.fun.__lua_build_nil(ptr sret(%class.__lua_object_ptr) align 4 %p28)
  call void @__lua.fun.__lua_build_nil(ptr sret(%class.__lua_object_ptr) align 4 %p29)
  call void @__lua.fun.__lua_build_nil(ptr sret(%class.__lua_object_ptr) align 4 %p30)
  call void @__lua.fun.__lua_build_nil(ptr sret(%class.__lua_object_ptr) align 4 %p31)
  call void @__lua.fun.__lua_build_nil(ptr sret(%class.__lua_object_ptr) align 4 %p32)
  call void @__lua.fun.__lua_build_nil(ptr sret(%class.__lua_object_ptr) align 4 %p33)
  call void @__lua.fun.__lua_build_nil(ptr sret(%class.__lua_object_ptr) align 4 %p34)
  call void @__lua.fun.__lua_build_nil(ptr sret(%class.__lua_object_ptr) align 4 %p35)
  call void @__lua.fun.__lua_build_nil(ptr sret(%class.__lua_object_ptr) align 4 %p36)
  call void @__lua.fun.__lua_build_nil(ptr sret(%class.__lua_object_ptr) align 4 %p37)
  call void @__lua.fun.__lua_build_nil(ptr sret(%class.__lua_object_ptr) align 4 %p38)
  call void @__lua.fun.__lua_build_nil(ptr sret(%class.__lua_object_ptr) align 4 %p39)
  call void @__lua.fun.__lua_build_nil(ptr sret(%class.__lua_object_ptr) align 4 %p40)
  call void @__lua.fun.__lua_build_nil(ptr sret(%class.__lua_object_ptr) align 4 %p41)
  call void @__lua.fun.__lua_build_nil(ptr sret(%class.__lua_object_ptr) align 4 %p42)
  call void @__lua.fun.__lua_build_nil(ptr sret(%class.__lua_object_ptr) align 4 %p43)
  call void @__lua.fun.__lua_build_nil(ptr sret(%class.__lua_object_ptr) align 4 %p44)
  call void @__lua.fun.__lua_build_nil(ptr sret(%class.__lua_object_ptr) align 4 %p45)
  call void @__lua.fun.__lua_build_nil(ptr sret(%class.__lua_object_ptr) align 4 %p46)
  call void @__lua.fun.__lua_build_nil(ptr sret(%class.__lua_object_ptr) align 4 %p48)
  call void @__lua.fun.__lua_build_nil(ptr sret(%class.__lua_object_ptr) align 4 %p49)
  call void @__lua.fun.__lua_build_nil(ptr sret(%class.__lua_object_ptr) align 4 %p50)
  call void @__lua.fun.__lua_build_nil(ptr sret(%class.__lua_object_ptr) align 4 %__lua_ellipsis)
  %0 = load ptr, ptr %parms.addr, align 4
  call void @__lua.fun.__lua_build_number(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp1, double noundef 1.000000e+00)
  call void @__lua.fun.__lua_get_member(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp, ptr noundef nonnull align 4 dereferenceable(8) %0, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp1, i32 noundef 3836)
  call void @__lua.fun.__lua_assign_local_var(ptr noundef nonnull align 4 dereferenceable(8) %p1, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp, i32 noundef 3836)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp1)
  %1 = load ptr, ptr %parms.addr, align 4
  call void @__lua.fun.__lua_build_number(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp3, double noundef 2.000000e+00)
  call void @__lua.fun.__lua_get_member(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp2, ptr noundef nonnull align 4 dereferenceable(8) %1, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp3, i32 noundef 3840)
  call void @__lua.fun.__lua_assign_local_var(ptr noundef nonnull align 4 dereferenceable(8) %p2, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp2, i32 noundef 3840)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp2)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp3)
  %2 = load ptr, ptr %parms.addr, align 4
  call void @__lua.fun.__lua_build_number(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp5, double noundef 3.000000e+00)
  call void @__lua.fun.__lua_get_member(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp4, ptr noundef nonnull align 4 dereferenceable(8) %2, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp5, i32 noundef 3844)
  call void @__lua.fun.__lua_assign_local_var(ptr noundef nonnull align 4 dereferenceable(8) %p3, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp4, i32 noundef 3844)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp4)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp5)
  %3 = load ptr, ptr %parms.addr, align 4
  call void @__lua.fun.__lua_build_number(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp7, double noundef 4.000000e+00)
  call void @__lua.fun.__lua_get_member(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp6, ptr noundef nonnull align 4 dereferenceable(8) %3, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp7, i32 noundef 3848)
  call void @__lua.fun.__lua_assign_local_var(ptr noundef nonnull align 4 dereferenceable(8) %p4, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp6, i32 noundef 3848)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp6)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp7)
  %4 = load ptr, ptr %parms.addr, align 4
  call void @__lua.fun.__lua_build_number(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp9, double noundef 5.000000e+00)
  call void @__lua.fun.__lua_get_member(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp8, ptr noundef nonnull align 4 dereferenceable(8) %4, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp9, i32 noundef 3852)
  call void @__lua.fun.__lua_assign_local_var(ptr noundef nonnull align 4 dereferenceable(8) %p5, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp8, i32 noundef 3852)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp8)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp9)
  %5 = load ptr, ptr %parms.addr, align 4
  call void @__lua.fun.__lua_build_number(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp11, double noundef 6.000000e+00)
  call void @__lua.fun.__lua_get_member(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp10, ptr noundef nonnull align 4 dereferenceable(8) %5, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp11, i32 noundef 3856)
  call void @__lua.fun.__lua_assign_local_var(ptr noundef nonnull align 4 dereferenceable(8) %p6, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp10, i32 noundef 3856)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp10)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp11)
  %6 = load ptr, ptr %parms.addr, align 4
  call void @__lua.fun.__lua_build_number(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp13, double noundef 7.000000e+00)
  call void @__lua.fun.__lua_get_member(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp12, ptr noundef nonnull align 4 dereferenceable(8) %6, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp13, i32 noundef 3860)
  call void @__lua.fun.__lua_assign_local_var(ptr noundef nonnull align 4 dereferenceable(8) %p7, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp12, i32 noundef 3860)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp12)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp13)
  %7 = load ptr, ptr %parms.addr, align 4
  call void @__lua.fun.__lua_build_number(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp15, double noundef 8.000000e+00)
  call void @__lua.fun.__lua_get_member(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp14, ptr noundef nonnull align 4 dereferenceable(8) %7, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp15, i32 noundef 3864)
  call void @__lua.fun.__lua_assign_local_var(ptr noundef nonnull align 4 dereferenceable(8) %p8, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp14, i32 noundef 3864)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp14)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp15)
  %8 = load ptr, ptr %parms.addr, align 4
  call void @__lua.fun.__lua_build_number(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp17, double noundef 9.000000e+00)
  call void @__lua.fun.__lua_get_member(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp16, ptr noundef nonnull align 4 dereferenceable(8) %8, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp17, i32 noundef 3868)
  call void @__lua.fun.__lua_assign_local_var(ptr noundef nonnull align 4 dereferenceable(8) %p9, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp16, i32 noundef 3868)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp16)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp17)
  %9 = load ptr, ptr %parms.addr, align 4
  call void @__lua.fun.__lua_build_number(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp19, double noundef 1.000000e+01)
  call void @__lua.fun.__lua_get_member(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp18, ptr noundef nonnull align 4 dereferenceable(8) %9, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp19, i32 noundef 3872)
  call void @__lua.fun.__lua_assign_local_var(ptr noundef nonnull align 4 dereferenceable(8) %p10, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp18, i32 noundef 3872)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp18)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp19)
  %10 = load ptr, ptr %parms.addr, align 4
  call void @__lua.fun.__lua_build_number(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp21, double noundef 1.100000e+01)
  call void @__lua.fun.__lua_get_member(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp20, ptr noundef nonnull align 4 dereferenceable(8) %10, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp21, i32 noundef 3878)
  call void @__lua.fun.__lua_assign_local_var(ptr noundef nonnull align 4 dereferenceable(8) %p11, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp20, i32 noundef 3878)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp20)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp21)
  %11 = load ptr, ptr %parms.addr, align 4
  call void @__lua.fun.__lua_build_number(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp23, double noundef 1.200000e+01)
  call void @__lua.fun.__lua_get_member(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp22, ptr noundef nonnull align 4 dereferenceable(8) %11, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp23, i32 noundef 3883)
  call void @__lua.fun.__lua_assign_local_var(ptr noundef nonnull align 4 dereferenceable(8) %p12, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp22, i32 noundef 3883)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp22)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp23)
  %12 = load ptr, ptr %parms.addr, align 4
  call void @__lua.fun.__lua_build_number(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp25, double noundef 1.300000e+01)
  call void @__lua.fun.__lua_get_member(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp24, ptr noundef nonnull align 4 dereferenceable(8) %12, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp25, i32 noundef 3888)
  call void @__lua.fun.__lua_assign_local_var(ptr noundef nonnull align 4 dereferenceable(8) %p13, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp24, i32 noundef 3888)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp24)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp25)
  %13 = load ptr, ptr %parms.addr, align 4
  call void @__lua.fun.__lua_build_number(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp27, double noundef 1.400000e+01)
  call void @__lua.fun.__lua_get_member(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp26, ptr noundef nonnull align 4 dereferenceable(8) %13, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp27, i32 noundef 3893)
  call void @__lua.fun.__lua_assign_local_var(ptr noundef nonnull align 4 dereferenceable(8) %p14, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp26, i32 noundef 3893)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp26)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp27)
  %14 = load ptr, ptr %parms.addr, align 4
  call void @__lua.fun.__lua_build_number(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp29, double noundef 1.500000e+01)
  call void @__lua.fun.__lua_get_member(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp28, ptr noundef nonnull align 4 dereferenceable(8) %14, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp29, i32 noundef 3898)
  call void @__lua.fun.__lua_assign_local_var(ptr noundef nonnull align 4 dereferenceable(8) %p15, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp28, i32 noundef 3898)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp28)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp29)
  %15 = load ptr, ptr %parms.addr, align 4
  call void @__lua.fun.__lua_build_number(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp31, double noundef 1.600000e+01)
  call void @__lua.fun.__lua_get_member(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp30, ptr noundef nonnull align 4 dereferenceable(8) %15, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp31, i32 noundef 3903)
  call void @__lua.fun.__lua_assign_local_var(ptr noundef nonnull align 4 dereferenceable(8) %p16, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp30, i32 noundef 3903)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp30)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp31)
  %16 = load ptr, ptr %parms.addr, align 4
  call void @__lua.fun.__lua_build_number(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp33, double noundef 1.700000e+01)
  call void @__lua.fun.__lua_get_member(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp32, ptr noundef nonnull align 4 dereferenceable(8) %16, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp33, i32 noundef 3908)
  call void @__lua.fun.__lua_assign_local_var(ptr noundef nonnull align 4 dereferenceable(8) %p17, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp32, i32 noundef 3908)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp32)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp33)
  %17 = load ptr, ptr %parms.addr, align 4
  call void @__lua.fun.__lua_build_number(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp35, double noundef 1.800000e+01)
  call void @__lua.fun.__lua_get_member(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp34, ptr noundef nonnull align 4 dereferenceable(8) %17, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp35, i32 noundef 3913)
  call void @__lua.fun.__lua_assign_local_var(ptr noundef nonnull align 4 dereferenceable(8) %p18, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp34, i32 noundef 3913)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp34)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp35)
  %18 = load ptr, ptr %parms.addr, align 4
  call void @__lua.fun.__lua_build_number(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp37, double noundef 1.900000e+01)
  call void @__lua.fun.__lua_get_member(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp36, ptr noundef nonnull align 4 dereferenceable(8) %18, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp37, i32 noundef 3918)
  call void @__lua.fun.__lua_assign_local_var(ptr noundef nonnull align 4 dereferenceable(8) %p19, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp36, i32 noundef 3918)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp36)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp37)
  %19 = load ptr, ptr %parms.addr, align 4
  call void @__lua.fun.__lua_build_number(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp39, double noundef 2.000000e+01)
  call void @__lua.fun.__lua_get_member(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp38, ptr noundef nonnull align 4 dereferenceable(8) %19, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp39, i32 noundef 3923)
  call void @__lua.fun.__lua_assign_local_var(ptr noundef nonnull align 4 dereferenceable(8) %p20, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp38, i32 noundef 3923)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp38)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp39)
  %20 = load ptr, ptr %parms.addr, align 4
  call void @__lua.fun.__lua_build_number(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp41, double noundef 2.100000e+01)
  call void @__lua.fun.__lua_get_member(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp40, ptr noundef nonnull align 4 dereferenceable(8) %20, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp41, i32 noundef 3929)
  call void @__lua.fun.__lua_assign_local_var(ptr noundef nonnull align 4 dereferenceable(8) %p21, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp40, i32 noundef 3929)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp40)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp41)
  %21 = load ptr, ptr %parms.addr, align 4
  call void @__lua.fun.__lua_build_number(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp43, double noundef 2.200000e+01)
  call void @__lua.fun.__lua_get_member(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp42, ptr noundef nonnull align 4 dereferenceable(8) %21, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp43, i32 noundef 3934)
  call void @__lua.fun.__lua_assign_local_var(ptr noundef nonnull align 4 dereferenceable(8) %p22, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp42, i32 noundef 3934)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp42)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp43)
  %22 = load ptr, ptr %parms.addr, align 4
  call void @__lua.fun.__lua_build_number(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp45, double noundef 2.300000e+01)
  call void @__lua.fun.__lua_get_member(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp44, ptr noundef nonnull align 4 dereferenceable(8) %22, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp45, i32 noundef 3939)
  call void @__lua.fun.__lua_assign_local_var(ptr noundef nonnull align 4 dereferenceable(8) %p23, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp44, i32 noundef 3939)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp44)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp45)
  %23 = load ptr, ptr %parms.addr, align 4
  call void @__lua.fun.__lua_build_number(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp47, double noundef 2.400000e+01)
  call void @__lua.fun.__lua_get_member(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp46, ptr noundef nonnull align 4 dereferenceable(8) %23, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp47, i32 noundef 3944)
  call void @__lua.fun.__lua_assign_local_var(ptr noundef nonnull align 4 dereferenceable(8) %p24, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp46, i32 noundef 3944)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp46)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp47)
  %24 = load ptr, ptr %parms.addr, align 4
  call void @__lua.fun.__lua_build_number(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp49, double noundef 2.500000e+01)
  call void @__lua.fun.__lua_get_member(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp48, ptr noundef nonnull align 4 dereferenceable(8) %24, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp49, i32 noundef 3949)
  call void @__lua.fun.__lua_assign_local_var(ptr noundef nonnull align 4 dereferenceable(8) %p25, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp48, i32 noundef 3949)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp48)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp49)
  %25 = load ptr, ptr %parms.addr, align 4
  call void @__lua.fun.__lua_build_number(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp51, double noundef 2.600000e+01)
  call void @__lua.fun.__lua_get_member(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp50, ptr noundef nonnull align 4 dereferenceable(8) %25, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp51, i32 noundef 3954)
  call void @__lua.fun.__lua_assign_local_var(ptr noundef nonnull align 4 dereferenceable(8) %p26, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp50, i32 noundef 3954)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp50)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp51)
  %26 = load ptr, ptr %parms.addr, align 4
  call void @__lua.fun.__lua_build_number(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp53, double noundef 2.700000e+01)
  call void @__lua.fun.__lua_get_member(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp52, ptr noundef nonnull align 4 dereferenceable(8) %26, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp53, i32 noundef 3959)
  call void @__lua.fun.__lua_assign_local_var(ptr noundef nonnull align 4 dereferenceable(8) %p27, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp52, i32 noundef 3959)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp52)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp53)
  %27 = load ptr, ptr %parms.addr, align 4
  call void @__lua.fun.__lua_build_number(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp55, double noundef 2.800000e+01)
  call void @__lua.fun.__lua_get_member(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp54, ptr noundef nonnull align 4 dereferenceable(8) %27, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp55, i32 noundef 3964)
  call void @__lua.fun.__lua_assign_local_var(ptr noundef nonnull align 4 dereferenceable(8) %p28, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp54, i32 noundef 3964)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp54)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp55)
  %28 = load ptr, ptr %parms.addr, align 4
  call void @__lua.fun.__lua_build_number(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp57, double noundef 2.900000e+01)
  call void @__lua.fun.__lua_get_member(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp56, ptr noundef nonnull align 4 dereferenceable(8) %28, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp57, i32 noundef 3969)
  call void @__lua.fun.__lua_assign_local_var(ptr noundef nonnull align 4 dereferenceable(8) %p29, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp56, i32 noundef 3969)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp56)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp57)
  %29 = load ptr, ptr %parms.addr, align 4
  call void @__lua.fun.__lua_build_number(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp59, double noundef 3.000000e+01)
  call void @__lua.fun.__lua_get_member(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp58, ptr noundef nonnull align 4 dereferenceable(8) %29, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp59, i32 noundef 3974)
  call void @__lua.fun.__lua_assign_local_var(ptr noundef nonnull align 4 dereferenceable(8) %p30, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp58, i32 noundef 3974)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp58)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp59)
  %30 = load ptr, ptr %parms.addr, align 4
  call void @__lua.fun.__lua_build_number(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp61, double noundef 3.100000e+01)
  call void @__lua.fun.__lua_get_member(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp60, ptr noundef nonnull align 4 dereferenceable(8) %30, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp61, i32 noundef 3980)
  call void @__lua.fun.__lua_assign_local_var(ptr noundef nonnull align 4 dereferenceable(8) %p31, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp60, i32 noundef 3980)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp60)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp61)
  %31 = load ptr, ptr %parms.addr, align 4
  call void @__lua.fun.__lua_build_number(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp63, double noundef 3.200000e+01)
  call void @__lua.fun.__lua_get_member(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp62, ptr noundef nonnull align 4 dereferenceable(8) %31, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp63, i32 noundef 3985)
  call void @__lua.fun.__lua_assign_local_var(ptr noundef nonnull align 4 dereferenceable(8) %p32, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp62, i32 noundef 3985)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp62)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp63)
  %32 = load ptr, ptr %parms.addr, align 4
  call void @__lua.fun.__lua_build_number(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp65, double noundef 3.300000e+01)
  call void @__lua.fun.__lua_get_member(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp64, ptr noundef nonnull align 4 dereferenceable(8) %32, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp65, i32 noundef 3990)
  call void @__lua.fun.__lua_assign_local_var(ptr noundef nonnull align 4 dereferenceable(8) %p33, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp64, i32 noundef 3990)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp64)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp65)
  %33 = load ptr, ptr %parms.addr, align 4
  call void @__lua.fun.__lua_build_number(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp67, double noundef 3.400000e+01)
  call void @__lua.fun.__lua_get_member(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp66, ptr noundef nonnull align 4 dereferenceable(8) %33, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp67, i32 noundef 3995)
  call void @__lua.fun.__lua_assign_local_var(ptr noundef nonnull align 4 dereferenceable(8) %p34, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp66, i32 noundef 3995)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp66)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp67)
  %34 = load ptr, ptr %parms.addr, align 4
  call void @__lua.fun.__lua_build_number(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp69, double noundef 3.500000e+01)
  call void @__lua.fun.__lua_get_member(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp68, ptr noundef nonnull align 4 dereferenceable(8) %34, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp69, i32 noundef 4000)
  call void @__lua.fun.__lua_assign_local_var(ptr noundef nonnull align 4 dereferenceable(8) %p35, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp68, i32 noundef 4000)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp68)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp69)
  %35 = load ptr, ptr %parms.addr, align 4
  call void @__lua.fun.__lua_build_number(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp71, double noundef 3.600000e+01)
  call void @__lua.fun.__lua_get_member(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp70, ptr noundef nonnull align 4 dereferenceable(8) %35, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp71, i32 noundef 4005)
  call void @__lua.fun.__lua_assign_local_var(ptr noundef nonnull align 4 dereferenceable(8) %p36, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp70, i32 noundef 4005)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp70)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp71)
  %36 = load ptr, ptr %parms.addr, align 4
  call void @__lua.fun.__lua_build_number(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp73, double noundef 3.700000e+01)
  call void @__lua.fun.__lua_get_member(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp72, ptr noundef nonnull align 4 dereferenceable(8) %36, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp73, i32 noundef 4010)
  call void @__lua.fun.__lua_assign_local_var(ptr noundef nonnull align 4 dereferenceable(8) %p37, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp72, i32 noundef 4010)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp72)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp73)
  %37 = load ptr, ptr %parms.addr, align 4
  call void @__lua.fun.__lua_build_number(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp75, double noundef 3.800000e+01)
  call void @__lua.fun.__lua_get_member(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp74, ptr noundef nonnull align 4 dereferenceable(8) %37, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp75, i32 noundef 4015)
  call void @__lua.fun.__lua_assign_local_var(ptr noundef nonnull align 4 dereferenceable(8) %p38, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp74, i32 noundef 4015)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp74)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp75)
  %38 = load ptr, ptr %parms.addr, align 4
  call void @__lua.fun.__lua_build_number(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp77, double noundef 3.900000e+01)
  call void @__lua.fun.__lua_get_member(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp76, ptr noundef nonnull align 4 dereferenceable(8) %38, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp77, i32 noundef 4020)
  call void @__lua.fun.__lua_assign_local_var(ptr noundef nonnull align 4 dereferenceable(8) %p39, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp76, i32 noundef 4020)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp76)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp77)
  %39 = load ptr, ptr %parms.addr, align 4
  call void @__lua.fun.__lua_build_number(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp79, double noundef 4.000000e+01)
  call void @__lua.fun.__lua_get_member(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp78, ptr noundef nonnull align 4 dereferenceable(8) %39, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp79, i32 noundef 4025)
  call void @__lua.fun.__lua_assign_local_var(ptr noundef nonnull align 4 dereferenceable(8) %p40, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp78, i32 noundef 4025)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp78)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp79)
  %40 = load ptr, ptr %parms.addr, align 4
  call void @__lua.fun.__lua_build_number(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp81, double noundef 4.100000e+01)
  call void @__lua.fun.__lua_get_member(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp80, ptr noundef nonnull align 4 dereferenceable(8) %40, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp81, i32 noundef 4031)
  call void @__lua.fun.__lua_assign_local_var(ptr noundef nonnull align 4 dereferenceable(8) %p41, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp80, i32 noundef 4031)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp80)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp81)
  %41 = load ptr, ptr %parms.addr, align 4
  call void @__lua.fun.__lua_build_number(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp83, double noundef 4.200000e+01)
  call void @__lua.fun.__lua_get_member(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp82, ptr noundef nonnull align 4 dereferenceable(8) %41, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp83, i32 noundef 4036)
  call void @__lua.fun.__lua_assign_local_var(ptr noundef nonnull align 4 dereferenceable(8) %p42, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp82, i32 noundef 4036)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp82)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp83)
  %42 = load ptr, ptr %parms.addr, align 4
  call void @__lua.fun.__lua_build_number(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp85, double noundef 4.300000e+01)
  call void @__lua.fun.__lua_get_member(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp84, ptr noundef nonnull align 4 dereferenceable(8) %42, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp85, i32 noundef 4041)
  call void @__lua.fun.__lua_assign_local_var(ptr noundef nonnull align 4 dereferenceable(8) %p43, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp84, i32 noundef 4041)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp84)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp85)
  %43 = load ptr, ptr %parms.addr, align 4
  call void @__lua.fun.__lua_build_number(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp87, double noundef 4.400000e+01)
  call void @__lua.fun.__lua_get_member(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp86, ptr noundef nonnull align 4 dereferenceable(8) %43, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp87, i32 noundef 4046)
  call void @__lua.fun.__lua_assign_local_var(ptr noundef nonnull align 4 dereferenceable(8) %p44, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp86, i32 noundef 4046)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp86)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp87)
  %44 = load ptr, ptr %parms.addr, align 4
  call void @__lua.fun.__lua_build_number(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp89, double noundef 4.500000e+01)
  call void @__lua.fun.__lua_get_member(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp88, ptr noundef nonnull align 4 dereferenceable(8) %44, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp89, i32 noundef 4051)
  call void @__lua.fun.__lua_assign_local_var(ptr noundef nonnull align 4 dereferenceable(8) %p45, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp88, i32 noundef 4051)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp88)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp89)
  %45 = load ptr, ptr %parms.addr, align 4
  call void @__lua.fun.__lua_build_number(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp91, double noundef 4.600000e+01)
  call void @__lua.fun.__lua_get_member(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp90, ptr noundef nonnull align 4 dereferenceable(8) %45, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp91, i32 noundef 4056)
  call void @__lua.fun.__lua_assign_local_var(ptr noundef nonnull align 4 dereferenceable(8) %p46, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp90, i32 noundef 4056)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp90)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp91)
  %46 = load ptr, ptr %parms.addr, align 4
  call void @__lua.fun.__lua_build_number(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp93, double noundef 4.700000e+01)
  call void @__lua.fun.__lua_get_member(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp92, ptr noundef nonnull align 4 dereferenceable(8) %46, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp93, i32 noundef 4061)
  call void @__lua.fun.__lua_assign_local_var(ptr noundef nonnull align 4 dereferenceable(8) %p48, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp92, i32 noundef 4061)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp92)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp93)
  %47 = load ptr, ptr %parms.addr, align 4
  call void @__lua.fun.__lua_build_number(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp95, double noundef 4.800000e+01)
  call void @__lua.fun.__lua_get_member(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp94, ptr noundef nonnull align 4 dereferenceable(8) %47, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp95, i32 noundef 4066)
  call void @__lua.fun.__lua_assign_local_var(ptr noundef nonnull align 4 dereferenceable(8) %p49, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp94, i32 noundef 4066)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp94)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp95)
  %48 = load ptr, ptr %parms.addr, align 4
  call void @__lua.fun.__lua_build_number(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp97, double noundef 4.900000e+01)
  call void @__lua.fun.__lua_get_member(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp96, ptr noundef nonnull align 4 dereferenceable(8) %48, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp97, i32 noundef 4071)
  call void @__lua.fun.__lua_assign_local_var(ptr noundef nonnull align 4 dereferenceable(8) %p50, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp96, i32 noundef 4071)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp96)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp97)
  %49 = load ptr, ptr %parms.addr, align 4
  call void @__lua.fun.__lua_build_number(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp99, double noundef 5.000000e+01)
  call void @__lua.fun.__lua_get_ellipsis(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp98, ptr noundef nonnull align 4 dereferenceable(8) %49, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp99, i32 noundef 4076)
  call void @__lua.fun.__lua_assign_local_var(ptr noundef nonnull align 4 dereferenceable(8) %__lua_ellipsis, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp98, i32 noundef 4076)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp98)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp99)
  call void @__lua.fun.__lua_build_nil(ptr sret(%class.__lua_object_ptr) align 4 %a1)
  call void @__lua.fun.__lua_build_nil(ptr sret(%class.__lua_object_ptr) align 4 %a2)
  call void @__lua.fun.__lua_build_nil(ptr sret(%class.__lua_object_ptr) align 4 %a3)
  call void @__lua.fun.__lua_build_nil(ptr sret(%class.__lua_object_ptr) align 4 %a4)
  call void @__lua.fun.__lua_build_nil(ptr sret(%class.__lua_object_ptr) align 4 %a5)
  call void @__lua.fun.__lua_build_nil(ptr sret(%class.__lua_object_ptr) align 4 %a6)
  call void @__lua.fun.__lua_build_nil(ptr sret(%class.__lua_object_ptr) align 4 %a7)
  call void @__lua.fun.__lua_build_string(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp101, ptr noundef @.str.31, i32 noundef 2)
  call void @__lua.fun.__lua_get_member(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp100, ptr noundef nonnull align 4 dereferenceable(8) @__lua.var._ENV, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp101, i32 noundef 4120)
  call void @__lua.fun.__lua_assign_local_var(ptr noundef nonnull align 4 dereferenceable(8) %a1, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp100, i32 noundef 4120)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp100)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp101)
  call void @__lua.fun.__lua_build_string(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp103, ptr noundef @.str.32, i32 noundef 2)
  call void @__lua.fun.__lua_get_member(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp102, ptr noundef nonnull align 4 dereferenceable(8) @__lua.var._ENV, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp103, i32 noundef 4123)
  call void @__lua.fun.__lua_assign_local_var(ptr noundef nonnull align 4 dereferenceable(8) %a2, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp102, i32 noundef 4123)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp102)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp103)
  call void @__lua.fun.__lua_build_string(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp105, ptr noundef @.str.33, i32 noundef 3)
  call void @__lua.fun.__lua_get_member(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp104, ptr noundef nonnull align 4 dereferenceable(8) @__lua.var._ENV, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp105, i32 noundef 4126)
  call void @__lua.fun.__lua_assign_local_var(ptr noundef nonnull align 4 dereferenceable(8) %a3, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp104, i32 noundef 4126)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp104)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp105)
  call void @__lua.fun.__lua_build_string(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp107, ptr noundef @.str.34, i32 noundef 3)
  call void @__lua.fun.__lua_get_member(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp106, ptr noundef nonnull align 4 dereferenceable(8) @__lua.var._ENV, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp107, i32 noundef 4130)
  call void @__lua.fun.__lua_assign_local_var(ptr noundef nonnull align 4 dereferenceable(8) %a4, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp106, i32 noundef 4130)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp106)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp107)
  call void @__lua.fun.__lua_build_string(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp109, ptr noundef @.str.35, i32 noundef 3)
  call void @__lua.fun.__lua_get_member(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp108, ptr noundef nonnull align 4 dereferenceable(8) @__lua.var._ENV, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp109, i32 noundef 4134)
  call void @__lua.fun.__lua_assign_local_var(ptr noundef nonnull align 4 dereferenceable(8) %a5, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp108, i32 noundef 4134)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp108)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp109)
  call void @__lua.fun.__lua_build_string(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp111, ptr noundef @.str.36, i32 noundef 3)
  call void @__lua.fun.__lua_get_member(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp110, ptr noundef nonnull align 4 dereferenceable(8) @__lua.var._ENV, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp111, i32 noundef 4138)
  call void @__lua.fun.__lua_assign_local_var(ptr noundef nonnull align 4 dereferenceable(8) %a6, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp110, i32 noundef 4138)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp110)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp111)
  call void @__lua.fun.__lua_build_string(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp113, ptr noundef @.str.37, i32 noundef 3)
  call void @__lua.fun.__lua_get_member(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp112, ptr noundef nonnull align 4 dereferenceable(8) @__lua.var._ENV, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp113, i32 noundef 4142)
  call void @__lua.fun.__lua_assign_local_var(ptr noundef nonnull align 4 dereferenceable(8) %a7, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp112, i32 noundef 4142)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp112)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp113)
  call void @__lua.fun.__lua_build_nil(ptr sret(%class.__lua_object_ptr) align 4 %agg.result)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %a7)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %a6)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %a5)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %a4)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %a3)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %a2)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %a1)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %__lua_ellipsis)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %p50)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %p49)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %p48)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %p46)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %p45)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %p44)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %p43)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %p42)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %p41)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %p40)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %p39)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %p38)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %p37)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %p36)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %p35)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %p34)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %p33)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %p32)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %p31)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %p30)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %p29)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %p28)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %p27)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %p26)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %p25)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %p24)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %p23)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %p22)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %p21)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %p20)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %p19)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %p18)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %p17)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %p16)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %p15)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %p14)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %p13)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %p12)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %p11)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %p10)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %p9)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %p8)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %p7)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %p6)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %p5)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %p4)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %p3)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %p2)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %p1)
  ret void
}

declare void @__lua.fun.__lua_get_ellipsis(ptr sret(%class.__lua_object_ptr) align 4, ptr noundef nonnull align 4 dereferenceable(8), ptr noundef nonnull align 4 dereferenceable(8), i32 noundef) #1

; Function Attrs: noinline nounwind
define internal void @_GLOBAL__sub_I_vararg.lua() #0 {
entry:
  call void @__cxx_global_var_init()
  ret void
}

attributes #0 = { noinline nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" }
attributes #2 = { noinline nounwind optnone "no-trapping-math"="true" "stack-protector-buffer-size"="8" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 17.0.5 (https://github.com/jimihem/llvm-project.git ef147d970153ddb2f67284fa9f3e0aecd417f4b1)"}
