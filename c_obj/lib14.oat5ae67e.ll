declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@a1954 = global { i32, [ 0 x i32 ] }* zeroinitializer, align 4		; initialized by a1954.init
define void @oat_init (){

__fresh320:
  call void @a1954.init(  )
  ret void
}


define i32 @program (i32 %argc1957, { i32, [ 0 x i8* ] }* %argv1955){

__fresh319:
  %argc_slot1958 = alloca i32
  store i32 %argc1957, i32* %argc_slot1958
  %argv_slot1956 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv1955, { i32, [ 0 x i8* ] }** %argv_slot1956
  %_lhs1959 = load { i32, [ 0 x i32 ] }** @a1954
  %ret1960 = call i8* @string_of_array ( { i32, [ 0 x i32 ] }* %_lhs1959 )
  call void @print_string( i8* %ret1960 )
  ret i32 0
}


define void @a1954.init (){

__fresh318:
  %array_ptr1942 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 10 )
  %array1943 = bitcast { i32, [ 0 x i32 ] }* %array_ptr1942 to { i32, [ 0 x i32 ] }* 
  %index_ptr1944 = getelementptr { i32, [ 0 x i32 ] }* %array1943, i32 0, i32 1, i32 0
  store i32 126, i32* %index_ptr1944
  %index_ptr1945 = getelementptr { i32, [ 0 x i32 ] }* %array1943, i32 0, i32 1, i32 1
  store i32 125, i32* %index_ptr1945
  %index_ptr1946 = getelementptr { i32, [ 0 x i32 ] }* %array1943, i32 0, i32 1, i32 2
  store i32 124, i32* %index_ptr1946
  %index_ptr1947 = getelementptr { i32, [ 0 x i32 ] }* %array1943, i32 0, i32 1, i32 3
  store i32 123, i32* %index_ptr1947
  %index_ptr1948 = getelementptr { i32, [ 0 x i32 ] }* %array1943, i32 0, i32 1, i32 4
  store i32 122, i32* %index_ptr1948
  %index_ptr1949 = getelementptr { i32, [ 0 x i32 ] }* %array1943, i32 0, i32 1, i32 5
  store i32 121, i32* %index_ptr1949
  %index_ptr1950 = getelementptr { i32, [ 0 x i32 ] }* %array1943, i32 0, i32 1, i32 6
  store i32 120, i32* %index_ptr1950
  %index_ptr1951 = getelementptr { i32, [ 0 x i32 ] }* %array1943, i32 0, i32 1, i32 7
  store i32 119, i32* %index_ptr1951
  %index_ptr1952 = getelementptr { i32, [ 0 x i32 ] }* %array1943, i32 0, i32 1, i32 8
  store i32 118, i32* %index_ptr1952
  %index_ptr1953 = getelementptr { i32, [ 0 x i32 ] }* %array1943, i32 0, i32 1, i32 9
  store i32 117, i32* %index_ptr1953
  store { i32, [ 0 x i32 ] }* %array1943, { i32, [ 0 x i32 ] }** @a1954
  ret void
}


