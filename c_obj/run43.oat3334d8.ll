declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@a7 = global { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* zeroinitializer, align 4		; initialized by a7.init
define void @oat_init (){

__fresh2:
  call void @a7.init(  )
  ret void
}


define i32 @program (i32 %argc10, { i32, [ 0 x i8* ] }* %argv8){

__fresh1:
  %argc_slot11 = alloca i32
  store i32 %argc10, i32* %argc_slot11
  %argv_slot9 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv8, { i32, [ 0 x i8* ] }** %argv_slot9
  %_lhs12 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** @a7
  %len_ptr13 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %_lhs12, i32 0, i32 0
  %len14 = load i32* %len_ptr13
  call void @oat_array_bounds_check( i32 %len14, i32 0 )
  %array_dereferenced15 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** @a7
  %elt_ptr16 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** @a7, i32 0, i32 1, i32 0
  %_lhs17 = load i32* %elt_ptr16
  %len_ptr18 = getelementptr i32 %_lhs17, i32 0, i32 0
  %len19 = load i32* %len_ptr18
  %_lhs20 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** @a7
  %len_ptr21 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %_lhs20, i32 0, i32 0
  %len22 = load i32* %len_ptr21
  call void @oat_array_bounds_check( i32 %len22, i32 0 )
  %array_dereferenced23 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** @a7
  %elt_ptr24 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** @a7, i32 0, i32 1, i32 0
  call void @oat_array_bounds_check( i32 %len19, i32 0 )
  %array_dereferenced25 = load i32* %elt_ptr24
  %elt_ptr26 = getelementptr i32* %elt_ptr24, i32 0, i32 1, i32 0
  %_lhs27 = load i32* %elt_ptr26
  ret i32 %_lhs27
}


define void @a7.init (){

__fresh0:
  %array_ptr1 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 1 )
  %array2 = bitcast { i32, [ 0 x i32 ] }* %array_ptr1 to { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* 
  %array_ptr3 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 1 )
  %array4 = bitcast { i32, [ 0 x i32 ] }* %array_ptr3 to { i32, [ 0 x i32 ] }* 
  %index_ptr5 = getelementptr { i32, [ 0 x i32 ] }* %array4, i32 0, i32 1, i32 0
  store i32 42, i32* %index_ptr5
  %index_ptr6 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array2, i32 0, i32 1, i32 0
  store { i32, [ 0 x i32 ] }* %array4, { i32, [ 0 x i32 ] }** %index_ptr6
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array2, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** @a7
  ret void
}


