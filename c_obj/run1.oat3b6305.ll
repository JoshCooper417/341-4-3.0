declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@garr474 = global { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* zeroinitializer, align 4		; initialized by garr474.init
@i461 = global i32 42, align 4
define void @oat_init (){

__fresh126:
  call void @garr474.init(  )
  ret void
}


define i32 @program (i32 %argc487, { i32, [ 0 x i8* ] }* %argv485){

__fresh123:
  %argc_slot488 = alloca i32
  store i32 %argc487, i32* %argc_slot488
  %argv_slot486 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv485, { i32, [ 0 x i8* ] }** %argv_slot486
  %array_ptr489 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 4 )
  %array490 = bitcast { i32, [ 0 x i32 ] }* %array_ptr489 to { i32, [ 0 x i32 ] }* 
  %index_ptr491 = getelementptr { i32, [ 0 x i32 ] }* %array490, i32 0, i32 1, i32 0
  store i32 1, i32* %index_ptr491
  %index_ptr492 = getelementptr { i32, [ 0 x i32 ] }* %array490, i32 0, i32 1, i32 1
  store i32 2, i32* %index_ptr492
  %index_ptr493 = getelementptr { i32, [ 0 x i32 ] }* %array490, i32 0, i32 1, i32 2
  store i32 3, i32* %index_ptr493
  %index_ptr494 = getelementptr { i32, [ 0 x i32 ] }* %array490, i32 0, i32 1, i32 3
  store i32 4, i32* %index_ptr494
  %arr495 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %array490, { i32, [ 0 x i32 ] }** %arr495
  %p496 = alloca i32
  store i32 0, i32* %p496
  %j497 = alloca i32
  store i32 0, i32* %j497
  br label %__cond122

__cond122:
  %_lhs498 = load i32* %j497
  %bop499 = icmp slt i32 %_lhs498, 100
  br i1 %bop499, label %__body121, label %__post120

__fresh124:
  br label %__body121

__body121:
  %_lhs500 = load i32* %p496
  %bop501 = add i32 %_lhs500, 1
  store i32 %bop501, i32* %p496
  %_lhs502 = load i32* %j497
  %bop503 = add i32 %_lhs502, 1
  store i32 %bop503, i32* %j497
  br label %__cond122

__fresh125:
  br label %__post120

__post120:
  %_lhs504 = load { i32, [ 0 x i32 ] }** %arr495
  %ret505 = call i32 @g ( { i32, [ 0 x i32 ] }* %_lhs504 )
  %_lhs506 = load i32* @i461
  %ret507 = call i32 @f ( i32 %_lhs506 )
  %bop508 = add i32 %ret505, %ret507
  %len_ptr509 = getelementptr { i32, [ 0 x i32 ] }** %arr495, i32 0, i32 0
  %len510 = load i32* %len_ptr509
  call void @oat_array_bounds_check( i32 %len510, i32 3 )
  %array_dereferenced511 = load { i32, [ 0 x i32 ] }** %arr495
  %elt_ptr512 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced511, i32 0, i32 1, i32 3
  %_lhs513 = load i32* %elt_ptr512
  %ret514 = call i32 @f ( i32 %_lhs513 )
  %bop515 = add i32 %bop508, %ret514
  %len_ptr516 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** @garr474, i32 0, i32 0
  %len517 = load i32* %len_ptr516
  call void @oat_array_bounds_check( i32 %len517, i32 1 )
  %array_dereferenced518 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** @garr474
  %elt_ptr519 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array_dereferenced518, i32 0, i32 1, i32 1
  %len_ptr520 = getelementptr { i32, [ 0 x i32 ] }** %elt_ptr519, i32 0, i32 0
  %len521 = load i32* %len_ptr520
  call void @oat_array_bounds_check( i32 %len521, i32 1 )
  %array_dereferenced522 = load { i32, [ 0 x i32 ] }** %elt_ptr519
  %elt_ptr523 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced522, i32 0, i32 1, i32 1
  %_lhs524 = load i32* %elt_ptr523
  %ret525 = call i32 @f ( i32 %_lhs524 )
  %bop526 = add i32 %bop515, %ret525
  %_lhs527 = load i32* %p496
  %ret528 = call i32 @f ( i32 %_lhs527 )
  %bop529 = add i32 %bop526, %ret528
  ret i32 %bop529
}


define i32 @g ({ i32, [ 0 x i32 ] }* %y478){

__fresh119:
  %y_slot479 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %y478, { i32, [ 0 x i32 ] }** %y_slot479
  %len_ptr480 = getelementptr { i32, [ 0 x i32 ] }** %y_slot479, i32 0, i32 0
  %len481 = load i32* %len_ptr480
  call void @oat_array_bounds_check( i32 %len481, i32 2 )
  %array_dereferenced482 = load { i32, [ 0 x i32 ] }** %y_slot479
  %elt_ptr483 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced482, i32 0, i32 1, i32 2
  %_lhs484 = load i32* %elt_ptr483
  ret i32 %_lhs484
}


define i32 @f (i32 %x475){

__fresh118:
  %x_slot476 = alloca i32
  store i32 %x475, i32* %x_slot476
  %_lhs477 = load i32* %x_slot476
  ret i32 %_lhs477
}


define void @garr474.init (){

__fresh117:
  %array_ptr462 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array463 = bitcast { i32, [ 0 x i32 ] }* %array_ptr462 to { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* 
  %array_ptr464 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array465 = bitcast { i32, [ 0 x i32 ] }* %array_ptr464 to { i32, [ 0 x i32 ] }* 
  %index_ptr466 = getelementptr { i32, [ 0 x i32 ] }* %array465, i32 0, i32 1, i32 0
  store i32 1, i32* %index_ptr466
  %index_ptr467 = getelementptr { i32, [ 0 x i32 ] }* %array465, i32 0, i32 1, i32 1
  store i32 2, i32* %index_ptr467
  %index_ptr468 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array463, i32 0, i32 1, i32 0
  store { i32, [ 0 x i32 ] }* %array465, { i32, [ 0 x i32 ] }** %index_ptr468
  %array_ptr469 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array470 = bitcast { i32, [ 0 x i32 ] }* %array_ptr469 to { i32, [ 0 x i32 ] }* 
  %index_ptr471 = getelementptr { i32, [ 0 x i32 ] }* %array470, i32 0, i32 1, i32 0
  store i32 3, i32* %index_ptr471
  %index_ptr472 = getelementptr { i32, [ 0 x i32 ] }* %array470, i32 0, i32 1, i32 1
  store i32 4, i32* %index_ptr472
  %index_ptr473 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array463, i32 0, i32 1, i32 1
  store { i32, [ 0 x i32 ] }* %array470, { i32, [ 0 x i32 ] }** %index_ptr473
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array463, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** @garr474
  ret void
}


