declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
define void @oat_init (){

__fresh139:
  ret void
}


define i32 @program (i32 %argc395, { i32, [ 0 x i8* ] }* %argv393){

__fresh122:
  %argc_slot396 = alloca i32
  store i32 %argc395, i32* %argc_slot396
  %argv_slot394 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv393, { i32, [ 0 x i8* ] }** %argv_slot394
  br label %__check102

__check102:
  %cmp_op408 = icmp slt i32 %index_op409, 3
  br i32 %cmp_op408, label %__body103, label %__end101

__fresh123:
  br label %__body103

__body103:
  %index_op409 = load i32* %i397
  br label %__check99

__check99:
  %cmp_op402 = icmp slt i32 %index_op403, 3
  br i32 %cmp_op402, label %__body100, label %__end98

__fresh124:
  br label %__body100

__body100:
  %index_op403 = load i32* %i398
  %elem_ptr401 = getelementptr { i32, [ 0 x i32 ] }* %array400, i32 0, i32 1, i32 %index_op403
  store i32 1, i32* %elem_ptr401
  %index_op403 = add i32 %index_op403, 1
  br label %__check99

__fresh125:
  br label %__end98

__end98:
  %elem_ptr407 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array406, i32 0, i32 1, i32 %index_op409
  store { i32, [ 0 x i32 ] }* %array400, { i32, [ 0 x i32 ] }** %elem_ptr407
  %index_op409 = add i32 %index_op409, 1
  br label %__check102

__fresh126:
  br label %__end101

__end101:
  %a1411 = alloca { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }*
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array406, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a1411
  br label %__check108

__check108:
  %cmp_op423 = icmp slt i32 %index_op424, 3
  br i32 %cmp_op423, label %__body109, label %__end107

__fresh127:
  br label %__body109

__body109:
  %index_op424 = load i32* %i412
  br label %__check105

__check105:
  %cmp_op417 = icmp slt i32 %index_op418, 3
  br i32 %cmp_op417, label %__body106, label %__end104

__fresh128:
  br label %__body106

__body106:
  %index_op418 = load i32* %i413
  %elem_ptr416 = getelementptr { i32, [ 0 x i32 ] }* %array415, i32 0, i32 1, i32 %index_op418
  store i32 2, i32* %elem_ptr416
  %index_op418 = add i32 %index_op418, 1
  br label %__check105

__fresh129:
  br label %__end104

__end104:
  %elem_ptr422 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array421, i32 0, i32 1, i32 %index_op424
  store { i32, [ 0 x i32 ] }* %array415, { i32, [ 0 x i32 ] }** %elem_ptr422
  %index_op424 = add i32 %index_op424, 1
  br label %__check108

__fresh130:
  br label %__end107

__end107:
  %a2426 = alloca { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }*
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array421, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a2426
  br label %__check114

__check114:
  %cmp_op438 = icmp slt i32 %index_op439, 3
  br i32 %cmp_op438, label %__body115, label %__end113

__fresh131:
  br label %__body115

__body115:
  %index_op439 = load i32* %i427
  br label %__check111

__check111:
  %cmp_op432 = icmp slt i32 %index_op433, 3
  br i32 %cmp_op432, label %__body112, label %__end110

__fresh132:
  br label %__body112

__body112:
  %index_op433 = load i32* %i428
  %elem_ptr431 = getelementptr { i32, [ 0 x i32 ] }* %array430, i32 0, i32 1, i32 %index_op433
  store i32 3, i32* %elem_ptr431
  %index_op433 = add i32 %index_op433, 1
  br label %__check111

__fresh133:
  br label %__end110

__end110:
  %elem_ptr437 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array436, i32 0, i32 1, i32 %index_op439
  store { i32, [ 0 x i32 ] }* %array430, { i32, [ 0 x i32 ] }** %elem_ptr437
  %index_op439 = add i32 %index_op439, 1
  br label %__check114

__fresh134:
  br label %__end113

__end113:
  %a3441 = alloca { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }*
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array436, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a3441
  br label %__check120

__check120:
  %cmp_op453 = icmp slt i32 %index_op454, 3
  br i32 %cmp_op453, label %__body121, label %__end119

__fresh135:
  br label %__body121

__body121:
  %index_op454 = load i32* %i442
  br label %__check117

__check117:
  %cmp_op447 = icmp slt i32 %index_op448, 3
  br i32 %cmp_op447, label %__body118, label %__end116

__fresh136:
  br label %__body118

__body118:
  %index_op448 = load i32* %i443
  %elem_ptr446 = getelementptr { i32, [ 0 x i32 ] }* %array445, i32 0, i32 1, i32 %index_op448
  store i32 4, i32* %elem_ptr446
  %index_op448 = add i32 %index_op448, 1
  br label %__check117

__fresh137:
  br label %__end116

__end116:
  %elem_ptr452 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array451, i32 0, i32 1, i32 %index_op454
  store { i32, [ 0 x i32 ] }* %array445, { i32, [ 0 x i32 ] }** %elem_ptr452
  %index_op454 = add i32 %index_op454, 1
  br label %__check120

__fresh138:
  br label %__end119

__end119:
  %a4456 = alloca { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }*
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array451, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a4456
  %_lhs457 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a2426
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %_lhs457, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a1411
  %_lhs458 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a1411
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %_lhs458, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a3441
  %_lhs459 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a4456
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %_lhs459, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a1411
  %_lhs460 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a3441
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %_lhs460, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a2426
  %_lhs461 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a2426
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %_lhs461, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a4456
  %_lhs462 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a4456
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %_lhs462, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a3441
  %len_ptr463 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a3441, i32 0, i32 0
  %len464 = load i32* %len_ptr463
  call void @oat_array_bounds_check( i32 %len464, i32 0 )
  %array_dereferenced465 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a3441
  %elt_ptr466 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array_dereferenced465, i32 0, i32 1, i32 0
  %len_ptr467 = getelementptr { i32, [ 0 x i32 ] }** %elt_ptr466, i32 0, i32 0
  %len468 = load i32* %len_ptr467
  call void @oat_array_bounds_check( i32 %len468, i32 0 )
  %array_dereferenced469 = load { i32, [ 0 x i32 ] }** %elt_ptr466
  %elt_ptr470 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced469, i32 0, i32 1, i32 0
  %_lhs471 = load i32* %elt_ptr470
  ret i32 %_lhs471
}


