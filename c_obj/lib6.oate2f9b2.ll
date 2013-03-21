declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@arr11934 = global { i32, [ 0 x i32 ] }* zeroinitializer, align 4		; initialized by arr11934.init
define void @oat_init (){

__fresh408:
  call void @arr11934.init(  )
  ret void
}


define i32 @program (i32 %argc1937, { i32, [ 0 x i8* ] }* %argv1935){

__fresh405:
  %argc_slot1938 = alloca i32
  store i32 %argc1937, i32* %argc_slot1938
  %argv_slot1936 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv1935, { i32, [ 0 x i8* ] }** %argv_slot1936
  %_lhs1939 = load { i32, [ 0 x i32 ] }** @arr11934
  %ret1940 = call i8* @string_of_array ( { i32, [ 0 x i32 ] }* %_lhs1939 )
  %str1941 = alloca i8*
  store i8* %ret1940, i8** %str1941
  %_lhs1942 = load i8** %str1941
  %ret1943 = call { i32, [ 0 x i32 ] }* @array_of_string ( i8* %_lhs1942 )
  %arr21944 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %ret1943, { i32, [ 0 x i32 ] }** %arr21944
  %s1945 = alloca i32
  store i32 0, i32* %s1945
  %i1946 = alloca i32
  store i32 0, i32* %i1946
  br label %__cond404

__cond404:
  %_lhs1947 = load i32* %i1946
  %bop1948 = icmp slt i32 %_lhs1947, 5
  br i1 %bop1948, label %__body403, label %__post402

__fresh406:
  br label %__body403

__body403:
  %_lhs1949 = load i32* %s1945
  %_lhs1950 = load i32* %i1946
  %len_ptr1951 = getelementptr { i32, [ 0 x i32 ] }** %arr21944, i32 0, i32 0
  %len1952 = load i32* %len_ptr1951
  call void @oat_array_bounds_check( i32 %len1952, i32 %_lhs1950 )
  %array_dereferenced1953 = load { i32, [ 0 x i32 ] }** %arr21944
  %elt_ptr1954 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced1953, i32 0, i32 1, i32 %_lhs1950
  %_lhs1955 = load i32* %elt_ptr1954
  %bop1956 = add i32 %_lhs1949, %_lhs1955
  store i32 %bop1956, i32* %s1945
  %_lhs1957 = load i32* %i1946
  %bop1958 = add i32 %_lhs1957, 1
  store i32 %bop1958, i32* %i1946
  br label %__cond404

__fresh407:
  br label %__post402

__post402:
  %_lhs1959 = load i32* %s1945
  ret i32 %_lhs1959
}


define void @arr11934.init (){

__fresh401:
  %array_ptr1927 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 5 )
  %array1928 = bitcast { i32, [ 0 x i32 ] }* %array_ptr1927 to { i32, [ 0 x i32 ] }* 
  %index_ptr1929 = getelementptr { i32, [ 0 x i32 ] }* %array1928, i32 0, i32 1, i32 0
  store i32 111, i32* %index_ptr1929
  %index_ptr1930 = getelementptr { i32, [ 0 x i32 ] }* %array1928, i32 0, i32 1, i32 1
  store i32 112, i32* %index_ptr1930
  %index_ptr1931 = getelementptr { i32, [ 0 x i32 ] }* %array1928, i32 0, i32 1, i32 2
  store i32 113, i32* %index_ptr1931
  %index_ptr1932 = getelementptr { i32, [ 0 x i32 ] }* %array1928, i32 0, i32 1, i32 3
  store i32 114, i32* %index_ptr1932
  %index_ptr1933 = getelementptr { i32, [ 0 x i32 ] }* %array1928, i32 0, i32 1, i32 4
  store i32 115, i32* %index_ptr1933
  store { i32, [ 0 x i32 ] }* %array1928, { i32, [ 0 x i32 ] }** @arr11934
  ret void
}


