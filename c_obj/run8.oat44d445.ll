declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
define void @oat_init (){

__fresh176:
  ret void
}


define i32 @program (i32 %argc643, { i32, [ 0 x i8* ] }* %argv641){

__fresh175:
  %argc_slot644 = alloca i32
  store i32 %argc643, i32* %argc_slot644
  %argv_slot642 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv641, { i32, [ 0 x i8* ] }** %argv_slot642
  %array_ptr645 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array646 = bitcast { i32, [ 0 x i32 ] }* %array_ptr645 to { i32, [ 0 x i32 ] }* 
  %index_ptr647 = getelementptr { i32, [ 0 x i32 ] }* %array646, i32 0, i32 1, i32 0
  store i32 1, i32* %index_ptr647
  %index_ptr648 = getelementptr { i32, [ 0 x i32 ] }* %array646, i32 0, i32 1, i32 1
  store i32 2, i32* %index_ptr648
  %arr649 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %array646, { i32, [ 0 x i32 ] }** %arr649
  %len_ptr650 = getelementptr { i32, [ 0 x i32 ] }** %arr649, i32 0, i32 0
  %len651 = load i32* %len_ptr650
  call void @oat_array_bounds_check( i32 %len651, i32 1 )
  %array_dereferenced652 = load { i32, [ 0 x i32 ] }** %arr649
  %elt_ptr653 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced652, i32 0, i32 1, i32 1
  %_lhs654 = load i32* %elt_ptr653
  ret i32 %_lhs654
}


