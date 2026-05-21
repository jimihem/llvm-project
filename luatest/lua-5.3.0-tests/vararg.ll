; ModuleID = 'C:\llvm\src\luatest\lua-5.3.0-tests\vararg.lua'
source_filename = "C:\\llvm\\src\\luatest\\lua-5.3.0-tests\\vararg.lua"
target datalayout = "e-m:e-p:32:32-n32"
target triple = "lua_v53-pc-luaInterp-itanium_elf"

%class.__lua_object_ptr = type { ptr, ptr }

@__lua.var.__Lua_Temp_Closure_0 = global %class.__lua_object_ptr zeroinitializer, align 4
@__dso_handle = external hidden global i8
@__lua.var._ENV = external global %class.__lua_object_ptr, align 4
@.str = private unnamed_addr constant [2 x i8] c"v\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"pairs\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"t\00", align 1
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @_GLOBAL__sub_I_vararg.lua, ptr null }]

; Function Attrs: noinline nounwind
define internal void @__cxx_global_var_init() #0 {
entry:
  %ref.tmp = alloca ptr, align 4
  store ptr @__lua.fun.__Lua_Temp_Method_0, ptr %ref.tmp, align 4
  call void @__lua.fun.__lua_build_closure_with_function(ptr sret(%class.__lua_object_ptr) align 4 @__lua.var.__Lua_Temp_Closure_0, ptr noundef nonnull align 4 dereferenceable(4) %ref.tmp)
  %0 = call i32 @__cxa_atexit(ptr @__lua.cxxmethod.d__lua_object_ptr, ptr @__lua.var.__Lua_Temp_Closure_0, ptr @__dso_handle) #3
  ret void
}

declare void @__lua.fun.__lua_build_closure_with_function(ptr sret(%class.__lua_object_ptr) align 4, ptr noundef nonnull align 4 dereferenceable(4)) #1

; Function Attrs: noinline nounwind optnone
define dso_local void @__lua.fun.__Lua_Temp_Method_0(ptr noalias sret(%class.__lua_object_ptr) align 4 %agg.result, ptr noundef nonnull align 4 dereferenceable(8) %closure, ptr noundef nonnull align 4 dereferenceable(8) %parms) #2 {
entry:
  %result.ptr = alloca ptr, align 4
  %closure.addr = alloca ptr, align 4
  %parms.addr = alloca ptr, align 4
  %__Lua_Temp_Obj_0 = alloca %class.__lua_object_ptr, align 4
  %__Lua_Temp_Obj_1 = alloca %class.__lua_object_ptr, align 4
  %__Lua_Temp_Obj_2 = alloca %class.__lua_object_ptr, align 4
  %k = alloca %class.__lua_object_ptr, align 4
  %val = alloca %class.__lua_object_ptr, align 4
  %__Lua_Temp_Table_0 = alloca %class.__lua_object_ptr, align 4
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
  %__Lua_Temp_Table_1 = alloca %class.__lua_object_ptr, align 4
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
  store ptr %agg.result, ptr %result.ptr, align 4
  store ptr %closure, ptr %closure.addr, align 4
  store ptr %parms, ptr %parms.addr, align 4
  call void @__lua.fun.__lua_build_nil(ptr sret(%class.__lua_object_ptr) align 4 %__Lua_Temp_Obj_0)
  call void @__lua.fun.__lua_build_nil(ptr sret(%class.__lua_object_ptr) align 4 %__Lua_Temp_Obj_1)
  call void @__lua.fun.__lua_build_nil(ptr sret(%class.__lua_object_ptr) align 4 %__Lua_Temp_Obj_2)
  call void @__lua.fun.__lua_build_nil(ptr sret(%class.__lua_object_ptr) align 4 %k)
  call void @__lua.fun.__lua_build_nil(ptr sret(%class.__lua_object_ptr) align 4 %val)
  call void @__lua.fun.__lua_build_table(ptr sret(%class.__lua_object_ptr) align 4 %__Lua_Temp_Table_0)
  call void @__lua.fun.__lua_build_number(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp, double noundef 1.000000e+00)
  call void @__lua.fun.__lua_build_string(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp2, ptr noundef @.str, i32 noundef 1)
  call void @__lua.fun.__lua_get_member(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp1, ptr noundef nonnull align 4 dereferenceable(8) @__lua.var._ENV, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp2, i64 noundef 14748917697898)
  call void @__lua.fun.__lua_set_member(ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Table_0, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp1, i64 noundef 14748917697898)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp1)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp2)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp)
  call void @__lua.fun.__lua_build_string(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp6, ptr noundef @.str.1, i32 noundef 5)
  call void @__lua.fun.__lua_get_member(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp5, ptr noundef nonnull align 4 dereferenceable(8) @__lua.var._ENV, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp6, i64 noundef 14723147894116)
  call void @__lua.fun.__lua_call(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp4, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp5, ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Table_0, i64 noundef 14723147894116)
  call void @__lua.fun.__lua_build_number(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp7, double noundef 1.000000e+00)
  call void @__lua.fun.__lua_get_member(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp3, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp4, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp7, i64 noundef 14723147894116)
  call void @__lua.fun.__lua_assign_local_var(ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Obj_0, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp3, i64 noundef 14723147894116)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp3)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp7)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp4)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp5)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp6)
  call void @__lua.fun.__lua_build_string(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp11, ptr noundef @.str.1, i32 noundef 5)
  call void @__lua.fun.__lua_get_member(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp10, ptr noundef nonnull align 4 dereferenceable(8) @__lua.var._ENV, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp11, i64 noundef 14723147894116)
  call void @__lua.fun.__lua_call(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp9, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp10, ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Table_0, i64 noundef 14723147894116)
  call void @__lua.fun.__lua_build_number(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp12, double noundef 2.000000e+00)
  call void @__lua.fun.__lua_get_member(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp8, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp9, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp12, i64 noundef 14723147894116)
  call void @__lua.fun.__lua_assign_local_var(ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Obj_1, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp8, i64 noundef 14723147894116)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp8)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp12)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp9)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp10)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp11)
  call void @__lua.fun.__lua_build_string(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp16, ptr noundef @.str.1, i32 noundef 5)
  call void @__lua.fun.__lua_get_member(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp15, ptr noundef nonnull align 4 dereferenceable(8) @__lua.var._ENV, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp16, i64 noundef 14723147894116)
  call void @__lua.fun.__lua_call(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp14, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp15, ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Table_0, i64 noundef 14723147894116)
  call void @__lua.fun.__lua_build_number(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp17, double noundef 3.000000e+00)
  call void @__lua.fun.__lua_get_member(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp13, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp14, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp17, i64 noundef 14723147894116)
  call void @__lua.fun.__lua_assign_local_var(ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Obj_2, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp13, i64 noundef 14723147894116)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp13)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp17)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp14)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp15)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp16)
  call void @__lua.fun.__lua_build_table(ptr sret(%class.__lua_object_ptr) align 4 %__Lua_Temp_Table_1)
  call void @__lua.fun.__lua_build_number(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp18, double noundef 1.000000e+00)
  call void @__lua.fun.__lua_set_member(ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Table_1, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp18, ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Obj_1, i64 noundef 14761802599789)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp18)
  call void @__lua.fun.__lua_build_number(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp19, double noundef 2.000000e+00)
  call void @__lua.fun.__lua_set_member(ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Table_1, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp19, ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Obj_2, i64 noundef 14761802599789)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp19)
  call void @__lua.fun.__lua_call(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp21, ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Obj_0, ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Table_1, i64 noundef 14663018351958)
  call void @__lua.fun.__lua_build_number(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp22, double noundef 0.000000e+00)
  call void @__lua.fun.__lua_get_member(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp20, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp21, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp22, i64 noundef 14680198221146)
  call void @__lua.fun.__lua_assign_local_var(ptr noundef nonnull align 4 dereferenceable(8) %k, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp20, i64 noundef 14710262992225)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp20)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp22)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp21)
  call void @__lua.fun.__lua_call(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp24, ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Obj_0, ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Table_1, i64 noundef 14663018351958)
  call void @__lua.fun.__lua_build_number(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp25, double noundef 1.000000e+00)
  call void @__lua.fun.__lua_get_member(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp23, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp24, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp25, i64 noundef 14693083123037)
  call void @__lua.fun.__lua_assign_local_var(ptr noundef nonnull align 4 dereferenceable(8) %val, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp23, i64 noundef 14710262992225)
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  call void @__lua.fun.__lua_build_nil(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp27)
  call void @__lua.fun.__lua_binop(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp26, ptr noundef nonnull align 4 dereferenceable(8) %k, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp27, i32 noundef 18, i64 noundef 3414)
  %call = call zeroext i1 @__lua.fun.__lua_to_bool(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp26, i64 noundef 14663018351958)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp26)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp27)
  br i1 %call, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  call void @__lua.fun.__lua_build_string(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp29, ptr noundef @.str.2, i32 noundef 1)
  call void @__lua.fun.__lua_get_member(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp28, ptr noundef nonnull align 4 dereferenceable(8) @__lua.var._ENV, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp29, i64 noundef 14774687501680)
  call void @__lua.fun.__lua_set_member(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp28, ptr noundef nonnull align 4 dereferenceable(8) %k, ptr noundef nonnull align 4 dereferenceable(8) %val, i64 noundef 14796162338165)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp28)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp29)
  call void @__lua.fun.__lua_assign_local_var(ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Obj_2, ptr noundef nonnull align 4 dereferenceable(8) %k, i64 noundef 14663018351958)
  call void @__lua.fun.__lua_build_number(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp30, double noundef 1.000000e+00)
  call void @__lua.fun.__lua_set_member(ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Table_1, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp30, ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Obj_1, i64 noundef 14761802599789)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp30)
  call void @__lua.fun.__lua_build_number(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp31, double noundef 2.000000e+00)
  call void @__lua.fun.__lua_set_member(ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Table_1, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp31, ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Obj_2, i64 noundef 14761802599789)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp31)
  call void @__lua.fun.__lua_call(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp33, ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Obj_0, ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Table_1, i64 noundef 14663018351958)
  call void @__lua.fun.__lua_build_number(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp34, double noundef 0.000000e+00)
  call void @__lua.fun.__lua_get_member(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp32, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp33, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp34, i64 noundef 14680198221146)
  call void @__lua.fun.__lua_assign_local_var(ptr noundef nonnull align 4 dereferenceable(8) %k, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp32, i64 noundef 14710262992225)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp32)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp34)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp33)
  call void @__lua.fun.__lua_call(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp36, ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Obj_0, ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Table_1, i64 noundef 14663018351958)
  call void @__lua.fun.__lua_build_number(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp37, double noundef 1.000000e+00)
  call void @__lua.fun.__lua_get_member(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp35, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp36, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp37, i64 noundef 14693083123037)
  call void @__lua.fun.__lua_assign_local_var(ptr noundef nonnull align 4 dereferenceable(8) %val, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp35, i64 noundef 14710262992225)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp35)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp37)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp36)
  br label %while.cond

while.end:                                        ; preds = %while.cond
  call void @__lua.fun.__lua_build_nil(ptr sret(%class.__lua_object_ptr) align 4 %agg.result)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp23)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp25)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp24)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Table_1)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Table_0)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %val)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %k)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Obj_2)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Obj_1)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Obj_0)
  ret void
}

declare void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8)) unnamed_addr #1

; Function Attrs: nounwind
declare i32 @__cxa_atexit(ptr, ptr, ptr) #3

declare void @__lua.fun.__lua_build_nil(ptr sret(%class.__lua_object_ptr) align 4) #1

declare void @__lua.fun.__lua_build_table(ptr sret(%class.__lua_object_ptr) align 4) #1

declare void @__lua.fun.__lua_set_member(ptr noundef nonnull align 4 dereferenceable(8), ptr noundef nonnull align 4 dereferenceable(8), ptr noundef nonnull align 4 dereferenceable(8), i64 noundef) #1

declare void @__lua.fun.__lua_build_number(ptr sret(%class.__lua_object_ptr) align 4, double noundef) #1

declare void @__lua.fun.__lua_get_member(ptr sret(%class.__lua_object_ptr) align 4, ptr noundef nonnull align 4 dereferenceable(8), ptr noundef nonnull align 4 dereferenceable(8), i64 noundef) #1

declare void @__lua.fun.__lua_build_string(ptr sret(%class.__lua_object_ptr) align 4, ptr noundef, i32 noundef) #1

declare void @__lua.fun.__lua_assign_local_var(ptr noundef nonnull align 4 dereferenceable(8), ptr noundef nonnull align 4 dereferenceable(8), i64 noundef) #1

declare void @__lua.fun.__lua_call(ptr sret(%class.__lua_object_ptr) align 4, ptr noundef nonnull align 4 dereferenceable(8), ptr noundef nonnull align 4 dereferenceable(8), i64 noundef) #1

declare zeroext i1 @__lua.fun.__lua_to_bool(ptr noundef nonnull align 4 dereferenceable(8), i64 noundef) #1

declare void @__lua.fun.__lua_binop(ptr sret(%class.__lua_object_ptr) align 4, ptr noundef nonnull align 4 dereferenceable(8), ptr noundef nonnull align 4 dereferenceable(8), i32 noundef, i64 noundef) #1

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
!1 = !{!"clang version 17.0.5 (git@github.com:jimihem/llvm-project.git 837bab0edbccd6d566ed86e98f72ef606a9bfdad)"}
