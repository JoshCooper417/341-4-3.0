declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@arr584 = global { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* zeroinitializer, align 4		; initialized by arr584.init
define void @oat_init (){

__fresh140:
  call void @arr584.init(  )
  ret void
}


define i32 @program (i32 %argc587, { i32, [ 0 x i8* ] }* %argv585){

__fresh139:
  %argc_slot588 = alloca i32
  store i32 %argc587, i32* %argc_slot588
  %argv_slot586 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv585, { i32, [ 0 x i8* ] }** %argv_slot586
  %len_ptr589 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** @arr584, i32 0, i32 0
  %len590 = load i32* %len_ptr589
  call void @oat_array_bounds_check( i32 %len590, i32 1 )
  %array_dereferenced591 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** @arr584
  %elt_ptr592 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array_dereferenced591, i32 0, i32 1, i32 1
  %len_ptr593 = getelementptr { i32, [ 0 x i32 ] }** %elt_ptr592, i32 0, i32 0
  %len594 = load i32* %len_ptr593
  call void @oat_array_bounds_check( i32 %len594, i32 1 )
  %array_dereferenced595 = load { i32, [ 0 x i32 ] }** %elt_ptr592
  %elt_ptr596 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced595, i32 0, i32 1, i32 1
  %_lhs597 = load i32* %elt_ptr596
  ret i32 %_lhs597
}


define void @arr584.init (){

__fresh138:
  %array_ptr572 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array573 = bitcast { i32, [ 0 x i32 ] }* %array_ptr572 to { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* 
  %array_ptr574 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array575 = bitcast { i32, [ 0 x i32 ] }* %array_ptr574 to { i32, [ 0 x i32 ] }* 
  %index_ptr576 = getelementptr { i32, [ 0 x i32 ] }* %array575, i32 0, i32 1, i32 0
  store i32 1, i32* %index_ptr576
  %index_ptr577 = getelementptr { i32, [ 0 x i32 ] }* %array575, i32 0, i32 1, i32 1
  store i32 2, i32* %index_ptr577
  %index_ptr578 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array573, i32 0, i32 1, i32 0
  store { i32, [ 0 x i32 ] }* %array575, { i32, [ 0 x i32 ] }** %index_ptr578
  %array_ptr579 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array580 = bitcast { i32, [ 0 x i32 ] }* %array_ptr579 to { i32, [ 0 x i32 ] }* 
  %index_ptr581 = getelementptr { i32, [ 0 x i32 ] }* %array580, i32 0, i32 1, i32 0
  store i32 3, i32* %index_ptr581
  %index_ptr582 = getelementptr { i32, [ 0 x i32 ] }* %array580, i32 0, i32 1, i32 1
  store i32 4, i32* %index_ptr582
  %index_ptr583 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array573, i32 0, i32 1, i32 1
  store { i32, [ 0 x i32 ] }* %array580, { i32, [ 0 x i32 ] }** %index_ptr583
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array573, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** @arr584
  ret void
}


