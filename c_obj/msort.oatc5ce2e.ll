declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@_oat_string2251.str. = private unnamed_addr constant [ 2 x i8 ] c " \00", align 4
@_oat_string2251 = global i8* getelementptr inbounds ([ 2 x i8 ]* @_oat_string2251.str., i32 0, i32 0), align 4
@_oat_string2247.str. = private unnamed_addr constant [ 2 x i8 ] c " \00", align 4
@_oat_string2247 = global i8* getelementptr inbounds ([ 2 x i8 ]* @_oat_string2247.str., i32 0, i32 0), align 4
define void @oat_init (){

__fresh402:
  ret void
}


define void @merge ({ i32, [ 0 x i32 ] }* %a2287, i32 %low2285, i32 %high2283, i32 %mid2281){

__fresh391:
  %a_slot2288 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %a2287, { i32, [ 0 x i32 ] }** %a_slot2288
  %low_slot2286 = alloca i32
  store i32 %low2285, i32* %low_slot2286
  %high_slot2284 = alloca i32
  store i32 %high2283, i32* %high_slot2284
  %mid_slot2282 = alloca i32
  store i32 %mid2281, i32* %mid_slot2282
  %i2289 = alloca i32
  store i32 0, i32* %i2289
  %j2290 = alloca i32
  store i32 0, i32* %j2290
  %k2291 = alloca i32
  store i32 0, i32* %k2291
  %array_ptr2293 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 50 )
  %array2294 = bitcast { i32, [ 0 x i32 ] }* %array_ptr2293 to { i32, [ 0 x i32 ] }* 
  store i32 1, i32* %i2298
  %c2300 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %array2294, { i32, [ 0 x i32 ] }** %c2300
  %_lhs2301 = load i32* %low_slot2286
  store i32 %_lhs2301, i32* %i2289
  %_lhs2302 = load i32* %mid_slot2282
  %bop2303 = add i32 %_lhs2302, 1
  store i32 %bop2303, i32* %j2290
  %_lhs2304 = load i32* %low_slot2286
  store i32 %_lhs2304, i32* %k2291
  br label %__cond378

__cond378:
  %_lhs2305 = load i32* %i2289
  %_lhs2306 = load i32* %mid_slot2282
  %bop2307 = icmp sle i32 %_lhs2305, %_lhs2306
  %_lhs2308 = load i32* %j2290
  %_lhs2309 = load i32* %high_slot2284
  %bop2310 = icmp sle i32 %_lhs2308, %_lhs2309
  %bop2311 = and i1 %bop2307, %bop2310
  br i1 %bop2311, label %__body377, label %__post376

__fresh392:
  br label %__body377

__body377:
  %_lhs2312 = load i32* %i2289
  %len_ptr2313 = getelementptr { i32, [ 0 x i32 ] }** %a_slot2288, i32 0, i32 0
  %len2314 = load i32* %len_ptr2313
  call void @oat_array_bounds_check( i32 %len2314, i32 %_lhs2312 )
  %array_dereferenced2315 = load { i32, [ 0 x i32 ] }** %a_slot2288
  %elt_ptr2316 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2315, i32 0, i32 1, i32 %_lhs2312
  %_lhs2317 = load i32* %elt_ptr2316
  %_lhs2318 = load i32* %j2290
  %len_ptr2319 = getelementptr { i32, [ 0 x i32 ] }** %a_slot2288, i32 0, i32 0
  %len2320 = load i32* %len_ptr2319
  call void @oat_array_bounds_check( i32 %len2320, i32 %_lhs2318 )
  %array_dereferenced2321 = load { i32, [ 0 x i32 ] }** %a_slot2288
  %elt_ptr2322 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2321, i32 0, i32 1, i32 %_lhs2318
  %_lhs2323 = load i32* %elt_ptr2322
  %bop2324 = icmp slt i32 %_lhs2317, %_lhs2323
  br i1 %bop2324, label %__then381, label %__else380

__fresh393:
  br label %__then381

__then381:
  %_lhs2325 = load i32* %k2291
  %len_ptr2326 = getelementptr { i32, [ 0 x i32 ] }** %c2300, i32 0, i32 0
  %len2327 = load i32* %len_ptr2326
  call void @oat_array_bounds_check( i32 %len2327, i32 %_lhs2325 )
  %array_dereferenced2328 = load { i32, [ 0 x i32 ] }** %c2300
  %elt_ptr2329 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2328, i32 0, i32 1, i32 %_lhs2325
  %_lhs2330 = load i32* %i2289
  %len_ptr2331 = getelementptr { i32, [ 0 x i32 ] }** %a_slot2288, i32 0, i32 0
  %len2332 = load i32* %len_ptr2331
  call void @oat_array_bounds_check( i32 %len2332, i32 %_lhs2330 )
  %array_dereferenced2333 = load { i32, [ 0 x i32 ] }** %a_slot2288
  %elt_ptr2334 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2333, i32 0, i32 1, i32 %_lhs2330
  %_lhs2335 = load i32* %elt_ptr2334
  store i32 %_lhs2335, i32* %elt_ptr2329
  %_lhs2336 = load i32* %k2291
  %bop2337 = add i32 %_lhs2336, 1
  store i32 %bop2337, i32* %k2291
  %_lhs2338 = load i32* %i2289
  %bop2339 = add i32 %_lhs2338, 1
  store i32 %bop2339, i32* %i2289
  br label %__merge379

__fresh394:
  br label %__else380

__else380:
  %_lhs2340 = load i32* %k2291
  %len_ptr2341 = getelementptr { i32, [ 0 x i32 ] }** %c2300, i32 0, i32 0
  %len2342 = load i32* %len_ptr2341
  call void @oat_array_bounds_check( i32 %len2342, i32 %_lhs2340 )
  %array_dereferenced2343 = load { i32, [ 0 x i32 ] }** %c2300
  %elt_ptr2344 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2343, i32 0, i32 1, i32 %_lhs2340
  %_lhs2345 = load i32* %j2290
  %len_ptr2346 = getelementptr { i32, [ 0 x i32 ] }** %a_slot2288, i32 0, i32 0
  %len2347 = load i32* %len_ptr2346
  call void @oat_array_bounds_check( i32 %len2347, i32 %_lhs2345 )
  %array_dereferenced2348 = load { i32, [ 0 x i32 ] }** %a_slot2288
  %elt_ptr2349 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2348, i32 0, i32 1, i32 %_lhs2345
  %_lhs2350 = load i32* %elt_ptr2349
  store i32 %_lhs2350, i32* %elt_ptr2344
  %_lhs2351 = load i32* %k2291
  %bop2352 = add i32 %_lhs2351, 1
  store i32 %bop2352, i32* %k2291
  %_lhs2353 = load i32* %j2290
  %bop2354 = add i32 %_lhs2353, 1
  store i32 %bop2354, i32* %j2290
  br label %__merge379

__merge379:
  br label %__cond378

__fresh395:
  br label %__post376

__post376:
  br label %__cond384

__cond384:
  %_lhs2355 = load i32* %i2289
  %_lhs2356 = load i32* %mid_slot2282
  %bop2357 = icmp sle i32 %_lhs2355, %_lhs2356
  br i1 %bop2357, label %__body383, label %__post382

__fresh396:
  br label %__body383

__body383:
  %_lhs2358 = load i32* %k2291
  %len_ptr2359 = getelementptr { i32, [ 0 x i32 ] }** %c2300, i32 0, i32 0
  %len2360 = load i32* %len_ptr2359
  call void @oat_array_bounds_check( i32 %len2360, i32 %_lhs2358 )
  %array_dereferenced2361 = load { i32, [ 0 x i32 ] }** %c2300
  %elt_ptr2362 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2361, i32 0, i32 1, i32 %_lhs2358
  %_lhs2363 = load i32* %i2289
  %len_ptr2364 = getelementptr { i32, [ 0 x i32 ] }** %a_slot2288, i32 0, i32 0
  %len2365 = load i32* %len_ptr2364
  call void @oat_array_bounds_check( i32 %len2365, i32 %_lhs2363 )
  %array_dereferenced2366 = load { i32, [ 0 x i32 ] }** %a_slot2288
  %elt_ptr2367 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2366, i32 0, i32 1, i32 %_lhs2363
  %_lhs2368 = load i32* %elt_ptr2367
  store i32 %_lhs2368, i32* %elt_ptr2362
  %_lhs2369 = load i32* %k2291
  %bop2370 = add i32 %_lhs2369, 1
  store i32 %bop2370, i32* %k2291
  %_lhs2371 = load i32* %i2289
  %bop2372 = add i32 %_lhs2371, 1
  store i32 %bop2372, i32* %i2289
  br label %__cond384

__fresh397:
  br label %__post382

__post382:
  br label %__cond387

__cond387:
  %_lhs2373 = load i32* %j2290
  %_lhs2374 = load i32* %high_slot2284
  %bop2375 = icmp sle i32 %_lhs2373, %_lhs2374
  br i1 %bop2375, label %__body386, label %__post385

__fresh398:
  br label %__body386

__body386:
  %_lhs2376 = load i32* %k2291
  %len_ptr2377 = getelementptr { i32, [ 0 x i32 ] }** %c2300, i32 0, i32 0
  %len2378 = load i32* %len_ptr2377
  call void @oat_array_bounds_check( i32 %len2378, i32 %_lhs2376 )
  %array_dereferenced2379 = load { i32, [ 0 x i32 ] }** %c2300
  %elt_ptr2380 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2379, i32 0, i32 1, i32 %_lhs2376
  %_lhs2381 = load i32* %j2290
  %len_ptr2382 = getelementptr { i32, [ 0 x i32 ] }** %a_slot2288, i32 0, i32 0
  %len2383 = load i32* %len_ptr2382
  call void @oat_array_bounds_check( i32 %len2383, i32 %_lhs2381 )
  %array_dereferenced2384 = load { i32, [ 0 x i32 ] }** %a_slot2288
  %elt_ptr2385 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2384, i32 0, i32 1, i32 %_lhs2381
  %_lhs2386 = load i32* %elt_ptr2385
  store i32 %_lhs2386, i32* %elt_ptr2380
  %_lhs2387 = load i32* %k2291
  %bop2388 = add i32 %_lhs2387, 1
  store i32 %bop2388, i32* %k2291
  %_lhs2389 = load i32* %j2290
  %bop2390 = add i32 %_lhs2389, 1
  store i32 %bop2390, i32* %j2290
  br label %__cond387

__fresh399:
  br label %__post385

__post385:
  %_lhs2391 = load i32* %low_slot2286
  store i32 %_lhs2391, i32* %i2289
  br label %__cond390

__cond390:
  %_lhs2392 = load i32* %i2289
  %_lhs2393 = load i32* %k2291
  %bop2394 = icmp slt i32 %_lhs2392, %_lhs2393
  br i1 %bop2394, label %__body389, label %__post388

__fresh400:
  br label %__body389

__body389:
  %_lhs2395 = load i32* %i2289
  %len_ptr2396 = getelementptr { i32, [ 0 x i32 ] }** %a_slot2288, i32 0, i32 0
  %len2397 = load i32* %len_ptr2396
  call void @oat_array_bounds_check( i32 %len2397, i32 %_lhs2395 )
  %array_dereferenced2398 = load { i32, [ 0 x i32 ] }** %a_slot2288
  %elt_ptr2399 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2398, i32 0, i32 1, i32 %_lhs2395
  %_lhs2400 = load i32* %i2289
  %len_ptr2401 = getelementptr { i32, [ 0 x i32 ] }** %c2300, i32 0, i32 0
  %len2402 = load i32* %len_ptr2401
  call void @oat_array_bounds_check( i32 %len2402, i32 %_lhs2400 )
  %array_dereferenced2403 = load { i32, [ 0 x i32 ] }** %c2300
  %elt_ptr2404 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2403, i32 0, i32 1, i32 %_lhs2400
  %_lhs2405 = load i32* %elt_ptr2404
  store i32 %_lhs2405, i32* %elt_ptr2399
  %_lhs2406 = load i32* %i2289
  %bop2407 = add i32 %_lhs2406, 1
  store i32 %bop2407, i32* %i2289
  br label %__cond390

__fresh401:
  br label %__post388

__post388:
  ret void
}


define void @oat_mergesort ({ i32, [ 0 x i32 ] }* %a2260, i32 %low2258, i32 %high2256){

__fresh370:
  %a_slot2261 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %a2260, { i32, [ 0 x i32 ] }** %a_slot2261
  %low_slot2259 = alloca i32
  store i32 %low2258, i32* %low_slot2259
  %high_slot2257 = alloca i32
  store i32 %high2256, i32* %high_slot2257
  %mid2262 = alloca i32
  store i32 0, i32* %mid2262
  %_lhs2263 = load i32* %low_slot2259
  %_lhs2264 = load i32* %high_slot2257
  %bop2265 = icmp slt i32 %_lhs2263, %_lhs2264
  br i1 %bop2265, label %__then369, label %__else368

__fresh371:
  br label %__then369

__then369:
  %_lhs2266 = load i32* %low_slot2259
  %_lhs2267 = load i32* %high_slot2257
  %bop2268 = add i32 %_lhs2266, %_lhs2267
  %bop2269 = ashr i32 %bop2268, 1
  store i32 %bop2269, i32* %mid2262
  %_lhs2272 = load i32* %mid2262
  %_lhs2271 = load i32* %low_slot2259
  %_lhs2270 = load { i32, [ 0 x i32 ] }** %a_slot2261
  call void @oat_mergesort( { i32, [ 0 x i32 ] }* %_lhs2270, i32 %_lhs2271, i32 %_lhs2272 )
  %_lhs2276 = load i32* %high_slot2257
  %_lhs2274 = load i32* %mid2262
  %bop2275 = add i32 %_lhs2274, 1
  %_lhs2273 = load { i32, [ 0 x i32 ] }** %a_slot2261
  call void @oat_mergesort( { i32, [ 0 x i32 ] }* %_lhs2273, i32 %bop2275, i32 %_lhs2276 )
  %_lhs2280 = load i32* %mid2262
  %_lhs2279 = load i32* %high_slot2257
  %_lhs2278 = load i32* %low_slot2259
  %_lhs2277 = load { i32, [ 0 x i32 ] }** %a_slot2261
  call void @merge( { i32, [ 0 x i32 ] }* %_lhs2277, i32 %_lhs2278, i32 %_lhs2279, i32 %_lhs2280 )
  br label %__merge367

__fresh372:
  br label %__else368

__else368:
  br label %__merge367

__merge367:
  ret void
}


define i32 @program (i32 %argc2228, { i32, [ 0 x i8* ] }* %argv2226){

__fresh366:
  %argc_slot2229 = alloca i32
  store i32 %argc2228, i32* %argc_slot2229
  %argv_slot2227 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv2226, { i32, [ 0 x i8* ] }** %argv_slot2227
  %i2230 = alloca i32
  store i32 0, i32* %i2230
  %array_ptr2231 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 10 )
  %array2232 = bitcast { i32, [ 0 x i32 ] }* %array_ptr2231 to { i32, [ 0 x i32 ] }* 
  %index_ptr2233 = getelementptr { i32, [ 0 x i32 ] }* %array2232, i32 0, i32 1, i32 0
  store i32 126, i32* %index_ptr2233
  %index_ptr2234 = getelementptr { i32, [ 0 x i32 ] }* %array2232, i32 0, i32 1, i32 1
  store i32 125, i32* %index_ptr2234
  %index_ptr2235 = getelementptr { i32, [ 0 x i32 ] }* %array2232, i32 0, i32 1, i32 2
  store i32 124, i32* %index_ptr2235
  %index_ptr2236 = getelementptr { i32, [ 0 x i32 ] }* %array2232, i32 0, i32 1, i32 3
  store i32 123, i32* %index_ptr2236
  %index_ptr2237 = getelementptr { i32, [ 0 x i32 ] }* %array2232, i32 0, i32 1, i32 4
  store i32 122, i32* %index_ptr2237
  %index_ptr2238 = getelementptr { i32, [ 0 x i32 ] }* %array2232, i32 0, i32 1, i32 5
  store i32 121, i32* %index_ptr2238
  %index_ptr2239 = getelementptr { i32, [ 0 x i32 ] }* %array2232, i32 0, i32 1, i32 6
  store i32 120, i32* %index_ptr2239
  %index_ptr2240 = getelementptr { i32, [ 0 x i32 ] }* %array2232, i32 0, i32 1, i32 7
  store i32 119, i32* %index_ptr2240
  %index_ptr2241 = getelementptr { i32, [ 0 x i32 ] }* %array2232, i32 0, i32 1, i32 8
  store i32 118, i32* %index_ptr2241
  %index_ptr2242 = getelementptr { i32, [ 0 x i32 ] }* %array2232, i32 0, i32 1, i32 9
  store i32 117, i32* %index_ptr2242
  %a2243 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %array2232, { i32, [ 0 x i32 ] }** %a2243
  %_lhs2244 = load { i32, [ 0 x i32 ] }** %a2243
  %ret2245 = call i8* @string_of_array ( { i32, [ 0 x i32 ] }* %_lhs2244 )
  call void @print_string( i8* %ret2245 )
  %_lhs2246 = load { i32, [ 0 x i32 ] }** %a2243
  call void @oat_mergesort( { i32, [ 0 x i32 ] }* %_lhs2246, i32 0, i32 9 )
  %strval2248 = load i8** @_oat_string2247
  call void @print_string( i8* %strval2248 )
  %_lhs2249 = load { i32, [ 0 x i32 ] }** %a2243
  %ret2250 = call i8* @string_of_array ( { i32, [ 0 x i32 ] }* %_lhs2249 )
  call void @print_string( i8* %ret2250 )
  %strval2252 = load i8** @_oat_string2251
  call void @print_string( i8* %strval2252 )
  %_lhs2253 = load i32* %i2230
  ret i32 %_lhs2253
}


