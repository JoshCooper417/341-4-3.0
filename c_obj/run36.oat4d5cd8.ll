declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
define void @oat_init (){

__fresh400:
  ret void
}


define i32 @program (i32 %argc1981, { i32, [ 0 x i8* ] }* %argv1979){

__fresh399:
  %argc_slot1982 = alloca i32
  store i32 %argc1981, i32* %argc_slot1982
  %argv_slot1980 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv1979, { i32, [ 0 x i8* ] }** %argv_slot1980
  %array_ptr1983 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array1984 = bitcast { i32, [ 0 x i32 ] }* %array_ptr1983 to { i32, [ 0 x i32 ] }* 
  %index_ptr1985 = getelementptr { i32, [ 0 x i32 ] }* %array1984, i32 0, i32 1, i32 0
  store i32 0, i32* %index_ptr1985
  %index_ptr1986 = getelementptr { i32, [ 0 x i32 ] }* %array1984, i32 0, i32 1, i32 1
  store i32 0, i32* %index_ptr1986
  %a1987 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %array1984, { i32, [ 0 x i32 ] }** %a1987
  %_lhs1989 = load { i32, [ 0 x i32 ] }** %a1987
  ret { i32, [ 0 x i32 ] }* %_lhs1989
}


