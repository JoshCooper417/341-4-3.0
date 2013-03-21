declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@a9 = global { i32, [ 0 x i32 ] }* zeroinitializer, align 4		; initialized by a9.init
define void @oat_init (){

__fresh2:
  call void @a9.init(  )
  ret void
}


define i32 @program (i32 %argc12, { i32, [ 0 x i8* ] }* %argv10){

__fresh1:
  %argc_slot13 = alloca i32
  store i32 %argc12, i32* %argc_slot13
  %argv_slot11 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv10, { i32, [ 0 x i8* ] }** %argv_slot11
  %len_ptr14 = getelementptr { i32, [ 0 x i32 ] }** @a9, i32 0, i32 0
  %len15 = load i32* %len_ptr14
  call void @oat_array_bounds_check( i32 %len15, i32 2 )
  %array_dereferenced16 = load { i32, [ 0 x i32 ] }** @a9
  %elt_ptr17 = getelementptr i32 %array_dereferenced16, i32 0, i32 1, i32 2
  %_lhs18 = load i32* %elt_ptr17
  ret i32 %_lhs18
}


define void @a9.init (){

__fresh0:
  %array_ptr1 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 3 )
  %array2 = bitcast { i32, [ 0 x i32 ] }* %array_ptr1 to { i32, [ 0 x i32 ] }* 
  %unop3 = sub i32 0, 1
  %index_ptr4 = getelementptr { i32, [ 0 x i32 ] }* %array2, i32 0, i32 1, i32 0
  store i32 %unop3, i32* %index_ptr4
  %unop5 = sub i32 0, 100
  %index_ptr6 = getelementptr { i32, [ 0 x i32 ] }* %array2, i32 0, i32 1, i32 1
  store i32 %unop5, i32* %index_ptr6
  %unop7 = sub i32 0, 999
  %index_ptr8 = getelementptr { i32, [ 0 x i32 ] }* %array2, i32 0, i32 1, i32 2
  store i32 %unop7, i32* %index_ptr8
  store { i32, [ 0 x i32 ] }* %array2, { i32, [ 0 x i32 ] }** @a9
  ret void
}


