declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
define void @oat_init (){

__fresh136:
  ret void
}


define i32 @program (i32 %argc590, { i32, [ 0 x i8* ] }* %argv588){

__fresh135:
  %argc_slot591 = alloca i32
  store i32 %argc590, i32* %argc_slot591
  %argv_slot589 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv588, { i32, [ 0 x i8* ] }** %argv_slot589
  %array_ptr592 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array593 = bitcast { i32, [ 0 x i32 ] }* %array_ptr592 to { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* 
  %array_ptr594 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array595 = bitcast { i32, [ 0 x i32 ] }* %array_ptr594 to { i32, [ 0 x i32 ] }* 
  %index_ptr596 = getelementptr { i32, [ 0 x i32 ] }* %array595, i32 0, i32 1, i32 0
  store i32 1, i32* %index_ptr596
  %index_ptr597 = getelementptr { i32, [ 0 x i32 ] }* %array595, i32 0, i32 1, i32 1
  store i32 2, i32* %index_ptr597
  %index_ptr598 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array593, i32 0, i32 1, i32 0
  store { i32, [ 0 x i32 ] }* %array595, { i32, [ 0 x i32 ] }** %index_ptr598
  %array_ptr599 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array600 = bitcast { i32, [ 0 x i32 ] }* %array_ptr599 to { i32, [ 0 x i32 ] }* 
  %index_ptr601 = getelementptr { i32, [ 0 x i32 ] }* %array600, i32 0, i32 1, i32 0
  store i32 3, i32* %index_ptr601
  %index_ptr602 = getelementptr { i32, [ 0 x i32 ] }* %array600, i32 0, i32 1, i32 1
  store i32 4, i32* %index_ptr602
  %index_ptr603 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array593, i32 0, i32 1, i32 1
  store { i32, [ 0 x i32 ] }* %array600, { i32, [ 0 x i32 ] }** %index_ptr603
  %arr604 = alloca { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }*
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array593, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %arr604
  %len_ptr605 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %arr604, i32 0, i32 0
  %len606 = load i32* %len_ptr605
  call void @oat_array_bounds_check( i32 %len606, i32 1 )
  %array_dereferenced607 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %arr604
  %elt_ptr608 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array_dereferenced607, i32 0, i32 1, i32 1
  %len_ptr609 = getelementptr { i32, [ 0 x i32 ] }** %elt_ptr608, i32 0, i32 0
  %len610 = load i32* %len_ptr609
  call void @oat_array_bounds_check( i32 %len610, i32 1 )
  %array_dereferenced611 = load { i32, [ 0 x i32 ] }** %elt_ptr608
  %elt_ptr612 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced611, i32 0, i32 1, i32 1
  %_lhs613 = load i32* %elt_ptr612
  ret i32 %_lhs613
}


