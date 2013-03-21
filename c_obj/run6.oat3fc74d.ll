declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@arr3318 = global { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* zeroinitializer, align 4		; initialized by arr3318.init
define void @oat_init (){

__fresh617:
  call void @arr3318.init(  )
  ret void
}


define i32 @program (i32 %argc3321, { i32, [ 0 x i8* ] }* %argv3319){

__fresh616:
  %argc_slot3322 = alloca i32
  store i32 %argc3321, i32* %argc_slot3322
  %argv_slot3320 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv3319, { i32, [ 0 x i8* ] }** %argv_slot3320
  %len_ptr3323 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** @arr3318, i32 0, i32 0
  %len3324 = load i32* %len_ptr3323
  call void @oat_array_bounds_check( i32 %len3324, i32 1 )
  %array_dereferenced3325 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** @arr3318
  %elt_ptr3326 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array_dereferenced3325, i32 0, i32 1, i32 1
  %len_ptr3327 = getelementptr { i32, [ 0 x i32 ] }** %elt_ptr3326, i32 0, i32 0
  %len3328 = load i32* %len_ptr3327
  call void @oat_array_bounds_check( i32 %len3328, i32 3 )
  %array_dereferenced3329 = load { i32, [ 0 x i32 ] }** %elt_ptr3326
  %elt_ptr3330 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced3329, i32 0, i32 1, i32 3
  %_lhs3331 = load i32* %elt_ptr3330
  ret i32 %_lhs3331
}


define void @arr3318.init (){

__fresh615:
  %array_ptr3306 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array3307 = bitcast { i32, [ 0 x i32 ] }* %array_ptr3306 to { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* 
  %array_ptr3308 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array3309 = bitcast { i32, [ 0 x i32 ] }* %array_ptr3308 to { i32, [ 0 x i32 ] }* 
  %index_ptr3310 = getelementptr { i32, [ 0 x i32 ] }* %array3309, i32 0, i32 1, i32 0
  store i32 1, i32* %index_ptr3310
  %index_ptr3311 = getelementptr { i32, [ 0 x i32 ] }* %array3309, i32 0, i32 1, i32 1
  store i32 2, i32* %index_ptr3311
  %index_ptr3312 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array3307, i32 0, i32 1, i32 0
  store { i32, [ 0 x i32 ] }* %array3309, { i32, [ 0 x i32 ] }** %index_ptr3312
  %array_ptr3313 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array3314 = bitcast { i32, [ 0 x i32 ] }* %array_ptr3313 to { i32, [ 0 x i32 ] }* 
  %index_ptr3315 = getelementptr { i32, [ 0 x i32 ] }* %array3314, i32 0, i32 1, i32 0
  store i32 3, i32* %index_ptr3315
  %index_ptr3316 = getelementptr { i32, [ 0 x i32 ] }* %array3314, i32 0, i32 1, i32 1
  store i32 4, i32* %index_ptr3316
  %index_ptr3317 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array3307, i32 0, i32 1, i32 1
  store { i32, [ 0 x i32 ] }* %array3314, { i32, [ 0 x i32 ] }** %index_ptr3317
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array3307, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** @arr3318
  ret void
}


