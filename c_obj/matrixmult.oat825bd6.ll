declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@_oat_string3452.str. = private unnamed_addr constant [ 2 x i8 ] c "
\00", align 4
@_oat_string3452 = global i8* getelementptr inbounds ([ 2 x i8 ]* @_oat_string3452.str., i32 0, i32 0), align 4
@_oat_string3448.str. = private unnamed_addr constant [ 2 x i8 ] c " \00", align 4
@_oat_string3448 = global i8* getelementptr inbounds ([ 2 x i8 ]* @_oat_string3448.str., i32 0, i32 0), align 4
define void @oat_init (){

__fresh631:
  ret void
}


define void @prnNx4 ({ i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %ar3428, i32 %n3426){

__fresh626:
  %ar_slot3429 = alloca { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }*
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %ar3428, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %ar_slot3429
  %n_slot3427 = alloca i32
  store i32 %n3426, i32* %n_slot3427
  %i3430 = alloca i32
  store i32 0, i32* %i3430
  br label %__cond622

__cond622:
  %_lhs3431 = load i32* %i3430
  %_lhs3432 = load i32* %n_slot3427
  %bop3433 = icmp slt i32 %_lhs3431, %_lhs3432
  br i1 %bop3433, label %__body621, label %__post620

__fresh627:
  br label %__body621

__body621:
  %j3434 = alloca i32
  store i32 0, i32* %j3434
  br label %__cond625

__cond625:
  %_lhs3435 = load i32* %j3434
  %bop3436 = icmp slt i32 %_lhs3435, 4
  br i1 %bop3436, label %__body624, label %__post623

__fresh628:
  br label %__body624

__body624:
  %_lhs3437 = load i32* %j3434
  %_lhs3438 = load i32* %i3430
  %len_ptr3439 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %ar_slot3429, i32 0, i32 0
  %len3440 = load i32* %len_ptr3439
  call void @oat_array_bounds_check( i32 %len3440, i32 %_lhs3438 )
  %array_dereferenced3441 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %ar_slot3429
  %elt_ptr3442 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array_dereferenced3441, i32 0, i32 1, i32 %_lhs3438
  %len_ptr3443 = getelementptr { i32, [ 0 x i32 ] }** %elt_ptr3442, i32 0, i32 0
  %len3444 = load i32* %len_ptr3443
  call void @oat_array_bounds_check( i32 %len3444, i32 %_lhs3437 )
  %array_dereferenced3445 = load { i32, [ 0 x i32 ] }** %elt_ptr3442
  %elt_ptr3446 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced3445, i32 0, i32 1, i32 %_lhs3437
  %_lhs3447 = load i32* %elt_ptr3446
  call void @print_int( i32 %_lhs3447 )
  %strval3449 = load i8** @_oat_string3448
  call void @print_string( i8* %strval3449 )
  %_lhs3450 = load i32* %j3434
  %bop3451 = add i32 %_lhs3450, 1
  store i32 %bop3451, i32* %j3434
  br label %__cond625

__fresh629:
  br label %__post623

__post623:
  %strval3453 = load i8** @_oat_string3452
  call void @print_string( i8* %strval3453 )
  %_lhs3454 = load i32* %i3430
  %bop3455 = add i32 %_lhs3454, 1
  store i32 %bop3455, i32* %i3430
  br label %__cond622

__fresh630:
  br label %__post620

__post620:
  ret void
}


define i32 @dot3 ({ i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %a13392, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %a23390, i32 %row3388, i32 %col3386){

__fresh617:
  %a1_slot3393 = alloca { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }*
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %a13392, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a1_slot3393
  %a2_slot3391 = alloca { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }*
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %a23390, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a2_slot3391
  %row_slot3389 = alloca i32
  store i32 %row3388, i32* %row_slot3389
  %col_slot3387 = alloca i32
  store i32 %col3386, i32* %col_slot3387
  %sum3394 = alloca i32
  store i32 0, i32* %sum3394
  %k3395 = alloca i32
  store i32 0, i32* %k3395
  br label %__cond616

__cond616:
  %_lhs3396 = load i32* %k3395
  %bop3397 = icmp slt i32 %_lhs3396, 3
  br i1 %bop3397, label %__body615, label %__post614

__fresh618:
  br label %__body615

__body615:
  %_lhs3398 = load i32* %sum3394
  %_lhs3399 = load i32* %k3395
  %_lhs3400 = load i32* %row_slot3389
  %len_ptr3401 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a1_slot3393, i32 0, i32 0
  %len3402 = load i32* %len_ptr3401
  call void @oat_array_bounds_check( i32 %len3402, i32 %_lhs3400 )
  %array_dereferenced3403 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a1_slot3393
  %elt_ptr3404 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array_dereferenced3403, i32 0, i32 1, i32 %_lhs3400
  %len_ptr3405 = getelementptr { i32, [ 0 x i32 ] }** %elt_ptr3404, i32 0, i32 0
  %len3406 = load i32* %len_ptr3405
  call void @oat_array_bounds_check( i32 %len3406, i32 %_lhs3399 )
  %array_dereferenced3407 = load { i32, [ 0 x i32 ] }** %elt_ptr3404
  %elt_ptr3408 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced3407, i32 0, i32 1, i32 %_lhs3399
  %_lhs3409 = load i32* %elt_ptr3408
  %_lhs3410 = load i32* %col_slot3387
  %_lhs3411 = load i32* %k3395
  %len_ptr3412 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a2_slot3391, i32 0, i32 0
  %len3413 = load i32* %len_ptr3412
  call void @oat_array_bounds_check( i32 %len3413, i32 %_lhs3411 )
  %array_dereferenced3414 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a2_slot3391
  %elt_ptr3415 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array_dereferenced3414, i32 0, i32 1, i32 %_lhs3411
  %len_ptr3416 = getelementptr { i32, [ 0 x i32 ] }** %elt_ptr3415, i32 0, i32 0
  %len3417 = load i32* %len_ptr3416
  call void @oat_array_bounds_check( i32 %len3417, i32 %_lhs3410 )
  %array_dereferenced3418 = load { i32, [ 0 x i32 ] }** %elt_ptr3415
  %elt_ptr3419 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced3418, i32 0, i32 1, i32 %_lhs3410
  %_lhs3420 = load i32* %elt_ptr3419
  %bop3421 = mul i32 %_lhs3409, %_lhs3420
  %bop3422 = add i32 %_lhs3398, %bop3421
  store i32 %bop3422, i32* %sum3394
  %_lhs3423 = load i32* %k3395
  %bop3424 = add i32 %_lhs3423, 1
  store i32 %bop3424, i32* %k3395
  br label %__cond616

__fresh619:
  br label %__post614

__post614:
  %_lhs3425 = load i32* %sum3394
  ret i32 %_lhs3425
}


define void @matrix_MultAlt ({ i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %a13359, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %a23357, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %a33355){

__fresh609:
  %a1_slot3360 = alloca { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }*
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %a13359, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a1_slot3360
  %a2_slot3358 = alloca { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }*
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %a23357, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a2_slot3358
  %a3_slot3356 = alloca { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }*
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %a33355, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a3_slot3356
  %i3361 = alloca i32
  store i32 0, i32* %i3361
  br label %__cond605

__cond605:
  %_lhs3362 = load i32* %i3361
  %bop3363 = icmp slt i32 %_lhs3362, 2
  br i1 %bop3363, label %__body604, label %__post603

__fresh610:
  br label %__body604

__body604:
  %j3364 = alloca i32
  store i32 0, i32* %j3364
  br label %__cond608

__cond608:
  %_lhs3365 = load i32* %j3364
  %bop3366 = icmp slt i32 %_lhs3365, 4
  br i1 %bop3366, label %__body607, label %__post606

__fresh611:
  br label %__body607

__body607:
  %_lhs3367 = load i32* %j3364
  %_lhs3368 = load i32* %i3361
  %len_ptr3369 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a3_slot3356, i32 0, i32 0
  %len3370 = load i32* %len_ptr3369
  call void @oat_array_bounds_check( i32 %len3370, i32 %_lhs3368 )
  %array_dereferenced3371 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a3_slot3356
  %elt_ptr3372 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array_dereferenced3371, i32 0, i32 1, i32 %_lhs3368
  %len_ptr3373 = getelementptr { i32, [ 0 x i32 ] }** %elt_ptr3372, i32 0, i32 0
  %len3374 = load i32* %len_ptr3373
  call void @oat_array_bounds_check( i32 %len3374, i32 %_lhs3367 )
  %array_dereferenced3375 = load { i32, [ 0 x i32 ] }** %elt_ptr3372
  %elt_ptr3376 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced3375, i32 0, i32 1, i32 %_lhs3367
  %_lhs3380 = load i32* %j3364
  %_lhs3379 = load i32* %i3361
  %_lhs3378 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a2_slot3358
  %_lhs3377 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a1_slot3360
  %ret3381 = call i32 @dot3 ( { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %_lhs3377, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %_lhs3378, i32 %_lhs3379, i32 %_lhs3380 )
  store i32 %ret3381, i32* %elt_ptr3376
  %_lhs3382 = load i32* %j3364
  %bop3383 = add i32 %_lhs3382, 1
  store i32 %bop3383, i32* %j3364
  br label %__cond608

__fresh612:
  br label %__post606

__post606:
  %_lhs3384 = load i32* %i3361
  %bop3385 = add i32 %_lhs3384, 1
  store i32 %bop3385, i32* %i3361
  br label %__cond605

__fresh613:
  br label %__post603

__post603:
  ret void
}


define void @matrix_Mult ({ i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %a13293, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %a23291, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %a33289){

__fresh596:
  %a1_slot3294 = alloca { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }*
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %a13293, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a1_slot3294
  %a2_slot3292 = alloca { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }*
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %a23291, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a2_slot3292
  %a3_slot3290 = alloca { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }*
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %a33289, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a3_slot3290
  %i3295 = alloca i32
  store i32 0, i32* %i3295
  br label %__cond589

__cond589:
  %_lhs3296 = load i32* %i3295
  %bop3297 = icmp slt i32 %_lhs3296, 2
  br i1 %bop3297, label %__body588, label %__post587

__fresh597:
  br label %__body588

__body588:
  %j3298 = alloca i32
  store i32 0, i32* %j3298
  br label %__cond592

__cond592:
  %_lhs3299 = load i32* %j3298
  %bop3300 = icmp slt i32 %_lhs3299, 4
  br i1 %bop3300, label %__body591, label %__post590

__fresh598:
  br label %__body591

__body591:
  %k3301 = alloca i32
  store i32 0, i32* %k3301
  br label %__cond595

__cond595:
  %_lhs3302 = load i32* %k3301
  %bop3303 = icmp slt i32 %_lhs3302, 3
  br i1 %bop3303, label %__body594, label %__post593

__fresh599:
  br label %__body594

__body594:
  %_lhs3304 = load i32* %j3298
  %_lhs3305 = load i32* %i3295
  %len_ptr3306 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a3_slot3290, i32 0, i32 0
  %len3307 = load i32* %len_ptr3306
  call void @oat_array_bounds_check( i32 %len3307, i32 %_lhs3305 )
  %array_dereferenced3308 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a3_slot3290
  %elt_ptr3309 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array_dereferenced3308, i32 0, i32 1, i32 %_lhs3305
  %len_ptr3310 = getelementptr { i32, [ 0 x i32 ] }** %elt_ptr3309, i32 0, i32 0
  %len3311 = load i32* %len_ptr3310
  call void @oat_array_bounds_check( i32 %len3311, i32 %_lhs3304 )
  %array_dereferenced3312 = load { i32, [ 0 x i32 ] }** %elt_ptr3309
  %elt_ptr3313 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced3312, i32 0, i32 1, i32 %_lhs3304
  %_lhs3314 = load i32* %j3298
  %_lhs3315 = load i32* %i3295
  %len_ptr3316 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a3_slot3290, i32 0, i32 0
  %len3317 = load i32* %len_ptr3316
  call void @oat_array_bounds_check( i32 %len3317, i32 %_lhs3315 )
  %array_dereferenced3318 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a3_slot3290
  %elt_ptr3319 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array_dereferenced3318, i32 0, i32 1, i32 %_lhs3315
  %len_ptr3320 = getelementptr { i32, [ 0 x i32 ] }** %elt_ptr3319, i32 0, i32 0
  %len3321 = load i32* %len_ptr3320
  call void @oat_array_bounds_check( i32 %len3321, i32 %_lhs3314 )
  %array_dereferenced3322 = load { i32, [ 0 x i32 ] }** %elt_ptr3319
  %elt_ptr3323 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced3322, i32 0, i32 1, i32 %_lhs3314
  %_lhs3324 = load i32* %elt_ptr3323
  %_lhs3325 = load i32* %k3301
  %_lhs3326 = load i32* %i3295
  %len_ptr3327 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a1_slot3294, i32 0, i32 0
  %len3328 = load i32* %len_ptr3327
  call void @oat_array_bounds_check( i32 %len3328, i32 %_lhs3326 )
  %array_dereferenced3329 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a1_slot3294
  %elt_ptr3330 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array_dereferenced3329, i32 0, i32 1, i32 %_lhs3326
  %len_ptr3331 = getelementptr { i32, [ 0 x i32 ] }** %elt_ptr3330, i32 0, i32 0
  %len3332 = load i32* %len_ptr3331
  call void @oat_array_bounds_check( i32 %len3332, i32 %_lhs3325 )
  %array_dereferenced3333 = load { i32, [ 0 x i32 ] }** %elt_ptr3330
  %elt_ptr3334 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced3333, i32 0, i32 1, i32 %_lhs3325
  %_lhs3335 = load i32* %elt_ptr3334
  %_lhs3336 = load i32* %j3298
  %_lhs3337 = load i32* %k3301
  %len_ptr3338 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a2_slot3292, i32 0, i32 0
  %len3339 = load i32* %len_ptr3338
  call void @oat_array_bounds_check( i32 %len3339, i32 %_lhs3337 )
  %array_dereferenced3340 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a2_slot3292
  %elt_ptr3341 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array_dereferenced3340, i32 0, i32 1, i32 %_lhs3337
  %len_ptr3342 = getelementptr { i32, [ 0 x i32 ] }** %elt_ptr3341, i32 0, i32 0
  %len3343 = load i32* %len_ptr3342
  call void @oat_array_bounds_check( i32 %len3343, i32 %_lhs3336 )
  %array_dereferenced3344 = load { i32, [ 0 x i32 ] }** %elt_ptr3341
  %elt_ptr3345 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced3344, i32 0, i32 1, i32 %_lhs3336
  %_lhs3346 = load i32* %elt_ptr3345
  %bop3347 = mul i32 %_lhs3335, %_lhs3346
  %bop3348 = add i32 %_lhs3324, %bop3347
  store i32 %bop3348, i32* %elt_ptr3313
  %_lhs3349 = load i32* %k3301
  %bop3350 = add i32 %_lhs3349, 1
  store i32 %bop3350, i32* %k3301
  br label %__cond595

__fresh600:
  br label %__post593

__post593:
  %_lhs3351 = load i32* %j3298
  %bop3352 = add i32 %_lhs3351, 1
  store i32 %bop3352, i32* %j3298
  br label %__cond592

__fresh601:
  br label %__post590

__post590:
  %_lhs3353 = load i32* %i3295
  %bop3354 = add i32 %_lhs3353, 1
  store i32 %bop3354, i32* %i3295
  br label %__cond589

__fresh602:
  br label %__post587

__post587:
  ret void
}


define i32 @program (i32 %argc3223, { i32, [ 0 x i8* ] }* %argv3221){

__fresh586:
  %argc_slot3224 = alloca i32
  store i32 %argc3223, i32* %argc_slot3224
  %argv_slot3222 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv3221, { i32, [ 0 x i8* ] }** %argv_slot3222
  %array_ptr3225 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array3226 = bitcast { i32, [ 0 x i32 ] }* %array_ptr3225 to { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* 
  %array_ptr3227 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 3 )
  %array3228 = bitcast { i32, [ 0 x i32 ] }* %array_ptr3227 to { i32, [ 0 x i32 ] }* 
  %index_ptr3229 = getelementptr { i32, [ 0 x i32 ] }* %array3228, i32 0, i32 1, i32 0
  store i32 1, i32* %index_ptr3229
  %index_ptr3230 = getelementptr { i32, [ 0 x i32 ] }* %array3228, i32 0, i32 1, i32 1
  store i32 3, i32* %index_ptr3230
  %index_ptr3231 = getelementptr { i32, [ 0 x i32 ] }* %array3228, i32 0, i32 1, i32 2
  store i32 4, i32* %index_ptr3231
  %index_ptr3232 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array3226, i32 0, i32 1, i32 0
  store { i32, [ 0 x i32 ] }* %array3228, { i32, [ 0 x i32 ] }** %index_ptr3232
  %array_ptr3233 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 3 )
  %array3234 = bitcast { i32, [ 0 x i32 ] }* %array_ptr3233 to { i32, [ 0 x i32 ] }* 
  %index_ptr3235 = getelementptr { i32, [ 0 x i32 ] }* %array3234, i32 0, i32 1, i32 0
  store i32 2, i32* %index_ptr3235
  %index_ptr3236 = getelementptr { i32, [ 0 x i32 ] }* %array3234, i32 0, i32 1, i32 1
  store i32 0, i32* %index_ptr3236
  %index_ptr3237 = getelementptr { i32, [ 0 x i32 ] }* %array3234, i32 0, i32 1, i32 2
  store i32 1, i32* %index_ptr3237
  %index_ptr3238 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array3226, i32 0, i32 1, i32 1
  store { i32, [ 0 x i32 ] }* %array3234, { i32, [ 0 x i32 ] }** %index_ptr3238
  %a3239 = alloca { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }*
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array3226, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a3239
  %array_ptr3240 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 3 )
  %array3241 = bitcast { i32, [ 0 x i32 ] }* %array_ptr3240 to { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* 
  %array_ptr3242 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 4 )
  %array3243 = bitcast { i32, [ 0 x i32 ] }* %array_ptr3242 to { i32, [ 0 x i32 ] }* 
  %index_ptr3244 = getelementptr { i32, [ 0 x i32 ] }* %array3243, i32 0, i32 1, i32 0
  store i32 1, i32* %index_ptr3244
  %index_ptr3245 = getelementptr { i32, [ 0 x i32 ] }* %array3243, i32 0, i32 1, i32 1
  store i32 2, i32* %index_ptr3245
  %index_ptr3246 = getelementptr { i32, [ 0 x i32 ] }* %array3243, i32 0, i32 1, i32 2
  store i32 3, i32* %index_ptr3246
  %index_ptr3247 = getelementptr { i32, [ 0 x i32 ] }* %array3243, i32 0, i32 1, i32 3
  store i32 1, i32* %index_ptr3247
  %index_ptr3248 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array3241, i32 0, i32 1, i32 0
  store { i32, [ 0 x i32 ] }* %array3243, { i32, [ 0 x i32 ] }** %index_ptr3248
  %array_ptr3249 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 4 )
  %array3250 = bitcast { i32, [ 0 x i32 ] }* %array_ptr3249 to { i32, [ 0 x i32 ] }* 
  %index_ptr3251 = getelementptr { i32, [ 0 x i32 ] }* %array3250, i32 0, i32 1, i32 0
  store i32 2, i32* %index_ptr3251
  %index_ptr3252 = getelementptr { i32, [ 0 x i32 ] }* %array3250, i32 0, i32 1, i32 1
  store i32 2, i32* %index_ptr3252
  %index_ptr3253 = getelementptr { i32, [ 0 x i32 ] }* %array3250, i32 0, i32 1, i32 2
  store i32 2, i32* %index_ptr3253
  %index_ptr3254 = getelementptr { i32, [ 0 x i32 ] }* %array3250, i32 0, i32 1, i32 3
  store i32 2, i32* %index_ptr3254
  %index_ptr3255 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array3241, i32 0, i32 1, i32 1
  store { i32, [ 0 x i32 ] }* %array3250, { i32, [ 0 x i32 ] }** %index_ptr3255
  %array_ptr3256 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 4 )
  %array3257 = bitcast { i32, [ 0 x i32 ] }* %array_ptr3256 to { i32, [ 0 x i32 ] }* 
  %index_ptr3258 = getelementptr { i32, [ 0 x i32 ] }* %array3257, i32 0, i32 1, i32 0
  store i32 3, i32* %index_ptr3258
  %index_ptr3259 = getelementptr { i32, [ 0 x i32 ] }* %array3257, i32 0, i32 1, i32 1
  store i32 2, i32* %index_ptr3259
  %index_ptr3260 = getelementptr { i32, [ 0 x i32 ] }* %array3257, i32 0, i32 1, i32 2
  store i32 1, i32* %index_ptr3260
  %index_ptr3261 = getelementptr { i32, [ 0 x i32 ] }* %array3257, i32 0, i32 1, i32 3
  store i32 4, i32* %index_ptr3261
  %index_ptr3262 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array3241, i32 0, i32 1, i32 2
  store { i32, [ 0 x i32 ] }* %array3257, { i32, [ 0 x i32 ] }** %index_ptr3262
  %b3263 = alloca { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }*
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array3241, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %b3263
  %array_ptr3264 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array3265 = bitcast { i32, [ 0 x i32 ] }* %array_ptr3264 to { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* 
  %array_ptr3266 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 4 )
  %array3267 = bitcast { i32, [ 0 x i32 ] }* %array_ptr3266 to { i32, [ 0 x i32 ] }* 
  %index_ptr3268 = getelementptr { i32, [ 0 x i32 ] }* %array3267, i32 0, i32 1, i32 0
  store i32 0, i32* %index_ptr3268
  %index_ptr3269 = getelementptr { i32, [ 0 x i32 ] }* %array3267, i32 0, i32 1, i32 1
  store i32 0, i32* %index_ptr3269
  %index_ptr3270 = getelementptr { i32, [ 0 x i32 ] }* %array3267, i32 0, i32 1, i32 2
  store i32 0, i32* %index_ptr3270
  %index_ptr3271 = getelementptr { i32, [ 0 x i32 ] }* %array3267, i32 0, i32 1, i32 3
  store i32 0, i32* %index_ptr3271
  %index_ptr3272 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array3265, i32 0, i32 1, i32 0
  store { i32, [ 0 x i32 ] }* %array3267, { i32, [ 0 x i32 ] }** %index_ptr3272
  %array_ptr3273 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 4 )
  %array3274 = bitcast { i32, [ 0 x i32 ] }* %array_ptr3273 to { i32, [ 0 x i32 ] }* 
  %index_ptr3275 = getelementptr { i32, [ 0 x i32 ] }* %array3274, i32 0, i32 1, i32 0
  store i32 0, i32* %index_ptr3275
  %index_ptr3276 = getelementptr { i32, [ 0 x i32 ] }* %array3274, i32 0, i32 1, i32 1
  store i32 0, i32* %index_ptr3276
  %index_ptr3277 = getelementptr { i32, [ 0 x i32 ] }* %array3274, i32 0, i32 1, i32 2
  store i32 0, i32* %index_ptr3277
  %index_ptr3278 = getelementptr { i32, [ 0 x i32 ] }* %array3274, i32 0, i32 1, i32 3
  store i32 0, i32* %index_ptr3278
  %index_ptr3279 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array3265, i32 0, i32 1, i32 1
  store { i32, [ 0 x i32 ] }* %array3274, { i32, [ 0 x i32 ] }** %index_ptr3279
  %c3280 = alloca { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }*
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array3265, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %c3280
  %_lhs3283 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %c3280
  %_lhs3282 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %b3263
  %_lhs3281 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a3239
  call void @matrix_Mult( { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %_lhs3281, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %_lhs3282, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %_lhs3283 )
  %_lhs3284 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %c3280
  call void @prnNx4( { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %_lhs3284, i32 2 )
  %_lhs3287 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %c3280
  %_lhs3286 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %b3263
  %_lhs3285 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a3239
  call void @matrix_MultAlt( { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %_lhs3285, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %_lhs3286, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %_lhs3287 )
  %_lhs3288 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %c3280
  call void @prnNx4( { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %_lhs3288, i32 2 )
  ret i32 0
}


