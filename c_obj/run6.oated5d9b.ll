declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@arr3319 = global { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* zeroinitializer, align 4		; initialized by arr3319.init
define void @oat_init (){

__fresh662:
  call void @arr3319.init(  )
  ret void
}


define i32 @program (i32 %argc3322, { i32, [ 0 x i8* ] }* %argv3320){

__fresh661:
  %argc_slot3323 = alloca i32
  store i32 %argc3322, i32* %argc_slot3323
  %argv_slot3321 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv3320, { i32, [ 0 x i8* ] }** %argv_slot3321
  %len_ptr3324 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** @arr3319, i32 0, i32 0
  %len3325 = load i32* %len_ptr3324
  call void @oat_array_bounds_check( i32 %len3325, i32 1 )
  %array_dereferenced3326 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** @arr3319
  %elt_ptr3327 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array_dereferenced3326, i32 0, i32 1, i32 1
  %len_ptr3328 = getelementptr { i32, [ 0 x i32 ] }** %elt_ptr3327, i32 0, i32 0
  %len3329 = load i32* %len_ptr3328
  call void @oat_array_bounds_check( i32 %len3329, i32 3 )
  %array_dereferenced3330 = load { i32, [ 0 x i32 ] }** %elt_ptr3327
  %elt_ptr3331 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced3330, i32 0, i32 1, i32 3
  %_lhs3332 = load i32* %elt_ptr3331
  ret i32 %_lhs3332
}


define void @arr3319.init (){

__fresh660:
  %array_ptr3307 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array3308 = bitcast { i32, [ 0 x i32 ] }* %array_ptr3307 to { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* 
  %array_ptr3309 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array3310 = bitcast { i32, [ 0 x i32 ] }* %array_ptr3309 to { i32, [ 0 x i32 ] }* 
  %index_ptr3311 = getelementptr { i32, [ 0 x i32 ] }* %array3310, i32 0, i32 1, i32 0
  store i32 1, i32* %index_ptr3311
  %index_ptr3312 = getelementptr { i32, [ 0 x i32 ] }* %array3310, i32 0, i32 1, i32 1
  store i32 2, i32* %index_ptr3312
  %index_ptr3313 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array3308, i32 0, i32 1, i32 0
  store { i32, [ 0 x i32 ] }* %array3310, { i32, [ 0 x i32 ] }** %index_ptr3313
  %array_ptr3314 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array3315 = bitcast { i32, [ 0 x i32 ] }* %array_ptr3314 to { i32, [ 0 x i32 ] }* 
  %index_ptr3316 = getelementptr { i32, [ 0 x i32 ] }* %array3315, i32 0, i32 1, i32 0
  store i32 3, i32* %index_ptr3316
  %index_ptr3317 = getelementptr { i32, [ 0 x i32 ] }* %array3315, i32 0, i32 1, i32 1
  store i32 4, i32* %index_ptr3317
  %index_ptr3318 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array3308, i32 0, i32 1, i32 1
  store { i32, [ 0 x i32 ] }* %array3315, { i32, [ 0 x i32 ] }** %index_ptr3318
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array3308, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** @arr3319
  ret void
}


