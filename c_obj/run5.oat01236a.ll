declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@arr13 = global { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* zeroinitializer, align 4		; initialized by arr13.init
define void @oat_init (){

__fresh2:
  call void @arr13.init(  )
  ret void
}


define i32 @program (i32 %argc16, { i32, [ 0 x i8* ] }* %argv14){

__fresh1:
  %argc_slot17 = alloca i32
  store i32 %argc16, i32* %argc_slot17
  %argv_slot15 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv14, { i32, [ 0 x i8* ] }** %argv_slot15
  %array_dereferenced22 = load { i32, [ 0 x i32 ] }** %elt_ptr21
  %array_dereferenced18 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** @arr13
  %len_ptr19 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array_dereferenced18, i32 0, i32 0
  %len20 = load i32* %len_ptr19
  call void @oat_array_bounds_check( i32 %len20, i32 0 )
  %elt_ptr21 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array_dereferenced18, i32 0, i32 1, i32 0
  %len_ptr23 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced22, i32 0, i32 0
  %len24 = load i32* %len_ptr23
  call void @oat_array_bounds_check( i32 %len24, i32 1 )
  %elt_ptr25 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced22, i32 0, i32 1, i32 1
  %_lhs26 = load i32* %elt_ptr25
  ret i32 %_lhs26
}


define void @arr13.init (){

__fresh0:
  %array_ptr1 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array2 = bitcast { i32, [ 0 x i32 ] }* %array_ptr1 to { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* 
  %array_ptr3 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array4 = bitcast { i32, [ 0 x i32 ] }* %array_ptr3 to { i32, [ 0 x i32 ] }* 
  %index_ptr5 = getelementptr { i32, [ 0 x i32 ] }* %array4, i32 0, i32 1, i32 0
  store i32 1, i32* %index_ptr5
  %index_ptr6 = getelementptr { i32, [ 0 x i32 ] }* %array4, i32 0, i32 1, i32 1
  store i32 2, i32* %index_ptr6
  %index_ptr7 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array2, i32 0, i32 1, i32 0
  store { i32, [ 0 x i32 ] }* %array4, { i32, [ 0 x i32 ] }** %index_ptr7
  %array_ptr8 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array9 = bitcast { i32, [ 0 x i32 ] }* %array_ptr8 to { i32, [ 0 x i32 ] }* 
  %index_ptr10 = getelementptr { i32, [ 0 x i32 ] }* %array9, i32 0, i32 1, i32 0
  store i32 3, i32* %index_ptr10
  %index_ptr11 = getelementptr { i32, [ 0 x i32 ] }* %array9, i32 0, i32 1, i32 1
  store i32 4, i32* %index_ptr11
  %index_ptr12 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array2, i32 0, i32 1, i32 1
  store { i32, [ 0 x i32 ] }* %array9, { i32, [ 0 x i32 ] }** %index_ptr12
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array2, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** @arr13
  ret void
}


