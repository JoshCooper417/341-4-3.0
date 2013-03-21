declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@a1711 = global i32 1, align 4
define void @oat_init (){

__fresh277:
  ret void
}


define i32 @program (i32 %argc1717, { i32, [ 0 x i8* ] }* %argv1715){

__fresh276:
  %argc_slot1718 = alloca i32
  store i32 %argc1717, i32* %argc_slot1718
  %argv_slot1716 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv1715, { i32, [ 0 x i8* ] }** %argv_slot1716
  store i32 1, i32* %i1720
  %b1728 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %array1723, { i32, [ 0 x i32 ] }** %b1728
  %_lhs1729 = load i32* @a1711
  %len_ptr1730 = getelementptr { i32, [ 0 x i32 ] }** %b1728, i32 0, i32 0
  %len1731 = load i32* %len_ptr1730
  call void @oat_array_bounds_check( i32 %len1731, i32 0 )
  %array_dereferenced1732 = load { i32, [ 0 x i32 ] }** %b1728
  %elt_ptr1733 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced1732, i32 0, i32 1, i32 0
  %_lhs1734 = load i32* %elt_ptr1733
  %bop1735 = add i32 %_lhs1729, %_lhs1734
  %len_ptr1736 = getelementptr { i32, [ 0 x i32 ] }** %b1728, i32 0, i32 0
  %len1737 = load i32* %len_ptr1736
  call void @oat_array_bounds_check( i32 %len1737, i32 1 )
  %array_dereferenced1738 = load { i32, [ 0 x i32 ] }** %b1728
  %elt_ptr1739 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced1738, i32 0, i32 1, i32 1
  %_lhs1740 = load i32* %elt_ptr1739
  %bop1741 = add i32 %bop1735, %_lhs1740
  ret i32 %bop1741
}


define i32 @f (){

__fresh272:
  %_lhs1712 = load i32* @a1711
  %bop1713 = add i32 %_lhs1712, 1
  store i32 %bop1713, i32* @a1711
  %_lhs1714 = load i32* @a1711
  ret i32 %_lhs1714
}


