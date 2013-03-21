declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@arr11479 = global { i32, [ 0 x i32 ] }* zeroinitializer, align 4		; initialized by arr11479.init
define void @oat_init (){

__fresh193:
  call void @arr11479.init(  )
  ret void
}


define i32 @program (i32 %argc1482, { i32, [ 0 x i8* ] }* %argv1480){

__fresh190:
  %argc_slot1483 = alloca i32
  store i32 %argc1482, i32* %argc_slot1483
  %argv_slot1481 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv1480, { i32, [ 0 x i8* ] }** %argv_slot1481
  %_lhs1484 = load { i32, [ 0 x i32 ] }** @arr11479
  %ret1485 = call i8* @string_of_array ( { i32, [ 0 x i32 ] }* %_lhs1484 )
  %str1486 = alloca i8*
  store i8* %ret1485, i8** %str1486
  %_lhs1487 = load i8** %str1486
  %ret1488 = call { i32, [ 0 x i32 ] }* @array_of_string ( i8* %_lhs1487 )
  %arr21489 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %ret1488, { i32, [ 0 x i32 ] }** %arr21489
  %s1490 = alloca i32
  store i32 0, i32* %s1490
  %i1491 = alloca i32
  store i32 0, i32* %i1491
  br label %__cond189

__cond189:
  %_lhs1492 = load i32* %i1491
  %bop1493 = icmp slt i32 %_lhs1492, 5
  br i1 %bop1493, label %__body188, label %__post187

__fresh191:
  br label %__body188

__body188:
  %_lhs1494 = load i32* %s1490
  %_lhs1495 = load i32* %i1491
  %len_ptr1496 = getelementptr { i32, [ 0 x i32 ] }** %arr21489, i32 0, i32 0
  %len1497 = load i32* %len_ptr1496
  call void @oat_array_bounds_check( i32 %len1497, i32 %_lhs1495 )
  %array_dereferenced1498 = load { i32, [ 0 x i32 ] }** %arr21489
  %elt_ptr1499 = getelementptr i32 %array_dereferenced1498, i32 0, i32 1, i32 %_lhs1495
  %_lhs1500 = load i32* %elt_ptr1499
  %bop1501 = add i32 %_lhs1494, %_lhs1500
  store i32 %bop1501, i32* %s1490
  %_lhs1502 = load i32* %i1491
  %bop1503 = add i32 %_lhs1502, 1
  store i32 %bop1503, i32* %i1491
  br label %__cond189

__fresh192:
  br label %__post187

__post187:
  %_lhs1504 = load i32* %s1490
  ret i32 %_lhs1504
}


define void @arr11479.init (){

__fresh186:
  %array_ptr1472 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 5 )
  %array1473 = bitcast { i32, [ 0 x i32 ] }* %array_ptr1472 to { i32, [ 0 x i32 ] }* 
  %index_ptr1474 = getelementptr { i32, [ 0 x i32 ] }* %array1473, i32 0, i32 1, i32 0
  store i32 111, i32* %index_ptr1474
  %index_ptr1475 = getelementptr { i32, [ 0 x i32 ] }* %array1473, i32 0, i32 1, i32 1
  store i32 112, i32* %index_ptr1475
  %index_ptr1476 = getelementptr { i32, [ 0 x i32 ] }* %array1473, i32 0, i32 1, i32 2
  store i32 113, i32* %index_ptr1476
  %index_ptr1477 = getelementptr { i32, [ 0 x i32 ] }* %array1473, i32 0, i32 1, i32 3
  store i32 114, i32* %index_ptr1477
  %index_ptr1478 = getelementptr { i32, [ 0 x i32 ] }* %array1473, i32 0, i32 1, i32 4
  store i32 115, i32* %index_ptr1478
  store { i32, [ 0 x i32 ] }* %array1473, { i32, [ 0 x i32 ] }** @arr11479
  ret void
}


