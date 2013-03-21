declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
define void @oat_init (){

__fresh27:
  ret void
}


define i32 @program (i32 %argc95, { i32, [ 0 x i8* ] }* %argv93){

__fresh26:
  %argc_slot96 = alloca i32
  store i32 %argc95, i32* %argc_slot96
  %argv_slot94 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv93, { i32, [ 0 x i8* ] }** %argv_slot94
  %i97 = alloca i32
  store i32 999, i32* %i97
  %array_ptr98 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 3 )
  %array99 = bitcast { i32, [ 0 x i32 ] }* %array_ptr98 to { i32, [ 0 x i32 ] }* 
  %unop100 = sub i32 0, 1
  %index_ptr101 = getelementptr { i32, [ 0 x i32 ] }* %array99, i32 0, i32 1, i32 0
  store i32 %unop100, i32* %index_ptr101
  %unop102 = sub i32 0, 100
  %index_ptr103 = getelementptr { i32, [ 0 x i32 ] }* %array99, i32 0, i32 1, i32 1
  store i32 %unop102, i32* %index_ptr103
  %_lhs104 = load i32* %i97
  %index_ptr105 = getelementptr { i32, [ 0 x i32 ] }* %array99, i32 0, i32 1, i32 2
  store i32 %_lhs104, i32* %index_ptr105
  %a106 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %array99, { i32, [ 0 x i32 ] }** %a106
  %_lhs107 = load { i32, [ 0 x i32 ] }** %a106
  ret { i32, [ 0 x i32 ] }* %_lhs107
}


