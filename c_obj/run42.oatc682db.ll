declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
define void @oat_init (){

__fresh105:
  ret void
}


define i32 @program (i32 %argc395, { i32, [ 0 x i8* ] }* %argv393){

__fresh104:
  %argc_slot396 = alloca i32
  store i32 %argc395, i32* %argc_slot396
  %argv_slot394 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv393, { i32, [ 0 x i8* ] }** %argv_slot394
  store i32 1, i32* %i397
  %a1411 = alloca { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }*
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array406, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a1411
  %len_ptr412 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a1411, i32 0, i32 0
  %len413 = load i32* %len_ptr412
  call void @oat_array_bounds_check( i32 %len413, i32 0 )
  %array_dereferenced414 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a1411
  %elt_ptr415 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array_dereferenced414, i32 0, i32 1, i32 0
  %len_ptr416 = getelementptr { i32, [ 0 x i32 ] }** %elt_ptr415, i32 0, i32 0
  %len417 = load i32* %len_ptr416
  call void @oat_array_bounds_check( i32 %len417, i32 0 )
  %array_dereferenced418 = load { i32, [ 0 x i32 ] }** %elt_ptr415
  %elt_ptr419 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced418, i32 0, i32 1, i32 0
  %_lhs420 = load i32* %elt_ptr419
  ret i32 %_lhs420
}


