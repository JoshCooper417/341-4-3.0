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

__fresh612:
  ret void
}


define i32 @program (i32 %argc1585, { i32, [ 0 x i8* ] }* %argv1583){

__fresh607:
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
  br label %__check605

__fresh608:
  br label %__check605

__check605:
  br label %__end604

__fresh609:
  %cmp_op1593 = icmp slt i32 %i1588, %ret1587
  br i32 %cmp_op1593, label %__body606, label %__end604

__fresh610:
  br label %__body606

__body606:
  %ret1589 = call i32 @f (  )
  %elem_ptr1592 = getelementptr { i32, [ 0 x i32 ] }* %array1591, i32 0, i32 1, i32 %i1588
  store i32 %ret1589, i32* %elem_ptr1592
  %index_op1594 = add i32 %i1588, 1
  br label %__check605

__fresh611:
  br label %__end604

__end604:
  %b1597 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %array1591, { i32, [ 0 x i32 ] }** %b1597
  %_lhs1598 = load i32* @a1579
  %array_dereferenced1599 = load { i32, [ 0 x i32 ] }** %b1597
  %len_ptr1600 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced1599, i32 0, i32 0
  %len1601 = load i32* %len_ptr1600
  call void @oat_array_bounds_check( i32 %len1601, i32 0 )
  %elt_ptr1602 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced1599, i32 0, i32 1, i32 0
  %_lhs1603 = load i32* %elt_ptr1602
  %bop1604 = add i32 %_lhs1598, %_lhs1603
  %array_dereferenced1605 = load { i32, [ 0 x i32 ] }** %b1597
  %len_ptr1606 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced1605, i32 0, i32 0
  %len1607 = load i32* %len_ptr1606
  call void @oat_array_bounds_check( i32 %len1607, i32 1 )
  %elt_ptr1608 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced1605, i32 0, i32 1, i32 1
  %_lhs1609 = load i32* %elt_ptr1608
  %bop1610 = add i32 %bop1604, %_lhs1609
  ret i32 %bop1610
}


define i32 @f (){

__fresh603:
  %_lhs1580 = load i32* @a1579
  %bop1581 = add i32 %_lhs1580, 1
  store i32 %bop1581, i32* @a1579
  %_lhs1582 = load i32* @a1579
  ret i32 %_lhs1582
}


