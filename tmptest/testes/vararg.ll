; ModuleID = 'C:\llvm\src\tmptest\testes\vararg.lua'
source_filename = "C:\\llvm\\src\\tmptest\\testes\\vararg.lua"
target datalayout = "e-S32-p:32:32:32-i64:64:64-f64:64:64"
target triple = "lua_v53-pc-luaInterp-itanium_elf"

%class.ObjectPtr = type { ptr, ptr }
%class.ObjectPtrArray = type { ptr, i32, i32 }

@_Lua.Var.__Lua_Temp_Closure_1 = global %class.ObjectPtr zeroinitializer, align 4
@__dso_handle = external hidden global i8
@.str = private unnamed_addr constant [15 x i8] c"testing vararg\00", align 1
@_Lua.Var._ENV = external global %class.ObjectPtr, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"print\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"#\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"n\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"select\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"assert\00", align 1
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @_GLOBAL__sub_I_vararg.lua, ptr null }]

; Function Attrs: noinline nounwind
define internal void @__cxx_global_var_init() #0 {
entry:
  %ref.tmp = alloca ptr, align 4
  store ptr @_Lua.Fun.__Lua_Temp_Method_0.ObjectPtr.ObjectPtrArray, ptr %ref.tmp, align 4
  call void @_Lua.Fun.BuildFunctionWithMethod.MethodTy(ptr sret(%class.ObjectPtr) align 4 @_Lua.Var.__Lua_Temp_Closure_1, ptr noundef nonnull align 4 dereferenceable(4) %ref.tmp)
  %0 = call i32 @__cxa_atexit(ptr @_Lua.CXXMethod.~ObjectPtr, ptr @_Lua.Var.__Lua_Temp_Closure_1, ptr @__dso_handle) #3
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
  store ptr %agg.result, ptr %result.ptr, align 4
  store ptr %Base, ptr %Base.addr, align 4
  store ptr %Parms, ptr %Parms.addr, align 4
  call void @_Lua.CXXMethod.ObjectPtrArray(ptr noundef nonnull align 4 dereferenceable(12) %__Lua_Temp_Obj_Arr_0)
  call void @_Lua.Fun.BuildString.char.unsigned_int(ptr sret(%class.ObjectPtr) align 4 %ref.tmp, ptr noundef @.str, i32 noundef 14)
  call void @_Lua.Fun.PushObjPtrIntoArray.ObjectPtrArray.ObjectPtr(ptr noundef nonnull align 4 dereferenceable(12) %__Lua_Temp_Obj_Arr_0, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp)
  call void @_Lua.CXXMethod.~ObjectPtr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp)
  call void @_Lua.Fun.BuildString.char.unsigned_int(ptr sret(%class.ObjectPtr) align 4 %ref.tmp2, ptr noundef @.str.1, i32 noundef 5)
  call void @_Lua.Fun.GetMember.ObjectPtr.ObjectPtr.unsigned_long_long(ptr sret(%class.ObjectPtr) align 4 %ref.tmp1, ptr noundef nonnull align 4 dereferenceable(8) @_Lua.Var._ENV, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp2, i64 noundef 1623497638266)
  call void @_Lua.Fun.BuildCallExpr.ObjectPtr.ObjectPtrArray(ptr sret(%class.ObjectPtrArray) align 4 %agg.tmp.ensured, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp1, ptr noundef nonnull align 4 dereferenceable(12) %__Lua_Temp_Obj_Arr_0)
  call void @_Lua.CXXMethod.~ObjectPtrArray(ptr noundef nonnull align 4 dereferenceable(12) %agg.tmp.ensured)
  call void @_Lua.CXXMethod.~ObjectPtr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp1)
  call void @_Lua.CXXMethod.~ObjectPtr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp2)
  call void @_Lua.Fun.BuildNil(ptr sret(%class.ObjectPtr) align 4 %f)
  call void @_Lua.Fun.BuildFunction(ptr sret(%class.ObjectPtr) align 4 %__Lua_Temp_Closure_0)
  store ptr @_Lua.Fun.__Lua_Temp_Method_1.ObjectPtr.ObjectPtrArray, ptr %ref.tmp3, align 4
  call void @_Lua.Fun.SetFunctionMethod.ObjectPtr.MethodTy(ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Closure_0, ptr noundef nonnull align 4 dereferenceable(4) %ref.tmp3)
  call void @_Lua.Fun.BuildModifyExpr.ObjectPtr.ObjectPtr(ptr noundef nonnull align 4 dereferenceable(8) %f, ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Closure_0)
  call void @_Lua.Fun.BuildEmptyArr(ptr sret(%class.ObjectPtrArray) align 4 %agg.result)
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
  call void @_Lua.Fun.BuildString.char.unsigned_int(ptr sret(%class.ObjectPtr) align 4 %ref.tmp, ptr noundef @.str.2, i32 noundef 1)
  call void @_Lua.Fun.PushObjPtrIntoArray.ObjectPtrArray.ObjectPtr(ptr noundef nonnull align 4 dereferenceable(12) %__Lua_Temp_Obj_Arr_1, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp)
  call void @_Lua.CXXMethod.~ObjectPtr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp)
  call void @_Lua.Fun.PushArrayIntoArray.ObjectPtrArray.ObjectPtrArray(ptr noundef nonnull align 4 dereferenceable(12) %__Lua_Temp_Obj_Arr_1, ptr noundef nonnull align 4 dereferenceable(12) %VarList)
  call void @_Lua.Fun.BuildString.char.unsigned_int(ptr sret(%class.ObjectPtr) align 4 %ref.tmp1, ptr noundef @.str.3, i32 noundef 1)
  call void @_Lua.Fun.BuildString.char.unsigned_int(ptr sret(%class.ObjectPtr) align 4 %ref.tmp5, ptr noundef @.str.4, i32 noundef 6)
  call void @_Lua.Fun.GetMember.ObjectPtr.ObjectPtr.unsigned_long_long(ptr sret(%class.ObjectPtr) align 4 %ref.tmp4, ptr noundef nonnull align 4 dereferenceable(8) @_Lua.Var._ENV, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp5, i64 noundef 1919850381759)
  call void @_Lua.Fun.BuildCallExpr.ObjectPtr.ObjectPtrArray(ptr sret(%class.ObjectPtrArray) align 4 %ref.tmp3, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp4, ptr noundef nonnull align 4 dereferenceable(12) %__Lua_Temp_Obj_Arr_1)
  call void @_Lua.Fun.GetObjectPtrFromArray.ObjectPtrArray.unsigned_int(ptr sret(%class.ObjectPtr) align 4 %ref.tmp2, ptr noundef nonnull align 4 dereferenceable(12) %ref.tmp3, i32 noundef 0)
  call void @_Lua.Fun.SetMember.ObjectPtr.ObjectPtr.ObjectPtr.unsigned_long_long(ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Table_0, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp1, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp2, i64 noundef 1919850381755)
  call void @_Lua.CXXMethod.~ObjectPtr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp2)
  call void @_Lua.CXXMethod.~ObjectPtrArray(ptr noundef nonnull align 4 dereferenceable(12) %ref.tmp3)
  call void @_Lua.CXXMethod.~ObjectPtr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp4)
  call void @_Lua.CXXMethod.~ObjectPtr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp5)
  call void @_Lua.CXXMethod.~ObjectPtr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp1)
  call void @_Lua.Fun.AddMembers.ObjectPtr.ObjectPtrArray.unsigned_long_long(ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Table_0, ptr noundef nonnull align 4 dereferenceable(12) %VarList, i64 noundef 1997159793105)
  call void @_Lua.CXXMethod.ObjectPtrArray(ptr noundef nonnull align 4 dereferenceable(12) %__Lua_Temp_Obj_Arr_2)
  call void @_Lua.Fun.PushObjPtrIntoArray.ObjectPtrArray.ObjectPtr(ptr noundef nonnull align 4 dereferenceable(12) %__Lua_Temp_Obj_Arr_2, ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Table_0)
  call void @_Lua.Fun.GetObjectPtrFromArray.ObjectPtrArray.unsigned_int(ptr sret(%class.ObjectPtr) align 4 %x, ptr noundef nonnull align 4 dereferenceable(12) %__Lua_Temp_Obj_Arr_2, i32 noundef 0)
  call void @_Lua.CXXMethod.ObjectPtrArray(ptr noundef nonnull align 4 dereferenceable(12) %__Lua_Temp_Obj_Arr_3)
  call void @_Lua.Fun.BuildString.char.unsigned_int(ptr sret(%class.ObjectPtr) align 4 %ref.tmp8, ptr noundef @.str.3, i32 noundef 1)
  call void @_Lua.Fun.GetMember.ObjectPtr.ObjectPtr.unsigned_long_long(ptr sret(%class.ObjectPtr) align 4 %ref.tmp7, ptr noundef nonnull align 4 dereferenceable(8) %x, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp8, i64 noundef 2065879269856)
  call void @_Lua.Fun.GetObjectPtrArraySize.ObjectPtrArray(ptr sret(%class.ObjectPtr) align 4 %ref.tmp9, ptr noundef nonnull align 4 dereferenceable(12) %t)
  call void @_Lua.Fun.BuildBinOpExpr.ObjectPtr.ObjectPtr.unsigned_int(ptr sret(%class.ObjectPtr) align 4 %ref.tmp6, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp7, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp9, i32 noundef 14)
  call void @_Lua.Fun.PushObjPtrIntoArray.ObjectPtrArray.ObjectPtr(ptr noundef nonnull align 4 dereferenceable(12) %__Lua_Temp_Obj_Arr_3, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp6)
  call void @_Lua.CXXMethod.~ObjectPtr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp6)
  call void @_Lua.CXXMethod.~ObjectPtr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp9)
  call void @_Lua.CXXMethod.~ObjectPtr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp7)
  call void @_Lua.CXXMethod.~ObjectPtr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp8)
  call void @_Lua.Fun.BuildString.char.unsigned_int(ptr sret(%class.ObjectPtr) align 4 %ref.tmp11, ptr noundef @.str.5, i32 noundef 6)
  call void @_Lua.Fun.GetMember.ObjectPtr.ObjectPtr.unsigned_long_long(ptr sret(%class.ObjectPtr) align 4 %ref.tmp10, ptr noundef nonnull align 4 dereferenceable(8) @_Lua.Var._ENV, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp11, i64 noundef 2027224564184)
  call void @_Lua.Fun.BuildCallExpr.ObjectPtr.ObjectPtrArray(ptr sret(%class.ObjectPtrArray) align 4 %agg.tmp.ensured, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp10, ptr noundef nonnull align 4 dereferenceable(12) %__Lua_Temp_Obj_Arr_3)
  call void @_Lua.CXXMethod.~ObjectPtrArray(ptr noundef nonnull align 4 dereferenceable(12) %agg.tmp.ensured)
  call void @_Lua.CXXMethod.~ObjectPtr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp10)
  call void @_Lua.CXXMethod.~ObjectPtr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp11)
  call void @_Lua.Fun.BuildNumber.double(ptr sret(%class.ObjectPtr) align 4 %i, double noundef 1.000000e+00)
  call void @_Lua.Fun.BuildString.char.unsigned_int(ptr sret(%class.ObjectPtr) align 4 %ref.tmp12, ptr noundef @.str.3, i32 noundef 1)
  call void @_Lua.Fun.GetMember.ObjectPtr.ObjectPtr.unsigned_long_long(ptr sret(%class.ObjectPtr) align 4 %__Lua_Temp_Obj_0, ptr noundef nonnull align 4 dereferenceable(8) %x, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp12, i64 noundef 2173253452281)
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
  call void @_Lua.Fun.GetMember.ObjectPtr.ObjectPtr.unsigned_long_long(ptr sret(%class.ObjectPtr) align 4 %ref.tmp24, ptr noundef nonnull align 4 dereferenceable(8) %a, ptr noundef nonnull align 4 dereferenceable(8) %i, i64 noundef 2254857830923)
  call void @_Lua.Fun.GetMember.ObjectPtr.ObjectPtr.unsigned_long_long(ptr sret(%class.ObjectPtr) align 4 %ref.tmp25, ptr noundef nonnull align 4 dereferenceable(8) %x, ptr noundef nonnull align 4 dereferenceable(8) %i, i64 noundef 2289217569299)
  call void @_Lua.Fun.BuildBinOpExpr.ObjectPtr.ObjectPtr.unsigned_int(ptr sret(%class.ObjectPtr) align 4 %ref.tmp23, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp24, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp25, i32 noundef 14)
  call void @_Lua.Fun.GetMember.ObjectPtr.ObjectPtr.unsigned_long_long(ptr sret(%class.ObjectPtr) align 4 %ref.tmp27, ptr noundef nonnull align 4 dereferenceable(8) %x, ptr noundef nonnull align 4 dereferenceable(8) %i, i64 noundef 2327872274972)
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
  call void @_Lua.Fun.BuildString.char.unsigned_int(ptr sret(%class.ObjectPtr) align 4 %ref.tmp31, ptr noundef @.str.5, i32 noundef 6)
  call void @_Lua.Fun.GetMember.ObjectPtr.ObjectPtr.unsigned_long_long(ptr sret(%class.ObjectPtr) align 4 %ref.tmp30, ptr noundef nonnull align 4 dereferenceable(8) @_Lua.Var._ENV, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp31, i64 noundef 2211908157955)
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
  call void @_Lua.Fun.BuildString.char.unsigned_int(ptr sret(%class.ObjectPtr) align 4 %ref.tmp34, ptr noundef @.str.3, i32 noundef 1)
  call void @_Lua.Fun.GetMember.ObjectPtr.ObjectPtr.unsigned_long_long(ptr sret(%class.ObjectPtr) align 4 %ref.tmp33, ptr noundef nonnull align 4 dereferenceable(8) %x, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp34, i64 noundef 2448131359289)
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

declare void @_Lua.Fun.BuildEmptyArr(ptr sret(%class.ObjectPtrArray) align 4) #1

declare void @_Lua.Fun.GetObjectPtrFromArray.ObjectPtrArray.unsigned_int(ptr sret(%class.ObjectPtr) align 4, ptr noundef nonnull align 4 dereferenceable(12), i32 noundef) #1

declare void @_Lua.Fun.GetSubArray.ObjectPtrArray.unsigned_int(ptr sret(%class.ObjectPtrArray) align 4, ptr noundef nonnull align 4 dereferenceable(12), i32 noundef) #1

declare void @_Lua.CXXMethod.ObjectPtrArray.ObjectPtrArray(ptr noundef nonnull align 4 dereferenceable(12), ptr noundef nonnull align 4 dereferenceable(12)) unnamed_addr #1

declare void @_Lua.Fun.BuildEmptyTable(ptr sret(%class.ObjectPtr) align 4) #1

declare void @_Lua.Fun.PushArrayIntoArray.ObjectPtrArray.ObjectPtrArray(ptr noundef nonnull align 4 dereferenceable(12), ptr noundef nonnull align 4 dereferenceable(12)) #1

declare void @_Lua.Fun.SetMember.ObjectPtr.ObjectPtr.ObjectPtr.unsigned_long_long(ptr noundef nonnull align 4 dereferenceable(8), ptr noundef nonnull align 4 dereferenceable(8), ptr noundef nonnull align 4 dereferenceable(8), i64 noundef) #1

declare void @_Lua.Fun.AddMembers.ObjectPtr.ObjectPtrArray.unsigned_long_long(ptr noundef nonnull align 4 dereferenceable(8), ptr noundef nonnull align 4 dereferenceable(12), i64 noundef) #1

declare void @_Lua.Fun.BuildBinOpExpr.ObjectPtr.ObjectPtr.unsigned_int(ptr sret(%class.ObjectPtr) align 4, ptr noundef nonnull align 4 dereferenceable(8), ptr noundef nonnull align 4 dereferenceable(8), i32 noundef) #1

declare void @_Lua.Fun.GetObjectPtrArraySize.ObjectPtrArray(ptr sret(%class.ObjectPtr) align 4, ptr noundef nonnull align 4 dereferenceable(12)) #1

declare void @_Lua.Fun.BuildNumber.double(ptr sret(%class.ObjectPtr) align 4, double noundef) #1

declare zeroext i1 @_Lua.Fun.ConvertToBool.ObjectPtr(ptr noundef nonnull align 4 dereferenceable(8)) #1

declare void @_Lua.Fun.GetObjectPtrArrayElement.ObjectPtrArray.ObjectPtr(ptr sret(%class.ObjectPtr) align 4, ptr noundef nonnull align 4 dereferenceable(12), ptr noundef nonnull align 4 dereferenceable(8)) #1

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
