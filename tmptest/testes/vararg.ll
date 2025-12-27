; ModuleID = 'C:\llvm\src\tmptest\testes\vararg.lua'
source_filename = "C:\\llvm\\src\\tmptest\\testes\\vararg.lua"
target datalayout = "e-S32-p:32:32:32-i64:64:64-f64:64:64"
target triple = "lua_v53-pc-luaInterp-itanium_elf"

%class.ObjectPtr = type { ptr, ptr }
%class.ObjectPtrArray = type { ptr, i32, i32 }

@_Lua_Var___Lua_Temp_Closure_1 = global %class.ObjectPtr zeroinitializer, align 4
@__dso_handle = external hidden global i8
@.str = private unnamed_addr constant [15 x i8] c"testing vararg\00", align 1
@_Lua_Var__ENV = external global %class.ObjectPtr, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"print\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"#\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"n\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"select\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"assert\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"i\00", align 1
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @_GLOBAL__sub_I_vararg.lua, ptr null }]

; Function Attrs: noinline nounwind
define internal void @__cxx_global_var_init() #0 {
entry:
  %ref.tmp = alloca ptr, align 4
  store ptr @_Lua_Fun___Lua_Temp_Method_0_class_ObjectPtr_&const_class_ObjectPtrArray_&const, ptr %ref.tmp, align 4
  call void @_Lua_Fun_BuildFunctionWithMethod_const_MethodTy_&(ptr sret(%class.ObjectPtr) align 4 @_Lua_Var___Lua_Temp_Closure_1, ptr noundef nonnull align 4 dereferenceable(4) %ref.tmp)
  %0 = call i32 @__cxa_atexit(ptr @_Lua_CXXMethod_~ObjectPtr, ptr @_Lua_Var___Lua_Temp_Closure_1, ptr @__dso_handle) #3
  ret void
}

declare void @_Lua_Fun_BuildFunctionWithMethod_const_MethodTy_&(ptr sret(%class.ObjectPtr) align 4, ptr noundef nonnull align 4 dereferenceable(4)) #1

; Function Attrs: noinline nounwind optnone
define dso_local void @_Lua_Fun___Lua_Temp_Method_0_class_ObjectPtr_&const_class_ObjectPtrArray_&const(ptr noalias sret(%class.ObjectPtrArray) align 4 %agg.result, ptr noundef nonnull align 4 dereferenceable(8) %Base, ptr noundef nonnull align 4 dereferenceable(12) %Parms) #2 {
entry:
  %result.ptr = alloca ptr, align 4
  %Base.addr = alloca ptr, align 4
  %Parms.addr = alloca ptr, align 4
  %__Lua_Temp_Obj_Arr_0 = alloca %class.ObjectPtrArray, align 4
  %ref.tmp = alloca %class.ObjectPtr, align 4
  %ref.tmp1 = alloca %class.ObjectPtr, align 4
  %ref.tmp2 = alloca %class.ObjectPtr, align 4
  %tmp = alloca %class.ObjectPtrArray, align 4
  %f = alloca %class.ObjectPtr, align 4
  %__Lua_Temp_Closure_0 = alloca %class.ObjectPtr, align 4
  %ref.tmp3 = alloca ptr, align 4
  store ptr %agg.result, ptr %result.ptr, align 4
  store ptr %Base, ptr %Base.addr, align 4
  store ptr %Parms, ptr %Parms.addr, align 4
  call void @_Lua_CXXMethod_ObjectPtrArray(ptr noundef nonnull align 4 dereferenceable(12) %__Lua_Temp_Obj_Arr_0)
  call void @_Lua_Fun_BuildString_char_*_unsigned_int(ptr sret(%class.ObjectPtr) align 4 %ref.tmp, ptr noundef @.str, i32 noundef 14)
  call void @_Lua_Fun_PushObjPtrIntoArray_ObjectPtrArray_&_const_ObjectPtr_&(ptr noundef nonnull align 4 dereferenceable(12) %__Lua_Temp_Obj_Arr_0, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp)
  call void @_Lua_CXXMethod_~ObjectPtr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp)
  call void @_Lua_Fun_BuildString_char_*_unsigned_int(ptr sret(%class.ObjectPtr) align 4 %ref.tmp2, ptr noundef @.str.1, i32 noundef 5)
  call void @_Lua_Fun_GetMember_const_ObjectPtr_&_const_ObjectPtr_&_unsigned_long_long(ptr sret(%class.ObjectPtr) align 4 %ref.tmp1, ptr noundef nonnull align 4 dereferenceable(8) @_Lua_Var__ENV, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp2, i64 noundef 1705102016909)
  call void @_Lua_Fun_BuildCallExpr_const_ObjectPtr_&_const_ObjectPtrArray_&(ptr sret(%class.ObjectPtrArray) align 4 %tmp, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp1, ptr noundef nonnull align 4 dereferenceable(12) %__Lua_Temp_Obj_Arr_0)
  call void @_Lua_CXXMethod_~ObjectPtr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp1)
  call void @_Lua_CXXMethod_~ObjectPtr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp2)
  call void @_Lua_Fun_BuildNil(ptr sret(%class.ObjectPtr) align 4 %f)
  call void @_Lua_Fun_BuildFunction(ptr sret(%class.ObjectPtr) align 4 %__Lua_Temp_Closure_0)
  store ptr @_Lua_Fun___Lua_Temp_Method_1_class_ObjectPtr_&const_class_ObjectPtrArray_&const, ptr %ref.tmp3, align 4
  call void @_Lua_Fun_SetFunctionMethod_ObjectPtr_&_const_MethodTy_&(ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Closure_0, ptr noundef nonnull align 4 dereferenceable(4) %ref.tmp3)
  call void @_Lua_Fun_BuildModifyExpr_const_ObjectPtr_&_const_ObjectPtr_&(ptr noundef nonnull align 4 dereferenceable(8) %f, ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Closure_0)
  call void @_Lua_CXXMethod_~ObjectPtr(ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Closure_0)
  call void @_Lua_CXXMethod_~ObjectPtr(ptr noundef nonnull align 4 dereferenceable(8) %f)
  call void @_Lua_CXXMethod_~ObjectPtrArray(ptr noundef nonnull align 4 dereferenceable(12) %__Lua_Temp_Obj_Arr_0)
  ret void
}

declare void @_Lua_CXXMethod_~ObjectPtr(ptr noundef nonnull align 4 dereferenceable(8)) unnamed_addr #1

; Function Attrs: nounwind
declare i32 @__cxa_atexit(ptr, ptr, ptr) #3

declare void @_Lua_CXXMethod_ObjectPtrArray(ptr noundef nonnull align 4 dereferenceable(12)) unnamed_addr #1

declare void @_Lua_Fun_PushObjPtrIntoArray_ObjectPtrArray_&_const_ObjectPtr_&(ptr noundef nonnull align 4 dereferenceable(12), ptr noundef nonnull align 4 dereferenceable(8)) #1

declare void @_Lua_Fun_BuildString_char_*_unsigned_int(ptr sret(%class.ObjectPtr) align 4, ptr noundef, i32 noundef) #1

declare void @_Lua_Fun_BuildCallExpr_const_ObjectPtr_&_const_ObjectPtrArray_&(ptr sret(%class.ObjectPtrArray) align 4, ptr noundef nonnull align 4 dereferenceable(8), ptr noundef nonnull align 4 dereferenceable(12)) #1

declare void @_Lua_Fun_GetMember_const_ObjectPtr_&_const_ObjectPtr_&_unsigned_long_long(ptr sret(%class.ObjectPtr) align 4, ptr noundef nonnull align 4 dereferenceable(8), ptr noundef nonnull align 4 dereferenceable(8), i64 noundef) #1

declare void @_Lua_Fun_BuildNil(ptr sret(%class.ObjectPtr) align 4) #1

declare void @_Lua_Fun_BuildFunction(ptr sret(%class.ObjectPtr) align 4) #1

declare void @_Lua_Fun_SetFunctionMethod_ObjectPtr_&_const_MethodTy_&(ptr noundef nonnull align 4 dereferenceable(8), ptr noundef nonnull align 4 dereferenceable(4)) #1

; Function Attrs: noinline nounwind optnone
define dso_local void @_Lua_Fun___Lua_Temp_Method_1_class_ObjectPtr_&const_class_ObjectPtrArray_&const(ptr noalias sret(%class.ObjectPtrArray) align 4 %agg.result, ptr noundef nonnull align 4 dereferenceable(8) %Base, ptr noundef nonnull align 4 dereferenceable(12) %Parms) #2 {
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
  %ref.tmp10 = alloca %class.ObjectPtr, align 4
  %ref.tmp11 = alloca %class.ObjectPtr, align 4
  %ref.tmp12 = alloca %class.ObjectPtr, align 4
  %ref.tmp13 = alloca %class.ObjectPtr, align 4
  %tmp = alloca %class.ObjectPtrArray, align 4
  %__Lua_Temp_Obj_0 = alloca %class.ObjectPtr, align 4
  %__Lua_Temp_Obj_1 = alloca %class.ObjectPtr, align 4
  %ref.tmp14 = alloca %class.ObjectPtr, align 4
  %__Lua_Temp_Obj_2 = alloca %class.ObjectPtr, align 4
  %ref.tmp15 = alloca %class.ObjectPtr, align 4
  %ref.tmp16 = alloca %class.ObjectPtr, align 4
  %ref.tmp17 = alloca %class.ObjectPtr, align 4
  %ref.tmp18 = alloca %class.ObjectPtr, align 4
  %ref.tmp19 = alloca %class.ObjectPtr, align 4
  %ref.tmp20 = alloca %class.ObjectPtr, align 4
  %ref.tmp21 = alloca %class.ObjectPtr, align 4
  %ref.tmp22 = alloca %class.ObjectPtr, align 4
  %ref.tmp23 = alloca %class.ObjectPtr, align 4
  %__Lua_Temp_Obj_Arr_4 = alloca %class.ObjectPtrArray, align 4
  %ref.tmp24 = alloca %class.ObjectPtr, align 4
  %ref.tmp25 = alloca %class.ObjectPtr, align 4
  %ref.tmp26 = alloca %class.ObjectPtr, align 4
  %ref.tmp27 = alloca %class.ObjectPtr, align 4
  %ref.tmp28 = alloca %class.ObjectPtr, align 4
  %ref.tmp29 = alloca %class.ObjectPtr, align 4
  %ref.tmp30 = alloca %class.ObjectPtr, align 4
  %ref.tmp31 = alloca %class.ObjectPtr, align 4
  %ref.tmp32 = alloca %class.ObjectPtr, align 4
  %ref.tmp33 = alloca %class.ObjectPtr, align 4
  %ref.tmp34 = alloca %class.ObjectPtr, align 4
  %ref.tmp35 = alloca %class.ObjectPtr, align 4
  %ref.tmp36 = alloca %class.ObjectPtr, align 4
  %ref.tmp37 = alloca %class.ObjectPtr, align 4
  %ref.tmp38 = alloca %class.ObjectPtr, align 4
  %ref.tmp39 = alloca %class.ObjectPtr, align 4
  %ref.tmp40 = alloca %class.ObjectPtr, align 4
  %ref.tmp41 = alloca %class.ObjectPtr, align 4
  %tmp42 = alloca %class.ObjectPtrArray, align 4
  %ref.tmp43 = alloca %class.ObjectPtr, align 4
  %nrvo = alloca i1, align 1
  %ref.tmp44 = alloca %class.ObjectPtr, align 4
  %ref.tmp45 = alloca %class.ObjectPtr, align 4
  store ptr %agg.result, ptr %result.ptr, align 4
  store ptr %Base, ptr %Base.addr, align 4
  store ptr %Parms, ptr %Parms.addr, align 4
  %0 = load ptr, ptr %Parms.addr, align 4
  call void @_Lua_Fun_GetObjectPtrFromArray_const_ObjectPtrArray_&_unsigned_int(ptr sret(%class.ObjectPtr) align 4 %a, ptr noundef nonnull align 4 dereferenceable(12) %0, i32 noundef 0)
  %1 = load ptr, ptr %Parms.addr, align 4
  call void @_Lua_Fun_GetSubArray_const_ObjectPtrArray_&_unsigned_int(ptr sret(%class.ObjectPtrArray) align 4 %VarList, ptr noundef nonnull align 4 dereferenceable(12) %1, i32 noundef 1)
  call void @_Lua_CXXMethod_ObjectPtrArray_const_ObjectPtrArray_&(ptr noundef nonnull align 4 dereferenceable(12) %t, ptr noundef nonnull align 4 dereferenceable(12) %VarList)
  call void @_Lua_Fun_BuildEmptyTable(ptr sret(%class.ObjectPtr) align 4 %__Lua_Temp_Table_0)
  call void @_Lua_CXXMethod_ObjectPtrArray(ptr noundef nonnull align 4 dereferenceable(12) %__Lua_Temp_Obj_Arr_1)
  call void @_Lua_Fun_BuildString_char_*_unsigned_int(ptr sret(%class.ObjectPtr) align 4 %ref.tmp, ptr noundef @.str.2, i32 noundef 1)
  call void @_Lua_Fun_PushObjPtrIntoArray_ObjectPtrArray_&_const_ObjectPtr_&(ptr noundef nonnull align 4 dereferenceable(12) %__Lua_Temp_Obj_Arr_1, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp)
  call void @_Lua_CXXMethod_~ObjectPtr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp)
  call void @_Lua_Fun_PushArrayIntoArray_ObjectPtrArray_&_const_ObjectPtrArray_&(ptr noundef nonnull align 4 dereferenceable(12) %__Lua_Temp_Obj_Arr_1, ptr noundef nonnull align 4 dereferenceable(12) %VarList)
  call void @_Lua_Fun_BuildString_char_*_unsigned_int(ptr sret(%class.ObjectPtr) align 4 %ref.tmp1, ptr noundef @.str.3, i32 noundef 1)
  call void @_Lua_Fun_BuildString_char_*_unsigned_int(ptr sret(%class.ObjectPtr) align 4 %ref.tmp5, ptr noundef @.str.4, i32 noundef 6)
  call void @_Lua_Fun_GetMember_const_ObjectPtr_&_const_ObjectPtr_&_unsigned_long_long(ptr sret(%class.ObjectPtr) align 4 %ref.tmp4, ptr noundef nonnull align 4 dereferenceable(8) @_Lua_Var__ENV, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp5, i64 noundef 2001454760402)
  call void @_Lua_Fun_BuildCallExpr_const_ObjectPtr_&_const_ObjectPtrArray_&(ptr sret(%class.ObjectPtrArray) align 4 %ref.tmp3, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp4, ptr noundef nonnull align 4 dereferenceable(12) %__Lua_Temp_Obj_Arr_1)
  call void @_Lua_Fun_GetObjectPtrFromArray_const_ObjectPtrArray_&_unsigned_int(ptr sret(%class.ObjectPtr) align 4 %ref.tmp2, ptr noundef nonnull align 4 dereferenceable(12) %ref.tmp3, i32 noundef 0)
  call void @_Lua_Fun_SetMember_const_ObjectPtr_&_const_ObjectPtr_&_const_ObjectPtr_&_unsigned_long_long(ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Table_0, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp1, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp2, i64 noundef 2001454760398)
  call void @_Lua_CXXMethod_~ObjectPtr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp2)
  call void @_Lua_CXXMethod_~ObjectPtrArray(ptr noundef nonnull align 4 dereferenceable(12) %ref.tmp3)
  call void @_Lua_CXXMethod_~ObjectPtr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp4)
  call void @_Lua_CXXMethod_~ObjectPtr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp5)
  call void @_Lua_CXXMethod_~ObjectPtr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp1)
  call void @_Lua_Fun_AddMembers_const_ObjectPtr_&_const_ObjectPtrArray_&_unsigned_long_long(ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Table_0, ptr noundef nonnull align 4 dereferenceable(12) %VarList, i64 noundef 2078764171748)
  call void @_Lua_CXXMethod_ObjectPtrArray(ptr noundef nonnull align 4 dereferenceable(12) %__Lua_Temp_Obj_Arr_2)
  call void @_Lua_Fun_PushObjPtrIntoArray_ObjectPtrArray_&_const_ObjectPtr_&(ptr noundef nonnull align 4 dereferenceable(12) %__Lua_Temp_Obj_Arr_2, ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Table_0)
  call void @_Lua_Fun_GetObjectPtrFromArray_const_ObjectPtrArray_&_unsigned_int(ptr sret(%class.ObjectPtr) align 4 %x, ptr noundef nonnull align 4 dereferenceable(12) %__Lua_Temp_Obj_Arr_2, i32 noundef 0)
  call void @_Lua_CXXMethod_ObjectPtrArray(ptr noundef nonnull align 4 dereferenceable(12) %__Lua_Temp_Obj_Arr_3)
  call void @_Lua_Fun_BuildString_char_*_unsigned_int(ptr sret(%class.ObjectPtr) align 4 %ref.tmp8, ptr noundef @.str.3, i32 noundef 1)
  call void @_Lua_Fun_GetMember_const_ObjectPtr_&_const_ObjectPtr_&_unsigned_long_long(ptr sret(%class.ObjectPtr) align 4 %ref.tmp7, ptr noundef nonnull align 4 dereferenceable(8) %x, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp8, i64 noundef 2147483648499)
  call void @_Lua_Fun_GetObjectPtrFromArray_const_ObjectPtrArray_&_unsigned_int(ptr sret(%class.ObjectPtr) align 4 %ref.tmp10, ptr noundef nonnull align 4 dereferenceable(12) %t, i32 noundef 0)
  call void @_Lua_Fun_BuildString_char_*_unsigned_int(ptr sret(%class.ObjectPtr) align 4 %ref.tmp11, ptr noundef @.str.3, i32 noundef 1)
  call void @_Lua_Fun_GetMember_const_ObjectPtr_&_const_ObjectPtr_&_unsigned_long_long(ptr sret(%class.ObjectPtr) align 4 %ref.tmp9, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp10, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp11, i64 noundef 2177548419578)
  call void @_Lua_Fun_BuildBinOpExpr_const_ObjectPtr_&_const_ObjectPtr_&_unsigned_int(ptr sret(%class.ObjectPtr) align 4 %ref.tmp6, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp7, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp9, i32 noundef 14)
  call void @_Lua_Fun_PushObjPtrIntoArray_ObjectPtrArray_&_const_ObjectPtr_&(ptr noundef nonnull align 4 dereferenceable(12) %__Lua_Temp_Obj_Arr_3, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp6)
  call void @_Lua_CXXMethod_~ObjectPtr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp6)
  call void @_Lua_CXXMethod_~ObjectPtr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp9)
  call void @_Lua_CXXMethod_~ObjectPtr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp11)
  call void @_Lua_CXXMethod_~ObjectPtr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp10)
  call void @_Lua_CXXMethod_~ObjectPtr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp7)
  call void @_Lua_CXXMethod_~ObjectPtr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp8)
  call void @_Lua_Fun_BuildString_char_*_unsigned_int(ptr sret(%class.ObjectPtr) align 4 %ref.tmp13, ptr noundef @.str.5, i32 noundef 6)
  call void @_Lua_Fun_GetMember_const_ObjectPtr_&_const_ObjectPtr_&_unsigned_long_long(ptr sret(%class.ObjectPtr) align 4 %ref.tmp12, ptr noundef nonnull align 4 dereferenceable(8) @_Lua_Var__ENV, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp13, i64 noundef 2108828942827)
  call void @_Lua_Fun_BuildCallExpr_const_ObjectPtr_&_const_ObjectPtrArray_&(ptr sret(%class.ObjectPtrArray) align 4 %tmp, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp12, ptr noundef nonnull align 4 dereferenceable(12) %__Lua_Temp_Obj_Arr_3)
  call void @_Lua_CXXMethod_~ObjectPtr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp12)
  call void @_Lua_CXXMethod_~ObjectPtr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp13)
  call void @_Lua_Fun_BuildNumber_double(ptr sret(%class.ObjectPtr) align 4 %__Lua_Temp_Obj_0, double noundef 1.000000e+00)
  call void @_Lua_Fun_BuildString_char_*_unsigned_int(ptr sret(%class.ObjectPtr) align 4 %ref.tmp14, ptr noundef @.str.3, i32 noundef 1)
  call void @_Lua_Fun_GetMember_const_ObjectPtr_&_const_ObjectPtr_&_unsigned_long_long(ptr sret(%class.ObjectPtr) align 4 %__Lua_Temp_Obj_1, ptr noundef nonnull align 4 dereferenceable(8) %x, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp14, i64 noundef 2254857830924)
  call void @_Lua_CXXMethod_~ObjectPtr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp14)
  call void @_Lua_Fun_BuildNumber_double(ptr sret(%class.ObjectPtr) align 4 %__Lua_Temp_Obj_2, double noundef 1.000000e+00)
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  call void @_Lua_Fun_BuildNumber_double(ptr sret(%class.ObjectPtr) align 4 %ref.tmp18, double noundef 0.000000e+00)
  call void @_Lua_Fun_BuildBinOpExpr_const_ObjectPtr_&_const_ObjectPtr_&_unsigned_int(ptr sret(%class.ObjectPtr) align 4 %ref.tmp17, ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Obj_2, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp18, i32 noundef 13)
  call void @_Lua_Fun_BuildBinOpExpr_const_ObjectPtr_&_const_ObjectPtr_&_unsigned_int(ptr sret(%class.ObjectPtr) align 4 %ref.tmp19, ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Obj_0, ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Obj_1, i32 noundef 12)
  call void @_Lua_Fun_BuildBinOpExpr_const_ObjectPtr_&_const_ObjectPtr_&_unsigned_int(ptr sret(%class.ObjectPtr) align 4 %ref.tmp16, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp17, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp19, i32 noundef 16)
  call void @_Lua_Fun_BuildNumber_double(ptr sret(%class.ObjectPtr) align 4 %ref.tmp22, double noundef 0.000000e+00)
  call void @_Lua_Fun_BuildBinOpExpr_const_ObjectPtr_&_const_ObjectPtr_&_unsigned_int(ptr sret(%class.ObjectPtr) align 4 %ref.tmp21, ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Obj_2, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp22, i32 noundef 10)
  call void @_Lua_Fun_BuildBinOpExpr_const_ObjectPtr_&_const_ObjectPtr_&_unsigned_int(ptr sret(%class.ObjectPtr) align 4 %ref.tmp23, ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Obj_0, ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Obj_1, i32 noundef 13)
  call void @_Lua_Fun_BuildBinOpExpr_const_ObjectPtr_&_const_ObjectPtr_&_unsigned_int(ptr sret(%class.ObjectPtr) align 4 %ref.tmp20, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp21, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp23, i32 noundef 16)
  call void @_Lua_Fun_BuildBinOpExpr_const_ObjectPtr_&_const_ObjectPtr_&_unsigned_int(ptr sret(%class.ObjectPtr) align 4 %ref.tmp15, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp16, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp20, i32 noundef 18)
  %call = call zeroext i1 @_Lua_Fun_ConvertToBool_const_ObjectPtr_&(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp15)
  call void @_Lua_CXXMethod_~ObjectPtr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp15)
  call void @_Lua_CXXMethod_~ObjectPtr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp20)
  call void @_Lua_CXXMethod_~ObjectPtr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp23)
  call void @_Lua_CXXMethod_~ObjectPtr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp21)
  call void @_Lua_CXXMethod_~ObjectPtr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp22)
  call void @_Lua_CXXMethod_~ObjectPtr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp16)
  call void @_Lua_CXXMethod_~ObjectPtr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp19)
  call void @_Lua_CXXMethod_~ObjectPtr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp17)
  call void @_Lua_CXXMethod_~ObjectPtr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp18)
  br i1 %call, label %for.body, label %for.cond.cleanup

for.cond.cleanup:                                 ; preds = %for.cond
  call void @_Lua_CXXMethod_~ObjectPtr(ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Obj_2)
  call void @_Lua_CXXMethod_~ObjectPtr(ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Obj_1)
  call void @_Lua_CXXMethod_~ObjectPtr(ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Obj_0)
  br label %for.end

for.body:                                         ; preds = %for.cond
  call void @_Lua_CXXMethod_ObjectPtrArray(ptr noundef nonnull align 4 dereferenceable(12) %__Lua_Temp_Obj_Arr_4)
  call void @_Lua_Fun_BuildString_char_*_unsigned_int(ptr sret(%class.ObjectPtr) align 4 %ref.tmp28, ptr noundef @.str.6, i32 noundef 1)
  call void @_Lua_Fun_GetMember_const_ObjectPtr_&_const_ObjectPtr_&_unsigned_long_long(ptr sret(%class.ObjectPtr) align 4 %ref.tmp27, ptr noundef nonnull align 4 dereferenceable(8) @_Lua_Var__ENV, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp28, i64 noundef 2332167242271)
  call void @_Lua_Fun_GetMember_const_ObjectPtr_&_const_ObjectPtr_&_unsigned_long_long(ptr sret(%class.ObjectPtr) align 4 %ref.tmp26, ptr noundef nonnull align 4 dereferenceable(8) %a, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp27, i64 noundef 2336462209566)
  call void @_Lua_Fun_BuildString_char_*_unsigned_int(ptr sret(%class.ObjectPtr) align 4 %ref.tmp31, ptr noundef @.str.6, i32 noundef 1)
  call void @_Lua_Fun_GetMember_const_ObjectPtr_&_const_ObjectPtr_&_unsigned_long_long(ptr sret(%class.ObjectPtr) align 4 %ref.tmp30, ptr noundef nonnull align 4 dereferenceable(8) @_Lua_Var__ENV, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp31, i64 noundef 2366526980647)
  call void @_Lua_Fun_GetMember_const_ObjectPtr_&_const_ObjectPtr_&_unsigned_long_long(ptr sret(%class.ObjectPtr) align 4 %ref.tmp29, ptr noundef nonnull align 4 dereferenceable(8) %x, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp30, i64 noundef 2370821947942)
  call void @_Lua_Fun_BuildBinOpExpr_const_ObjectPtr_&_const_ObjectPtr_&_unsigned_int(ptr sret(%class.ObjectPtr) align 4 %ref.tmp25, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp26, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp29, i32 noundef 14)
  call void @_Lua_Fun_BuildString_char_*_unsigned_int(ptr sret(%class.ObjectPtr) align 4 %ref.tmp35, ptr noundef @.str.6, i32 noundef 1)
  call void @_Lua_Fun_GetMember_const_ObjectPtr_&_const_ObjectPtr_&_unsigned_long_long(ptr sret(%class.ObjectPtr) align 4 %ref.tmp34, ptr noundef nonnull align 4 dereferenceable(8) @_Lua_Var__ENV, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp35, i64 noundef 2405181686320)
  call void @_Lua_Fun_GetMember_const_ObjectPtr_&_const_ObjectPtr_&_unsigned_long_long(ptr sret(%class.ObjectPtr) align 4 %ref.tmp33, ptr noundef nonnull align 4 dereferenceable(8) %x, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp34, i64 noundef 2409476653615)
  call void @_Lua_Fun_GetObjectPtrFromArray_const_ObjectPtrArray_&_unsigned_int(ptr sret(%class.ObjectPtr) align 4 %ref.tmp37, ptr noundef nonnull align 4 dereferenceable(12) %t, i32 noundef 0)
  call void @_Lua_Fun_BuildString_char_*_unsigned_int(ptr sret(%class.ObjectPtr) align 4 %ref.tmp39, ptr noundef @.str.6, i32 noundef 1)
  call void @_Lua_Fun_GetMember_const_ObjectPtr_&_const_ObjectPtr_&_unsigned_long_long(ptr sret(%class.ObjectPtr) align 4 %ref.tmp38, ptr noundef nonnull align 4 dereferenceable(8) @_Lua_Var__ENV, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp39, i64 noundef 2439541424696)
  call void @_Lua_Fun_GetMember_const_ObjectPtr_&_const_ObjectPtr_&_unsigned_long_long(ptr sret(%class.ObjectPtr) align 4 %ref.tmp36, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp37, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp38, i64 noundef 2443836391991)
  call void @_Lua_Fun_BuildBinOpExpr_const_ObjectPtr_&_const_ObjectPtr_&_unsigned_int(ptr sret(%class.ObjectPtr) align 4 %ref.tmp32, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp33, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp36, i32 noundef 14)
  call void @_Lua_Fun_BuildBinOpExpr_const_ObjectPtr_&_const_ObjectPtr_&_unsigned_int(ptr sret(%class.ObjectPtr) align 4 %ref.tmp24, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp25, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp32, i32 noundef 16)
  call void @_Lua_Fun_PushObjPtrIntoArray_ObjectPtrArray_&_const_ObjectPtr_&(ptr noundef nonnull align 4 dereferenceable(12) %__Lua_Temp_Obj_Arr_4, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp24)
  call void @_Lua_CXXMethod_~ObjectPtr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp24)
  call void @_Lua_CXXMethod_~ObjectPtr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp32)
  call void @_Lua_CXXMethod_~ObjectPtr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp36)
  call void @_Lua_CXXMethod_~ObjectPtr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp38)
  call void @_Lua_CXXMethod_~ObjectPtr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp39)
  call void @_Lua_CXXMethod_~ObjectPtr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp37)
  call void @_Lua_CXXMethod_~ObjectPtr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp33)
  call void @_Lua_CXXMethod_~ObjectPtr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp34)
  call void @_Lua_CXXMethod_~ObjectPtr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp35)
  call void @_Lua_CXXMethod_~ObjectPtr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp25)
  call void @_Lua_CXXMethod_~ObjectPtr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp29)
  call void @_Lua_CXXMethod_~ObjectPtr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp30)
  call void @_Lua_CXXMethod_~ObjectPtr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp31)
  call void @_Lua_CXXMethod_~ObjectPtr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp26)
  call void @_Lua_CXXMethod_~ObjectPtr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp27)
  call void @_Lua_CXXMethod_~ObjectPtr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp28)
  call void @_Lua_Fun_BuildString_char_*_unsigned_int(ptr sret(%class.ObjectPtr) align 4 %ref.tmp41, ptr noundef @.str.5, i32 noundef 6)
  call void @_Lua_Fun_GetMember_const_ObjectPtr_&_const_ObjectPtr_&_unsigned_long_long(ptr sret(%class.ObjectPtr) align 4 %ref.tmp40, ptr noundef nonnull align 4 dereferenceable(8) @_Lua_Var__ENV, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp41, i64 noundef 2293512536598)
  call void @_Lua_Fun_BuildCallExpr_const_ObjectPtr_&_const_ObjectPtrArray_&(ptr sret(%class.ObjectPtrArray) align 4 %tmp42, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp40, ptr noundef nonnull align 4 dereferenceable(12) %__Lua_Temp_Obj_Arr_4)
  call void @_Lua_CXXMethod_~ObjectPtr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp40)
  call void @_Lua_CXXMethod_~ObjectPtr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp41)
  call void @_Lua_CXXMethod_~ObjectPtrArray(ptr noundef nonnull align 4 dereferenceable(12) %__Lua_Temp_Obj_Arr_4)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  call void @_Lua_Fun_BuildBinOpExpr_const_ObjectPtr_&_const_ObjectPtr_&_unsigned_int(ptr sret(%class.ObjectPtr) align 4 %ref.tmp43, ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Obj_0, ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Obj_2, i32 noundef 5)
  call void @_Lua_Fun_BuildModifyExpr_const_ObjectPtr_&_const_ObjectPtr_&(ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Obj_0, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp43)
  call void @_Lua_CXXMethod_~ObjectPtr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp43)
  br label %for.cond

for.end:                                          ; preds = %for.cond.cleanup
  store i1 false, ptr %nrvo, align 1
  call void @_Lua_CXXMethod_ObjectPtrArray(ptr noundef nonnull align 4 dereferenceable(12) %agg.result)
  call void @_Lua_Fun_BuildString_char_*_unsigned_int(ptr sret(%class.ObjectPtr) align 4 %ref.tmp45, ptr noundef @.str.3, i32 noundef 1)
  call void @_Lua_Fun_GetMember_const_ObjectPtr_&_const_ObjectPtr_&_unsigned_long_long(ptr sret(%class.ObjectPtr) align 4 %ref.tmp44, ptr noundef nonnull align 4 dereferenceable(8) %x, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp45, i64 noundef 2529735737932)
  call void @_Lua_Fun_PushObjPtrIntoArray_ObjectPtrArray_&_const_ObjectPtr_&(ptr noundef nonnull align 4 dereferenceable(12) %agg.result, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp44)
  call void @_Lua_CXXMethod_~ObjectPtr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp44)
  call void @_Lua_CXXMethod_~ObjectPtr(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp45)
  store i1 true, ptr %nrvo, align 1
  %nrvo.val = load i1, ptr %nrvo, align 1
  br i1 %nrvo.val, label %nrvo.skipdtor, label %nrvo.unused

nrvo.unused:                                      ; preds = %for.end
  call void @_Lua_CXXMethod_~ObjectPtrArray(ptr noundef nonnull align 4 dereferenceable(12) %agg.result)
  br label %nrvo.skipdtor

nrvo.skipdtor:                                    ; preds = %nrvo.unused, %for.end
  call void @_Lua_CXXMethod_~ObjectPtrArray(ptr noundef nonnull align 4 dereferenceable(12) %__Lua_Temp_Obj_Arr_3)
  call void @_Lua_CXXMethod_~ObjectPtr(ptr noundef nonnull align 4 dereferenceable(8) %x)
  call void @_Lua_CXXMethod_~ObjectPtrArray(ptr noundef nonnull align 4 dereferenceable(12) %__Lua_Temp_Obj_Arr_2)
  call void @_Lua_CXXMethod_~ObjectPtrArray(ptr noundef nonnull align 4 dereferenceable(12) %__Lua_Temp_Obj_Arr_1)
  call void @_Lua_CXXMethod_~ObjectPtr(ptr noundef nonnull align 4 dereferenceable(8) %__Lua_Temp_Table_0)
  call void @_Lua_CXXMethod_~ObjectPtrArray(ptr noundef nonnull align 4 dereferenceable(12) %t)
  call void @_Lua_CXXMethod_~ObjectPtrArray(ptr noundef nonnull align 4 dereferenceable(12) %VarList)
  call void @_Lua_CXXMethod_~ObjectPtr(ptr noundef nonnull align 4 dereferenceable(8) %a)
  ret void
}

declare void @_Lua_Fun_BuildModifyExpr_const_ObjectPtr_&_const_ObjectPtr_&(ptr noundef nonnull align 4 dereferenceable(8), ptr noundef nonnull align 4 dereferenceable(8)) #1

declare void @_Lua_CXXMethod_~ObjectPtrArray(ptr noundef nonnull align 4 dereferenceable(12)) unnamed_addr #1

declare void @_Lua_Fun_GetObjectPtrFromArray_const_ObjectPtrArray_&_unsigned_int(ptr sret(%class.ObjectPtr) align 4, ptr noundef nonnull align 4 dereferenceable(12), i32 noundef) #1

declare void @_Lua_Fun_GetSubArray_const_ObjectPtrArray_&_unsigned_int(ptr sret(%class.ObjectPtrArray) align 4, ptr noundef nonnull align 4 dereferenceable(12), i32 noundef) #1

declare void @_Lua_CXXMethod_ObjectPtrArray_const_ObjectPtrArray_&(ptr noundef nonnull align 4 dereferenceable(12), ptr noundef nonnull align 4 dereferenceable(12)) unnamed_addr #1

declare void @_Lua_Fun_BuildEmptyTable(ptr sret(%class.ObjectPtr) align 4) #1

declare void @_Lua_Fun_PushArrayIntoArray_ObjectPtrArray_&_const_ObjectPtrArray_&(ptr noundef nonnull align 4 dereferenceable(12), ptr noundef nonnull align 4 dereferenceable(12)) #1

declare void @_Lua_Fun_SetMember_const_ObjectPtr_&_const_ObjectPtr_&_const_ObjectPtr_&_unsigned_long_long(ptr noundef nonnull align 4 dereferenceable(8), ptr noundef nonnull align 4 dereferenceable(8), ptr noundef nonnull align 4 dereferenceable(8), i64 noundef) #1

declare void @_Lua_Fun_AddMembers_const_ObjectPtr_&_const_ObjectPtrArray_&_unsigned_long_long(ptr noundef nonnull align 4 dereferenceable(8), ptr noundef nonnull align 4 dereferenceable(12), i64 noundef) #1

declare void @_Lua_Fun_BuildBinOpExpr_const_ObjectPtr_&_const_ObjectPtr_&_unsigned_int(ptr sret(%class.ObjectPtr) align 4, ptr noundef nonnull align 4 dereferenceable(8), ptr noundef nonnull align 4 dereferenceable(8), i32 noundef) #1

declare void @_Lua_Fun_BuildNumber_double(ptr sret(%class.ObjectPtr) align 4, double noundef) #1

declare zeroext i1 @_Lua_Fun_ConvertToBool_const_ObjectPtr_&(ptr noundef nonnull align 4 dereferenceable(8)) #1

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
