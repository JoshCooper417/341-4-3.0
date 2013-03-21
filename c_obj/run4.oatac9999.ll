declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@arr3462 = global { i32, [ 0 x i32 ] }* zeroinitializer, align 4		; initialized by arr3462.init
define void @oat_init (){

__fresh634:
  call void @arr3462.init(  )
  ret void
}


define i32 @program (i32 %argc3465, { i32, [ 0 x i8* ] }* %argv3463){

__fresh633:
  %argc_slot3466 = alloca i32
  store i32 %argc3465, i32* %argc_slot3466
  %argv_slot3464 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv3463, { i32, [ 0 x i8* ] }** %argv_slot3464
  %len_ptr3467 = getelementptr { i32, [ 0 x i32 ] }** @arr3462, i32 0, i32 0
  %len3468 = load i32* %len_ptr3467
  call void @oat_array_bounds_check( i32 %len3468, i32 2 )
  %array_dereferenced3469 = load { i32, [ 0 x i32 ] }** @arr3462
  %elt_ptr3470 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced3469, i32 0, i32 1, i32 2
  %_lhs3471 = load i32* %elt_ptr3470
  ret i32 %_lhs3471
}


define void @arr3462.init (){

__fresh632:
  %array_ptr3458 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array3459 = bitcast { i32, [ 0 x i32 ] }* %array_ptr3458 to { i32, [ 0 x i32 ] }* 
  %index_ptr3460 = getelementptr { i32, [ 0 x i32 ] }* %array3459, i32 0, i32 1, i32 0
  store i32 1, i32* %index_ptr3460
  %index_ptr3461 = getelementptr { i32, [ 0 x i32 ] }* %array3459, i32 0, i32 1, i32 1
  store i32 2, i32* %index_ptr3461
  store { i32, [ 0 x i32 ] }* %array3459, { i32, [ 0 x i32 ] }** @arr3462
  ret void
}


