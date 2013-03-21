declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@_oat_string3504.str. = private unnamed_addr constant [ 2 x i8 ] c "
\00", align 4
@_oat_string3504 = global i8* getelementptr inbounds ([ 2 x i8 ]* @_oat_string3504.str., i32 0, i32 0), align 4
@_oat_string3500.str. = private unnamed_addr constant [ 2 x i8 ] c " \00", align 4
@_oat_string3500 = global i8* getelementptr inbounds ([ 2 x i8 ]* @_oat_string3500.str., i32 0, i32 0), align 4
define void @oat_init (){

__fresh737:
  ret void
}


define void @prnNx4 ({ i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %ar3480, i32 %n3478){

__fresh732:
  %ar_slot3481 = alloca { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }*
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %ar3480, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %ar_slot3481
  %n_slot3479 = alloca i32
  store i32 %n3478, i32* %n_slot3479
  %i3482 = alloca i32
  store i32 0, i32* %i3482
  br label %__cond728

__cond728:
  %_lhs3483 = load i32* %i3482
  %_lhs3484 = load i32* %n_slot3479
  %bop3485 = icmp slt i32 %_lhs3483, %_lhs3484
  br i1 %bop3485, label %__body727, label %__post726

__fresh733:
  br label %__body727

__body727:
  %j3486 = alloca i32
  store i32 0, i32* %j3486
  br label %__cond731

__cond731:
  %_lhs3487 = load i32* %j3486
  %bop3488 = icmp slt i32 %_lhs3487, 4
  br i1 %bop3488, label %__body730, label %__post729

__fresh734:
  br label %__body730

__body730:
  %_lhs3489 = load i32* %j3486
  %_lhs3490 = load i32* %i3482
  %len_ptr3491 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %ar_slot3481, i32 0, i32 0
  %len3492 = load i32* %len_ptr3491
  call void @oat_array_bounds_check( i32 %len3492, i32 %_lhs3490 )
  %array_dereferenced3493 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %ar_slot3481
  %elt_ptr3494 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array_dereferenced3493, i32 0, i32 1, i32 %_lhs3490
  %len_ptr3495 = getelementptr { i32, [ 0 x i32 ] }** %elt_ptr3494, i32 0, i32 0
  %len3496 = load i32* %len_ptr3495
  call void @oat_array_bounds_check( i32 %len3496, i32 %_lhs3489 )
  %array_dereferenced3497 = load { i32, [ 0 x i32 ] }** %elt_ptr3494
  %elt_ptr3498 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced3497, i32 0, i32 1, i32 %_lhs3489
  %_lhs3499 = load i32* %elt_ptr3498
  call void @print_int( i32 %_lhs3499 )
  %strval3501 = load i8** @_oat_string3500
  call void @print_string( i8* %strval3501 )
  %_lhs3502 = load i32* %j3486
  %bop3503 = add i32 %_lhs3502, 1
  store i32 %bop3503, i32* %j3486
  br label %__cond731

__fresh735:
  br label %__post729

__post729:
  %strval3505 = load i8** @_oat_string3504
  call void @print_string( i8* %strval3505 )
  %_lhs3506 = load i32* %i3482
  %bop3507 = add i32 %_lhs3506, 1
  store i32 %bop3507, i32* %i3482
  br label %__cond728

__fresh736:
  br label %__post726

__post726:
  ret void
}


define i32 @dot3 ({ i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %a13444, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %a23442, i32 %row3440, i32 %col3438){

__fresh723:
  %a1_slot3445 = alloca { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }*
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %a13444, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a1_slot3445
  %a2_slot3443 = alloca { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }*
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %a23442, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a2_slot3443
  %row_slot3441 = alloca i32
  store i32 %row3440, i32* %row_slot3441
  %col_slot3439 = alloca i32
  store i32 %col3438, i32* %col_slot3439
  %sum3446 = alloca i32
  store i32 0, i32* %sum3446
  %k3447 = alloca i32
  store i32 0, i32* %k3447
  br label %__cond722

__cond722:
  %_lhs3448 = load i32* %k3447
  %bop3449 = icmp slt i32 %_lhs3448, 3
  br i1 %bop3449, label %__body721, label %__post720

__fresh724:
  br label %__body721

__body721:
  %_lhs3450 = load i32* %sum3446
  %_lhs3451 = load i32* %k3447
  %_lhs3452 = load i32* %row_slot3441
  %len_ptr3453 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a1_slot3445, i32 0, i32 0
  %len3454 = load i32* %len_ptr3453
  call void @oat_array_bounds_check( i32 %len3454, i32 %_lhs3452 )
  %array_dereferenced3455 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a1_slot3445
  %elt_ptr3456 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array_dereferenced3455, i32 0, i32 1, i32 %_lhs3452
  %len_ptr3457 = getelementptr { i32, [ 0 x i32 ] }** %elt_ptr3456, i32 0, i32 0
  %len3458 = load i32* %len_ptr3457
  call void @oat_array_bounds_check( i32 %len3458, i32 %_lhs3451 )
  %array_dereferenced3459 = load { i32, [ 0 x i32 ] }** %elt_ptr3456
  %elt_ptr3460 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced3459, i32 0, i32 1, i32 %_lhs3451
  %_lhs3461 = load i32* %elt_ptr3460
  %_lhs3462 = load i32* %col_slot3439
  %_lhs3463 = load i32* %k3447
  %len_ptr3464 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a2_slot3443, i32 0, i32 0
  %len3465 = load i32* %len_ptr3464
  call void @oat_array_bounds_check( i32 %len3465, i32 %_lhs3463 )
  %array_dereferenced3466 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a2_slot3443
  %elt_ptr3467 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array_dereferenced3466, i32 0, i32 1, i32 %_lhs3463
  %len_ptr3468 = getelementptr { i32, [ 0 x i32 ] }** %elt_ptr3467, i32 0, i32 0
  %len3469 = load i32* %len_ptr3468
  call void @oat_array_bounds_check( i32 %len3469, i32 %_lhs3462 )
  %array_dereferenced3470 = load { i32, [ 0 x i32 ] }** %elt_ptr3467
  %elt_ptr3471 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced3470, i32 0, i32 1, i32 %_lhs3462
  %_lhs3472 = load i32* %elt_ptr3471
  %bop3473 = mul i32 %_lhs3461, %_lhs3472
  %bop3474 = add i32 %_lhs3450, %bop3473
  store i32 %bop3474, i32* %sum3446
  %_lhs3475 = load i32* %k3447
  %bop3476 = add i32 %_lhs3475, 1
  store i32 %bop3476, i32* %k3447
  br label %__cond722

__fresh725:
  br label %__post720

__post720:
  %_lhs3477 = load i32* %sum3446
  ret i32 %_lhs3477
}


define void @matrix_MultAlt ({ i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %a13411, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %a23409, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %a33407){

__fresh715:
  %a1_slot3412 = alloca { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }*
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %a13411, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a1_slot3412
  %a2_slot3410 = alloca { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }*
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %a23409, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a2_slot3410
  %a3_slot3408 = alloca { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }*
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %a33407, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a3_slot3408
  %i3413 = alloca i32
  store i32 0, i32* %i3413
  br label %__cond711

__cond711:
  %_lhs3414 = load i32* %i3413
  %bop3415 = icmp slt i32 %_lhs3414, 2
  br i1 %bop3415, label %__body710, label %__post709

__fresh716:
  br label %__body710

__body710:
  %j3416 = alloca i32
  store i32 0, i32* %j3416
  br label %__cond714

__cond714:
  %_lhs3417 = load i32* %j3416
  %bop3418 = icmp slt i32 %_lhs3417, 4
  br i1 %bop3418, label %__body713, label %__post712

__fresh717:
  br label %__body713

__body713:
  %_lhs3419 = load i32* %j3416
  %_lhs3420 = load i32* %i3413
  %len_ptr3421 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a3_slot3408, i32 0, i32 0
  %len3422 = load i32* %len_ptr3421
  call void @oat_array_bounds_check( i32 %len3422, i32 %_lhs3420 )
  %array_dereferenced3423 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a3_slot3408
  %elt_ptr3424 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array_dereferenced3423, i32 0, i32 1, i32 %_lhs3420
  %len_ptr3425 = getelementptr { i32, [ 0 x i32 ] }** %elt_ptr3424, i32 0, i32 0
  %len3426 = load i32* %len_ptr3425
  call void @oat_array_bounds_check( i32 %len3426, i32 %_lhs3419 )
  %array_dereferenced3427 = load { i32, [ 0 x i32 ] }** %elt_ptr3424
  %elt_ptr3428 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced3427, i32 0, i32 1, i32 %_lhs3419
  %_lhs3432 = load i32* %j3416
  %_lhs3431 = load i32* %i3413
  %_lhs3430 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a2_slot3410
  %_lhs3429 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a1_slot3412
  %ret3433 = call i32 @dot3 ( { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %_lhs3429, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %_lhs3430, i32 %_lhs3431, i32 %_lhs3432 )
  store i32 %ret3433, i32* %elt_ptr3428
  %_lhs3434 = load i32* %j3416
  %bop3435 = add i32 %_lhs3434, 1
  store i32 %bop3435, i32* %j3416
  br label %__cond714

__fresh718:
  br label %__post712

__post712:
  %_lhs3436 = load i32* %i3413
  %bop3437 = add i32 %_lhs3436, 1
  store i32 %bop3437, i32* %i3413
  br label %__cond711

__fresh719:
  br label %__post709

__post709:
  ret void
}


define void @matrix_Mult ({ i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %a13345, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %a23343, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %a33341){

__fresh702:
  %a1_slot3346 = alloca { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }*
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %a13345, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a1_slot3346
  %a2_slot3344 = alloca { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }*
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %a23343, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a2_slot3344
  %a3_slot3342 = alloca { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }*
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %a33341, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a3_slot3342
  %i3347 = alloca i32
  store i32 0, i32* %i3347
  br label %__cond695

__cond695:
  %_lhs3348 = load i32* %i3347
  %bop3349 = icmp slt i32 %_lhs3348, 2
  br i1 %bop3349, label %__body694, label %__post693

__fresh703:
  br label %__body694

__body694:
  %j3350 = alloca i32
  store i32 0, i32* %j3350
  br label %__cond698

__cond698:
  %_lhs3351 = load i32* %j3350
  %bop3352 = icmp slt i32 %_lhs3351, 4
  br i1 %bop3352, label %__body697, label %__post696

__fresh704:
  br label %__body697

__body697:
  %k3353 = alloca i32
  store i32 0, i32* %k3353
  br label %__cond701

__cond701:
  %_lhs3354 = load i32* %k3353
  %bop3355 = icmp slt i32 %_lhs3354, 3
  br i1 %bop3355, label %__body700, label %__post699

__fresh705:
  br label %__body700

__body700:
  %_lhs3356 = load i32* %j3350
  %_lhs3357 = load i32* %i3347
  %len_ptr3358 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a3_slot3342, i32 0, i32 0
  %len3359 = load i32* %len_ptr3358
  call void @oat_array_bounds_check( i32 %len3359, i32 %_lhs3357 )
  %array_dereferenced3360 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a3_slot3342
  %elt_ptr3361 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array_dereferenced3360, i32 0, i32 1, i32 %_lhs3357
  %len_ptr3362 = getelementptr { i32, [ 0 x i32 ] }** %elt_ptr3361, i32 0, i32 0
  %len3363 = load i32* %len_ptr3362
  call void @oat_array_bounds_check( i32 %len3363, i32 %_lhs3356 )
  %array_dereferenced3364 = load { i32, [ 0 x i32 ] }** %elt_ptr3361
  %elt_ptr3365 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced3364, i32 0, i32 1, i32 %_lhs3356
  %_lhs3366 = load i32* %j3350
  %_lhs3367 = load i32* %i3347
  %len_ptr3368 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a3_slot3342, i32 0, i32 0
  %len3369 = load i32* %len_ptr3368
  call void @oat_array_bounds_check( i32 %len3369, i32 %_lhs3367 )
  %array_dereferenced3370 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a3_slot3342
  %elt_ptr3371 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array_dereferenced3370, i32 0, i32 1, i32 %_lhs3367
  %len_ptr3372 = getelementptr { i32, [ 0 x i32 ] }** %elt_ptr3371, i32 0, i32 0
  %len3373 = load i32* %len_ptr3372
  call void @oat_array_bounds_check( i32 %len3373, i32 %_lhs3366 )
  %array_dereferenced3374 = load { i32, [ 0 x i32 ] }** %elt_ptr3371
  %elt_ptr3375 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced3374, i32 0, i32 1, i32 %_lhs3366
  %_lhs3376 = load i32* %elt_ptr3375
  %_lhs3377 = load i32* %k3353
  %_lhs3378 = load i32* %i3347
  %len_ptr3379 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a1_slot3346, i32 0, i32 0
  %len3380 = load i32* %len_ptr3379
  call void @oat_array_bounds_check( i32 %len3380, i32 %_lhs3378 )
  %array_dereferenced3381 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a1_slot3346
  %elt_ptr3382 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array_dereferenced3381, i32 0, i32 1, i32 %_lhs3378
  %len_ptr3383 = getelementptr { i32, [ 0 x i32 ] }** %elt_ptr3382, i32 0, i32 0
  %len3384 = load i32* %len_ptr3383
  call void @oat_array_bounds_check( i32 %len3384, i32 %_lhs3377 )
  %array_dereferenced3385 = load { i32, [ 0 x i32 ] }** %elt_ptr3382
  %elt_ptr3386 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced3385, i32 0, i32 1, i32 %_lhs3377
  %_lhs3387 = load i32* %elt_ptr3386
  %_lhs3388 = load i32* %j3350
  %_lhs3389 = load i32* %k3353
  %len_ptr3390 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a2_slot3344, i32 0, i32 0
  %len3391 = load i32* %len_ptr3390
  call void @oat_array_bounds_check( i32 %len3391, i32 %_lhs3389 )
  %array_dereferenced3392 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a2_slot3344
  %elt_ptr3393 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array_dereferenced3392, i32 0, i32 1, i32 %_lhs3389
  %len_ptr3394 = getelementptr { i32, [ 0 x i32 ] }** %elt_ptr3393, i32 0, i32 0
  %len3395 = load i32* %len_ptr3394
  call void @oat_array_bounds_check( i32 %len3395, i32 %_lhs3388 )
  %array_dereferenced3396 = load { i32, [ 0 x i32 ] }** %elt_ptr3393
  %elt_ptr3397 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced3396, i32 0, i32 1, i32 %_lhs3388
  %_lhs3398 = load i32* %elt_ptr3397
  %bop3399 = mul i32 %_lhs3387, %_lhs3398
  %bop3400 = add i32 %_lhs3376, %bop3399
  store i32 %bop3400, i32* %elt_ptr3365
  %_lhs3401 = load i32* %k3353
  %bop3402 = add i32 %_lhs3401, 1
  store i32 %bop3402, i32* %k3353
  br label %__cond701

__fresh706:
  br label %__post699

__post699:
  %_lhs3403 = load i32* %j3350
  %bop3404 = add i32 %_lhs3403, 1
  store i32 %bop3404, i32* %j3350
  br label %__cond698

__fresh707:
  br label %__post696

__post696:
  %_lhs3405 = load i32* %i3347
  %bop3406 = add i32 %_lhs3405, 1
  store i32 %bop3406, i32* %i3347
  br label %__cond695

__fresh708:
  br label %__post693

__post693:
  ret void
}


define i32 @program (i32 %argc3275, { i32, [ 0 x i8* ] }* %argv3273){

__fresh692:
  %argc_slot3276 = alloca i32
  store i32 %argc3275, i32* %argc_slot3276
  %argv_slot3274 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv3273, { i32, [ 0 x i8* ] }** %argv_slot3274
  %array_ptr3277 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array3278 = bitcast { i32, [ 0 x i32 ] }* %array_ptr3277 to { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* 
  %array_ptr3279 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 3 )
  %array3280 = bitcast { i32, [ 0 x i32 ] }* %array_ptr3279 to { i32, [ 0 x i32 ] }* 
  %index_ptr3281 = getelementptr { i32, [ 0 x i32 ] }* %array3280, i32 0, i32 1, i32 0
  store i32 1, i32* %index_ptr3281
  %index_ptr3282 = getelementptr { i32, [ 0 x i32 ] }* %array3280, i32 0, i32 1, i32 1
  store i32 3, i32* %index_ptr3282
  %index_ptr3283 = getelementptr { i32, [ 0 x i32 ] }* %array3280, i32 0, i32 1, i32 2
  store i32 4, i32* %index_ptr3283
  %index_ptr3284 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array3278, i32 0, i32 1, i32 0
  store { i32, [ 0 x i32 ] }* %array3280, { i32, [ 0 x i32 ] }** %index_ptr3284
  %array_ptr3285 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 3 )
  %array3286 = bitcast { i32, [ 0 x i32 ] }* %array_ptr3285 to { i32, [ 0 x i32 ] }* 
  %index_ptr3287 = getelementptr { i32, [ 0 x i32 ] }* %array3286, i32 0, i32 1, i32 0
  store i32 2, i32* %index_ptr3287
  %index_ptr3288 = getelementptr { i32, [ 0 x i32 ] }* %array3286, i32 0, i32 1, i32 1
  store i32 0, i32* %index_ptr3288
  %index_ptr3289 = getelementptr { i32, [ 0 x i32 ] }* %array3286, i32 0, i32 1, i32 2
  store i32 1, i32* %index_ptr3289
  %index_ptr3290 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array3278, i32 0, i32 1, i32 1
  store { i32, [ 0 x i32 ] }* %array3286, { i32, [ 0 x i32 ] }** %index_ptr3290
  %a3291 = alloca { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }*
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array3278, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a3291
  %array_ptr3292 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 3 )
  %array3293 = bitcast { i32, [ 0 x i32 ] }* %array_ptr3292 to { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* 
  %array_ptr3294 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 4 )
  %array3295 = bitcast { i32, [ 0 x i32 ] }* %array_ptr3294 to { i32, [ 0 x i32 ] }* 
  %index_ptr3296 = getelementptr { i32, [ 0 x i32 ] }* %array3295, i32 0, i32 1, i32 0
  store i32 1, i32* %index_ptr3296
  %index_ptr3297 = getelementptr { i32, [ 0 x i32 ] }* %array3295, i32 0, i32 1, i32 1
  store i32 2, i32* %index_ptr3297
  %index_ptr3298 = getelementptr { i32, [ 0 x i32 ] }* %array3295, i32 0, i32 1, i32 2
  store i32 3, i32* %index_ptr3298
  %index_ptr3299 = getelementptr { i32, [ 0 x i32 ] }* %array3295, i32 0, i32 1, i32 3
  store i32 1, i32* %index_ptr3299
  %index_ptr3300 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array3293, i32 0, i32 1, i32 0
  store { i32, [ 0 x i32 ] }* %array3295, { i32, [ 0 x i32 ] }** %index_ptr3300
  %array_ptr3301 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 4 )
  %array3302 = bitcast { i32, [ 0 x i32 ] }* %array_ptr3301 to { i32, [ 0 x i32 ] }* 
  %index_ptr3303 = getelementptr { i32, [ 0 x i32 ] }* %array3302, i32 0, i32 1, i32 0
  store i32 2, i32* %index_ptr3303
  %index_ptr3304 = getelementptr { i32, [ 0 x i32 ] }* %array3302, i32 0, i32 1, i32 1
  store i32 2, i32* %index_ptr3304
  %index_ptr3305 = getelementptr { i32, [ 0 x i32 ] }* %array3302, i32 0, i32 1, i32 2
  store i32 2, i32* %index_ptr3305
  %index_ptr3306 = getelementptr { i32, [ 0 x i32 ] }* %array3302, i32 0, i32 1, i32 3
  store i32 2, i32* %index_ptr3306
  %index_ptr3307 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array3293, i32 0, i32 1, i32 1
  store { i32, [ 0 x i32 ] }* %array3302, { i32, [ 0 x i32 ] }** %index_ptr3307
  %array_ptr3308 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 4 )
  %array3309 = bitcast { i32, [ 0 x i32 ] }* %array_ptr3308 to { i32, [ 0 x i32 ] }* 
  %index_ptr3310 = getelementptr { i32, [ 0 x i32 ] }* %array3309, i32 0, i32 1, i32 0
  store i32 3, i32* %index_ptr3310
  %index_ptr3311 = getelementptr { i32, [ 0 x i32 ] }* %array3309, i32 0, i32 1, i32 1
  store i32 2, i32* %index_ptr3311
  %index_ptr3312 = getelementptr { i32, [ 0 x i32 ] }* %array3309, i32 0, i32 1, i32 2
  store i32 1, i32* %index_ptr3312
  %index_ptr3313 = getelementptr { i32, [ 0 x i32 ] }* %array3309, i32 0, i32 1, i32 3
  store i32 4, i32* %index_ptr3313
  %index_ptr3314 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array3293, i32 0, i32 1, i32 2
  store { i32, [ 0 x i32 ] }* %array3309, { i32, [ 0 x i32 ] }** %index_ptr3314
  %b3315 = alloca { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }*
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array3293, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %b3315
  %array_ptr3316 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array3317 = bitcast { i32, [ 0 x i32 ] }* %array_ptr3316 to { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* 
  %array_ptr3318 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 4 )
  %array3319 = bitcast { i32, [ 0 x i32 ] }* %array_ptr3318 to { i32, [ 0 x i32 ] }* 
  %index_ptr3320 = getelementptr { i32, [ 0 x i32 ] }* %array3319, i32 0, i32 1, i32 0
  store i32 0, i32* %index_ptr3320
  %index_ptr3321 = getelementptr { i32, [ 0 x i32 ] }* %array3319, i32 0, i32 1, i32 1
  store i32 0, i32* %index_ptr3321
  %index_ptr3322 = getelementptr { i32, [ 0 x i32 ] }* %array3319, i32 0, i32 1, i32 2
  store i32 0, i32* %index_ptr3322
  %index_ptr3323 = getelementptr { i32, [ 0 x i32 ] }* %array3319, i32 0, i32 1, i32 3
  store i32 0, i32* %index_ptr3323
  %index_ptr3324 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array3317, i32 0, i32 1, i32 0
  store { i32, [ 0 x i32 ] }* %array3319, { i32, [ 0 x i32 ] }** %index_ptr3324
  %array_ptr3325 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 4 )
  %array3326 = bitcast { i32, [ 0 x i32 ] }* %array_ptr3325 to { i32, [ 0 x i32 ] }* 
  %index_ptr3327 = getelementptr { i32, [ 0 x i32 ] }* %array3326, i32 0, i32 1, i32 0
  store i32 0, i32* %index_ptr3327
  %index_ptr3328 = getelementptr { i32, [ 0 x i32 ] }* %array3326, i32 0, i32 1, i32 1
  store i32 0, i32* %index_ptr3328
  %index_ptr3329 = getelementptr { i32, [ 0 x i32 ] }* %array3326, i32 0, i32 1, i32 2
  store i32 0, i32* %index_ptr3329
  %index_ptr3330 = getelementptr { i32, [ 0 x i32 ] }* %array3326, i32 0, i32 1, i32 3
  store i32 0, i32* %index_ptr3330
  %index_ptr3331 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array3317, i32 0, i32 1, i32 1
  store { i32, [ 0 x i32 ] }* %array3326, { i32, [ 0 x i32 ] }** %index_ptr3331
  %c3332 = alloca { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }*
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array3317, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %c3332
  %_lhs3335 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %c3332
  %_lhs3334 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %b3315
  %_lhs3333 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a3291
  call void @matrix_Mult( { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %_lhs3333, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %_lhs3334, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %_lhs3335 )
  %_lhs3336 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %c3332
  call void @prnNx4( { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %_lhs3336, i32 2 )
  %_lhs3339 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %c3332
  %_lhs3338 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %b3315
  %_lhs3337 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a3291
  call void @matrix_MultAlt( { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %_lhs3337, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %_lhs3338, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %_lhs3339 )
  %_lhs3340 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %c3332
  call void @prnNx4( { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %_lhs3340, i32 2 )
  ret i32 0
}


