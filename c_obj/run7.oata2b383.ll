declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@arr3510 = global { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* zeroinitializer, align 4		; initialized by arr3510.init
define void @oat_init (){

__fresh640:
  call void @arr3510.init(  )
  ret void
}


define i32 @program (i32 %argc3513, { i32, [ 0 x i8* ] }* %argv3511){

__fresh639:
  %argc_slot3514 = alloca i32
  store i32 %argc3513, i32* %argc_slot3514
  %argv_slot3512 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv3511, { i32, [ 0 x i8* ] }** %argv_slot3512
  %len_ptr3515 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** @arr3510, i32 0, i32 0
  %len3516 = load i32* %len_ptr3515
  call void @oat_array_bounds_check( i32 %len3516, i32 3 )
  %array_dereferenced3517 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** @arr3510
  %elt_ptr3518 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array_dereferenced3517, i32 0, i32 1, i32 3
  %len_ptr3519 = getelementptr { i32, [ 0 x i32 ] }** %elt_ptr3518, i32 0, i32 0
  %len3520 = load i32* %len_ptr3519
  call void @oat_array_bounds_check( i32 %len3520, i32 0 )
  %array_dereferenced3521 = load { i32, [ 0 x i32 ] }** %elt_ptr3518
  %elt_ptr3522 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced3521, i32 0, i32 1, i32 0
  %_lhs3523 = load i32* %elt_ptr3522
  ret i32 %_lhs3523
}


define void @arr3510.init (){

__fresh638:
  %array_ptr3498 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array3499 = bitcast { i32, [ 0 x i32 ] }* %array_ptr3498 to { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* 
  %array_ptr3500 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array3501 = bitcast { i32, [ 0 x i32 ] }* %array_ptr3500 to { i32, [ 0 x i32 ] }* 
  %index_ptr3502 = getelementptr { i32, [ 0 x i32 ] }* %array3501, i32 0, i32 1, i32 0
  store i32 1, i32* %index_ptr3502
  %index_ptr3503 = getelementptr { i32, [ 0 x i32 ] }* %array3501, i32 0, i32 1, i32 1
  store i32 2, i32* %index_ptr3503
  %index_ptr3504 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array3499, i32 0, i32 1, i32 0
  store { i32, [ 0 x i32 ] }* %array3501, { i32, [ 0 x i32 ] }** %index_ptr3504
  %array_ptr3505 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array3506 = bitcast { i32, [ 0 x i32 ] }* %array_ptr3505 to { i32, [ 0 x i32 ] }* 
  %index_ptr3507 = getelementptr { i32, [ 0 x i32 ] }* %array3506, i32 0, i32 1, i32 0
  store i32 3, i32* %index_ptr3507
  %index_ptr3508 = getelementptr { i32, [ 0 x i32 ] }* %array3506, i32 0, i32 1, i32 1
  store i32 4, i32* %index_ptr3508
  %index_ptr3509 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array3499, i32 0, i32 1, i32 1
  store { i32, [ 0 x i32 ] }* %array3506, { i32, [ 0 x i32 ] }** %index_ptr3509
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array3499, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** @arr3510
  ret void
}


