declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@arr3345 = global { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* zeroinitializer, align 4		; initialized by arr3345.init
define void @oat_init (){

__fresh690:
  call void @arr3345.init(  )
  ret void
}


define i32 @program (i32 %argc3348, { i32, [ 0 x i8* ] }* %argv3346){

__fresh689:
  %argc_slot3349 = alloca i32
  store i32 %argc3348, i32* %argc_slot3349
  %argv_slot3347 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv3346, { i32, [ 0 x i8* ] }** %argv_slot3347
  %len_ptr3350 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** @arr3345, i32 0, i32 0
  %len3351 = load i32* %len_ptr3350
  call void @oat_array_bounds_check( i32 %len3351, i32 3 )
  %array_dereferenced3352 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** @arr3345
  %elt_ptr3353 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array_dereferenced3352, i32 0, i32 1, i32 3
  %len_ptr3354 = getelementptr { i32, [ 0 x i32 ] }** %elt_ptr3353, i32 0, i32 0
  %len3355 = load i32* %len_ptr3354
  call void @oat_array_bounds_check( i32 %len3355, i32 0 )
  %array_dereferenced3356 = load { i32, [ 0 x i32 ] }** %elt_ptr3353
  %elt_ptr3357 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced3356, i32 0, i32 1, i32 0
  %_lhs3358 = load i32* %elt_ptr3357
  ret i32 %_lhs3358
}


define void @arr3345.init (){

__fresh688:
  %array_ptr3333 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array3334 = bitcast { i32, [ 0 x i32 ] }* %array_ptr3333 to { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* 
  %array_ptr3335 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array3336 = bitcast { i32, [ 0 x i32 ] }* %array_ptr3335 to { i32, [ 0 x i32 ] }* 
  %index_ptr3337 = getelementptr { i32, [ 0 x i32 ] }* %array3336, i32 0, i32 1, i32 0
  store i32 1, i32* %index_ptr3337
  %index_ptr3338 = getelementptr { i32, [ 0 x i32 ] }* %array3336, i32 0, i32 1, i32 1
  store i32 2, i32* %index_ptr3338
  %index_ptr3339 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array3334, i32 0, i32 1, i32 0
  store { i32, [ 0 x i32 ] }* %array3336, { i32, [ 0 x i32 ] }** %index_ptr3339
  %array_ptr3340 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array3341 = bitcast { i32, [ 0 x i32 ] }* %array_ptr3340 to { i32, [ 0 x i32 ] }* 
  %index_ptr3342 = getelementptr { i32, [ 0 x i32 ] }* %array3341, i32 0, i32 1, i32 0
  store i32 3, i32* %index_ptr3342
  %index_ptr3343 = getelementptr { i32, [ 0 x i32 ] }* %array3341, i32 0, i32 1, i32 1
  store i32 4, i32* %index_ptr3343
  %index_ptr3344 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array3334, i32 0, i32 1, i32 1
  store { i32, [ 0 x i32 ] }* %array3341, { i32, [ 0 x i32 ] }** %index_ptr3344
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array3334, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** @arr3345
  ret void
}


