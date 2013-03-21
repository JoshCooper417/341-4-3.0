declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
define void @oat_init (){

__fresh166:
  ret void
}


define i32 @program (i32 %argc1333, { i32, [ 0 x i8* ] }* %argv1331){

__fresh165:
  %argc_slot1334 = alloca i32
  store i32 %argc1333, i32* %argc_slot1334
  %argv_slot1332 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv1331, { i32, [ 0 x i8* ] }** %argv_slot1332
  %array_ptr1335 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 3 )
  %array1336 = bitcast { i32, [ 0 x i32 ] }* %array_ptr1335 to { i32, [ 0 x i32 ] }* 
  %index_ptr1337 = getelementptr { i32, [ 0 x i32 ] }* %array1336, i32 0, i32 1, i32 0
  store i32 0, i32* %index_ptr1337
  %index_ptr1338 = getelementptr { i32, [ 0 x i32 ] }* %array1336, i32 0, i32 1, i32 1
  store i32 1, i32* %index_ptr1338
  %index_ptr1339 = getelementptr { i32, [ 0 x i32 ] }* %array1336, i32 0, i32 1, i32 2
  store i32 2, i32* %index_ptr1339
  %arr1340 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %array1336, { i32, [ 0 x i32 ] }** %arr1340
  %_lhs1341 = load { i32, [ 0 x i32 ] }** %arr1340
  %len_ptr1342 = getelementptr { i32, [ 0 x i32 ] }* %_lhs1341, i32 0, i32 0
  %len1343 = load i32* %len_ptr1342
  %len1344 = alloca i32
  store i32 %len1343, i32* %len1344
  %_lhs1345 = load i32* %len1344
  ret i32 %_lhs1345
}


