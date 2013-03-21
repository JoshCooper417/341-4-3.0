declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@arr3370 = global { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* zeroinitializer, align 4		; initialized by arr3370.init
define void @oat_init (){

__fresh608:
  call void @arr3370.init(  )
  ret void
}


define i32 @program (i32 %argc3373, { i32, [ 0 x i8* ] }* %argv3371){

__fresh607:
  %argc_slot3374 = alloca i32
  store i32 %argc3373, i32* %argc_slot3374
  %argv_slot3372 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv3371, { i32, [ 0 x i8* ] }** %argv_slot3372
  %len_ptr3375 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** @arr3370, i32 0, i32 0
  %len3376 = load i32* %len_ptr3375
  call void @oat_array_bounds_check( i32 %len3376, i32 3 )
  %array_dereferenced3377 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** @arr3370
  %elt_ptr3378 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array_dereferenced3377, i32 0, i32 1, i32 3
  %len_ptr3379 = getelementptr { i32, [ 0 x i32 ] }** %elt_ptr3378, i32 0, i32 0
  %len3380 = load i32* %len_ptr3379
  call void @oat_array_bounds_check( i32 %len3380, i32 0 )
  %array_dereferenced3381 = load { i32, [ 0 x i32 ] }** %elt_ptr3378
  %elt_ptr3382 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced3381, i32 0, i32 1, i32 0
  %_lhs3383 = load i32* %elt_ptr3382
  ret i32 %_lhs3383
}


define void @arr3370.init (){

__fresh606:
  %array_ptr3358 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array3359 = bitcast { i32, [ 0 x i32 ] }* %array_ptr3358 to { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* 
  %array_ptr3360 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array3361 = bitcast { i32, [ 0 x i32 ] }* %array_ptr3360 to { i32, [ 0 x i32 ] }* 
  %index_ptr3362 = getelementptr { i32, [ 0 x i32 ] }* %array3361, i32 0, i32 1, i32 0
  store i32 1, i32* %index_ptr3362
  %index_ptr3363 = getelementptr { i32, [ 0 x i32 ] }* %array3361, i32 0, i32 1, i32 1
  store i32 2, i32* %index_ptr3363
  %index_ptr3364 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array3359, i32 0, i32 1, i32 0
  store { i32, [ 0 x i32 ] }* %array3361, { i32, [ 0 x i32 ] }** %index_ptr3364
  %array_ptr3365 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array3366 = bitcast { i32, [ 0 x i32 ] }* %array_ptr3365 to { i32, [ 0 x i32 ] }* 
  %index_ptr3367 = getelementptr { i32, [ 0 x i32 ] }* %array3366, i32 0, i32 1, i32 0
  store i32 3, i32* %index_ptr3367
  %index_ptr3368 = getelementptr { i32, [ 0 x i32 ] }* %array3366, i32 0, i32 1, i32 1
  store i32 4, i32* %index_ptr3368
  %index_ptr3369 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array3359, i32 0, i32 1, i32 1
  store { i32, [ 0 x i32 ] }* %array3366, { i32, [ 0 x i32 ] }** %index_ptr3369
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array3359, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** @arr3370
  ret void
}


