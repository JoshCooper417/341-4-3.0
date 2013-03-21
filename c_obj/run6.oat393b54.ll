declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@arr3344 = global { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* zeroinitializer, align 4		; initialized by arr3344.init
define void @oat_init (){

__fresh605:
  call void @arr3344.init(  )
  ret void
}


define i32 @program (i32 %argc3347, { i32, [ 0 x i8* ] }* %argv3345){

__fresh604:
  %argc_slot3348 = alloca i32
  store i32 %argc3347, i32* %argc_slot3348
  %argv_slot3346 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv3345, { i32, [ 0 x i8* ] }** %argv_slot3346
  %len_ptr3349 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** @arr3344, i32 0, i32 0
  %len3350 = load i32* %len_ptr3349
  call void @oat_array_bounds_check( i32 %len3350, i32 1 )
  %array_dereferenced3351 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** @arr3344
  %elt_ptr3352 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array_dereferenced3351, i32 0, i32 1, i32 1
  %len_ptr3353 = getelementptr { i32, [ 0 x i32 ] }** %elt_ptr3352, i32 0, i32 0
  %len3354 = load i32* %len_ptr3353
  call void @oat_array_bounds_check( i32 %len3354, i32 3 )
  %array_dereferenced3355 = load { i32, [ 0 x i32 ] }** %elt_ptr3352
  %elt_ptr3356 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced3355, i32 0, i32 1, i32 3
  %_lhs3357 = load i32* %elt_ptr3356
  ret i32 %_lhs3357
}


define void @arr3344.init (){

__fresh603:
  %array_ptr3332 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array3333 = bitcast { i32, [ 0 x i32 ] }* %array_ptr3332 to { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* 
  %array_ptr3334 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array3335 = bitcast { i32, [ 0 x i32 ] }* %array_ptr3334 to { i32, [ 0 x i32 ] }* 
  %index_ptr3336 = getelementptr { i32, [ 0 x i32 ] }* %array3335, i32 0, i32 1, i32 0
  store i32 1, i32* %index_ptr3336
  %index_ptr3337 = getelementptr { i32, [ 0 x i32 ] }* %array3335, i32 0, i32 1, i32 1
  store i32 2, i32* %index_ptr3337
  %index_ptr3338 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array3333, i32 0, i32 1, i32 0
  store { i32, [ 0 x i32 ] }* %array3335, { i32, [ 0 x i32 ] }** %index_ptr3338
  %array_ptr3339 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array3340 = bitcast { i32, [ 0 x i32 ] }* %array_ptr3339 to { i32, [ 0 x i32 ] }* 
  %index_ptr3341 = getelementptr { i32, [ 0 x i32 ] }* %array3340, i32 0, i32 1, i32 0
  store i32 3, i32* %index_ptr3341
  %index_ptr3342 = getelementptr { i32, [ 0 x i32 ] }* %array3340, i32 0, i32 1, i32 1
  store i32 4, i32* %index_ptr3342
  %index_ptr3343 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array3333, i32 0, i32 1, i32 1
  store { i32, [ 0 x i32 ] }* %array3340, { i32, [ 0 x i32 ] }** %index_ptr3343
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array3333, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** @arr3344
  ret void
}


