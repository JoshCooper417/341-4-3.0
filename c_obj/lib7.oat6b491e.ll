declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
define void @oat_init (){

__fresh169:
  ret void
}


define i32 @program (i32 %argc1389, { i32, [ 0 x i8* ] }* %argv1387){

__fresh166:
  %argc_slot1390 = alloca i32
  store i32 %argc1389, i32* %argc_slot1390
  %argv_slot1388 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv1387, { i32, [ 0 x i8* ] }** %argv_slot1388
  %array_ptr1391 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 5 )
  %array1392 = bitcast { i32, [ 0 x i32 ] }* %array_ptr1391 to { i32, [ 0 x i32 ] }* 
  %index_ptr1393 = getelementptr { i32, [ 0 x i32 ] }* %array1392, i32 0, i32 1, i32 0
  store i32 111, i32* %index_ptr1393
  %index_ptr1394 = getelementptr { i32, [ 0 x i32 ] }* %array1392, i32 0, i32 1, i32 1
  store i32 112, i32* %index_ptr1394
  %index_ptr1395 = getelementptr { i32, [ 0 x i32 ] }* %array1392, i32 0, i32 1, i32 2
  store i32 113, i32* %index_ptr1395
  %index_ptr1396 = getelementptr { i32, [ 0 x i32 ] }* %array1392, i32 0, i32 1, i32 3
  store i32 114, i32* %index_ptr1396
  %index_ptr1397 = getelementptr { i32, [ 0 x i32 ] }* %array1392, i32 0, i32 1, i32 4
  store i32 115, i32* %index_ptr1397
  %arr11398 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %array1392, { i32, [ 0 x i32 ] }** %arr11398
  %_lhs1399 = load { i32, [ 0 x i32 ] }** %arr11398
  %ret1400 = call i8* @string_of_array ( { i32, [ 0 x i32 ] }* %_lhs1399 )
  %str1401 = alloca i8*
  store i8* %ret1400, i8** %str1401
  %_lhs1402 = load i8** %str1401
  %ret1403 = call { i32, [ 0 x i32 ] }* @array_of_string ( i8* %_lhs1402 )
  %arr21404 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %ret1403, { i32, [ 0 x i32 ] }** %arr21404
  %s1405 = alloca i32
  store i32 0, i32* %s1405
  %i1406 = alloca i32
  store i32 0, i32* %i1406
  br label %__cond165

__cond165:
  %_lhs1407 = load i32* %i1406
  %bop1408 = icmp slt i32 %_lhs1407, 5
  br i1 %bop1408, label %__body164, label %__post163

__fresh167:
  br label %__body164

__body164:
  %_lhs1409 = load i32* %s1405
  %_lhs1410 = load i32* %i1406
  %_lhs1411 = load { i32, [ 0 x i32 ] }** %arr21404
  %len_ptr1412 = getelementptr { i32, [ 0 x i32 ] }* %_lhs1411, i32 0, i32 0
  %len1413 = load i32* %len_ptr1412
  call void @oat_array_bounds_check( i32 %len1413, i32 %_lhs1410 )
  %array_dereferenced1414 = load { i32, [ 0 x i32 ] }** %arr21404
  %elt_ptr1415 = getelementptr { i32, [ 0 x i32 ] }** %arr21404, i32 0, i32 1, i32 %_lhs1410
  %_lhs1416 = load [ 0 x i32 ]* %elt_ptr1415
  %bop1417 = add i32 %_lhs1409, %_lhs1416
  store i32 %bop1417, i32* %s1405
  %_lhs1418 = load i32* %i1406
  %bop1419 = add i32 %_lhs1418, 1
  store i32 %bop1419, i32* %i1406
  br label %__cond165

__fresh168:
  br label %__post163

__post163:
  %_lhs1420 = load i32* %s1405
  ret i32 %_lhs1420
}


