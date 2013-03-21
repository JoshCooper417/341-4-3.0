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


define i32 @program (i32 %argc1378, { i32, [ 0 x i8* ] }* %argv1376){

__fresh166:
  %argc_slot1379 = alloca i32
  store i32 %argc1378, i32* %argc_slot1379
  %argv_slot1377 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv1376, { i32, [ 0 x i8* ] }** %argv_slot1377
  %array_ptr1380 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 5 )
  %array1381 = bitcast { i32, [ 0 x i32 ] }* %array_ptr1380 to { i32, [ 0 x i32 ] }* 
  %index_ptr1382 = getelementptr { i32, [ 0 x i32 ] }* %array1381, i32 0, i32 1, i32 0
  store i32 111, i32* %index_ptr1382
  %index_ptr1383 = getelementptr { i32, [ 0 x i32 ] }* %array1381, i32 0, i32 1, i32 1
  store i32 112, i32* %index_ptr1383
  %index_ptr1384 = getelementptr { i32, [ 0 x i32 ] }* %array1381, i32 0, i32 1, i32 2
  store i32 113, i32* %index_ptr1384
  %index_ptr1385 = getelementptr { i32, [ 0 x i32 ] }* %array1381, i32 0, i32 1, i32 3
  store i32 114, i32* %index_ptr1385
  %index_ptr1386 = getelementptr { i32, [ 0 x i32 ] }* %array1381, i32 0, i32 1, i32 4
  store i32 115, i32* %index_ptr1386
  %arr11387 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %array1381, { i32, [ 0 x i32 ] }** %arr11387
  %_lhs1388 = load { i32, [ 0 x i32 ] }** %arr11387
  %ret1389 = call i8* @string_of_array ( { i32, [ 0 x i32 ] }* %_lhs1388 )
  %str1390 = alloca i8*
  store i8* %ret1389, i8** %str1390
  %_lhs1391 = load i8** %str1390
  %ret1392 = call { i32, [ 0 x i32 ] }* @array_of_string ( i8* %_lhs1391 )
  %arr21393 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %ret1392, { i32, [ 0 x i32 ] }** %arr21393
  %s1394 = alloca i32
  store i32 0, i32* %s1394
  %i1395 = alloca i32
  store i32 0, i32* %i1395
  br label %__cond165

__cond165:
  %_lhs1396 = load i32* %i1395
  %bop1397 = icmp slt i32 %_lhs1396, 5
  br i1 %bop1397, label %__body164, label %__post163

__fresh167:
  br label %__body164

__body164:
  %_lhs1398 = load i32* %s1394
  %_lhs1399 = load i32* %i1395
  %_lhs1400 = load { i32, [ 0 x i32 ] }** %arr21393
  %len_ptr1401 = getelementptr { i32, [ 0 x i32 ] }* %_lhs1400, i32 0, i32 0
  %len1402 = load i32* %len_ptr1401
  call void @oat_array_bounds_check( i32 %len1402, i32 %_lhs1399 )
  %array_dereferenced1403 = load { i32, [ 0 x i32 ] }** %arr21393
  %elt_ptr1404 = getelementptr { i32, [ 0 x i32 ] }** %arr21393, i32 0, i32 1, i32 %_lhs1399
  %_lhs1405 = load i32* %elt_ptr1404
  %bop1406 = add i32 %_lhs1398, %_lhs1405
  store i32 %bop1406, i32* %s1394
  %_lhs1407 = load i32* %i1395
  %bop1408 = add i32 %_lhs1407, 1
  store i32 %bop1408, i32* %i1395
  br label %__cond165

__fresh168:
  br label %__post163

__post163:
  %_lhs1409 = load i32* %s1394
  ret i32 %_lhs1409
}


