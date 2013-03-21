declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@garr548 = global { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* zeroinitializer, align 4		; initialized by garr548.init
define void @oat_init (){

__fresh140:
  call void @garr548.init(  )
  ret void
}


define i32 @program (i32 %argc554, { i32, [ 0 x i8* ] }* %argv552){

__fresh139:
  %argc_slot555 = alloca i32
  store i32 %argc554, i32* %argc_slot555
  %argv_slot553 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv552, { i32, [ 0 x i8* ] }** %argv_slot553
  %_lhs556 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** @garr548
  %ret557 = call { i32, [ 0 x i32 ] }* @f ( { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %_lhs556 )
  %arr558 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %ret557, { i32, [ 0 x i32 ] }** %arr558
  %_lhs559 = load { i32, [ 0 x i32 ] }** %arr558
  ret { i32, [ 0 x i32 ] }* %_lhs559
}


define { i32, [ 0 x i32 ] }* @f ({ i32, [ 0 x i32 ] }* %arr549){

__fresh138:
  %arr_slot550 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %arr549, { i32, [ 0 x i32 ] }** %arr_slot550
  %_lhs551 = load { i32, [ 0 x i32 ] }** %arr_slot550
  ret { i32, [ 0 x i32 ] }* %_lhs551
}


define void @garr548.init (){

__fresh137:
  %array_ptr534 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array535 = bitcast { i32, [ 0 x i32 ] }* %array_ptr534 to { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* 
  %array_ptr536 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 3 )
  %array537 = bitcast { i32, [ 0 x i32 ] }* %array_ptr536 to { i32, [ 0 x i32 ] }* 
  %index_ptr538 = getelementptr { i32, [ 0 x i32 ] }* %array537, i32 0, i32 1, i32 0
  store i32 1, i32* %index_ptr538
  %index_ptr539 = getelementptr { i32, [ 0 x i32 ] }* %array537, i32 0, i32 1, i32 1
  store i32 2, i32* %index_ptr539
  %index_ptr540 = getelementptr { i32, [ 0 x i32 ] }* %array537, i32 0, i32 1, i32 2
  store i32 3, i32* %index_ptr540
  %index_ptr541 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array535, i32 0, i32 1, i32 0
  store { i32, [ 0 x i32 ] }* %array537, { i32, [ 0 x i32 ] }** %index_ptr541
  %array_ptr542 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 3 )
  %array543 = bitcast { i32, [ 0 x i32 ] }* %array_ptr542 to { i32, [ 0 x i32 ] }* 
  %index_ptr544 = getelementptr { i32, [ 0 x i32 ] }* %array543, i32 0, i32 1, i32 0
  store i32 4, i32* %index_ptr544
  %index_ptr545 = getelementptr { i32, [ 0 x i32 ] }* %array543, i32 0, i32 1, i32 1
  store i32 5, i32* %index_ptr545
  %index_ptr546 = getelementptr { i32, [ 0 x i32 ] }* %array543, i32 0, i32 1, i32 2
  store i32 6, i32* %index_ptr546
  %index_ptr547 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array535, i32 0, i32 1, i32 1
  store { i32, [ 0 x i32 ] }* %array543, { i32, [ 0 x i32 ] }** %index_ptr547
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array535, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** @garr548
  ret void
}


