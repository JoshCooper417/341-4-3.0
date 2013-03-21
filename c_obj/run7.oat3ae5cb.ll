declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@arr3371 = global { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* zeroinitializer, align 4		; initialized by arr3371.init
define void @oat_init (){

__fresh670:
  call void @arr3371.init(  )
  ret void
}


define i32 @program (i32 %argc3374, { i32, [ 0 x i8* ] }* %argv3372){

__fresh669:
  %argc_slot3375 = alloca i32
  store i32 %argc3374, i32* %argc_slot3375
  %argv_slot3373 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv3372, { i32, [ 0 x i8* ] }** %argv_slot3373
  %len_ptr3376 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** @arr3371, i32 0, i32 0
  %len3377 = load i32* %len_ptr3376
  call void @oat_array_bounds_check( i32 %len3377, i32 3 )
  %array_dereferenced3378 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** @arr3371
  %elt_ptr3379 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array_dereferenced3378, i32 0, i32 1, i32 3
  %len_ptr3380 = getelementptr { i32, [ 0 x i32 ] }** %elt_ptr3379, i32 0, i32 0
  %len3381 = load i32* %len_ptr3380
  call void @oat_array_bounds_check( i32 %len3381, i32 0 )
  %array_dereferenced3382 = load { i32, [ 0 x i32 ] }** %elt_ptr3379
  %elt_ptr3383 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced3382, i32 0, i32 1, i32 0
  %_lhs3384 = load i32* %elt_ptr3383
  ret i32 %_lhs3384
}


define void @arr3371.init (){

__fresh668:
  %array_ptr3359 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array3360 = bitcast { i32, [ 0 x i32 ] }* %array_ptr3359 to { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* 
  %array_ptr3361 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array3362 = bitcast { i32, [ 0 x i32 ] }* %array_ptr3361 to { i32, [ 0 x i32 ] }* 
  %index_ptr3363 = getelementptr { i32, [ 0 x i32 ] }* %array3362, i32 0, i32 1, i32 0
  store i32 1, i32* %index_ptr3363
  %index_ptr3364 = getelementptr { i32, [ 0 x i32 ] }* %array3362, i32 0, i32 1, i32 1
  store i32 2, i32* %index_ptr3364
  %index_ptr3365 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array3360, i32 0, i32 1, i32 0
  store { i32, [ 0 x i32 ] }* %array3362, { i32, [ 0 x i32 ] }** %index_ptr3365
  %array_ptr3366 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array3367 = bitcast { i32, [ 0 x i32 ] }* %array_ptr3366 to { i32, [ 0 x i32 ] }* 
  %index_ptr3368 = getelementptr { i32, [ 0 x i32 ] }* %array3367, i32 0, i32 1, i32 0
  store i32 3, i32* %index_ptr3368
  %index_ptr3369 = getelementptr { i32, [ 0 x i32 ] }* %array3367, i32 0, i32 1, i32 1
  store i32 4, i32* %index_ptr3369
  %index_ptr3370 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array3360, i32 0, i32 1, i32 1
  store { i32, [ 0 x i32 ] }* %array3367, { i32, [ 0 x i32 ] }** %index_ptr3370
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array3360, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** @arr3371
  ret void
}


