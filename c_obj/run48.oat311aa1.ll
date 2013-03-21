declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@a1598 = global i32 1, align 4
define void @oat_init (){

__fresh257:
  ret void
}


define i32 @program (i32 %argc1604, { i32, [ 0 x i8* ] }* %argv1602){

__fresh253:
  %argc_slot1605 = alloca i32
  store i32 %argc1604, i32* %argc_slot1605
  %argv_slot1603 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv1602, { i32, [ 0 x i8* ] }** %argv_slot1603
  br label %__check251

__fresh254:
  br label %__check251

__check251:
  br label %__end250

__fresh255:
  br label %__body252

__body252:
  br label %__check251

__fresh256:
  br label %__end250

__end250:
  %b1616 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %array1610, { i32, [ 0 x i32 ] }** %b1616
  %_lhs1617 = load i32* @a1598
  %len_ptr1618 = getelementptr { i32, [ 0 x i32 ] }** %b1616, i32 0, i32 0
  %len1619 = load i32* %len_ptr1618
  call void @oat_array_bounds_check( i32 %len1619, i32 0 )
  %array_dereferenced1620 = load { i32, [ 0 x i32 ] }** %b1616
  %elt_ptr1621 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced1620, i32 0, i32 1, i32 0
  %_lhs1622 = load i32* %elt_ptr1621
  %bop1623 = add i32 %_lhs1617, %_lhs1622
  %len_ptr1624 = getelementptr { i32, [ 0 x i32 ] }** %b1616, i32 0, i32 0
  %len1625 = load i32* %len_ptr1624
  call void @oat_array_bounds_check( i32 %len1625, i32 1 )
  %array_dereferenced1626 = load { i32, [ 0 x i32 ] }** %b1616
  %elt_ptr1627 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced1626, i32 0, i32 1, i32 1
  %_lhs1628 = load i32* %elt_ptr1627
  %bop1629 = add i32 %bop1623, %_lhs1628
  ret i32 %bop1629
}


define i32 @f (){

__fresh249:
  %_lhs1599 = load i32* @a1598
  %bop1600 = add i32 %_lhs1599, 1
  store i32 %bop1600, i32* @a1598
  %_lhs1601 = load i32* @a1598
  ret i32 %_lhs1601
}


