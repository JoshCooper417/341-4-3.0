declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
define void @oat_init (){

__fresh134:
  ret void
}


define i32 @program (i32 %argc615, { i32, [ 0 x i8* ] }* %argv613){

__fresh133:
  %argc_slot616 = alloca i32
  store i32 %argc615, i32* %argc_slot616
  %argv_slot614 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv613, { i32, [ 0 x i8* ] }** %argv_slot614
  %array_ptr617 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array618 = bitcast { i32, [ 0 x i32 ] }* %array_ptr617 to { i32, [ 0 x i32 ] }* 
  %index_ptr619 = getelementptr { i32, [ 0 x i32 ] }* %array618, i32 0, i32 1, i32 0
  store i32 1, i32* %index_ptr619
  %index_ptr620 = getelementptr { i32, [ 0 x i32 ] }* %array618, i32 0, i32 1, i32 1
  store i32 2, i32* %index_ptr620
  %arr621 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %array618, { i32, [ 0 x i32 ] }** %arr621
  %_lhs622 = load { i32, [ 0 x i32 ] }** %arr621
  %len_ptr623 = getelementptr { i32, [ 0 x i32 ] }* %_lhs622, i32 0, i32 0
  %len624 = load i32* %len_ptr623
  call void @oat_array_bounds_check( i32 %len624, i32 1 )
  %array_dereferenced625 = load { i32, [ 0 x i32 ] }** %arr621
  %_lhs627 = load i32* %elt_ptr626
  ret i32 %_lhs627
}


