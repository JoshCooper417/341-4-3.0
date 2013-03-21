declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@arr3309 = global { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* zeroinitializer, align 4		; initialized by arr3309.init
define void @oat_init (){

__fresh1211:
  call void @arr3309.init(  )
  ret void
}


define i32 @program (i32 %argc3312, { i32, [ 0 x i8* ] }* %argv3310){

__fresh1210:
  %argc_slot3313 = alloca i32
  store i32 %argc3312, i32* %argc_slot3313
  %argv_slot3311 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv3310, { i32, [ 0 x i8* ] }** %argv_slot3311
  %array_dereferenced3314 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** @arr3309
  %len_ptr3315 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array_dereferenced3314, i32 0, i32 0
  %len3316 = load i32* %len_ptr3315
  call void @oat_array_bounds_check( i32 %len3316, i32 1 )
  %elt_ptr3317 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array_dereferenced3314, i32 0, i32 1, i32 1
  %array_dereferenced3318 = load { i32, [ 0 x i32 ] }** %elt_ptr3317
  %len_ptr3319 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced3318, i32 0, i32 0
  %len3320 = load i32* %len_ptr3319
  call void @oat_array_bounds_check( i32 %len3320, i32 3 )
  %elt_ptr3321 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced3318, i32 0, i32 1, i32 3
  %_lhs3322 = load i32* %elt_ptr3321
  ret i32 %_lhs3322
}


define void @arr3309.init (){

__fresh1209:
  %array_ptr3297 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array3298 = bitcast { i32, [ 0 x i32 ] }* %array_ptr3297 to { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* 
  %array_ptr3299 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array3300 = bitcast { i32, [ 0 x i32 ] }* %array_ptr3299 to { i32, [ 0 x i32 ] }* 
  %index_ptr3301 = getelementptr { i32, [ 0 x i32 ] }* %array3300, i32 0, i32 1, i32 0
  store i32 1, i32* %index_ptr3301
  %index_ptr3302 = getelementptr { i32, [ 0 x i32 ] }* %array3300, i32 0, i32 1, i32 1
  store i32 2, i32* %index_ptr3302
  %index_ptr3303 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array3298, i32 0, i32 1, i32 0
  store { i32, [ 0 x i32 ] }* %array3300, { i32, [ 0 x i32 ] }** %index_ptr3303
  %array_ptr3304 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array3305 = bitcast { i32, [ 0 x i32 ] }* %array_ptr3304 to { i32, [ 0 x i32 ] }* 
  %index_ptr3306 = getelementptr { i32, [ 0 x i32 ] }* %array3305, i32 0, i32 1, i32 0
  store i32 3, i32* %index_ptr3306
  %index_ptr3307 = getelementptr { i32, [ 0 x i32 ] }* %array3305, i32 0, i32 1, i32 1
  store i32 4, i32* %index_ptr3307
  %index_ptr3308 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array3298, i32 0, i32 1, i32 1
  store { i32, [ 0 x i32 ] }* %array3305, { i32, [ 0 x i32 ] }** %index_ptr3308
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array3298, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** @arr3309
  ret void
}


