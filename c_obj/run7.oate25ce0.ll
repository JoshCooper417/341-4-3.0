declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@arr3360 = global { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* zeroinitializer, align 4		; initialized by arr3360.init
define void @oat_init (){

__fresh1220:
  call void @arr3360.init(  )
  ret void
}


define i32 @program (i32 %argc3363, { i32, [ 0 x i8* ] }* %argv3361){

__fresh1219:
  %argc_slot3364 = alloca i32
  store i32 %argc3363, i32* %argc_slot3364
  %argv_slot3362 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv3361, { i32, [ 0 x i8* ] }** %argv_slot3362
  %array_dereferenced3365 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** @arr3360
  %len_ptr3366 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array_dereferenced3365, i32 0, i32 0
  %len3367 = load i32* %len_ptr3366
  call void @oat_array_bounds_check( i32 %len3367, i32 3 )
  %elt_ptr3368 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array_dereferenced3365, i32 0, i32 1, i32 3
  %array_dereferenced3369 = load { i32, [ 0 x i32 ] }** %elt_ptr3368
  %len_ptr3370 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced3369, i32 0, i32 0
  %len3371 = load i32* %len_ptr3370
  call void @oat_array_bounds_check( i32 %len3371, i32 0 )
  %elt_ptr3372 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced3369, i32 0, i32 1, i32 0
  %_lhs3373 = load i32* %elt_ptr3372
  ret i32 %_lhs3373
}


define void @arr3360.init (){

__fresh1218:
  %array_ptr3348 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array3349 = bitcast { i32, [ 0 x i32 ] }* %array_ptr3348 to { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* 
  %array_ptr3350 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array3351 = bitcast { i32, [ 0 x i32 ] }* %array_ptr3350 to { i32, [ 0 x i32 ] }* 
  %index_ptr3352 = getelementptr { i32, [ 0 x i32 ] }* %array3351, i32 0, i32 1, i32 0
  store i32 1, i32* %index_ptr3352
  %index_ptr3353 = getelementptr { i32, [ 0 x i32 ] }* %array3351, i32 0, i32 1, i32 1
  store i32 2, i32* %index_ptr3353
  %index_ptr3354 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array3349, i32 0, i32 1, i32 0
  store { i32, [ 0 x i32 ] }* %array3351, { i32, [ 0 x i32 ] }** %index_ptr3354
  %array_ptr3355 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array3356 = bitcast { i32, [ 0 x i32 ] }* %array_ptr3355 to { i32, [ 0 x i32 ] }* 
  %index_ptr3357 = getelementptr { i32, [ 0 x i32 ] }* %array3356, i32 0, i32 1, i32 0
  store i32 3, i32* %index_ptr3357
  %index_ptr3358 = getelementptr { i32, [ 0 x i32 ] }* %array3356, i32 0, i32 1, i32 1
  store i32 4, i32* %index_ptr3358
  %index_ptr3359 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array3349, i32 0, i32 1, i32 1
  store { i32, [ 0 x i32 ] }* %array3356, { i32, [ 0 x i32 ] }** %index_ptr3359
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array3349, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** @arr3360
  ret void
}


