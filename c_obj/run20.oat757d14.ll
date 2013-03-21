declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
define void @oat_init (){

__fresh30:
  ret void
}


define i32 @program (i32 %argc118, { i32, [ 0 x i8* ] }* %argv116){

__fresh29:
  %argc_slot119 = alloca i32
  store i32 %argc118, i32* %argc_slot119
  %argv_slot117 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv116, { i32, [ 0 x i8* ] }** %argv_slot117
  %array_ptr120 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 3 )
  %array121 = bitcast { i32, [ 0 x i32 ] }* %array_ptr120 to { i32, [ 0 x i32 ] }* 
  %unop122 = sub i32 0, 1
  %index_ptr123 = getelementptr { i32, [ 0 x i32 ] }* %array121, i32 0, i32 1, i32 0
  store i32 %unop122, i32* %index_ptr123
  %unop124 = sub i32 0, 100
  %index_ptr125 = getelementptr { i32, [ 0 x i32 ] }* %array121, i32 0, i32 1, i32 1
  store i32 %unop124, i32* %index_ptr125
  %ret126 = call i32 @f (  )
  %index_ptr127 = getelementptr { i32, [ 0 x i32 ] }* %array121, i32 0, i32 1, i32 2
  store i32 %ret126, i32* %index_ptr127
  %a128 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %array121, { i32, [ 0 x i32 ] }** %a128
  %len_ptr129 = getelementptr { i32, [ 0 x i32 ] }** %a128, i32 0, i32 0
  %len130 = load i32* %len_ptr129
  call void @oat_array_bounds_check( i32 %len130, i32 2 )
  %array_dereferenced131 = load { i32, [ 0 x i32 ] }** %a128
  %elt_ptr132 = getelementptr i32 %array_dereferenced131, i32 0, i32 1, i32 2
  %_lhs133 = load i32* %elt_ptr132
  ret i32 %_lhs133
}


define i32 @f (){

__fresh28:
  ret i32 19
}


