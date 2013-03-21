declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@arr2509 = global { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* zeroinitializer, align 4		; initialized by arr2509.init
define void @oat_init (){

__fresh395:
  call void @arr2509.init(  )
  ret void
}


define i32 @program (i32 %argc2512, { i32, [ 0 x i8* ] }* %argv2510){

__fresh394:
  %argc_slot2513 = alloca i32
  store i32 %argc2512, i32* %argc_slot2513
  %argv_slot2511 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv2510, { i32, [ 0 x i8* ] }** %argv_slot2511
  %len_ptr2514 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** @arr2509, i32 0, i32 0
  %len2515 = load i32* %len_ptr2514
  call void @oat_array_bounds_check( i32 %len2515, i32 1 )
  %array_dereferenced2516 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** @arr2509
  %elt_ptr2517 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array_dereferenced2516, i32 0, i32 1, i32 1
  %len_ptr2518 = getelementptr { i32, [ 0 x i32 ] }** %elt_ptr2517, i32 0, i32 0
  %len2519 = load i32* %len_ptr2518
  call void @oat_array_bounds_check( i32 %len2519, i32 3 )
  %array_dereferenced2520 = load { i32, [ 0 x i32 ] }** %elt_ptr2517
  %elt_ptr2521 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2520, i32 0, i32 1, i32 3
  %_lhs2522 = load i32* %elt_ptr2521
  ret i32 %_lhs2522
}


define void @arr2509.init (){

__fresh393:
  %array_ptr2497 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array2498 = bitcast { i32, [ 0 x i32 ] }* %array_ptr2497 to { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* 
  %array_ptr2499 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array2500 = bitcast { i32, [ 0 x i32 ] }* %array_ptr2499 to { i32, [ 0 x i32 ] }* 
  %index_ptr2501 = getelementptr { i32, [ 0 x i32 ] }* %array2500, i32 0, i32 1, i32 0
  store i32 1, i32* %index_ptr2501
  %index_ptr2502 = getelementptr { i32, [ 0 x i32 ] }* %array2500, i32 0, i32 1, i32 1
  store i32 2, i32* %index_ptr2502
  %index_ptr2503 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array2498, i32 0, i32 1, i32 0
  store { i32, [ 0 x i32 ] }* %array2500, { i32, [ 0 x i32 ] }** %index_ptr2503
  %array_ptr2504 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array2505 = bitcast { i32, [ 0 x i32 ] }* %array_ptr2504 to { i32, [ 0 x i32 ] }* 
  %index_ptr2506 = getelementptr { i32, [ 0 x i32 ] }* %array2505, i32 0, i32 1, i32 0
  store i32 3, i32* %index_ptr2506
  %index_ptr2507 = getelementptr { i32, [ 0 x i32 ] }* %array2505, i32 0, i32 1, i32 1
  store i32 4, i32* %index_ptr2507
  %index_ptr2508 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array2498, i32 0, i32 1, i32 1
  store { i32, [ 0 x i32 ] }* %array2505, { i32, [ 0 x i32 ] }** %index_ptr2508
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array2498, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** @arr2509
  ret void
}


