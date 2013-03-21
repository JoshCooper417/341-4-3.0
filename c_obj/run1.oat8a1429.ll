declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@garr410 = global { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* zeroinitializer, align 4		; initialized by garr410.init
@i397 = global i32 42, align 4
define void @oat_init (){

__fresh118:
  call void @garr410.init(  )
  ret void
}


define i32 @program (i32 %argc419, { i32, [ 0 x i8* ] }* %argv417){

__fresh115:
  %argc_slot420 = alloca i32
  store i32 %argc419, i32* %argc_slot420
  %argv_slot418 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv417, { i32, [ 0 x i8* ] }** %argv_slot418
  %array_ptr421 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 4 )
  %array422 = bitcast { i32, [ 0 x i32 ] }* %array_ptr421 to { i32, [ 0 x i32 ] }* 
  %index_ptr423 = getelementptr { i32, [ 0 x i32 ] }* %array422, i32 0, i32 1, i32 0
  store i32 1, i32* %index_ptr423
  %index_ptr424 = getelementptr { i32, [ 0 x i32 ] }* %array422, i32 0, i32 1, i32 1
  store i32 2, i32* %index_ptr424
  %index_ptr425 = getelementptr { i32, [ 0 x i32 ] }* %array422, i32 0, i32 1, i32 2
  store i32 3, i32* %index_ptr425
  %index_ptr426 = getelementptr { i32, [ 0 x i32 ] }* %array422, i32 0, i32 1, i32 3
  store i32 4, i32* %index_ptr426
  %arr427 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %array422, { i32, [ 0 x i32 ] }** %arr427
  %p428 = alloca i32
  store i32 0, i32* %p428
  %j429 = alloca i32
  store i32 0, i32* %j429
  br label %__cond114

__cond114:
  %_lhs430 = load i32* %j429
  %bop431 = icmp slt i32 %_lhs430, 100
  br i1 %bop431, label %__body113, label %__post112

__fresh116:
  br label %__body113

__body113:
  %_lhs432 = load i32* %p428
  %bop433 = add i32 %_lhs432, 1
  store i32 %bop433, i32* %p428
  %_lhs434 = load i32* %j429
  %bop435 = add i32 %_lhs434, 1
  store i32 %bop435, i32* %j429
  br label %__cond114

__fresh117:
  br label %__post112

__post112:
  %_lhs436 = load { i32, [ 0 x i32 ] }** %arr427
  %ret437 = call i32 @g ( { i32, [ 0 x i32 ] }* %_lhs436 )
  %_lhs438 = load i32* @i397
  %ret439 = call i32 @f ( i32 %_lhs438 )
  %bop440 = add i32 %ret437, %ret439
  %_lhs441 = load { i32, [ 0 x i32 ] }** %arr427
  %ret442 = call i32 @f ( { i32, [ 0 x i32 ] }* %_lhs441 )
  %bop443 = add i32 %bop440, %ret442
  %_lhs444 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** @garr410
  %ret445 = call i32 @f ( { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %_lhs444 )
  %bop446 = add i32 %bop443, %ret445
  %_lhs447 = load i32* %p428
  %ret448 = call i32 @f ( i32 %_lhs447 )
  %bop449 = add i32 %bop446, %ret448
  ret i32 %bop449
}


define i32 @g ({ i32, [ 0 x i32 ] }* %y414){

__fresh111:
  %y_slot415 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %y414, { i32, [ 0 x i32 ] }** %y_slot415
  %_lhs416 = load { i32, [ 0 x i32 ] }** %y_slot415
  ret { i32, [ 0 x i32 ] }* %_lhs416
}


define i32 @f (i32 %x411){

__fresh110:
  %x_slot412 = alloca i32
  store i32 %x411, i32* %x_slot412
  %_lhs413 = load i32* %x_slot412
  ret i32 %_lhs413
}


define void @garr410.init (){

__fresh109:
  %array_ptr398 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array399 = bitcast { i32, [ 0 x i32 ] }* %array_ptr398 to { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* 
  %array_ptr400 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array401 = bitcast { i32, [ 0 x i32 ] }* %array_ptr400 to { i32, [ 0 x i32 ] }* 
  %index_ptr402 = getelementptr { i32, [ 0 x i32 ] }* %array401, i32 0, i32 1, i32 0
  store i32 1, i32* %index_ptr402
  %index_ptr403 = getelementptr { i32, [ 0 x i32 ] }* %array401, i32 0, i32 1, i32 1
  store i32 2, i32* %index_ptr403
  %index_ptr404 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array399, i32 0, i32 1, i32 0
  store { i32, [ 0 x i32 ] }* %array401, { i32, [ 0 x i32 ] }** %index_ptr404
  %array_ptr405 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array406 = bitcast { i32, [ 0 x i32 ] }* %array_ptr405 to { i32, [ 0 x i32 ] }* 
  %index_ptr407 = getelementptr { i32, [ 0 x i32 ] }* %array406, i32 0, i32 1, i32 0
  store i32 3, i32* %index_ptr407
  %index_ptr408 = getelementptr { i32, [ 0 x i32 ] }* %array406, i32 0, i32 1, i32 1
  store i32 4, i32* %index_ptr408
  %index_ptr409 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array399, i32 0, i32 1, i32 1
  store { i32, [ 0 x i32 ] }* %array406, { i32, [ 0 x i32 ] }** %index_ptr409
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array399, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** @garr410
  ret void
}


