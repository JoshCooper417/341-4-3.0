declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@garr450 = global { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* zeroinitializer, align 4		; initialized by garr450.init
@i437 = global i32 42, align 4
define void @oat_init (){

__fresh118:
  call void @garr450.init(  )
  ret void
}


define i32 @program (i32 %argc463, { i32, [ 0 x i8* ] }* %argv461){

__fresh115:
  %argc_slot464 = alloca i32
  store i32 %argc463, i32* %argc_slot464
  %argv_slot462 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv461, { i32, [ 0 x i8* ] }** %argv_slot462
  %array_ptr465 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 4 )
  %array466 = bitcast { i32, [ 0 x i32 ] }* %array_ptr465 to { i32, [ 0 x i32 ] }* 
  %index_ptr467 = getelementptr { i32, [ 0 x i32 ] }* %array466, i32 0, i32 1, i32 0
  store i32 1, i32* %index_ptr467
  %index_ptr468 = getelementptr { i32, [ 0 x i32 ] }* %array466, i32 0, i32 1, i32 1
  store i32 2, i32* %index_ptr468
  %index_ptr469 = getelementptr { i32, [ 0 x i32 ] }* %array466, i32 0, i32 1, i32 2
  store i32 3, i32* %index_ptr469
  %index_ptr470 = getelementptr { i32, [ 0 x i32 ] }* %array466, i32 0, i32 1, i32 3
  store i32 4, i32* %index_ptr470
  %arr471 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %array466, { i32, [ 0 x i32 ] }** %arr471
  %p472 = alloca i32
  store i32 0, i32* %p472
  %j473 = alloca i32
  store i32 0, i32* %j473
  br label %__cond114

__cond114:
  %_lhs474 = load i32* %j473
  %bop475 = icmp slt i32 %_lhs474, 100
  br i1 %bop475, label %__body113, label %__post112

__fresh116:
  br label %__body113

__body113:
  %_lhs476 = load i32* %p472
  %bop477 = add i32 %_lhs476, 1
  store i32 %bop477, i32* %p472
  %_lhs478 = load i32* %j473
  %bop479 = add i32 %_lhs478, 1
  store i32 %bop479, i32* %j473
  br label %__cond114

__fresh117:
  br label %__post112

__post112:
  %_lhs480 = load { i32, [ 0 x i32 ] }** %arr471
  %ret481 = call i32 @g ( { i32, [ 0 x i32 ] }* %_lhs480 )
  %_lhs482 = load i32* @i437
  %ret483 = call i32 @f ( i32 %_lhs482 )
  %bop484 = add i32 %ret481, %ret483
  %len_ptr485 = getelementptr { i32, [ 0 x i32 ] }** %arr471, i32 0, i32 0
  %len486 = load i32* %len_ptr485
  call void @oat_array_bounds_check( i32 %len486, i32 3 )
  %array_dereferenced487 = load { i32, [ 0 x i32 ] }** %arr471
  %elt_ptr488 = getelementptr i32 %array_dereferenced487, i32 0, i32 1, i32 3
  %_lhs489 = load i32* %elt_ptr488
  %ret490 = call i32 @f ( i32 %_lhs489 )
  %bop491 = add i32 %bop484, %ret490
  %len_ptr492 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** @garr450, i32 0, i32 0
  %len493 = load i32* %len_ptr492
  call void @oat_array_bounds_check( i32 %len493, i32 1 )
  %array_dereferenced494 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** @garr450
  %elt_ptr495 = getelementptr i32 %array_dereferenced494, i32 0, i32 1, i32 1
  %len_ptr496 = getelementptr i32* %elt_ptr495, i32 0, i32 0
  %len497 = load i32* %len_ptr496
  call void @oat_array_bounds_check( i32 %len497, i32 1 )
  %array_dereferenced498 = load i32* %elt_ptr495
  %elt_ptr499 = getelementptr i32 %array_dereferenced498, i32 0, i32 1, i32 1
  %_lhs500 = load i32* %elt_ptr499
  %ret501 = call i32 @f ( i32 %_lhs500 )
  %bop502 = add i32 %bop491, %ret501
  %_lhs503 = load i32* %p472
  %ret504 = call i32 @f ( i32 %_lhs503 )
  %bop505 = add i32 %bop502, %ret504
  ret i32 %bop505
}


define i32 @g ({ i32, [ 0 x i32 ] }* %y454){

__fresh111:
  %y_slot455 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %y454, { i32, [ 0 x i32 ] }** %y_slot455
  %len_ptr456 = getelementptr { i32, [ 0 x i32 ] }** %y_slot455, i32 0, i32 0
  %len457 = load i32* %len_ptr456
  call void @oat_array_bounds_check( i32 %len457, i32 2 )
  %array_dereferenced458 = load { i32, [ 0 x i32 ] }** %y_slot455
  %elt_ptr459 = getelementptr i32 %array_dereferenced458, i32 0, i32 1, i32 2
  %_lhs460 = load i32* %elt_ptr459
  ret i32 %_lhs460
}


define i32 @f (i32 %x451){

__fresh110:
  %x_slot452 = alloca i32
  store i32 %x451, i32* %x_slot452
  %_lhs453 = load i32* %x_slot452
  ret i32 %_lhs453
}


define void @garr450.init (){

__fresh109:
  %array_ptr438 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array439 = bitcast { i32, [ 0 x i32 ] }* %array_ptr438 to { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* 
  %array_ptr440 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array441 = bitcast { i32, [ 0 x i32 ] }* %array_ptr440 to { i32, [ 0 x i32 ] }* 
  %index_ptr442 = getelementptr { i32, [ 0 x i32 ] }* %array441, i32 0, i32 1, i32 0
  store i32 1, i32* %index_ptr442
  %index_ptr443 = getelementptr { i32, [ 0 x i32 ] }* %array441, i32 0, i32 1, i32 1
  store i32 2, i32* %index_ptr443
  %index_ptr444 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array439, i32 0, i32 1, i32 0
  store { i32, [ 0 x i32 ] }* %array441, { i32, [ 0 x i32 ] }** %index_ptr444
  %array_ptr445 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array446 = bitcast { i32, [ 0 x i32 ] }* %array_ptr445 to { i32, [ 0 x i32 ] }* 
  %index_ptr447 = getelementptr { i32, [ 0 x i32 ] }* %array446, i32 0, i32 1, i32 0
  store i32 3, i32* %index_ptr447
  %index_ptr448 = getelementptr { i32, [ 0 x i32 ] }* %array446, i32 0, i32 1, i32 1
  store i32 4, i32* %index_ptr448
  %index_ptr449 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array439, i32 0, i32 1, i32 1
  store { i32, [ 0 x i32 ] }* %array446, { i32, [ 0 x i32 ] }** %index_ptr449
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array439, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** @garr450
  ret void
}


