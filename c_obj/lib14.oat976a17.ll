declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@a1936 = global { i32, [ 0 x i32 ] }* zeroinitializer, align 4		; initialized by a1936.init
define void @oat_init (){

__fresh720:
  call void @a1936.init(  )
  ret void
}


define i32 @program (i32 %argc1939, { i32, [ 0 x i8* ] }* %argv1937){

__fresh719:
  %argc_slot1940 = alloca i32
  store i32 %argc1939, i32* %argc_slot1940
  %argv_slot1938 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv1937, { i32, [ 0 x i8* ] }** %argv_slot1938
  %_lhs1941 = load { i32, [ 0 x i32 ] }** @a1936
  %ret1942 = call i8* @string_of_array ( { i32, [ 0 x i32 ] }* %_lhs1941 )
  call void @print_string( i8* %ret1942 )
  ret i32 0
}


define void @a1936.init (){

__fresh718:
  %array_ptr1924 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 10 )
  %array1925 = bitcast { i32, [ 0 x i32 ] }* %array_ptr1924 to { i32, [ 0 x i32 ] }* 
  %index_ptr1926 = getelementptr { i32, [ 0 x i32 ] }* %array1925, i32 0, i32 1, i32 0
  store i32 126, i32* %index_ptr1926
  %index_ptr1927 = getelementptr { i32, [ 0 x i32 ] }* %array1925, i32 0, i32 1, i32 1
  store i32 125, i32* %index_ptr1927
  %index_ptr1928 = getelementptr { i32, [ 0 x i32 ] }* %array1925, i32 0, i32 1, i32 2
  store i32 124, i32* %index_ptr1928
  %index_ptr1929 = getelementptr { i32, [ 0 x i32 ] }* %array1925, i32 0, i32 1, i32 3
  store i32 123, i32* %index_ptr1929
  %index_ptr1930 = getelementptr { i32, [ 0 x i32 ] }* %array1925, i32 0, i32 1, i32 4
  store i32 122, i32* %index_ptr1930
  %index_ptr1931 = getelementptr { i32, [ 0 x i32 ] }* %array1925, i32 0, i32 1, i32 5
  store i32 121, i32* %index_ptr1931
  %index_ptr1932 = getelementptr { i32, [ 0 x i32 ] }* %array1925, i32 0, i32 1, i32 6
  store i32 120, i32* %index_ptr1932
  %index_ptr1933 = getelementptr { i32, [ 0 x i32 ] }* %array1925, i32 0, i32 1, i32 7
  store i32 119, i32* %index_ptr1933
  %index_ptr1934 = getelementptr { i32, [ 0 x i32 ] }* %array1925, i32 0, i32 1, i32 8
  store i32 118, i32* %index_ptr1934
  %index_ptr1935 = getelementptr { i32, [ 0 x i32 ] }* %array1925, i32 0, i32 1, i32 9
  store i32 117, i32* %index_ptr1935
  store { i32, [ 0 x i32 ] }* %array1925, { i32, [ 0 x i32 ] }** @a1936
  ret void
}


