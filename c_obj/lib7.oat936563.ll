declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
define void @oat_init (){

__fresh200:
  ret void
}


define i32 @program (i32 %argc1507, { i32, [ 0 x i8* ] }* %argv1505){

__fresh197:
  %argc_slot1508 = alloca i32
  store i32 %argc1507, i32* %argc_slot1508
  %argv_slot1506 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv1505, { i32, [ 0 x i8* ] }** %argv_slot1506
  %array_ptr1509 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 5 )
  %array1510 = bitcast { i32, [ 0 x i32 ] }* %array_ptr1509 to { i32, [ 0 x i32 ] }* 
  %index_ptr1511 = getelementptr { i32, [ 0 x i32 ] }* %array1510, i32 0, i32 1, i32 0
  store i32 111, i32* %index_ptr1511
  %index_ptr1512 = getelementptr { i32, [ 0 x i32 ] }* %array1510, i32 0, i32 1, i32 1
  store i32 112, i32* %index_ptr1512
  %index_ptr1513 = getelementptr { i32, [ 0 x i32 ] }* %array1510, i32 0, i32 1, i32 2
  store i32 113, i32* %index_ptr1513
  %index_ptr1514 = getelementptr { i32, [ 0 x i32 ] }* %array1510, i32 0, i32 1, i32 3
  store i32 114, i32* %index_ptr1514
  %index_ptr1515 = getelementptr { i32, [ 0 x i32 ] }* %array1510, i32 0, i32 1, i32 4
  store i32 115, i32* %index_ptr1515
  %arr11516 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %array1510, { i32, [ 0 x i32 ] }** %arr11516
  %_lhs1517 = load { i32, [ 0 x i32 ] }** %arr11516
  %ret1518 = call i8* @string_of_array ( { i32, [ 0 x i32 ] }* %_lhs1517 )
  %str1519 = alloca i8*
  store i8* %ret1518, i8** %str1519
  %_lhs1520 = load i8** %str1519
  %ret1521 = call { i32, [ 0 x i32 ] }* @array_of_string ( i8* %_lhs1520 )
  %arr21522 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %ret1521, { i32, [ 0 x i32 ] }** %arr21522
  %s1523 = alloca i32
  store i32 0, i32* %s1523
  %i1524 = alloca i32
  store i32 0, i32* %i1524
  br label %__cond196

__cond196:
  %_lhs1525 = load i32* %i1524
  %bop1526 = icmp slt i32 %_lhs1525, 5
  br i1 %bop1526, label %__body195, label %__post194

__fresh198:
  br label %__body195

__body195:
  %_lhs1527 = load i32* %s1523
  %_lhs1528 = load i32* %i1524
  %len_ptr1529 = getelementptr { i32, [ 0 x i32 ] }** %arr21522, i32 0, i32 0
  %len1530 = load i32* %len_ptr1529
  call void @oat_array_bounds_check( i32 %len1530, i32 %_lhs1528 )
  %array_dereferenced1531 = load { i32, [ 0 x i32 ] }** %arr21522
  %elt_ptr1532 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced1531, i32 0, i32 1, i32 %_lhs1528
  %_lhs1533 = load i32* %elt_ptr1532
  %bop1534 = add i32 %_lhs1527, %_lhs1533
  store i32 %bop1534, i32* %s1523
  %_lhs1535 = load i32* %i1524
  %bop1536 = add i32 %_lhs1535, 1
  store i32 %bop1536, i32* %i1524
  br label %__cond196

__fresh199:
  br label %__post194

__post194:
  %_lhs1537 = load i32* %s1523
  ret i32 %_lhs1537
}


