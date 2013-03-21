declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
define void @oat_init (){

__fresh116:
  ret void
}


define i32 @program (i32 %argc594, { i32, [ 0 x i8* ] }* %argv592){

__fresh115:
  %argc_slot595 = alloca i32
  store i32 %argc594, i32* %argc_slot595
  %argv_slot593 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv592, { i32, [ 0 x i8* ] }** %argv_slot593
  %array_ptr596 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array597 = bitcast { i32, [ 0 x i32 ] }* %array_ptr596 to { i32, [ 0 x i32 ] }* 
  %index_ptr598 = getelementptr { i32, [ 0 x i32 ] }* %array597, i32 0, i32 1, i32 0
  store i32 1, i32* %index_ptr598
  %index_ptr599 = getelementptr { i32, [ 0 x i32 ] }* %array597, i32 0, i32 1, i32 1
  store i32 2, i32* %index_ptr599
  %arr600 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %array597, { i32, [ 0 x i32 ] }** %arr600
  %_lhs601 = load { i32, [ 0 x i32 ] }** %arr600
  %len_ptr602 = getelementptr { i32, [ 0 x i32 ] }* %_lhs601, i32 0, i32 0
  %len603 = load i32* %len_ptr602
  call void @oat_array_bounds_check( i32 %len603, i32 1 )
  %array_dereferenced604 = load { i32, [ 0 x i32 ] }** %arr600
  %elt_ptr605 = getelementptr { i32, [ 0 x i32 ] }** %arr600, i32 0, i32 1, i32 1
  %_lhs606 = load [ 0 x i32 ]* %elt_ptr605
  ret [ 0 x i32 ] %_lhs606
}


