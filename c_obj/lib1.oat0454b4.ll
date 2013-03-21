declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
define void @oat_init (){

__fresh285:
  ret void
}


define i32 @program (i32 %argc1775, { i32, [ 0 x i8* ] }* %argv1773){

__fresh284:
  %argc_slot1776 = alloca i32
  store i32 %argc1775, i32* %argc_slot1776
  %argv_slot1774 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv1773, { i32, [ 0 x i8* ] }** %argv_slot1774
  %array_ptr1777 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 3 )
  %array1778 = bitcast { i32, [ 0 x i32 ] }* %array_ptr1777 to { i32, [ 0 x i32 ] }* 
  %index_ptr1779 = getelementptr { i32, [ 0 x i32 ] }* %array1778, i32 0, i32 1, i32 0
  store i32 0, i32* %index_ptr1779
  %index_ptr1780 = getelementptr { i32, [ 0 x i32 ] }* %array1778, i32 0, i32 1, i32 1
  store i32 1, i32* %index_ptr1780
  %index_ptr1781 = getelementptr { i32, [ 0 x i32 ] }* %array1778, i32 0, i32 1, i32 2
  store i32 2, i32* %index_ptr1781
  %arr1782 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %array1778, { i32, [ 0 x i32 ] }** %arr1782
  %_lhs1783 = load { i32, [ 0 x i32 ] }** %arr1782
  %len_ptr1784 = getelementptr { i32, [ 0 x i32 ] }* %_lhs1783, i32 0, i32 0
  %len1785 = load i32* %len_ptr1784
  %len1786 = alloca i32
  store i32 %len1785, i32* %len1786
  %_lhs1787 = load i32* %len1786
  ret i32 %_lhs1787
}


