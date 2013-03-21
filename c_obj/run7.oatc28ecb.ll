declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@arr2535 = global { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* zeroinitializer, align 4		; initialized by arr2535.init
define void @oat_init (){

__fresh398:
  call void @arr2535.init(  )
  ret void
}


define i32 @program (i32 %argc2538, { i32, [ 0 x i8* ] }* %argv2536){

__fresh397:
  %argc_slot2539 = alloca i32
  store i32 %argc2538, i32* %argc_slot2539
  %argv_slot2537 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv2536, { i32, [ 0 x i8* ] }** %argv_slot2537
  %len_ptr2540 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** @arr2535, i32 0, i32 0
  %len2541 = load i32* %len_ptr2540
  call void @oat_array_bounds_check( i32 %len2541, i32 3 )
  %array_dereferenced2542 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** @arr2535
  %elt_ptr2543 = getelementptr i32 %array_dereferenced2542, i32 0, i32 1, i32 3
  %len_ptr2544 = getelementptr i32* %elt_ptr2543, i32 0, i32 0
  %len2545 = load i32* %len_ptr2544
  call void @oat_array_bounds_check( i32 %len2545, i32 0 )
  %array_dereferenced2546 = load i32* %elt_ptr2543
  %elt_ptr2547 = getelementptr i32 %array_dereferenced2546, i32 0, i32 1, i32 0
  %_lhs2548 = load i32* %elt_ptr2547
  ret i32 %_lhs2548
}


define void @arr2535.init (){

__fresh396:
  %array_ptr2523 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array2524 = bitcast { i32, [ 0 x i32 ] }* %array_ptr2523 to { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* 
  %array_ptr2525 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array2526 = bitcast { i32, [ 0 x i32 ] }* %array_ptr2525 to { i32, [ 0 x i32 ] }* 
  %index_ptr2527 = getelementptr { i32, [ 0 x i32 ] }* %array2526, i32 0, i32 1, i32 0
  store i32 1, i32* %index_ptr2527
  %index_ptr2528 = getelementptr { i32, [ 0 x i32 ] }* %array2526, i32 0, i32 1, i32 1
  store i32 2, i32* %index_ptr2528
  %index_ptr2529 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array2524, i32 0, i32 1, i32 0
  store { i32, [ 0 x i32 ] }* %array2526, { i32, [ 0 x i32 ] }** %index_ptr2529
  %array_ptr2530 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array2531 = bitcast { i32, [ 0 x i32 ] }* %array_ptr2530 to { i32, [ 0 x i32 ] }* 
  %index_ptr2532 = getelementptr { i32, [ 0 x i32 ] }* %array2531, i32 0, i32 1, i32 0
  store i32 3, i32* %index_ptr2532
  %index_ptr2533 = getelementptr { i32, [ 0 x i32 ] }* %array2531, i32 0, i32 1, i32 1
  store i32 4, i32* %index_ptr2533
  %index_ptr2534 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array2524, i32 0, i32 1, i32 1
  store { i32, [ 0 x i32 ] }* %array2531, { i32, [ 0 x i32 ] }** %index_ptr2534
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array2524, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** @arr2535
  ret void
}


