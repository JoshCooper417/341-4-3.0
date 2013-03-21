declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@arr605 = global { i32, [ 0 x i32 ] }* zeroinitializer, align 4		; initialized by arr605.init
define void @oat_init (){

__fresh171:
  call void @arr605.init(  )
  ret void
}


define i32 @program (i32 %argc608, { i32, [ 0 x i8* ] }* %argv606){

__fresh170:
  %argc_slot609 = alloca i32
  store i32 %argc608, i32* %argc_slot609
  %argv_slot607 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv606, { i32, [ 0 x i8* ] }** %argv_slot607
  %len_ptr610 = getelementptr { i32, [ 0 x i32 ] }** @arr605, i32 0, i32 0
  %len611 = load i32* %len_ptr610
  call void @oat_array_bounds_check( i32 %len611, i32 1 )
  %array_dereferenced612 = load { i32, [ 0 x i32 ] }** @arr605
  %elt_ptr613 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced612, i32 0, i32 1, i32 1
  %_lhs614 = load i32* %elt_ptr613
  ret i32 %_lhs614
}


define void @arr605.init (){

__fresh169:
  %array_ptr601 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array602 = bitcast { i32, [ 0 x i32 ] }* %array_ptr601 to { i32, [ 0 x i32 ] }* 
  %index_ptr603 = getelementptr { i32, [ 0 x i32 ] }* %array602, i32 0, i32 1, i32 0
  store i32 1, i32* %index_ptr603
  %index_ptr604 = getelementptr { i32, [ 0 x i32 ] }* %array602, i32 0, i32 1, i32 1
  store i32 2, i32* %index_ptr604
  store { i32, [ 0 x i32 ] }* %array602, { i32, [ 0 x i32 ] }** @arr605
  ret void
}


