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


define i32 @program (i32 %argc976, { i32, [ 0 x i8* ] }* %argv974){

__fresh102:
  %argc_slot977 = alloca i32
  store i32 %argc976, i32* %argc_slot977
  %argv_slot975 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv974, { i32, [ 0 x i8* ] }** %argv_slot975
  %array_ptr978 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 3 )
  %array979 = bitcast { i32, [ 0 x i32 ] }* %array_ptr978 to { i32, [ 0 x i32 ] }* 
  %index_ptr980 = getelementptr { i32, [ 0 x i32 ] }* %array979, i32 0, i32 1, i32 0
  store i32 0, i32* %index_ptr980
  %index_ptr981 = getelementptr { i32, [ 0 x i32 ] }* %array979, i32 0, i32 1, i32 1
  store i32 1, i32* %index_ptr981
  %index_ptr982 = getelementptr { i32, [ 0 x i32 ] }* %array979, i32 0, i32 1, i32 2
  store i32 2, i32* %index_ptr982
  %arr983 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %array979, { i32, [ 0 x i32 ] }** %arr983
  %_lhs984 = load { i32, [ 0 x i32 ] }** %arr983
  %len_ptr985 = getelementptr { i32, [ 0 x i32 ] }* %_lhs984, i32 0, i32 0
  %len986 = load i32* %len_ptr985
  %len987 = alloca i32
  store i32 %len986, i32* %len987
  %_lhs988 = load i32* %len987
  ret i32 %_lhs988
}


