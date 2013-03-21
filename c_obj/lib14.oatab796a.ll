declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@a1955 = global { i32, [ 0 x i32 ] }* zeroinitializer, align 4		; initialized by a1955.init
define void @oat_init (){

__fresh374:
  call void @a1955.init(  )
  ret void
}


define i32 @program (i32 %argc1958, { i32, [ 0 x i8* ] }* %argv1956){

__fresh373:
  %argc_slot1959 = alloca i32
  store i32 %argc1958, i32* %argc_slot1959
  %argv_slot1957 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv1956, { i32, [ 0 x i8* ] }** %argv_slot1957
  %_lhs1960 = load { i32, [ 0 x i32 ] }** @a1955
  %ret1961 = call i8* @string_of_array ( { i32, [ 0 x i32 ] }* %_lhs1960 )
  call void @print_string( i8* %ret1961 )
  ret i32 0
}


define void @a1955.init (){

__fresh372:
  %array_ptr1943 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 10 )
  %array1944 = bitcast { i32, [ 0 x i32 ] }* %array_ptr1943 to { i32, [ 0 x i32 ] }* 
  %index_ptr1945 = getelementptr { i32, [ 0 x i32 ] }* %array1944, i32 0, i32 1, i32 0
  store i32 126, i32* %index_ptr1945
  %index_ptr1946 = getelementptr { i32, [ 0 x i32 ] }* %array1944, i32 0, i32 1, i32 1
  store i32 125, i32* %index_ptr1946
  %index_ptr1947 = getelementptr { i32, [ 0 x i32 ] }* %array1944, i32 0, i32 1, i32 2
  store i32 124, i32* %index_ptr1947
  %index_ptr1948 = getelementptr { i32, [ 0 x i32 ] }* %array1944, i32 0, i32 1, i32 3
  store i32 123, i32* %index_ptr1948
  %index_ptr1949 = getelementptr { i32, [ 0 x i32 ] }* %array1944, i32 0, i32 1, i32 4
  store i32 122, i32* %index_ptr1949
  %index_ptr1950 = getelementptr { i32, [ 0 x i32 ] }* %array1944, i32 0, i32 1, i32 5
  store i32 121, i32* %index_ptr1950
  %index_ptr1951 = getelementptr { i32, [ 0 x i32 ] }* %array1944, i32 0, i32 1, i32 6
  store i32 120, i32* %index_ptr1951
  %index_ptr1952 = getelementptr { i32, [ 0 x i32 ] }* %array1944, i32 0, i32 1, i32 7
  store i32 119, i32* %index_ptr1952
  %index_ptr1953 = getelementptr { i32, [ 0 x i32 ] }* %array1944, i32 0, i32 1, i32 8
  store i32 118, i32* %index_ptr1953
  %index_ptr1954 = getelementptr { i32, [ 0 x i32 ] }* %array1944, i32 0, i32 1, i32 9
  store i32 117, i32* %index_ptr1954
  store { i32, [ 0 x i32 ] }* %array1944, { i32, [ 0 x i32 ] }** @a1955
  ret void
}


