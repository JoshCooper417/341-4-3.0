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


define i32 @program (i32 %argc2337, { i32, [ 0 x i8* ] }* %argv2335){

__fresh328:
  %argc_slot2338 = alloca i32
  store i32 %argc2337, i32* %argc_slot2338
  %argv_slot2336 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv2335, { i32, [ 0 x i8* ] }** %argv_slot2336
  %array_ptr2339 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array2340 = bitcast { i32, [ 0 x i32 ] }* %array_ptr2339 to { i32, [ 0 x i32 ] }* 
  %index_ptr2341 = getelementptr { i32, [ 0 x i32 ] }* %array2340, i32 0, i32 1, i32 0
  store i32 0, i32* %index_ptr2341
  %index_ptr2342 = getelementptr { i32, [ 0 x i32 ] }* %array2340, i32 0, i32 1, i32 1
  store i32 0, i32* %index_ptr2342
  %a2343 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %array2340, { i32, [ 0 x i32 ] }** %a2343
  %_lhs2350 = load [ 0 x i32 ]* %elt_ptr2349
  ret [ 0 x i32 ] %_lhs2350
}


