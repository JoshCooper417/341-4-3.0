declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@_oat_string1455.str. = private unnamed_addr constant [ 11 x i8 ] c "1234967890\00", align 4
@_oat_string1455 = global i8* getelementptr inbounds ([ 11 x i8 ]* @_oat_string1455.str., i32 0, i32 0), align 4
define void @oat_init (){

__fresh193:
  ret void
}


define i32 @program (i32 %argc1453, { i32, [ 0 x i8* ] }* %argv1451){

__fresh188:
  %argc_slot1454 = alloca i32
  store i32 %argc1453, i32* %argc_slot1454
  %argv_slot1452 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv1451, { i32, [ 0 x i8* ] }** %argv_slot1452
  %strval1456 = load i8** @_oat_string1455
  %ret1457 = call { i32, [ 0 x i32 ] }* @array_of_string ( i8* %strval1456 )
  %arr1458 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %ret1457, { i32, [ 0 x i32 ] }** %arr1458
  %sum1459 = alloca i32
  store i32 0, i32* %sum1459
  %i1460 = alloca i32
  store i32 0, i32* %i1460
  br label %__cond184

__cond184:
  %_lhs1461 = load i32* %i1460
  %bop1462 = icmp slt i32 %_lhs1461, 10
  br i1 %bop1462, label %__body183, label %__post182

__fresh189:
  br label %__body183

__body183:
  %_lhs1463 = load i32* %i1460
  %_lhs1464 = load { i32, [ 0 x i32 ] }** %arr1458
  %len_ptr1465 = getelementptr { i32, [ 0 x i32 ] }* %_lhs1464, i32 0, i32 0
  %len1466 = load i32* %len_ptr1465
  call void @oat_array_bounds_check( i32 %len1466, i32 %_lhs1463 )
  %array_dereferenced1467 = load { i32, [ 0 x i32 ] }** %arr1458
  %elt_ptr1468 = getelementptr { i32, [ 0 x i32 ] }** %arr1458, i32 0, i32 1, i32 %_lhs1463
  %_lhs1469 = load i32* %i1460
  store i32 %_lhs1469, i32* %elt_ptr1468
  %_lhs1470 = load i32* %i1460
  %bop1471 = add i32 %_lhs1470, 1
  store i32 %bop1471, i32* %i1460
  br label %__cond184

__fresh190:
  br label %__post182

__post182:
  %i1472 = alloca i32
  store i32 0, i32* %i1472
  br label %__cond187

__cond187:
  %_lhs1473 = load i32* %i1472
  %bop1474 = icmp slt i32 %_lhs1473, 10
  br i1 %bop1474, label %__body186, label %__post185

__fresh191:
  br label %__body186

__body186:
  %_lhs1475 = load i32* %sum1459
  %_lhs1476 = load i32* %i1472
  %_lhs1477 = load { i32, [ 0 x i32 ] }** %arr1458
  %len_ptr1478 = getelementptr { i32, [ 0 x i32 ] }* %_lhs1477, i32 0, i32 0
  %len1479 = load i32* %len_ptr1478
  call void @oat_array_bounds_check( i32 %len1479, i32 %_lhs1476 )
  %array_dereferenced1480 = load { i32, [ 0 x i32 ] }** %arr1458
  %elt_ptr1481 = getelementptr { i32, [ 0 x i32 ] }** %arr1458, i32 0, i32 1, i32 %_lhs1476
  %_lhs1482 = load i32* %elt_ptr1481
  %bop1483 = add i32 %_lhs1475, %_lhs1482
  store i32 %bop1483, i32* %sum1459
  %_lhs1484 = load i32* %i1472
  %bop1485 = add i32 %_lhs1484, 1
  store i32 %bop1485, i32* %i1472
  br label %__cond187

__fresh192:
  br label %__post185

__post185:
  %_lhs1486 = load i32* %sum1459
  ret i32 %_lhs1486
}


