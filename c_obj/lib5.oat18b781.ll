declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@_oat_string1450.str. = private unnamed_addr constant [ 6 x i8 ] c "hello\00", align 4
@_oat_string1450 = global i8* getelementptr inbounds ([ 6 x i8 ]* @_oat_string1450.str., i32 0, i32 0), align 4
define void @oat_init (){

__fresh185:
  ret void
}


define i32 @program (i32 %argc1448, { i32, [ 0 x i8* ] }* %argv1446){

__fresh182:
  %argc_slot1449 = alloca i32
  store i32 %argc1448, i32* %argc_slot1449
  %argv_slot1447 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv1446, { i32, [ 0 x i8* ] }** %argv_slot1447
  %strval1451 = load i8** @_oat_string1450
  %str1452 = alloca i8*
  store i8* %strval1451, i8** %str1452
  %_lhs1453 = load i8** %str1452
  %ret1454 = call { i32, [ 0 x i32 ] }* @array_of_string ( i8* %_lhs1453 )
  %arr1455 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %ret1454, { i32, [ 0 x i32 ] }** %arr1455
  %s1456 = alloca i32
  store i32 0, i32* %s1456
  %i1457 = alloca i32
  store i32 0, i32* %i1457
  br label %__cond181

__cond181:
  %_lhs1458 = load i32* %i1457
  %bop1459 = icmp slt i32 %_lhs1458, 5
  br i1 %bop1459, label %__body180, label %__post179

__fresh183:
  br label %__body180

__body180:
  %_lhs1460 = load i32* %s1456
  %_lhs1461 = load i32* %i1457
  %len_ptr1462 = getelementptr { i32, [ 0 x i32 ] }** %arr1455, i32 0, i32 0
  %len1463 = load i32* %len_ptr1462
  call void @oat_array_bounds_check( i32 %len1463, i32 %_lhs1461 )
  %array_dereferenced1464 = load { i32, [ 0 x i32 ] }** %arr1455
  %elt_ptr1465 = getelementptr i32 %array_dereferenced1464, i32 0, i32 1, i32 %_lhs1461
  %_lhs1466 = load i32* %elt_ptr1465
  %bop1467 = add i32 %_lhs1460, %_lhs1466
  store i32 %bop1467, i32* %s1456
  %_lhs1468 = load i32* %i1457
  %bop1469 = add i32 %_lhs1468, 1
  store i32 %bop1469, i32* %i1457
  br label %__cond181

__fresh184:
  br label %__post179

__post179:
  %_lhs1470 = load i32* %s1456
  ret i32 %_lhs1470
}


