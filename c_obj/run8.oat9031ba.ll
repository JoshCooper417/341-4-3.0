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


define i32 @program (i32 %argc576, { i32, [ 0 x i8* ] }* %argv574){

__fresh133:
  %argc_slot577 = alloca i32
  store i32 %argc576, i32* %argc_slot577
  %argv_slot575 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv574, { i32, [ 0 x i8* ] }** %argv_slot575
  %array_ptr578 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array579 = bitcast { i32, [ 0 x i32 ] }* %array_ptr578 to { i32, [ 0 x i32 ] }* 
  %index_ptr580 = getelementptr { i32, [ 0 x i32 ] }* %array579, i32 0, i32 1, i32 0
  store i32 1, i32* %index_ptr580
  %index_ptr581 = getelementptr { i32, [ 0 x i32 ] }* %array579, i32 0, i32 1, i32 1
  store i32 2, i32* %index_ptr581
  %arr582 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %array579, { i32, [ 0 x i32 ] }** %arr582
  %len_ptr583 = getelementptr { i32, [ 0 x i32 ] }** %arr582, i32 0, i32 0
  %len584 = load i32* %len_ptr583
  call void @oat_array_bounds_check( i32 %len584, i32 1 )
  %array_dereferenced585 = load { i32, [ 0 x i32 ] }** %arr582
  %elt_ptr586 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced585, i32 0, i32 1, i32 1
  %_lhs587 = load i32* %elt_ptr586
  ret i32 %_lhs587
}


