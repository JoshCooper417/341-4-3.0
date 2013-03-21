declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@a24 = global { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* ] }* zeroinitializer, align 4		; initialized by a24.init
define void @oat_init (){

__fresh2:
  call void @a24.init(  )
  ret void
}


define i32 @program (i32 %argc27, { i32, [ 0 x i8* ] }* %argv25){

__fresh1:
  %argc_slot28 = alloca i32
  store i32 %argc27, i32* %argc_slot28
  %argv_slot26 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv25, { i32, [ 0 x i8* ] }** %argv_slot26
  %_lhs29 = load { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* ] }** @a24
  %len_ptr30 = getelementptr { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* ] }* %_lhs29, i32 0, i32 0
  %len31 = load i32* %len_ptr30
  call void @oat_array_bounds_check( i32 %len31, i32 0 )
  %array_dereferenced32 = load { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* ] }** @a24
  %elt_ptr33 = getelementptr i32 %array_dereferenced32, i32 0, i32 1, i32 0
  %_lhs34 = load i32* %elt_ptr33
  %len_ptr35 = getelementptr i32 %_lhs34, i32 0, i32 0
  %len36 = load i32* %len_ptr35
  call void @oat_array_bounds_check( i32 %len36, i32 1 )
  %array_dereferenced42 = load i32* %elt_ptr41
  %elt_ptr43 = getelementptr i32 %array_dereferenced42, i32 0, i32 1, i32 1
  %_lhs44 = load i32* %elt_ptr43
  %len_ptr45 = getelementptr i32 %_lhs44, i32 0, i32 0
  %len46 = load i32* %len_ptr45
  call void @oat_array_bounds_check( i32 %len46, i32 2 )
  %array_dereferenced62 = load i32* %elt_ptr61
  %elt_ptr63 = getelementptr i32 %array_dereferenced62, i32 0, i32 1, i32 2
  %_lhs64 = load i32* %elt_ptr63
  ret i32 %_lhs64
}


define void @a24.init (){

__fresh0:
  %array_ptr1 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 3 )
  %array2 = bitcast { i32, [ 0 x i32 ] }* %array_ptr1 to { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* ] }* 
  %array_ptr3 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 1 )
  %array4 = bitcast { i32, [ 0 x i32 ] }* %array_ptr3 to { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* 
  %array_ptr5 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 1 )
  %array6 = bitcast { i32, [ 0 x i32 ] }* %array_ptr5 to { i32, [ 0 x i32 ] }* 
  %index_ptr7 = getelementptr { i32, [ 0 x i32 ] }* %array6, i32 0, i32 1, i32 0
  store i32 0, i32* %index_ptr7
  %index_ptr8 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array4, i32 0, i32 1, i32 0
  store { i32, [ 0 x i32 ] }* %array6, { i32, [ 0 x i32 ] }** %index_ptr8
  %index_ptr9 = getelementptr { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* ] }* %array2, i32 0, i32 1, i32 0
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array4, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %index_ptr9
  %array_ptr10 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 1 )
  %array11 = bitcast { i32, [ 0 x i32 ] }* %array_ptr10 to { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* 
  %array_ptr12 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 1 )
  %array13 = bitcast { i32, [ 0 x i32 ] }* %array_ptr12 to { i32, [ 0 x i32 ] }* 
  %index_ptr14 = getelementptr { i32, [ 0 x i32 ] }* %array13, i32 0, i32 1, i32 0
  store i32 0, i32* %index_ptr14
  %index_ptr15 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array11, i32 0, i32 1, i32 0
  store { i32, [ 0 x i32 ] }* %array13, { i32, [ 0 x i32 ] }** %index_ptr15
  %index_ptr16 = getelementptr { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* ] }* %array2, i32 0, i32 1, i32 1
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array11, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %index_ptr16
  %array_ptr17 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 1 )
  %array18 = bitcast { i32, [ 0 x i32 ] }* %array_ptr17 to { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* 
  %array_ptr19 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 1 )
  %array20 = bitcast { i32, [ 0 x i32 ] }* %array_ptr19 to { i32, [ 0 x i32 ] }* 
  %index_ptr21 = getelementptr { i32, [ 0 x i32 ] }* %array20, i32 0, i32 1, i32 0
  store i32 0, i32* %index_ptr21
  %index_ptr22 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array18, i32 0, i32 1, i32 0
  store { i32, [ 0 x i32 ] }* %array20, { i32, [ 0 x i32 ] }** %index_ptr22
  %index_ptr23 = getelementptr { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* ] }* %array2, i32 0, i32 1, i32 2
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array18, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %index_ptr23
  store { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* ] }* %array2, { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* ] }** @a24
  ret void
}


