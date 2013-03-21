declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@arr549 = global { i32, [ 0 x i32 ] }* zeroinitializer, align 4		; initialized by arr549.init
define void @oat_init (){

__fresh113:
  call void @arr549.init(  )
  ret void
}


define i32 @program (i32 %argc552, { i32, [ 0 x i8* ] }* %argv550){

__fresh112:
  %argc_slot553 = alloca i32
  store i32 %argc552, i32* %argc_slot553
  %argv_slot551 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv550, { i32, [ 0 x i8* ] }** %argv_slot551
  %_lhs554 = load { i32, [ 0 x i32 ] }** @arr549
  %len_ptr555 = getelementptr { i32, [ 0 x i32 ] }* %_lhs554, i32 0, i32 0
  %len556 = load i32* %len_ptr555
  call void @oat_array_bounds_check( i32 %len556, i32 1 )
  %array_dereferenced557 = load { i32, [ 0 x i32 ] }** @arr549
  %elt_ptr558 = getelementptr { i32, [ 0 x i32 ] }** @arr549, i32 0, i32 1, i32 1
  %_lhs559 = load [ 0 x i32 ]* %elt_ptr558
  ret [ 0 x i32 ] %_lhs559
}


define void @arr549.init (){

__fresh111:
  %array_ptr545 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array546 = bitcast { i32, [ 0 x i32 ] }* %array_ptr545 to { i32, [ 0 x i32 ] }* 
  %index_ptr547 = getelementptr { i32, [ 0 x i32 ] }* %array546, i32 0, i32 1, i32 0
  store i32 1, i32* %index_ptr547
  %index_ptr548 = getelementptr { i32, [ 0 x i32 ] }* %array546, i32 0, i32 1, i32 1
  store i32 2, i32* %index_ptr548
  store { i32, [ 0 x i32 ] }* %array546, { i32, [ 0 x i32 ] }** @arr549
  ret void
}


