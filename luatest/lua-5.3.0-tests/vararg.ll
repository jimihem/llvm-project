; ModuleID = 'C:\llvm\src\luatest\lua-5.3.0-tests\vararg.lua'
source_filename = "C:\\llvm\\src\\luatest\\lua-5.3.0-tests\\vararg.lua"
target datalayout = "e-m:e-p:32:32-n32"
target triple = "lua_v53-pc-luaInterp-itanium_elf"

%class.__lua_object_ptr = type { ptr, ptr }

@__lua.var.__Lua_Temp_Closure_1 = global %class.__lua_object_ptr zeroinitializer, align 4
@__dso_handle = external hidden global i8
@__lua.var._ENV = external global %class.__lua_object_ptr, align 4
@.str = private unnamed_addr constant [2 x i8] c"f\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"arg\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"oneless\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"assert\00", align 1
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @_GLOBAL__sub_I_vararg.lua, ptr null }]

; Function Attrs: noinline nounwind
define internal void @__cxx_global_var_init() #0 {
entry:
  %ref.tmp = alloca ptr, align 4
  store ptr @__lua.fun.__Lua_Temp_Method_0, ptr %ref.tmp, align 4
  call void @__lua.fun.__lua_build_closure_with_function(ptr sret(%class.__lua_object_ptr) align 4 @__lua.var.__Lua_Temp_Closure_1, ptr noundef nonnull align 4 dereferenceable(4) %ref.tmp)
  %0 = call i32 @__cxa_atexit(ptr @__lua.cxxmethod.d__lua_object_ptr, ptr @__lua.var.__Lua_Temp_Closure_1, ptr @__dso_handle) #3
  ret void
}

declare void @__lua.fun.__lua_build_closure_with_function(ptr sret(%class.__lua_object_ptr) align 4, ptr noundef nonnull align 4 dereferenceable(4)) #1

; Function Attrs: noinline nounwind optnone
define dso_local void @__lua.fun.__Lua_Temp_Method_0(ptr noalias sret(%class.__lua_object_ptr) align 4 %agg.result, ptr noundef nonnull align 4 dereferenceable(8) %closure, ptr noundef nonnull align 4 dereferenceable(8) %parms) #2 {
entry:
  %result.ptr = alloca ptr, align 4
  %closure.addr = alloca ptr, align 4
  %parms.addr = alloca ptr, align 4
  %__Lua_Temp_Closure_0 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp = alloca ptr, align 4
  %ref.tmp1 = alloca %class.__lua_object_ptr, align 4
  store ptr %agg.result, ptr %result.ptr, align 4
  store ptr %closure, ptr %closure.addr, align 4
  store ptr %parms, ptr %parms.addr, align 4
  call void @__lua.fun.__lua_build_closure(ptr sret(%class.__lua_object_ptr) align 4 %__Lua_Temp_Closure_0)
  store ptr @__lua.fun.__Lua_Temp_Method_1, ptr %ref.tmp, align 4
  call void @__lua.fun.__lua_set_closure_function(ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Closure_0, ptr noundef nonnull align 4 dereferenceable(4) %ref.tmp, i32 noundef 2226)
  call void @__lua.fun.__lua_build_string(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp1, ptr noundef @.str, i32 noundef 1)
  call void @__lua.fun.__lua_set_member(ptr noundef nonnull align 4 dereferenceable(8) @__lua.var._ENV, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp1, ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Closure_0, i32 noundef 2226)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp1)
  call void @__lua.fun.__lua_build_nil(ptr sret(%class.__lua_object_ptr) align 4 %agg.result)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Closure_0)
  ret void
}

declare void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8)) unnamed_addr #1

; Function Attrs: nounwind
declare i32 @__cxa_atexit(ptr, ptr, ptr) #3

declare void @__lua.fun.__lua_build_closure(ptr sret(%class.__lua_object_ptr) align 4) #1

declare void @__lua.fun.__lua_set_closure_function(ptr noundef nonnull align 4 dereferenceable(8), ptr noundef nonnull align 4 dereferenceable(4), i32 noundef) #1

; Function Attrs: noinline nounwind optnone
define dso_local void @__lua.fun.__Lua_Temp_Method_1(ptr noalias sret(%class.__lua_object_ptr) align 4 %agg.result, ptr noundef nonnull align 4 dereferenceable(8) %closure, ptr noundef nonnull align 4 dereferenceable(8) %parms) #2 {
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
  %__Lua_Temp_Obj_0 = alloca %class.__lua_object_ptr, align 4
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
  %__Lua_Temp_Table_1 = alloca %class.__lua_object_ptr, align 4
  %__Lua_Temp_Table_2 = alloca %class.__lua_object_ptr, align 4
  %__Lua_Temp_Table_3 = alloca %class.__lua_object_ptr, align 4
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
  %__Lua_Temp_Table_4 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp36 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp37 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp38 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp39 = alloca %class.__lua_object_ptr, align 4
  %agg.tmp.ensured = alloca %class.__lua_object_ptr, align 4
  %ref.tmp40 = alloca %class.__lua_object_ptr, align 4
  %ref.tmp41 = alloca %class.__lua_object_ptr, align 4
  %nrvo42 = alloca i1, align 1
  %__Lua_Temp_Table_6 = alloca %class.__lua_object_ptr, align 4
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
  call void @__lua.fun.__lua_get_member(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp, ptr noundef nonnull align 4 dereferenceable(8) %0, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp1, i32 noundef 2227)
  call void @__lua.fun.__lua_assign_local_var(ptr noundef nonnull align 4 dereferenceable(8) %n, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp, i32 noundef 2227)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp1)
  %1 = load ptr, ptr %parms.addr, align 4
  call void @__lua.fun.__lua_build_number(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp3, double noundef 2.000000e+00)
  call void @__lua.fun.__lua_get_member(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp2, ptr noundef nonnull align 4 dereferenceable(8) %1, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp3, i32 noundef 2230)
  call void @__lua.fun.__lua_assign_local_var(ptr noundef nonnull align 4 dereferenceable(8) %a, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp2, i32 noundef 2230)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp2)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp3)
  %2 = load ptr, ptr %parms.addr, align 4
  call void @__lua.fun.__lua_build_number(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp5, double noundef 3.000000e+00)
  call void @__lua.fun.__lua_get_ellipsis(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp4, ptr noundef nonnull align 4 dereferenceable(8) %2, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp5, i32 noundef 2233)
  call void @__lua.fun.__lua_assign_local_var(ptr noundef nonnull align 4 dereferenceable(8) %__lua_ellipsis, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp4, i32 noundef 2233)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp4)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp5)
  call void @__lua.fun.__lua_build_nil(ptr sret(%class.__lua_object_ptr) align 4 %b)
  call void @__lua.fun.__lua_build_string(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp8, ptr noundef @.str.1, i32 noundef 3)
  call void @__lua.fun.__lua_get_member(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp7, ptr noundef nonnull align 4 dereferenceable(8) @__lua.var._ENV, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp8, i32 noundef 2257)
  call void @__lua.fun.__lua_build_nil(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp9)
  call void @__lua.fun.__lua_binop(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp6, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp7, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp9, i32 noundef 14, i32 noundef 2261)
  call void @__lua.fun.__lua_assign_local_var(ptr noundef nonnull align 4 dereferenceable(8) %b, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp6, i32 noundef 2261)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp6)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp9)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp7)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp8)
  call void @__lua.fun.__lua_build_number(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp11, double noundef 0.000000e+00)
  call void @__lua.fun.__lua_binop(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp10, ptr noundef nonnull align 4 dereferenceable(8) %n, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp11, i32 noundef 14, i32 noundef 2276)
  %call = call zeroext i1 @__lua.fun.__lua_to_bool(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp10, i32 noundef 2276)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp10)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp11)
  br i1 %call, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__lua.fun.__lua_build_nil(ptr sret(%class.__lua_object_ptr) align 4 %b12)
  call void @__lua.fun.__lua_build_nil(ptr sret(%class.__lua_object_ptr) align 4 %c)
  call void @__lua.fun.__lua_build_nil(ptr sret(%class.__lua_object_ptr) align 4 %d)
  call void @__lua.fun.__lua_build_nil(ptr sret(%class.__lua_object_ptr) align 4 %__Lua_Temp_Obj_0)
  call void @__lua.fun.__lua_assign_local_var(ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Obj_0, ptr noundef nonnull align 4 dereferenceable(8) %__lua_ellipsis, i32 noundef 2306)
  call void @__lua.fun.__lua_build_number(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp14, double noundef 1.000000e+00)
  call void @__lua.fun.__lua_get_member(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp13, ptr noundef nonnull align 4 dereferenceable(8) %__lua_ellipsis, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp14, i32 noundef 2306)
  call void @__lua.fun.__lua_assign_local_var(ptr noundef nonnull align 4 dereferenceable(8) %b12, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp13, i32 noundef 2306)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp13)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp14)
  call void @__lua.fun.__lua_build_number(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp16, double noundef 1.000000e+00)
  call void @__lua.fun.__lua_get_member(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp15, ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Obj_0, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp16, i32 noundef 2306)
  call void @__lua.fun.__lua_assign_local_var(ptr noundef nonnull align 4 dereferenceable(8) %c, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp15, i32 noundef 2306)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp15)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp16)
  call void @__lua.fun.__lua_build_number(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp18, double noundef 2.000000e+00)
  call void @__lua.fun.__lua_get_member(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp17, ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Obj_0, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp18, i32 noundef 2306)
  call void @__lua.fun.__lua_assign_local_var(ptr noundef nonnull align 4 dereferenceable(8) %d, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp17, i32 noundef 2306)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp17)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp18)
  store i1 false, ptr %nrvo, align 1
  call void @__lua.fun.__lua_build_table(ptr sret(%class.__lua_object_ptr) align 4 %agg.result)
  call void @__lua.fun.__lua_build_number(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp19, double noundef 1.000000e+00)
  call void @__lua.fun.__lua_set_member(ptr noundef nonnull align 4 dereferenceable(8) %agg.result, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp19, ptr noundef nonnull align 4 dereferenceable(8) %a, i32 noundef 2321)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp19)
  call void @__lua.fun.__lua_build_number(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp20, double noundef 2.000000e+00)
  call void @__lua.fun.__lua_set_member(ptr noundef nonnull align 4 dereferenceable(8) %agg.result, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp20, ptr noundef nonnull align 4 dereferenceable(8) %b12, i32 noundef 2324)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp20)
  call void @__lua.fun.__lua_build_number(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp21, double noundef 3.000000e+00)
  call void @__lua.fun.__lua_set_member(ptr noundef nonnull align 4 dereferenceable(8) %agg.result, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp21, ptr noundef nonnull align 4 dereferenceable(8) %c, i32 noundef 2327)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp21)
  call void @__lua.fun.__lua_build_number(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp22, double noundef 4.000000e+00)
  call void @__lua.fun.__lua_set_member(ptr noundef nonnull align 4 dereferenceable(8) %agg.result, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp22, ptr noundef nonnull align 4 dereferenceable(8) %d, i32 noundef 2330)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp22)
  call void @__lua.fun.__lua_build_table(ptr sret(%class.__lua_object_ptr) align 4 %__Lua_Temp_Table_1)
  call void @__lua.fun.__lua_build_table(ptr sret(%class.__lua_object_ptr) align 4 %__Lua_Temp_Table_2)
  call void @__lua.fun.__lua_build_table(ptr sret(%class.__lua_object_ptr) align 4 %__Lua_Temp_Table_3)
  call void @__lua.fun.__lua_add_last_exp(ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Table_3, ptr noundef nonnull align 4 dereferenceable(8) %__lua_ellipsis, i32 noundef 2357)
  call void @__lua.fun.__lua_build_string(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp25, ptr noundef @.str.2, i32 noundef 7)
  call void @__lua.fun.__lua_get_member(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp24, ptr noundef nonnull align 4 dereferenceable(8) @__lua.var._ENV, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp25, i32 noundef 2349)
  call void @__lua.fun.__lua_call(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp23, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp24, ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Table_3, i32 noundef 2349)
  call void @__lua.fun.__lua_add_last_exp(ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Table_2, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp23, i32 noundef 2349)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp23)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp24)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp25)
  call void @__lua.fun.__lua_build_string(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp28, ptr noundef @.str.2, i32 noundef 7)
  call void @__lua.fun.__lua_get_member(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp27, ptr noundef nonnull align 4 dereferenceable(8) @__lua.var._ENV, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp28, i32 noundef 2341)
  call void @__lua.fun.__lua_call(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp26, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp27, ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Table_2, i32 noundef 2341)
  call void @__lua.fun.__lua_add_last_exp(ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Table_1, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp26, i32 noundef 2341)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp26)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp27)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp28)
  call void @__lua.fun.__lua_build_string(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp31, ptr noundef @.str.2, i32 noundef 7)
  call void @__lua.fun.__lua_get_member(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp30, ptr noundef nonnull align 4 dereferenceable(8) @__lua.var._ENV, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp31, i32 noundef 2333)
  call void @__lua.fun.__lua_call(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp29, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp30, ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Table_1, i32 noundef 2333)
  call void @__lua.fun.__lua_add_last_exp(ptr noundef nonnull align 4 dereferenceable(8) %agg.result, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp29, i32 noundef 2333)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp29)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp30)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp31)
  store i1 true, ptr %nrvo, align 1
  store i32 1, ptr %cleanup.dest.slot, align 4
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Table_3)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Table_2)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Table_1)
  %nrvo.val = load i1, ptr %nrvo, align 1
  br i1 %nrvo.val, label %nrvo.skipdtor, label %nrvo.unused

nrvo.unused:                                      ; preds = %if.then
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %agg.result)
  br label %nrvo.skipdtor

nrvo.skipdtor:                                    ; preds = %nrvo.unused, %if.then
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Obj_0)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %d)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %c)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %b12)
  br label %cleanup

if.else:                                          ; preds = %entry
  call void @__lua.fun.__lua_build_number(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp33, double noundef 1.000000e+00)
  call void @__lua.fun.__lua_binop(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp32, ptr noundef nonnull align 4 dereferenceable(8) %n, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp33, i32 noundef 6, i32 noundef 2386)
  call void @__lua.fun.__lua_assign_local_var(ptr noundef nonnull align 4 dereferenceable(8) %n, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp32, i32 noundef 2383)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp32)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp33)
  call void @__lua.fun.__lua_build_number(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp35, double noundef 1.000000e+00)
  call void @__lua.fun.__lua_get_member(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp34, ptr noundef nonnull align 4 dereferenceable(8) %__lua_ellipsis, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp35, i32 noundef 2383)
  call void @__lua.fun.__lua_assign_local_var(ptr noundef nonnull align 4 dereferenceable(8) %b, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp34, i32 noundef 2383)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp34)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp35)
  call void @__lua.fun.__lua_assign_local_var(ptr noundef nonnull align 4 dereferenceable(8) %a, ptr noundef nonnull align 4 dereferenceable(8) %a, i32 noundef 2383)
  call void @__lua.fun.__lua_build_table(ptr sret(%class.__lua_object_ptr) align 4 %__Lua_Temp_Table_4)
  call void @__lua.fun.__lua_build_number(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp36, double noundef 1.000000e+00)
  call void @__lua.fun.__lua_build_number(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp39, double noundef 1.000000e+00)
  call void @__lua.fun.__lua_get_member(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp38, ptr noundef nonnull align 4 dereferenceable(8) %__lua_ellipsis, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp39, i32 noundef 2410)
  call void @__lua.fun.__lua_binop(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp37, ptr noundef nonnull align 4 dereferenceable(8) %b, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp38, i32 noundef 14, i32 noundef 2410)
  call void @__lua.fun.__lua_set_member(ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Table_4, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp36, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp37, i32 noundef 2410)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp37)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp38)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp39)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp36)
  call void @__lua.fun.__lua_build_string(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp41, ptr noundef @.str.3, i32 noundef 6)
  call void @__lua.fun.__lua_get_member(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp40, ptr noundef nonnull align 4 dereferenceable(8) @__lua.var._ENV, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp41, i32 noundef 2401)
  call void @__lua.fun.__lua_call(ptr sret(%class.__lua_object_ptr) align 4 %agg.tmp.ensured, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp40, ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Table_4, i32 noundef 2401)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %agg.tmp.ensured)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp40)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp41)
  store i1 false, ptr %nrvo42, align 1
  call void @__lua.fun.__lua_build_table(ptr sret(%class.__lua_object_ptr) align 4 %agg.result)
  call void @__lua.fun.__lua_build_table(ptr sret(%class.__lua_object_ptr) align 4 %__Lua_Temp_Table_6)
  call void @__lua.fun.__lua_build_number(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp43, double noundef 1.000000e+00)
  call void @__lua.fun.__lua_set_member(ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Table_6, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp43, ptr noundef nonnull align 4 dereferenceable(8) %n, i32 noundef 2431)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp43)
  call void @__lua.fun.__lua_build_number(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp44, double noundef 2.000000e+00)
  call void @__lua.fun.__lua_set_member(ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Table_6, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp44, ptr noundef nonnull align 4 dereferenceable(8) %a, i32 noundef 2434)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp44)
  call void @__lua.fun.__lua_add_last_exp(ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Table_6, ptr noundef nonnull align 4 dereferenceable(8) %__lua_ellipsis, i32 noundef 2437)
  call void @__lua.fun.__lua_build_string(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp47, ptr noundef @.str, i32 noundef 1)
  call void @__lua.fun.__lua_get_member(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp46, ptr noundef nonnull align 4 dereferenceable(8) @__lua.var._ENV, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp47, i32 noundef 2429)
  call void @__lua.fun.__lua_call(ptr sret(%class.__lua_object_ptr) align 4 %ref.tmp45, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp46, ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Table_6, i32 noundef 2429)
  call void @__lua.fun.__lua_add_last_exp(ptr noundef nonnull align 4 dereferenceable(8) %agg.result, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp45, i32 noundef 2429)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp45)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp46)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp47)
  store i1 true, ptr %nrvo42, align 1
  store i32 1, ptr %cleanup.dest.slot, align 4
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Table_6)
  %nrvo.val48 = load i1, ptr %nrvo42, align 1
  br i1 %nrvo.val48, label %nrvo.skipdtor50, label %nrvo.unused49

nrvo.unused49:                                    ; preds = %if.else
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %agg.result)
  br label %nrvo.skipdtor50

nrvo.skipdtor50:                                  ; preds = %nrvo.unused49, %if.else
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Table_4)
  br label %cleanup

cleanup:                                          ; preds = %nrvo.skipdtor50, %nrvo.skipdtor
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %b)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %__lua_ellipsis)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %a)
  call void @__lua.cxxmethod.d__lua_object_ptr(ptr noundef nonnull align 4 dereferenceable(8) %n)
  ret void
}

declare void @__lua.fun.__lua_set_member(ptr noundef nonnull align 4 dereferenceable(8), ptr noundef nonnull align 4 dereferenceable(8), ptr noundef nonnull align 4 dereferenceable(8), i32 noundef) #1

declare void @__lua.fun.__lua_build_string(ptr sret(%class.__lua_object_ptr) align 4, ptr noundef, i32 noundef) #1

declare void @__lua.fun.__lua_build_nil(ptr sret(%class.__lua_object_ptr) align 4) #1

declare void @__lua.fun.__lua_assign_local_var(ptr noundef nonnull align 4 dereferenceable(8), ptr noundef nonnull align 4 dereferenceable(8), i32 noundef) #1

declare void @__lua.fun.__lua_get_member(ptr sret(%class.__lua_object_ptr) align 4, ptr noundef nonnull align 4 dereferenceable(8), ptr noundef nonnull align 4 dereferenceable(8), i32 noundef) #1

declare void @__lua.fun.__lua_build_number(ptr sret(%class.__lua_object_ptr) align 4, double noundef) #1

declare void @__lua.fun.__lua_get_ellipsis(ptr sret(%class.__lua_object_ptr) align 4, ptr noundef nonnull align 4 dereferenceable(8), ptr noundef nonnull align 4 dereferenceable(8), i32 noundef) #1

declare void @__lua.fun.__lua_binop(ptr sret(%class.__lua_object_ptr) align 4, ptr noundef nonnull align 4 dereferenceable(8), ptr noundef nonnull align 4 dereferenceable(8), i32 noundef, i32 noundef) #1

declare zeroext i1 @__lua.fun.__lua_to_bool(ptr noundef nonnull align 4 dereferenceable(8), i32 noundef) #1

declare void @__lua.fun.__lua_build_table(ptr sret(%class.__lua_object_ptr) align 4) #1

declare void @__lua.fun.__lua_add_last_exp(ptr noundef nonnull align 4 dereferenceable(8), ptr noundef nonnull align 4 dereferenceable(8), i32 noundef) #1

declare void @__lua.fun.__lua_call(ptr sret(%class.__lua_object_ptr) align 4, ptr noundef nonnull align 4 dereferenceable(8), ptr noundef nonnull align 4 dereferenceable(8), i32 noundef) #1

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
