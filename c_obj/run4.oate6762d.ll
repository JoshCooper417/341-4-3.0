declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@arr3312 = global { i32, [ 0 x i32 ] }* zeroinitializer, align 4		; initialized by arr3312.init
define void @oat_init (){

__fresh1205:
  call void @arr3312.init(  )
  ret void
}


define i32 @program (i32 %argc3315, { i32, [ 0 x i8* ] }* %argv3313){

__fresh1204:
  %argc_slot3316 = alloca i32
  store i32 %argc3315, i32* %argc_slot3316
  %argv_slot3314 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv3313, { i32, [ 0 x i8* ] }** %argv_slot3314
  %array_dereferenced3317 = load { i32, [ 0 x i32 ] }** @arr3312
  %len_ptr3318 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced3317, i32 0, i32 0
  %len3319 = load i32* %len_ptr3318
  call void @oat_array_bounds_check( i32 %len3319, i32 2 )
  %elt_ptr3320 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced3317, i32 0, i32 1, i32 2
  %_lhs3321 = load i32* %elt_ptr3320
  ret i32 %_lhs3321
}


define void @arr3312.init (){

__fresh1203:
  %array_ptr3308 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array3309 = bitcast { i32, [ 0 x i32 ] }* %array_ptr3308 to { i32, [ 0 x i32 ] }* 
  %index_ptr3310 = getelementptr { i32, [ 0 x i32 ] }* %array3309, i32 0, i32 1, i32 0
  store i32 1, i32* %index_ptr3310
  %index_ptr3311 = getelementptr { i32, [ 0 x i32 ] }* %array3309, i32 0, i32 1, i32 1
  store i32 2, i32* %index_ptr3311
  store { i32, [ 0 x i32 ] }* %array3309, { i32, [ 0 x i32 ] }** @arr3312
  ret void
}


