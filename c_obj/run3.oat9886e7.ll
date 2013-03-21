declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@arr538 = global { i32, [ 0 x i32 ] }* zeroinitializer, align 4		; initialized by arr538.init
define void @oat_init (){

__fresh129:
  call void @arr538.init(  )
  ret void
}


define i32 @program (i32 %argc541, { i32, [ 0 x i8* ] }* %argv539){

__fresh128:
  %argc_slot542 = alloca i32
  store i32 %argc541, i32* %argc_slot542
  %argv_slot540 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv539, { i32, [ 0 x i8* ] }** %argv_slot540
  %len_ptr543 = getelementptr { i32, [ 0 x i32 ] }** @arr538, i32 0, i32 0
  %len544 = load i32* %len_ptr543
  call void @oat_array_bounds_check( i32 %len544, i32 1 )
  %array_dereferenced545 = load { i32, [ 0 x i32 ] }** @arr538
  %elt_ptr546 = getelementptr i32 %array_dereferenced545, i32 0, i32 1, i32 1
  %_lhs547 = load i32* %elt_ptr546
  ret i32 %_lhs547
}


define void @arr538.init (){

__fresh127:
  %array_ptr534 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array535 = bitcast { i32, [ 0 x i32 ] }* %array_ptr534 to { i32, [ 0 x i32 ] }* 
  %index_ptr536 = getelementptr { i32, [ 0 x i32 ] }* %array535, i32 0, i32 1, i32 0
  store i32 1, i32* %index_ptr536
  %index_ptr537 = getelementptr { i32, [ 0 x i32 ] }* %array535, i32 0, i32 1, i32 1
  store i32 2, i32* %index_ptr537
  store { i32, [ 0 x i32 ] }* %array535, { i32, [ 0 x i32 ] }** @arr538
  ret void
}


