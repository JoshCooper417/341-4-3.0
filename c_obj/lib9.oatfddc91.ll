declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
define void @oat_init (){

__fresh178:
  ret void
}


define i32 @program (i32 %argc1421, { i32, [ 0 x i8* ] }* %argv1419){

__fresh175:
  %argc_slot1422 = alloca i32
  store i32 %argc1421, i32* %argc_slot1422
  %argv_slot1420 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv1419, { i32, [ 0 x i8* ] }** %argv_slot1420
  %i1423 = alloca i32
  store i32 1, i32* %i1423
  br label %__cond174

__cond174:
  %_lhs1424 = load i32* %i1423
  %_lhs1425 = load i32* %argc_slot1422
  %bop1426 = icmp slt i32 %_lhs1424, %_lhs1425
  br i1 %bop1426, label %__body173, label %__post172

__fresh176:
  br label %__body173

__body173:
  %_lhs1427 = load i32* %i1423
  %_lhs1428 = load { i32, [ 0 x i8* ] }** %argv_slot1420
  %len_ptr1429 = getelementptr { i32, [ 0 x i8* ] }* %_lhs1428, i32 0, i32 0
  %len1430 = load i32* %len_ptr1429
  call void @oat_array_bounds_check( i32 %len1430, i32 %_lhs1427 )
  %array_dereferenced1431 = load { i32, [ 0 x i8* ] }** %argv_slot1420
  %elt_ptr1432 = getelementptr { i32, [ 0 x i8* ] }** %argv_slot1420, i32 0, i32 1, i32 %_lhs1427
  %_lhs1433 = load [ 0 x i8* ]* %elt_ptr1432
  call void @print_string( [ 0 x i8* ] %_lhs1433 )
  %_lhs1434 = load i32* %i1423
  %bop1435 = add i32 %_lhs1434, 1
  store i32 %bop1435, i32* %i1423
  br label %__cond174

__fresh177:
  br label %__post172

__post172:
  %_lhs1436 = load i32* %argc_slot1422
  ret i32 %_lhs1436
}


