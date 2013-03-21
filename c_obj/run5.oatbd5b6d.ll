declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@arr500 = global { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* zeroinitializer, align 4		; initialized by arr500.init
define void @oat_init (){

__fresh132:
  call void @arr500.init(  )
  ret void
}


define i32 @program (i32 %argc503, { i32, [ 0 x i8* ] }* %argv501){

__fresh131:
  %argc_slot504 = alloca i32
  store i32 %argc503, i32* %argc_slot504
  %argv_slot502 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv501, { i32, [ 0 x i8* ] }** %argv_slot502
  %_lhs505 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** @arr500
  ret { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %_lhs505
}


define void @arr500.init (){

__fresh130:
  %array_ptr488 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array489 = bitcast { i32, [ 0 x i32 ] }* %array_ptr488 to { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* 
  %array_ptr490 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array491 = bitcast { i32, [ 0 x i32 ] }* %array_ptr490 to { i32, [ 0 x i32 ] }* 
  %index_ptr492 = getelementptr { i32, [ 0 x i32 ] }* %array491, i32 0, i32 1, i32 0
  store i32 1, i32* %index_ptr492
  %index_ptr493 = getelementptr { i32, [ 0 x i32 ] }* %array491, i32 0, i32 1, i32 1
  store i32 2, i32* %index_ptr493
  %index_ptr494 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array489, i32 0, i32 1, i32 0
  store { i32, [ 0 x i32 ] }* %array491, { i32, [ 0 x i32 ] }** %index_ptr494
  %array_ptr495 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array496 = bitcast { i32, [ 0 x i32 ] }* %array_ptr495 to { i32, [ 0 x i32 ] }* 
  %index_ptr497 = getelementptr { i32, [ 0 x i32 ] }* %array496, i32 0, i32 1, i32 0
  store i32 3, i32* %index_ptr497
  %index_ptr498 = getelementptr { i32, [ 0 x i32 ] }* %array496, i32 0, i32 1, i32 1
  store i32 4, i32* %index_ptr498
  %index_ptr499 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array489, i32 0, i32 1, i32 1
  store { i32, [ 0 x i32 ] }* %array496, { i32, [ 0 x i32 ] }** %index_ptr499
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array489, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** @arr500
  ret void
}


