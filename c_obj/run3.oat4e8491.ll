declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@arr546 = global { i32, [ 0 x i32 ] }* zeroinitializer, align 4		; initialized by arr546.init
define void @oat_init (){

__fresh113:
  call void @arr546.init(  )
  ret void
}


define i32 @program (i32 %argc549, { i32, [ 0 x i8* ] }* %argv547){

__fresh112:
  %argc_slot550 = alloca i32
  store i32 %argc549, i32* %argc_slot550
  %argv_slot548 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv547, { i32, [ 0 x i8* ] }** %argv_slot548
  %_lhs556 = load [ 0 x i32 ]* %elt_ptr555
  ret [ 0 x i32 ] %_lhs556
}


define void @arr546.init (){

__fresh111:
  %array_ptr542 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array543 = bitcast { i32, [ 0 x i32 ] }* %array_ptr542 to { i32, [ 0 x i32 ] }* 
  %index_ptr544 = getelementptr { i32, [ 0 x i32 ] }* %array543, i32 0, i32 1, i32 0
  store i32 1, i32* %index_ptr544
  %index_ptr545 = getelementptr { i32, [ 0 x i32 ] }* %array543, i32 0, i32 1, i32 1
  store i32 2, i32* %index_ptr545
  store { i32, [ 0 x i32 ] }* %array543, { i32, [ 0 x i32 ] }** @arr546
  ret void
}


