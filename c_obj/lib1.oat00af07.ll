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


define i32 @program (i32 %argc954, { i32, [ 0 x i8* ] }* %argv952){

__fresh102:
  %argc_slot955 = alloca i32
  store i32 %argc954, i32* %argc_slot955
  %argv_slot953 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv952, { i32, [ 0 x i8* ] }** %argv_slot953
  %array_ptr956 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 3 )
  %array957 = bitcast { i32, [ 0 x i32 ] }* %array_ptr956 to { i32, [ 0 x i32 ] }* 
  %index_ptr958 = getelementptr { i32, [ 0 x i32 ] }* %array957, i32 0, i32 1, i32 0
  store i32 0, i32* %index_ptr958
  %index_ptr959 = getelementptr { i32, [ 0 x i32 ] }* %array957, i32 0, i32 1, i32 1
  store i32 1, i32* %index_ptr959
  %index_ptr960 = getelementptr { i32, [ 0 x i32 ] }* %array957, i32 0, i32 1, i32 2
  store i32 2, i32* %index_ptr960
  %arr961 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %array957, { i32, [ 0 x i32 ] }** %arr961
  %_lhs962 = load { i32, [ 0 x i32 ] }** %arr961
  %len_ptr963 = getelementptr { i32, [ 0 x i32 ] }* %_lhs962, i32 0, i32 0
  %len964 = load i32* %len_ptr963
  %len965 = alloca i32
  store i32 %len964, i32* %len965
  %_lhs966 = load i32* %len965
  ret i32 %_lhs966
}


