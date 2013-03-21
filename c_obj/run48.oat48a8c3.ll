declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@a1609 = global i32 1, align 4
define void @oat_init (){

__fresh617:
  ret void
}


define i32 @program (i32 %argc1615, { i32, [ 0 x i8* ] }* %argv1613){

__fresh612:
  %argc_slot1616 = alloca i32
  store i32 %argc1615, i32* %argc_slot1616
  %argv_slot1614 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv1613, { i32, [ 0 x i8* ] }** %argv_slot1614
  %ret1617 = call i32 @f (  )
  %array_ptr1620 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 %ret1617 )
  %array1621 = bitcast { i32, [ 0 x i32 ] }* %array_ptr1620 to { i32, [ 0 x i32 ] }* 
  %i1626 = alloca i32
  store i32 1, i32* %i1626
  %i1618 = load i32* %i1626
  br label %__check610

__fresh613:
  br label %__check610

__check610:
  br label %__end609

__fresh614:
  %cmp_op1624 = icmp slt i32 %i1618, %ret1617
  br i32 %cmp_op1624, label %__body611, label %__end609

__fresh615:
  br label %__body611

__body611:
  %ret1619 = call i32 @f (  )
  %elem_ptr1623 = getelementptr { i32, [ 0 x i32 ] }* %array1621, i32 0, i32 1, i32 %i1618
  store i32 %ret1619, i32* %elem_ptr1623
  %index_op1625 = add i32 %i1618, 1
  br label %__check610

__fresh616:
  br label %__end609

__end609:
  %array_ptr1622 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %array1621, { i32, [ 0 x i32 ] }** %array_ptr1622
  %b1628 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }** %array_ptr1622, { i32, [ 0 x i32 ] }** %b1628
  %_lhs1629 = load i32* @a1609
  %array_dereferenced1630 = load { i32, [ 0 x i32 ] }** %b1628
  %len_ptr1631 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced1630, i32 0, i32 0
  %len1632 = load i32* %len_ptr1631
  call void @oat_array_bounds_check( i32 %len1632, i32 0 )
  %elt_ptr1633 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced1630, i32 0, i32 1, i32 0
  %_lhs1634 = load i32* %elt_ptr1633
  %bop1635 = add i32 %_lhs1629, %_lhs1634
  %array_dereferenced1636 = load { i32, [ 0 x i32 ] }** %b1628
  %len_ptr1637 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced1636, i32 0, i32 0
  %len1638 = load i32* %len_ptr1637
  call void @oat_array_bounds_check( i32 %len1638, i32 1 )
  %elt_ptr1639 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced1636, i32 0, i32 1, i32 1
  %_lhs1640 = load i32* %elt_ptr1639
  %bop1641 = add i32 %bop1635, %_lhs1640
  ret i32 %bop1641
}


define i32 @f (){

__fresh608:
  %_lhs1610 = load i32* @a1609
  %bop1611 = add i32 %_lhs1610, 1
  store i32 %bop1611, i32* @a1609
  %_lhs1612 = load i32* @a1609
  ret i32 %_lhs1612
}


