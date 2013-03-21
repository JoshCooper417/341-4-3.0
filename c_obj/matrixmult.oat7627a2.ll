declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@_oat_string3460.str. = private unnamed_addr constant [ 2 x i8 ] c "
\00", align 4
@_oat_string3460 = global i8* getelementptr inbounds ([ 2 x i8 ]* @_oat_string3460.str., i32 0, i32 0), align 4
@_oat_string3456.str. = private unnamed_addr constant [ 2 x i8 ] c " \00", align 4
@_oat_string3456 = global i8* getelementptr inbounds ([ 2 x i8 ]* @_oat_string3456.str., i32 0, i32 0), align 4
define void @oat_init (){

__fresh737:
  ret void
}


define void @prnNx4 ({ i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %ar3436, i32 %n3434){

__fresh732:
  %ar_slot3437 = alloca { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }*
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %ar3436, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %ar_slot3437
  %n_slot3435 = alloca i32
  store i32 %n3434, i32* %n_slot3435
  %i3438 = alloca i32
  store i32 0, i32* %i3438
  br label %__cond728

__cond728:
  %_lhs3439 = load i32* %i3438
  %_lhs3440 = load i32* %n_slot3435
  %bop3441 = icmp slt i32 %_lhs3439, %_lhs3440
  br i1 %bop3441, label %__body727, label %__post726

__fresh733:
  br label %__body727

__body727:
  %j3442 = alloca i32
  store i32 0, i32* %j3442
  br label %__cond731

__cond731:
  %_lhs3443 = load i32* %j3442
  %bop3444 = icmp slt i32 %_lhs3443, 4
  br i1 %bop3444, label %__body730, label %__post729

__fresh734:
  br label %__body730

__body730:
  %_lhs3445 = load i32* %j3442
  %_lhs3446 = load i32* %i3438
  %len_ptr3447 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %ar_slot3437, i32 0, i32 0
  %len3448 = load i32* %len_ptr3447
  call void @oat_array_bounds_check( i32 %len3448, i32 %_lhs3446 )
  %array_dereferenced3449 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %ar_slot3437
  %elt_ptr3450 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array_dereferenced3449, i32 0, i32 1, i32 %_lhs3446
  %len_ptr3451 = getelementptr { i32, [ 0 x i32 ] }** %elt_ptr3450, i32 0, i32 0
  %len3452 = load i32* %len_ptr3451
  call void @oat_array_bounds_check( i32 %len3452, i32 %_lhs3445 )
  %array_dereferenced3453 = load { i32, [ 0 x i32 ] }** %elt_ptr3450
  %elt_ptr3454 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced3453, i32 0, i32 1, i32 %_lhs3445
  %_lhs3455 = load i32* %elt_ptr3454
  call void @print_int( i32 %_lhs3455 )
  %strval3457 = load i8** @_oat_string3456
  call void @print_string( i8* %strval3457 )
  %_lhs3458 = load i32* %j3442
  %bop3459 = add i32 %_lhs3458, 1
  store i32 %bop3459, i32* %j3442
  br label %__cond731

__fresh735:
  br label %__post729

__post729:
  %strval3461 = load i8** @_oat_string3460
  call void @print_string( i8* %strval3461 )
  %_lhs3462 = load i32* %i3438
  %bop3463 = add i32 %_lhs3462, 1
  store i32 %bop3463, i32* %i3438
  br label %__cond728

__fresh736:
  br label %__post726

__post726:
  ret void
}


define i32 @dot3 ({ i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %a13400, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %a23398, i32 %row3396, i32 %col3394){

__fresh723:
  %a1_slot3401 = alloca { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }*
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %a13400, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a1_slot3401
  %a2_slot3399 = alloca { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }*
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %a23398, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a2_slot3399
  %row_slot3397 = alloca i32
  store i32 %row3396, i32* %row_slot3397
  %col_slot3395 = alloca i32
  store i32 %col3394, i32* %col_slot3395
  %sum3402 = alloca i32
  store i32 0, i32* %sum3402
  %k3403 = alloca i32
  store i32 0, i32* %k3403
  br label %__cond722

__cond722:
  %_lhs3404 = load i32* %k3403
  %bop3405 = icmp slt i32 %_lhs3404, 3
  br i1 %bop3405, label %__body721, label %__post720

__fresh724:
  br label %__body721

__body721:
  %_lhs3406 = load i32* %sum3402
  %_lhs3407 = load i32* %k3403
  %_lhs3408 = load i32* %row_slot3397
  %len_ptr3409 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a1_slot3401, i32 0, i32 0
  %len3410 = load i32* %len_ptr3409
  call void @oat_array_bounds_check( i32 %len3410, i32 %_lhs3408 )
  %array_dereferenced3411 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a1_slot3401
  %elt_ptr3412 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array_dereferenced3411, i32 0, i32 1, i32 %_lhs3408
  %len_ptr3413 = getelementptr { i32, [ 0 x i32 ] }** %elt_ptr3412, i32 0, i32 0
  %len3414 = load i32* %len_ptr3413
  call void @oat_array_bounds_check( i32 %len3414, i32 %_lhs3407 )
  %array_dereferenced3415 = load { i32, [ 0 x i32 ] }** %elt_ptr3412
  %elt_ptr3416 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced3415, i32 0, i32 1, i32 %_lhs3407
  %_lhs3417 = load i32* %elt_ptr3416
  %_lhs3418 = load i32* %col_slot3395
  %_lhs3419 = load i32* %k3403
  %len_ptr3420 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a2_slot3399, i32 0, i32 0
  %len3421 = load i32* %len_ptr3420
  call void @oat_array_bounds_check( i32 %len3421, i32 %_lhs3419 )
  %array_dereferenced3422 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a2_slot3399
  %elt_ptr3423 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array_dereferenced3422, i32 0, i32 1, i32 %_lhs3419
  %len_ptr3424 = getelementptr { i32, [ 0 x i32 ] }** %elt_ptr3423, i32 0, i32 0
  %len3425 = load i32* %len_ptr3424
  call void @oat_array_bounds_check( i32 %len3425, i32 %_lhs3418 )
  %array_dereferenced3426 = load { i32, [ 0 x i32 ] }** %elt_ptr3423
  %elt_ptr3427 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced3426, i32 0, i32 1, i32 %_lhs3418
  %_lhs3428 = load i32* %elt_ptr3427
  %bop3429 = mul i32 %_lhs3417, %_lhs3428
  %bop3430 = add i32 %_lhs3406, %bop3429
  store i32 %bop3430, i32* %sum3402
  %_lhs3431 = load i32* %k3403
  %bop3432 = add i32 %_lhs3431, 1
  store i32 %bop3432, i32* %k3403
  br label %__cond722

__fresh725:
  br label %__post720

__post720:
  %_lhs3433 = load i32* %sum3402
  ret i32 %_lhs3433
}


define void @matrix_MultAlt ({ i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %a13367, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %a23365, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %a33363){

__fresh715:
  %a1_slot3368 = alloca { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }*
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %a13367, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a1_slot3368
  %a2_slot3366 = alloca { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }*
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %a23365, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a2_slot3366
  %a3_slot3364 = alloca { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }*
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %a33363, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a3_slot3364
  %i3369 = alloca i32
  store i32 0, i32* %i3369
  br label %__cond711

__cond711:
  %_lhs3370 = load i32* %i3369
  %bop3371 = icmp slt i32 %_lhs3370, 2
  br i1 %bop3371, label %__body710, label %__post709

__fresh716:
  br label %__body710

__body710:
  %j3372 = alloca i32
  store i32 0, i32* %j3372
  br label %__cond714

__cond714:
  %_lhs3373 = load i32* %j3372
  %bop3374 = icmp slt i32 %_lhs3373, 4
  br i1 %bop3374, label %__body713, label %__post712

__fresh717:
  br label %__body713

__body713:
  %_lhs3375 = load i32* %j3372
  %_lhs3376 = load i32* %i3369
  %len_ptr3377 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a3_slot3364, i32 0, i32 0
  %len3378 = load i32* %len_ptr3377
  call void @oat_array_bounds_check( i32 %len3378, i32 %_lhs3376 )
  %array_dereferenced3379 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a3_slot3364
  %elt_ptr3380 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array_dereferenced3379, i32 0, i32 1, i32 %_lhs3376
  %len_ptr3381 = getelementptr { i32, [ 0 x i32 ] }** %elt_ptr3380, i32 0, i32 0
  %len3382 = load i32* %len_ptr3381
  call void @oat_array_bounds_check( i32 %len3382, i32 %_lhs3375 )
  %array_dereferenced3383 = load { i32, [ 0 x i32 ] }** %elt_ptr3380
  %elt_ptr3384 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced3383, i32 0, i32 1, i32 %_lhs3375
  %_lhs3388 = load i32* %j3372
  %_lhs3387 = load i32* %i3369
  %_lhs3386 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a2_slot3366
  %_lhs3385 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a1_slot3368
  %ret3389 = call i32 @dot3 ( { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %_lhs3385, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %_lhs3386, i32 %_lhs3387, i32 %_lhs3388 )
  store i32 %ret3389, i32* %elt_ptr3384
  %_lhs3390 = load i32* %j3372
  %bop3391 = add i32 %_lhs3390, 1
  store i32 %bop3391, i32* %j3372
  br label %__cond714

__fresh718:
  br label %__post712

__post712:
  %_lhs3392 = load i32* %i3369
  %bop3393 = add i32 %_lhs3392, 1
  store i32 %bop3393, i32* %i3369
  br label %__cond711

__fresh719:
  br label %__post709

__post709:
  ret void
}


define void @matrix_Mult ({ i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %a13301, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %a23299, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %a33297){

__fresh702:
  %a1_slot3302 = alloca { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }*
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %a13301, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a1_slot3302
  %a2_slot3300 = alloca { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }*
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %a23299, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a2_slot3300
  %a3_slot3298 = alloca { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }*
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %a33297, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a3_slot3298
  %i3303 = alloca i32
  store i32 0, i32* %i3303
  br label %__cond695

__cond695:
  %_lhs3304 = load i32* %i3303
  %bop3305 = icmp slt i32 %_lhs3304, 2
  br i1 %bop3305, label %__body694, label %__post693

__fresh703:
  br label %__body694

__body694:
  %j3306 = alloca i32
  store i32 0, i32* %j3306
  br label %__cond698

__cond698:
  %_lhs3307 = load i32* %j3306
  %bop3308 = icmp slt i32 %_lhs3307, 4
  br i1 %bop3308, label %__body697, label %__post696

__fresh704:
  br label %__body697

__body697:
  %k3309 = alloca i32
  store i32 0, i32* %k3309
  br label %__cond701

__cond701:
  %_lhs3310 = load i32* %k3309
  %bop3311 = icmp slt i32 %_lhs3310, 3
  br i1 %bop3311, label %__body700, label %__post699

__fresh705:
  br label %__body700

__body700:
  %_lhs3312 = load i32* %j3306
  %_lhs3313 = load i32* %i3303
  %len_ptr3314 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a3_slot3298, i32 0, i32 0
  %len3315 = load i32* %len_ptr3314
  call void @oat_array_bounds_check( i32 %len3315, i32 %_lhs3313 )
  %array_dereferenced3316 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a3_slot3298
  %elt_ptr3317 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array_dereferenced3316, i32 0, i32 1, i32 %_lhs3313
  %len_ptr3318 = getelementptr { i32, [ 0 x i32 ] }** %elt_ptr3317, i32 0, i32 0
  %len3319 = load i32* %len_ptr3318
  call void @oat_array_bounds_check( i32 %len3319, i32 %_lhs3312 )
  %array_dereferenced3320 = load { i32, [ 0 x i32 ] }** %elt_ptr3317
  %elt_ptr3321 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced3320, i32 0, i32 1, i32 %_lhs3312
  %_lhs3322 = load i32* %j3306
  %_lhs3323 = load i32* %i3303
  %len_ptr3324 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a3_slot3298, i32 0, i32 0
  %len3325 = load i32* %len_ptr3324
  call void @oat_array_bounds_check( i32 %len3325, i32 %_lhs3323 )
  %array_dereferenced3326 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a3_slot3298
  %elt_ptr3327 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array_dereferenced3326, i32 0, i32 1, i32 %_lhs3323
  %len_ptr3328 = getelementptr { i32, [ 0 x i32 ] }** %elt_ptr3327, i32 0, i32 0
  %len3329 = load i32* %len_ptr3328
  call void @oat_array_bounds_check( i32 %len3329, i32 %_lhs3322 )
  %array_dereferenced3330 = load { i32, [ 0 x i32 ] }** %elt_ptr3327
  %elt_ptr3331 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced3330, i32 0, i32 1, i32 %_lhs3322
  %_lhs3332 = load i32* %elt_ptr3331
  %_lhs3333 = load i32* %k3309
  %_lhs3334 = load i32* %i3303
  %len_ptr3335 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a1_slot3302, i32 0, i32 0
  %len3336 = load i32* %len_ptr3335
  call void @oat_array_bounds_check( i32 %len3336, i32 %_lhs3334 )
  %array_dereferenced3337 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a1_slot3302
  %elt_ptr3338 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array_dereferenced3337, i32 0, i32 1, i32 %_lhs3334
  %len_ptr3339 = getelementptr { i32, [ 0 x i32 ] }** %elt_ptr3338, i32 0, i32 0
  %len3340 = load i32* %len_ptr3339
  call void @oat_array_bounds_check( i32 %len3340, i32 %_lhs3333 )
  %array_dereferenced3341 = load { i32, [ 0 x i32 ] }** %elt_ptr3338
  %elt_ptr3342 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced3341, i32 0, i32 1, i32 %_lhs3333
  %_lhs3343 = load i32* %elt_ptr3342
  %_lhs3344 = load i32* %j3306
  %_lhs3345 = load i32* %k3309
  %len_ptr3346 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a2_slot3300, i32 0, i32 0
  %len3347 = load i32* %len_ptr3346
  call void @oat_array_bounds_check( i32 %len3347, i32 %_lhs3345 )
  %array_dereferenced3348 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a2_slot3300
  %elt_ptr3349 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array_dereferenced3348, i32 0, i32 1, i32 %_lhs3345
  %len_ptr3350 = getelementptr { i32, [ 0 x i32 ] }** %elt_ptr3349, i32 0, i32 0
  %len3351 = load i32* %len_ptr3350
  call void @oat_array_bounds_check( i32 %len3351, i32 %_lhs3344 )
  %array_dereferenced3352 = load { i32, [ 0 x i32 ] }** %elt_ptr3349
  %elt_ptr3353 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced3352, i32 0, i32 1, i32 %_lhs3344
  %_lhs3354 = load i32* %elt_ptr3353
  %bop3355 = mul i32 %_lhs3343, %_lhs3354
  %bop3356 = add i32 %_lhs3332, %bop3355
  store i32 %bop3356, i32* %elt_ptr3321
  %_lhs3357 = load i32* %k3309
  %bop3358 = add i32 %_lhs3357, 1
  store i32 %bop3358, i32* %k3309
  br label %__cond701

__fresh706:
  br label %__post699

__post699:
  %_lhs3359 = load i32* %j3306
  %bop3360 = add i32 %_lhs3359, 1
  store i32 %bop3360, i32* %j3306
  br label %__cond698

__fresh707:
  br label %__post696

__post696:
  %_lhs3361 = load i32* %i3303
  %bop3362 = add i32 %_lhs3361, 1
  store i32 %bop3362, i32* %i3303
  br label %__cond695

__fresh708:
  br label %__post693

__post693:
  ret void
}


define i32 @program (i32 %argc3231, { i32, [ 0 x i8* ] }* %argv3229){

__fresh692:
  %argc_slot3232 = alloca i32
  store i32 %argc3231, i32* %argc_slot3232
  %argv_slot3230 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv3229, { i32, [ 0 x i8* ] }** %argv_slot3230
  %array_ptr3233 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array3234 = bitcast { i32, [ 0 x i32 ] }* %array_ptr3233 to { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* 
  %array_ptr3235 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 3 )
  %array3236 = bitcast { i32, [ 0 x i32 ] }* %array_ptr3235 to { i32, [ 0 x i32 ] }* 
  %index_ptr3237 = getelementptr { i32, [ 0 x i32 ] }* %array3236, i32 0, i32 1, i32 0
  store i32 1, i32* %index_ptr3237
  %index_ptr3238 = getelementptr { i32, [ 0 x i32 ] }* %array3236, i32 0, i32 1, i32 1
  store i32 3, i32* %index_ptr3238
  %index_ptr3239 = getelementptr { i32, [ 0 x i32 ] }* %array3236, i32 0, i32 1, i32 2
  store i32 4, i32* %index_ptr3239
  %index_ptr3240 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array3234, i32 0, i32 1, i32 0
  store { i32, [ 0 x i32 ] }* %array3236, { i32, [ 0 x i32 ] }** %index_ptr3240
  %array_ptr3241 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 3 )
  %array3242 = bitcast { i32, [ 0 x i32 ] }* %array_ptr3241 to { i32, [ 0 x i32 ] }* 
  %index_ptr3243 = getelementptr { i32, [ 0 x i32 ] }* %array3242, i32 0, i32 1, i32 0
  store i32 2, i32* %index_ptr3243
  %index_ptr3244 = getelementptr { i32, [ 0 x i32 ] }* %array3242, i32 0, i32 1, i32 1
  store i32 0, i32* %index_ptr3244
  %index_ptr3245 = getelementptr { i32, [ 0 x i32 ] }* %array3242, i32 0, i32 1, i32 2
  store i32 1, i32* %index_ptr3245
  %index_ptr3246 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array3234, i32 0, i32 1, i32 1
  store { i32, [ 0 x i32 ] }* %array3242, { i32, [ 0 x i32 ] }** %index_ptr3246
  %a3247 = alloca { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }*
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array3234, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a3247
  %array_ptr3248 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 3 )
  %array3249 = bitcast { i32, [ 0 x i32 ] }* %array_ptr3248 to { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* 
  %array_ptr3250 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 4 )
  %array3251 = bitcast { i32, [ 0 x i32 ] }* %array_ptr3250 to { i32, [ 0 x i32 ] }* 
  %index_ptr3252 = getelementptr { i32, [ 0 x i32 ] }* %array3251, i32 0, i32 1, i32 0
  store i32 1, i32* %index_ptr3252
  %index_ptr3253 = getelementptr { i32, [ 0 x i32 ] }* %array3251, i32 0, i32 1, i32 1
  store i32 2, i32* %index_ptr3253
  %index_ptr3254 = getelementptr { i32, [ 0 x i32 ] }* %array3251, i32 0, i32 1, i32 2
  store i32 3, i32* %index_ptr3254
  %index_ptr3255 = getelementptr { i32, [ 0 x i32 ] }* %array3251, i32 0, i32 1, i32 3
  store i32 1, i32* %index_ptr3255
  %index_ptr3256 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array3249, i32 0, i32 1, i32 0
  store { i32, [ 0 x i32 ] }* %array3251, { i32, [ 0 x i32 ] }** %index_ptr3256
  %array_ptr3257 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 4 )
  %array3258 = bitcast { i32, [ 0 x i32 ] }* %array_ptr3257 to { i32, [ 0 x i32 ] }* 
  %index_ptr3259 = getelementptr { i32, [ 0 x i32 ] }* %array3258, i32 0, i32 1, i32 0
  store i32 2, i32* %index_ptr3259
  %index_ptr3260 = getelementptr { i32, [ 0 x i32 ] }* %array3258, i32 0, i32 1, i32 1
  store i32 2, i32* %index_ptr3260
  %index_ptr3261 = getelementptr { i32, [ 0 x i32 ] }* %array3258, i32 0, i32 1, i32 2
  store i32 2, i32* %index_ptr3261
  %index_ptr3262 = getelementptr { i32, [ 0 x i32 ] }* %array3258, i32 0, i32 1, i32 3
  store i32 2, i32* %index_ptr3262
  %index_ptr3263 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array3249, i32 0, i32 1, i32 1
  store { i32, [ 0 x i32 ] }* %array3258, { i32, [ 0 x i32 ] }** %index_ptr3263
  %array_ptr3264 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 4 )
  %array3265 = bitcast { i32, [ 0 x i32 ] }* %array_ptr3264 to { i32, [ 0 x i32 ] }* 
  %index_ptr3266 = getelementptr { i32, [ 0 x i32 ] }* %array3265, i32 0, i32 1, i32 0
  store i32 3, i32* %index_ptr3266
  %index_ptr3267 = getelementptr { i32, [ 0 x i32 ] }* %array3265, i32 0, i32 1, i32 1
  store i32 2, i32* %index_ptr3267
  %index_ptr3268 = getelementptr { i32, [ 0 x i32 ] }* %array3265, i32 0, i32 1, i32 2
  store i32 1, i32* %index_ptr3268
  %index_ptr3269 = getelementptr { i32, [ 0 x i32 ] }* %array3265, i32 0, i32 1, i32 3
  store i32 4, i32* %index_ptr3269
  %index_ptr3270 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array3249, i32 0, i32 1, i32 2
  store { i32, [ 0 x i32 ] }* %array3265, { i32, [ 0 x i32 ] }** %index_ptr3270
  %b3271 = alloca { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }*
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array3249, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %b3271
  %array_ptr3272 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array3273 = bitcast { i32, [ 0 x i32 ] }* %array_ptr3272 to { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* 
  %array_ptr3274 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 4 )
  %array3275 = bitcast { i32, [ 0 x i32 ] }* %array_ptr3274 to { i32, [ 0 x i32 ] }* 
  %index_ptr3276 = getelementptr { i32, [ 0 x i32 ] }* %array3275, i32 0, i32 1, i32 0
  store i32 0, i32* %index_ptr3276
  %index_ptr3277 = getelementptr { i32, [ 0 x i32 ] }* %array3275, i32 0, i32 1, i32 1
  store i32 0, i32* %index_ptr3277
  %index_ptr3278 = getelementptr { i32, [ 0 x i32 ] }* %array3275, i32 0, i32 1, i32 2
  store i32 0, i32* %index_ptr3278
  %index_ptr3279 = getelementptr { i32, [ 0 x i32 ] }* %array3275, i32 0, i32 1, i32 3
  store i32 0, i32* %index_ptr3279
  %index_ptr3280 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array3273, i32 0, i32 1, i32 0
  store { i32, [ 0 x i32 ] }* %array3275, { i32, [ 0 x i32 ] }** %index_ptr3280
  %array_ptr3281 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 4 )
  %array3282 = bitcast { i32, [ 0 x i32 ] }* %array_ptr3281 to { i32, [ 0 x i32 ] }* 
  %index_ptr3283 = getelementptr { i32, [ 0 x i32 ] }* %array3282, i32 0, i32 1, i32 0
  store i32 0, i32* %index_ptr3283
  %index_ptr3284 = getelementptr { i32, [ 0 x i32 ] }* %array3282, i32 0, i32 1, i32 1
  store i32 0, i32* %index_ptr3284
  %index_ptr3285 = getelementptr { i32, [ 0 x i32 ] }* %array3282, i32 0, i32 1, i32 2
  store i32 0, i32* %index_ptr3285
  %index_ptr3286 = getelementptr { i32, [ 0 x i32 ] }* %array3282, i32 0, i32 1, i32 3
  store i32 0, i32* %index_ptr3286
  %index_ptr3287 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array3273, i32 0, i32 1, i32 1
  store { i32, [ 0 x i32 ] }* %array3282, { i32, [ 0 x i32 ] }** %index_ptr3287
  %c3288 = alloca { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }*
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array3273, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %c3288
  %_lhs3291 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %c3288
  %_lhs3290 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %b3271
  %_lhs3289 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a3247
  call void @matrix_Mult( { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %_lhs3289, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %_lhs3290, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %_lhs3291 )
  %_lhs3292 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %c3288
  call void @prnNx4( { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %_lhs3292, i32 2 )
  %_lhs3295 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %c3288
  %_lhs3294 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %b3271
  %_lhs3293 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a3247
  call void @matrix_MultAlt( { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %_lhs3293, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %_lhs3294, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %_lhs3295 )
  %_lhs3296 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %c3288
  call void @prnNx4( { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %_lhs3296, i32 2 )
  ret i32 0
}


