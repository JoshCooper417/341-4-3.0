declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@arr3314 = global { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* zeroinitializer, align 4		; initialized by arr3314.init
define void @oat_init (){

__fresh667:
  call void @arr3314.init(  )
  ret void
}


define i32 @program (i32 %argc3317, { i32, [ 0 x i8* ] }* %argv3315){

__fresh666:
  %argc_slot3318 = alloca i32
  store i32 %argc3317, i32* %argc_slot3318
  %argv_slot3316 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv3315, { i32, [ 0 x i8* ] }** %argv_slot3316
  %len_ptr3319 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** @arr3314, i32 0, i32 0
  %len3320 = load i32* %len_ptr3319
  call void @oat_array_bounds_check( i32 %len3320, i32 1 )
  %array_dereferenced3321 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** @arr3314
  %elt_ptr3322 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array_dereferenced3321, i32 0, i32 1, i32 1
  %len_ptr3323 = getelementptr { i32, [ 0 x i32 ] }** %elt_ptr3322, i32 0, i32 0
  %len3324 = load i32* %len_ptr3323
  call void @oat_array_bounds_check( i32 %len3324, i32 3 )
  %array_dereferenced3325 = load { i32, [ 0 x i32 ] }** %elt_ptr3322
  %elt_ptr3326 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced3325, i32 0, i32 1, i32 3
  %_lhs3327 = load i32* %elt_ptr3326
  ret i32 %_lhs3327
}


define void @arr3314.init (){

__fresh665:
  %array_ptr3302 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array3303 = bitcast { i32, [ 0 x i32 ] }* %array_ptr3302 to { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* 
  %array_ptr3304 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array3305 = bitcast { i32, [ 0 x i32 ] }* %array_ptr3304 to { i32, [ 0 x i32 ] }* 
  %index_ptr3306 = getelementptr { i32, [ 0 x i32 ] }* %array3305, i32 0, i32 1, i32 0
  store i32 1, i32* %index_ptr3306
  %index_ptr3307 = getelementptr { i32, [ 0 x i32 ] }* %array3305, i32 0, i32 1, i32 1
  store i32 2, i32* %index_ptr3307
  %index_ptr3308 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array3303, i32 0, i32 1, i32 0
  store { i32, [ 0 x i32 ] }* %array3305, { i32, [ 0 x i32 ] }** %index_ptr3308
  %array_ptr3309 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array3310 = bitcast { i32, [ 0 x i32 ] }* %array_ptr3309 to { i32, [ 0 x i32 ] }* 
  %index_ptr3311 = getelementptr { i32, [ 0 x i32 ] }* %array3310, i32 0, i32 1, i32 0
  store i32 3, i32* %index_ptr3311
  %index_ptr3312 = getelementptr { i32, [ 0 x i32 ] }* %array3310, i32 0, i32 1, i32 1
  store i32 4, i32* %index_ptr3312
  %index_ptr3313 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array3303, i32 0, i32 1, i32 1
  store { i32, [ 0 x i32 ] }* %array3310, { i32, [ 0 x i32 ] }** %index_ptr3313
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array3303, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** @arr3314
  ret void
}


