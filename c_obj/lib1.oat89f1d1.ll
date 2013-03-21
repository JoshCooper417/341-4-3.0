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


define i32 @program (i32 %argc893, { i32, [ 0 x i8* ] }* %argv891){

__fresh102:
  %argc_slot894 = alloca i32
  store i32 %argc893, i32* %argc_slot894
  %argv_slot892 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv891, { i32, [ 0 x i8* ] }** %argv_slot892
  %array_ptr895 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 3 )
  %array896 = bitcast { i32, [ 0 x i32 ] }* %array_ptr895 to { i32, [ 0 x i32 ] }* 
  %index_ptr897 = getelementptr { i32, [ 0 x i32 ] }* %array896, i32 0, i32 1, i32 0
  store i32 0, i32* %index_ptr897
  %index_ptr898 = getelementptr { i32, [ 0 x i32 ] }* %array896, i32 0, i32 1, i32 1
  store i32 1, i32* %index_ptr898
  %index_ptr899 = getelementptr { i32, [ 0 x i32 ] }* %array896, i32 0, i32 1, i32 2
  store i32 2, i32* %index_ptr899
  %arr900 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %array896, { i32, [ 0 x i32 ] }** %arr900
  %_lhs901 = load { i32, [ 0 x i32 ] }** %arr900
  %len_ptr902 = getelementptr { i32, [ 0 x i32 ] }* %_lhs901, i32 0, i32 0
  %len903 = load i32* %len_ptr902
  %len904 = alloca i32
  store i32 %len903, i32* %len904
  %_lhs905 = load i32* %len904
  ret i32 %_lhs905
}


