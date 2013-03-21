declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
define void @oat_init (){

__fresh32:
  ret void
}


define i32 @program (i32 %argc99, { i32, [ 0 x i8* ] }* %argv97){

__fresh31:
  %argc_slot100 = alloca i32
  store i32 %argc99, i32* %argc_slot100
  %argv_slot98 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv97, { i32, [ 0 x i8* ] }** %argv_slot98
  %i101 = alloca i32
  store i32 999, i32* %i101
  %array_ptr102 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 3 )
  %array103 = bitcast { i32, [ 0 x i32 ] }* %array_ptr102 to { i32, [ 0 x i32 ] }* 
  %unop104 = sub i32 0, 1
  %index_ptr105 = getelementptr { i32, [ 0 x i32 ] }* %array103, i32 0, i32 1, i32 0
  store i32 %unop104, i32* %index_ptr105
  %unop106 = sub i32 0, 100
  %index_ptr107 = getelementptr { i32, [ 0 x i32 ] }* %array103, i32 0, i32 1, i32 1
  store i32 %unop106, i32* %index_ptr107
  %_lhs108 = load i32* %i101
  %index_ptr109 = getelementptr { i32, [ 0 x i32 ] }* %array103, i32 0, i32 1, i32 2
  store i32 %_lhs108, i32* %index_ptr109
  %a110 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %array103, { i32, [ 0 x i32 ] }** %a110
  %array_dereferenced111 = load { i32, [ 0 x i32 ] }** %a110
  %len_ptr112 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced111, i32 0, i32 0
  %len113 = load i32* %len_ptr112
  call void @oat_array_bounds_check( i32 %len113, i32 2 )
  %elt_ptr114 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced111, i32 0, i32 1, i32 2
  %_lhs115 = load i32* %elt_ptr114
  ret i32 %_lhs115
}


