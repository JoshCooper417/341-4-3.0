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


define i32 @program (i32 %argc3384, { i32, [ 0 x i8* ] }* %argv3382){

__fresh1227:
  %argc_slot3385 = alloca i32
  store i32 %argc3384, i32* %argc_slot3385
  %argv_slot3383 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv3382, { i32, [ 0 x i8* ] }** %argv_slot3383
  %array_ptr3386 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array3387 = bitcast { i32, [ 0 x i32 ] }* %array_ptr3386 to { i32, [ 0 x i32 ] }* 
  %index_ptr3388 = getelementptr { i32, [ 0 x i32 ] }* %array3387, i32 0, i32 1, i32 0
  store i32 0, i32* %index_ptr3388
  %index_ptr3389 = getelementptr { i32, [ 0 x i32 ] }* %array3387, i32 0, i32 1, i32 1
  store i32 0, i32* %index_ptr3389
  %a3390 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %array3387, { i32, [ 0 x i32 ] }** %a3390
  %unop3391 = sub i32 0, 1
  %array_dereferenced3392 = load { i32, [ 0 x i32 ] }** %a3390
  %len_ptr3393 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced3392, i32 0, i32 0
  %len3394 = load i32* %len_ptr3393
  call void @oat_array_bounds_check( i32 %len3394, i32 %unop3391 )
  %elt_ptr3395 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced3392, i32 0, i32 1, i32 %unop3391
  %_lhs3396 = load i32* %elt_ptr3395
  ret i32 %_lhs3396
}


