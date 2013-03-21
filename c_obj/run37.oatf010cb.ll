declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
define void @oat_init (){

__fresh402:
  ret void
}


define i32 @program (i32 %argc2571, { i32, [ 0 x i8* ] }* %argv2569){

__fresh401:
  %argc_slot2572 = alloca i32
  store i32 %argc2571, i32* %argc_slot2572
  %argv_slot2570 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv2569, { i32, [ 0 x i8* ] }** %argv_slot2570
  %array_ptr2573 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array2574 = bitcast { i32, [ 0 x i32 ] }* %array_ptr2573 to { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* 
  %array_ptr2575 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array2576 = bitcast { i32, [ 0 x i32 ] }* %array_ptr2575 to { i32, [ 0 x i32 ] }* 
  %index_ptr2577 = getelementptr { i32, [ 0 x i32 ] }* %array2576, i32 0, i32 1, i32 0
  store i32 0, i32* %index_ptr2577
  %index_ptr2578 = getelementptr { i32, [ 0 x i32 ] }* %array2576, i32 0, i32 1, i32 1
  store i32 0, i32* %index_ptr2578
  %index_ptr2579 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array2574, i32 0, i32 1, i32 0
  store { i32, [ 0 x i32 ] }* %array2576, { i32, [ 0 x i32 ] }** %index_ptr2579
  %array_ptr2580 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array2581 = bitcast { i32, [ 0 x i32 ] }* %array_ptr2580 to { i32, [ 0 x i32 ] }* 
  %index_ptr2582 = getelementptr { i32, [ 0 x i32 ] }* %array2581, i32 0, i32 1, i32 0
  store i32 0, i32* %index_ptr2582
  %index_ptr2583 = getelementptr { i32, [ 0 x i32 ] }* %array2581, i32 0, i32 1, i32 1
  store i32 0, i32* %index_ptr2583
  %index_ptr2584 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array2574, i32 0, i32 1, i32 1
  store { i32, [ 0 x i32 ] }* %array2581, { i32, [ 0 x i32 ] }** %index_ptr2584
  %a2585 = alloca { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }*
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array2574, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a2585
  %len_ptr2586 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a2585, i32 0, i32 0
  %len2587 = load i32* %len_ptr2586
  call void @oat_array_bounds_check( i32 %len2587, i32 1 )
  %array_dereferenced2588 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a2585
  %elt_ptr2589 = getelementptr i32 %array_dereferenced2588, i32 0, i32 1, i32 1
  %len_ptr2590 = getelementptr { i32, [ 0 x i32 ] }** %elt_ptr2589, i32 0, i32 0
  %len2591 = load i32* %len_ptr2590
  call void @oat_array_bounds_check( i32 %len2591, i32 3 )
  %array_dereferenced2592 = load { i32, [ 0 x i32 ] }** %elt_ptr2589
  %elt_ptr2593 = getelementptr i32 %array_dereferenced2592, i32 0, i32 1, i32 3
  %_lhs2594 = load i32* %elt_ptr2593
  ret i32 %_lhs2594
}


