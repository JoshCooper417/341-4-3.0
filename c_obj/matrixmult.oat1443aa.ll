declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@_oat_string2477.str. = private unnamed_addr constant [ 2 x i8 ] c "
\00", align 4
@_oat_string2477 = global i8* getelementptr inbounds ([ 2 x i8 ]* @_oat_string2477.str., i32 0, i32 0), align 4
@_oat_string2473.str. = private unnamed_addr constant [ 2 x i8 ] c " \00", align 4
@_oat_string2473 = global i8* getelementptr inbounds ([ 2 x i8 ]* @_oat_string2473.str., i32 0, i32 0), align 4
define void @oat_init (){

__fresh389:
  ret void
}


define void @prnNx4 ({ i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %ar2453, i32 %n2451){

__fresh384:
  %ar_slot2454 = alloca { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }*
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %ar2453, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %ar_slot2454
  %n_slot2452 = alloca i32
  store i32 %n2451, i32* %n_slot2452
  %i2455 = alloca i32
  store i32 0, i32* %i2455
  br label %__cond380

__cond380:
  %_lhs2456 = load i32* %i2455
  %_lhs2457 = load i32* %n_slot2452
  %bop2458 = icmp slt i32 %_lhs2456, %_lhs2457
  br i1 %bop2458, label %__body379, label %__post378

__fresh385:
  br label %__body379

__body379:
  %j2459 = alloca i32
  store i32 0, i32* %j2459
  br label %__cond383

__cond383:
  %_lhs2460 = load i32* %j2459
  %bop2461 = icmp slt i32 %_lhs2460, 4
  br i1 %bop2461, label %__body382, label %__post381

__fresh386:
  br label %__body382

__body382:
  %_lhs2462 = load i32* %j2459
  %_lhs2463 = load i32* %i2455
  %len_ptr2464 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %ar_slot2454, i32 0, i32 0
  %len2465 = load i32* %len_ptr2464
  call void @oat_array_bounds_check( i32 %len2465, i32 %_lhs2463 )
  %array_dereferenced2466 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %ar_slot2454
  %elt_ptr2467 = getelementptr i32 %array_dereferenced2466, i32 0, i32 1, i32 %_lhs2463
  %len_ptr2468 = getelementptr i32* %elt_ptr2467, i32 0, i32 0
  %len2469 = load i32* %len_ptr2468
  call void @oat_array_bounds_check( i32 %len2469, i32 %_lhs2462 )
  %array_dereferenced2470 = load i32* %elt_ptr2467
  %elt_ptr2471 = getelementptr i32 %array_dereferenced2470, i32 0, i32 1, i32 %_lhs2462
  %_lhs2472 = load i32* %elt_ptr2471
  call void @print_int( i32 %_lhs2472 )
  %strval2474 = load i8** @_oat_string2473
  call void @print_string( i8* %strval2474 )
  %_lhs2475 = load i32* %j2459
  %bop2476 = add i32 %_lhs2475, 1
  store i32 %bop2476, i32* %j2459
  br label %__cond383

__fresh387:
  br label %__post381

__post381:
  %strval2478 = load i8** @_oat_string2477
  call void @print_string( i8* %strval2478 )
  %_lhs2479 = load i32* %i2455
  %bop2480 = add i32 %_lhs2479, 1
  store i32 %bop2480, i32* %i2455
  br label %__cond380

__fresh388:
  br label %__post378

__post378:
  ret void
}


define i32 @dot3 ({ i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %a12417, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %a22415, i32 %row2413, i32 %col2411){

__fresh375:
  %a1_slot2418 = alloca { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }*
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %a12417, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a1_slot2418
  %a2_slot2416 = alloca { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }*
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %a22415, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a2_slot2416
  %row_slot2414 = alloca i32
  store i32 %row2413, i32* %row_slot2414
  %col_slot2412 = alloca i32
  store i32 %col2411, i32* %col_slot2412
  %sum2419 = alloca i32
  store i32 0, i32* %sum2419
  %k2420 = alloca i32
  store i32 0, i32* %k2420
  br label %__cond374

__cond374:
  %_lhs2421 = load i32* %k2420
  %bop2422 = icmp slt i32 %_lhs2421, 3
  br i1 %bop2422, label %__body373, label %__post372

__fresh376:
  br label %__body373

__body373:
  %_lhs2423 = load i32* %sum2419
  %_lhs2424 = load i32* %k2420
  %_lhs2425 = load i32* %row_slot2414
  %len_ptr2426 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a1_slot2418, i32 0, i32 0
  %len2427 = load i32* %len_ptr2426
  call void @oat_array_bounds_check( i32 %len2427, i32 %_lhs2425 )
  %array_dereferenced2428 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a1_slot2418
  %elt_ptr2429 = getelementptr i32 %array_dereferenced2428, i32 0, i32 1, i32 %_lhs2425
  %len_ptr2430 = getelementptr i32* %elt_ptr2429, i32 0, i32 0
  %len2431 = load i32* %len_ptr2430
  call void @oat_array_bounds_check( i32 %len2431, i32 %_lhs2424 )
  %array_dereferenced2432 = load i32* %elt_ptr2429
  %elt_ptr2433 = getelementptr i32 %array_dereferenced2432, i32 0, i32 1, i32 %_lhs2424
  %_lhs2434 = load i32* %elt_ptr2433
  %_lhs2435 = load i32* %col_slot2412
  %_lhs2436 = load i32* %k2420
  %len_ptr2437 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a2_slot2416, i32 0, i32 0
  %len2438 = load i32* %len_ptr2437
  call void @oat_array_bounds_check( i32 %len2438, i32 %_lhs2436 )
  %array_dereferenced2439 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a2_slot2416
  %elt_ptr2440 = getelementptr i32 %array_dereferenced2439, i32 0, i32 1, i32 %_lhs2436
  %len_ptr2441 = getelementptr i32* %elt_ptr2440, i32 0, i32 0
  %len2442 = load i32* %len_ptr2441
  call void @oat_array_bounds_check( i32 %len2442, i32 %_lhs2435 )
  %array_dereferenced2443 = load i32* %elt_ptr2440
  %elt_ptr2444 = getelementptr i32 %array_dereferenced2443, i32 0, i32 1, i32 %_lhs2435
  %_lhs2445 = load i32* %elt_ptr2444
  %bop2446 = mul i32 %_lhs2434, %_lhs2445
  %bop2447 = add i32 %_lhs2423, %bop2446
  store i32 %bop2447, i32* %sum2419
  %_lhs2448 = load i32* %k2420
  %bop2449 = add i32 %_lhs2448, 1
  store i32 %bop2449, i32* %k2420
  br label %__cond374

__fresh377:
  br label %__post372

__post372:
  %_lhs2450 = load i32* %sum2419
  ret i32 %_lhs2450
}


define void @matrix_MultAlt ({ i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %a12384, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %a22382, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %a32380){

__fresh367:
  %a1_slot2385 = alloca { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }*
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %a12384, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a1_slot2385
  %a2_slot2383 = alloca { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }*
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %a22382, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a2_slot2383
  %a3_slot2381 = alloca { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }*
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %a32380, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a3_slot2381
  %i2386 = alloca i32
  store i32 0, i32* %i2386
  br label %__cond363

__cond363:
  %_lhs2387 = load i32* %i2386
  %bop2388 = icmp slt i32 %_lhs2387, 2
  br i1 %bop2388, label %__body362, label %__post361

__fresh368:
  br label %__body362

__body362:
  %j2389 = alloca i32
  store i32 0, i32* %j2389
  br label %__cond366

__cond366:
  %_lhs2390 = load i32* %j2389
  %bop2391 = icmp slt i32 %_lhs2390, 4
  br i1 %bop2391, label %__body365, label %__post364

__fresh369:
  br label %__body365

__body365:
  %_lhs2392 = load i32* %j2389
  %_lhs2393 = load i32* %i2386
  %len_ptr2394 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a3_slot2381, i32 0, i32 0
  %len2395 = load i32* %len_ptr2394
  call void @oat_array_bounds_check( i32 %len2395, i32 %_lhs2393 )
  %array_dereferenced2396 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a3_slot2381
  %elt_ptr2397 = getelementptr i32 %array_dereferenced2396, i32 0, i32 1, i32 %_lhs2393
  %len_ptr2398 = getelementptr i32* %elt_ptr2397, i32 0, i32 0
  %len2399 = load i32* %len_ptr2398
  call void @oat_array_bounds_check( i32 %len2399, i32 %_lhs2392 )
  %array_dereferenced2400 = load i32* %elt_ptr2397
  %elt_ptr2401 = getelementptr i32 %array_dereferenced2400, i32 0, i32 1, i32 %_lhs2392
  %_lhs2405 = load i32* %j2389
  %_lhs2404 = load i32* %i2386
  %_lhs2403 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a2_slot2383
  %_lhs2402 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a1_slot2385
  %ret2406 = call i32 @dot3 ( { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %_lhs2402, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %_lhs2403, i32 %_lhs2404, i32 %_lhs2405 )
  store i32 %ret2406, i32* %elt_ptr2401
  %_lhs2407 = load i32* %j2389
  %bop2408 = add i32 %_lhs2407, 1
  store i32 %bop2408, i32* %j2389
  br label %__cond366

__fresh370:
  br label %__post364

__post364:
  %_lhs2409 = load i32* %i2386
  %bop2410 = add i32 %_lhs2409, 1
  store i32 %bop2410, i32* %i2386
  br label %__cond363

__fresh371:
  br label %__post361

__post361:
  ret void
}


define void @matrix_Mult ({ i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %a12318, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %a22316, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %a32314){

__fresh354:
  %a1_slot2319 = alloca { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }*
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %a12318, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a1_slot2319
  %a2_slot2317 = alloca { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }*
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %a22316, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a2_slot2317
  %a3_slot2315 = alloca { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }*
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %a32314, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a3_slot2315
  %i2320 = alloca i32
  store i32 0, i32* %i2320
  br label %__cond347

__cond347:
  %_lhs2321 = load i32* %i2320
  %bop2322 = icmp slt i32 %_lhs2321, 2
  br i1 %bop2322, label %__body346, label %__post345

__fresh355:
  br label %__body346

__body346:
  %j2323 = alloca i32
  store i32 0, i32* %j2323
  br label %__cond350

__cond350:
  %_lhs2324 = load i32* %j2323
  %bop2325 = icmp slt i32 %_lhs2324, 4
  br i1 %bop2325, label %__body349, label %__post348

__fresh356:
  br label %__body349

__body349:
  %k2326 = alloca i32
  store i32 0, i32* %k2326
  br label %__cond353

__cond353:
  %_lhs2327 = load i32* %k2326
  %bop2328 = icmp slt i32 %_lhs2327, 3
  br i1 %bop2328, label %__body352, label %__post351

__fresh357:
  br label %__body352

__body352:
  %_lhs2329 = load i32* %j2323
  %_lhs2330 = load i32* %i2320
  %len_ptr2331 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a3_slot2315, i32 0, i32 0
  %len2332 = load i32* %len_ptr2331
  call void @oat_array_bounds_check( i32 %len2332, i32 %_lhs2330 )
  %array_dereferenced2333 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a3_slot2315
  %elt_ptr2334 = getelementptr i32 %array_dereferenced2333, i32 0, i32 1, i32 %_lhs2330
  %len_ptr2335 = getelementptr i32* %elt_ptr2334, i32 0, i32 0
  %len2336 = load i32* %len_ptr2335
  call void @oat_array_bounds_check( i32 %len2336, i32 %_lhs2329 )
  %array_dereferenced2337 = load i32* %elt_ptr2334
  %elt_ptr2338 = getelementptr i32 %array_dereferenced2337, i32 0, i32 1, i32 %_lhs2329
  %_lhs2339 = load i32* %j2323
  %_lhs2340 = load i32* %i2320
  %len_ptr2341 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a3_slot2315, i32 0, i32 0
  %len2342 = load i32* %len_ptr2341
  call void @oat_array_bounds_check( i32 %len2342, i32 %_lhs2340 )
  %array_dereferenced2343 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a3_slot2315
  %elt_ptr2344 = getelementptr i32 %array_dereferenced2343, i32 0, i32 1, i32 %_lhs2340
  %len_ptr2345 = getelementptr i32* %elt_ptr2344, i32 0, i32 0
  %len2346 = load i32* %len_ptr2345
  call void @oat_array_bounds_check( i32 %len2346, i32 %_lhs2339 )
  %array_dereferenced2347 = load i32* %elt_ptr2344
  %elt_ptr2348 = getelementptr i32 %array_dereferenced2347, i32 0, i32 1, i32 %_lhs2339
  %_lhs2349 = load i32* %elt_ptr2348
  %_lhs2350 = load i32* %k2326
  %_lhs2351 = load i32* %i2320
  %len_ptr2352 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a1_slot2319, i32 0, i32 0
  %len2353 = load i32* %len_ptr2352
  call void @oat_array_bounds_check( i32 %len2353, i32 %_lhs2351 )
  %array_dereferenced2354 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a1_slot2319
  %elt_ptr2355 = getelementptr i32 %array_dereferenced2354, i32 0, i32 1, i32 %_lhs2351
  %len_ptr2356 = getelementptr i32* %elt_ptr2355, i32 0, i32 0
  %len2357 = load i32* %len_ptr2356
  call void @oat_array_bounds_check( i32 %len2357, i32 %_lhs2350 )
  %array_dereferenced2358 = load i32* %elt_ptr2355
  %elt_ptr2359 = getelementptr i32 %array_dereferenced2358, i32 0, i32 1, i32 %_lhs2350
  %_lhs2360 = load i32* %elt_ptr2359
  %_lhs2361 = load i32* %j2323
  %_lhs2362 = load i32* %k2326
  %len_ptr2363 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a2_slot2317, i32 0, i32 0
  %len2364 = load i32* %len_ptr2363
  call void @oat_array_bounds_check( i32 %len2364, i32 %_lhs2362 )
  %array_dereferenced2365 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a2_slot2317
  %elt_ptr2366 = getelementptr i32 %array_dereferenced2365, i32 0, i32 1, i32 %_lhs2362
  %len_ptr2367 = getelementptr i32* %elt_ptr2366, i32 0, i32 0
  %len2368 = load i32* %len_ptr2367
  call void @oat_array_bounds_check( i32 %len2368, i32 %_lhs2361 )
  %array_dereferenced2369 = load i32* %elt_ptr2366
  %elt_ptr2370 = getelementptr i32 %array_dereferenced2369, i32 0, i32 1, i32 %_lhs2361
  %_lhs2371 = load i32* %elt_ptr2370
  %bop2372 = mul i32 %_lhs2360, %_lhs2371
  %bop2373 = add i32 %_lhs2349, %bop2372
  store i32 %bop2373, i32* %elt_ptr2338
  %_lhs2374 = load i32* %k2326
  %bop2375 = add i32 %_lhs2374, 1
  store i32 %bop2375, i32* %k2326
  br label %__cond353

__fresh358:
  br label %__post351

__post351:
  %_lhs2376 = load i32* %j2323
  %bop2377 = add i32 %_lhs2376, 1
  store i32 %bop2377, i32* %j2323
  br label %__cond350

__fresh359:
  br label %__post348

__post348:
  %_lhs2378 = load i32* %i2320
  %bop2379 = add i32 %_lhs2378, 1
  store i32 %bop2379, i32* %i2320
  br label %__cond347

__fresh360:
  br label %__post345

__post345:
  ret void
}


define i32 @program (i32 %argc2248, { i32, [ 0 x i8* ] }* %argv2246){

__fresh344:
  %argc_slot2249 = alloca i32
  store i32 %argc2248, i32* %argc_slot2249
  %argv_slot2247 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv2246, { i32, [ 0 x i8* ] }** %argv_slot2247
  %array_ptr2250 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array2251 = bitcast { i32, [ 0 x i32 ] }* %array_ptr2250 to { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* 
  %array_ptr2252 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 3 )
  %array2253 = bitcast { i32, [ 0 x i32 ] }* %array_ptr2252 to { i32, [ 0 x i32 ] }* 
  %index_ptr2254 = getelementptr { i32, [ 0 x i32 ] }* %array2253, i32 0, i32 1, i32 0
  store i32 1, i32* %index_ptr2254
  %index_ptr2255 = getelementptr { i32, [ 0 x i32 ] }* %array2253, i32 0, i32 1, i32 1
  store i32 3, i32* %index_ptr2255
  %index_ptr2256 = getelementptr { i32, [ 0 x i32 ] }* %array2253, i32 0, i32 1, i32 2
  store i32 4, i32* %index_ptr2256
  %index_ptr2257 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array2251, i32 0, i32 1, i32 0
  store { i32, [ 0 x i32 ] }* %array2253, { i32, [ 0 x i32 ] }** %index_ptr2257
  %array_ptr2258 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 3 )
  %array2259 = bitcast { i32, [ 0 x i32 ] }* %array_ptr2258 to { i32, [ 0 x i32 ] }* 
  %index_ptr2260 = getelementptr { i32, [ 0 x i32 ] }* %array2259, i32 0, i32 1, i32 0
  store i32 2, i32* %index_ptr2260
  %index_ptr2261 = getelementptr { i32, [ 0 x i32 ] }* %array2259, i32 0, i32 1, i32 1
  store i32 0, i32* %index_ptr2261
  %index_ptr2262 = getelementptr { i32, [ 0 x i32 ] }* %array2259, i32 0, i32 1, i32 2
  store i32 1, i32* %index_ptr2262
  %index_ptr2263 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array2251, i32 0, i32 1, i32 1
  store { i32, [ 0 x i32 ] }* %array2259, { i32, [ 0 x i32 ] }** %index_ptr2263
  %a2264 = alloca { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }*
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array2251, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a2264
  %array_ptr2265 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 3 )
  %array2266 = bitcast { i32, [ 0 x i32 ] }* %array_ptr2265 to { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* 
  %array_ptr2267 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 4 )
  %array2268 = bitcast { i32, [ 0 x i32 ] }* %array_ptr2267 to { i32, [ 0 x i32 ] }* 
  %index_ptr2269 = getelementptr { i32, [ 0 x i32 ] }* %array2268, i32 0, i32 1, i32 0
  store i32 1, i32* %index_ptr2269
  %index_ptr2270 = getelementptr { i32, [ 0 x i32 ] }* %array2268, i32 0, i32 1, i32 1
  store i32 2, i32* %index_ptr2270
  %index_ptr2271 = getelementptr { i32, [ 0 x i32 ] }* %array2268, i32 0, i32 1, i32 2
  store i32 3, i32* %index_ptr2271
  %index_ptr2272 = getelementptr { i32, [ 0 x i32 ] }* %array2268, i32 0, i32 1, i32 3
  store i32 1, i32* %index_ptr2272
  %index_ptr2273 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array2266, i32 0, i32 1, i32 0
  store { i32, [ 0 x i32 ] }* %array2268, { i32, [ 0 x i32 ] }** %index_ptr2273
  %array_ptr2274 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 4 )
  %array2275 = bitcast { i32, [ 0 x i32 ] }* %array_ptr2274 to { i32, [ 0 x i32 ] }* 
  %index_ptr2276 = getelementptr { i32, [ 0 x i32 ] }* %array2275, i32 0, i32 1, i32 0
  store i32 2, i32* %index_ptr2276
  %index_ptr2277 = getelementptr { i32, [ 0 x i32 ] }* %array2275, i32 0, i32 1, i32 1
  store i32 2, i32* %index_ptr2277
  %index_ptr2278 = getelementptr { i32, [ 0 x i32 ] }* %array2275, i32 0, i32 1, i32 2
  store i32 2, i32* %index_ptr2278
  %index_ptr2279 = getelementptr { i32, [ 0 x i32 ] }* %array2275, i32 0, i32 1, i32 3
  store i32 2, i32* %index_ptr2279
  %index_ptr2280 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array2266, i32 0, i32 1, i32 1
  store { i32, [ 0 x i32 ] }* %array2275, { i32, [ 0 x i32 ] }** %index_ptr2280
  %array_ptr2281 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 4 )
  %array2282 = bitcast { i32, [ 0 x i32 ] }* %array_ptr2281 to { i32, [ 0 x i32 ] }* 
  %index_ptr2283 = getelementptr { i32, [ 0 x i32 ] }* %array2282, i32 0, i32 1, i32 0
  store i32 3, i32* %index_ptr2283
  %index_ptr2284 = getelementptr { i32, [ 0 x i32 ] }* %array2282, i32 0, i32 1, i32 1
  store i32 2, i32* %index_ptr2284
  %index_ptr2285 = getelementptr { i32, [ 0 x i32 ] }* %array2282, i32 0, i32 1, i32 2
  store i32 1, i32* %index_ptr2285
  %index_ptr2286 = getelementptr { i32, [ 0 x i32 ] }* %array2282, i32 0, i32 1, i32 3
  store i32 4, i32* %index_ptr2286
  %index_ptr2287 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array2266, i32 0, i32 1, i32 2
  store { i32, [ 0 x i32 ] }* %array2282, { i32, [ 0 x i32 ] }** %index_ptr2287
  %b2288 = alloca { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }*
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array2266, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %b2288
  %array_ptr2289 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array2290 = bitcast { i32, [ 0 x i32 ] }* %array_ptr2289 to { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* 
  %array_ptr2291 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 4 )
  %array2292 = bitcast { i32, [ 0 x i32 ] }* %array_ptr2291 to { i32, [ 0 x i32 ] }* 
  %index_ptr2293 = getelementptr { i32, [ 0 x i32 ] }* %array2292, i32 0, i32 1, i32 0
  store i32 0, i32* %index_ptr2293
  %index_ptr2294 = getelementptr { i32, [ 0 x i32 ] }* %array2292, i32 0, i32 1, i32 1
  store i32 0, i32* %index_ptr2294
  %index_ptr2295 = getelementptr { i32, [ 0 x i32 ] }* %array2292, i32 0, i32 1, i32 2
  store i32 0, i32* %index_ptr2295
  %index_ptr2296 = getelementptr { i32, [ 0 x i32 ] }* %array2292, i32 0, i32 1, i32 3
  store i32 0, i32* %index_ptr2296
  %index_ptr2297 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array2290, i32 0, i32 1, i32 0
  store { i32, [ 0 x i32 ] }* %array2292, { i32, [ 0 x i32 ] }** %index_ptr2297
  %array_ptr2298 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 4 )
  %array2299 = bitcast { i32, [ 0 x i32 ] }* %array_ptr2298 to { i32, [ 0 x i32 ] }* 
  %index_ptr2300 = getelementptr { i32, [ 0 x i32 ] }* %array2299, i32 0, i32 1, i32 0
  store i32 0, i32* %index_ptr2300
  %index_ptr2301 = getelementptr { i32, [ 0 x i32 ] }* %array2299, i32 0, i32 1, i32 1
  store i32 0, i32* %index_ptr2301
  %index_ptr2302 = getelementptr { i32, [ 0 x i32 ] }* %array2299, i32 0, i32 1, i32 2
  store i32 0, i32* %index_ptr2302
  %index_ptr2303 = getelementptr { i32, [ 0 x i32 ] }* %array2299, i32 0, i32 1, i32 3
  store i32 0, i32* %index_ptr2303
  %index_ptr2304 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array2290, i32 0, i32 1, i32 1
  store { i32, [ 0 x i32 ] }* %array2299, { i32, [ 0 x i32 ] }** %index_ptr2304
  %c2305 = alloca { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }*
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array2290, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %c2305
  %_lhs2308 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %c2305
  %_lhs2307 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %b2288
  %_lhs2306 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a2264
  call void @matrix_Mult( { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %_lhs2306, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %_lhs2307, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %_lhs2308 )
  %_lhs2309 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %c2305
  call void @prnNx4( { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %_lhs2309, i32 2 )
  %_lhs2312 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %c2305
  %_lhs2311 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %b2288
  %_lhs2310 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a2264
  call void @matrix_MultAlt( { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %_lhs2310, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %_lhs2311, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %_lhs2312 )
  %_lhs2313 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %c2305
  call void @prnNx4( { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %_lhs2313, i32 2 )
  ret i32 0
}


