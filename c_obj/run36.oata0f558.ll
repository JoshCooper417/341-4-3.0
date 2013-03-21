declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
define void @oat_init (){

__fresh844:
  ret void
}


define i32 @program (i32 %argc3349, { i32, [ 0 x i8* ] }* %argv3347){

__fresh843:
  %argc_slot3350 = alloca i32
  store i32 %argc3349, i32* %argc_slot3350
  %argv_slot3348 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv3347, { i32, [ 0 x i8* ] }** %argv_slot3348
  %array_ptr3351 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array3352 = bitcast { i32, [ 0 x i32 ] }* %array_ptr3351 to { i32, [ 0 x i32 ] }* 
  %index_ptr3353 = getelementptr { i32, [ 0 x i32 ] }* %array3352, i32 0, i32 1, i32 0
  store i32 0, i32* %index_ptr3353
  %index_ptr3354 = getelementptr { i32, [ 0 x i32 ] }* %array3352, i32 0, i32 1, i32 1
  store i32 0, i32* %index_ptr3354
  %a3355 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %array3352, { i32, [ 0 x i32 ] }** %a3355
  %unop3356 = sub i32 0, 1
  %len_ptr3357 = getelementptr { i32, [ 0 x i32 ] }** %a3355, i32 0, i32 0
  %len3358 = load i32* %len_ptr3357
  call void @oat_array_bounds_check( i32 %len3358, i32 %unop3356 )
  %array_dereferenced3359 = load { i32, [ 0 x i32 ] }** %a3355
  %elt_ptr3360 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced3359, i32 0, i32 1, i32 %unop3356
  %_lhs3361 = load i32* %elt_ptr3360
  ret i32 %_lhs3361
}


