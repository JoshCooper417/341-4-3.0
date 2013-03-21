declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@arr11349 = global { i32, [ 0 x i32 ] }* zeroinitializer, align 4		; initialized by arr11349.init
define void @oat_init (){

__fresh162:
  call void @arr11349.init(  )
  ret void
}


define i32 @program (i32 %argc1352, { i32, [ 0 x i8* ] }* %argv1350){

__fresh159:
  %argc_slot1353 = alloca i32
  store i32 %argc1352, i32* %argc_slot1353
  %argv_slot1351 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv1350, { i32, [ 0 x i8* ] }** %argv_slot1351
  %_lhs1354 = load { i32, [ 0 x i32 ] }** @arr11349
  %ret1355 = call i8* @string_of_array ( { i32, [ 0 x i32 ] }* %_lhs1354 )
  %str1356 = alloca i8*
  store i8* %ret1355, i8** %str1356
  %_lhs1357 = load i8** %str1356
  %ret1358 = call { i32, [ 0 x i32 ] }* @array_of_string ( i8* %_lhs1357 )
  %arr21359 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %ret1358, { i32, [ 0 x i32 ] }** %arr21359
  %s1360 = alloca i32
  store i32 0, i32* %s1360
  %i1361 = alloca i32
  store i32 0, i32* %i1361
  br label %__cond158

__cond158:
  %_lhs1362 = load i32* %i1361
  %bop1363 = icmp slt i32 %_lhs1362, 5
  br i1 %bop1363, label %__body157, label %__post156

__fresh160:
  br label %__body157

__body157:
  %_lhs1364 = load i32* %s1360
  %_lhs1365 = load i32* %i1361
  %_lhs1366 = load { i32, [ 0 x i32 ] }** %arr21359
  %len_ptr1367 = getelementptr { i32, [ 0 x i32 ] }* %_lhs1366, i32 0, i32 0
  %len1368 = load i32* %len_ptr1367
  call void @oat_array_bounds_check( i32 %len1368, i32 %_lhs1365 )
  %array_dereferenced1369 = load { i32, [ 0 x i32 ] }** %arr21359
  %elt_ptr1370 = getelementptr { i32, [ 0 x i32 ] }** %arr21359, i32 0, i32 1, i32 %_lhs1365
  %_lhs1371 = load [ 0 x i32 ]* %elt_ptr1370
  %bop1372 = add i32 %_lhs1364, %_lhs1371
  store i32 %bop1372, i32* %s1360
  %_lhs1373 = load i32* %i1361
  %bop1374 = add i32 %_lhs1373, 1
  store i32 %bop1374, i32* %i1361
  br label %__cond158

__fresh161:
  br label %__post156

__post156:
  %_lhs1375 = load i32* %s1360
  ret i32 %_lhs1375
}


define void @arr11349.init (){

__fresh155:
  %array_ptr1342 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 5 )
  %array1343 = bitcast { i32, [ 0 x i32 ] }* %array_ptr1342 to { i32, [ 0 x i32 ] }* 
  %index_ptr1344 = getelementptr { i32, [ 0 x i32 ] }* %array1343, i32 0, i32 1, i32 0
  store i32 111, i32* %index_ptr1344
  %index_ptr1345 = getelementptr { i32, [ 0 x i32 ] }* %array1343, i32 0, i32 1, i32 1
  store i32 112, i32* %index_ptr1345
  %index_ptr1346 = getelementptr { i32, [ 0 x i32 ] }* %array1343, i32 0, i32 1, i32 2
  store i32 113, i32* %index_ptr1346
  %index_ptr1347 = getelementptr { i32, [ 0 x i32 ] }* %array1343, i32 0, i32 1, i32 3
  store i32 114, i32* %index_ptr1347
  %index_ptr1348 = getelementptr { i32, [ 0 x i32 ] }* %array1343, i32 0, i32 1, i32 4
  store i32 115, i32* %index_ptr1348
  store { i32, [ 0 x i32 ] }* %array1343, { i32, [ 0 x i32 ] }** @arr11349
  ret void
}


