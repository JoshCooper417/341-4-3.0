declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@arr1950 = global { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* zeroinitializer, align 4		; initialized by arr1950.init
define void @oat_init (){

__fresh395:
  call void @arr1950.init(  )
  ret void
}


define i32 @program (i32 %argc1953, { i32, [ 0 x i8* ] }* %argv1951){

__fresh394:
  %argc_slot1954 = alloca i32
  store i32 %argc1953, i32* %argc_slot1954
  %argv_slot1952 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv1951, { i32, [ 0 x i8* ] }** %argv_slot1952
  %_lhs1955 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** @arr1950
  ret { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %_lhs1955
}


define void @arr1950.init (){

__fresh393:
  %array_ptr1938 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array1939 = bitcast { i32, [ 0 x i32 ] }* %array_ptr1938 to { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* 
  %array_ptr1940 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array1941 = bitcast { i32, [ 0 x i32 ] }* %array_ptr1940 to { i32, [ 0 x i32 ] }* 
  %index_ptr1942 = getelementptr { i32, [ 0 x i32 ] }* %array1941, i32 0, i32 1, i32 0
  store i32 1, i32* %index_ptr1942
  %index_ptr1943 = getelementptr { i32, [ 0 x i32 ] }* %array1941, i32 0, i32 1, i32 1
  store i32 2, i32* %index_ptr1943
  %index_ptr1944 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array1939, i32 0, i32 1, i32 0
  store { i32, [ 0 x i32 ] }* %array1941, { i32, [ 0 x i32 ] }** %index_ptr1944
  %array_ptr1945 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array1946 = bitcast { i32, [ 0 x i32 ] }* %array_ptr1945 to { i32, [ 0 x i32 ] }* 
  %index_ptr1947 = getelementptr { i32, [ 0 x i32 ] }* %array1946, i32 0, i32 1, i32 0
  store i32 3, i32* %index_ptr1947
  %index_ptr1948 = getelementptr { i32, [ 0 x i32 ] }* %array1946, i32 0, i32 1, i32 1
  store i32 4, i32* %index_ptr1948
  %index_ptr1949 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array1939, i32 0, i32 1, i32 1
  store { i32, [ 0 x i32 ] }* %array1946, { i32, [ 0 x i32 ] }** %index_ptr1949
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array1939, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** @arr1950
  ret void
}


