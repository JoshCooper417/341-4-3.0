declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
define void @oat_init (){

__fresh41:
  ret void
}


define i32 @program (i32 %argc3, { i32, [ 0 x i8* ] }* %argv1){

__fresh24:
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

__fresh25:
  br label %__body5

__body5:
  store i32 1, i32* %i6
  %index_op11 = load i32* %i6
  br label %__check1

__check1:
  %cmp_op10 = icmp slt i32 %index_op11, 3
  br i32 %cmp_op10, label %__body2, label %__end0

__fresh26:
  br label %__body2

__body2:
  %elem_ptr9 = getelementptr { i32, [ 0 x i32 ] }* %array8, i32 0, i32 1, i32 %index_op11
  store i32 1, i32* %elem_ptr9
  %index_op11 = add i32 %index_op11, 1
  br label %__check1

__fresh27:
  br label %__end0

__end0:
  %elem_ptr15 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array14, i32 0, i32 1, i32 %index_op17
  store { i32, [ 0 x i32 ] }* %array8, { i32, [ 0 x i32 ] }** %elem_ptr15
  %index_op17 = add i32 %index_op17, 1
  br label %__check4

__fresh28:
  br label %__end3

__end3:
  %a119 = alloca { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }*
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array14, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a119
  store i32 1, i32* %i20
  %index_op32 = load i32* %i20
  br label %__check10

__check10:
  %cmp_op31 = icmp slt i32 %index_op32, 3
  br i32 %cmp_op31, label %__body11, label %__end9

__fresh29:
  br label %__body11

__body11:
  store i32 1, i32* %i21
  %index_op26 = load i32* %i21
  br label %__check7

__check7:
  %cmp_op25 = icmp slt i32 %index_op26, 3
  br i32 %cmp_op25, label %__body8, label %__end6

__fresh30:
  br label %__body8

__body8:
  %elem_ptr24 = getelementptr { i32, [ 0 x i32 ] }* %array23, i32 0, i32 1, i32 %index_op26
  store i32 2, i32* %elem_ptr24
  %index_op26 = add i32 %index_op26, 1
  br label %__check7

__fresh31:
  br label %__end6

__end6:
  %elem_ptr30 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array29, i32 0, i32 1, i32 %index_op32
  store { i32, [ 0 x i32 ] }* %array23, { i32, [ 0 x i32 ] }** %elem_ptr30
  %index_op32 = add i32 %index_op32, 1
  br label %__check10

__fresh32:
  br label %__end9

__end9:
  %a234 = alloca { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }*
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array29, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a234
  store i32 1, i32* %i35
  %index_op47 = load i32* %i35
  br label %__check16

__check16:
  %cmp_op46 = icmp slt i32 %index_op47, 3
  br i32 %cmp_op46, label %__body17, label %__end15

__fresh33:
  br label %__body17

__body17:
  store i32 1, i32* %i36
  %index_op41 = load i32* %i36
  br label %__check13

__check13:
  %cmp_op40 = icmp slt i32 %index_op41, 3
  br i32 %cmp_op40, label %__body14, label %__end12

__fresh34:
  br label %__body14

__body14:
  %elem_ptr39 = getelementptr { i32, [ 0 x i32 ] }* %array38, i32 0, i32 1, i32 %index_op41
  store i32 3, i32* %elem_ptr39
  %index_op41 = add i32 %index_op41, 1
  br label %__check13

__fresh35:
  br label %__end12

__end12:
  %elem_ptr45 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array44, i32 0, i32 1, i32 %index_op47
  store { i32, [ 0 x i32 ] }* %array38, { i32, [ 0 x i32 ] }** %elem_ptr45
  %index_op47 = add i32 %index_op47, 1
  br label %__check16

__fresh36:
  br label %__end15

__end15:
  %a349 = alloca { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }*
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array44, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a349
  store i32 1, i32* %i50
  %index_op62 = load i32* %i50
  br label %__check22

__check22:
  %cmp_op61 = icmp slt i32 %index_op62, 3
  br i32 %cmp_op61, label %__body23, label %__end21

__fresh37:
  br label %__body23

__body23:
  store i32 1, i32* %i51
  %index_op56 = load i32* %i51
  br label %__check19

__check19:
  %cmp_op55 = icmp slt i32 %index_op56, 3
  br i32 %cmp_op55, label %__body20, label %__end18

__fresh38:
  br label %__body20

__body20:
  %elem_ptr54 = getelementptr { i32, [ 0 x i32 ] }* %array53, i32 0, i32 1, i32 %index_op56
  store i32 4, i32* %elem_ptr54
  %index_op56 = add i32 %index_op56, 1
  br label %__check19

__fresh39:
  br label %__end18

__end18:
  %elem_ptr60 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array59, i32 0, i32 1, i32 %index_op62
  store { i32, [ 0 x i32 ] }* %array53, { i32, [ 0 x i32 ] }** %elem_ptr60
  %index_op62 = add i32 %index_op62, 1
  br label %__check22

__fresh40:
  br label %__end21

__end21:
  %a464 = alloca { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }*
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array59, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a464
  %_lhs65 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a234
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %_lhs65, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a119
  %_lhs66 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a119
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %_lhs66, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a349
  %_lhs67 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a464
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %_lhs67, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a119
  %_lhs68 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a349
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %_lhs68, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a234
  %_lhs69 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a234
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %_lhs69, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a464
  %_lhs70 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a464
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %_lhs70, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a349
  %len_ptr71 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a349, i32 0, i32 0
  %len72 = load i32* %len_ptr71
  call void @oat_array_bounds_check( i32 %len72, i32 0 )
  %array_dereferenced73 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a349
  %elt_ptr74 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array_dereferenced73, i32 0, i32 1, i32 0
  %len_ptr75 = getelementptr { i32, [ 0 x i32 ] }** %elt_ptr74, i32 0, i32 0
  %len76 = load i32* %len_ptr75
  call void @oat_array_bounds_check( i32 %len76, i32 0 )
  %array_dereferenced77 = load { i32, [ 0 x i32 ] }** %elt_ptr74
  %elt_ptr78 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced77, i32 0, i32 1, i32 0
  %_lhs79 = load i32* %elt_ptr78
  ret i32 %_lhs79
}


