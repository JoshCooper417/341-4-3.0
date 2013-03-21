declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@arr3334 = global { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* zeroinitializer, align 4		; initialized by arr3334.init
define void @oat_init (){

__fresh1211:
  call void @arr3334.init(  )
  ret void
}


define i32 @program (i32 %argc3337, { i32, [ 0 x i8* ] }* %argv3335){

__fresh1210:
  %argc_slot3338 = alloca i32
  store i32 %argc3337, i32* %argc_slot3338
  %argv_slot3336 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv3335, { i32, [ 0 x i8* ] }** %argv_slot3336
  %array_dereferenced3339 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** @arr3334
  %len_ptr3340 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array_dereferenced3339, i32 0, i32 0
  %len3341 = load i32* %len_ptr3340
  call void @oat_array_bounds_check( i32 %len3341, i32 1 )
  %elt_ptr3342 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array_dereferenced3339, i32 0, i32 1, i32 1
  %array_dereferenced3343 = load { i32, [ 0 x i32 ] }** %elt_ptr3342
  %len_ptr3344 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced3343, i32 0, i32 0
  %len3345 = load i32* %len_ptr3344
  call void @oat_array_bounds_check( i32 %len3345, i32 3 )
  %elt_ptr3346 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced3343, i32 0, i32 1, i32 3
  %_lhs3347 = load i32* %elt_ptr3346
  ret i32 %_lhs3347
}


define void @arr3334.init (){

__fresh1209:
  %array_ptr3322 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array3323 = bitcast { i32, [ 0 x i32 ] }* %array_ptr3322 to { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* 
  %array_ptr3324 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array3325 = bitcast { i32, [ 0 x i32 ] }* %array_ptr3324 to { i32, [ 0 x i32 ] }* 
  %index_ptr3326 = getelementptr { i32, [ 0 x i32 ] }* %array3325, i32 0, i32 1, i32 0
  store i32 1, i32* %index_ptr3326
  %index_ptr3327 = getelementptr { i32, [ 0 x i32 ] }* %array3325, i32 0, i32 1, i32 1
  store i32 2, i32* %index_ptr3327
  %index_ptr3328 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array3323, i32 0, i32 1, i32 0
  store { i32, [ 0 x i32 ] }* %array3325, { i32, [ 0 x i32 ] }** %index_ptr3328
  %array_ptr3329 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array3330 = bitcast { i32, [ 0 x i32 ] }* %array_ptr3329 to { i32, [ 0 x i32 ] }* 
  %index_ptr3331 = getelementptr { i32, [ 0 x i32 ] }* %array3330, i32 0, i32 1, i32 0
  store i32 3, i32* %index_ptr3331
  %index_ptr3332 = getelementptr { i32, [ 0 x i32 ] }* %array3330, i32 0, i32 1, i32 1
  store i32 4, i32* %index_ptr3332
  %index_ptr3333 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array3323, i32 0, i32 1, i32 1
  store { i32, [ 0 x i32 ] }* %array3330, { i32, [ 0 x i32 ] }** %index_ptr3333
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array3323, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** @arr3334
  ret void
}


