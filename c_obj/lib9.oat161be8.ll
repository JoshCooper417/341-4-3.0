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


define i32 @program (i32 %argc1432, { i32, [ 0 x i8* ] }* %argv1430){

__fresh175:
  %argc_slot1433 = alloca i32
  store i32 %argc1432, i32* %argc_slot1433
  %argv_slot1431 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv1430, { i32, [ 0 x i8* ] }** %argv_slot1431
  %i1434 = alloca i32
  store i32 1, i32* %i1434
  br label %__cond174

__cond174:
  %_lhs1435 = load i32* %i1434
  %_lhs1436 = load i32* %argc_slot1433
  %bop1437 = icmp slt i32 %_lhs1435, %_lhs1436
  br i1 %bop1437, label %__body173, label %__post172

__fresh176:
  br label %__body173

__body173:
  %_lhs1438 = load i32* %i1434
  %_lhs1439 = load { i32, [ 0 x i8* ] }** %argv_slot1431
  %len_ptr1440 = getelementptr { i32, [ 0 x i8* ] }* %_lhs1439, i32 0, i32 0
  %len1441 = load i32* %len_ptr1440
  call void @oat_array_bounds_check( i32 %len1441, i32 %_lhs1438 )
  %array_dereferenced1442 = load { i32, [ 0 x i8* ] }** %argv_slot1431
  %elt_ptr1443 = getelementptr { i32, [ 0 x i8* ] }** %argv_slot1431, i32 0, i32 1, i32 %_lhs1438
  %_lhs1444 = load [ 0 x i8* ]* %elt_ptr1443
  call void @print_string( [ 0 x i8* ] %_lhs1444 )
  %_lhs1445 = load i32* %i1434
  %bop1446 = add i32 %_lhs1445, 1
  store i32 %bop1446, i32* %i1434
  br label %__cond174

__fresh177:
  br label %__post172

__post172:
  %_lhs1447 = load i32* %argc_slot1433
  ret i32 %_lhs1447
}


