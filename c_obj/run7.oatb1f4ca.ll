declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@arr3340 = global { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* zeroinitializer, align 4		; initialized by arr3340.init
define void @oat_init (){

__fresh670:
  call void @arr3340.init(  )
  ret void
}


define i32 @program (i32 %argc3343, { i32, [ 0 x i8* ] }* %argv3341){

__fresh669:
  %argc_slot3344 = alloca i32
  store i32 %argc3343, i32* %argc_slot3344
  %argv_slot3342 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv3341, { i32, [ 0 x i8* ] }** %argv_slot3342
  %len_ptr3345 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** @arr3340, i32 0, i32 0
  %len3346 = load i32* %len_ptr3345
  call void @oat_array_bounds_check( i32 %len3346, i32 3 )
  %array_dereferenced3347 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** @arr3340
  %elt_ptr3348 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array_dereferenced3347, i32 0, i32 1, i32 3
  %len_ptr3349 = getelementptr { i32, [ 0 x i32 ] }** %elt_ptr3348, i32 0, i32 0
  %len3350 = load i32* %len_ptr3349
  call void @oat_array_bounds_check( i32 %len3350, i32 0 )
  %array_dereferenced3351 = load { i32, [ 0 x i32 ] }** %elt_ptr3348
  %elt_ptr3352 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced3351, i32 0, i32 1, i32 0
  %_lhs3353 = load i32* %elt_ptr3352
  ret i32 %_lhs3353
}


define void @arr3340.init (){

__fresh668:
  %array_ptr3328 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array3329 = bitcast { i32, [ 0 x i32 ] }* %array_ptr3328 to { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* 
  %array_ptr3330 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array3331 = bitcast { i32, [ 0 x i32 ] }* %array_ptr3330 to { i32, [ 0 x i32 ] }* 
  %index_ptr3332 = getelementptr { i32, [ 0 x i32 ] }* %array3331, i32 0, i32 1, i32 0
  store i32 1, i32* %index_ptr3332
  %index_ptr3333 = getelementptr { i32, [ 0 x i32 ] }* %array3331, i32 0, i32 1, i32 1
  store i32 2, i32* %index_ptr3333
  %index_ptr3334 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array3329, i32 0, i32 1, i32 0
  store { i32, [ 0 x i32 ] }* %array3331, { i32, [ 0 x i32 ] }** %index_ptr3334
  %array_ptr3335 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array3336 = bitcast { i32, [ 0 x i32 ] }* %array_ptr3335 to { i32, [ 0 x i32 ] }* 
  %index_ptr3337 = getelementptr { i32, [ 0 x i32 ] }* %array3336, i32 0, i32 1, i32 0
  store i32 3, i32* %index_ptr3337
  %index_ptr3338 = getelementptr { i32, [ 0 x i32 ] }* %array3336, i32 0, i32 1, i32 1
  store i32 4, i32* %index_ptr3338
  %index_ptr3339 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array3329, i32 0, i32 1, i32 1
  store { i32, [ 0 x i32 ] }* %array3336, { i32, [ 0 x i32 ] }** %index_ptr3339
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array3329, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** @arr3340
  ret void
}


