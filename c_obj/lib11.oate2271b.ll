declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@_oat_string1582.str. = private unnamed_addr constant [ 11 x i8 ] c "1234967890\00", align 4
@_oat_string1582 = global i8* getelementptr inbounds ([ 11 x i8 ]* @_oat_string1582.str., i32 0, i32 0), align 4
define void @oat_init (){

__fresh224:
  ret void
}


define i32 @program (i32 %argc1580, { i32, [ 0 x i8* ] }* %argv1578){

__fresh219:
  %argc_slot1581 = alloca i32
  store i32 %argc1580, i32* %argc_slot1581
  %argv_slot1579 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv1578, { i32, [ 0 x i8* ] }** %argv_slot1579
  %strval1583 = load i8** @_oat_string1582
  %ret1584 = call { i32, [ 0 x i32 ] }* @array_of_string ( i8* %strval1583 )
  %arr1585 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %ret1584, { i32, [ 0 x i32 ] }** %arr1585
  %sum1586 = alloca i32
  store i32 0, i32* %sum1586
  %i1587 = alloca i32
  store i32 0, i32* %i1587
  br label %__cond215

__cond215:
  %_lhs1588 = load i32* %i1587
  %bop1589 = icmp slt i32 %_lhs1588, 10
  br i1 %bop1589, label %__body214, label %__post213

__fresh220:
  br label %__body214

__body214:
  %_lhs1590 = load i32* %i1587
  %len_ptr1591 = getelementptr { i32, [ 0 x i32 ] }** %arr1585, i32 0, i32 0
  %len1592 = load i32* %len_ptr1591
  call void @oat_array_bounds_check( i32 %len1592, i32 %_lhs1590 )
  %array_dereferenced1593 = load { i32, [ 0 x i32 ] }** %arr1585
  %elt_ptr1594 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced1593, i32 0, i32 1, i32 %_lhs1590
  %_lhs1595 = load i32* %i1587
  store i32 %_lhs1595, i32* %elt_ptr1594
  %_lhs1596 = load i32* %i1587
  %bop1597 = add i32 %_lhs1596, 1
  store i32 %bop1597, i32* %i1587
  br label %__cond215

__fresh221:
  br label %__post213

__post213:
  %i1598 = alloca i32
  store i32 0, i32* %i1598
  br label %__cond218

__cond218:
  %_lhs1599 = load i32* %i1598
  %bop1600 = icmp slt i32 %_lhs1599, 10
  br i1 %bop1600, label %__body217, label %__post216

__fresh222:
  br label %__body217

__body217:
  %_lhs1601 = load i32* %sum1586
  %_lhs1602 = load i32* %i1598
  %len_ptr1603 = getelementptr { i32, [ 0 x i32 ] }** %arr1585, i32 0, i32 0
  %len1604 = load i32* %len_ptr1603
  call void @oat_array_bounds_check( i32 %len1604, i32 %_lhs1602 )
  %array_dereferenced1605 = load { i32, [ 0 x i32 ] }** %arr1585
  %elt_ptr1606 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced1605, i32 0, i32 1, i32 %_lhs1602
  %_lhs1607 = load i32* %elt_ptr1606
  %bop1608 = add i32 %_lhs1601, %_lhs1607
  store i32 %bop1608, i32* %sum1586
  %_lhs1609 = load i32* %i1598
  %bop1610 = add i32 %_lhs1609, 1
  store i32 %bop1610, i32* %i1598
  br label %__cond218

__fresh223:
  br label %__post216

__post216:
  %_lhs1611 = load i32* %sum1586
  ret i32 %_lhs1611
}


