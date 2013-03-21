declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@garr517 = global { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* zeroinitializer, align 4		; initialized by garr517.init
@i504 = global i32 42, align 4
define void @oat_init (){

__fresh160:
  call void @garr517.init(  )
  ret void
}


define i32 @program (i32 %argc530, { i32, [ 0 x i8* ] }* %argv528){

__fresh157:
  %argc_slot531 = alloca i32
  store i32 %argc530, i32* %argc_slot531
  %argv_slot529 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv528, { i32, [ 0 x i8* ] }** %argv_slot529
  %array_ptr532 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 4 )
  %array533 = bitcast { i32, [ 0 x i32 ] }* %array_ptr532 to { i32, [ 0 x i32 ] }* 
  %index_ptr534 = getelementptr { i32, [ 0 x i32 ] }* %array533, i32 0, i32 1, i32 0
  store i32 1, i32* %index_ptr534
  %index_ptr535 = getelementptr { i32, [ 0 x i32 ] }* %array533, i32 0, i32 1, i32 1
  store i32 2, i32* %index_ptr535
  %index_ptr536 = getelementptr { i32, [ 0 x i32 ] }* %array533, i32 0, i32 1, i32 2
  store i32 3, i32* %index_ptr536
  %index_ptr537 = getelementptr { i32, [ 0 x i32 ] }* %array533, i32 0, i32 1, i32 3
  store i32 4, i32* %index_ptr537
  %arr538 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %array533, { i32, [ 0 x i32 ] }** %arr538
  %p539 = alloca i32
  store i32 0, i32* %p539
  %j540 = alloca i32
  store i32 0, i32* %j540
  br label %__cond156

__cond156:
  %_lhs541 = load i32* %j540
  %bop542 = icmp slt i32 %_lhs541, 100
  br i1 %bop542, label %__body155, label %__post154

__fresh158:
  br label %__body155

__body155:
  %_lhs543 = load i32* %p539
  %bop544 = add i32 %_lhs543, 1
  store i32 %bop544, i32* %p539
  %_lhs545 = load i32* %j540
  %bop546 = add i32 %_lhs545, 1
  store i32 %bop546, i32* %j540
  br label %__cond156

__fresh159:
  br label %__post154

__post154:
  %_lhs547 = load { i32, [ 0 x i32 ] }** %arr538
  %ret548 = call i32 @g ( { i32, [ 0 x i32 ] }* %_lhs547 )
  %_lhs549 = load i32* @i504
  %ret550 = call i32 @f ( i32 %_lhs549 )
  %bop551 = add i32 %ret548, %ret550
  %len_ptr552 = getelementptr { i32, [ 0 x i32 ] }** %arr538, i32 0, i32 0
  %len553 = load i32* %len_ptr552
  call void @oat_array_bounds_check( i32 %len553, i32 3 )
  %array_dereferenced554 = load { i32, [ 0 x i32 ] }** %arr538
  %elt_ptr555 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced554, i32 0, i32 1, i32 3
  %_lhs556 = load i32* %elt_ptr555
  %ret557 = call i32 @f ( i32 %_lhs556 )
  %bop558 = add i32 %bop551, %ret557
  %len_ptr559 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** @garr517, i32 0, i32 0
  %len560 = load i32* %len_ptr559
  call void @oat_array_bounds_check( i32 %len560, i32 1 )
  %array_dereferenced561 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** @garr517
  %elt_ptr562 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array_dereferenced561, i32 0, i32 1, i32 1
  %len_ptr563 = getelementptr { i32, [ 0 x i32 ] }** %elt_ptr562, i32 0, i32 0
  %len564 = load i32* %len_ptr563
  call void @oat_array_bounds_check( i32 %len564, i32 1 )
  %array_dereferenced565 = load { i32, [ 0 x i32 ] }** %elt_ptr562
  %elt_ptr566 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced565, i32 0, i32 1, i32 1
  %_lhs567 = load i32* %elt_ptr566
  %ret568 = call i32 @f ( i32 %_lhs567 )
  %bop569 = add i32 %bop558, %ret568
  %_lhs570 = load i32* %p539
  %ret571 = call i32 @f ( i32 %_lhs570 )
  %bop572 = add i32 %bop569, %ret571
  ret i32 %bop572
}


define i32 @g ({ i32, [ 0 x i32 ] }* %y521){

__fresh153:
  %y_slot522 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %y521, { i32, [ 0 x i32 ] }** %y_slot522
  %len_ptr523 = getelementptr { i32, [ 0 x i32 ] }** %y_slot522, i32 0, i32 0
  %len524 = load i32* %len_ptr523
  call void @oat_array_bounds_check( i32 %len524, i32 2 )
  %array_dereferenced525 = load { i32, [ 0 x i32 ] }** %y_slot522
  %elt_ptr526 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced525, i32 0, i32 1, i32 2
  %_lhs527 = load i32* %elt_ptr526
  ret i32 %_lhs527
}


define i32 @f (i32 %x518){

__fresh152:
  %x_slot519 = alloca i32
  store i32 %x518, i32* %x_slot519
  %_lhs520 = load i32* %x_slot519
  ret i32 %_lhs520
}


define void @garr517.init (){

__fresh151:
  %array_ptr505 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array506 = bitcast { i32, [ 0 x i32 ] }* %array_ptr505 to { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* 
  %array_ptr507 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array508 = bitcast { i32, [ 0 x i32 ] }* %array_ptr507 to { i32, [ 0 x i32 ] }* 
  %index_ptr509 = getelementptr { i32, [ 0 x i32 ] }* %array508, i32 0, i32 1, i32 0
  store i32 1, i32* %index_ptr509
  %index_ptr510 = getelementptr { i32, [ 0 x i32 ] }* %array508, i32 0, i32 1, i32 1
  store i32 2, i32* %index_ptr510
  %index_ptr511 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array506, i32 0, i32 1, i32 0
  store { i32, [ 0 x i32 ] }* %array508, { i32, [ 0 x i32 ] }** %index_ptr511
  %array_ptr512 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array513 = bitcast { i32, [ 0 x i32 ] }* %array_ptr512 to { i32, [ 0 x i32 ] }* 
  %index_ptr514 = getelementptr { i32, [ 0 x i32 ] }* %array513, i32 0, i32 1, i32 0
  store i32 3, i32* %index_ptr514
  %index_ptr515 = getelementptr { i32, [ 0 x i32 ] }* %array513, i32 0, i32 1, i32 1
  store i32 4, i32* %index_ptr515
  %index_ptr516 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array506, i32 0, i32 1, i32 1
  store { i32, [ 0 x i32 ] }* %array513, { i32, [ 0 x i32 ] }** %index_ptr516
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array506, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** @garr517
  ret void
}


