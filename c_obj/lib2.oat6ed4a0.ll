declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
define void @oat_init (){

__fresh168:
  ret void
}


define i32 @program (i32 %argc1348, { i32, [ 0 x i8* ] }* %argv1346){

__fresh167:
  %argc_slot1349 = alloca i32
  store i32 %argc1348, i32* %argc_slot1349
  %argv_slot1347 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv1346, { i32, [ 0 x i8* ] }** %argv_slot1347
  %array_ptr1350 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 4 )
  %array1351 = bitcast { i32, [ 0 x i32 ] }* %array_ptr1350 to { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* 
  %array_ptr1352 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array1353 = bitcast { i32, [ 0 x i32 ] }* %array_ptr1352 to { i32, [ 0 x i32 ] }* 
  %index_ptr1354 = getelementptr { i32, [ 0 x i32 ] }* %array1353, i32 0, i32 1, i32 0
  store i32 0, i32* %index_ptr1354
  %index_ptr1355 = getelementptr { i32, [ 0 x i32 ] }* %array1353, i32 0, i32 1, i32 1
  store i32 0, i32* %index_ptr1355
  %index_ptr1356 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array1351, i32 0, i32 1, i32 0
  store { i32, [ 0 x i32 ] }* %array1353, { i32, [ 0 x i32 ] }** %index_ptr1356
  %array_ptr1357 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array1358 = bitcast { i32, [ 0 x i32 ] }* %array_ptr1357 to { i32, [ 0 x i32 ] }* 
  %index_ptr1359 = getelementptr { i32, [ 0 x i32 ] }* %array1358, i32 0, i32 1, i32 0
  store i32 1, i32* %index_ptr1359
  %index_ptr1360 = getelementptr { i32, [ 0 x i32 ] }* %array1358, i32 0, i32 1, i32 1
  store i32 1, i32* %index_ptr1360
  %index_ptr1361 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array1351, i32 0, i32 1, i32 1
  store { i32, [ 0 x i32 ] }* %array1358, { i32, [ 0 x i32 ] }** %index_ptr1361
  %array_ptr1362 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array1363 = bitcast { i32, [ 0 x i32 ] }* %array_ptr1362 to { i32, [ 0 x i32 ] }* 
  %index_ptr1364 = getelementptr { i32, [ 0 x i32 ] }* %array1363, i32 0, i32 1, i32 0
  store i32 2, i32* %index_ptr1364
  %index_ptr1365 = getelementptr { i32, [ 0 x i32 ] }* %array1363, i32 0, i32 1, i32 1
  store i32 2, i32* %index_ptr1365
  %index_ptr1366 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array1351, i32 0, i32 1, i32 2
  store { i32, [ 0 x i32 ] }* %array1363, { i32, [ 0 x i32 ] }** %index_ptr1366
  %array_ptr1367 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array1368 = bitcast { i32, [ 0 x i32 ] }* %array_ptr1367 to { i32, [ 0 x i32 ] }* 
  %index_ptr1369 = getelementptr { i32, [ 0 x i32 ] }* %array1368, i32 0, i32 1, i32 0
  store i32 3, i32* %index_ptr1369
  %index_ptr1370 = getelementptr { i32, [ 0 x i32 ] }* %array1368, i32 0, i32 1, i32 1
  store i32 3, i32* %index_ptr1370
  %index_ptr1371 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array1351, i32 0, i32 1, i32 3
  store { i32, [ 0 x i32 ] }* %array1368, { i32, [ 0 x i32 ] }** %index_ptr1371
  %arr1372 = alloca { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }*
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array1351, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %arr1372
  %len_ptr1373 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %arr1372, i32 0, i32 0
  %len1374 = load i32* %len_ptr1373
  call void @oat_array_bounds_check( i32 %len1374, i32 2 )
  %array_dereferenced1375 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %arr1372
  %elt_ptr1376 = getelementptr i32 %array_dereferenced1375, i32 0, i32 1, i32 2
  %_lhs1377 = load i32* %elt_ptr1376
  %len_ptr1378 = getelementptr i32 %_lhs1377, i32 0, i32 0
  %len1379 = load i32* %len_ptr1378
  %len1380 = alloca i32
  store i32 %len1379, i32* %len1380
  %_lhs1381 = load i32* %len1380
  ret i32 %_lhs1381
}


