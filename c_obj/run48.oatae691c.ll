declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@a1589 = global i32 1, align 4
define void @oat_init (){

__fresh617:
  ret void
}


define i32 @program (i32 %argc1595, { i32, [ 0 x i8* ] }* %argv1593){

__fresh612:
  %argc_slot1596 = alloca i32
  store i32 %argc1595, i32* %argc_slot1596
  %argv_slot1594 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv1593, { i32, [ 0 x i8* ] }** %argv_slot1594
  %ret1597 = call i32 @f (  )
  %array_ptr1600 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 %ret1597 )
  %array1601 = bitcast { i32, [ 0 x i32 ] }* %array_ptr1600 to { i32, [ 0 x i32 ] }* 
  %i1605 = alloca i32
  store i32 1, i32* %i1605
  %i1598 = load i32* %i1605
  br label %__check610

__fresh613:
  br label %__check610

__check610:
  br label %__end609

__fresh614:
  %cmp_op1603 = icmp slt i32 %i1598, %ret1597
  br i32 %cmp_op1603, label %__body611, label %__end609

__fresh615:
  br label %__body611

__body611:
  %ret1599 = call i32 @f (  )
  %elem_ptr1602 = getelementptr { i32, [ 0 x i32 ] }* %array1601, i32 0, i32 1, i32 %i1598
  store i32 %ret1599, i32* %elem_ptr1602
  %index_op1604 = add i32 %i1598, 1
  br label %__check610

__fresh616:
  br label %__end609

__end609:
  %b1607 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %array1601, { i32, [ 0 x i32 ] }** %b1607
  %_lhs1608 = load i32* @a1589
  %array_dereferenced1609 = load { i32, [ 0 x i32 ] }** %b1607
  %len_ptr1610 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced1609, i32 0, i32 0
  %len1611 = load i32* %len_ptr1610
  call void @oat_array_bounds_check( i32 %len1611, i32 0 )
  %elt_ptr1612 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced1609, i32 0, i32 1, i32 0
  %_lhs1613 = load i32* %elt_ptr1612
  %bop1614 = add i32 %_lhs1608, %_lhs1613
  %array_dereferenced1615 = load { i32, [ 0 x i32 ] }** %b1607
  %len_ptr1616 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced1615, i32 0, i32 0
  %len1617 = load i32* %len_ptr1616
  call void @oat_array_bounds_check( i32 %len1617, i32 1 )
  %elt_ptr1618 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced1615, i32 0, i32 1, i32 1
  %_lhs1619 = load i32* %elt_ptr1618
  %bop1620 = add i32 %bop1614, %_lhs1619
  ret i32 %bop1620
}


define i32 @f (){

__fresh608:
  %_lhs1590 = load i32* @a1589
  %bop1591 = add i32 %_lhs1590, 1
  store i32 %bop1591, i32* @a1589
  %_lhs1592 = load i32* @a1589
  ret i32 %_lhs1592
}


