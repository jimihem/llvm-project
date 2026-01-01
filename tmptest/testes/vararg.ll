; ModuleID = 'D:\llvm-project\tmptest\testes\vararg.lua'
source_filename = "D:\\llvm-project\\tmptest\\testes\\vararg.lua"
target datalayout = "e-S32-p:32:32:32-i64:64:64-f64:64:64"
target triple = "lua_v53-pc-luaInterp-itanium_elf"

%class.ObjectPtr = type { ptr, ptr }
%class.ObjectPtrArray = type { ptr, i32, i32 }

@_Lua.Var.__Lua_Temp_Closure_4 = global %class.ObjectPtr zeroinitializer, align 4
@__dso_handle = external hidden global i8
@.str = private unnamed_addr constant [15 x i8] c"testing vararg\00", align 1
@_Lua.Var._ENV = external global %class.ObjectPtr, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"print\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"assert\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"alo\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"#\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"n\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"select\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"arg\00", align 1
@_Lua.Var._G = external global %class.ObjectPtr, align 4
@.str.8 = private unnamed_addr constant [6 x i8] c"table\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"unpack\00", align 1
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @_GLOBAL__sub_I_vararg.lua, ptr null }]

; Function Attrs: noinline nounwind
define internal void @__cxx_global_var_init() #0 {
entry:
  %ref.tmp = alloca ptr, align 4
  store ptr @_Lua.Fun.__Lua_Temp_Method_0.ObjectPtr.ObjectPtrArray, ptr %ref.tmp, align 4
  call void @_Lua.Fun.BuildFunctionWithMethod.MethodTy(ptr sret(%class.ObjectPtr) align 4 @_Lua.Var.__Lua_Temp_Closure_4, ptr noundef nonnull align 4 dereferenceable(4) %ref.tmp)
  %0 = call i32 @__cxa_atexit(ptr @_Lua.CXXMethod.~ObjectPtr, ptr @_Lua.Var.__Lua_Temp_Closure_4, ptr @__dso_handle) #3
  ret void
}

declare void @_Lua.Fun.BuildFunctionWithMethod.MethodTy(ptr sret(%class.ObjectPtr) align 4, ptr noundef nonnull align 4 dereferenceable(4)) #1

; Function Attrs: noinline nounwind optnone
define dso_local void @_Lua.Fun.__Lua_Temp_Method_0.ObjectPtr.ObjectPtrArray(ptr noalias sret(%class.ObjectPtrArray) align 4 %agg.result, ptr noundef nonnull align 4 dereferenceable(8) %Base, ptr noundef nonnull align 4 dereferenceable(12) %Parms) #2 {
entry:
  %result.ptr = alloca ptr, align 4
  %Base.addr = alloca ptr, align 4
  %Parms.addr = alloca ptr, align 4
  %__Lua_Temp_Obj_Arr_0 = alloca %class.ObjectPtrArray, align 4
  %ref.tmp = alloca %class.ObjectPtr, align 4
  %agg.tmp.ensured = alloca %class.ObjectPtrArray, align 4
  %ref.tmp1 = alloca %class.ObjectPtr, align 4
  %ref.tmp2 = alloca %class.ObjectPtr, align 4
  %f = alloca %class.ObjectPtr, align 4
  %__Lua_Temp_Closure_0 = alloca %class.ObjectPtr, align 4
  %ref.tmp3 = alloca ptr, align 4
  %c12 = alloca %class.ObjectPtr, align 4
  %__Lua_Temp_Closure_1 = alloca %class.ObjectPtr, align 4
  %ref.tmp4 = alloca ptr, align 4
  %vararg = alloca %class.ObjectPtr, align 4
  %__Lua_Temp_Closure_2 = alloca %class.ObjectPtr, align 4
  %ref.tmp5 = alloca ptr, align 4
  %__Lua_Temp_Closure_3 = alloca %class.ObjectPtr, align 4
  %ref.tmp6 = alloca ptr, align 4
  %__Lua_Temp_Obj_Arr_16 = alloca %class.ObjectPtrArray, align 4
  %call = alloca %class.ObjectPtr, align 4
  %__Lua_Temp_Obj_Arr_17 = alloca %class.ObjectPtrArray, align 4
  %__Lua_Temp_Obj_Arr_18 = alloca %class.ObjectPtrArray, align 4
  %ref.tmp7 = alloca %class.ObjectPtr, align 4
  %ref.tmp8 = alloca %class.ObjectPtr, align 4
  %ref.tmp9 = alloca %class.ObjectPtrArray, align 4
  %ref.tmp10 = alloca %class.ObjectPtr, align 4
  %agg.tmp.ensured11 = alloca %class.ObjectPtrArray, align 4
  %ref.tmp12 = alloca %class.ObjectPtr, align 4
  %ref.tmp13 = alloca %class.ObjectPtr, align 4
  %__Lua_Temp_Table_2 = alloca %class.ObjectPtr, align 4
  %ref.tmp14 = alloca %class.ObjectPtr, align 4
  %ref.tmp15 = alloca %class.ObjectPtr, align 4
  %ref.tmp16 = alloca %class.ObjectPtr, align 4
  %__Lua_Temp_Obj_Arr_19 = alloca %class.ObjectPtrArray, align 4
  %ref.tmp17 = alloca %class.ObjectPtr, align 4
  %ref.tmp18 = alloca %class.ObjectPtr, align 4
  %ref.tmp19 = alloca %class.ObjectPtr, align 4
  %__Lua_Temp_Obj_Arr_20 = alloca %class.ObjectPtrArray, align 4
  %ref.tmp20 = alloca %class.ObjectPtr, align 4
  %ref.tmp21 = alloca %class.ObjectPtr, align 4
  %ref.tmp22 = alloca %class.ObjectPtrArray, align 4
  %ref.tmp23 = alloca %class.ObjectPtr, align 4
  %agg.tmp.ensured24 = alloca %class.ObjectPtrArray, align 4
  %ref.tmp25 = alloca %class.ObjectPtr, align 4
  %ref.tmp26 = alloca %class.ObjectPtr, align 4
  %__Lua_Temp_Table_3 = alloca %class.ObjectPtr, align 4
  %ref.tmp27 = alloca %class.ObjectPtr, align 4
  %ref.tmp28 = alloca %class.ObjectPtr, align 4
  %ref.tmp29 = alloca %class.ObjectPtr, align 4
  %ref.tmp30 = alloca %class.ObjectPtr, align 4
  %__Lua_Temp_Obj_Arr_21 = alloca %class.ObjectPtrArray, align 4
  %ref.tmp31 = alloca %class.ObjectPtr, align 4
  %ref.tmp32 = alloca %class.ObjectPtr, align 4
  %ref.tmp33 = alloca %class.ObjectPtr, align 4
  %ref.tmp34 = alloca %class.ObjectPtr, align 4
  %__Lua_Temp_Obj_Arr_22 = alloca %class.ObjectPtrArray, align 4
  %ref.tmp35 = alloca %class.ObjectPtr, align 4
  %ref.tmp36 = alloca %class.ObjectPtr, align 4
  %ref.tmp37 = alloca %class.ObjectPtrArray, align 4
  %ref.tmp38 = alloca %class.ObjectPtr, align 4
  %agg.tmp.ensured39 = alloca %class.ObjectPtrArray, align 4
  %ref.tmp40 = alloca %class.ObjectPtr, align 4
  %ref.tmp41 = alloca %class.ObjectPtr, align 4
  store ptr %agg.result, ptr %result.ptr, align 4
  store ptr %Base, ptr %Base.addr, align 4
  store ptr %Parms, ptr %Parms.addr, align 4
  call void @_Lua.CXXMethod.ObjectPtrArray(ptr noundef nonnull align 4 dereferenceable(12) %__Lua_Temp_Obj_Arr_0)
  call void @_Lua.Fun.BuildString.char.unsigned_int(ptr sret(%class.ObjectPtr) align 4 %ref.tmp, ptr noundef @.str, i32 noundef 14)
  call void @_Lua.Fun.PushObjPtrIntoArray.ObjectPtrArray.ObjectPtr(ptr noundef nonnull align 4 dereferenceable(12) %__Lua_Temp_Obj_Arr_0, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp)
  call void @_Lua.CXXMethod.~ObjectPtr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp)
  call void @_Lua.Fun.BuildString.char.unsigned_int(ptr sret(%class.ObjectPtr) align 4 %ref.tmp2, ptr noundef @.str.1, i32 noundef 5)
  call void @_Lua.Fun.GetMember.ObjectPtr.ObjectPtr.unsigned_long_long(ptr sret(%class.ObjectPtr) align 4 %ref.tmp1, ptr noundef nonnull align 4 dereferenceable(8) @_Lua.Var._ENV, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp2, i64 noundef 1670742278533)
  call void @_Lua.Fun.BuildCallExpr.ObjectPtr.ObjectPtrArray(ptr sret(%class.ObjectPtrArray) align 4 %agg.tmp.ensured, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp1, ptr noundef nonnull align 4 dereferenceable(12) %__Lua_Temp_Obj_Arr_0)
  call void @_Lua.CXXMethod.~ObjectPtrArray(ptr noundef nonnull align 4 dereferenceable(12) %agg.tmp.ensured)
  call void @_Lua.CXXMethod.~ObjectPtr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp1)
  call void @_Lua.CXXMethod.~ObjectPtr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp2)
  call void @_Lua.Fun.BuildNil(ptr sret(%class.ObjectPtr) align 4 %f)
  call void @_Lua.Fun.BuildFunction(ptr sret(%class.ObjectPtr) align 4 %__Lua_Temp_Closure_0)
  store ptr @_Lua.Fun.__Lua_Temp_Method_1.ObjectPtr.ObjectPtrArray, ptr %ref.tmp3, align 4
  call void @_Lua.Fun.SetFunctionMethod.ObjectPtr.MethodTy(ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Closure_0, ptr noundef nonnull align 4 dereferenceable(4) %ref.tmp3)
  call void @_Lua.Fun.BuildModifyExpr.ObjectPtr.ObjectPtr(ptr noundef nonnull align 4 dereferenceable(8) %f, ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Closure_0)
  call void @_Lua.Fun.BuildNil(ptr sret(%class.ObjectPtr) align 4 %c12)
  call void @_Lua.Fun.BuildFunction(ptr sret(%class.ObjectPtr) align 4 %__Lua_Temp_Closure_1)
  store ptr @_Lua.Fun.__Lua_Temp_Method_2.ObjectPtr.ObjectPtrArray, ptr %ref.tmp4, align 4
  call void @_Lua.Fun.SetFunctionMethod.ObjectPtr.MethodTy(ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Closure_1, ptr noundef nonnull align 4 dereferenceable(4) %ref.tmp4)
  call void @_Lua.Fun.BuildModifyExpr.ObjectPtr.ObjectPtr(ptr noundef nonnull align 4 dereferenceable(8) %c12, ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Closure_1)
  call void @_Lua.Fun.BuildNil(ptr sret(%class.ObjectPtr) align 4 %vararg)
  call void @_Lua.Fun.BuildFunction(ptr sret(%class.ObjectPtr) align 4 %__Lua_Temp_Closure_2)
  store ptr @_Lua.Fun.__Lua_Temp_Method_3.ObjectPtr.ObjectPtrArray, ptr %ref.tmp5, align 4
  call void @_Lua.Fun.SetFunctionMethod.ObjectPtr.MethodTy(ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Closure_2, ptr noundef nonnull align 4 dereferenceable(4) %ref.tmp5)
  call void @_Lua.Fun.BuildModifyExpr.ObjectPtr.ObjectPtr(ptr noundef nonnull align 4 dereferenceable(8) %vararg, ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Closure_2)
  call void @_Lua.Fun.BuildFunction(ptr sret(%class.ObjectPtr) align 4 %__Lua_Temp_Closure_3)
  store ptr @_Lua.Fun.__Lua_Temp_Method_4.ObjectPtr.ObjectPtrArray, ptr %ref.tmp6, align 4
  call void @_Lua.Fun.SetFunctionMethod.ObjectPtr.MethodTy(ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Closure_3, ptr noundef nonnull align 4 dereferenceable(4) %ref.tmp6)
  call void @_Lua.CXXMethod.ObjectPtrArray(ptr noundef nonnull align 4 dereferenceable(12) %__Lua_Temp_Obj_Arr_16)
  call void @_Lua.Fun.PushObjPtrIntoArray.ObjectPtrArray.ObjectPtr(ptr noundef nonnull align 4 dereferenceable(12) %__Lua_Temp_Obj_Arr_16, ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Closure_3)
  call void @_Lua.Fun.GetObjectPtrFromArray.ObjectPtrArray.unsigned_int(ptr sret(%class.ObjectPtr) align 4 %call, ptr noundef nonnull align 4 dereferenceable(12) %__Lua_Temp_Obj_Arr_16, i32 noundef 0)
  call void @_Lua.CXXMethod.ObjectPtrArray(ptr noundef nonnull align 4 dereferenceable(12) %__Lua_Temp_Obj_Arr_17)
  call void @_Lua.CXXMethod.ObjectPtrArray(ptr noundef nonnull align 4 dereferenceable(12) %__Lua_Temp_Obj_Arr_18)
  call void @_Lua.Fun.BuildCallExpr.ObjectPtr.ObjectPtrArray(ptr sret(%class.ObjectPtrArray) align 4 %ref.tmp9, ptr noundef nonnull align 4 dereferenceable(8) %f, ptr noundef nonnull align 4 dereferenceable(12) %__Lua_Temp_Obj_Arr_17)
  call void @_Lua.Fun.GetObjectPtrFromArray.ObjectPtrArray.unsigned_int(ptr sret(%class.ObjectPtr) align 4 %ref.tmp8, ptr noundef nonnull align 4 dereferenceable(12) %ref.tmp9, i32 noundef 0)
  call void @_Lua.Fun.BuildNumber.double(ptr sret(%class.ObjectPtr) align 4 %ref.tmp10, double noundef 0.000000e+00)
  call void @_Lua.Fun.BuildBinOpExpr.ObjectPtr.ObjectPtr.unsigned_int(ptr sret(%class.ObjectPtr) align 4 %ref.tmp7, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp8, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp10, i32 noundef 14)
  call void @_Lua.Fun.PushObjPtrIntoArray.ObjectPtrArray.ObjectPtr(ptr noundef nonnull align 4 dereferenceable(12) %__Lua_Temp_Obj_Arr_18, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp7)
  call void @_Lua.CXXMethod.~ObjectPtr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp7)
  call void @_Lua.CXXMethod.~ObjectPtr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp10)
  call void @_Lua.CXXMethod.~ObjectPtr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp8)
  call void @_Lua.CXXMethod.~ObjectPtrArray(ptr noundef nonnull align 4 dereferenceable(12) %ref.tmp9)
  call void @_Lua.Fun.BuildString.char.unsigned_int(ptr sret(%class.ObjectPtr) align 4 %ref.tmp13, ptr noundef @.str.2, i32 noundef 6)
  call void @_Lua.Fun.GetMember.ObjectPtr.ObjectPtr.unsigned_long_long(ptr sret(%class.ObjectPtr) align 4 %ref.tmp12, ptr noundef nonnull align 4 dereferenceable(8) @_Lua.Var._ENV, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp13, i64 noundef 4032974291883)
  call void @_Lua.Fun.BuildCallExpr.ObjectPtr.ObjectPtrArray(ptr sret(%class.ObjectPtrArray) align 4 %agg.tmp.ensured11, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp12, ptr noundef nonnull align 4 dereferenceable(12) %__Lua_Temp_Obj_Arr_18)
  call void @_Lua.CXXMethod.~ObjectPtrArray(ptr noundef nonnull align 4 dereferenceable(12) %agg.tmp.ensured11)
  call void @_Lua.CXXMethod.~ObjectPtr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp12)
  call void @_Lua.CXXMethod.~ObjectPtr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp13)
  call void @_Lua.Fun.BuildEmptyTable(ptr sret(%class.ObjectPtr) align 4 %__Lua_Temp_Table_2)
  call void @_Lua.Fun.BuildNumber.double(ptr sret(%class.ObjectPtr) align 4 %ref.tmp14, double noundef 1.000000e+00)
  call void @_Lua.Fun.AddMember.ObjectPtr.ObjectPtr.unsigned_long_long(ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Table_2, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp14, i64 noundef 4153233376199)
  call void @_Lua.CXXMethod.~ObjectPtr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp14)
  call void @_Lua.Fun.BuildNumber.double(ptr sret(%class.ObjectPtr) align 4 %ref.tmp15, double noundef 2.000000e+00)
  call void @_Lua.Fun.AddMember.ObjectPtr.ObjectPtr.unsigned_long_long(ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Table_2, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp15, i64 noundef 4161823310793)
  call void @_Lua.CXXMethod.~ObjectPtr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp15)
  call void @_Lua.Fun.BuildNumber.double(ptr sret(%class.ObjectPtr) align 4 %ref.tmp16, double noundef 3.000000e+00)
  call void @_Lua.Fun.AddMember.ObjectPtr.ObjectPtr.unsigned_long_long(ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Table_2, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp16, i64 noundef 4170413245387)
  call void @_Lua.CXXMethod.~ObjectPtr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp16)
  call void @_Lua.CXXMethod.ObjectPtrArray(ptr noundef nonnull align 4 dereferenceable(12) %__Lua_Temp_Obj_Arr_19)
  call void @_Lua.Fun.PushObjPtrIntoArray.ObjectPtrArray.ObjectPtr(ptr noundef nonnull align 4 dereferenceable(12) %__Lua_Temp_Obj_Arr_19, ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Table_2)
  call void @_Lua.Fun.BuildNumber.double(ptr sret(%class.ObjectPtr) align 4 %ref.tmp17, double noundef 1.000000e+00)
  call void @_Lua.Fun.PushObjPtrIntoArray.ObjectPtrArray.ObjectPtr(ptr noundef nonnull align 4 dereferenceable(12) %__Lua_Temp_Obj_Arr_19, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp17)
  call void @_Lua.Fun.BuildNumber.double(ptr sret(%class.ObjectPtr) align 4 %ref.tmp18, double noundef 2.000000e+00)
  call void @_Lua.Fun.PushObjPtrIntoArray.ObjectPtrArray.ObjectPtr(ptr noundef nonnull align 4 dereferenceable(12) %__Lua_Temp_Obj_Arr_19, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp18)
  call void @_Lua.Fun.BuildNumber.double(ptr sret(%class.ObjectPtr) align 4 %ref.tmp19, double noundef 3.000000e+00)
  call void @_Lua.Fun.PushObjPtrIntoArray.ObjectPtrArray.ObjectPtr(ptr noundef nonnull align 4 dereferenceable(12) %__Lua_Temp_Obj_Arr_19, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp19)
  call void @_Lua.CXXMethod.ObjectPtrArray(ptr noundef nonnull align 4 dereferenceable(12) %__Lua_Temp_Obj_Arr_20)
  call void @_Lua.Fun.BuildCallExpr.ObjectPtr.ObjectPtrArray(ptr sret(%class.ObjectPtrArray) align 4 %ref.tmp22, ptr noundef nonnull align 4 dereferenceable(8) %f, ptr noundef nonnull align 4 dereferenceable(12) %__Lua_Temp_Obj_Arr_19)
  call void @_Lua.Fun.GetObjectPtrFromArray.ObjectPtrArray.unsigned_int(ptr sret(%class.ObjectPtr) align 4 %ref.tmp21, ptr noundef nonnull align 4 dereferenceable(12) %ref.tmp22, i32 noundef 0)
  call void @_Lua.Fun.BuildNumber.double(ptr sret(%class.ObjectPtr) align 4 %ref.tmp23, double noundef 3.000000e+00)
  call void @_Lua.Fun.BuildBinOpExpr.ObjectPtr.ObjectPtr.unsigned_int(ptr sret(%class.ObjectPtr) align 4 %ref.tmp20, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp21, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp23, i32 noundef 14)
  call void @_Lua.Fun.PushObjPtrIntoArray.ObjectPtrArray.ObjectPtr(ptr noundef nonnull align 4 dereferenceable(12) %__Lua_Temp_Obj_Arr_20, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp20)
  call void @_Lua.CXXMethod.~ObjectPtr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp20)
  call void @_Lua.CXXMethod.~ObjectPtr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp23)
  call void @_Lua.CXXMethod.~ObjectPtr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp21)
  call void @_Lua.CXXMethod.~ObjectPtrArray(ptr noundef nonnull align 4 dereferenceable(12) %ref.tmp22)
  call void @_Lua.Fun.BuildString.char.unsigned_int(ptr sret(%class.ObjectPtr) align 4 %ref.tmp26, ptr noundef @.str.2, i32 noundef 6)
  call void @_Lua.Fun.GetMember.ObjectPtr.ObjectPtr.unsigned_long_long(ptr sret(%class.ObjectPtr) align 4 %ref.tmp25, ptr noundef nonnull align 4 dereferenceable(8) @_Lua.Var._ENV, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp26, i64 noundef 4110283703229)
  call void @_Lua.Fun.BuildCallExpr.ObjectPtr.ObjectPtrArray(ptr sret(%class.ObjectPtrArray) align 4 %agg.tmp.ensured24, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp25, ptr noundef nonnull align 4 dereferenceable(12) %__Lua_Temp_Obj_Arr_20)
  call void @_Lua.CXXMethod.~ObjectPtrArray(ptr noundef nonnull align 4 dereferenceable(12) %agg.tmp.ensured24)
  call void @_Lua.CXXMethod.~ObjectPtr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp25)
  call void @_Lua.CXXMethod.~ObjectPtr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp26)
  call void @_Lua.Fun.BuildEmptyTable(ptr sret(%class.ObjectPtr) align 4 %__Lua_Temp_Table_3)
  call void @_Lua.Fun.BuildString.char.unsigned_int(ptr sret(%class.ObjectPtr) align 4 %ref.tmp27, ptr noundef @.str.3, i32 noundef 3)
  call void @_Lua.Fun.AddMember.ObjectPtr.ObjectPtr.unsigned_long_long(ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Table_3, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp27, i64 noundef 4299262264297)
  call void @_Lua.CXXMethod.~ObjectPtr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp27)
  call void @_Lua.Fun.BuildNil(ptr sret(%class.ObjectPtr) align 4 %ref.tmp28)
  call void @_Lua.Fun.AddMember.ObjectPtr.ObjectPtr.unsigned_long_long(ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Table_3, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp28, i64 noundef 4329327035376)
  call void @_Lua.CXXMethod.~ObjectPtr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp28)
  call void @_Lua.Fun.BuildNumber.double(ptr sret(%class.ObjectPtr) align 4 %ref.tmp29, double noundef 4.500000e+01)
  call void @_Lua.Fun.AddMember.ObjectPtr.ObjectPtr.unsigned_long_long(ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Table_3, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp29, i64 noundef 4350801871861)
  call void @_Lua.CXXMethod.~ObjectPtr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp29)
  call void @_Lua.Fun.AddMember.ObjectPtr.ObjectPtr.unsigned_long_long(ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Table_3, ptr noundef nonnull align 4 dereferenceable(8) %f, i64 noundef 4367981741049)
  call void @_Lua.Fun.BuildNil(ptr sret(%class.ObjectPtr) align 4 %ref.tmp30)
  call void @_Lua.Fun.AddMember.ObjectPtr.ObjectPtr.unsigned_long_long(ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Table_3, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp30, i64 noundef 4380866642940)
  call void @_Lua.CXXMethod.~ObjectPtr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp30)
  call void @_Lua.CXXMethod.ObjectPtrArray(ptr noundef nonnull align 4 dereferenceable(12) %__Lua_Temp_Obj_Arr_21)
  call void @_Lua.Fun.PushObjPtrIntoArray.ObjectPtrArray.ObjectPtr(ptr noundef nonnull align 4 dereferenceable(12) %__Lua_Temp_Obj_Arr_21, ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Table_3)
  call void @_Lua.Fun.BuildString.char.unsigned_int(ptr sret(%class.ObjectPtr) align 4 %ref.tmp31, ptr noundef @.str.3, i32 noundef 3)
  call void @_Lua.Fun.PushObjPtrIntoArray.ObjectPtrArray.ObjectPtr(ptr noundef nonnull align 4 dereferenceable(12) %__Lua_Temp_Obj_Arr_21, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp31)
  call void @_Lua.Fun.BuildNil(ptr sret(%class.ObjectPtr) align 4 %ref.tmp32)
  call void @_Lua.Fun.PushObjPtrIntoArray.ObjectPtrArray.ObjectPtr(ptr noundef nonnull align 4 dereferenceable(12) %__Lua_Temp_Obj_Arr_21, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp32)
  call void @_Lua.Fun.BuildNumber.double(ptr sret(%class.ObjectPtr) align 4 %ref.tmp33, double noundef 4.500000e+01)
  call void @_Lua.Fun.PushObjPtrIntoArray.ObjectPtrArray.ObjectPtr(ptr noundef nonnull align 4 dereferenceable(12) %__Lua_Temp_Obj_Arr_21, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp33)
  call void @_Lua.Fun.PushObjPtrIntoArray.ObjectPtrArray.ObjectPtr(ptr noundef nonnull align 4 dereferenceable(12) %__Lua_Temp_Obj_Arr_21, ptr noundef nonnull align 4 dereferenceable(8) %f)
  call void @_Lua.Fun.BuildNil(ptr sret(%class.ObjectPtr) align 4 %ref.tmp34)
  call void @_Lua.Fun.PushObjPtrIntoArray.ObjectPtrArray.ObjectPtr(ptr noundef nonnull align 4 dereferenceable(12) %__Lua_Temp_Obj_Arr_21, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp34)
  call void @_Lua.CXXMethod.ObjectPtrArray(ptr noundef nonnull align 4 dereferenceable(12) %__Lua_Temp_Obj_Arr_22)
  call void @_Lua.Fun.BuildCallExpr.ObjectPtr.ObjectPtrArray(ptr sret(%class.ObjectPtrArray) align 4 %ref.tmp37, ptr noundef nonnull align 4 dereferenceable(8) %f, ptr noundef nonnull align 4 dereferenceable(12) %__Lua_Temp_Obj_Arr_21)
  call void @_Lua.Fun.GetObjectPtrFromArray.ObjectPtrArray.unsigned_int(ptr sret(%class.ObjectPtr) align 4 %ref.tmp36, ptr noundef nonnull align 4 dereferenceable(12) %ref.tmp37, i32 noundef 0)
  call void @_Lua.Fun.BuildNumber.double(ptr sret(%class.ObjectPtr) align 4 %ref.tmp38, double noundef 5.000000e+00)
  call void @_Lua.Fun.BuildBinOpExpr.ObjectPtr.ObjectPtr.unsigned_int(ptr sret(%class.ObjectPtr) align 4 %ref.tmp35, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp36, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp38, i32 noundef 14)
  call void @_Lua.Fun.PushObjPtrIntoArray.ObjectPtrArray.ObjectPtr(ptr noundef nonnull align 4 dereferenceable(12) %__Lua_Temp_Obj_Arr_22, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp35)
  call void @_Lua.CXXMethod.~ObjectPtr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp35)
  call void @_Lua.CXXMethod.~ObjectPtr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp38)
  call void @_Lua.CXXMethod.~ObjectPtr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp36)
  call void @_Lua.CXXMethod.~ObjectPtrArray(ptr noundef nonnull align 4 dereferenceable(12) %ref.tmp37)
  call void @_Lua.Fun.BuildString.char.unsigned_int(ptr sret(%class.ObjectPtr) align 4 %ref.tmp41, ptr noundef @.str.2, i32 noundef 6)
  call void @_Lua.Fun.GetMember.ObjectPtr.ObjectPtr.unsigned_long_long(ptr sret(%class.ObjectPtr) align 4 %ref.tmp40, ptr noundef nonnull align 4 dereferenceable(8) @_Lua.Var._ENV, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp41, i64 noundef 4256312591327)
  call void @_Lua.Fun.BuildCallExpr.ObjectPtr.ObjectPtrArray(ptr sret(%class.ObjectPtrArray) align 4 %agg.tmp.ensured39, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp40, ptr noundef nonnull align 4 dereferenceable(12) %__Lua_Temp_Obj_Arr_22)
  call void @_Lua.CXXMethod.~ObjectPtrArray(ptr noundef nonnull align 4 dereferenceable(12) %agg.tmp.ensured39)
  call void @_Lua.CXXMethod.~ObjectPtr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp40)
  call void @_Lua.CXXMethod.~ObjectPtr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp41)
  call void @_Lua.Fun.BuildEmptyArr(ptr sret(%class.ObjectPtrArray) align 4 %agg.result)
  call void @_Lua.CXXMethod.~ObjectPtrArray(ptr noundef nonnull align 4 dereferenceable(12) %__Lua_Temp_Obj_Arr_22)
  call void @_Lua.CXXMethod.~ObjectPtr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp34)
  call void @_Lua.CXXMethod.~ObjectPtr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp33)
  call void @_Lua.CXXMethod.~ObjectPtr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp32)
  call void @_Lua.CXXMethod.~ObjectPtr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp31)
  call void @_Lua.CXXMethod.~ObjectPtrArray(ptr noundef nonnull align 4 dereferenceable(12) %__Lua_Temp_Obj_Arr_21)
  call void @_Lua.CXXMethod.~ObjectPtr(ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Table_3)
  call void @_Lua.CXXMethod.~ObjectPtrArray(ptr noundef nonnull align 4 dereferenceable(12) %__Lua_Temp_Obj_Arr_20)
  call void @_Lua.CXXMethod.~ObjectPtr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp19)
  call void @_Lua.CXXMethod.~ObjectPtr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp18)
  call void @_Lua.CXXMethod.~ObjectPtr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp17)
  call void @_Lua.CXXMethod.~ObjectPtrArray(ptr noundef nonnull align 4 dereferenceable(12) %__Lua_Temp_Obj_Arr_19)
  call void @_Lua.CXXMethod.~ObjectPtr(ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Table_2)
  call void @_Lua.CXXMethod.~ObjectPtrArray(ptr noundef nonnull align 4 dereferenceable(12) %__Lua_Temp_Obj_Arr_18)
  call void @_Lua.CXXMethod.~ObjectPtrArray(ptr noundef nonnull align 4 dereferenceable(12) %__Lua_Temp_Obj_Arr_17)
  call void @_Lua.CXXMethod.~ObjectPtr(ptr noundef nonnull align 4 dereferenceable(8) %call)
  call void @_Lua.CXXMethod.~ObjectPtrArray(ptr noundef nonnull align 4 dereferenceable(12) %__Lua_Temp_Obj_Arr_16)
  call void @_Lua.CXXMethod.~ObjectPtr(ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Closure_3)
  call void @_Lua.CXXMethod.~ObjectPtr(ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Closure_2)
  call void @_Lua.CXXMethod.~ObjectPtr(ptr noundef nonnull align 4 dereferenceable(8) %vararg)
  call void @_Lua.CXXMethod.~ObjectPtr(ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Closure_1)
  call void @_Lua.CXXMethod.~ObjectPtr(ptr noundef nonnull align 4 dereferenceable(8) %c12)
  call void @_Lua.CXXMethod.~ObjectPtr(ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Closure_0)
  call void @_Lua.CXXMethod.~ObjectPtr(ptr noundef nonnull align 4 dereferenceable(8) %f)
  call void @_Lua.CXXMethod.~ObjectPtrArray(ptr noundef nonnull align 4 dereferenceable(12) %__Lua_Temp_Obj_Arr_0)
  ret void
}

declare void @_Lua.CXXMethod.~ObjectPtr(ptr noundef nonnull align 4 dereferenceable(8)) unnamed_addr #1

; Function Attrs: nounwind
declare i32 @__cxa_atexit(ptr, ptr, ptr) #3

declare void @_Lua.CXXMethod.ObjectPtrArray(ptr noundef nonnull align 4 dereferenceable(12)) unnamed_addr #1

declare void @_Lua.Fun.PushObjPtrIntoArray.ObjectPtrArray.ObjectPtr(ptr noundef nonnull align 4 dereferenceable(12), ptr noundef nonnull align 4 dereferenceable(8)) #1

declare void @_Lua.Fun.BuildString.char.unsigned_int(ptr sret(%class.ObjectPtr) align 4, ptr noundef, i32 noundef) #1

declare void @_Lua.Fun.BuildCallExpr.ObjectPtr.ObjectPtrArray(ptr sret(%class.ObjectPtrArray) align 4, ptr noundef nonnull align 4 dereferenceable(8), ptr noundef nonnull align 4 dereferenceable(12)) #1

declare void @_Lua.Fun.GetMember.ObjectPtr.ObjectPtr.unsigned_long_long(ptr sret(%class.ObjectPtr) align 4, ptr noundef nonnull align 4 dereferenceable(8), ptr noundef nonnull align 4 dereferenceable(8), i64 noundef) #1

declare void @_Lua.CXXMethod.~ObjectPtrArray(ptr noundef nonnull align 4 dereferenceable(12)) unnamed_addr #1

declare void @_Lua.Fun.BuildNil(ptr sret(%class.ObjectPtr) align 4) #1

declare void @_Lua.Fun.BuildFunction(ptr sret(%class.ObjectPtr) align 4) #1

declare void @_Lua.Fun.SetFunctionMethod.ObjectPtr.MethodTy(ptr noundef nonnull align 4 dereferenceable(8), ptr noundef nonnull align 4 dereferenceable(4)) #1

; Function Attrs: noinline nounwind optnone
define dso_local void @_Lua.Fun.__Lua_Temp_Method_1.ObjectPtr.ObjectPtrArray(ptr noalias sret(%class.ObjectPtrArray) align 4 %agg.result, ptr noundef nonnull align 4 dereferenceable(8) %Base, ptr noundef nonnull align 4 dereferenceable(12) %Parms) #2 {
entry:
  %result.ptr = alloca ptr, align 4
  %Base.addr = alloca ptr, align 4
  %Parms.addr = alloca ptr, align 4
  %a = alloca %class.ObjectPtr, align 4
  %VarList = alloca %class.ObjectPtrArray, align 4
  %t = alloca %class.ObjectPtrArray, align 4
  %__Lua_Temp_Table_0 = alloca %class.ObjectPtr, align 4
  %__Lua_Temp_Obj_Arr_1 = alloca %class.ObjectPtrArray, align 4
  %ref.tmp = alloca %class.ObjectPtr, align 4
  %ref.tmp1 = alloca %class.ObjectPtr, align 4
  %ref.tmp2 = alloca %class.ObjectPtr, align 4
  %ref.tmp3 = alloca %class.ObjectPtrArray, align 4
  %ref.tmp4 = alloca %class.ObjectPtr, align 4
  %ref.tmp5 = alloca %class.ObjectPtr, align 4
  %__Lua_Temp_Obj_Arr_2 = alloca %class.ObjectPtrArray, align 4
  %x = alloca %class.ObjectPtr, align 4
  %__Lua_Temp_Obj_Arr_3 = alloca %class.ObjectPtrArray, align 4
  %ref.tmp6 = alloca %class.ObjectPtr, align 4
  %ref.tmp7 = alloca %class.ObjectPtr, align 4
  %ref.tmp8 = alloca %class.ObjectPtr, align 4
  %ref.tmp9 = alloca %class.ObjectPtr, align 4
  %agg.tmp.ensured = alloca %class.ObjectPtrArray, align 4
  %ref.tmp10 = alloca %class.ObjectPtr, align 4
  %ref.tmp11 = alloca %class.ObjectPtr, align 4
  %i = alloca %class.ObjectPtr, align 4
  %__Lua_Temp_Obj_0 = alloca %class.ObjectPtr, align 4
  %ref.tmp12 = alloca %class.ObjectPtr, align 4
  %__Lua_Temp_Obj_1 = alloca %class.ObjectPtr, align 4
  %ref.tmp13 = alloca %class.ObjectPtr, align 4
  %ref.tmp14 = alloca %class.ObjectPtr, align 4
  %ref.tmp15 = alloca %class.ObjectPtr, align 4
  %ref.tmp16 = alloca %class.ObjectPtr, align 4
  %ref.tmp17 = alloca %class.ObjectPtr, align 4
  %ref.tmp18 = alloca %class.ObjectPtr, align 4
  %ref.tmp19 = alloca %class.ObjectPtr, align 4
  %ref.tmp20 = alloca %class.ObjectPtr, align 4
  %ref.tmp21 = alloca %class.ObjectPtr, align 4
  %__Lua_Temp_Obj_Arr_4 = alloca %class.ObjectPtrArray, align 4
  %ref.tmp22 = alloca %class.ObjectPtr, align 4
  %ref.tmp23 = alloca %class.ObjectPtr, align 4
  %ref.tmp24 = alloca %class.ObjectPtr, align 4
  %ref.tmp25 = alloca %class.ObjectPtr, align 4
  %ref.tmp26 = alloca %class.ObjectPtr, align 4
  %ref.tmp27 = alloca %class.ObjectPtr, align 4
  %ref.tmp28 = alloca %class.ObjectPtr, align 4
  %agg.tmp.ensured29 = alloca %class.ObjectPtrArray, align 4
  %ref.tmp30 = alloca %class.ObjectPtr, align 4
  %ref.tmp31 = alloca %class.ObjectPtr, align 4
  %ref.tmp32 = alloca %class.ObjectPtr, align 4
  %nrvo = alloca i1, align 1
  %ref.tmp33 = alloca %class.ObjectPtr, align 4
  %ref.tmp34 = alloca %class.ObjectPtr, align 4
  store ptr %agg.result, ptr %result.ptr, align 4
  store ptr %Base, ptr %Base.addr, align 4
  store ptr %Parms, ptr %Parms.addr, align 4
  %0 = load ptr, ptr %Parms.addr, align 4
  call void @_Lua.Fun.GetObjectPtrFromArray.ObjectPtrArray.unsigned_int(ptr sret(%class.ObjectPtr) align 4 %a, ptr noundef nonnull align 4 dereferenceable(12) %0, i32 noundef 0)
  %1 = load ptr, ptr %Parms.addr, align 4
  call void @_Lua.Fun.GetSubArray.ObjectPtrArray.unsigned_int(ptr sret(%class.ObjectPtrArray) align 4 %VarList, ptr noundef nonnull align 4 dereferenceable(12) %1, i32 noundef 1)
  call void @_Lua.CXXMethod.ObjectPtrArray.ObjectPtrArray(ptr noundef nonnull align 4 dereferenceable(12) %t, ptr noundef nonnull align 4 dereferenceable(12) %VarList)
  call void @_Lua.Fun.BuildEmptyTable(ptr sret(%class.ObjectPtr) align 4 %__Lua_Temp_Table_0)
  call void @_Lua.CXXMethod.ObjectPtrArray(ptr noundef nonnull align 4 dereferenceable(12) %__Lua_Temp_Obj_Arr_1)
  call void @_Lua.Fun.BuildString.char.unsigned_int(ptr sret(%class.ObjectPtr) align 4 %ref.tmp, ptr noundef @.str.4, i32 noundef 1)
  call void @_Lua.Fun.PushObjPtrIntoArray.ObjectPtrArray.ObjectPtr(ptr noundef nonnull align 4 dereferenceable(12) %__Lua_Temp_Obj_Arr_1, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp)
  call void @_Lua.CXXMethod.~ObjectPtr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp)
  call void @_Lua.Fun.PushArrayIntoArray.ObjectPtrArray.ObjectPtrArray(ptr noundef nonnull align 4 dereferenceable(12) %__Lua_Temp_Obj_Arr_1, ptr noundef nonnull align 4 dereferenceable(12) %VarList)
  call void @_Lua.Fun.BuildString.char.unsigned_int(ptr sret(%class.ObjectPtr) align 4 %ref.tmp1, ptr noundef @.str.5, i32 noundef 1)
  call void @_Lua.Fun.BuildString.char.unsigned_int(ptr sret(%class.ObjectPtr) align 4 %ref.tmp5, ptr noundef @.str.6, i32 noundef 6)
  call void @_Lua.Fun.GetMember.ObjectPtr.ObjectPtr.unsigned_long_long(ptr sret(%class.ObjectPtr) align 4 %ref.tmp4, ptr noundef nonnull align 4 dereferenceable(8) @_Lua.Var._ENV, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp5, i64 noundef 2022929596887)
  call void @_Lua.Fun.BuildCallExpr.ObjectPtr.ObjectPtrArray(ptr sret(%class.ObjectPtrArray) align 4 %ref.tmp3, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp4, ptr noundef nonnull align 4 dereferenceable(12) %__Lua_Temp_Obj_Arr_1)
  call void @_Lua.Fun.GetObjectPtrFromArray.ObjectPtrArray.unsigned_int(ptr sret(%class.ObjectPtr) align 4 %ref.tmp2, ptr noundef nonnull align 4 dereferenceable(12) %ref.tmp3, i32 noundef 0)
  call void @_Lua.Fun.SetMember.ObjectPtr.ObjectPtr.ObjectPtr.unsigned_long_long(ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Table_0, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp1, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp2, i64 noundef 2022929596883)
  call void @_Lua.CXXMethod.~ObjectPtr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp2)
  call void @_Lua.CXXMethod.~ObjectPtrArray(ptr noundef nonnull align 4 dereferenceable(12) %ref.tmp3)
  call void @_Lua.CXXMethod.~ObjectPtr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp4)
  call void @_Lua.CXXMethod.~ObjectPtr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp5)
  call void @_Lua.CXXMethod.~ObjectPtr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp1)
  call void @_Lua.Fun.AddMembers.ObjectPtr.ObjectPtrArray.unsigned_long_long(ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Table_0, ptr noundef nonnull align 4 dereferenceable(12) %VarList, i64 noundef 2100239008233)
  call void @_Lua.CXXMethod.ObjectPtrArray(ptr noundef nonnull align 4 dereferenceable(12) %__Lua_Temp_Obj_Arr_2)
  call void @_Lua.Fun.PushObjPtrIntoArray.ObjectPtrArray.ObjectPtr(ptr noundef nonnull align 4 dereferenceable(12) %__Lua_Temp_Obj_Arr_2, ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Table_0)
  call void @_Lua.Fun.GetObjectPtrFromArray.ObjectPtrArray.unsigned_int(ptr sret(%class.ObjectPtr) align 4 %x, ptr noundef nonnull align 4 dereferenceable(12) %__Lua_Temp_Obj_Arr_2, i32 noundef 0)
  call void @_Lua.CXXMethod.ObjectPtrArray(ptr noundef nonnull align 4 dereferenceable(12) %__Lua_Temp_Obj_Arr_3)
  call void @_Lua.Fun.BuildString.char.unsigned_int(ptr sret(%class.ObjectPtr) align 4 %ref.tmp8, ptr noundef @.str.5, i32 noundef 1)
  call void @_Lua.Fun.GetMember.ObjectPtr.ObjectPtr.unsigned_long_long(ptr sret(%class.ObjectPtr) align 4 %ref.tmp7, ptr noundef nonnull align 4 dereferenceable(8) %x, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp8, i64 noundef 2173253452281)
  call void @_Lua.Fun.GetObjectPtrArraySize.ObjectPtrArray(ptr sret(%class.ObjectPtr) align 4 %ref.tmp9, ptr noundef nonnull align 4 dereferenceable(12) %t)
  call void @_Lua.Fun.BuildBinOpExpr.ObjectPtr.ObjectPtr.unsigned_int(ptr sret(%class.ObjectPtr) align 4 %ref.tmp6, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp7, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp9, i32 noundef 14)
  call void @_Lua.Fun.PushObjPtrIntoArray.ObjectPtrArray.ObjectPtr(ptr noundef nonnull align 4 dereferenceable(12) %__Lua_Temp_Obj_Arr_3, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp6)
  call void @_Lua.CXXMethod.~ObjectPtr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp6)
  call void @_Lua.CXXMethod.~ObjectPtr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp9)
  call void @_Lua.CXXMethod.~ObjectPtr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp7)
  call void @_Lua.CXXMethod.~ObjectPtr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp8)
  call void @_Lua.Fun.BuildString.char.unsigned_int(ptr sret(%class.ObjectPtr) align 4 %ref.tmp11, ptr noundef @.str.2, i32 noundef 6)
  call void @_Lua.Fun.GetMember.ObjectPtr.ObjectPtr.unsigned_long_long(ptr sret(%class.ObjectPtr) align 4 %ref.tmp10, ptr noundef nonnull align 4 dereferenceable(8) @_Lua.Var._ENV, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp11, i64 noundef 2134598746609)
  call void @_Lua.Fun.BuildCallExpr.ObjectPtr.ObjectPtrArray(ptr sret(%class.ObjectPtrArray) align 4 %agg.tmp.ensured, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp10, ptr noundef nonnull align 4 dereferenceable(12) %__Lua_Temp_Obj_Arr_3)
  call void @_Lua.CXXMethod.~ObjectPtrArray(ptr noundef nonnull align 4 dereferenceable(12) %agg.tmp.ensured)
  call void @_Lua.CXXMethod.~ObjectPtr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp10)
  call void @_Lua.CXXMethod.~ObjectPtr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp11)
  call void @_Lua.Fun.BuildNumber.double(ptr sret(%class.ObjectPtr) align 4 %i, double noundef 1.000000e+00)
  call void @_Lua.Fun.BuildString.char.unsigned_int(ptr sret(%class.ObjectPtr) align 4 %ref.tmp12, ptr noundef @.str.5, i32 noundef 1)
  call void @_Lua.Fun.GetMember.ObjectPtr.ObjectPtr.unsigned_long_long(ptr sret(%class.ObjectPtr) align 4 %__Lua_Temp_Obj_0, ptr noundef nonnull align 4 dereferenceable(8) %x, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp12, i64 noundef 2284922602003)
  call void @_Lua.CXXMethod.~ObjectPtr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp12)
  call void @_Lua.Fun.BuildNumber.double(ptr sret(%class.ObjectPtr) align 4 %__Lua_Temp_Obj_1, double noundef 1.000000e+00)
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  call void @_Lua.Fun.BuildNumber.double(ptr sret(%class.ObjectPtr) align 4 %ref.tmp16, double noundef 0.000000e+00)
  call void @_Lua.Fun.BuildBinOpExpr.ObjectPtr.ObjectPtr.unsigned_int(ptr sret(%class.ObjectPtr) align 4 %ref.tmp15, ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Obj_1, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp16, i32 noundef 13)
  call void @_Lua.Fun.BuildBinOpExpr.ObjectPtr.ObjectPtr.unsigned_int(ptr sret(%class.ObjectPtr) align 4 %ref.tmp17, ptr noundef nonnull align 4 dereferenceable(8) %i, ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Obj_0, i32 noundef 12)
  call void @_Lua.Fun.BuildBinOpExpr.ObjectPtr.ObjectPtr.unsigned_int(ptr sret(%class.ObjectPtr) align 4 %ref.tmp14, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp15, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp17, i32 noundef 16)
  call void @_Lua.Fun.BuildNumber.double(ptr sret(%class.ObjectPtr) align 4 %ref.tmp20, double noundef 0.000000e+00)
  call void @_Lua.Fun.BuildBinOpExpr.ObjectPtr.ObjectPtr.unsigned_int(ptr sret(%class.ObjectPtr) align 4 %ref.tmp19, ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Obj_1, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp20, i32 noundef 10)
  call void @_Lua.Fun.BuildBinOpExpr.ObjectPtr.ObjectPtr.unsigned_int(ptr sret(%class.ObjectPtr) align 4 %ref.tmp21, ptr noundef nonnull align 4 dereferenceable(8) %i, ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Obj_0, i32 noundef 13)
  call void @_Lua.Fun.BuildBinOpExpr.ObjectPtr.ObjectPtr.unsigned_int(ptr sret(%class.ObjectPtr) align 4 %ref.tmp18, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp19, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp21, i32 noundef 16)
  call void @_Lua.Fun.BuildBinOpExpr.ObjectPtr.ObjectPtr.unsigned_int(ptr sret(%class.ObjectPtr) align 4 %ref.tmp13, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp14, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp18, i32 noundef 18)
  %call = call zeroext i1 @_Lua.Fun.ConvertToBool.ObjectPtr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp13)
  call void @_Lua.CXXMethod.~ObjectPtr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp13)
  call void @_Lua.CXXMethod.~ObjectPtr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp18)
  call void @_Lua.CXXMethod.~ObjectPtr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp21)
  call void @_Lua.CXXMethod.~ObjectPtr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp19)
  call void @_Lua.CXXMethod.~ObjectPtr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp20)
  call void @_Lua.CXXMethod.~ObjectPtr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp14)
  call void @_Lua.CXXMethod.~ObjectPtr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp17)
  call void @_Lua.CXXMethod.~ObjectPtr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp15)
  call void @_Lua.CXXMethod.~ObjectPtr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp16)
  br i1 %call, label %for.body, label %for.cond.cleanup

for.cond.cleanup:                                 ; preds = %for.cond
  call void @_Lua.CXXMethod.~ObjectPtr(ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Obj_1)
  call void @_Lua.CXXMethod.~ObjectPtr(ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Obj_0)
  call void @_Lua.CXXMethod.~ObjectPtr(ptr noundef nonnull align 4 dereferenceable(8) %i)
  br label %for.end

for.body:                                         ; preds = %for.cond
  call void @_Lua.CXXMethod.ObjectPtrArray(ptr noundef nonnull align 4 dereferenceable(12) %__Lua_Temp_Obj_Arr_4)
  call void @_Lua.Fun.GetMember.ObjectPtr.ObjectPtr.unsigned_long_long(ptr sret(%class.ObjectPtr) align 4 %ref.tmp24, ptr noundef nonnull align 4 dereferenceable(8) %a, ptr noundef nonnull align 4 dereferenceable(8) %i, i64 noundef 2370821947942)
  call void @_Lua.Fun.GetMember.ObjectPtr.ObjectPtr.unsigned_long_long(ptr sret(%class.ObjectPtr) align 4 %ref.tmp25, ptr noundef nonnull align 4 dereferenceable(8) %x, ptr noundef nonnull align 4 dereferenceable(8) %i, i64 noundef 2405181686318)
  call void @_Lua.Fun.BuildBinOpExpr.ObjectPtr.ObjectPtr.unsigned_int(ptr sret(%class.ObjectPtr) align 4 %ref.tmp23, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp24, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp25, i32 noundef 14)
  call void @_Lua.Fun.GetMember.ObjectPtr.ObjectPtr.unsigned_long_long(ptr sret(%class.ObjectPtr) align 4 %ref.tmp27, ptr noundef nonnull align 4 dereferenceable(8) %x, ptr noundef nonnull align 4 dereferenceable(8) %i, i64 noundef 2443836391991)
  call void @_Lua.Fun.GetObjectPtrArrayElement.ObjectPtrArray.ObjectPtr(ptr sret(%class.ObjectPtr) align 4 %ref.tmp28, ptr noundef nonnull align 4 dereferenceable(12) %t, ptr noundef nonnull align 4 dereferenceable(8) %i)
  call void @_Lua.Fun.BuildBinOpExpr.ObjectPtr.ObjectPtr.unsigned_int(ptr sret(%class.ObjectPtr) align 4 %ref.tmp26, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp27, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp28, i32 noundef 14)
  call void @_Lua.Fun.BuildBinOpExpr.ObjectPtr.ObjectPtr.unsigned_int(ptr sret(%class.ObjectPtr) align 4 %ref.tmp22, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp23, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp26, i32 noundef 16)
  call void @_Lua.Fun.PushObjPtrIntoArray.ObjectPtrArray.ObjectPtr(ptr noundef nonnull align 4 dereferenceable(12) %__Lua_Temp_Obj_Arr_4, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp22)
  call void @_Lua.CXXMethod.~ObjectPtr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp22)
  call void @_Lua.CXXMethod.~ObjectPtr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp26)
  call void @_Lua.CXXMethod.~ObjectPtr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp28)
  call void @_Lua.CXXMethod.~ObjectPtr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp27)
  call void @_Lua.CXXMethod.~ObjectPtr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp23)
  call void @_Lua.CXXMethod.~ObjectPtr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp25)
  call void @_Lua.CXXMethod.~ObjectPtr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp24)
  call void @_Lua.Fun.BuildString.char.unsigned_int(ptr sret(%class.ObjectPtr) align 4 %ref.tmp31, ptr noundef @.str.2, i32 noundef 6)
  call void @_Lua.Fun.GetMember.ObjectPtr.ObjectPtr.unsigned_long_long(ptr sret(%class.ObjectPtr) align 4 %ref.tmp30, ptr noundef nonnull align 4 dereferenceable(8) @_Lua.Var._ENV, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp31, i64 noundef 2327872274974)
  call void @_Lua.Fun.BuildCallExpr.ObjectPtr.ObjectPtrArray(ptr sret(%class.ObjectPtrArray) align 4 %agg.tmp.ensured29, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp30, ptr noundef nonnull align 4 dereferenceable(12) %__Lua_Temp_Obj_Arr_4)
  call void @_Lua.CXXMethod.~ObjectPtrArray(ptr noundef nonnull align 4 dereferenceable(12) %agg.tmp.ensured29)
  call void @_Lua.CXXMethod.~ObjectPtr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp30)
  call void @_Lua.CXXMethod.~ObjectPtr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp31)
  call void @_Lua.CXXMethod.~ObjectPtrArray(ptr noundef nonnull align 4 dereferenceable(12) %__Lua_Temp_Obj_Arr_4)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  call void @_Lua.Fun.BuildBinOpExpr.ObjectPtr.ObjectPtr.unsigned_int(ptr sret(%class.ObjectPtr) align 4 %ref.tmp32, ptr noundef nonnull align 4 dereferenceable(8) %i, ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Obj_1, i32 noundef 5)
  call void @_Lua.Fun.BuildModifyExpr.ObjectPtr.ObjectPtr(ptr noundef nonnull align 4 dereferenceable(8) %i, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp32)
  call void @_Lua.CXXMethod.~ObjectPtr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp32)
  br label %for.cond

for.end:                                          ; preds = %for.cond.cleanup
  store i1 false, ptr %nrvo, align 1
  call void @_Lua.CXXMethod.ObjectPtrArray(ptr noundef nonnull align 4 dereferenceable(12) %agg.result)
  call void @_Lua.Fun.BuildString.char.unsigned_int(ptr sret(%class.ObjectPtr) align 4 %ref.tmp34, ptr noundef @.str.5, i32 noundef 1)
  call void @_Lua.Fun.GetMember.ObjectPtr.ObjectPtr.unsigned_long_long(ptr sret(%class.ObjectPtr) align 4 %ref.tmp33, ptr noundef nonnull align 4 dereferenceable(8) %x, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp34, i64 noundef 2572685410902)
  call void @_Lua.Fun.PushObjPtrIntoArray.ObjectPtrArray.ObjectPtr(ptr noundef nonnull align 4 dereferenceable(12) %agg.result, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp33)
  call void @_Lua.CXXMethod.~ObjectPtr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp33)
  call void @_Lua.CXXMethod.~ObjectPtr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp34)
  store i1 true, ptr %nrvo, align 1
  %nrvo.val = load i1, ptr %nrvo, align 1
  br i1 %nrvo.val, label %nrvo.skipdtor, label %nrvo.unused

nrvo.unused:                                      ; preds = %for.end
  call void @_Lua.CXXMethod.~ObjectPtrArray(ptr noundef nonnull align 4 dereferenceable(12) %agg.result)
  br label %nrvo.skipdtor

nrvo.skipdtor:                                    ; preds = %nrvo.unused, %for.end
  call void @_Lua.CXXMethod.~ObjectPtrArray(ptr noundef nonnull align 4 dereferenceable(12) %__Lua_Temp_Obj_Arr_3)
  call void @_Lua.CXXMethod.~ObjectPtr(ptr noundef nonnull align 4 dereferenceable(8) %x)
  call void @_Lua.CXXMethod.~ObjectPtrArray(ptr noundef nonnull align 4 dereferenceable(12) %__Lua_Temp_Obj_Arr_2)
  call void @_Lua.CXXMethod.~ObjectPtrArray(ptr noundef nonnull align 4 dereferenceable(12) %__Lua_Temp_Obj_Arr_1)
  call void @_Lua.CXXMethod.~ObjectPtr(ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Table_0)
  call void @_Lua.CXXMethod.~ObjectPtrArray(ptr noundef nonnull align 4 dereferenceable(12) %t)
  call void @_Lua.CXXMethod.~ObjectPtrArray(ptr noundef nonnull align 4 dereferenceable(12) %VarList)
  call void @_Lua.CXXMethod.~ObjectPtr(ptr noundef nonnull align 4 dereferenceable(8) %a)
  ret void
}

declare void @_Lua.Fun.BuildModifyExpr.ObjectPtr.ObjectPtr(ptr noundef nonnull align 4 dereferenceable(8), ptr noundef nonnull align 4 dereferenceable(8)) #1

; Function Attrs: noinline nounwind optnone
define dso_local void @_Lua.Fun.__Lua_Temp_Method_2.ObjectPtr.ObjectPtrArray(ptr noalias sret(%class.ObjectPtrArray) align 4 %agg.result, ptr noundef nonnull align 4 dereferenceable(8) %Base, ptr noundef nonnull align 4 dereferenceable(12) %Parms) #2 {
entry:
  %result.ptr = alloca ptr, align 4
  %Base.addr = alloca ptr, align 4
  %Parms.addr = alloca ptr, align 4
  %VarList = alloca %class.ObjectPtrArray, align 4
  %__Lua_Temp_Obj_Arr_6 = alloca %class.ObjectPtrArray, align 4
  %ref.tmp = alloca %class.ObjectPtr, align 4
  %ref.tmp1 = alloca %class.ObjectPtr, align 4
  %ref.tmp2 = alloca %class.ObjectPtr, align 4
  %ref.tmp3 = alloca %class.ObjectPtr, align 4
  %ref.tmp4 = alloca %class.ObjectPtr, align 4
  %agg.tmp.ensured = alloca %class.ObjectPtrArray, align 4
  %ref.tmp5 = alloca %class.ObjectPtr, align 4
  %ref.tmp6 = alloca %class.ObjectPtr, align 4
  %__Lua_Temp_Table_1 = alloca %class.ObjectPtr, align 4
  %__Lua_Temp_Obj_Arr_7 = alloca %class.ObjectPtrArray, align 4
  %x = alloca %class.ObjectPtr, align 4
  %__Lua_Temp_Obj_Arr_8 = alloca %class.ObjectPtrArray, align 4
  %ref.tmp7 = alloca %class.ObjectPtr, align 4
  %ref.tmp8 = alloca %class.ObjectPtr, align 4
  %ref.tmp9 = alloca %class.ObjectPtr, align 4
  %__Lua_Temp_Obj_Arr_9 = alloca %class.ObjectPtrArray, align 4
  %ref.tmp10 = alloca %class.ObjectPtr, align 4
  %ref.tmp11 = alloca %class.ObjectPtr, align 4
  %ref.tmp12 = alloca %class.ObjectPtr, align 4
  %ref.tmp13 = alloca %class.ObjectPtr, align 4
  %ref.tmp14 = alloca %class.ObjectPtr, align 4
  %ref.tmp15 = alloca %class.ObjectPtr, align 4
  %ref.tmp16 = alloca %class.ObjectPtr, align 4
  %ref.tmp17 = alloca %class.ObjectPtr, align 4
  %ref.tmp18 = alloca %class.ObjectPtr, align 4
  %ref.tmp19 = alloca %class.ObjectPtr, align 4
  %ref.tmp20 = alloca %class.ObjectPtr, align 4
  %ref.tmp21 = alloca %class.ObjectPtr, align 4
  %ref.tmp22 = alloca %class.ObjectPtr, align 4
  %ref.tmp23 = alloca %class.ObjectPtr, align 4
  %res = alloca %class.ObjectPtr, align 4
  %__Lua_Temp_Obj_Arr_10 = alloca %class.ObjectPtrArray, align 4
  %ref.tmp24 = alloca %class.ObjectPtr, align 4
  %ref.tmp25 = alloca %class.ObjectPtr, align 4
  %nrvo = alloca i1, align 1
  %ref.tmp26 = alloca %class.ObjectPtr, align 4
  store ptr %agg.result, ptr %result.ptr, align 4
  store ptr %Base, ptr %Base.addr, align 4
  store ptr %Parms, ptr %Parms.addr, align 4
  %0 = load ptr, ptr %Parms.addr, align 4
  call void @_Lua.Fun.GetSubArray.ObjectPtrArray.unsigned_int(ptr sret(%class.ObjectPtrArray) align 4 %VarList, ptr noundef nonnull align 4 dereferenceable(12) %0, i32 noundef 0)
  call void @_Lua.CXXMethod.ObjectPtrArray(ptr noundef nonnull align 4 dereferenceable(12) %__Lua_Temp_Obj_Arr_6)
  call void @_Lua.Fun.BuildString.char.unsigned_int(ptr sret(%class.ObjectPtr) align 4 %ref.tmp2, ptr noundef @.str.7, i32 noundef 3)
  call void @_Lua.Fun.GetMember.ObjectPtr.ObjectPtr.unsigned_long_long(ptr sret(%class.ObjectPtr) align 4 %ref.tmp1, ptr noundef nonnull align 4 dereferenceable(8) @_Lua.Var._ENV, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp2, i64 noundef 2765958939268)
  call void @_Lua.Fun.BuildString.char.unsigned_int(ptr sret(%class.ObjectPtr) align 4 %ref.tmp4, ptr noundef @.str.7, i32 noundef 3)
  call void @_Lua.Fun.GetMember.ObjectPtr.ObjectPtr.unsigned_long_long(ptr sret(%class.ObjectPtr) align 4 %ref.tmp3, ptr noundef nonnull align 4 dereferenceable(8) @_Lua.Var._G, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp4, i64 noundef 2808908612237)
  call void @_Lua.Fun.BuildBinOpExpr.ObjectPtr.ObjectPtr.unsigned_int(ptr sret(%class.ObjectPtr) align 4 %ref.tmp, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp1, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp3, i32 noundef 14)
  call void @_Lua.Fun.PushObjPtrIntoArray.ObjectPtrArray.ObjectPtr(ptr noundef nonnull align 4 dereferenceable(12) %__Lua_Temp_Obj_Arr_6, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp)
  call void @_Lua.CXXMethod.~ObjectPtr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp)
  call void @_Lua.CXXMethod.~ObjectPtr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp3)
  call void @_Lua.CXXMethod.~ObjectPtr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp4)
  call void @_Lua.CXXMethod.~ObjectPtr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp1)
  call void @_Lua.CXXMethod.~ObjectPtr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp2)
  call void @_Lua.Fun.BuildString.char.unsigned_int(ptr sret(%class.ObjectPtr) align 4 %ref.tmp6, ptr noundef @.str.2, i32 noundef 6)
  call void @_Lua.Fun.GetMember.ObjectPtr.ObjectPtr.unsigned_long_long(ptr sret(%class.ObjectPtr) align 4 %ref.tmp5, ptr noundef nonnull align 4 dereferenceable(8) @_Lua.Var._ENV, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp6, i64 noundef 2735894168189)
  call void @_Lua.Fun.BuildCallExpr.ObjectPtr.ObjectPtrArray(ptr sret(%class.ObjectPtrArray) align 4 %agg.tmp.ensured, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp5, ptr noundef nonnull align 4 dereferenceable(12) %__Lua_Temp_Obj_Arr_6)
  call void @_Lua.CXXMethod.~ObjectPtrArray(ptr noundef nonnull align 4 dereferenceable(12) %agg.tmp.ensured)
  call void @_Lua.CXXMethod.~ObjectPtr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp5)
  call void @_Lua.CXXMethod.~ObjectPtr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp6)
  call void @_Lua.Fun.BuildEmptyTable(ptr sret(%class.ObjectPtr) align 4 %__Lua_Temp_Table_1)
  call void @_Lua.Fun.AddMembers.ObjectPtr.ObjectPtrArray.unsigned_long_long(ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Table_1, ptr noundef nonnull align 4 dereferenceable(12) %VarList, i64 noundef 2980707304118)
  call void @_Lua.CXXMethod.ObjectPtrArray(ptr noundef nonnull align 4 dereferenceable(12) %__Lua_Temp_Obj_Arr_7)
  call void @_Lua.Fun.PushObjPtrIntoArray.ObjectPtrArray.ObjectPtr(ptr noundef nonnull align 4 dereferenceable(12) %__Lua_Temp_Obj_Arr_7, ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Table_1)
  call void @_Lua.Fun.GetObjectPtrFromArray.ObjectPtrArray.unsigned_int(ptr sret(%class.ObjectPtr) align 4 %x, ptr noundef nonnull align 4 dereferenceable(12) %__Lua_Temp_Obj_Arr_7, i32 noundef 0)
  call void @_Lua.CXXMethod.ObjectPtrArray(ptr noundef nonnull align 4 dereferenceable(12) %__Lua_Temp_Obj_Arr_8)
  call void @_Lua.Fun.BuildUnOpExpr.ObjectPtr.unsigned_int(ptr sret(%class.ObjectPtr) align 4 %ref.tmp7, ptr noundef nonnull align 4 dereferenceable(8) %x, i32 noundef 14)
  call void @_Lua.Fun.PushObjPtrIntoArray.ObjectPtrArray.ObjectPtr(ptr noundef nonnull align 4 dereferenceable(12) %__Lua_Temp_Obj_Arr_8, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp7)
  call void @_Lua.CXXMethod.~ObjectPtr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp7)
  call void @_Lua.Fun.BuildString.char.unsigned_int(ptr sret(%class.ObjectPtr) align 4 %ref.tmp8, ptr noundef @.str.5, i32 noundef 1)
  call void @_Lua.Fun.GetObjectPtrFromArray.ObjectPtrArray.unsigned_int(ptr sret(%class.ObjectPtr) align 4 %ref.tmp9, ptr noundef nonnull align 4 dereferenceable(12) %__Lua_Temp_Obj_Arr_8, i32 noundef 0)
  call void @_Lua.Fun.SetMember.ObjectPtr.ObjectPtr.ObjectPtr.unsigned_long_long(ptr noundef nonnull align 4 dereferenceable(8) %x, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp8, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp9, i64 noundef 3015067042493)
  call void @_Lua.CXXMethod.~ObjectPtr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp9)
  call void @_Lua.CXXMethod.~ObjectPtr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp8)
  call void @_Lua.CXXMethod.ObjectPtrArray(ptr noundef nonnull align 4 dereferenceable(12) %__Lua_Temp_Obj_Arr_9)
  call void @_Lua.Fun.BuildString.char.unsigned_int(ptr sret(%class.ObjectPtr) align 4 %ref.tmp14, ptr noundef @.str.5, i32 noundef 1)
  call void @_Lua.Fun.GetMember.ObjectPtr.ObjectPtr.unsigned_long_long(ptr sret(%class.ObjectPtr) align 4 %ref.tmp13, ptr noundef nonnull align 4 dereferenceable(8) %x, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp14, i64 noundef 3122441224918)
  call void @_Lua.Fun.BuildNumber.double(ptr sret(%class.ObjectPtr) align 4 %ref.tmp15, double noundef 2.000000e+00)
  call void @_Lua.Fun.BuildBinOpExpr.ObjectPtr.ObjectPtr.unsigned_int(ptr sret(%class.ObjectPtr) align 4 %ref.tmp12, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp13, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp15, i32 noundef 14)
  call void @_Lua.Fun.BuildNumber.double(ptr sret(%class.ObjectPtr) align 4 %ref.tmp18, double noundef 1.000000e+00)
  call void @_Lua.Fun.GetMember.ObjectPtr.ObjectPtr.unsigned_long_long(ptr sret(%class.ObjectPtr) align 4 %ref.tmp17, ptr noundef nonnull align 4 dereferenceable(8) %x, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp18, i64 noundef 3173980832481)
  call void @_Lua.Fun.BuildNumber.double(ptr sret(%class.ObjectPtr) align 4 %ref.tmp19, double noundef 1.000000e+00)
  call void @_Lua.Fun.BuildBinOpExpr.ObjectPtr.ObjectPtr.unsigned_int(ptr sret(%class.ObjectPtr) align 4 %ref.tmp16, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp17, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp19, i32 noundef 14)
  call void @_Lua.Fun.BuildBinOpExpr.ObjectPtr.ObjectPtr.unsigned_int(ptr sret(%class.ObjectPtr) align 4 %ref.tmp11, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp12, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp16, i32 noundef 16)
  call void @_Lua.Fun.BuildNumber.double(ptr sret(%class.ObjectPtr) align 4 %ref.tmp22, double noundef 2.000000e+00)
  call void @_Lua.Fun.GetMember.ObjectPtr.ObjectPtr.unsigned_long_long(ptr sret(%class.ObjectPtr) align 4 %ref.tmp21, ptr noundef nonnull align 4 dereferenceable(8) %x, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp22, i64 noundef 3234110374639)
  call void @_Lua.Fun.BuildNumber.double(ptr sret(%class.ObjectPtr) align 4 %ref.tmp23, double noundef 2.000000e+00)
  call void @_Lua.Fun.BuildBinOpExpr.ObjectPtr.ObjectPtr.unsigned_int(ptr sret(%class.ObjectPtr) align 4 %ref.tmp20, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp21, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp23, i32 noundef 14)
  call void @_Lua.Fun.BuildBinOpExpr.ObjectPtr.ObjectPtr.unsigned_int(ptr sret(%class.ObjectPtr) align 4 %ref.tmp10, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp11, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp20, i32 noundef 16)
  call void @_Lua.Fun.PushObjPtrIntoArray.ObjectPtrArray.ObjectPtr(ptr noundef nonnull align 4 dereferenceable(12) %__Lua_Temp_Obj_Arr_9, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp10)
  call void @_Lua.CXXMethod.~ObjectPtr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp10)
  call void @_Lua.CXXMethod.~ObjectPtr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp20)
  call void @_Lua.CXXMethod.~ObjectPtr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp23)
  call void @_Lua.CXXMethod.~ObjectPtr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp21)
  call void @_Lua.CXXMethod.~ObjectPtr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp22)
  call void @_Lua.CXXMethod.~ObjectPtr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp11)
  call void @_Lua.CXXMethod.~ObjectPtr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp16)
  call void @_Lua.CXXMethod.~ObjectPtr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp19)
  call void @_Lua.CXXMethod.~ObjectPtr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp17)
  call void @_Lua.CXXMethod.~ObjectPtr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp18)
  call void @_Lua.CXXMethod.~ObjectPtr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp12)
  call void @_Lua.CXXMethod.~ObjectPtr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp15)
  call void @_Lua.CXXMethod.~ObjectPtr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp13)
  call void @_Lua.CXXMethod.~ObjectPtr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp14)
  call void @_Lua.Fun.GetObjectPtrFromArray.ObjectPtrArray.unsigned_int(ptr sret(%class.ObjectPtr) align 4 %res, ptr noundef nonnull align 4 dereferenceable(12) %__Lua_Temp_Obj_Arr_9, i32 noundef 0)
  %call = call zeroext i1 @_Lua.Fun.ConvertToBool.ObjectPtr(ptr noundef nonnull align 4 dereferenceable(8) %res)
  br i1 %call, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @_Lua.CXXMethod.ObjectPtrArray(ptr noundef nonnull align 4 dereferenceable(12) %__Lua_Temp_Obj_Arr_10)
  call void @_Lua.Fun.BuildNumber.double(ptr sret(%class.ObjectPtr) align 4 %ref.tmp24, double noundef 5.500000e+01)
  call void @_Lua.Fun.PushObjPtrIntoArray.ObjectPtrArray.ObjectPtr(ptr noundef nonnull align 4 dereferenceable(12) %__Lua_Temp_Obj_Arr_10, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp24)
  call void @_Lua.CXXMethod.~ObjectPtr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp24)
  call void @_Lua.Fun.GetObjectPtrFromArray.ObjectPtrArray.unsigned_int(ptr sret(%class.ObjectPtr) align 4 %ref.tmp25, ptr noundef nonnull align 4 dereferenceable(12) %__Lua_Temp_Obj_Arr_10, i32 noundef 0)
  call void @_Lua.Fun.BuildModifyExpr.ObjectPtr.ObjectPtr(ptr noundef nonnull align 4 dereferenceable(8) %res, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp25)
  call void @_Lua.CXXMethod.~ObjectPtr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp25)
  call void @_Lua.CXXMethod.~ObjectPtrArray(ptr noundef nonnull align 4 dereferenceable(12) %__Lua_Temp_Obj_Arr_10)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  store i1 false, ptr %nrvo, align 1
  call void @_Lua.CXXMethod.ObjectPtrArray(ptr noundef nonnull align 4 dereferenceable(12) %agg.result)
  call void @_Lua.Fun.PushObjPtrIntoArray.ObjectPtrArray.ObjectPtr(ptr noundef nonnull align 4 dereferenceable(12) %agg.result, ptr noundef nonnull align 4 dereferenceable(8) %res)
  call void @_Lua.Fun.BuildNumber.double(ptr sret(%class.ObjectPtr) align 4 %ref.tmp26, double noundef 2.000000e+00)
  call void @_Lua.Fun.PushObjPtrIntoArray.ObjectPtrArray.ObjectPtr(ptr noundef nonnull align 4 dereferenceable(12) %agg.result, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp26)
  store i1 true, ptr %nrvo, align 1
  call void @_Lua.CXXMethod.~ObjectPtr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp26)
  %nrvo.val = load i1, ptr %nrvo, align 1
  br i1 %nrvo.val, label %nrvo.skipdtor, label %nrvo.unused

nrvo.unused:                                      ; preds = %if.end
  call void @_Lua.CXXMethod.~ObjectPtrArray(ptr noundef nonnull align 4 dereferenceable(12) %agg.result)
  br label %nrvo.skipdtor

nrvo.skipdtor:                                    ; preds = %nrvo.unused, %if.end
  call void @_Lua.CXXMethod.~ObjectPtr(ptr noundef nonnull align 4 dereferenceable(8) %res)
  call void @_Lua.CXXMethod.~ObjectPtrArray(ptr noundef nonnull align 4 dereferenceable(12) %__Lua_Temp_Obj_Arr_9)
  call void @_Lua.CXXMethod.~ObjectPtrArray(ptr noundef nonnull align 4 dereferenceable(12) %__Lua_Temp_Obj_Arr_8)
  call void @_Lua.CXXMethod.~ObjectPtr(ptr noundef nonnull align 4 dereferenceable(8) %x)
  call void @_Lua.CXXMethod.~ObjectPtrArray(ptr noundef nonnull align 4 dereferenceable(12) %__Lua_Temp_Obj_Arr_7)
  call void @_Lua.CXXMethod.~ObjectPtr(ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Table_1)
  call void @_Lua.CXXMethod.~ObjectPtrArray(ptr noundef nonnull align 4 dereferenceable(12) %__Lua_Temp_Obj_Arr_6)
  call void @_Lua.CXXMethod.~ObjectPtrArray(ptr noundef nonnull align 4 dereferenceable(12) %VarList)
  ret void
}

; Function Attrs: noinline nounwind optnone
define dso_local void @_Lua.Fun.__Lua_Temp_Method_3.ObjectPtr.ObjectPtrArray(ptr noalias sret(%class.ObjectPtrArray) align 4 %agg.result, ptr noundef nonnull align 4 dereferenceable(8) %Base, ptr noundef nonnull align 4 dereferenceable(12) %Parms) #2 {
entry:
  %result.ptr = alloca ptr, align 4
  %Base.addr = alloca ptr, align 4
  %Parms.addr = alloca ptr, align 4
  %VarList = alloca %class.ObjectPtrArray, align 4
  %t = alloca %class.ObjectPtrArray, align 4
  %nrvo = alloca i1, align 1
  store ptr %agg.result, ptr %result.ptr, align 4
  store ptr %Base, ptr %Base.addr, align 4
  store ptr %Parms, ptr %Parms.addr, align 4
  %0 = load ptr, ptr %Parms.addr, align 4
  call void @_Lua.Fun.GetSubArray.ObjectPtrArray.unsigned_int(ptr sret(%class.ObjectPtrArray) align 4 %VarList, ptr noundef nonnull align 4 dereferenceable(12) %0, i32 noundef 0)
  call void @_Lua.CXXMethod.ObjectPtrArray.ObjectPtrArray(ptr noundef nonnull align 4 dereferenceable(12) %t, ptr noundef nonnull align 4 dereferenceable(12) %VarList)
  store i1 false, ptr %nrvo, align 1
  call void @_Lua.CXXMethod.ObjectPtrArray(ptr noundef nonnull align 4 dereferenceable(12) %agg.result)
  call void @_Lua.Fun.PushArrayIntoArray.ObjectPtrArray.ObjectPtrArray(ptr noundef nonnull align 4 dereferenceable(12) %agg.result, ptr noundef nonnull align 4 dereferenceable(12) %t)
  store i1 true, ptr %nrvo, align 1
  %nrvo.val = load i1, ptr %nrvo, align 1
  br i1 %nrvo.val, label %nrvo.skipdtor, label %nrvo.unused

nrvo.unused:                                      ; preds = %entry
  call void @_Lua.CXXMethod.~ObjectPtrArray(ptr noundef nonnull align 4 dereferenceable(12) %agg.result)
  br label %nrvo.skipdtor

nrvo.skipdtor:                                    ; preds = %nrvo.unused, %entry
  call void @_Lua.CXXMethod.~ObjectPtrArray(ptr noundef nonnull align 4 dereferenceable(12) %t)
  call void @_Lua.CXXMethod.~ObjectPtrArray(ptr noundef nonnull align 4 dereferenceable(12) %VarList)
  ret void
}

; Function Attrs: noinline nounwind optnone
define dso_local void @_Lua.Fun.__Lua_Temp_Method_4.ObjectPtr.ObjectPtrArray(ptr noalias sret(%class.ObjectPtrArray) align 4 %agg.result, ptr noundef nonnull align 4 dereferenceable(8) %Base, ptr noundef nonnull align 4 dereferenceable(12) %Parms) #2 {
entry:
  %result.ptr = alloca ptr, align 4
  %Base.addr = alloca ptr, align 4
  %Parms.addr = alloca ptr, align 4
  %f = alloca %class.ObjectPtr, align 4
  %args = alloca %class.ObjectPtr, align 4
  %__Lua_Temp_Obj_Arr_13 = alloca %class.ObjectPtrArray, align 4
  %ref.tmp = alloca %class.ObjectPtr, align 4
  %ref.tmp1 = alloca %class.ObjectPtr, align 4
  %ref.tmp2 = alloca %class.ObjectPtr, align 4
  %__Lua_Temp_Obj_Arr_14 = alloca %class.ObjectPtrArray, align 4
  %ref.tmp3 = alloca %class.ObjectPtr, align 4
  %ref.tmp4 = alloca %class.ObjectPtrArray, align 4
  %ref.tmp5 = alloca %class.ObjectPtr, align 4
  %ref.tmp6 = alloca %class.ObjectPtr, align 4
  %ref.tmp7 = alloca %class.ObjectPtr, align 4
  %ref.tmp8 = alloca %class.ObjectPtr, align 4
  %nrvo = alloca i1, align 1
  %ref.tmp9 = alloca %class.ObjectPtr, align 4
  %ref.tmp10 = alloca %class.ObjectPtrArray, align 4
  store ptr %agg.result, ptr %result.ptr, align 4
  store ptr %Base, ptr %Base.addr, align 4
  store ptr %Parms, ptr %Parms.addr, align 4
  %0 = load ptr, ptr %Parms.addr, align 4
  call void @_Lua.Fun.GetObjectPtrFromArray.ObjectPtrArray.unsigned_int(ptr sret(%class.ObjectPtr) align 4 %f, ptr noundef nonnull align 4 dereferenceable(12) %0, i32 noundef 0)
  %1 = load ptr, ptr %Parms.addr, align 4
  call void @_Lua.Fun.GetObjectPtrFromArray.ObjectPtrArray.unsigned_int(ptr sret(%class.ObjectPtr) align 4 %args, ptr noundef nonnull align 4 dereferenceable(12) %1, i32 noundef 1)
  call void @_Lua.CXXMethod.ObjectPtrArray(ptr noundef nonnull align 4 dereferenceable(12) %__Lua_Temp_Obj_Arr_13)
  call void @_Lua.Fun.PushObjPtrIntoArray.ObjectPtrArray.ObjectPtr(ptr noundef nonnull align 4 dereferenceable(12) %__Lua_Temp_Obj_Arr_13, ptr noundef nonnull align 4 dereferenceable(8) %args)
  call void @_Lua.Fun.BuildNumber.double(ptr sret(%class.ObjectPtr) align 4 %ref.tmp, double noundef 1.000000e+00)
  call void @_Lua.Fun.PushObjPtrIntoArray.ObjectPtrArray.ObjectPtr(ptr noundef nonnull align 4 dereferenceable(12) %__Lua_Temp_Obj_Arr_13, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp)
  call void @_Lua.Fun.BuildString.char.unsigned_int(ptr sret(%class.ObjectPtr) align 4 %ref.tmp2, ptr noundef @.str.5, i32 noundef 1)
  call void @_Lua.Fun.GetMember.ObjectPtr.ObjectPtr.unsigned_long_long(ptr sret(%class.ObjectPtr) align 4 %ref.tmp1, ptr noundef nonnull align 4 dereferenceable(8) %args, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp2, i64 noundef 3985729651615)
  call void @_Lua.Fun.PushObjPtrIntoArray.ObjectPtrArray.ObjectPtr(ptr noundef nonnull align 4 dereferenceable(12) %__Lua_Temp_Obj_Arr_13, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp1)
  call void @_Lua.CXXMethod.ObjectPtrArray(ptr noundef nonnull align 4 dereferenceable(12) %__Lua_Temp_Obj_Arr_14)
  call void @_Lua.Fun.BuildString.char.unsigned_int(ptr sret(%class.ObjectPtr) align 4 %ref.tmp7, ptr noundef @.str.8, i32 noundef 5)
  call void @_Lua.Fun.GetMember.ObjectPtr.ObjectPtr.unsigned_long_long(ptr sret(%class.ObjectPtr) align 4 %ref.tmp6, ptr noundef nonnull align 4 dereferenceable(8) @_Lua.Var._ENV, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp7, i64 noundef 3869765534597)
  call void @_Lua.Fun.BuildString.char.unsigned_int(ptr sret(%class.ObjectPtr) align 4 %ref.tmp8, ptr noundef @.str.9, i32 noundef 6)
  call void @_Lua.Fun.GetMember.ObjectPtr.ObjectPtr.unsigned_long_long(ptr sret(%class.ObjectPtr) align 4 %ref.tmp5, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp6, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp8, i64 noundef 3895535338378)
  call void @_Lua.Fun.BuildCallExpr.ObjectPtr.ObjectPtrArray(ptr sret(%class.ObjectPtrArray) align 4 %ref.tmp4, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp5, ptr noundef nonnull align 4 dereferenceable(12) %__Lua_Temp_Obj_Arr_13)
  call void @_Lua.Fun.GetObjectPtrFromArray.ObjectPtrArray.unsigned_int(ptr sret(%class.ObjectPtr) align 4 %ref.tmp3, ptr noundef nonnull align 4 dereferenceable(12) %ref.tmp4, i32 noundef 0)
  call void @_Lua.Fun.PushObjPtrIntoArray.ObjectPtrArray.ObjectPtr(ptr noundef nonnull align 4 dereferenceable(12) %__Lua_Temp_Obj_Arr_14, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp3)
  call void @_Lua.CXXMethod.~ObjectPtr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp3)
  call void @_Lua.CXXMethod.~ObjectPtrArray(ptr noundef nonnull align 4 dereferenceable(12) %ref.tmp4)
  call void @_Lua.CXXMethod.~ObjectPtr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp5)
  call void @_Lua.CXXMethod.~ObjectPtr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp8)
  call void @_Lua.CXXMethod.~ObjectPtr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp6)
  call void @_Lua.CXXMethod.~ObjectPtr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp7)
  store i1 false, ptr %nrvo, align 1
  call void @_Lua.CXXMethod.ObjectPtrArray(ptr noundef nonnull align 4 dereferenceable(12) %agg.result)
  call void @_Lua.Fun.BuildCallExpr.ObjectPtr.ObjectPtrArray(ptr sret(%class.ObjectPtrArray) align 4 %ref.tmp10, ptr noundef nonnull align 4 dereferenceable(8) %f, ptr noundef nonnull align 4 dereferenceable(12) %__Lua_Temp_Obj_Arr_14)
  call void @_Lua.Fun.GetObjectPtrFromArray.ObjectPtrArray.unsigned_int(ptr sret(%class.ObjectPtr) align 4 %ref.tmp9, ptr noundef nonnull align 4 dereferenceable(12) %ref.tmp10, i32 noundef 0)
  call void @_Lua.Fun.PushObjPtrIntoArray.ObjectPtrArray.ObjectPtr(ptr noundef nonnull align 4 dereferenceable(12) %agg.result, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp9)
  call void @_Lua.CXXMethod.~ObjectPtr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp9)
  call void @_Lua.CXXMethod.~ObjectPtrArray(ptr noundef nonnull align 4 dereferenceable(12) %ref.tmp10)
  store i1 true, ptr %nrvo, align 1
  %nrvo.val = load i1, ptr %nrvo, align 1
  br i1 %nrvo.val, label %nrvo.skipdtor, label %nrvo.unused

nrvo.unused:                                      ; preds = %entry
  call void @_Lua.CXXMethod.~ObjectPtrArray(ptr noundef nonnull align 4 dereferenceable(12) %agg.result)
  br label %nrvo.skipdtor

nrvo.skipdtor:                                    ; preds = %nrvo.unused, %entry
  call void @_Lua.CXXMethod.~ObjectPtrArray(ptr noundef nonnull align 4 dereferenceable(12) %__Lua_Temp_Obj_Arr_14)
  call void @_Lua.CXXMethod.~ObjectPtr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp1)
  call void @_Lua.CXXMethod.~ObjectPtr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp2)
  call void @_Lua.CXXMethod.~ObjectPtr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp)
  call void @_Lua.CXXMethod.~ObjectPtrArray(ptr noundef nonnull align 4 dereferenceable(12) %__Lua_Temp_Obj_Arr_13)
  call void @_Lua.CXXMethod.~ObjectPtr(ptr noundef nonnull align 4 dereferenceable(8) %args)
  call void @_Lua.CXXMethod.~ObjectPtr(ptr noundef nonnull align 4 dereferenceable(8) %f)
  ret void
}

declare void @_Lua.Fun.GetObjectPtrFromArray.ObjectPtrArray.unsigned_int(ptr sret(%class.ObjectPtr) align 4, ptr noundef nonnull align 4 dereferenceable(12), i32 noundef) #1

declare void @_Lua.Fun.BuildBinOpExpr.ObjectPtr.ObjectPtr.unsigned_int(ptr sret(%class.ObjectPtr) align 4, ptr noundef nonnull align 4 dereferenceable(8), ptr noundef nonnull align 4 dereferenceable(8), i32 noundef) #1

declare void @_Lua.Fun.BuildNumber.double(ptr sret(%class.ObjectPtr) align 4, double noundef) #1

declare void @_Lua.Fun.BuildEmptyTable(ptr sret(%class.ObjectPtr) align 4) #1

declare void @_Lua.Fun.AddMember.ObjectPtr.ObjectPtr.unsigned_long_long(ptr noundef nonnull align 4 dereferenceable(8), ptr noundef nonnull align 4 dereferenceable(8), i64 noundef) #1

declare void @_Lua.Fun.BuildEmptyArr(ptr sret(%class.ObjectPtrArray) align 4) #1

declare void @_Lua.Fun.GetSubArray.ObjectPtrArray.unsigned_int(ptr sret(%class.ObjectPtrArray) align 4, ptr noundef nonnull align 4 dereferenceable(12), i32 noundef) #1

declare void @_Lua.CXXMethod.ObjectPtrArray.ObjectPtrArray(ptr noundef nonnull align 4 dereferenceable(12), ptr noundef nonnull align 4 dereferenceable(12)) unnamed_addr #1

declare void @_Lua.Fun.PushArrayIntoArray.ObjectPtrArray.ObjectPtrArray(ptr noundef nonnull align 4 dereferenceable(12), ptr noundef nonnull align 4 dereferenceable(12)) #1

declare void @_Lua.Fun.SetMember.ObjectPtr.ObjectPtr.ObjectPtr.unsigned_long_long(ptr noundef nonnull align 4 dereferenceable(8), ptr noundef nonnull align 4 dereferenceable(8), ptr noundef nonnull align 4 dereferenceable(8), i64 noundef) #1

declare void @_Lua.Fun.AddMembers.ObjectPtr.ObjectPtrArray.unsigned_long_long(ptr noundef nonnull align 4 dereferenceable(8), ptr noundef nonnull align 4 dereferenceable(12), i64 noundef) #1

declare void @_Lua.Fun.GetObjectPtrArraySize.ObjectPtrArray(ptr sret(%class.ObjectPtr) align 4, ptr noundef nonnull align 4 dereferenceable(12)) #1

declare zeroext i1 @_Lua.Fun.ConvertToBool.ObjectPtr(ptr noundef nonnull align 4 dereferenceable(8)) #1

declare void @_Lua.Fun.GetObjectPtrArrayElement.ObjectPtrArray.ObjectPtr(ptr sret(%class.ObjectPtr) align 4, ptr noundef nonnull align 4 dereferenceable(12), ptr noundef nonnull align 4 dereferenceable(8)) #1

declare void @_Lua.Fun.BuildUnOpExpr.ObjectPtr.unsigned_int(ptr sret(%class.ObjectPtr) align 4, ptr noundef nonnull align 4 dereferenceable(8), i32 noundef) #1

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
!1 = !{!"clang version 17.0.5 (https://github.com/jimihem/llvm-project.git 523a87b6b773cabe3948f04f74fc7f8343095cc5)"}
