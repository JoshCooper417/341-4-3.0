declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
define void @oat_init (){

__fresh329:
  ret void
}


define i32 @program (i32 %argc2369, { i32, [ 0 x i8* ] }* %argv2367){

__fresh328:
  %argc_slot2370 = alloca i32
  store i32 %argc2369, i32* %argc_slot2370
  %argv_slot2368 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv2367, { i32, [ 0 x i8* ] }** %argv_slot2368
  %array_ptr2371 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array2372 = bitcast { i32, [ 0 x i32 ] }* %array_ptr2371 to { i32, [ 0 x i32 ] }* 
  %index_ptr2373 = getelementptr { i32, [ 0 x i32 ] }* %array2372, i32 0, i32 1, i32 0
  store i32 0, i32* %index_ptr2373
  %index_ptr2374 = getelementptr { i32, [ 0 x i32 ] }* %array2372, i32 0, i32 1, i32 1
  store i32 0, i32* %index_ptr2374
  %a2375 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %array2372, { i32, [ 0 x i32 ] }** %a2375
  %unop2376 = sub i32 0, 1
  %_lhs2377 = load { i32, [ 0 x i32 ] }** %a2375
  %len_ptr2378 = getelementptr { i32, [ 0 x i32 ] }* %_lhs2377, i32 0, i32 0
  %len2379 = load i32* %len_ptr2378
  call void @oat_array_bounds_check( i32 %len2379, i32 %unop2376 )
  %array_dereferenced2380 = load { i32, [ 0 x i32 ] }** %a2375
  %elt_ptr2381 = getelementptr { i32, [ 0 x i32 ] }** %a2375, i32 0, i32 1, i32 %unop2376
  %_lhs2382 = load [ 0 x i32 ]* %elt_ptr2381
  ret [ 0 x i32 ] %_lhs2382
}


