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


define i32 @program (i32 %argc3395, { i32, [ 0 x i8* ] }* %argv3393){

__fresh671:
  %argc_slot3396 = alloca i32
  store i32 %argc3395, i32* %argc_slot3396
  %argv_slot3394 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv3393, { i32, [ 0 x i8* ] }** %argv_slot3394
  %array_ptr3397 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array3398 = bitcast { i32, [ 0 x i32 ] }* %array_ptr3397 to { i32, [ 0 x i32 ] }* 
  %index_ptr3399 = getelementptr { i32, [ 0 x i32 ] }* %array3398, i32 0, i32 1, i32 0
  store i32 0, i32* %index_ptr3399
  %index_ptr3400 = getelementptr { i32, [ 0 x i32 ] }* %array3398, i32 0, i32 1, i32 1
  store i32 0, i32* %index_ptr3400
  %a3401 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %array3398, { i32, [ 0 x i32 ] }** %a3401
  %unop3402 = sub i32 0, 1
  %len_ptr3403 = getelementptr { i32, [ 0 x i32 ] }** %a3401, i32 0, i32 0
  %len3404 = load i32* %len_ptr3403
  call void @oat_array_bounds_check( i32 %len3404, i32 %unop3402 )
  %array_dereferenced3405 = load { i32, [ 0 x i32 ] }** %a3401
  %elt_ptr3406 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced3405, i32 0, i32 1, i32 %unop3402
  %_lhs3407 = load i32* %elt_ptr3406
  ret i32 %_lhs3407
}


