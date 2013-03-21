declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@a30 = global { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* ] }* zeroinitializer, align 4		; initialized by a30.init
define void @oat_init (){

__fresh2:
  call void @a30.init(  )
  ret void
}


define i32 @program (i32 %argc33, { i32, [ 0 x i8* ] }* %argv31){

__fresh1:
  %argc_slot34 = alloca i32
  store i32 %argc33, i32* %argc_slot34
  %argv_slot32 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv31, { i32, [ 0 x i8* ] }** %argv_slot32
  %_lhs35 = load { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* ] }** @a30
  %len_ptr36 = getelementptr { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* ] }* %_lhs35, i32 0, i32 0
  %len37 = load i32* %len_ptr36
  call void @oat_array_bounds_check( i32 %len37, i32 0 )
  %array_dereferenced38 = load { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* ] }** @a30
  %elt_ptr39 = getelementptr i32 %array_dereferenced38, i32 0, i32 1, i32 0
  %_lhs40 = load i32* %elt_ptr39
  %len_ptr41 = getelementptr i32 %_lhs40, i32 0, i32 0
  %len42 = load i32* %len_ptr41
  call void @oat_array_bounds_check( i32 %len42, i32 1 )
  %array_dereferenced48 = load i32* %elt_ptr47
  %elt_ptr49 = getelementptr i32 %array_dereferenced48, i32 0, i32 1, i32 1
  %_lhs50 = load i32* %elt_ptr49
  %len_ptr51 = getelementptr i32 %_lhs50, i32 0, i32 0
  %len52 = load i32* %len_ptr51
  call void @oat_array_bounds_check( i32 %len52, i32 2 )
  %array_dereferenced68 = load i32* %elt_ptr67
  %elt_ptr69 = getelementptr i32 %array_dereferenced68, i32 0, i32 1, i32 2
  %_lhs70 = load i32* %elt_ptr69
  ret i32 %_lhs70
}


define void @a30.init (){

__fresh0:
  %array_ptr1 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 3 )
  %array2 = bitcast { i32, [ 0 x i32 ] }* %array_ptr1 to { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* ] }* 
  %array_ptr3 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array4 = bitcast { i32, [ 0 x i32 ] }* %array_ptr3 to { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* 
  %array_ptr5 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 1 )
  %array6 = bitcast { i32, [ 0 x i32 ] }* %array_ptr5 to { i32, [ 0 x i32 ] }* 
  %index_ptr7 = getelementptr { i32, [ 0 x i32 ] }* %array6, i32 0, i32 1, i32 0
  store i32 0, i32* %index_ptr7
  %index_ptr8 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array4, i32 0, i32 1, i32 0
  store { i32, [ 0 x i32 ] }* %array6, { i32, [ 0 x i32 ] }** %index_ptr8
  %array_ptr9 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 3 )
  %array10 = bitcast { i32, [ 0 x i32 ] }* %array_ptr9 to { i32, [ 0 x i32 ] }* 
  %index_ptr11 = getelementptr { i32, [ 0 x i32 ] }* %array10, i32 0, i32 1, i32 0
  store i32 0, i32* %index_ptr11
  %index_ptr12 = getelementptr { i32, [ 0 x i32 ] }* %array10, i32 0, i32 1, i32 1
  store i32 1, i32* %index_ptr12
  %index_ptr13 = getelementptr { i32, [ 0 x i32 ] }* %array10, i32 0, i32 1, i32 2
  store i32 2, i32* %index_ptr13
  %index_ptr14 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array4, i32 0, i32 1, i32 1
  store { i32, [ 0 x i32 ] }* %array10, { i32, [ 0 x i32 ] }** %index_ptr14
  %index_ptr15 = getelementptr { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* ] }* %array2, i32 0, i32 1, i32 0
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array4, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %index_ptr15
  %array_ptr16 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 1 )
  %array17 = bitcast { i32, [ 0 x i32 ] }* %array_ptr16 to { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* 
  %array_ptr18 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 1 )
  %array19 = bitcast { i32, [ 0 x i32 ] }* %array_ptr18 to { i32, [ 0 x i32 ] }* 
  %index_ptr20 = getelementptr { i32, [ 0 x i32 ] }* %array19, i32 0, i32 1, i32 0
  store i32 0, i32* %index_ptr20
  %index_ptr21 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array17, i32 0, i32 1, i32 0
  store { i32, [ 0 x i32 ] }* %array19, { i32, [ 0 x i32 ] }** %index_ptr21
  %index_ptr22 = getelementptr { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* ] }* %array2, i32 0, i32 1, i32 1
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array17, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %index_ptr22
  %array_ptr23 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 1 )
  %array24 = bitcast { i32, [ 0 x i32 ] }* %array_ptr23 to { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* 
  %array_ptr25 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 1 )
  %array26 = bitcast { i32, [ 0 x i32 ] }* %array_ptr25 to { i32, [ 0 x i32 ] }* 
  %index_ptr27 = getelementptr { i32, [ 0 x i32 ] }* %array26, i32 0, i32 1, i32 0
  store i32 0, i32* %index_ptr27
  %index_ptr28 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array24, i32 0, i32 1, i32 0
  store { i32, [ 0 x i32 ] }* %array26, { i32, [ 0 x i32 ] }** %index_ptr28
  %index_ptr29 = getelementptr { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* ] }* %array2, i32 0, i32 1, i32 2
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array24, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %index_ptr29
  store { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* ] }* %array2, { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* ] }** @a30
  ret void
}


