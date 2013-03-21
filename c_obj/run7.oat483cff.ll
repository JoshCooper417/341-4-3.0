declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@arr3335 = global { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* zeroinitializer, align 4		; initialized by arr3335.init
define void @oat_init (){

__fresh1220:
  call void @arr3335.init(  )
  ret void
}


define i32 @program (i32 %argc3338, { i32, [ 0 x i8* ] }* %argv3336){

__fresh1219:
  %argc_slot3339 = alloca i32
  store i32 %argc3338, i32* %argc_slot3339
  %argv_slot3337 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv3336, { i32, [ 0 x i8* ] }** %argv_slot3337
  %array_dereferenced3340 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** @arr3335
  %len_ptr3341 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array_dereferenced3340, i32 0, i32 0
  %len3342 = load i32* %len_ptr3341
  call void @oat_array_bounds_check( i32 %len3342, i32 3 )
  %elt_ptr3343 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array_dereferenced3340, i32 0, i32 1, i32 3
  %array_dereferenced3344 = load { i32, [ 0 x i32 ] }** %elt_ptr3343
  %len_ptr3345 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced3344, i32 0, i32 0
  %len3346 = load i32* %len_ptr3345
  call void @oat_array_bounds_check( i32 %len3346, i32 0 )
  %elt_ptr3347 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced3344, i32 0, i32 1, i32 0
  %_lhs3348 = load i32* %elt_ptr3347
  ret i32 %_lhs3348
}


define void @arr3335.init (){

__fresh1218:
  %array_ptr3323 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array3324 = bitcast { i32, [ 0 x i32 ] }* %array_ptr3323 to { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* 
  %array_ptr3325 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array3326 = bitcast { i32, [ 0 x i32 ] }* %array_ptr3325 to { i32, [ 0 x i32 ] }* 
  %index_ptr3327 = getelementptr { i32, [ 0 x i32 ] }* %array3326, i32 0, i32 1, i32 0
  store i32 1, i32* %index_ptr3327
  %index_ptr3328 = getelementptr { i32, [ 0 x i32 ] }* %array3326, i32 0, i32 1, i32 1
  store i32 2, i32* %index_ptr3328
  %index_ptr3329 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array3324, i32 0, i32 1, i32 0
  store { i32, [ 0 x i32 ] }* %array3326, { i32, [ 0 x i32 ] }** %index_ptr3329
  %array_ptr3330 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array3331 = bitcast { i32, [ 0 x i32 ] }* %array_ptr3330 to { i32, [ 0 x i32 ] }* 
  %index_ptr3332 = getelementptr { i32, [ 0 x i32 ] }* %array3331, i32 0, i32 1, i32 0
  store i32 3, i32* %index_ptr3332
  %index_ptr3333 = getelementptr { i32, [ 0 x i32 ] }* %array3331, i32 0, i32 1, i32 1
  store i32 4, i32* %index_ptr3333
  %index_ptr3334 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array3324, i32 0, i32 1, i32 1
  store { i32, [ 0 x i32 ] }* %array3331, { i32, [ 0 x i32 ] }** %index_ptr3334
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array3324, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** @arr3335
  ret void
}


