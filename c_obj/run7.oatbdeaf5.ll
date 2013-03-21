declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@arr3518 = global { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* zeroinitializer, align 4		; initialized by arr3518.init
define void @oat_init (){

__fresh746:
  call void @arr3518.init(  )
  ret void
}


define i32 @program (i32 %argc3521, { i32, [ 0 x i8* ] }* %argv3519){

__fresh745:
  %argc_slot3522 = alloca i32
  store i32 %argc3521, i32* %argc_slot3522
  %argv_slot3520 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv3519, { i32, [ 0 x i8* ] }** %argv_slot3520
  %len_ptr3523 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** @arr3518, i32 0, i32 0
  %len3524 = load i32* %len_ptr3523
  call void @oat_array_bounds_check( i32 %len3524, i32 3 )
  %array_dereferenced3525 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** @arr3518
  %elt_ptr3526 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array_dereferenced3525, i32 0, i32 1, i32 3
  %len_ptr3527 = getelementptr { i32, [ 0 x i32 ] }** %elt_ptr3526, i32 0, i32 0
  %len3528 = load i32* %len_ptr3527
  call void @oat_array_bounds_check( i32 %len3528, i32 0 )
  %array_dereferenced3529 = load { i32, [ 0 x i32 ] }** %elt_ptr3526
  %elt_ptr3530 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced3529, i32 0, i32 1, i32 0
  %_lhs3531 = load i32* %elt_ptr3530
  ret i32 %_lhs3531
}


define void @arr3518.init (){

__fresh744:
  %array_ptr3506 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array3507 = bitcast { i32, [ 0 x i32 ] }* %array_ptr3506 to { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* 
  %array_ptr3508 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array3509 = bitcast { i32, [ 0 x i32 ] }* %array_ptr3508 to { i32, [ 0 x i32 ] }* 
  %index_ptr3510 = getelementptr { i32, [ 0 x i32 ] }* %array3509, i32 0, i32 1, i32 0
  store i32 1, i32* %index_ptr3510
  %index_ptr3511 = getelementptr { i32, [ 0 x i32 ] }* %array3509, i32 0, i32 1, i32 1
  store i32 2, i32* %index_ptr3511
  %index_ptr3512 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array3507, i32 0, i32 1, i32 0
  store { i32, [ 0 x i32 ] }* %array3509, { i32, [ 0 x i32 ] }** %index_ptr3512
  %array_ptr3513 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array3514 = bitcast { i32, [ 0 x i32 ] }* %array_ptr3513 to { i32, [ 0 x i32 ] }* 
  %index_ptr3515 = getelementptr { i32, [ 0 x i32 ] }* %array3514, i32 0, i32 1, i32 0
  store i32 3, i32* %index_ptr3515
  %index_ptr3516 = getelementptr { i32, [ 0 x i32 ] }* %array3514, i32 0, i32 1, i32 1
  store i32 4, i32* %index_ptr3516
  %index_ptr3517 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array3507, i32 0, i32 1, i32 1
  store { i32, [ 0 x i32 ] }* %array3514, { i32, [ 0 x i32 ] }** %index_ptr3517
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array3507, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** @arr3518
  ret void
}


