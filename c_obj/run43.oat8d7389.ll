declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@a10 = global { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* ] }* zeroinitializer, align 4		; initialized by a10.init
define void @oat_init (){

__fresh2:
  call void @a10.init(  )
  ret void
}


define i32 @program (i32 %argc13, { i32, [ 0 x i8* ] }* %argv11){

__fresh1:
  %argc_slot14 = alloca i32
  store i32 %argc13, i32* %argc_slot14
  %argv_slot12 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv11, { i32, [ 0 x i8* ] }** %argv_slot12
  %_lhs15 = load { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* ] }** @a10
  %len_ptr16 = getelementptr { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* ] }* %_lhs15, i32 0, i32 0
  %len17 = load i32* %len_ptr16
  call void @oat_array_bounds_check( i32 %len17, i32 0 )
  %array_dereferenced18 = load { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* ] }** @a10
  %elt_ptr19 = getelementptr i32 %array_dereferenced18, i32 0, i32 1, i32 0
  %_lhs20 = load i32* %elt_ptr19
  %len_ptr21 = getelementptr i32 %_lhs20, i32 0, i32 0
  %len22 = load i32* %len_ptr21
  call void @oat_array_bounds_check( i32 %len22, i32 0 )
  %array_dereferenced28 = load i32* %elt_ptr27
  %elt_ptr29 = getelementptr i32 %array_dereferenced28, i32 0, i32 1, i32 0
  %_lhs30 = load i32* %elt_ptr29
  %len_ptr31 = getelementptr i32 %_lhs30, i32 0, i32 0
  %len32 = load i32* %len_ptr31
  call void @oat_array_bounds_check( i32 %len32, i32 0 )
  %array_dereferenced48 = load i32* %elt_ptr47
  %elt_ptr49 = getelementptr i32 %array_dereferenced48, i32 0, i32 1, i32 0
  %_lhs50 = load i32* %elt_ptr49
  ret i32 %_lhs50
}


define void @a10.init (){

__fresh0:
  %array_ptr1 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 1 )
  %array2 = bitcast { i32, [ 0 x i32 ] }* %array_ptr1 to { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* ] }* 
  %array_ptr3 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 1 )
  %array4 = bitcast { i32, [ 0 x i32 ] }* %array_ptr3 to { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* 
  %array_ptr5 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 1 )
  %array6 = bitcast { i32, [ 0 x i32 ] }* %array_ptr5 to { i32, [ 0 x i32 ] }* 
  %index_ptr7 = getelementptr { i32, [ 0 x i32 ] }* %array6, i32 0, i32 1, i32 0
  store i32 42, i32* %index_ptr7
  %index_ptr8 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array4, i32 0, i32 1, i32 0
  store { i32, [ 0 x i32 ] }* %array6, { i32, [ 0 x i32 ] }** %index_ptr8
  %index_ptr9 = getelementptr { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* ] }* %array2, i32 0, i32 1, i32 0
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array4, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %index_ptr9
  store { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* ] }* %array2, { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* ] }** @a10
  ret void
}


