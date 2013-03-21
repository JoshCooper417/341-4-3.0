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


define i32 @program (i32 %argc1827, { i32, [ 0 x i8* ] }* %argv1825){

__fresh380:
  %argc_slot1828 = alloca i32
  store i32 %argc1827, i32* %argc_slot1828
  %argv_slot1826 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv1825, { i32, [ 0 x i8* ] }** %argv_slot1826
  %array_ptr1829 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 3 )
  %array1830 = bitcast { i32, [ 0 x i32 ] }* %array_ptr1829 to { i32, [ 0 x i32 ] }* 
  %index_ptr1831 = getelementptr { i32, [ 0 x i32 ] }* %array1830, i32 0, i32 1, i32 0
  store i32 0, i32* %index_ptr1831
  %index_ptr1832 = getelementptr { i32, [ 0 x i32 ] }* %array1830, i32 0, i32 1, i32 1
  store i32 1, i32* %index_ptr1832
  %index_ptr1833 = getelementptr { i32, [ 0 x i32 ] }* %array1830, i32 0, i32 1, i32 2
  store i32 2, i32* %index_ptr1833
  %arr1834 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %array1830, { i32, [ 0 x i32 ] }** %arr1834
  %_lhs1835 = load { i32, [ 0 x i32 ] }** %arr1834
  %len_ptr1836 = getelementptr { i32, [ 0 x i32 ] }* %_lhs1835, i32 0, i32 0
  %len1837 = load i32* %len_ptr1836
  %len1838 = alloca i32
  store i32 %len1837, i32* %len1838
  %_lhs1839 = load i32* %len1838
  ret i32 %_lhs1839
}


