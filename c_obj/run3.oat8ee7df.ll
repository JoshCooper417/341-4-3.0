declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@arr569 = global { i32, [ 0 x i32 ] }* zeroinitializer, align 4		; initialized by arr569.init
define void @oat_init (){

__fresh129:
  call void @arr569.init(  )
  ret void
}


define i32 @program (i32 %argc572, { i32, [ 0 x i8* ] }* %argv570){

__fresh128:
  %argc_slot573 = alloca i32
  store i32 %argc572, i32* %argc_slot573
  %argv_slot571 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv570, { i32, [ 0 x i8* ] }** %argv_slot571
  %_lhs579 = load i32* %elt_ptr578
  ret i32 %_lhs579
}


define void @arr569.init (){

__fresh127:
  %array_ptr565 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array566 = bitcast { i32, [ 0 x i32 ] }* %array_ptr565 to { i32, [ 0 x i32 ] }* 
  %index_ptr567 = getelementptr { i32, [ 0 x i32 ] }* %array566, i32 0, i32 1, i32 0
  store i32 1, i32* %index_ptr567
  %index_ptr568 = getelementptr { i32, [ 0 x i32 ] }* %array566, i32 0, i32 1, i32 1
  store i32 2, i32* %index_ptr568
  store { i32, [ 0 x i32 ] }* %array566, { i32, [ 0 x i32 ] }** @arr569
  ret void
}


