declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
define void @oat_init (){

__fresh163:
  ret void
}


define i32 @program (i32 %argc395, { i32, [ 0 x i8* ] }* %argv393){

__fresh154:
  %argc_slot396 = alloca i32
  store i32 %argc395, i32* %argc_slot396
  %argv_slot394 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv393, { i32, [ 0 x i8* ] }** %argv_slot394
  %array_ptr406 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 3 )
  %array407 = bitcast { i32, [ 0 x i32 ] }* %array_ptr406 to { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* 
  %i411 = alloca i32
  store i32 1, i32* %i411
  %i397 = load i32* %i411
  br label %__check152

__fresh155:
  br label %__check152

__check152:
  br label %__end151

__fresh156:
  %cmp_op409 = icmp slt i32 %i397, 3
  br i32 %cmp_op409, label %__body153, label %__end151

__fresh157:
  br label %__body153

__body153:
  %array_ptr399 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 3 )
  %array400 = bitcast { i32, [ 0 x i32 ] }* %array_ptr399 to { i32, [ 0 x i32 ] }* 
  %i404 = alloca i32
  store i32 1, i32* %i404
  %i398 = load i32* %i404
  br label %__check149

__fresh158:
  br label %__check149

__check149:
  br label %__end148

__fresh159:
  %cmp_op402 = icmp slt i32 %i398, 3
  br i32 %cmp_op402, label %__body150, label %__end148

__fresh160:
  br label %__body150

__body150:
  %elem_ptr401 = getelementptr { i32, [ 0 x i32 ] }* %array400, i32 0, i32 1, i32 %i398
  store i32 1, i32* %elem_ptr401
  %index_op403 = add i32 %i398, 1
  br label %__check149

__fresh161:
  br label %__end148

__end148:
  %elem_ptr408 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array407, i32 0, i32 1, i32 %i397
  store { i32, [ 0 x i32 ] }* %array400, { i32, [ 0 x i32 ] }** %elem_ptr408
  %index_op410 = add i32 %i397, 1
  br label %__check152

__fresh162:
  br label %__end151

__end151:
  %a1413 = alloca { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }*
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array407, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a1413
  %array_dereferenced418 = load { i32, [ 0 x i32 ] }** %elt_ptr417
  %array_dereferenced414 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a1413
  %len_ptr415 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array_dereferenced414, i32 0, i32 0
  %len416 = load i32* %len_ptr415
  call void @oat_array_bounds_check( i32 %len416, i32 0 )
  %elt_ptr417 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array_dereferenced414, i32 0, i32 1, i32 0
  %len_ptr419 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced418, i32 0, i32 0
  %len420 = load i32* %len_ptr419
  call void @oat_array_bounds_check( i32 %len420, i32 0 )
  %elt_ptr421 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced418, i32 0, i32 1, i32 0
  %_lhs422 = load i32* %elt_ptr421
  ret i32 %_lhs422
}


