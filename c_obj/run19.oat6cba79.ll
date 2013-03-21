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


define i32 @program (i32 %argc100, { i32, [ 0 x i8* ] }* %argv98){

__fresh26:
  %argc_slot101 = alloca i32
  store i32 %argc100, i32* %argc_slot101
  %argv_slot99 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv98, { i32, [ 0 x i8* ] }** %argv_slot99
  %i102 = alloca i32
  store i32 999, i32* %i102
  %array_ptr103 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 3 )
  %array104 = bitcast { i32, [ 0 x i32 ] }* %array_ptr103 to { i32, [ 0 x i32 ] }* 
  %unop105 = sub i32 0, 1
  %index_ptr106 = getelementptr { i32, [ 0 x i32 ] }* %array104, i32 0, i32 1, i32 0
  store i32 %unop105, i32* %index_ptr106
  %unop107 = sub i32 0, 100
  %index_ptr108 = getelementptr { i32, [ 0 x i32 ] }* %array104, i32 0, i32 1, i32 1
  store i32 %unop107, i32* %index_ptr108
  %_lhs109 = load i32* %i102
  %index_ptr110 = getelementptr { i32, [ 0 x i32 ] }* %array104, i32 0, i32 1, i32 2
  store i32 %_lhs109, i32* %index_ptr110
  %a111 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %array104, { i32, [ 0 x i32 ] }** %a111
  %_lhs112 = load { i32, [ 0 x i32 ] }** %a111
  %len_ptr113 = getelementptr { i32, [ 0 x i32 ] }* %_lhs112, i32 0, i32 0
  %len114 = load i32* %len_ptr113
  call void @oat_array_bounds_check( i32 %len114, i32 2 )
  %array_dereferenced115 = load { i32, [ 0 x i32 ] }** %a111
  %elt_ptr116 = getelementptr { i32, [ 0 x i32 ] }** %a111, i32 0, i32 1, i32 2
  %_lhs117 = load [ 0 x i32 ]* %elt_ptr116
  ret [ 0 x i32 ] %_lhs117
}


