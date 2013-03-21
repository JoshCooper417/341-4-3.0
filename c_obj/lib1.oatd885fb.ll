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


define i32 @program (i32 %argc884, { i32, [ 0 x i8* ] }* %argv882){

__fresh102:
  %argc_slot885 = alloca i32
  store i32 %argc884, i32* %argc_slot885
  %argv_slot883 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv882, { i32, [ 0 x i8* ] }** %argv_slot883
  %array_ptr886 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 3 )
  %array887 = bitcast { i32, [ 0 x i32 ] }* %array_ptr886 to { i32, [ 0 x i32 ] }* 
  %index_ptr888 = getelementptr { i32, [ 0 x i32 ] }* %array887, i32 0, i32 1, i32 0
  store i32 0, i32* %index_ptr888
  %index_ptr889 = getelementptr { i32, [ 0 x i32 ] }* %array887, i32 0, i32 1, i32 1
  store i32 1, i32* %index_ptr889
  %index_ptr890 = getelementptr { i32, [ 0 x i32 ] }* %array887, i32 0, i32 1, i32 2
  store i32 2, i32* %index_ptr890
  %arr891 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %array887, { i32, [ 0 x i32 ] }** %arr891
  %_lhs892 = load { i32, [ 0 x i32 ] }** %arr891
  %len_ptr893 = getelementptr { i32, [ 0 x i32 ] }* %_lhs892, i32 0, i32 0
  %len894 = load i32* %len_ptr893
  %len895 = alloca i32
  store i32 %len894, i32* %len895
  %_lhs896 = load i32* %len895
  ret i32 %_lhs896
}


