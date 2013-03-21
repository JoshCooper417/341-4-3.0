declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@arr3536 = global { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* zeroinitializer, align 4		; initialized by arr3536.init
define void @oat_init (){

__fresh743:
  call void @arr3536.init(  )
  ret void
}


define i32 @program (i32 %argc3539, { i32, [ 0 x i8* ] }* %argv3537){

__fresh742:
  %argc_slot3540 = alloca i32
  store i32 %argc3539, i32* %argc_slot3540
  %argv_slot3538 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv3537, { i32, [ 0 x i8* ] }** %argv_slot3538
  %len_ptr3541 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** @arr3536, i32 0, i32 0
  %len3542 = load i32* %len_ptr3541
  call void @oat_array_bounds_check( i32 %len3542, i32 1 )
  %array_dereferenced3543 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** @arr3536
  %elt_ptr3544 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array_dereferenced3543, i32 0, i32 1, i32 1
  %len_ptr3545 = getelementptr { i32, [ 0 x i32 ] }** %elt_ptr3544, i32 0, i32 0
  %len3546 = load i32* %len_ptr3545
  call void @oat_array_bounds_check( i32 %len3546, i32 3 )
  %array_dereferenced3547 = load { i32, [ 0 x i32 ] }** %elt_ptr3544
  %elt_ptr3548 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced3547, i32 0, i32 1, i32 3
  %_lhs3549 = load i32* %elt_ptr3548
  ret i32 %_lhs3549
}


define void @arr3536.init (){

__fresh741:
  %array_ptr3524 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array3525 = bitcast { i32, [ 0 x i32 ] }* %array_ptr3524 to { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* 
  %array_ptr3526 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array3527 = bitcast { i32, [ 0 x i32 ] }* %array_ptr3526 to { i32, [ 0 x i32 ] }* 
  %index_ptr3528 = getelementptr { i32, [ 0 x i32 ] }* %array3527, i32 0, i32 1, i32 0
  store i32 1, i32* %index_ptr3528
  %index_ptr3529 = getelementptr { i32, [ 0 x i32 ] }* %array3527, i32 0, i32 1, i32 1
  store i32 2, i32* %index_ptr3529
  %index_ptr3530 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array3525, i32 0, i32 1, i32 0
  store { i32, [ 0 x i32 ] }* %array3527, { i32, [ 0 x i32 ] }** %index_ptr3530
  %array_ptr3531 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array3532 = bitcast { i32, [ 0 x i32 ] }* %array_ptr3531 to { i32, [ 0 x i32 ] }* 
  %index_ptr3533 = getelementptr { i32, [ 0 x i32 ] }* %array3532, i32 0, i32 1, i32 0
  store i32 3, i32* %index_ptr3533
  %index_ptr3534 = getelementptr { i32, [ 0 x i32 ] }* %array3532, i32 0, i32 1, i32 1
  store i32 4, i32* %index_ptr3534
  %index_ptr3535 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array3525, i32 0, i32 1, i32 1
  store { i32, [ 0 x i32 ] }* %array3532, { i32, [ 0 x i32 ] }** %index_ptr3535
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array3525, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** @arr3536
  ret void
}


