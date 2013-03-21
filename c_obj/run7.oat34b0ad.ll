declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@arr3325 = global { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* zeroinitializer, align 4		; initialized by arr3325.init
define void @oat_init (){

__fresh1213:
  call void @arr3325.init(  )
  ret void
}


define i32 @program (i32 %argc3328, { i32, [ 0 x i8* ] }* %argv3326){

__fresh1212:
  %argc_slot3329 = alloca i32
  store i32 %argc3328, i32* %argc_slot3329
  %argv_slot3327 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv3326, { i32, [ 0 x i8* ] }** %argv_slot3327
  %array_dereferenced3334 = load { i32, [ 0 x i32 ] }** %elt_ptr3333
  %array_dereferenced3330 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** @arr3325
  %len_ptr3331 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array_dereferenced3330, i32 0, i32 0
  %len3332 = load i32* %len_ptr3331
  call void @oat_array_bounds_check( i32 %len3332, i32 3 )
  %elt_ptr3333 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array_dereferenced3330, i32 0, i32 1, i32 3
  %len_ptr3335 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced3334, i32 0, i32 0
  %len3336 = load i32* %len_ptr3335
  call void @oat_array_bounds_check( i32 %len3336, i32 0 )
  %elt_ptr3337 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced3334, i32 0, i32 1, i32 0
  %_lhs3338 = load i32* %elt_ptr3337
  ret i32 %_lhs3338
}


define void @arr3325.init (){

__fresh1211:
  %array_ptr3313 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array3314 = bitcast { i32, [ 0 x i32 ] }* %array_ptr3313 to { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* 
  %array_ptr3315 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array3316 = bitcast { i32, [ 0 x i32 ] }* %array_ptr3315 to { i32, [ 0 x i32 ] }* 
  %index_ptr3317 = getelementptr { i32, [ 0 x i32 ] }* %array3316, i32 0, i32 1, i32 0
  store i32 1, i32* %index_ptr3317
  %index_ptr3318 = getelementptr { i32, [ 0 x i32 ] }* %array3316, i32 0, i32 1, i32 1
  store i32 2, i32* %index_ptr3318
  %index_ptr3319 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array3314, i32 0, i32 1, i32 0
  store { i32, [ 0 x i32 ] }* %array3316, { i32, [ 0 x i32 ] }** %index_ptr3319
  %array_ptr3320 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array3321 = bitcast { i32, [ 0 x i32 ] }* %array_ptr3320 to { i32, [ 0 x i32 ] }* 
  %index_ptr3322 = getelementptr { i32, [ 0 x i32 ] }* %array3321, i32 0, i32 1, i32 0
  store i32 3, i32* %index_ptr3322
  %index_ptr3323 = getelementptr { i32, [ 0 x i32 ] }* %array3321, i32 0, i32 1, i32 1
  store i32 4, i32* %index_ptr3323
  %index_ptr3324 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array3314, i32 0, i32 1, i32 1
  store { i32, [ 0 x i32 ] }* %array3321, { i32, [ 0 x i32 ] }** %index_ptr3324
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array3314, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** @arr3325
  ret void
}


