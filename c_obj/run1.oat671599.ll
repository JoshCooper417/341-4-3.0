declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@garr525 = global { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* zeroinitializer, align 4		; initialized by garr525.init
@i512 = global i32 42, align 4
define void @oat_init (){

__fresh144:
  call void @garr525.init(  )
  ret void
}


define i32 @program (i32 %argc538, { i32, [ 0 x i8* ] }* %argv536){

__fresh141:
  %argc_slot539 = alloca i32
  store i32 %argc538, i32* %argc_slot539
  %argv_slot537 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv536, { i32, [ 0 x i8* ] }** %argv_slot537
  %array_ptr540 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 4 )
  %array541 = bitcast { i32, [ 0 x i32 ] }* %array_ptr540 to { i32, [ 0 x i32 ] }* 
  %index_ptr542 = getelementptr { i32, [ 0 x i32 ] }* %array541, i32 0, i32 1, i32 0
  store i32 1, i32* %index_ptr542
  %index_ptr543 = getelementptr { i32, [ 0 x i32 ] }* %array541, i32 0, i32 1, i32 1
  store i32 2, i32* %index_ptr543
  %index_ptr544 = getelementptr { i32, [ 0 x i32 ] }* %array541, i32 0, i32 1, i32 2
  store i32 3, i32* %index_ptr544
  %index_ptr545 = getelementptr { i32, [ 0 x i32 ] }* %array541, i32 0, i32 1, i32 3
  store i32 4, i32* %index_ptr545
  %arr546 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %array541, { i32, [ 0 x i32 ] }** %arr546
  %p547 = alloca i32
  store i32 0, i32* %p547
  %j548 = alloca i32
  store i32 0, i32* %j548
  br label %__cond140

__cond140:
  %_lhs549 = load i32* %j548
  %bop550 = icmp slt i32 %_lhs549, 100
  br i1 %bop550, label %__body139, label %__post138

__fresh142:
  br label %__body139

__body139:
  %_lhs551 = load i32* %p547
  %bop552 = add i32 %_lhs551, 1
  store i32 %bop552, i32* %p547
  %_lhs553 = load i32* %j548
  %bop554 = add i32 %_lhs553, 1
  store i32 %bop554, i32* %j548
  br label %__cond140

__fresh143:
  br label %__post138

__post138:
  %_lhs555 = load { i32, [ 0 x i32 ] }** %arr546
  %ret556 = call i32 @g ( { i32, [ 0 x i32 ] }* %_lhs555 )
  %_lhs557 = load i32* @i512
  %ret558 = call i32 @f ( i32 %_lhs557 )
  %bop559 = add i32 %ret556, %ret558
  %len_ptr560 = getelementptr { i32, [ 0 x i32 ] }** %arr546, i32 0, i32 0
  %len561 = load i32* %len_ptr560
  call void @oat_array_bounds_check( i32 %len561, i32 3 )
  %array_dereferenced562 = load { i32, [ 0 x i32 ] }** %arr546
  %elt_ptr563 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced562, i32 0, i32 1, i32 3
  %_lhs564 = load i32* %elt_ptr563
  %ret565 = call i32 @f ( i32 %_lhs564 )
  %bop566 = add i32 %bop559, %ret565
  %len_ptr567 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** @garr525, i32 0, i32 0
  %len568 = load i32* %len_ptr567
  call void @oat_array_bounds_check( i32 %len568, i32 1 )
  %array_dereferenced569 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** @garr525
  %elt_ptr570 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array_dereferenced569, i32 0, i32 1, i32 1
  %len_ptr571 = getelementptr { i32, [ 0 x i32 ] }** %elt_ptr570, i32 0, i32 0
  %len572 = load i32* %len_ptr571
  call void @oat_array_bounds_check( i32 %len572, i32 1 )
  %array_dereferenced573 = load { i32, [ 0 x i32 ] }** %elt_ptr570
  %elt_ptr574 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced573, i32 0, i32 1, i32 1
  %_lhs575 = load i32* %elt_ptr574
  %ret576 = call i32 @f ( i32 %_lhs575 )
  %bop577 = add i32 %bop566, %ret576
  %_lhs578 = load i32* %p547
  %ret579 = call i32 @f ( i32 %_lhs578 )
  %bop580 = add i32 %bop577, %ret579
  ret i32 %bop580
}


define i32 @g ({ i32, [ 0 x i32 ] }* %y529){

__fresh137:
  %y_slot530 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %y529, { i32, [ 0 x i32 ] }** %y_slot530
  %len_ptr531 = getelementptr { i32, [ 0 x i32 ] }** %y_slot530, i32 0, i32 0
  %len532 = load i32* %len_ptr531
  call void @oat_array_bounds_check( i32 %len532, i32 2 )
  %array_dereferenced533 = load { i32, [ 0 x i32 ] }** %y_slot530
  %elt_ptr534 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced533, i32 0, i32 1, i32 2
  %_lhs535 = load i32* %elt_ptr534
  ret i32 %_lhs535
}


define i32 @f (i32 %x526){

__fresh136:
  %x_slot527 = alloca i32
  store i32 %x526, i32* %x_slot527
  %_lhs528 = load i32* %x_slot527
  ret i32 %_lhs528
}


define void @garr525.init (){

__fresh135:
  %array_ptr513 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array514 = bitcast { i32, [ 0 x i32 ] }* %array_ptr513 to { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* 
  %array_ptr515 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array516 = bitcast { i32, [ 0 x i32 ] }* %array_ptr515 to { i32, [ 0 x i32 ] }* 
  %index_ptr517 = getelementptr { i32, [ 0 x i32 ] }* %array516, i32 0, i32 1, i32 0
  store i32 1, i32* %index_ptr517
  %index_ptr518 = getelementptr { i32, [ 0 x i32 ] }* %array516, i32 0, i32 1, i32 1
  store i32 2, i32* %index_ptr518
  %index_ptr519 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array514, i32 0, i32 1, i32 0
  store { i32, [ 0 x i32 ] }* %array516, { i32, [ 0 x i32 ] }** %index_ptr519
  %array_ptr520 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array521 = bitcast { i32, [ 0 x i32 ] }* %array_ptr520 to { i32, [ 0 x i32 ] }* 
  %index_ptr522 = getelementptr { i32, [ 0 x i32 ] }* %array521, i32 0, i32 1, i32 0
  store i32 3, i32* %index_ptr522
  %index_ptr523 = getelementptr { i32, [ 0 x i32 ] }* %array521, i32 0, i32 1, i32 1
  store i32 4, i32* %index_ptr523
  %index_ptr524 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array514, i32 0, i32 1, i32 1
  store { i32, [ 0 x i32 ] }* %array521, { i32, [ 0 x i32 ] }** %index_ptr524
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array514, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** @garr525
  ret void
}


