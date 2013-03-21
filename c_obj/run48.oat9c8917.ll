declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@a1579 = global i32 1, align 4
define void @oat_init (){

__fresh370:
  ret void
}


define i32 @program (i32 %argc1585, { i32, [ 0 x i8* ] }* %argv1583){

__fresh365:
  %argc_slot1586 = alloca i32
  store i32 %argc1585, i32* %argc_slot1586
  %argv_slot1584 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv1583, { i32, [ 0 x i8* ] }** %argv_slot1584
  %ret1587 = call i32 @f (  )
  %array_ptr1590 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 %ret1587 )
  %array1591 = bitcast { i32, [ 0 x i32 ] }* %array_ptr1590 to { i32, [ 0 x i32 ] }* 
  %i1595 = alloca i32
  store i32 1, i32* %i1595
  %i1588 = load i32* %i1595
  br label %__check363

__fresh366:
  br label %__check363

__check363:
  br label %__end362

__fresh367:
  %cmp_op1593 = icmp slt i32 %i1588, %ret1587
  br i32 %cmp_op1593, label %__body364, label %__end362

__fresh368:
  br label %__body364

__body364:
  %ret1589 = call i32 @f (  )
  %elem_ptr1592 = getelementptr { i32, [ 0 x i32 ] }* %array1591, i32 0, i32 1, i32 %i1588
  store i32 %ret1589, i32* %elem_ptr1592
  %index_op1594 = add i32 %i1588, 1
  br label %__check363

__fresh369:
  br label %__end362

__end362:
  %b1597 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %array1591, { i32, [ 0 x i32 ] }** %b1597
  %_lhs1598 = load i32* @a1579
  %len_ptr1599 = getelementptr { i32, [ 0 x i32 ] }** %b1597, i32 0, i32 0
  %len1600 = load i32* %len_ptr1599
  call void @oat_array_bounds_check( i32 %len1600, i32 0 )
  %array_dereferenced1601 = load { i32, [ 0 x i32 ] }** %b1597
  %elt_ptr1602 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced1601, i32 0, i32 1, i32 0
  %_lhs1603 = load i32* %elt_ptr1602
  %bop1604 = add i32 %_lhs1598, %_lhs1603
  %len_ptr1605 = getelementptr { i32, [ 0 x i32 ] }** %b1597, i32 0, i32 0
  %len1606 = load i32* %len_ptr1605
  call void @oat_array_bounds_check( i32 %len1606, i32 1 )
  %array_dereferenced1607 = load { i32, [ 0 x i32 ] }** %b1597
  %elt_ptr1608 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced1607, i32 0, i32 1, i32 1
  %_lhs1609 = load i32* %elt_ptr1608
  %bop1610 = add i32 %bop1604, %_lhs1609
  ret i32 %bop1610
}


define i32 @f (){

__fresh361:
  %_lhs1580 = load i32* @a1579
  %bop1581 = add i32 %_lhs1580, 1
  store i32 %bop1581, i32* @a1579
  %_lhs1582 = load i32* @a1579
  ret i32 %_lhs1582
}


