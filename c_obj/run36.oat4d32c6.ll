declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
define void @oat_init (){

__fresh667:
  ret void
}


define i32 @program (i32 %argc3369, { i32, [ 0 x i8* ] }* %argv3367){

__fresh666:
  %argc_slot3370 = alloca i32
  store i32 %argc3369, i32* %argc_slot3370
  %argv_slot3368 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv3367, { i32, [ 0 x i8* ] }** %argv_slot3368
  %array_ptr3371 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array3372 = bitcast { i32, [ 0 x i32 ] }* %array_ptr3371 to { i32, [ 0 x i32 ] }* 
  %index_ptr3373 = getelementptr { i32, [ 0 x i32 ] }* %array3372, i32 0, i32 1, i32 0
  store i32 0, i32* %index_ptr3373
  %index_ptr3374 = getelementptr { i32, [ 0 x i32 ] }* %array3372, i32 0, i32 1, i32 1
  store i32 0, i32* %index_ptr3374
  %a3375 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %array3372, { i32, [ 0 x i32 ] }** %a3375
  %unop3376 = sub i32 0, 1
  %len_ptr3377 = getelementptr { i32, [ 0 x i32 ] }** %a3375, i32 0, i32 0
  %len3378 = load i32* %len_ptr3377
  call void @oat_array_bounds_check( i32 %len3378, i32 %unop3376 )
  %array_dereferenced3379 = load { i32, [ 0 x i32 ] }** %a3375
  %elt_ptr3380 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced3379, i32 0, i32 1, i32 %unop3376
  %_lhs3381 = load i32* %elt_ptr3380
  ret i32 %_lhs3381
}


