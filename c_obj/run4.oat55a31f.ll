declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@arr1932 = global { i32, [ 0 x i32 ] }* zeroinitializer, align 4		; initialized by arr1932.init
define void @oat_init (){

__fresh392:
  call void @arr1932.init(  )
  ret void
}


define i32 @program (i32 %argc1935, { i32, [ 0 x i8* ] }* %argv1933){

__fresh391:
  %argc_slot1936 = alloca i32
  store i32 %argc1935, i32* %argc_slot1936
  %argv_slot1934 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv1933, { i32, [ 0 x i8* ] }** %argv_slot1934
  %_lhs1937 = load { i32, [ 0 x i32 ] }** @arr1932
  ret { i32, [ 0 x i32 ] }* %_lhs1937
}


define void @arr1932.init (){

__fresh390:
  %array_ptr1928 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array1929 = bitcast { i32, [ 0 x i32 ] }* %array_ptr1928 to { i32, [ 0 x i32 ] }* 
  %index_ptr1930 = getelementptr { i32, [ 0 x i32 ] }* %array1929, i32 0, i32 1, i32 0
  store i32 1, i32* %index_ptr1930
  %index_ptr1931 = getelementptr { i32, [ 0 x i32 ] }* %array1929, i32 0, i32 1, i32 1
  store i32 2, i32* %index_ptr1931
  store { i32, [ 0 x i32 ] }* %array1929, { i32, [ 0 x i32 ] }** @arr1932
  ret void
}


