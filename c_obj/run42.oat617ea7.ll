declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
define void @oat_init (){

__fresh108:
  ret void
}


define i32 @program (i32 %argc395, { i32, [ 0 x i8* ] }* %argv393){

__fresh104:
  %argc_slot396 = alloca i32
  store i32 %argc395, i32* %argc_slot396
  %argv_slot394 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv393, { i32, [ 0 x i8* ] }** %argv_slot394
  br label %__check102

__fresh105:
  br label %__check102

__check102:
  br label %__end101

__fresh106:
  br label %__body103

__body103:
  br label %__check102

__fresh107:
  br label %__end101

__end101:
  %a1413 = alloca { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }*
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array407, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a1413
  %len_ptr414 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a1413, i32 0, i32 0
  %len415 = load i32* %len_ptr414
  call void @oat_array_bounds_check( i32 %len415, i32 0 )
  %array_dereferenced416 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a1413
  %elt_ptr417 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array_dereferenced416, i32 0, i32 1, i32 0
  %len_ptr418 = getelementptr { i32, [ 0 x i32 ] }** %elt_ptr417, i32 0, i32 0
  %len419 = load i32* %len_ptr418
  call void @oat_array_bounds_check( i32 %len419, i32 0 )
  %array_dereferenced420 = load { i32, [ 0 x i32 ] }** %elt_ptr417
  %elt_ptr421 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced420, i32 0, i32 1, i32 0
  %_lhs422 = load i32* %elt_ptr421
  ret i32 %_lhs422
}


