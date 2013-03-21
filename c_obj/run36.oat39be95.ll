declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
define void @oat_init (){

__fresh1228:
  ret void
}


define i32 @program (i32 %argc3359, { i32, [ 0 x i8* ] }* %argv3357){

__fresh1227:
  %argc_slot3360 = alloca i32
  store i32 %argc3359, i32* %argc_slot3360
  %argv_slot3358 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv3357, { i32, [ 0 x i8* ] }** %argv_slot3358
  %array_ptr3361 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array3362 = bitcast { i32, [ 0 x i32 ] }* %array_ptr3361 to { i32, [ 0 x i32 ] }* 
  %index_ptr3363 = getelementptr { i32, [ 0 x i32 ] }* %array3362, i32 0, i32 1, i32 0
  store i32 0, i32* %index_ptr3363
  %index_ptr3364 = getelementptr { i32, [ 0 x i32 ] }* %array3362, i32 0, i32 1, i32 1
  store i32 0, i32* %index_ptr3364
  %a3365 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %array3362, { i32, [ 0 x i32 ] }** %a3365
  %unop3366 = sub i32 0, 1
  %array_dereferenced3367 = load { i32, [ 0 x i32 ] }** %a3365
  %len_ptr3368 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced3367, i32 0, i32 0
  %len3369 = load i32* %len_ptr3368
  call void @oat_array_bounds_check( i32 %len3369, i32 %unop3366 )
  %elt_ptr3370 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced3367, i32 0, i32 1, i32 %unop3366
  %_lhs3371 = load i32* %elt_ptr3370
  ret i32 %_lhs3371
}


