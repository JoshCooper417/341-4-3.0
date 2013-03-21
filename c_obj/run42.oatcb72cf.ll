declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
define void @oat_init (){

__fresh140:
  ret void
}


define i32 @program (i32 %argc395, { i32, [ 0 x i8* ] }* %argv393){

__fresh131:
  %argc_slot396 = alloca i32
  store i32 %argc395, i32* %argc_slot396
  %argv_slot394 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv393, { i32, [ 0 x i8* ] }** %argv_slot394
  %array_ptr406 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 3 )
  %array407 = bitcast { i32, [ 0 x i32 ] }* %array_ptr406 to { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* 
  %i411 = alloca i32
  store i32 1, i32* %i411
  %i397 = load i32* %i411
  br label %__check129

__fresh132:
  br label %__check129

__check129:
  br label %__end128

__fresh133:
  %cmp_op409 = icmp slt i32 %i397, 3
  br i32 %cmp_op409, label %__body130, label %__end128

__fresh134:
  br label %__body130

__body130:
  %array_ptr399 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 3 )
  %array400 = bitcast { i32, [ 0 x i32 ] }* %array_ptr399 to { i32, [ 0 x i32 ] }* 
  %i404 = alloca i32
  store i32 1, i32* %i404
  %i398 = load i32* %i404
  br label %__check126

__fresh135:
  br label %__check126

__check126:
  br label %__end125

__fresh136:
  %cmp_op402 = icmp slt i32 %i398, 3
  br i32 %cmp_op402, label %__body127, label %__end125

__fresh137:
  br label %__body127

__body127:
  %elem_ptr401 = getelementptr { i32, [ 0 x i32 ] }* %array400, i32 0, i32 1, i32 %i398
  store i32 1, i32* %elem_ptr401
  %index_op403 = add i32 %i398, 1
  br label %__check126

__fresh138:
  br label %__end125

__end125:
  %elem_ptr408 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array407, i32 0, i32 1, i32 %i397
  store { i32, [ 0 x i32 ] }* %array400, { i32, [ 0 x i32 ] }** %elem_ptr408
  %index_op410 = add i32 %i397, 1
  br label %__check129

__fresh139:
  br label %__end128

__end128:
  %a1413 = alloca { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }*
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array407, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a1413
  %len_ptr414 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a1413, i32 0, i32 0
  %len415 = load i32* %len_ptr414
  call void @oat_array_bounds_check( i32 %len415, i32 0 )
  %array_dereferenced416 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a1413
  %elt_ptr417 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array_dereferenced416, i32 0, i32 1, i32 0
  %len_ptr418 = getelementptr { i32, [ 0 x i32 ] }** %elt_ptr417, i32 0, i32 0
  %len419 = load i32* %len_ptr418
  call void @oat_array_bounds_check( i32 %len419, i32 0 )
  %array_dereferenced420 = load { i32, [ 0 x i32 ] }** %elt_ptr417
  %elt_ptr421 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced420, i32 0, i32 1, i32 0
  %_lhs422 = load i32* %elt_ptr421
  ret i32 %_lhs422
}


