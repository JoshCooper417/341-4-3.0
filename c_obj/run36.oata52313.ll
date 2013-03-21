declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
define void @oat_init (){

__fresh592:
  ret void
}


define i32 @program (i32 %argc3368, { i32, [ 0 x i8* ] }* %argv3366){

__fresh591:
  %argc_slot3369 = alloca i32
  store i32 %argc3368, i32* %argc_slot3369
  %argv_slot3367 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv3366, { i32, [ 0 x i8* ] }** %argv_slot3367
  %array_ptr3370 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array3371 = bitcast { i32, [ 0 x i32 ] }* %array_ptr3370 to { i32, [ 0 x i32 ] }* 
  %index_ptr3372 = getelementptr { i32, [ 0 x i32 ] }* %array3371, i32 0, i32 1, i32 0
  store i32 0, i32* %index_ptr3372
  %index_ptr3373 = getelementptr { i32, [ 0 x i32 ] }* %array3371, i32 0, i32 1, i32 1
  store i32 0, i32* %index_ptr3373
  %a3374 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %array3371, { i32, [ 0 x i32 ] }** %a3374
  %unop3375 = sub i32 0, 1
  %len_ptr3376 = getelementptr { i32, [ 0 x i32 ] }** %a3374, i32 0, i32 0
  %len3377 = load i32* %len_ptr3376
  call void @oat_array_bounds_check( i32 %len3377, i32 %unop3375 )
  %array_dereferenced3378 = load { i32, [ 0 x i32 ] }** %a3374
  %elt_ptr3379 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced3378, i32 0, i32 1, i32 %unop3375
  %_lhs3380 = load i32* %elt_ptr3379
  ret i32 %_lhs3380
}


