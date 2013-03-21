declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
define void @oat_init (){

__fresh672:
  ret void
}


define i32 @program (i32 %argc3364, { i32, [ 0 x i8* ] }* %argv3362){

__fresh671:
  %argc_slot3365 = alloca i32
  store i32 %argc3364, i32* %argc_slot3365
  %argv_slot3363 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv3362, { i32, [ 0 x i8* ] }** %argv_slot3363
  %array_ptr3366 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array3367 = bitcast { i32, [ 0 x i32 ] }* %array_ptr3366 to { i32, [ 0 x i32 ] }* 
  %index_ptr3368 = getelementptr { i32, [ 0 x i32 ] }* %array3367, i32 0, i32 1, i32 0
  store i32 0, i32* %index_ptr3368
  %index_ptr3369 = getelementptr { i32, [ 0 x i32 ] }* %array3367, i32 0, i32 1, i32 1
  store i32 0, i32* %index_ptr3369
  %a3370 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %array3367, { i32, [ 0 x i32 ] }** %a3370
  %unop3371 = sub i32 0, 1
  %len_ptr3372 = getelementptr { i32, [ 0 x i32 ] }** %a3370, i32 0, i32 0
  %len3373 = load i32* %len_ptr3372
  call void @oat_array_bounds_check( i32 %len3373, i32 %unop3371 )
  %array_dereferenced3374 = load { i32, [ 0 x i32 ] }** %a3370
  %elt_ptr3375 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced3374, i32 0, i32 1, i32 %unop3371
  %_lhs3376 = load i32* %elt_ptr3375
  ret i32 %_lhs3376
}


