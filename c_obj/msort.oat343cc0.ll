declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@_oat_string2242.str. = private unnamed_addr constant [ 2 x i8 ] c " \00", align 4
@_oat_string2242 = global i8* getelementptr inbounds ([ 2 x i8 ]* @_oat_string2242.str., i32 0, i32 0), align 4
@_oat_string2238.str. = private unnamed_addr constant [ 2 x i8 ] c " \00", align 4
@_oat_string2238 = global i8* getelementptr inbounds ([ 2 x i8 ]* @_oat_string2238.str., i32 0, i32 0), align 4
define void @oat_init (){

__fresh878:
  ret void
}


define void @merge ({ i32, [ 0 x i32 ] }* %a2278, i32 %low2276, i32 %high2274, i32 %mid2272){

__fresh863:
  %a_slot2279 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %a2278, { i32, [ 0 x i32 ] }** %a_slot2279
  %low_slot2277 = alloca i32
  store i32 %low2276, i32* %low_slot2277
  %high_slot2275 = alloca i32
  store i32 %high2274, i32* %high_slot2275
  %mid_slot2273 = alloca i32
  store i32 %mid2272, i32* %mid_slot2273
  %i2280 = alloca i32
  store i32 0, i32* %i2280
  %j2281 = alloca i32
  store i32 0, i32* %j2281
  %k2282 = alloca i32
  store i32 0, i32* %k2282
  %array_ptr2284 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 50 )
  %array2285 = bitcast { i32, [ 0 x i32 ] }* %array_ptr2284 to { i32, [ 0 x i32 ] }* 
  %i2289 = alloca i32
  store i32 1, i32* %i2289
  %i2283 = load i32* %i2289
  br label %__check846

__fresh864:
  br label %__check846

__check846:
  br label %__end845

__fresh865:
  %cmp_op2287 = icmp slt i32 %i2283, 50
  br i32 %cmp_op2287, label %__body847, label %__end845

__fresh866:
  br label %__body847

__body847:
  %elem_ptr2286 = getelementptr { i32, [ 0 x i32 ] }* %array2285, i32 0, i32 1, i32 %i2283
  store i32 0, i32* %elem_ptr2286
  %index_op2288 = add i32 %i2283, 1
  br label %__check846

__fresh867:
  br label %__end845

__end845:
  %c2291 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %array2285, { i32, [ 0 x i32 ] }** %c2291
  %_lhs2292 = load i32* %low_slot2277
  store i32 %_lhs2292, i32* %i2280
  %_lhs2293 = load i32* %mid_slot2273
  %bop2294 = add i32 %_lhs2293, 1
  store i32 %bop2294, i32* %j2281
  %_lhs2295 = load i32* %low_slot2277
  store i32 %_lhs2295, i32* %k2282
  br label %__cond850

__cond850:
  %_lhs2296 = load i32* %i2280
  %_lhs2297 = load i32* %mid_slot2273
  %bop2298 = icmp sle i32 %_lhs2296, %_lhs2297
  %_lhs2299 = load i32* %j2281
  %_lhs2300 = load i32* %high_slot2275
  %bop2301 = icmp sle i32 %_lhs2299, %_lhs2300
  %bop2302 = and i1 %bop2298, %bop2301
  br i1 %bop2302, label %__body849, label %__post848

__fresh868:
  br label %__body849

__body849:
  %_lhs2303 = load i32* %i2280
  %array_dereferenced2304 = load { i32, [ 0 x i32 ] }** %a_slot2279
  %len_ptr2305 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2304, i32 0, i32 0
  %len2306 = load i32* %len_ptr2305
  call void @oat_array_bounds_check( i32 %len2306, i32 %_lhs2303 )
  %elt_ptr2307 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2304, i32 0, i32 1, i32 %_lhs2303
  %_lhs2308 = load i32* %elt_ptr2307
  %_lhs2309 = load i32* %j2281
  %array_dereferenced2310 = load { i32, [ 0 x i32 ] }** %a_slot2279
  %len_ptr2311 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2310, i32 0, i32 0
  %len2312 = load i32* %len_ptr2311
  call void @oat_array_bounds_check( i32 %len2312, i32 %_lhs2309 )
  %elt_ptr2313 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2310, i32 0, i32 1, i32 %_lhs2309
  %_lhs2314 = load i32* %elt_ptr2313
  %bop2315 = icmp slt i32 %_lhs2308, %_lhs2314
  br i1 %bop2315, label %__then853, label %__else852

__fresh869:
  br label %__then853

__then853:
  %_lhs2316 = load i32* %k2282
  %array_dereferenced2317 = load { i32, [ 0 x i32 ] }** %c2291
  %len_ptr2318 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2317, i32 0, i32 0
  %len2319 = load i32* %len_ptr2318
  call void @oat_array_bounds_check( i32 %len2319, i32 %_lhs2316 )
  %elt_ptr2320 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2317, i32 0, i32 1, i32 %_lhs2316
  %_lhs2321 = load i32* %i2280
  %array_dereferenced2322 = load { i32, [ 0 x i32 ] }** %a_slot2279
  %len_ptr2323 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2322, i32 0, i32 0
  %len2324 = load i32* %len_ptr2323
  call void @oat_array_bounds_check( i32 %len2324, i32 %_lhs2321 )
  %elt_ptr2325 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2322, i32 0, i32 1, i32 %_lhs2321
  %_lhs2326 = load i32* %elt_ptr2325
  store i32 %_lhs2326, i32* %elt_ptr2320
  %_lhs2327 = load i32* %k2282
  %bop2328 = add i32 %_lhs2327, 1
  store i32 %bop2328, i32* %k2282
  %_lhs2329 = load i32* %i2280
  %bop2330 = add i32 %_lhs2329, 1
  store i32 %bop2330, i32* %i2280
  br label %__merge851

__fresh870:
  br label %__else852

__else852:
  %_lhs2331 = load i32* %k2282
  %array_dereferenced2332 = load { i32, [ 0 x i32 ] }** %c2291
  %len_ptr2333 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2332, i32 0, i32 0
  %len2334 = load i32* %len_ptr2333
  call void @oat_array_bounds_check( i32 %len2334, i32 %_lhs2331 )
  %elt_ptr2335 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2332, i32 0, i32 1, i32 %_lhs2331
  %_lhs2336 = load i32* %j2281
  %array_dereferenced2337 = load { i32, [ 0 x i32 ] }** %a_slot2279
  %len_ptr2338 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2337, i32 0, i32 0
  %len2339 = load i32* %len_ptr2338
  call void @oat_array_bounds_check( i32 %len2339, i32 %_lhs2336 )
  %elt_ptr2340 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2337, i32 0, i32 1, i32 %_lhs2336
  %_lhs2341 = load i32* %elt_ptr2340
  store i32 %_lhs2341, i32* %elt_ptr2335
  %_lhs2342 = load i32* %k2282
  %bop2343 = add i32 %_lhs2342, 1
  store i32 %bop2343, i32* %k2282
  %_lhs2344 = load i32* %j2281
  %bop2345 = add i32 %_lhs2344, 1
  store i32 %bop2345, i32* %j2281
  br label %__merge851

__merge851:
  br label %__cond850

__fresh871:
  br label %__post848

__post848:
  br label %__cond856

__cond856:
  %_lhs2346 = load i32* %i2280
  %_lhs2347 = load i32* %mid_slot2273
  %bop2348 = icmp sle i32 %_lhs2346, %_lhs2347
  br i1 %bop2348, label %__body855, label %__post854

__fresh872:
  br label %__body855

__body855:
  %_lhs2349 = load i32* %k2282
  %array_dereferenced2350 = load { i32, [ 0 x i32 ] }** %c2291
  %len_ptr2351 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2350, i32 0, i32 0
  %len2352 = load i32* %len_ptr2351
  call void @oat_array_bounds_check( i32 %len2352, i32 %_lhs2349 )
  %elt_ptr2353 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2350, i32 0, i32 1, i32 %_lhs2349
  %_lhs2354 = load i32* %i2280
  %array_dereferenced2355 = load { i32, [ 0 x i32 ] }** %a_slot2279
  %len_ptr2356 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2355, i32 0, i32 0
  %len2357 = load i32* %len_ptr2356
  call void @oat_array_bounds_check( i32 %len2357, i32 %_lhs2354 )
  %elt_ptr2358 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2355, i32 0, i32 1, i32 %_lhs2354
  %_lhs2359 = load i32* %elt_ptr2358
  store i32 %_lhs2359, i32* %elt_ptr2353
  %_lhs2360 = load i32* %k2282
  %bop2361 = add i32 %_lhs2360, 1
  store i32 %bop2361, i32* %k2282
  %_lhs2362 = load i32* %i2280
  %bop2363 = add i32 %_lhs2362, 1
  store i32 %bop2363, i32* %i2280
  br label %__cond856

__fresh873:
  br label %__post854

__post854:
  br label %__cond859

__cond859:
  %_lhs2364 = load i32* %j2281
  %_lhs2365 = load i32* %high_slot2275
  %bop2366 = icmp sle i32 %_lhs2364, %_lhs2365
  br i1 %bop2366, label %__body858, label %__post857

__fresh874:
  br label %__body858

__body858:
  %_lhs2367 = load i32* %k2282
  %array_dereferenced2368 = load { i32, [ 0 x i32 ] }** %c2291
  %len_ptr2369 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2368, i32 0, i32 0
  %len2370 = load i32* %len_ptr2369
  call void @oat_array_bounds_check( i32 %len2370, i32 %_lhs2367 )
  %elt_ptr2371 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2368, i32 0, i32 1, i32 %_lhs2367
  %_lhs2372 = load i32* %j2281
  %array_dereferenced2373 = load { i32, [ 0 x i32 ] }** %a_slot2279
  %len_ptr2374 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2373, i32 0, i32 0
  %len2375 = load i32* %len_ptr2374
  call void @oat_array_bounds_check( i32 %len2375, i32 %_lhs2372 )
  %elt_ptr2376 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2373, i32 0, i32 1, i32 %_lhs2372
  %_lhs2377 = load i32* %elt_ptr2376
  store i32 %_lhs2377, i32* %elt_ptr2371
  %_lhs2378 = load i32* %k2282
  %bop2379 = add i32 %_lhs2378, 1
  store i32 %bop2379, i32* %k2282
  %_lhs2380 = load i32* %j2281
  %bop2381 = add i32 %_lhs2380, 1
  store i32 %bop2381, i32* %j2281
  br label %__cond859

__fresh875:
  br label %__post857

__post857:
  %_lhs2382 = load i32* %low_slot2277
  store i32 %_lhs2382, i32* %i2280
  br label %__cond862

__cond862:
  %_lhs2383 = load i32* %i2280
  %_lhs2384 = load i32* %k2282
  %bop2385 = icmp slt i32 %_lhs2383, %_lhs2384
  br i1 %bop2385, label %__body861, label %__post860

__fresh876:
  br label %__body861

__body861:
  %_lhs2386 = load i32* %i2280
  %array_dereferenced2387 = load { i32, [ 0 x i32 ] }** %a_slot2279
  %len_ptr2388 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2387, i32 0, i32 0
  %len2389 = load i32* %len_ptr2388
  call void @oat_array_bounds_check( i32 %len2389, i32 %_lhs2386 )
  %elt_ptr2390 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2387, i32 0, i32 1, i32 %_lhs2386
  %_lhs2391 = load i32* %i2280
  %array_dereferenced2392 = load { i32, [ 0 x i32 ] }** %c2291
  %len_ptr2393 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2392, i32 0, i32 0
  %len2394 = load i32* %len_ptr2393
  call void @oat_array_bounds_check( i32 %len2394, i32 %_lhs2391 )
  %elt_ptr2395 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2392, i32 0, i32 1, i32 %_lhs2391
  %_lhs2396 = load i32* %elt_ptr2395
  store i32 %_lhs2396, i32* %elt_ptr2390
  %_lhs2397 = load i32* %i2280
  %bop2398 = add i32 %_lhs2397, 1
  store i32 %bop2398, i32* %i2280
  br label %__cond862

__fresh877:
  br label %__post860

__post860:
  ret void
}


define void @oat_mergesort ({ i32, [ 0 x i32 ] }* %a2251, i32 %low2249, i32 %high2247){

__fresh842:
  %a_slot2252 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %a2251, { i32, [ 0 x i32 ] }** %a_slot2252
  %low_slot2250 = alloca i32
  store i32 %low2249, i32* %low_slot2250
  %high_slot2248 = alloca i32
  store i32 %high2247, i32* %high_slot2248
  %mid2253 = alloca i32
  store i32 0, i32* %mid2253
  %_lhs2254 = load i32* %low_slot2250
  %_lhs2255 = load i32* %high_slot2248
  %bop2256 = icmp slt i32 %_lhs2254, %_lhs2255
  br i1 %bop2256, label %__then841, label %__else840

__fresh843:
  br label %__then841

__then841:
  %_lhs2257 = load i32* %low_slot2250
  %_lhs2258 = load i32* %high_slot2248
  %bop2259 = add i32 %_lhs2257, %_lhs2258
  %bop2260 = ashr i32 %bop2259, 1
  store i32 %bop2260, i32* %mid2253
  %_lhs2263 = load i32* %mid2253
  %_lhs2262 = load i32* %low_slot2250
  %_lhs2261 = load { i32, [ 0 x i32 ] }** %a_slot2252
  call void @oat_mergesort( { i32, [ 0 x i32 ] }* %_lhs2261, i32 %_lhs2262, i32 %_lhs2263 )
  %_lhs2267 = load i32* %high_slot2248
  %_lhs2265 = load i32* %mid2253
  %bop2266 = add i32 %_lhs2265, 1
  %_lhs2264 = load { i32, [ 0 x i32 ] }** %a_slot2252
  call void @oat_mergesort( { i32, [ 0 x i32 ] }* %_lhs2264, i32 %bop2266, i32 %_lhs2267 )
  %_lhs2271 = load i32* %mid2253
  %_lhs2270 = load i32* %high_slot2248
  %_lhs2269 = load i32* %low_slot2250
  %_lhs2268 = load { i32, [ 0 x i32 ] }** %a_slot2252
  call void @merge( { i32, [ 0 x i32 ] }* %_lhs2268, i32 %_lhs2269, i32 %_lhs2270, i32 %_lhs2271 )
  br label %__merge839

__fresh844:
  br label %__else840

__else840:
  br label %__merge839

__merge839:
  ret void
}


define i32 @program (i32 %argc2219, { i32, [ 0 x i8* ] }* %argv2217){

__fresh838:
  %argc_slot2220 = alloca i32
  store i32 %argc2219, i32* %argc_slot2220
  %argv_slot2218 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv2217, { i32, [ 0 x i8* ] }** %argv_slot2218
  %i2221 = alloca i32
  store i32 0, i32* %i2221
  %array_ptr2222 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 10 )
  %array2223 = bitcast { i32, [ 0 x i32 ] }* %array_ptr2222 to { i32, [ 0 x i32 ] }* 
  %index_ptr2224 = getelementptr { i32, [ 0 x i32 ] }* %array2223, i32 0, i32 1, i32 0
  store i32 126, i32* %index_ptr2224
  %index_ptr2225 = getelementptr { i32, [ 0 x i32 ] }* %array2223, i32 0, i32 1, i32 1
  store i32 125, i32* %index_ptr2225
  %index_ptr2226 = getelementptr { i32, [ 0 x i32 ] }* %array2223, i32 0, i32 1, i32 2
  store i32 124, i32* %index_ptr2226
  %index_ptr2227 = getelementptr { i32, [ 0 x i32 ] }* %array2223, i32 0, i32 1, i32 3
  store i32 123, i32* %index_ptr2227
  %index_ptr2228 = getelementptr { i32, [ 0 x i32 ] }* %array2223, i32 0, i32 1, i32 4
  store i32 122, i32* %index_ptr2228
  %index_ptr2229 = getelementptr { i32, [ 0 x i32 ] }* %array2223, i32 0, i32 1, i32 5
  store i32 121, i32* %index_ptr2229
  %index_ptr2230 = getelementptr { i32, [ 0 x i32 ] }* %array2223, i32 0, i32 1, i32 6
  store i32 120, i32* %index_ptr2230
  %index_ptr2231 = getelementptr { i32, [ 0 x i32 ] }* %array2223, i32 0, i32 1, i32 7
  store i32 119, i32* %index_ptr2231
  %index_ptr2232 = getelementptr { i32, [ 0 x i32 ] }* %array2223, i32 0, i32 1, i32 8
  store i32 118, i32* %index_ptr2232
  %index_ptr2233 = getelementptr { i32, [ 0 x i32 ] }* %array2223, i32 0, i32 1, i32 9
  store i32 117, i32* %index_ptr2233
  %a2234 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %array2223, { i32, [ 0 x i32 ] }** %a2234
  %_lhs2235 = load { i32, [ 0 x i32 ] }** %a2234
  %ret2236 = call i8* @string_of_array ( { i32, [ 0 x i32 ] }* %_lhs2235 )
  call void @print_string( i8* %ret2236 )
  %_lhs2237 = load { i32, [ 0 x i32 ] }** %a2234
  call void @oat_mergesort( { i32, [ 0 x i32 ] }* %_lhs2237, i32 0, i32 9 )
  %strval2239 = load i8** @_oat_string2238
  call void @print_string( i8* %strval2239 )
  %_lhs2240 = load { i32, [ 0 x i32 ] }** %a2234
  %ret2241 = call i8* @string_of_array ( { i32, [ 0 x i32 ] }* %_lhs2240 )
  call void @print_string( i8* %ret2241 )
  %strval2243 = load i8** @_oat_string2242
  call void @print_string( i8* %strval2243 )
  %_lhs2244 = load i32* %i2221
  ret i32 %_lhs2244
}


