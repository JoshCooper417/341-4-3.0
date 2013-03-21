declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
define void @oat_init (){

__fresh400:
  ret void
}


define i32 @program (i32 %argc2556, { i32, [ 0 x i8* ] }* %argv2554){

__fresh399:
  %argc_slot2557 = alloca i32
  store i32 %argc2556, i32* %argc_slot2557
  %argv_slot2555 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv2554, { i32, [ 0 x i8* ] }** %argv_slot2555
  %array_ptr2558 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array2559 = bitcast { i32, [ 0 x i32 ] }* %array_ptr2558 to { i32, [ 0 x i32 ] }* 
  %index_ptr2560 = getelementptr { i32, [ 0 x i32 ] }* %array2559, i32 0, i32 1, i32 0
  store i32 0, i32* %index_ptr2560
  %index_ptr2561 = getelementptr { i32, [ 0 x i32 ] }* %array2559, i32 0, i32 1, i32 1
  store i32 0, i32* %index_ptr2561
  %a2562 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %array2559, { i32, [ 0 x i32 ] }** %a2562
  %unop2563 = sub i32 0, 1
  %len_ptr2564 = getelementptr { i32, [ 0 x i32 ] }** %a2562, i32 0, i32 0
  %len2565 = load i32* %len_ptr2564
  call void @oat_array_bounds_check( i32 %len2565, i32 %unop2563 )
  %array_dereferenced2566 = load { i32, [ 0 x i32 ] }** %a2562
  %elt_ptr2567 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2566, i32 0, i32 1, i32 %unop2563
  %_lhs2568 = load i32* %elt_ptr2567
  ret i32 %_lhs2568
}


