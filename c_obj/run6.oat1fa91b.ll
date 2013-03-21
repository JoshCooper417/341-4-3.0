declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@arr3299 = global { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* zeroinitializer, align 4		; initialized by arr3299.init
define void @oat_init (){

__fresh1204:
  call void @arr3299.init(  )
  ret void
}


define i32 @program (i32 %argc3302, { i32, [ 0 x i8* ] }* %argv3300){

__fresh1203:
  %argc_slot3303 = alloca i32
  store i32 %argc3302, i32* %argc_slot3303
  %argv_slot3301 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv3300, { i32, [ 0 x i8* ] }** %argv_slot3301
  %array_dereferenced3308 = load { i32, [ 0 x i32 ] }** %elt_ptr3307
  %array_dereferenced3304 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** @arr3299
  %len_ptr3305 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array_dereferenced3304, i32 0, i32 0
  %len3306 = load i32* %len_ptr3305
  call void @oat_array_bounds_check( i32 %len3306, i32 1 )
  %elt_ptr3307 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array_dereferenced3304, i32 0, i32 1, i32 1
  %len_ptr3309 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced3308, i32 0, i32 0
  %len3310 = load i32* %len_ptr3309
  call void @oat_array_bounds_check( i32 %len3310, i32 3 )
  %elt_ptr3311 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced3308, i32 0, i32 1, i32 3
  %_lhs3312 = load i32* %elt_ptr3311
  ret i32 %_lhs3312
}


define void @arr3299.init (){

__fresh1202:
  %array_ptr3287 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array3288 = bitcast { i32, [ 0 x i32 ] }* %array_ptr3287 to { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* 
  %array_ptr3289 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array3290 = bitcast { i32, [ 0 x i32 ] }* %array_ptr3289 to { i32, [ 0 x i32 ] }* 
  %index_ptr3291 = getelementptr { i32, [ 0 x i32 ] }* %array3290, i32 0, i32 1, i32 0
  store i32 1, i32* %index_ptr3291
  %index_ptr3292 = getelementptr { i32, [ 0 x i32 ] }* %array3290, i32 0, i32 1, i32 1
  store i32 2, i32* %index_ptr3292
  %index_ptr3293 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array3288, i32 0, i32 1, i32 0
  store { i32, [ 0 x i32 ] }* %array3290, { i32, [ 0 x i32 ] }** %index_ptr3293
  %array_ptr3294 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array3295 = bitcast { i32, [ 0 x i32 ] }* %array_ptr3294 to { i32, [ 0 x i32 ] }* 
  %index_ptr3296 = getelementptr { i32, [ 0 x i32 ] }* %array3295, i32 0, i32 1, i32 0
  store i32 3, i32* %index_ptr3296
  %index_ptr3297 = getelementptr { i32, [ 0 x i32 ] }* %array3295, i32 0, i32 1, i32 1
  store i32 4, i32* %index_ptr3297
  %index_ptr3298 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array3288, i32 0, i32 1, i32 1
  store { i32, [ 0 x i32 ] }* %array3295, { i32, [ 0 x i32 ] }** %index_ptr3298
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array3288, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** @arr3299
  ret void
}


