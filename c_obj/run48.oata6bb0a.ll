declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@a1599 = global i32 1, align 4
define void @oat_init (){

__fresh323:
  ret void
}


define i32 @program (i32 %argc1605, { i32, [ 0 x i8* ] }* %argv1603){

__fresh318:
  %argc_slot1606 = alloca i32
  store i32 %argc1605, i32* %argc_slot1606
  %argv_slot1604 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv1603, { i32, [ 0 x i8* ] }** %argv_slot1604
  %ret1607 = call i32 @f (  )
  %array_ptr1610 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 %ret1607 )
  %array1611 = bitcast { i32, [ 0 x i32 ] }* %array_ptr1610 to { i32, [ 0 x i32 ] }* 
  %i1615 = alloca i32
  store i32 1, i32* %i1615
  %i1608 = load i32* %i1615
  br label %__check316

__fresh319:
  br label %__check316

__check316:
  br label %__end315

__fresh320:
  %cmp_op1613 = icmp slt i32 %i1608, %ret1607
  br i32 %cmp_op1613, label %__body317, label %__end315

__fresh321:
  br label %__body317

__body317:
  %ret1609 = call i32 @f (  )
  %elem_ptr1612 = getelementptr { i32, [ 0 x i32 ] }* %array1611, i32 0, i32 1, i32 %i1608
  store i32 %ret1609, i32* %elem_ptr1612
  %index_op1614 = add i32 %i1608, 1
  br label %__check316

__fresh322:
  br label %__end315

__end315:
  %b1617 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %array1611, { i32, [ 0 x i32 ] }** %b1617
  %_lhs1618 = load i32* @a1599
  %len_ptr1619 = getelementptr { i32, [ 0 x i32 ] }** %b1617, i32 0, i32 0
  %len1620 = load i32* %len_ptr1619
  call void @oat_array_bounds_check( i32 %len1620, i32 0 )
  %array_dereferenced1621 = load { i32, [ 0 x i32 ] }** %b1617
  %elt_ptr1622 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced1621, i32 0, i32 1, i32 0
  %_lhs1623 = load i32* %elt_ptr1622
  %bop1624 = add i32 %_lhs1618, %_lhs1623
  %len_ptr1625 = getelementptr { i32, [ 0 x i32 ] }** %b1617, i32 0, i32 0
  %len1626 = load i32* %len_ptr1625
  call void @oat_array_bounds_check( i32 %len1626, i32 1 )
  %array_dereferenced1627 = load { i32, [ 0 x i32 ] }** %b1617
  %elt_ptr1628 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced1627, i32 0, i32 1, i32 1
  %_lhs1629 = load i32* %elt_ptr1628
  %bop1630 = add i32 %bop1624, %_lhs1629
  ret i32 %bop1630
}


define i32 @f (){

__fresh314:
  %_lhs1600 = load i32* @a1599
  %bop1601 = add i32 %_lhs1600, 1
  store i32 %bop1601, i32* @a1599
  %_lhs1602 = load i32* @a1599
  ret i32 %_lhs1602
}


