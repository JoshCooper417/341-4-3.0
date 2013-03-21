declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
define void @oat_init (){

__fresh15:
  ret void
}


define i32 @program (i32 %argc3, { i32, [ 0 x i8* ] }* %argv1){

__fresh6:
  %argc_slot4 = alloca i32
  store i32 %argc3, i32* %argc_slot4
  %argv_slot2 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv1, { i32, [ 0 x i8* ] }** %argv_slot2
  %array_ptr14 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 3 )
  %array15 = bitcast { i32, [ 0 x i32 ] }* %array_ptr14 to { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* 
  %i19 = alloca i32
  store i32 1, i32* %i19
  %i5 = load i32* %i19
  br label %__check4

__fresh7:
  br label %__check4

__check4:
  br label %__end3

__fresh8:
  %cmp_op17 = icmp slt i32 %i5, 3
  br i32 %cmp_op17, label %__body5, label %__end3

__fresh9:
  br label %__body5

__body5:
  %array_ptr7 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 3 )
  %array8 = bitcast { i32, [ 0 x i32 ] }* %array_ptr7 to { i32, [ 0 x i32 ] }* 
  %i12 = alloca i32
  store i32 1, i32* %i12
  %i6 = load i32* %i12
  br label %__check1

__fresh10:
  br label %__check1

__check1:
  br label %__end0

__fresh11:
  %cmp_op10 = icmp slt i32 %i6, 3
  br i32 %cmp_op10, label %__body2, label %__end0

__fresh12:
  br label %__body2

__body2:
  %elem_ptr9 = getelementptr { i32, [ 0 x i32 ] }* %array8, i32 0, i32 1, i32 %i6
  store i32 1, i32* %elem_ptr9
  %index_op11 = add i32 %i6, 1
  br label %__check1

__fresh13:
  br label %__end0

__end0:
  %elem_ptr16 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array15, i32 0, i32 1, i32 %i5
  store { i32, [ 0 x i32 ] }* %array8, { i32, [ 0 x i32 ] }** %elem_ptr16
  %index_op18 = add i32 %i5, 1
  br label %__check4

__fresh14:
  br label %__end3

__end3:
  %a121 = alloca { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }*
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array15, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a121
  %array_dereferenced22 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a121
  %len_ptr23 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array_dereferenced22, i32 0, i32 0
  %len24 = load i32* %len_ptr23
  call void @oat_array_bounds_check( i32 %len24, i32 0 )
  %elt_ptr25 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array_dereferenced22, i32 0, i32 1, i32 0
  %array_dereferenced26 = load { i32, [ 0 x i32 ] }** %elt_ptr25
  %len_ptr27 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced26, i32 0, i32 0
  %len28 = load i32* %len_ptr27
  call void @oat_array_bounds_check( i32 %len28, i32 0 )
  %elt_ptr29 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced26, i32 0, i32 1, i32 0
  %_lhs30 = load i32* %elt_ptr29
  ret i32 %_lhs30
}


