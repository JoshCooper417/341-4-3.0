declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@_oat_string2385.str. = private unnamed_addr constant [ 2 x i8 ] c " \00", align 4
@_oat_string2385 = global i8* getelementptr inbounds ([ 2 x i8 ]* @_oat_string2385.str., i32 0, i32 0), align 4
define void @oat_init (){

__fresh415:
  ret void
}


define i32 @program (i32 %argc2341, { i32, [ 0 x i8* ] }* %argv2339){

__fresh414:
  %argc_slot2342 = alloca i32
  store i32 %argc2341, i32* %argc_slot2342
  %argv_slot2340 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv2339, { i32, [ 0 x i8* ] }** %argv_slot2340
  store i32 1, i32* %i2343
  %a2350 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %array2345, { i32, [ 0 x i32 ] }** %a2350
  %len_ptr2351 = getelementptr { i32, [ 0 x i32 ] }** %a2350, i32 0, i32 0
  %len2352 = load i32* %len_ptr2351
  call void @oat_array_bounds_check( i32 %len2352, i32 0 )
  %array_dereferenced2353 = load { i32, [ 0 x i32 ] }** %a2350
  %elt_ptr2354 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2353, i32 0, i32 1, i32 0
  store i32 121, i32* %elt_ptr2354
  %len_ptr2355 = getelementptr { i32, [ 0 x i32 ] }** %a2350, i32 0, i32 0
  %len2356 = load i32* %len_ptr2355
  call void @oat_array_bounds_check( i32 %len2356, i32 1 )
  %array_dereferenced2357 = load { i32, [ 0 x i32 ] }** %a2350
  %elt_ptr2358 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2357, i32 0, i32 1, i32 1
  store i32 125, i32* %elt_ptr2358
  %len_ptr2359 = getelementptr { i32, [ 0 x i32 ] }** %a2350, i32 0, i32 0
  %len2360 = load i32* %len_ptr2359
  call void @oat_array_bounds_check( i32 %len2360, i32 2 )
  %array_dereferenced2361 = load { i32, [ 0 x i32 ] }** %a2350
  %elt_ptr2362 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2361, i32 0, i32 1, i32 2
  store i32 120, i32* %elt_ptr2362
  %len_ptr2363 = getelementptr { i32, [ 0 x i32 ] }** %a2350, i32 0, i32 0
  %len2364 = load i32* %len_ptr2363
  call void @oat_array_bounds_check( i32 %len2364, i32 3 )
  %array_dereferenced2365 = load { i32, [ 0 x i32 ] }** %a2350
  %elt_ptr2366 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2365, i32 0, i32 1, i32 3
  store i32 111, i32* %elt_ptr2366
  %len_ptr2367 = getelementptr { i32, [ 0 x i32 ] }** %a2350, i32 0, i32 0
  %len2368 = load i32* %len_ptr2367
  call void @oat_array_bounds_check( i32 %len2368, i32 4 )
  %array_dereferenced2369 = load { i32, [ 0 x i32 ] }** %a2350
  %elt_ptr2370 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2369, i32 0, i32 1, i32 4
  store i32 116, i32* %elt_ptr2370
  %len_ptr2371 = getelementptr { i32, [ 0 x i32 ] }** %a2350, i32 0, i32 0
  %len2372 = load i32* %len_ptr2371
  call void @oat_array_bounds_check( i32 %len2372, i32 5 )
  %array_dereferenced2373 = load { i32, [ 0 x i32 ] }** %a2350
  %elt_ptr2374 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2373, i32 0, i32 1, i32 5
  store i32 110, i32* %elt_ptr2374
  %len_ptr2375 = getelementptr { i32, [ 0 x i32 ] }** %a2350, i32 0, i32 0
  %len2376 = load i32* %len_ptr2375
  call void @oat_array_bounds_check( i32 %len2376, i32 6 )
  %array_dereferenced2377 = load { i32, [ 0 x i32 ] }** %a2350
  %elt_ptr2378 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2377, i32 0, i32 1, i32 6
  store i32 117, i32* %elt_ptr2378
  %len_ptr2379 = getelementptr { i32, [ 0 x i32 ] }** %a2350, i32 0, i32 0
  %len2380 = load i32* %len_ptr2379
  call void @oat_array_bounds_check( i32 %len2380, i32 7 )
  %array_dereferenced2381 = load { i32, [ 0 x i32 ] }** %a2350
  %elt_ptr2382 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2381, i32 0, i32 1, i32 7
  store i32 119, i32* %elt_ptr2382
  %_lhs2383 = load { i32, [ 0 x i32 ] }** %a2350
  %ret2384 = call i8* @string_of_array ( { i32, [ 0 x i32 ] }* %_lhs2383 )
  call void @print_string( i8* %ret2384 )
  %strval2386 = load i8** @_oat_string2385
  call void @print_string( i8* %strval2386 )
  %_lhs2388 = load { i32, [ 0 x i32 ] }** %a2350
  %len_ptr2389 = getelementptr { i32, [ 0 x i32 ] }* %_lhs2388, i32 0, i32 0
  %len2390 = load i32* %len_ptr2389
  %_lhs2387 = load { i32, [ 0 x i32 ] }** %a2350
  call void @bubble_sort( { i32, [ 0 x i32 ] }* %_lhs2387, i32 %len2390 )
  %_lhs2391 = load { i32, [ 0 x i32 ] }** %a2350
  %ret2392 = call i8* @string_of_array ( { i32, [ 0 x i32 ] }* %_lhs2391 )
  call void @print_string( i8* %ret2392 )
  %unop2393 = sub i32 0, 1
  ret i32 %unop2393
}


define void @bubble_sort ({ i32, [ 0 x i32 ] }* %numbers2284, i32 %array_size2282){

__fresh404:
  %numbers_slot2285 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %numbers2284, { i32, [ 0 x i32 ] }** %numbers_slot2285
  %array_size_slot2283 = alloca i32
  store i32 %array_size2282, i32* %array_size_slot2283
  %temp2286 = alloca i32
  store i32 0, i32* %temp2286
  %_lhs2287 = load i32* %array_size_slot2283
  %bop2288 = sub i32 %_lhs2287, 1
  %i2289 = alloca i32
  store i32 %bop2288, i32* %i2289
  br label %__cond397

__cond397:
  %_lhs2290 = load i32* %i2289
  %bop2291 = icmp sgt i32 %_lhs2290, 0
  br i1 %bop2291, label %__body396, label %__post395

__fresh405:
  br label %__body396

__body396:
  %j2292 = alloca i32
  store i32 1, i32* %j2292
  br label %__cond400

__cond400:
  %_lhs2293 = load i32* %j2292
  %_lhs2294 = load i32* %i2289
  %bop2295 = icmp sle i32 %_lhs2293, %_lhs2294
  br i1 %bop2295, label %__body399, label %__post398

__fresh406:
  br label %__body399

__body399:
  %_lhs2296 = load i32* %j2292
  %bop2297 = sub i32 %_lhs2296, 1
  %len_ptr2298 = getelementptr { i32, [ 0 x i32 ] }** %numbers_slot2285, i32 0, i32 0
  %len2299 = load i32* %len_ptr2298
  call void @oat_array_bounds_check( i32 %len2299, i32 %bop2297 )
  %array_dereferenced2300 = load { i32, [ 0 x i32 ] }** %numbers_slot2285
  %elt_ptr2301 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2300, i32 0, i32 1, i32 %bop2297
  %_lhs2302 = load i32* %elt_ptr2301
  %_lhs2303 = load i32* %j2292
  %len_ptr2304 = getelementptr { i32, [ 0 x i32 ] }** %numbers_slot2285, i32 0, i32 0
  %len2305 = load i32* %len_ptr2304
  call void @oat_array_bounds_check( i32 %len2305, i32 %_lhs2303 )
  %array_dereferenced2306 = load { i32, [ 0 x i32 ] }** %numbers_slot2285
  %elt_ptr2307 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2306, i32 0, i32 1, i32 %_lhs2303
  %_lhs2308 = load i32* %elt_ptr2307
  %bop2309 = icmp sgt i32 %_lhs2302, %_lhs2308
  br i1 %bop2309, label %__then403, label %__else402

__fresh407:
  br label %__then403

__then403:
  %_lhs2310 = load i32* %j2292
  %bop2311 = sub i32 %_lhs2310, 1
  %len_ptr2312 = getelementptr { i32, [ 0 x i32 ] }** %numbers_slot2285, i32 0, i32 0
  %len2313 = load i32* %len_ptr2312
  call void @oat_array_bounds_check( i32 %len2313, i32 %bop2311 )
  %array_dereferenced2314 = load { i32, [ 0 x i32 ] }** %numbers_slot2285
  %elt_ptr2315 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2314, i32 0, i32 1, i32 %bop2311
  %_lhs2316 = load i32* %elt_ptr2315
  store i32 %_lhs2316, i32* %temp2286
  %_lhs2317 = load i32* %j2292
  %bop2318 = sub i32 %_lhs2317, 1
  %len_ptr2319 = getelementptr { i32, [ 0 x i32 ] }** %numbers_slot2285, i32 0, i32 0
  %len2320 = load i32* %len_ptr2319
  call void @oat_array_bounds_check( i32 %len2320, i32 %bop2318 )
  %array_dereferenced2321 = load { i32, [ 0 x i32 ] }** %numbers_slot2285
  %elt_ptr2322 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2321, i32 0, i32 1, i32 %bop2318
  %_lhs2323 = load i32* %j2292
  %len_ptr2324 = getelementptr { i32, [ 0 x i32 ] }** %numbers_slot2285, i32 0, i32 0
  %len2325 = load i32* %len_ptr2324
  call void @oat_array_bounds_check( i32 %len2325, i32 %_lhs2323 )
  %array_dereferenced2326 = load { i32, [ 0 x i32 ] }** %numbers_slot2285
  %elt_ptr2327 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2326, i32 0, i32 1, i32 %_lhs2323
  %_lhs2328 = load i32* %elt_ptr2327
  store i32 %_lhs2328, i32* %elt_ptr2322
  %_lhs2329 = load i32* %j2292
  %len_ptr2330 = getelementptr { i32, [ 0 x i32 ] }** %numbers_slot2285, i32 0, i32 0
  %len2331 = load i32* %len_ptr2330
  call void @oat_array_bounds_check( i32 %len2331, i32 %_lhs2329 )
  %array_dereferenced2332 = load { i32, [ 0 x i32 ] }** %numbers_slot2285
  %elt_ptr2333 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2332, i32 0, i32 1, i32 %_lhs2329
  %_lhs2334 = load i32* %temp2286
  store i32 %_lhs2334, i32* %elt_ptr2333
  br label %__merge401

__fresh408:
  br label %__else402

__else402:
  br label %__merge401

__merge401:
  %_lhs2335 = load i32* %j2292
  %bop2336 = add i32 %_lhs2335, 1
  store i32 %bop2336, i32* %j2292
  br label %__cond400

__fresh409:
  br label %__post398

__post398:
  %_lhs2337 = load i32* %i2289
  %bop2338 = sub i32 %_lhs2337, 1
  store i32 %bop2338, i32* %i2289
  br label %__cond397

__fresh410:
  br label %__post395

__post395:
  ret void
}


