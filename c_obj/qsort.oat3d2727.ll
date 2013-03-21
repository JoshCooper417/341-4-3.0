declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@_oat_string1399.str. = private unnamed_addr constant [ 2 x i8 ] c "
\00", align 4
@_oat_string1399 = global i8* getelementptr inbounds ([ 2 x i8 ]* @_oat_string1399.str., i32 0, i32 0), align 4
@_oat_string1394.str. = private unnamed_addr constant [ 2 x i8 ] c "
\00", align 4
@_oat_string1394 = global i8* getelementptr inbounds ([ 2 x i8 ]* @_oat_string1394.str., i32 0, i32 0), align 4
@_oat_string1390.str. = private unnamed_addr constant [ 2 x i8 ] c "
\00", align 4
@_oat_string1390 = global i8* getelementptr inbounds ([ 2 x i8 ]* @_oat_string1390.str., i32 0, i32 0), align 4
define void @oat_init (){

__fresh269:
  ret void
}


define i32 @program (i32 %argc1376, { i32, [ 0 x i8* ] }* %argv1374){

__fresh268:
  %argc_slot1377 = alloca i32
  store i32 %argc1376, i32* %argc_slot1377
  %argv_slot1375 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv1374, { i32, [ 0 x i8* ] }** %argv_slot1375
  %array_ptr1378 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 9 )
  %array1379 = bitcast { i32, [ 0 x i32 ] }* %array_ptr1378 to { i32, [ 0 x i32 ] }* 
  %index_ptr1380 = getelementptr { i32, [ 0 x i32 ] }* %array1379, i32 0, i32 1, i32 0
  store i32 107, i32* %index_ptr1380
  %index_ptr1381 = getelementptr { i32, [ 0 x i32 ] }* %array1379, i32 0, i32 1, i32 1
  store i32 112, i32* %index_ptr1381
  %index_ptr1382 = getelementptr { i32, [ 0 x i32 ] }* %array1379, i32 0, i32 1, i32 2
  store i32 121, i32* %index_ptr1382
  %index_ptr1383 = getelementptr { i32, [ 0 x i32 ] }* %array1379, i32 0, i32 1, i32 3
  store i32 102, i32* %index_ptr1383
  %index_ptr1384 = getelementptr { i32, [ 0 x i32 ] }* %array1379, i32 0, i32 1, i32 4
  store i32 123, i32* %index_ptr1384
  %index_ptr1385 = getelementptr { i32, [ 0 x i32 ] }* %array1379, i32 0, i32 1, i32 5
  store i32 115, i32* %index_ptr1385
  %index_ptr1386 = getelementptr { i32, [ 0 x i32 ] }* %array1379, i32 0, i32 1, i32 6
  store i32 104, i32* %index_ptr1386
  %index_ptr1387 = getelementptr { i32, [ 0 x i32 ] }* %array1379, i32 0, i32 1, i32 7
  store i32 111, i32* %index_ptr1387
  %index_ptr1388 = getelementptr { i32, [ 0 x i32 ] }* %array1379, i32 0, i32 1, i32 8
  store i32 109, i32* %index_ptr1388
  %a1389 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %array1379, { i32, [ 0 x i32 ] }** %a1389
  %strval1391 = load i8** @_oat_string1390
  call void @print_string( i8* %strval1391 )
  %_lhs1392 = load { i32, [ 0 x i32 ] }** %a1389
  %ret1393 = call i8* @string_of_array ( { i32, [ 0 x i32 ] }* %_lhs1392 )
  call void @print_string( i8* %ret1393 )
  %strval1395 = load i8** @_oat_string1394
  call void @print_string( i8* %strval1395 )
  %_lhs1396 = load { i32, [ 0 x i32 ] }** %a1389
  call void @quick_sort( { i32, [ 0 x i32 ] }* %_lhs1396, i32 0, i32 8 )
  %_lhs1397 = load { i32, [ 0 x i32 ] }** %a1389
  %ret1398 = call i8* @string_of_array ( { i32, [ 0 x i32 ] }* %_lhs1397 )
  call void @print_string( i8* %ret1398 )
  %strval1400 = load i8** @_oat_string1399
  call void @print_string( i8* %strval1400 )
  ret i32 255
}


define i32 @partition ({ i32, [ 0 x i32 ] }* %a1320, i32 %l1318, i32 %r1316){

__fresh257:
  %a_slot1321 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %a1320, { i32, [ 0 x i32 ] }** %a_slot1321
  %l_slot1319 = alloca i32
  store i32 %l1318, i32* %l_slot1319
  %r_slot1317 = alloca i32
  store i32 %r1316, i32* %r_slot1317
  %_lhs1323 = load { i32, [ 0 x i32 ] }** %a_slot1321
  %pivot1324 = alloca i32
  store { i32, [ 0 x i32 ] }* %_lhs1323, i32* %pivot1324
  %_lhs1325 = load i32* %l_slot1319
  %i1326 = alloca i32
  store i32 %_lhs1325, i32* %i1326
  %_lhs1327 = load i32* %r_slot1317
  %bop1328 = add i32 %_lhs1327, 1
  %j1329 = alloca i32
  store i32 %bop1328, i32* %j1329
  %t1330 = alloca i32
  store i32 0, i32* %t1330
  %done1331 = alloca i32
  store i32 0, i32* %done1331
  br label %__cond244

__cond244:
  %_lhs1332 = load i32* %done1331
  %bop1333 = icmp eq i32 %_lhs1332, 0
  br i1 %bop1333, label %__body243, label %__post242

__fresh258:
  br label %__body243

__body243:
  %_lhs1334 = load i32* %i1326
  %bop1335 = add i32 %_lhs1334, 1
  store i32 %bop1335, i32* %i1326
  br label %__cond247

__cond247:
  %_lhs1337 = load { i32, [ 0 x i32 ] }** %a_slot1321
  %_lhs1338 = load i32* %pivot1324
  %bop1339 = icmp sle { i32, [ 0 x i32 ] }* %_lhs1337, %_lhs1338
  %_lhs1340 = load i32* %i1326
  %_lhs1341 = load i32* %r_slot1317
  %bop1342 = icmp sle i32 %_lhs1340, %_lhs1341
  %bop1343 = and i1 %bop1339, %bop1342
  br i1 %bop1343, label %__body246, label %__post245

__fresh259:
  br label %__body246

__body246:
  %_lhs1344 = load i32* %i1326
  %bop1345 = add i32 %_lhs1344, 1
  store i32 %bop1345, i32* %i1326
  br label %__cond247

__fresh260:
  br label %__post245

__post245:
  %_lhs1346 = load i32* %j1329
  %bop1347 = sub i32 %_lhs1346, 1
  store i32 %bop1347, i32* %j1329
  br label %__cond250

__cond250:
  %_lhs1349 = load { i32, [ 0 x i32 ] }** %a_slot1321
  %_lhs1350 = load i32* %pivot1324
  %bop1351 = icmp sgt { i32, [ 0 x i32 ] }* %_lhs1349, %_lhs1350
  br i1 %bop1351, label %__body249, label %__post248

__fresh261:
  br label %__body249

__body249:
  %_lhs1352 = load i32* %j1329
  %bop1353 = sub i32 %_lhs1352, 1
  store i32 %bop1353, i32* %j1329
  br label %__cond250

__fresh262:
  br label %__post248

__post248:
  %_lhs1354 = load i32* %i1326
  %_lhs1355 = load i32* %j1329
  %bop1356 = icmp sge i32 %_lhs1354, %_lhs1355
  br i1 %bop1356, label %__then253, label %__else252

__fresh263:
  br label %__then253

__then253:
  store i32 1, i32* %done1331
  br label %__merge251

__fresh264:
  br label %__else252

__else252:
  br label %__merge251

__merge251:
  %_lhs1357 = load i32* %done1331
  %bop1358 = icmp eq i32 %_lhs1357, 0
  br i1 %bop1358, label %__then256, label %__else255

__fresh265:
  br label %__then256

__then256:
  %_lhs1360 = load { i32, [ 0 x i32 ] }** %a_slot1321
  store { i32, [ 0 x i32 ] }* %_lhs1360, i32* %t1330
  %_lhs1363 = load { i32, [ 0 x i32 ] }** %a_slot1321
  store { i32, [ 0 x i32 ] }* %_lhs1363, { i32, [ 0 x i32 ] }** %a_slot1321
  %_lhs1365 = load i32* %t1330
  store i32 %_lhs1365, { i32, [ 0 x i32 ] }** %a_slot1321
  br label %__merge254

__fresh266:
  br label %__else255

__else255:
  br label %__merge254

__merge254:
  br label %__cond244

__fresh267:
  br label %__post242

__post242:
  %_lhs1367 = load { i32, [ 0 x i32 ] }** %a_slot1321
  store { i32, [ 0 x i32 ] }* %_lhs1367, i32* %t1330
  %_lhs1370 = load { i32, [ 0 x i32 ] }** %a_slot1321
  store { i32, [ 0 x i32 ] }* %_lhs1370, { i32, [ 0 x i32 ] }** %a_slot1321
  %_lhs1372 = load i32* %t1330
  store i32 %_lhs1372, { i32, [ 0 x i32 ] }** %a_slot1321
  %_lhs1373 = load i32* %j1329
  ret i32 %_lhs1373
}


define void @quick_sort ({ i32, [ 0 x i32 ] }* %a1298, i32 %l1296, i32 %r1294){

__fresh239:
  %a_slot1299 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %a1298, { i32, [ 0 x i32 ] }** %a_slot1299
  %l_slot1297 = alloca i32
  store i32 %l1296, i32* %l_slot1297
  %r_slot1295 = alloca i32
  store i32 %r1294, i32* %r_slot1295
  %j1300 = alloca i32
  store i32 0, i32* %j1300
  %_lhs1301 = load i32* %l_slot1297
  %_lhs1302 = load i32* %r_slot1295
  %bop1303 = icmp slt i32 %_lhs1301, %_lhs1302
  br i1 %bop1303, label %__then238, label %__else237

__fresh240:
  br label %__then238

__then238:
  %_lhs1306 = load i32* %r_slot1295
  %_lhs1305 = load i32* %l_slot1297
  %_lhs1304 = load { i32, [ 0 x i32 ] }** %a_slot1299
  %ret1307 = call i32 @partition ( { i32, [ 0 x i32 ] }* %_lhs1304, i32 %_lhs1305, i32 %_lhs1306 )
  store i32 %ret1307, i32* %j1300
  %_lhs1310 = load i32* %j1300
  %bop1311 = sub i32 %_lhs1310, 1
  %_lhs1309 = load i32* %l_slot1297
  %_lhs1308 = load { i32, [ 0 x i32 ] }** %a_slot1299
  call void @quick_sort( { i32, [ 0 x i32 ] }* %_lhs1308, i32 %_lhs1309, i32 %bop1311 )
  %_lhs1315 = load i32* %r_slot1295
  %_lhs1313 = load i32* %j1300
  %bop1314 = add i32 %_lhs1313, 1
  %_lhs1312 = load { i32, [ 0 x i32 ] }** %a_slot1299
  call void @quick_sort( { i32, [ 0 x i32 ] }* %_lhs1312, i32 %bop1314, i32 %_lhs1315 )
  br label %__merge236

__fresh241:
  br label %__else237

__else237:
  br label %__merge236

__merge236:
  ret void
}


