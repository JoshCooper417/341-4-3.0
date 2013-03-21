declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@garr478 = global { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* zeroinitializer, align 4		; initialized by garr478.init
@i465 = global i32 42, align 4
define void @oat_init (){

__fresh192:
  call void @garr478.init(  )
  ret void
}


define i32 @program (i32 %argc491, { i32, [ 0 x i8* ] }* %argv489){

__fresh189:
  %argc_slot492 = alloca i32
  store i32 %argc491, i32* %argc_slot492
  %argv_slot490 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv489, { i32, [ 0 x i8* ] }** %argv_slot490
  %array_ptr493 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 4 )
  %array494 = bitcast { i32, [ 0 x i32 ] }* %array_ptr493 to { i32, [ 0 x i32 ] }* 
  %index_ptr495 = getelementptr { i32, [ 0 x i32 ] }* %array494, i32 0, i32 1, i32 0
  store i32 1, i32* %index_ptr495
  %index_ptr496 = getelementptr { i32, [ 0 x i32 ] }* %array494, i32 0, i32 1, i32 1
  store i32 2, i32* %index_ptr496
  %index_ptr497 = getelementptr { i32, [ 0 x i32 ] }* %array494, i32 0, i32 1, i32 2
  store i32 3, i32* %index_ptr497
  %index_ptr498 = getelementptr { i32, [ 0 x i32 ] }* %array494, i32 0, i32 1, i32 3
  store i32 4, i32* %index_ptr498
  %arr499 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %array494, { i32, [ 0 x i32 ] }** %arr499
  %p500 = alloca i32
  store i32 0, i32* %p500
  %j501 = alloca i32
  store i32 0, i32* %j501
  br label %__cond188

__cond188:
  %_lhs502 = load i32* %j501
  %bop503 = icmp slt i32 %_lhs502, 100
  br i1 %bop503, label %__body187, label %__post186

__fresh190:
  br label %__body187

__body187:
  %_lhs504 = load i32* %p500
  %bop505 = add i32 %_lhs504, 1
  store i32 %bop505, i32* %p500
  %_lhs506 = load i32* %j501
  %bop507 = add i32 %_lhs506, 1
  store i32 %bop507, i32* %j501
  br label %__cond188

__fresh191:
  br label %__post186

__post186:
  %_lhs508 = load { i32, [ 0 x i32 ] }** %arr499
  %ret509 = call i32 @g ( { i32, [ 0 x i32 ] }* %_lhs508 )
  %_lhs510 = load i32* @i465
  %ret511 = call i32 @f ( i32 %_lhs510 )
  %bop512 = add i32 %ret509, %ret511
  %array_dereferenced513 = load { i32, [ 0 x i32 ] }** %arr499
  %len_ptr514 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced513, i32 0, i32 0
  %len515 = load i32* %len_ptr514
  call void @oat_array_bounds_check( i32 %len515, i32 3 )
  %elt_ptr516 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced513, i32 0, i32 1, i32 3
  %_lhs517 = load i32* %elt_ptr516
  %ret518 = call i32 @f ( i32 %_lhs517 )
  %bop519 = add i32 %bop512, %ret518
  %array_dereferenced520 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** @garr478
  %len_ptr521 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array_dereferenced520, i32 0, i32 0
  %len522 = load i32* %len_ptr521
  call void @oat_array_bounds_check( i32 %len522, i32 1 )
  %elt_ptr523 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array_dereferenced520, i32 0, i32 1, i32 1
  %array_dereferenced524 = load { i32, [ 0 x i32 ] }** %elt_ptr523
  %len_ptr525 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced524, i32 0, i32 0
  %len526 = load i32* %len_ptr525
  call void @oat_array_bounds_check( i32 %len526, i32 1 )
  %elt_ptr527 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced524, i32 0, i32 1, i32 1
  %_lhs528 = load i32* %elt_ptr527
  %ret529 = call i32 @f ( i32 %_lhs528 )
  %bop530 = add i32 %bop519, %ret529
  %_lhs531 = load i32* %p500
  %ret532 = call i32 @f ( i32 %_lhs531 )
  %bop533 = add i32 %bop530, %ret532
  ret i32 %bop533
}


define i32 @g ({ i32, [ 0 x i32 ] }* %y482){

__fresh185:
  %y_slot483 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %y482, { i32, [ 0 x i32 ] }** %y_slot483
  %array_dereferenced484 = load { i32, [ 0 x i32 ] }** %y_slot483
  %len_ptr485 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced484, i32 0, i32 0
  %len486 = load i32* %len_ptr485
  call void @oat_array_bounds_check( i32 %len486, i32 2 )
  %elt_ptr487 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced484, i32 0, i32 1, i32 2
  %_lhs488 = load i32* %elt_ptr487
  ret i32 %_lhs488
}


define i32 @f (i32 %x479){

__fresh184:
  %x_slot480 = alloca i32
  store i32 %x479, i32* %x_slot480
  %_lhs481 = load i32* %x_slot480
  ret i32 %_lhs481
}


define void @garr478.init (){

__fresh183:
  %array_ptr466 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array467 = bitcast { i32, [ 0 x i32 ] }* %array_ptr466 to { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* 
  %array_ptr468 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array469 = bitcast { i32, [ 0 x i32 ] }* %array_ptr468 to { i32, [ 0 x i32 ] }* 
  %index_ptr470 = getelementptr { i32, [ 0 x i32 ] }* %array469, i32 0, i32 1, i32 0
  store i32 1, i32* %index_ptr470
  %index_ptr471 = getelementptr { i32, [ 0 x i32 ] }* %array469, i32 0, i32 1, i32 1
  store i32 2, i32* %index_ptr471
  %index_ptr472 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array467, i32 0, i32 1, i32 0
  store { i32, [ 0 x i32 ] }* %array469, { i32, [ 0 x i32 ] }** %index_ptr472
  %array_ptr473 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array474 = bitcast { i32, [ 0 x i32 ] }* %array_ptr473 to { i32, [ 0 x i32 ] }* 
  %index_ptr475 = getelementptr { i32, [ 0 x i32 ] }* %array474, i32 0, i32 1, i32 0
  store i32 3, i32* %index_ptr475
  %index_ptr476 = getelementptr { i32, [ 0 x i32 ] }* %array474, i32 0, i32 1, i32 1
  store i32 4, i32* %index_ptr476
  %index_ptr477 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array467, i32 0, i32 1, i32 1
  store { i32, [ 0 x i32 ] }* %array474, { i32, [ 0 x i32 ] }** %index_ptr477
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array467, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** @garr478
  ret void
}


