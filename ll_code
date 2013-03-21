declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
define void @oat_init (){

__fresh1:
  ret void
}


define i32 @program (i32 %argc3, { i32, [ 0 x i8* ] }* %argv1){

__fresh0:
  %argc_slot4 = alloca i32
  store i32 %argc3, i32* %argc_slot4
  %argv_slot2 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv1, { i32, [ 0 x i8* ] }** %argv_slot2
  %array_ptr5 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 3 )
  %array6 = bitcast { i32, [ 0 x i32 ] }* %array_ptr5 to { i32, [ 0 x i32 ] }* 
  %unop7 = sub i32 0, 1
  %index_ptr8 = getelementptr { i32, [ 0 x i32 ] }* %array6, i32 0, i32 1, i32 0
  store i32 %unop7, i32* %index_ptr8
  %unop9 = sub i32 0, 100
  %index_ptr10 = getelementptr { i32, [ 0 x i32 ] }* %array6, i32 0, i32 1, i32 1
  store i32 %unop9, i32* %index_ptr10
  %unop11 = sub i32 0, 999
  %index_ptr12 = getelementptr { i32, [ 0 x i32 ] }* %array6, i32 0, i32 1, i32 2
  store i32 %unop11, i32* %index_ptr12
  %a13 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %array6, { i32, [ 0 x i32 ] }** %a13
  %len_ptr14 = getelementptr { i32, [ 0 x i32 ] }** %a13, i32 0, i32 0
  %len15 = load i32* %len_ptr14
  call void @oat_array_bounds_check( i32 %len15, i32 2 )
  %array_dereferenced16 = load { i32, [ 0 x i32 ] }** %a13
  %elt_ptr17 = getelementptr i32 %array_dereferenced16, i32 0, i32 1, i32 2
  %_lhs18 = load i32* %elt_ptr17
  ret i32 %_lhs18
}


