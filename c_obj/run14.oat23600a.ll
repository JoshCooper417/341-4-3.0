declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
define void @oat_init (){

__fresh10:
  ret void
}


define i32 @program (i32 %argc17, { i32, [ 0 x i8* ] }* %argv15){

__fresh9:
  %argc_slot18 = alloca i32
  store i32 %argc17, i32* %argc_slot18
  %argv_slot16 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv15, { i32, [ 0 x i8* ] }** %argv_slot16
  %array_ptr19 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array20 = bitcast { i32, [ 0 x i32 ] }* %array_ptr19 to { i32, [ 0 x i32 ] }* 
  %index_ptr21 = getelementptr { i32, [ 0 x i32 ] }* %array20, i32 0, i32 1, i32 0
  store i32 1, i32* %index_ptr21
  %index_ptr22 = getelementptr { i32, [ 0 x i32 ] }* %array20, i32 0, i32 1, i32 1
  store i32 1, i32* %index_ptr22
  %a23 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %array20, { i32, [ 0 x i32 ] }** %a23
  %array_dereferenced24 = load { i32, [ 0 x i32 ] }** %a23
  %len_ptr25 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced24, i32 0, i32 0
  %len26 = load i32* %len_ptr25
  call void @oat_array_bounds_check( i32 %len26, i32 1 )
  %elt_ptr27 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced24, i32 0, i32 1, i32 1
  %_lhs28 = load i32* %elt_ptr27
  ret i32 %_lhs28
}


define i32 @g (i32 %x3){

__fresh4:
  %x_slot4 = alloca i32
  store i32 %x3, i32* %x_slot4
  %array_ptr7 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 3 )
  %array8 = bitcast { i32, [ 0 x i32 ] }* %array_ptr7 to { i32, [ 0 x i32 ] }* 
  %i12 = alloca i32
  store i32 1, i32* %i12
  %i5 = load i32* %i12
  br label %__check2

__fresh5:
  br label %__check2

__check2:
  br label %__end1

__fresh6:
  %cmp_op10 = icmp slt i32 %i5, 3
  br i32 %cmp_op10, label %__body3, label %__end1

__fresh7:
  br label %__body3

__body3:
  %_lhs6 = load i32* %x_slot4
  %elem_ptr9 = getelementptr { i32, [ 0 x i32 ] }* %array8, i32 0, i32 1, i32 %i5
  store i32 %_lhs6, i32* %elem_ptr9
  %index_op11 = add i32 %i5, 1
  br label %__check2

__fresh8:
  br label %__end1

__end1:
  %arr14 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %array8, { i32, [ 0 x i32 ] }** %arr14
  ret i32 3
}


define i32 @f ({ i32, [ 0 x i32 ] }* %a1){

__fresh0:
  %a_slot2 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %a1, { i32, [ 0 x i32 ] }** %a_slot2
  ret i32 3
}


