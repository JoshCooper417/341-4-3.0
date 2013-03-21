declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@arr592 = global { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* zeroinitializer, align 4		; initialized by arr592.init
define void @oat_init (){

__fresh132:
  call void @arr592.init(  )
  ret void
}


define i32 @program (i32 %argc595, { i32, [ 0 x i8* ] }* %argv593){

__fresh131:
  %argc_slot596 = alloca i32
  store i32 %argc595, i32* %argc_slot596
  %argv_slot594 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv593, { i32, [ 0 x i8* ] }** %argv_slot594
  %_lhs612 = load i32* %elt_ptr611
  ret i32 %_lhs612
}


define void @arr592.init (){

__fresh130:
  %array_ptr580 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array581 = bitcast { i32, [ 0 x i32 ] }* %array_ptr580 to { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* 
  %array_ptr582 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array583 = bitcast { i32, [ 0 x i32 ] }* %array_ptr582 to { i32, [ 0 x i32 ] }* 
  %index_ptr584 = getelementptr { i32, [ 0 x i32 ] }* %array583, i32 0, i32 1, i32 0
  store i32 1, i32* %index_ptr584
  %index_ptr585 = getelementptr { i32, [ 0 x i32 ] }* %array583, i32 0, i32 1, i32 1
  store i32 2, i32* %index_ptr585
  %index_ptr586 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array581, i32 0, i32 1, i32 0
  store { i32, [ 0 x i32 ] }* %array583, { i32, [ 0 x i32 ] }** %index_ptr586
  %array_ptr587 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array588 = bitcast { i32, [ 0 x i32 ] }* %array_ptr587 to { i32, [ 0 x i32 ] }* 
  %index_ptr589 = getelementptr { i32, [ 0 x i32 ] }* %array588, i32 0, i32 1, i32 0
  store i32 3, i32* %index_ptr589
  %index_ptr590 = getelementptr { i32, [ 0 x i32 ] }* %array588, i32 0, i32 1, i32 1
  store i32 4, i32* %index_ptr590
  %index_ptr591 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array581, i32 0, i32 1, i32 1
  store { i32, [ 0 x i32 ] }* %array588, { i32, [ 0 x i32 ] }** %index_ptr591
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array581, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** @arr592
  ret void
}


