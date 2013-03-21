declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@arr3562 = global { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* zeroinitializer, align 4		; initialized by arr3562.init
define void @oat_init (){

__fresh746:
  call void @arr3562.init(  )
  ret void
}


define i32 @program (i32 %argc3565, { i32, [ 0 x i8* ] }* %argv3563){

__fresh745:
  %argc_slot3566 = alloca i32
  store i32 %argc3565, i32* %argc_slot3566
  %argv_slot3564 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv3563, { i32, [ 0 x i8* ] }** %argv_slot3564
  %len_ptr3567 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** @arr3562, i32 0, i32 0
  %len3568 = load i32* %len_ptr3567
  call void @oat_array_bounds_check( i32 %len3568, i32 3 )
  %array_dereferenced3569 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** @arr3562
  %elt_ptr3570 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array_dereferenced3569, i32 0, i32 1, i32 3
  %len_ptr3571 = getelementptr { i32, [ 0 x i32 ] }** %elt_ptr3570, i32 0, i32 0
  %len3572 = load i32* %len_ptr3571
  call void @oat_array_bounds_check( i32 %len3572, i32 0 )
  %array_dereferenced3573 = load { i32, [ 0 x i32 ] }** %elt_ptr3570
  %elt_ptr3574 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced3573, i32 0, i32 1, i32 0
  %_lhs3575 = load i32* %elt_ptr3574
  ret i32 %_lhs3575
}


define void @arr3562.init (){

__fresh744:
  %array_ptr3550 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array3551 = bitcast { i32, [ 0 x i32 ] }* %array_ptr3550 to { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* 
  %array_ptr3552 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array3553 = bitcast { i32, [ 0 x i32 ] }* %array_ptr3552 to { i32, [ 0 x i32 ] }* 
  %index_ptr3554 = getelementptr { i32, [ 0 x i32 ] }* %array3553, i32 0, i32 1, i32 0
  store i32 1, i32* %index_ptr3554
  %index_ptr3555 = getelementptr { i32, [ 0 x i32 ] }* %array3553, i32 0, i32 1, i32 1
  store i32 2, i32* %index_ptr3555
  %index_ptr3556 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array3551, i32 0, i32 1, i32 0
  store { i32, [ 0 x i32 ] }* %array3553, { i32, [ 0 x i32 ] }** %index_ptr3556
  %array_ptr3557 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array3558 = bitcast { i32, [ 0 x i32 ] }* %array_ptr3557 to { i32, [ 0 x i32 ] }* 
  %index_ptr3559 = getelementptr { i32, [ 0 x i32 ] }* %array3558, i32 0, i32 1, i32 0
  store i32 3, i32* %index_ptr3559
  %index_ptr3560 = getelementptr { i32, [ 0 x i32 ] }* %array3558, i32 0, i32 1, i32 1
  store i32 4, i32* %index_ptr3560
  %index_ptr3561 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array3551, i32 0, i32 1, i32 1
  store { i32, [ 0 x i32 ] }* %array3558, { i32, [ 0 x i32 ] }** %index_ptr3561
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array3551, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** @arr3562
  ret void
}


