declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@arr3322 = global { i32, [ 0 x i32 ] }* zeroinitializer, align 4		; initialized by arr3322.init
define void @oat_init (){

__fresh602:
  call void @arr3322.init(  )
  ret void
}


define i32 @program (i32 %argc3325, { i32, [ 0 x i8* ] }* %argv3323){

__fresh601:
  %argc_slot3326 = alloca i32
  store i32 %argc3325, i32* %argc_slot3326
  %argv_slot3324 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv3323, { i32, [ 0 x i8* ] }** %argv_slot3324
  %len_ptr3327 = getelementptr { i32, [ 0 x i32 ] }** @arr3322, i32 0, i32 0
  %len3328 = load i32* %len_ptr3327
  call void @oat_array_bounds_check( i32 %len3328, i32 2 )
  %array_dereferenced3329 = load { i32, [ 0 x i32 ] }** @arr3322
  %elt_ptr3330 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced3329, i32 0, i32 1, i32 2
  %_lhs3331 = load i32* %elt_ptr3330
  ret i32 %_lhs3331
}


define void @arr3322.init (){

__fresh600:
  %array_ptr3318 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array3319 = bitcast { i32, [ 0 x i32 ] }* %array_ptr3318 to { i32, [ 0 x i32 ] }* 
  %index_ptr3320 = getelementptr { i32, [ 0 x i32 ] }* %array3319, i32 0, i32 1, i32 0
  store i32 1, i32* %index_ptr3320
  %index_ptr3321 = getelementptr { i32, [ 0 x i32 ] }* %array3319, i32 0, i32 1, i32 1
  store i32 2, i32* %index_ptr3321
  store { i32, [ 0 x i32 ] }* %array3319, { i32, [ 0 x i32 ] }** @arr3322
  ret void
}


