declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@arr2587 = global { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* zeroinitializer, align 4		; initialized by arr2587.init
@arr1566 = global { i32, [ 0 x i32 ] }* zeroinitializer, align 4		; initialized by arr1566.init
@i560 = global i32 1, align 4
define void @oat_init (){

__fresh146:
  call void @arr1566.init(  )
  call void @arr2587.init(  )
  ret void
}


define i32 @program (i32 %argc601, { i32, [ 0 x i8* ] }* %argv599){

__fresh145:
  %argc_slot602 = alloca i32
  store i32 %argc601, i32* %argc_slot602
  %argv_slot600 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv599, { i32, [ 0 x i8* ] }** %argv_slot600
  %c603 = alloca i32
  store i32 1, i32* %c603
  %ret604 = call { i32, [ 0 x i32 ] }* @g (  )
  %arr4605 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %ret604, { i32, [ 0 x i32 ] }** %arr4605
  %array_ptr606 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 4 )
  %array607 = bitcast { i32, [ 0 x i32 ] }* %array_ptr606 to { i32, [ 0 x i32 ] }* 
  %index_ptr608 = getelementptr { i32, [ 0 x i32 ] }* %array607, i32 0, i32 1, i32 0
  store i32 99, i32* %index_ptr608
  %index_ptr609 = getelementptr { i32, [ 0 x i32 ] }* %array607, i32 0, i32 1, i32 1
  store i32 99, i32* %index_ptr609
  %index_ptr610 = getelementptr { i32, [ 0 x i32 ] }* %array607, i32 0, i32 1, i32 2
  store i32 99, i32* %index_ptr610
  %index_ptr611 = getelementptr { i32, [ 0 x i32 ] }* %array607, i32 0, i32 1, i32 3
  store i32 1, i32* %index_ptr611
  %arr3612 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %array607, { i32, [ 0 x i32 ] }** %arr3612
  %_lhs613 = load i32* %c603
  %_lhs614 = load i32* @i560
  %bop615 = add i32 %_lhs613, %_lhs614
  store i32 %bop615, i32* %c603
  %_lhs616 = load i32* %c603
  %_lhs617 = load { i32, [ 0 x i32 ] }** @arr1566
  %bop618 = add i32 %_lhs616, %_lhs617
  store i32 %bop618, i32* %c603
  %_lhs619 = load i32* %c603
  %_lhs620 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** @arr2587
  %bop621 = add i32 %_lhs619, %_lhs620
  store i32 %bop621, i32* %c603
  %_lhs622 = load i32* %c603
  %_lhs623 = load { i32, [ 0 x i32 ] }** %arr3612
  %bop624 = add i32 %_lhs622, %_lhs623
  store i32 %bop624, i32* %c603
  %_lhs625 = load i32* %c603
  %_lhs626 = load { i32, [ 0 x i32 ] }** %arr3612
  %ret627 = call i32 @f ( { i32, [ 0 x i32 ] }* %_lhs626 )
  %bop628 = add i32 %_lhs625, %ret627
  store i32 %bop628, i32* %c603
  %_lhs629 = load i32* %c603
  %_lhs630 = load { i32, [ 0 x i32 ] }** %arr4605
  %bop631 = add i32 %_lhs629, %_lhs630
  store i32 %bop631, i32* %c603
  %_lhs632 = load i32* %c603
  ret i32 %_lhs632
}


define { i32, [ 0 x i32 ] }* @g (){

__fresh144:
  %array_ptr591 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 4 )
  %array592 = bitcast { i32, [ 0 x i32 ] }* %array_ptr591 to { i32, [ 0 x i32 ] }* 
  %index_ptr593 = getelementptr { i32, [ 0 x i32 ] }* %array592, i32 0, i32 1, i32 0
  store i32 99, i32* %index_ptr593
  %index_ptr594 = getelementptr { i32, [ 0 x i32 ] }* %array592, i32 0, i32 1, i32 1
  store i32 1, i32* %index_ptr594
  %index_ptr595 = getelementptr { i32, [ 0 x i32 ] }* %array592, i32 0, i32 1, i32 2
  store i32 99, i32* %index_ptr595
  %index_ptr596 = getelementptr { i32, [ 0 x i32 ] }* %array592, i32 0, i32 1, i32 3
  store i32 99, i32* %index_ptr596
  %arr597 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %array592, { i32, [ 0 x i32 ] }** %arr597
  %_lhs598 = load { i32, [ 0 x i32 ] }** %arr597
  ret { i32, [ 0 x i32 ] }* %_lhs598
}


define i32 @f ({ i32, [ 0 x i32 ] }* %arr588){

__fresh143:
  %arr_slot589 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %arr588, { i32, [ 0 x i32 ] }** %arr_slot589
  %_lhs590 = load { i32, [ 0 x i32 ] }** %arr_slot589
  ret { i32, [ 0 x i32 ] }* %_lhs590
}


define void @arr2587.init (){

__fresh142:
  %array_ptr567 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 3 )
  %array568 = bitcast { i32, [ 0 x i32 ] }* %array_ptr567 to { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* 
  %array_ptr569 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 3 )
  %array570 = bitcast { i32, [ 0 x i32 ] }* %array_ptr569 to { i32, [ 0 x i32 ] }* 
  %index_ptr571 = getelementptr { i32, [ 0 x i32 ] }* %array570, i32 0, i32 1, i32 0
  store i32 99, i32* %index_ptr571
  %index_ptr572 = getelementptr { i32, [ 0 x i32 ] }* %array570, i32 0, i32 1, i32 1
  store i32 99, i32* %index_ptr572
  %index_ptr573 = getelementptr { i32, [ 0 x i32 ] }* %array570, i32 0, i32 1, i32 2
  store i32 99, i32* %index_ptr573
  %index_ptr574 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array568, i32 0, i32 1, i32 0
  store { i32, [ 0 x i32 ] }* %array570, { i32, [ 0 x i32 ] }** %index_ptr574
  %array_ptr575 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 3 )
  %array576 = bitcast { i32, [ 0 x i32 ] }* %array_ptr575 to { i32, [ 0 x i32 ] }* 
  %index_ptr577 = getelementptr { i32, [ 0 x i32 ] }* %array576, i32 0, i32 1, i32 0
  store i32 99, i32* %index_ptr577
  %index_ptr578 = getelementptr { i32, [ 0 x i32 ] }* %array576, i32 0, i32 1, i32 1
  store i32 1, i32* %index_ptr578
  %index_ptr579 = getelementptr { i32, [ 0 x i32 ] }* %array576, i32 0, i32 1, i32 2
  store i32 99, i32* %index_ptr579
  %index_ptr580 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array568, i32 0, i32 1, i32 1
  store { i32, [ 0 x i32 ] }* %array576, { i32, [ 0 x i32 ] }** %index_ptr580
  %array_ptr581 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 3 )
  %array582 = bitcast { i32, [ 0 x i32 ] }* %array_ptr581 to { i32, [ 0 x i32 ] }* 
  %index_ptr583 = getelementptr { i32, [ 0 x i32 ] }* %array582, i32 0, i32 1, i32 0
  store i32 99, i32* %index_ptr583
  %index_ptr584 = getelementptr { i32, [ 0 x i32 ] }* %array582, i32 0, i32 1, i32 1
  store i32 99, i32* %index_ptr584
  %index_ptr585 = getelementptr { i32, [ 0 x i32 ] }* %array582, i32 0, i32 1, i32 2
  store i32 99, i32* %index_ptr585
  %index_ptr586 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array568, i32 0, i32 1, i32 2
  store { i32, [ 0 x i32 ] }* %array582, { i32, [ 0 x i32 ] }** %index_ptr586
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array568, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** @arr2587
  ret void
}


define void @arr1566.init (){

__fresh141:
  %array_ptr561 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 3 )
  %array562 = bitcast { i32, [ 0 x i32 ] }* %array_ptr561 to { i32, [ 0 x i32 ] }* 
  %index_ptr563 = getelementptr { i32, [ 0 x i32 ] }* %array562, i32 0, i32 1, i32 0
  store i32 99, i32* %index_ptr563
  %index_ptr564 = getelementptr { i32, [ 0 x i32 ] }* %array562, i32 0, i32 1, i32 1
  store i32 1, i32* %index_ptr564
  %index_ptr565 = getelementptr { i32, [ 0 x i32 ] }* %array562, i32 0, i32 1, i32 2
  store i32 99, i32* %index_ptr565
  store { i32, [ 0 x i32 ] }* %array562, { i32, [ 0 x i32 ] }** @arr1566
  ret void
}


