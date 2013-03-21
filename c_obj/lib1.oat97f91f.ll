declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
define void @oat_init (){

__fresh381:
  ret void
}


define i32 @program (i32 %argc1788, { i32, [ 0 x i8* ] }* %argv1786){

__fresh380:
  %argc_slot1789 = alloca i32
  store i32 %argc1788, i32* %argc_slot1789
  %argv_slot1787 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv1786, { i32, [ 0 x i8* ] }** %argv_slot1787
  %array_ptr1790 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 3 )
  %array1791 = bitcast { i32, [ 0 x i32 ] }* %array_ptr1790 to { i32, [ 0 x i32 ] }* 
  %index_ptr1792 = getelementptr { i32, [ 0 x i32 ] }* %array1791, i32 0, i32 1, i32 0
  store i32 0, i32* %index_ptr1792
  %index_ptr1793 = getelementptr { i32, [ 0 x i32 ] }* %array1791, i32 0, i32 1, i32 1
  store i32 1, i32* %index_ptr1793
  %index_ptr1794 = getelementptr { i32, [ 0 x i32 ] }* %array1791, i32 0, i32 1, i32 2
  store i32 2, i32* %index_ptr1794
  %arr1795 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %array1791, { i32, [ 0 x i32 ] }** %arr1795
  %_lhs1796 = load { i32, [ 0 x i32 ] }** %arr1795
  %len_ptr1797 = getelementptr { i32, [ 0 x i32 ] }* %_lhs1796, i32 0, i32 0
  %len1798 = load i32* %len_ptr1797
  %len1799 = alloca i32
  store i32 %len1798, i32* %len1799
  %_lhs1800 = load i32* %len1799
  ret i32 %_lhs1800
}


