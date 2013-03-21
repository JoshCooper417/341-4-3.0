declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@arr627 = global { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* zeroinitializer, align 4		; initialized by arr627.init
define void @oat_init (){

__fresh174:
  call void @arr627.init(  )
  ret void
}


define i32 @program (i32 %argc630, { i32, [ 0 x i8* ] }* %argv628){

__fresh173:
  %argc_slot631 = alloca i32
  store i32 %argc630, i32* %argc_slot631
  %argv_slot629 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv628, { i32, [ 0 x i8* ] }** %argv_slot629
  %len_ptr632 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** @arr627, i32 0, i32 0
  %len633 = load i32* %len_ptr632
  call void @oat_array_bounds_check( i32 %len633, i32 1 )
  %array_dereferenced634 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** @arr627
  %elt_ptr635 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array_dereferenced634, i32 0, i32 1, i32 1
  %len_ptr636 = getelementptr { i32, [ 0 x i32 ] }** %elt_ptr635, i32 0, i32 0
  %len637 = load i32* %len_ptr636
  call void @oat_array_bounds_check( i32 %len637, i32 1 )
  %array_dereferenced638 = load { i32, [ 0 x i32 ] }** %elt_ptr635
  %elt_ptr639 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced638, i32 0, i32 1, i32 1
  %_lhs640 = load i32* %elt_ptr639
  ret i32 %_lhs640
}


define void @arr627.init (){

__fresh172:
  %array_ptr615 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array616 = bitcast { i32, [ 0 x i32 ] }* %array_ptr615 to { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* 
  %array_ptr617 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array618 = bitcast { i32, [ 0 x i32 ] }* %array_ptr617 to { i32, [ 0 x i32 ] }* 
  %index_ptr619 = getelementptr { i32, [ 0 x i32 ] }* %array618, i32 0, i32 1, i32 0
  store i32 1, i32* %index_ptr619
  %index_ptr620 = getelementptr { i32, [ 0 x i32 ] }* %array618, i32 0, i32 1, i32 1
  store i32 2, i32* %index_ptr620
  %index_ptr621 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array616, i32 0, i32 1, i32 0
  store { i32, [ 0 x i32 ] }* %array618, { i32, [ 0 x i32 ] }** %index_ptr621
  %array_ptr622 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array623 = bitcast { i32, [ 0 x i32 ] }* %array_ptr622 to { i32, [ 0 x i32 ] }* 
  %index_ptr624 = getelementptr { i32, [ 0 x i32 ] }* %array623, i32 0, i32 1, i32 0
  store i32 3, i32* %index_ptr624
  %index_ptr625 = getelementptr { i32, [ 0 x i32 ] }* %array623, i32 0, i32 1, i32 1
  store i32 4, i32* %index_ptr625
  %index_ptr626 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array616, i32 0, i32 1, i32 1
  store { i32, [ 0 x i32 ] }* %array623, { i32, [ 0 x i32 ] }** %index_ptr626
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array616, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** @arr627
  ret void
}


