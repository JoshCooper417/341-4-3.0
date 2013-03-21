declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
define void @oat_init (){

__fresh136:
  ret void
}


define i32 @program (i32 %argc518, { i32, [ 0 x i8* ] }* %argv516){

__fresh135:
  %argc_slot519 = alloca i32
  store i32 %argc518, i32* %argc_slot519
  %argv_slot517 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv516, { i32, [ 0 x i8* ] }** %argv_slot517
  %array_ptr520 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array521 = bitcast { i32, [ 0 x i32 ] }* %array_ptr520 to { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* 
  %array_ptr522 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array523 = bitcast { i32, [ 0 x i32 ] }* %array_ptr522 to { i32, [ 0 x i32 ] }* 
  %index_ptr524 = getelementptr { i32, [ 0 x i32 ] }* %array523, i32 0, i32 1, i32 0
  store i32 1, i32* %index_ptr524
  %index_ptr525 = getelementptr { i32, [ 0 x i32 ] }* %array523, i32 0, i32 1, i32 1
  store i32 2, i32* %index_ptr525
  %index_ptr526 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array521, i32 0, i32 1, i32 0
  store { i32, [ 0 x i32 ] }* %array523, { i32, [ 0 x i32 ] }** %index_ptr526
  %array_ptr527 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array528 = bitcast { i32, [ 0 x i32 ] }* %array_ptr527 to { i32, [ 0 x i32 ] }* 
  %index_ptr529 = getelementptr { i32, [ 0 x i32 ] }* %array528, i32 0, i32 1, i32 0
  store i32 3, i32* %index_ptr529
  %index_ptr530 = getelementptr { i32, [ 0 x i32 ] }* %array528, i32 0, i32 1, i32 1
  store i32 4, i32* %index_ptr530
  %index_ptr531 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array521, i32 0, i32 1, i32 1
  store { i32, [ 0 x i32 ] }* %array528, { i32, [ 0 x i32 ] }** %index_ptr531
  %arr532 = alloca { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }*
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array521, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %arr532
  %_lhs533 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %arr532
  ret { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %_lhs533
}


