declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
define void @oat_init (){

__fresh103:
  ret void
}


define i32 @program (i32 %argc998, { i32, [ 0 x i8* ] }* %argv996){

__fresh102:
  %argc_slot999 = alloca i32
  store i32 %argc998, i32* %argc_slot999
  %argv_slot997 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv996, { i32, [ 0 x i8* ] }** %argv_slot997
  %array_ptr1000 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 3 )
  %array1001 = bitcast { i32, [ 0 x i32 ] }* %array_ptr1000 to { i32, [ 0 x i32 ] }* 
  %index_ptr1002 = getelementptr { i32, [ 0 x i32 ] }* %array1001, i32 0, i32 1, i32 0
  store i32 0, i32* %index_ptr1002
  %index_ptr1003 = getelementptr { i32, [ 0 x i32 ] }* %array1001, i32 0, i32 1, i32 1
  store i32 1, i32* %index_ptr1003
  %index_ptr1004 = getelementptr { i32, [ 0 x i32 ] }* %array1001, i32 0, i32 1, i32 2
  store i32 2, i32* %index_ptr1004
  %arr1005 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %array1001, { i32, [ 0 x i32 ] }** %arr1005
  %_lhs1006 = load { i32, [ 0 x i32 ] }** %arr1005
  %len_ptr1007 = getelementptr { i32, [ 0 x i32 ] }* %_lhs1006, i32 0, i32 0
  %len1008 = load i32* %len_ptr1007
  %len1009 = alloca i32
  store i32 %len1008, i32* %len1009
  %_lhs1010 = load i32* %len1009
  ret i32 %_lhs1010
}


