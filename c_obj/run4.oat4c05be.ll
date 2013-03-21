declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@arr3323 = global { i32, [ 0 x i32 ] }* zeroinitializer, align 4		; initialized by arr3323.init
define void @oat_init (){

__fresh664:
  call void @arr3323.init(  )
  ret void
}


define i32 @program (i32 %argc3326, { i32, [ 0 x i8* ] }* %argv3324){

__fresh663:
  %argc_slot3327 = alloca i32
  store i32 %argc3326, i32* %argc_slot3327
  %argv_slot3325 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv3324, { i32, [ 0 x i8* ] }** %argv_slot3325
  %len_ptr3328 = getelementptr { i32, [ 0 x i32 ] }** @arr3323, i32 0, i32 0
  %len3329 = load i32* %len_ptr3328
  call void @oat_array_bounds_check( i32 %len3329, i32 2 )
  %array_dereferenced3330 = load { i32, [ 0 x i32 ] }** @arr3323
  %elt_ptr3331 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced3330, i32 0, i32 1, i32 2
  %_lhs3332 = load i32* %elt_ptr3331
  ret i32 %_lhs3332
}


define void @arr3323.init (){

__fresh662:
  %array_ptr3319 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array3320 = bitcast { i32, [ 0 x i32 ] }* %array_ptr3319 to { i32, [ 0 x i32 ] }* 
  %index_ptr3321 = getelementptr { i32, [ 0 x i32 ] }* %array3320, i32 0, i32 1, i32 0
  store i32 1, i32* %index_ptr3321
  %index_ptr3322 = getelementptr { i32, [ 0 x i32 ] }* %array3320, i32 0, i32 1, i32 1
  store i32 2, i32* %index_ptr3322
  store { i32, [ 0 x i32 ] }* %array3320, { i32, [ 0 x i32 ] }** @arr3323
  ret void
}


