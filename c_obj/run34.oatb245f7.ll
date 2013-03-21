declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
define void @oat_init (){

__fresh11:
  ret void
}


define i32 @program (i32 %argc3, { i32, [ 0 x i8* ] }* %argv1){

__fresh6:
  %argc_slot4 = alloca i32
  store i32 %argc3, i32* %argc_slot4
  %argv_slot2 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv1, { i32, [ 0 x i8* ] }** %argv_slot2
  %array_ptr5 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 3 )
  %array6 = bitcast { i32, [ 0 x i32 ] }* %array_ptr5 to { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* 
  %array_ptr7 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 4 )
  %array8 = bitcast { i32, [ 0 x i32 ] }* %array_ptr7 to { i32, [ 0 x i32 ] }* 
  %index_ptr9 = getelementptr { i32, [ 0 x i32 ] }* %array8, i32 0, i32 1, i32 0
  store i32 0, i32* %index_ptr9
  %index_ptr10 = getelementptr { i32, [ 0 x i32 ] }* %array8, i32 0, i32 1, i32 1
  store i32 1, i32* %index_ptr10
  %index_ptr11 = getelementptr { i32, [ 0 x i32 ] }* %array8, i32 0, i32 1, i32 2
  store i32 2, i32* %index_ptr11
  %index_ptr12 = getelementptr { i32, [ 0 x i32 ] }* %array8, i32 0, i32 1, i32 3
  store i32 3, i32* %index_ptr12
  %index_ptr13 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array6, i32 0, i32 1, i32 0
  store { i32, [ 0 x i32 ] }* %array8, { i32, [ 0 x i32 ] }** %index_ptr13
  %array_ptr14 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 4 )
  %array15 = bitcast { i32, [ 0 x i32 ] }* %array_ptr14 to { i32, [ 0 x i32 ] }* 
  %index_ptr16 = getelementptr { i32, [ 0 x i32 ] }* %array15, i32 0, i32 1, i32 0
  store i32 4, i32* %index_ptr16
  %index_ptr17 = getelementptr { i32, [ 0 x i32 ] }* %array15, i32 0, i32 1, i32 1
  store i32 5, i32* %index_ptr17
  %index_ptr18 = getelementptr { i32, [ 0 x i32 ] }* %array15, i32 0, i32 1, i32 2
  store i32 6, i32* %index_ptr18
  %index_ptr19 = getelementptr { i32, [ 0 x i32 ] }* %array15, i32 0, i32 1, i32 3
  store i32 7, i32* %index_ptr19
  %index_ptr20 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array6, i32 0, i32 1, i32 1
  store { i32, [ 0 x i32 ] }* %array15, { i32, [ 0 x i32 ] }** %index_ptr20
  %array_ptr21 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 4 )
  %array22 = bitcast { i32, [ 0 x i32 ] }* %array_ptr21 to { i32, [ 0 x i32 ] }* 
  %index_ptr23 = getelementptr { i32, [ 0 x i32 ] }* %array22, i32 0, i32 1, i32 0
  store i32 8, i32* %index_ptr23
  %index_ptr24 = getelementptr { i32, [ 0 x i32 ] }* %array22, i32 0, i32 1, i32 1
  store i32 9, i32* %index_ptr24
  %index_ptr25 = getelementptr { i32, [ 0 x i32 ] }* %array22, i32 0, i32 1, i32 2
  store i32 10, i32* %index_ptr25
  %index_ptr26 = getelementptr { i32, [ 0 x i32 ] }* %array22, i32 0, i32 1, i32 3
  store i32 11, i32* %index_ptr26
  %index_ptr27 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array6, i32 0, i32 1, i32 2
  store { i32, [ 0 x i32 ] }* %array22, { i32, [ 0 x i32 ] }** %index_ptr27
  %a28 = alloca { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }*
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array6, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a28
  %s29 = alloca i32
  store i32 0, i32* %s29
  %i30 = alloca i32
  store i32 0, i32* %i30
  br label %__cond2

__cond2:
  %_lhs31 = load i32* %i30
  %bop32 = icmp slt i32 %_lhs31, 3
  br i1 %bop32, label %__body1, label %__post0

__fresh7:
  br label %__body1

__body1:
  %j33 = alloca i32
  store i32 0, i32* %j33
  br label %__cond5

__cond5:
  %_lhs34 = load i32* %j33
  %bop35 = icmp slt i32 %_lhs34, 4
  br i1 %bop35, label %__body4, label %__post3

__fresh8:
  br label %__body4

__body4:
  %_lhs36 = load i32* %s29
  %_lhs37 = load i32* %j33
  %_lhs38 = load i32* %i30
  %_lhs39 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a28
  %len_ptr40 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %_lhs39, i32 0, i32 0
  %len41 = load i32* %len_ptr40
  call void @oat_array_bounds_check( i32 %len41, i32 %_lhs38 )
  %array_dereferenced42 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a28
  %elt_ptr43 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a28, i32 0, i32 1, i32 %_lhs38
  %_lhs44 = load i32* %elt_ptr43
  %len_ptr45 = getelementptr i32 %_lhs44, i32 0, i32 0
  %len46 = load i32* %len_ptr45
  %_lhs47 = load i32* %i30
  %_lhs48 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a28
  %len_ptr49 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %_lhs48, i32 0, i32 0
  %len50 = load i32* %len_ptr49
  call void @oat_array_bounds_check( i32 %len50, i32 %_lhs47 )
  %array_dereferenced51 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a28
  %elt_ptr52 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a28, i32 0, i32 1, i32 %_lhs47
  call void @oat_array_bounds_check( i32 %len46, i32 %_lhs37 )
  %array_dereferenced53 = load i32* %elt_ptr52
  %elt_ptr54 = getelementptr i32* %elt_ptr52, i32 0, i32 1, i32 %_lhs37
  %_lhs55 = load i32* %elt_ptr54
  %bop56 = add i32 %_lhs36, %_lhs55
  store i32 %bop56, i32* %s29
  %_lhs57 = load i32* %j33
  %bop58 = add i32 %_lhs57, 1
  store i32 %bop58, i32* %j33
  br label %__cond5

__fresh9:
  br label %__post3

__post3:
  %_lhs59 = load i32* %i30
  %bop60 = add i32 %_lhs59, 1
  store i32 %bop60, i32* %i30
  br label %__cond2

__fresh10:
  br label %__post0

__post0:
  %_lhs61 = load i32* %s29
  ret i32 %_lhs61
}


