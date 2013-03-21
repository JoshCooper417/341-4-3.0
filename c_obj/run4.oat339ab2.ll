declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@arr2487 = global { i32, [ 0 x i32 ] }* zeroinitializer, align 4		; initialized by arr2487.init
define void @oat_init (){

__fresh392:
  call void @arr2487.init(  )
  ret void
}


define i32 @program (i32 %argc2490, { i32, [ 0 x i8* ] }* %argv2488){

__fresh391:
  %argc_slot2491 = alloca i32
  store i32 %argc2490, i32* %argc_slot2491
  %argv_slot2489 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv2488, { i32, [ 0 x i8* ] }** %argv_slot2489
  %len_ptr2492 = getelementptr { i32, [ 0 x i32 ] }** @arr2487, i32 0, i32 0
  %len2493 = load i32* %len_ptr2492
  call void @oat_array_bounds_check( i32 %len2493, i32 2 )
  %array_dereferenced2494 = load { i32, [ 0 x i32 ] }** @arr2487
  %elt_ptr2495 = getelementptr i32 %array_dereferenced2494, i32 0, i32 1, i32 2
  %_lhs2496 = load i32* %elt_ptr2495
  ret i32 %_lhs2496
}


define void @arr2487.init (){

__fresh390:
  %array_ptr2483 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array2484 = bitcast { i32, [ 0 x i32 ] }* %array_ptr2483 to { i32, [ 0 x i32 ] }* 
  %index_ptr2485 = getelementptr { i32, [ 0 x i32 ] }* %array2484, i32 0, i32 1, i32 0
  store i32 1, i32* %index_ptr2485
  %index_ptr2486 = getelementptr { i32, [ 0 x i32 ] }* %array2484, i32 0, i32 1, i32 1
  store i32 2, i32* %index_ptr2486
  store { i32, [ 0 x i32 ] }* %array2484, { i32, [ 0 x i32 ] }** @arr2487
  ret void
}


