declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@arr11360 = global { i32, [ 0 x i32 ] }* zeroinitializer, align 4		; initialized by arr11360.init
define void @oat_init (){

__fresh162:
  call void @arr11360.init(  )
  ret void
}


define i32 @program (i32 %argc1363, { i32, [ 0 x i8* ] }* %argv1361){

__fresh159:
  %argc_slot1364 = alloca i32
  store i32 %argc1363, i32* %argc_slot1364
  %argv_slot1362 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv1361, { i32, [ 0 x i8* ] }** %argv_slot1362
  %_lhs1365 = load { i32, [ 0 x i32 ] }** @arr11360
  %ret1366 = call i8* @string_of_array ( { i32, [ 0 x i32 ] }* %_lhs1365 )
  %str1367 = alloca i8*
  store i8* %ret1366, i8** %str1367
  %_lhs1368 = load i8** %str1367
  %ret1369 = call { i32, [ 0 x i32 ] }* @array_of_string ( i8* %_lhs1368 )
  %arr21370 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %ret1369, { i32, [ 0 x i32 ] }** %arr21370
  %s1371 = alloca i32
  store i32 0, i32* %s1371
  %i1372 = alloca i32
  store i32 0, i32* %i1372
  br label %__cond158

__cond158:
  %_lhs1373 = load i32* %i1372
  %bop1374 = icmp slt i32 %_lhs1373, 5
  br i1 %bop1374, label %__body157, label %__post156

__fresh160:
  br label %__body157

__body157:
  %_lhs1375 = load i32* %s1371
  %_lhs1376 = load i32* %i1372
  %_lhs1377 = load { i32, [ 0 x i32 ] }** %arr21370
  %len_ptr1378 = getelementptr { i32, [ 0 x i32 ] }* %_lhs1377, i32 0, i32 0
  %len1379 = load i32* %len_ptr1378
  call void @oat_array_bounds_check( i32 %len1379, i32 %_lhs1376 )
  %array_dereferenced1380 = load { i32, [ 0 x i32 ] }** %arr21370
  %elt_ptr1381 = getelementptr { i32, [ 0 x i32 ] }** %arr21370, i32 0, i32 1, i32 %_lhs1376
  %_lhs1382 = load [ 0 x i32 ]* %elt_ptr1381
  %bop1383 = add i32 %_lhs1375, %_lhs1382
  store i32 %bop1383, i32* %s1371
  %_lhs1384 = load i32* %i1372
  %bop1385 = add i32 %_lhs1384, 1
  store i32 %bop1385, i32* %i1372
  br label %__cond158

__fresh161:
  br label %__post156

__post156:
  %_lhs1386 = load i32* %s1371
  ret i32 %_lhs1386
}


define void @arr11360.init (){

__fresh155:
  %array_ptr1353 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 5 )
  %array1354 = bitcast { i32, [ 0 x i32 ] }* %array_ptr1353 to { i32, [ 0 x i32 ] }* 
  %index_ptr1355 = getelementptr { i32, [ 0 x i32 ] }* %array1354, i32 0, i32 1, i32 0
  store i32 111, i32* %index_ptr1355
  %index_ptr1356 = getelementptr { i32, [ 0 x i32 ] }* %array1354, i32 0, i32 1, i32 1
  store i32 112, i32* %index_ptr1356
  %index_ptr1357 = getelementptr { i32, [ 0 x i32 ] }* %array1354, i32 0, i32 1, i32 2
  store i32 113, i32* %index_ptr1357
  %index_ptr1358 = getelementptr { i32, [ 0 x i32 ] }* %array1354, i32 0, i32 1, i32 3
  store i32 114, i32* %index_ptr1358
  %index_ptr1359 = getelementptr { i32, [ 0 x i32 ] }* %array1354, i32 0, i32 1, i32 4
  store i32 115, i32* %index_ptr1359
  store { i32, [ 0 x i32 ] }* %array1354, { i32, [ 0 x i32 ] }** @arr11360
  ret void
}


