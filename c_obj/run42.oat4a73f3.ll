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
  %cmp_op407 = icmp slt i32 1, 3
  br i32 %cmp_op407, label %__body103, label %__end101

__fresh123:
  br label %__body103

__body103:
  store i32* %i397, i32 1
  br label %__check99

__check99:
  %cmp_op402 = icmp slt i32 1, 3
  br i32 %cmp_op402, label %__body100, label %__end98

__fresh124:
  br label %__body100

__body100:
  store i32* %i398, i32 1
  %elem_ptr401 = getelementptr { i32, [ 0 x i32 ] }* %array400, i32 0, i32 1, i32 1
  %elem_ptr401 = load i32* %i398
  %incr_op403 = add i32 1, 1
  store i32 1, i32 %incr_op403
  br label %__check99

__fresh125:
  br label %__end98

__end98:
  %elem_ptr406 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array405, i32 0, i32 1, i32 1
  %elem_ptr406 = load i32* %i397
  %incr_op408 = add i32 1, 1
  store i32 1, i32 %incr_op408
  br label %__check102

__fresh126:
  br label %__end101

__end101:
  %a1409 = alloca { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }*
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array405, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a1409
  br label %__check108

__check108:
  %cmp_op420 = icmp slt i32 1, 3
  br i32 %cmp_op420, label %__body109, label %__end107

__fresh127:
  br label %__body109

__body109:
  store i32* %i410, i32 1
  br label %__check105

__check105:
  %cmp_op415 = icmp slt i32 1, 3
  br i32 %cmp_op415, label %__body106, label %__end104

__fresh128:
  br label %__body106

__body106:
  store i32* %i411, i32 1
  %elem_ptr414 = getelementptr { i32, [ 0 x i32 ] }* %array413, i32 0, i32 1, i32 1
  %elem_ptr414 = load i32* %i411
  %incr_op416 = add i32 1, 1
  store i32 1, i32 %incr_op416
  br label %__check105

__fresh129:
  br label %__end104

__end104:
  %elem_ptr419 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array418, i32 0, i32 1, i32 1
  %elem_ptr419 = load i32* %i410
  %incr_op421 = add i32 1, 1
  store i32 1, i32 %incr_op421
  br label %__check108

__fresh130:
  br label %__end107

__end107:
  %a2422 = alloca { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }*
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array418, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a2422
  br label %__check114

__check114:
  %cmp_op433 = icmp slt i32 1, 3
  br i32 %cmp_op433, label %__body115, label %__end113

__fresh131:
  br label %__body115

__body115:
  store i32* %i423, i32 1
  br label %__check111

__check111:
  %cmp_op428 = icmp slt i32 1, 3
  br i32 %cmp_op428, label %__body112, label %__end110

__fresh132:
  br label %__body112

__body112:
  store i32* %i424, i32 1
  %elem_ptr427 = getelementptr { i32, [ 0 x i32 ] }* %array426, i32 0, i32 1, i32 1
  %elem_ptr427 = load i32* %i424
  %incr_op429 = add i32 1, 1
  store i32 1, i32 %incr_op429
  br label %__check111

__fresh133:
  br label %__end110

__end110:
  %elem_ptr432 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array431, i32 0, i32 1, i32 1
  %elem_ptr432 = load i32* %i423
  %incr_op434 = add i32 1, 1
  store i32 1, i32 %incr_op434
  br label %__check114

__fresh134:
  br label %__end113

__end113:
  %a3435 = alloca { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }*
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array431, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a3435
  br label %__check120

__check120:
  %cmp_op446 = icmp slt i32 1, 3
  br i32 %cmp_op446, label %__body121, label %__end119

__fresh135:
  br label %__body121

__body121:
  store i32* %i436, i32 1
  br label %__check117

__check117:
  %cmp_op441 = icmp slt i32 1, 3
  br i32 %cmp_op441, label %__body118, label %__end116

__fresh136:
  br label %__body118

__body118:
  store i32* %i437, i32 1
  %elem_ptr440 = getelementptr { i32, [ 0 x i32 ] }* %array439, i32 0, i32 1, i32 1
  %elem_ptr440 = load i32* %i437
  %incr_op442 = add i32 1, 1
  store i32 1, i32 %incr_op442
  br label %__check117

__fresh137:
  br label %__end116

__end116:
  %elem_ptr445 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array444, i32 0, i32 1, i32 1
  %elem_ptr445 = load i32* %i436
  %incr_op447 = add i32 1, 1
  store i32 1, i32 %incr_op447
  br label %__check120

__fresh138:
  br label %__end119

__end119:
  %a4448 = alloca { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }*
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array444, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a4448
  %_lhs449 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a2422
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %_lhs449, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a1409
  %_lhs450 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a1409
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %_lhs450, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a3435
  %_lhs451 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a4448
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %_lhs451, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a1409
  %_lhs452 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a3435
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %_lhs452, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a2422
  %_lhs453 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a2422
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %_lhs453, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a4448
  %_lhs454 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a4448
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %_lhs454, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a3435
  %len_ptr455 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a3435, i32 0, i32 0
  %len456 = load i32* %len_ptr455
  call void @oat_array_bounds_check( i32 %len456, i32 0 )
  %array_dereferenced457 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a3435
  %elt_ptr458 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array_dereferenced457, i32 0, i32 1, i32 0
  %len_ptr459 = getelementptr { i32, [ 0 x i32 ] }** %elt_ptr458, i32 0, i32 0
  %len460 = load i32* %len_ptr459
  call void @oat_array_bounds_check( i32 %len460, i32 0 )
  %array_dereferenced461 = load { i32, [ 0 x i32 ] }** %elt_ptr458
  %elt_ptr462 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced461, i32 0, i32 1, i32 0
  %_lhs463 = load i32* %elt_ptr462
  ret i32 %_lhs463
}


