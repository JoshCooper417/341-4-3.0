declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@arr560 = global { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* zeroinitializer, align 4		; initialized by arr560.init
define void @oat_init (){

__fresh132:
  call void @arr560.init(  )
  ret void
}


define i32 @program (i32 %argc563, { i32, [ 0 x i8* ] }* %argv561){

__fresh131:
  %argc_slot564 = alloca i32
  store i32 %argc563, i32* %argc_slot564
  %argv_slot562 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv561, { i32, [ 0 x i8* ] }** %argv_slot562
  %len_ptr565 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** @arr560, i32 0, i32 0
  %len566 = load i32* %len_ptr565
  call void @oat_array_bounds_check( i32 %len566, i32 1 )
  %array_dereferenced567 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** @arr560
  %elt_ptr568 = getelementptr i32 %array_dereferenced567, i32 0, i32 1, i32 1
  %len_ptr569 = getelementptr { i32, [ 0 x i32 ] }** %elt_ptr568, i32 0, i32 0
  %len570 = load i32* %len_ptr569
  call void @oat_array_bounds_check( i32 %len570, i32 1 )
  %array_dereferenced571 = load { i32, [ 0 x i32 ] }** %elt_ptr568
  %elt_ptr572 = getelementptr i32 %array_dereferenced571, i32 0, i32 1, i32 1
  %_lhs573 = load i32* %elt_ptr572
  ret i32 %_lhs573
}


define void @arr560.init (){

__fresh130:
  %array_ptr548 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array549 = bitcast { i32, [ 0 x i32 ] }* %array_ptr548 to { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* 
  %array_ptr550 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array551 = bitcast { i32, [ 0 x i32 ] }* %array_ptr550 to { i32, [ 0 x i32 ] }* 
  %index_ptr552 = getelementptr { i32, [ 0 x i32 ] }* %array551, i32 0, i32 1, i32 0
  store i32 1, i32* %index_ptr552
  %index_ptr553 = getelementptr { i32, [ 0 x i32 ] }* %array551, i32 0, i32 1, i32 1
  store i32 2, i32* %index_ptr553
  %index_ptr554 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array549, i32 0, i32 1, i32 0
  store { i32, [ 0 x i32 ] }* %array551, { i32, [ 0 x i32 ] }** %index_ptr554
  %array_ptr555 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array556 = bitcast { i32, [ 0 x i32 ] }* %array_ptr555 to { i32, [ 0 x i32 ] }* 
  %index_ptr557 = getelementptr { i32, [ 0 x i32 ] }* %array556, i32 0, i32 1, i32 0
  store i32 3, i32* %index_ptr557
  %index_ptr558 = getelementptr { i32, [ 0 x i32 ] }* %array556, i32 0, i32 1, i32 1
  store i32 4, i32* %index_ptr558
  %index_ptr559 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array549, i32 0, i32 1, i32 1
  store { i32, [ 0 x i32 ] }* %array556, { i32, [ 0 x i32 ] }** %index_ptr559
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array549, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** @arr560
  ret void
}


