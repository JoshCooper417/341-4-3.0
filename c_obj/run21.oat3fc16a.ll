declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@i5 = global { i32, [ 0 x i32 ] }* zeroinitializer, align 4		; initialized by i5.init
define void @oat_init (){

__fresh2:
  call void @i5.init(  )
  ret void
}


define i32 @program (i32 %argc8, { i32, [ 0 x i8* ] }* %argv6){

__fresh1:
  %argc_slot9 = alloca i32
  store i32 %argc8, i32* %argc_slot9
  %argv_slot7 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv6, { i32, [ 0 x i8* ] }** %argv_slot7
  %array_dereferenced10 = load { i32, [ 0 x i32 ] }** @i5
  %len_ptr11 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced10, i32 0, i32 0
  %len12 = load i32* %len_ptr11
  call void @oat_array_bounds_check( i32 %len12, i32 0 )
  %elt_ptr13 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced10, i32 0, i32 1, i32 0
  %_lhs14 = load i32* %elt_ptr13
  ret i32 %_lhs14
}


define void @i5.init (){

__fresh0:
  %array_ptr1 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array2 = bitcast { i32, [ 0 x i32 ] }* %array_ptr1 to { i32, [ 0 x i32 ] }* 
  %index_ptr3 = getelementptr { i32, [ 0 x i32 ] }* %array2, i32 0, i32 1, i32 0
  store i32 99, i32* %index_ptr3
  %index_ptr4 = getelementptr { i32, [ 0 x i32 ] }* %array2, i32 0, i32 1, i32 1
  store i32 0, i32* %index_ptr4
  store { i32, [ 0 x i32 ] }* %array2, { i32, [ 0 x i32 ] }** @i5
  ret void
}


