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
  store i32 1, i32* %i5
  %index_op17 = load i32* %i5
  br label %__check4

__check4:
  %cmp_op16 = icmp slt i32 %index_op17, 3
  br i32 %cmp_op16, label %__body5, label %__end3

__fresh7:
  br label %__body5

__body5:
  store i32 1, i32* %i6
  %index_op11 = load i32* %i6
  br label %__check1

__check1:
  %cmp_op10 = icmp slt i32 %index_op11, 3
  br i32 %cmp_op10, label %__body2, label %__end0

__fresh8:
  br label %__body2

__body2:
  %elem_ptr9 = getelementptr { i32, [ 0 x i32 ] }* %array8, i32 0, i32 1, i32 %index_op11
  store i32 1, i32* %elem_ptr9
  %index_op11 = add i32 %index_op11, 1
  br label %__check1

__fresh9:
  br label %__end0

__end0:
  %elem_ptr15 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array14, i32 0, i32 1, i32 %index_op17
  store { i32, [ 0 x i32 ] }* %array8, { i32, [ 0 x i32 ] }** %elem_ptr15
  %index_op17 = add i32 %index_op17, 1
  br label %__check4

__fresh10:
  br label %__end3

__end3:
  %a119 = alloca { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }*
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array14, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a119
  %len_ptr20 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a119, i32 0, i32 0
  %len21 = load i32* %len_ptr20
  call void @oat_array_bounds_check( i32 %len21, i32 0 )
  %array_dereferenced22 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a119
  %elt_ptr23 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array_dereferenced22, i32 0, i32 1, i32 0
  %len_ptr24 = getelementptr { i32, [ 0 x i32 ] }** %elt_ptr23, i32 0, i32 0
  %len25 = load i32* %len_ptr24
  call void @oat_array_bounds_check( i32 %len25, i32 0 )
  %array_dereferenced26 = load { i32, [ 0 x i32 ] }** %elt_ptr23
  %elt_ptr27 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced26, i32 0, i32 1, i32 0
  %_lhs28 = load i32* %elt_ptr27
  ret i32 %_lhs28
}


