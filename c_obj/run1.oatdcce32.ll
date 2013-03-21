declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@garr472 = global { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* zeroinitializer, align 4		; initialized by garr472.init
@i459 = global i32 42, align 4
define void @oat_init (){

__fresh118:
  call void @garr472.init(  )
  ret void
}


define i32 @program (i32 %argc486, { i32, [ 0 x i8* ] }* %argv484){

__fresh115:
  %argc_slot487 = alloca i32
  store i32 %argc486, i32* %argc_slot487
  %argv_slot485 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv484, { i32, [ 0 x i8* ] }** %argv_slot485
  %array_ptr488 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 4 )
  %array489 = bitcast { i32, [ 0 x i32 ] }* %array_ptr488 to { i32, [ 0 x i32 ] }* 
  %index_ptr490 = getelementptr { i32, [ 0 x i32 ] }* %array489, i32 0, i32 1, i32 0
  store i32 1, i32* %index_ptr490
  %index_ptr491 = getelementptr { i32, [ 0 x i32 ] }* %array489, i32 0, i32 1, i32 1
  store i32 2, i32* %index_ptr491
  %index_ptr492 = getelementptr { i32, [ 0 x i32 ] }* %array489, i32 0, i32 1, i32 2
  store i32 3, i32* %index_ptr492
  %index_ptr493 = getelementptr { i32, [ 0 x i32 ] }* %array489, i32 0, i32 1, i32 3
  store i32 4, i32* %index_ptr493
  %arr494 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %array489, { i32, [ 0 x i32 ] }** %arr494
  %p495 = alloca i32
  store i32 0, i32* %p495
  %j496 = alloca i32
  store i32 0, i32* %j496
  br label %__cond114

__cond114:
  %_lhs497 = load i32* %j496
  %bop498 = icmp slt i32 %_lhs497, 100
  br i1 %bop498, label %__body113, label %__post112

__fresh116:
  br label %__body113

__body113:
  %_lhs499 = load i32* %p495
  %bop500 = add i32 %_lhs499, 1
  store i32 %bop500, i32* %p495
  %_lhs501 = load i32* %j496
  %bop502 = add i32 %_lhs501, 1
  store i32 %bop502, i32* %j496
  br label %__cond114

__fresh117:
  br label %__post112

__post112:
  %_lhs503 = load { i32, [ 0 x i32 ] }** %arr494
  %ret504 = call i32 @g ( { i32, [ 0 x i32 ] }* %_lhs503 )
  %_lhs505 = load i32* @i459
  %ret506 = call i32 @f ( i32 %_lhs505 )
  %bop507 = add i32 %ret504, %ret506
  %_lhs508 = load { i32, [ 0 x i32 ] }** %arr494
  %len_ptr509 = getelementptr { i32, [ 0 x i32 ] }* %_lhs508, i32 0, i32 0
  %len510 = load i32* %len_ptr509
  call void @oat_array_bounds_check( i32 %len510, i32 3 )
  %array_dereferenced511 = load { i32, [ 0 x i32 ] }** %arr494
  %_lhs513 = load i32* %elt_ptr512
  %ret514 = call i32 @f ( i32 %_lhs513 )
  %bop515 = add i32 %bop507, %ret514
  %_lhs516 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** @garr472
  %len_ptr517 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %_lhs516, i32 0, i32 0
  %len518 = load i32* %len_ptr517
  call void @oat_array_bounds_check( i32 %len518, i32 1 )
  %array_dereferenced519 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** @garr472
  %_lhs521 = load { i32, [ 0 x i32 ] }** %elt_ptr520
  %len_ptr522 = getelementptr { i32, [ 0 x i32 ] }* %_lhs521, i32 0, i32 0
  %len523 = load i32* %len_ptr522
  %_lhs524 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** @garr472
  %len_ptr525 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %_lhs524, i32 0, i32 0
  %len526 = load i32* %len_ptr525
  call void @oat_array_bounds_check( i32 %len526, i32 1 )
  %array_dereferenced527 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** @garr472
  call void @oat_array_bounds_check( i32 %len523, i32 1 )
  %array_dereferenced529 = load { i32, [ 0 x i32 ] }** %elt_ptr528
  %_lhs531 = load i32* %elt_ptr530
  %ret532 = call i32 @f ( i32 %_lhs531 )
  %bop533 = add i32 %bop515, %ret532
  %_lhs534 = load i32* %p495
  %ret535 = call i32 @f ( i32 %_lhs534 )
  %bop536 = add i32 %bop533, %ret535
  ret i32 %bop536
}


define i32 @g ({ i32, [ 0 x i32 ] }* %y476){

__fresh111:
  %y_slot477 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %y476, { i32, [ 0 x i32 ] }** %y_slot477
  %_lhs478 = load { i32, [ 0 x i32 ] }** %y_slot477
  %len_ptr479 = getelementptr { i32, [ 0 x i32 ] }* %_lhs478, i32 0, i32 0
  %len480 = load i32* %len_ptr479
  call void @oat_array_bounds_check( i32 %len480, i32 2 )
  %array_dereferenced481 = load { i32, [ 0 x i32 ] }** %y_slot477
  %_lhs483 = load i32* %elt_ptr482
  ret i32 %_lhs483
}


define i32 @f (i32 %x473){

__fresh110:
  %x_slot474 = alloca i32
  store i32 %x473, i32* %x_slot474
  %_lhs475 = load i32* %x_slot474
  ret i32 %_lhs475
}


define void @garr472.init (){

__fresh109:
  %array_ptr460 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array461 = bitcast { i32, [ 0 x i32 ] }* %array_ptr460 to { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* 
  %array_ptr462 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array463 = bitcast { i32, [ 0 x i32 ] }* %array_ptr462 to { i32, [ 0 x i32 ] }* 
  %index_ptr464 = getelementptr { i32, [ 0 x i32 ] }* %array463, i32 0, i32 1, i32 0
  store i32 1, i32* %index_ptr464
  %index_ptr465 = getelementptr { i32, [ 0 x i32 ] }* %array463, i32 0, i32 1, i32 1
  store i32 2, i32* %index_ptr465
  %index_ptr466 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array461, i32 0, i32 1, i32 0
  store { i32, [ 0 x i32 ] }* %array463, { i32, [ 0 x i32 ] }** %index_ptr466
  %array_ptr467 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array468 = bitcast { i32, [ 0 x i32 ] }* %array_ptr467 to { i32, [ 0 x i32 ] }* 
  %index_ptr469 = getelementptr { i32, [ 0 x i32 ] }* %array468, i32 0, i32 1, i32 0
  store i32 3, i32* %index_ptr469
  %index_ptr470 = getelementptr { i32, [ 0 x i32 ] }* %array468, i32 0, i32 1, i32 1
  store i32 4, i32* %index_ptr470
  %index_ptr471 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array461, i32 0, i32 1, i32 1
  store { i32, [ 0 x i32 ] }* %array468, { i32, [ 0 x i32 ] }** %index_ptr471
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array461, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** @garr472
  ret void
}


