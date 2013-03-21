declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@arr1968 = global { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* zeroinitializer, align 4		; initialized by arr1968.init
define void @oat_init (){

__fresh398:
  call void @arr1968.init(  )
  ret void
}


define i32 @program (i32 %argc1971, { i32, [ 0 x i8* ] }* %argv1969){

__fresh397:
  %argc_slot1972 = alloca i32
  store i32 %argc1971, i32* %argc_slot1972
  %argv_slot1970 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv1969, { i32, [ 0 x i8* ] }** %argv_slot1970
  %_lhs1973 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** @arr1968
  ret { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %_lhs1973
}


define void @arr1968.init (){

__fresh396:
  %array_ptr1956 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array1957 = bitcast { i32, [ 0 x i32 ] }* %array_ptr1956 to { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* 
  %array_ptr1958 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array1959 = bitcast { i32, [ 0 x i32 ] }* %array_ptr1958 to { i32, [ 0 x i32 ] }* 
  %index_ptr1960 = getelementptr { i32, [ 0 x i32 ] }* %array1959, i32 0, i32 1, i32 0
  store i32 1, i32* %index_ptr1960
  %index_ptr1961 = getelementptr { i32, [ 0 x i32 ] }* %array1959, i32 0, i32 1, i32 1
  store i32 2, i32* %index_ptr1961
  %index_ptr1962 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array1957, i32 0, i32 1, i32 0
  store { i32, [ 0 x i32 ] }* %array1959, { i32, [ 0 x i32 ] }** %index_ptr1962
  %array_ptr1963 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array1964 = bitcast { i32, [ 0 x i32 ] }* %array_ptr1963 to { i32, [ 0 x i32 ] }* 
  %index_ptr1965 = getelementptr { i32, [ 0 x i32 ] }* %array1964, i32 0, i32 1, i32 0
  store i32 3, i32* %index_ptr1965
  %index_ptr1966 = getelementptr { i32, [ 0 x i32 ] }* %array1964, i32 0, i32 1, i32 1
  store i32 4, i32* %index_ptr1966
  %index_ptr1967 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array1957, i32 0, i32 1, i32 1
  store { i32, [ 0 x i32 ] }* %array1964, { i32, [ 0 x i32 ] }** %index_ptr1967
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array1957, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** @arr1968
  ret void
}


