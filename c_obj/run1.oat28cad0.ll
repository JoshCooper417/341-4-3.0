declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@garr476 = global { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* zeroinitializer, align 4		; initialized by garr476.init
@i463 = global i32 42, align 4
define void @oat_init (){

__fresh194:
  call void @garr476.init(  )
  ret void
}


define i32 @program (i32 %argc489, { i32, [ 0 x i8* ] }* %argv487){

__fresh191:
  %argc_slot490 = alloca i32
  store i32 %argc489, i32* %argc_slot490
  %argv_slot488 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv487, { i32, [ 0 x i8* ] }** %argv_slot488
  %array_ptr491 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 4 )
  %array492 = bitcast { i32, [ 0 x i32 ] }* %array_ptr491 to { i32, [ 0 x i32 ] }* 
  %index_ptr493 = getelementptr { i32, [ 0 x i32 ] }* %array492, i32 0, i32 1, i32 0
  store i32 1, i32* %index_ptr493
  %index_ptr494 = getelementptr { i32, [ 0 x i32 ] }* %array492, i32 0, i32 1, i32 1
  store i32 2, i32* %index_ptr494
  %index_ptr495 = getelementptr { i32, [ 0 x i32 ] }* %array492, i32 0, i32 1, i32 2
  store i32 3, i32* %index_ptr495
  %index_ptr496 = getelementptr { i32, [ 0 x i32 ] }* %array492, i32 0, i32 1, i32 3
  store i32 4, i32* %index_ptr496
  %arr497 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %array492, { i32, [ 0 x i32 ] }** %arr497
  %p498 = alloca i32
  store i32 0, i32* %p498
  %j499 = alloca i32
  store i32 0, i32* %j499
  br label %__cond190

__cond190:
  %_lhs500 = load i32* %j499
  %bop501 = icmp slt i32 %_lhs500, 100
  br i1 %bop501, label %__body189, label %__post188

__fresh192:
  br label %__body189

__body189:
  %_lhs502 = load i32* %p498
  %bop503 = add i32 %_lhs502, 1
  store i32 %bop503, i32* %p498
  %_lhs504 = load i32* %j499
  %bop505 = add i32 %_lhs504, 1
  store i32 %bop505, i32* %j499
  br label %__cond190

__fresh193:
  br label %__post188

__post188:
  %_lhs506 = load { i32, [ 0 x i32 ] }** %arr497
  %ret507 = call i32 @g ( { i32, [ 0 x i32 ] }* %_lhs506 )
  %_lhs508 = load i32* @i463
  %ret509 = call i32 @f ( i32 %_lhs508 )
  %bop510 = add i32 %ret507, %ret509
  %array_dereferenced511 = load { i32, [ 0 x i32 ] }** %arr497
  %len_ptr512 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced511, i32 0, i32 0
  %len513 = load i32* %len_ptr512
  call void @oat_array_bounds_check( i32 %len513, i32 3 )
  %elt_ptr514 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced511, i32 0, i32 1, i32 3
  %_lhs515 = load i32* %elt_ptr514
  %ret516 = call i32 @f ( i32 %_lhs515 )
  %bop517 = add i32 %bop510, %ret516
  %array_dereferenced522 = load { i32, [ 0 x i32 ] }** %elt_ptr521
  %array_dereferenced518 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** @garr476
  %len_ptr519 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array_dereferenced518, i32 0, i32 0
  %len520 = load i32* %len_ptr519
  call void @oat_array_bounds_check( i32 %len520, i32 1 )
  %elt_ptr521 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array_dereferenced518, i32 0, i32 1, i32 1
  %len_ptr523 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced522, i32 0, i32 0
  %len524 = load i32* %len_ptr523
  call void @oat_array_bounds_check( i32 %len524, i32 1 )
  %elt_ptr525 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced522, i32 0, i32 1, i32 1
  %_lhs526 = load i32* %elt_ptr525
  %ret527 = call i32 @f ( i32 %_lhs526 )
  %bop528 = add i32 %bop517, %ret527
  %_lhs529 = load i32* %p498
  %ret530 = call i32 @f ( i32 %_lhs529 )
  %bop531 = add i32 %bop528, %ret530
  ret i32 %bop531
}


define i32 @g ({ i32, [ 0 x i32 ] }* %y480){

__fresh187:
  %y_slot481 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %y480, { i32, [ 0 x i32 ] }** %y_slot481
  %array_dereferenced482 = load { i32, [ 0 x i32 ] }** %y_slot481
  %len_ptr483 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced482, i32 0, i32 0
  %len484 = load i32* %len_ptr483
  call void @oat_array_bounds_check( i32 %len484, i32 2 )
  %elt_ptr485 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced482, i32 0, i32 1, i32 2
  %_lhs486 = load i32* %elt_ptr485
  ret i32 %_lhs486
}


define i32 @f (i32 %x477){

__fresh186:
  %x_slot478 = alloca i32
  store i32 %x477, i32* %x_slot478
  %_lhs479 = load i32* %x_slot478
  ret i32 %_lhs479
}


define void @garr476.init (){

__fresh185:
  %array_ptr464 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array465 = bitcast { i32, [ 0 x i32 ] }* %array_ptr464 to { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* 
  %array_ptr466 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array467 = bitcast { i32, [ 0 x i32 ] }* %array_ptr466 to { i32, [ 0 x i32 ] }* 
  %index_ptr468 = getelementptr { i32, [ 0 x i32 ] }* %array467, i32 0, i32 1, i32 0
  store i32 1, i32* %index_ptr468
  %index_ptr469 = getelementptr { i32, [ 0 x i32 ] }* %array467, i32 0, i32 1, i32 1
  store i32 2, i32* %index_ptr469
  %index_ptr470 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array465, i32 0, i32 1, i32 0
  store { i32, [ 0 x i32 ] }* %array467, { i32, [ 0 x i32 ] }** %index_ptr470
  %array_ptr471 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array472 = bitcast { i32, [ 0 x i32 ] }* %array_ptr471 to { i32, [ 0 x i32 ] }* 
  %index_ptr473 = getelementptr { i32, [ 0 x i32 ] }* %array472, i32 0, i32 1, i32 0
  store i32 3, i32* %index_ptr473
  %index_ptr474 = getelementptr { i32, [ 0 x i32 ] }* %array472, i32 0, i32 1, i32 1
  store i32 4, i32* %index_ptr474
  %index_ptr475 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array465, i32 0, i32 1, i32 1
  store { i32, [ 0 x i32 ] }* %array472, { i32, [ 0 x i32 ] }** %index_ptr475
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array465, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** @garr476
  ret void
}


