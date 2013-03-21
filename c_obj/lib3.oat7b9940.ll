declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
define void @oat_init (){

__fresh170:
  ret void
}


define i32 @program (i32 %argc1384, { i32, [ 0 x i8* ] }* %argv1382){

__fresh169:
  %argc_slot1385 = alloca i32
  store i32 %argc1384, i32* %argc_slot1385
  %argv_slot1383 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv1382, { i32, [ 0 x i8* ] }** %argv_slot1383
  %array_ptr1386 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 4 )
  %array1387 = bitcast { i32, [ 0 x i32 ] }* %array_ptr1386 to { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* 
  %array_ptr1388 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 4 )
  %array1389 = bitcast { i32, [ 0 x i32 ] }* %array_ptr1388 to { i32, [ 0 x i32 ] }* 
  %index_ptr1390 = getelementptr { i32, [ 0 x i32 ] }* %array1389, i32 0, i32 1, i32 0
  store i32 0, i32* %index_ptr1390
  %index_ptr1391 = getelementptr { i32, [ 0 x i32 ] }* %array1389, i32 0, i32 1, i32 1
  store i32 0, i32* %index_ptr1391
  %index_ptr1392 = getelementptr { i32, [ 0 x i32 ] }* %array1389, i32 0, i32 1, i32 2
  store i32 0, i32* %index_ptr1392
  %index_ptr1393 = getelementptr { i32, [ 0 x i32 ] }* %array1389, i32 0, i32 1, i32 3
  store i32 0, i32* %index_ptr1393
  %index_ptr1394 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array1387, i32 0, i32 1, i32 0
  store { i32, [ 0 x i32 ] }* %array1389, { i32, [ 0 x i32 ] }** %index_ptr1394
  %array_ptr1395 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array1396 = bitcast { i32, [ 0 x i32 ] }* %array_ptr1395 to { i32, [ 0 x i32 ] }* 
  %index_ptr1397 = getelementptr { i32, [ 0 x i32 ] }* %array1396, i32 0, i32 1, i32 0
  store i32 1, i32* %index_ptr1397
  %index_ptr1398 = getelementptr { i32, [ 0 x i32 ] }* %array1396, i32 0, i32 1, i32 1
  store i32 1, i32* %index_ptr1398
  %index_ptr1399 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array1387, i32 0, i32 1, i32 1
  store { i32, [ 0 x i32 ] }* %array1396, { i32, [ 0 x i32 ] }** %index_ptr1399
  %array_ptr1400 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array1401 = bitcast { i32, [ 0 x i32 ] }* %array_ptr1400 to { i32, [ 0 x i32 ] }* 
  %index_ptr1402 = getelementptr { i32, [ 0 x i32 ] }* %array1401, i32 0, i32 1, i32 0
  store i32 2, i32* %index_ptr1402
  %index_ptr1403 = getelementptr { i32, [ 0 x i32 ] }* %array1401, i32 0, i32 1, i32 1
  store i32 2, i32* %index_ptr1403
  %index_ptr1404 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array1387, i32 0, i32 1, i32 2
  store { i32, [ 0 x i32 ] }* %array1401, { i32, [ 0 x i32 ] }** %index_ptr1404
  %array_ptr1405 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array1406 = bitcast { i32, [ 0 x i32 ] }* %array_ptr1405 to { i32, [ 0 x i32 ] }* 
  %index_ptr1407 = getelementptr { i32, [ 0 x i32 ] }* %array1406, i32 0, i32 1, i32 0
  store i32 3, i32* %index_ptr1407
  %index_ptr1408 = getelementptr { i32, [ 0 x i32 ] }* %array1406, i32 0, i32 1, i32 1
  store i32 3, i32* %index_ptr1408
  %index_ptr1409 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array1387, i32 0, i32 1, i32 3
  store { i32, [ 0 x i32 ] }* %array1406, { i32, [ 0 x i32 ] }** %index_ptr1409
  %arr1410 = alloca { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }*
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array1387, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %arr1410
  %len_ptr1411 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %arr1410, i32 0, i32 0
  %len1412 = load i32* %len_ptr1411
  call void @oat_array_bounds_check( i32 %len1412, i32 0 )
  %array_dereferenced1413 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %arr1410
  %elt_ptr1414 = getelementptr i32 %array_dereferenced1413, i32 0, i32 1, i32 0
  %_lhs1415 = load { i32, [ 0 x i32 ] }** %elt_ptr1414
  %len_ptr1416 = getelementptr { i32, [ 0 x i32 ] }* %_lhs1415, i32 0, i32 0
  %len1417 = load i32* %len_ptr1416
  %len1418 = alloca i32
  store i32 %len1417, i32* %len1418
  %_lhs1419 = load i32* %len1418
  ret i32 %_lhs1419
}


