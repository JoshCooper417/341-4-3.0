declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@arr586 = global { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* zeroinitializer, align 4		; initialized by arr586.init
define void @oat_init (){

__fresh143:
  call void @arr586.init(  )
  ret void
}


define i32 @program (i32 %argc589, { i32, [ 0 x i8* ] }* %argv587){

__fresh142:
  %argc_slot590 = alloca i32
  store i32 %argc589, i32* %argc_slot590
  %argv_slot588 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv587, { i32, [ 0 x i8* ] }** %argv_slot588
  %len_ptr591 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** @arr586, i32 0, i32 0
  %len592 = load i32* %len_ptr591
  call void @oat_array_bounds_check( i32 %len592, i32 1 )
  %array_dereferenced593 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** @arr586
  %elt_ptr594 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array_dereferenced593, i32 0, i32 1, i32 1
  %len_ptr595 = getelementptr { i32, [ 0 x i32 ] }** %elt_ptr594, i32 0, i32 0
  %len596 = load i32* %len_ptr595
  call void @oat_array_bounds_check( i32 %len596, i32 1 )
  %array_dereferenced597 = load { i32, [ 0 x i32 ] }** %elt_ptr594
  %elt_ptr598 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced597, i32 0, i32 1, i32 1
  %_lhs599 = load i32* %elt_ptr598
  ret i32 %_lhs599
}


define void @arr586.init (){

__fresh141:
  %array_ptr574 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array575 = bitcast { i32, [ 0 x i32 ] }* %array_ptr574 to { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* 
  %array_ptr576 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array577 = bitcast { i32, [ 0 x i32 ] }* %array_ptr576 to { i32, [ 0 x i32 ] }* 
  %index_ptr578 = getelementptr { i32, [ 0 x i32 ] }* %array577, i32 0, i32 1, i32 0
  store i32 1, i32* %index_ptr578
  %index_ptr579 = getelementptr { i32, [ 0 x i32 ] }* %array577, i32 0, i32 1, i32 1
  store i32 2, i32* %index_ptr579
  %index_ptr580 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array575, i32 0, i32 1, i32 0
  store { i32, [ 0 x i32 ] }* %array577, { i32, [ 0 x i32 ] }** %index_ptr580
  %array_ptr581 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array582 = bitcast { i32, [ 0 x i32 ] }* %array_ptr581 to { i32, [ 0 x i32 ] }* 
  %index_ptr583 = getelementptr { i32, [ 0 x i32 ] }* %array582, i32 0, i32 1, i32 0
  store i32 3, i32* %index_ptr583
  %index_ptr584 = getelementptr { i32, [ 0 x i32 ] }* %array582, i32 0, i32 1, i32 1
  store i32 4, i32* %index_ptr584
  %index_ptr585 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array575, i32 0, i32 1, i32 1
  store { i32, [ 0 x i32 ] }* %array582, { i32, [ 0 x i32 ] }** %index_ptr585
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array575, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** @arr586
  ret void
}


