declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@_oat_string1466.str. = private unnamed_addr constant [ 11 x i8 ] c "1234967890\00", align 4
@_oat_string1466 = global i8* getelementptr inbounds ([ 11 x i8 ]* @_oat_string1466.str., i32 0, i32 0), align 4
define void @oat_init (){

__fresh193:
  ret void
}


define i32 @program (i32 %argc1464, { i32, [ 0 x i8* ] }* %argv1462){

__fresh188:
  %argc_slot1465 = alloca i32
  store i32 %argc1464, i32* %argc_slot1465
  %argv_slot1463 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv1462, { i32, [ 0 x i8* ] }** %argv_slot1463
  %strval1467 = load i8** @_oat_string1466
  %ret1468 = call { i32, [ 0 x i32 ] }* @array_of_string ( i8* %strval1467 )
  %arr1469 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %ret1468, { i32, [ 0 x i32 ] }** %arr1469
  %sum1470 = alloca i32
  store i32 0, i32* %sum1470
  %i1471 = alloca i32
  store i32 0, i32* %i1471
  br label %__cond184

__cond184:
  %_lhs1472 = load i32* %i1471
  %bop1473 = icmp slt i32 %_lhs1472, 10
  br i1 %bop1473, label %__body183, label %__post182

__fresh189:
  br label %__body183

__body183:
  %_lhs1474 = load i32* %i1471
  %_lhs1475 = load { i32, [ 0 x i32 ] }** %arr1469
  %len_ptr1476 = getelementptr { i32, [ 0 x i32 ] }* %_lhs1475, i32 0, i32 0
  %len1477 = load i32* %len_ptr1476
  call void @oat_array_bounds_check( i32 %len1477, i32 %_lhs1474 )
  %array_dereferenced1478 = load { i32, [ 0 x i32 ] }** %arr1469
  %elt_ptr1479 = getelementptr { i32, [ 0 x i32 ] }** %arr1469, i32 0, i32 1, i32 %_lhs1474
  %_lhs1480 = load i32* %i1471
  store i32 %_lhs1480, [ 0 x i32 ]* %elt_ptr1479
  %_lhs1481 = load i32* %i1471
  %bop1482 = add i32 %_lhs1481, 1
  store i32 %bop1482, i32* %i1471
  br label %__cond184

__fresh190:
  br label %__post182

__post182:
  %i1483 = alloca i32
  store i32 0, i32* %i1483
  br label %__cond187

__cond187:
  %_lhs1484 = load i32* %i1483
  %bop1485 = icmp slt i32 %_lhs1484, 10
  br i1 %bop1485, label %__body186, label %__post185

__fresh191:
  br label %__body186

__body186:
  %_lhs1486 = load i32* %sum1470
  %_lhs1487 = load i32* %i1483
  %_lhs1488 = load { i32, [ 0 x i32 ] }** %arr1469
  %len_ptr1489 = getelementptr { i32, [ 0 x i32 ] }* %_lhs1488, i32 0, i32 0
  %len1490 = load i32* %len_ptr1489
  call void @oat_array_bounds_check( i32 %len1490, i32 %_lhs1487 )
  %array_dereferenced1491 = load { i32, [ 0 x i32 ] }** %arr1469
  %elt_ptr1492 = getelementptr { i32, [ 0 x i32 ] }** %arr1469, i32 0, i32 1, i32 %_lhs1487
  %_lhs1493 = load [ 0 x i32 ]* %elt_ptr1492
  %bop1494 = add i32 %_lhs1486, %_lhs1493
  store i32 %bop1494, i32* %sum1470
  %_lhs1495 = load i32* %i1483
  %bop1496 = add i32 %_lhs1495, 1
  store i32 %bop1496, i32* %i1483
  br label %__cond187

__fresh192:
  br label %__post185

__post185:
  %_lhs1497 = load i32* %sum1470
  ret i32 %_lhs1497
}


