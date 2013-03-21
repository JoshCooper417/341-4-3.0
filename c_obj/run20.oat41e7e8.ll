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


define i32 @program (i32 %argc120, { i32, [ 0 x i8* ] }* %argv118){

__fresh29:
  %argc_slot121 = alloca i32
  store i32 %argc120, i32* %argc_slot121
  %argv_slot119 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv118, { i32, [ 0 x i8* ] }** %argv_slot119
  %array_ptr122 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 3 )
  %array123 = bitcast { i32, [ 0 x i32 ] }* %array_ptr122 to { i32, [ 0 x i32 ] }* 
  %unop124 = sub i32 0, 1
  %index_ptr125 = getelementptr { i32, [ 0 x i32 ] }* %array123, i32 0, i32 1, i32 0
  store i32 %unop124, i32* %index_ptr125
  %unop126 = sub i32 0, 100
  %index_ptr127 = getelementptr { i32, [ 0 x i32 ] }* %array123, i32 0, i32 1, i32 1
  store i32 %unop126, i32* %index_ptr127
  %ret128 = call i32 @f (  )
  %index_ptr129 = getelementptr { i32, [ 0 x i32 ] }* %array123, i32 0, i32 1, i32 2
  store i32 %ret128, i32* %index_ptr129
  %a130 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %array123, { i32, [ 0 x i32 ] }** %a130
  %_lhs131 = load { i32, [ 0 x i32 ] }** %a130
  %len_ptr132 = getelementptr { i32, [ 0 x i32 ] }* %_lhs131, i32 0, i32 0
  %len133 = load i32* %len_ptr132
  call void @oat_array_bounds_check( i32 %len133, i32 2 )
  %array_dereferenced134 = load { i32, [ 0 x i32 ] }** %a130
  %elt_ptr135 = getelementptr { i32, [ 0 x i32 ] }** %a130, i32 0, i32 1, i32 2
  %_lhs136 = load i32* %elt_ptr135
  ret i32 %_lhs136
}


define i32 @f (){

__fresh28:
  ret i32 19
}


