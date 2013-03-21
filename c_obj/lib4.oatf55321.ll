declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@str1301 = global i8* zeroinitializer, align 4		; initialized by str1301.init
@_oat_string1299.str. = private unnamed_addr constant [ 6 x i8 ] c "hello\00", align 4
@_oat_string1299 = global i8* getelementptr inbounds ([ 6 x i8 ]* @_oat_string1299.str., i32 0, i32 0), align 4
define void @oat_init (){

__fresh147:
  call void @str1301.init(  )
  ret void
}


define i32 @program (i32 %argc1305, { i32, [ 0 x i8* ] }* %argv1303){

__fresh144:
  %argc_slot1306 = alloca i32
  store i32 %argc1305, i32* %argc_slot1306
  %argv_slot1304 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv1303, { i32, [ 0 x i8* ] }** %argv_slot1304
  %_lhs1307 = load i8** @str1301
  %ret1308 = call { i32, [ 0 x i32 ] }* @array_of_string ( i8* %_lhs1307 )
  %arr1309 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %ret1308, { i32, [ 0 x i32 ] }** %arr1309
  %s1310 = alloca i32
  store i32 0, i32* %s1310
  %i1311 = alloca i32
  store i32 0, i32* %i1311
  br label %__cond143

__cond143:
  %_lhs1312 = load i32* %i1311
  %bop1313 = icmp slt i32 %_lhs1312, 5
  br i1 %bop1313, label %__body142, label %__post141

__fresh145:
  br label %__body142

__body142:
  %_lhs1314 = load i32* %s1310
  %_lhs1315 = load i32* %i1311
  %_lhs1316 = load { i32, [ 0 x i32 ] }** %arr1309
  %len_ptr1317 = getelementptr { i32, [ 0 x i32 ] }* %_lhs1316, i32 0, i32 0
  %len1318 = load i32* %len_ptr1317
  call void @oat_array_bounds_check( i32 %len1318, i32 %_lhs1315 )
  %array_dereferenced1319 = load { i32, [ 0 x i32 ] }** %arr1309
  %elt_ptr1320 = getelementptr { i32, [ 0 x i32 ] }** %arr1309, i32 0, i32 1, i32 %_lhs1315
  %_lhs1321 = load [ 0 x i32 ]* %elt_ptr1320
  %bop1322 = add i32 %_lhs1314, %_lhs1321
  store i32 %bop1322, i32* %s1310
  %_lhs1323 = load i32* %i1311
  %bop1324 = add i32 %_lhs1323, 1
  store i32 %bop1324, i32* %i1311
  br label %__cond143

__fresh146:
  br label %__post141

__post141:
  %_lhs1325 = load i32* %s1310
  ret i32 %_lhs1325
}


define void @str1301.init (){

__fresh140:
  %strval1300 = load i8** @_oat_string1299
  store i8* %strval1300, i8** @str1301
  ret void
}


