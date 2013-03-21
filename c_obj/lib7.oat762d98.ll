declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
define void @oat_init (){

__fresh319:
  ret void
}


define i32 @program (i32 %argc1949, { i32, [ 0 x i8* ] }* %argv1947){

__fresh316:
  %argc_slot1950 = alloca i32
  store i32 %argc1949, i32* %argc_slot1950
  %argv_slot1948 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv1947, { i32, [ 0 x i8* ] }** %argv_slot1948
  %array_ptr1951 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 5 )
  %array1952 = bitcast { i32, [ 0 x i32 ] }* %array_ptr1951 to { i32, [ 0 x i32 ] }* 
  %index_ptr1953 = getelementptr { i32, [ 0 x i32 ] }* %array1952, i32 0, i32 1, i32 0
  store i32 111, i32* %index_ptr1953
  %index_ptr1954 = getelementptr { i32, [ 0 x i32 ] }* %array1952, i32 0, i32 1, i32 1
  store i32 112, i32* %index_ptr1954
  %index_ptr1955 = getelementptr { i32, [ 0 x i32 ] }* %array1952, i32 0, i32 1, i32 2
  store i32 113, i32* %index_ptr1955
  %index_ptr1956 = getelementptr { i32, [ 0 x i32 ] }* %array1952, i32 0, i32 1, i32 3
  store i32 114, i32* %index_ptr1956
  %index_ptr1957 = getelementptr { i32, [ 0 x i32 ] }* %array1952, i32 0, i32 1, i32 4
  store i32 115, i32* %index_ptr1957
  %arr11958 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %array1952, { i32, [ 0 x i32 ] }** %arr11958
  %_lhs1959 = load { i32, [ 0 x i32 ] }** %arr11958
  %ret1960 = call i8* @string_of_array ( { i32, [ 0 x i32 ] }* %_lhs1959 )
  %str1961 = alloca i8*
  store i8* %ret1960, i8** %str1961
  %_lhs1962 = load i8** %str1961
  %ret1963 = call { i32, [ 0 x i32 ] }* @array_of_string ( i8* %_lhs1962 )
  %arr21964 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %ret1963, { i32, [ 0 x i32 ] }** %arr21964
  %s1965 = alloca i32
  store i32 0, i32* %s1965
  %i1966 = alloca i32
  store i32 0, i32* %i1966
  br label %__cond315

__cond315:
  %_lhs1967 = load i32* %i1966
  %bop1968 = icmp slt i32 %_lhs1967, 5
  br i1 %bop1968, label %__body314, label %__post313

__fresh317:
  br label %__body314

__body314:
  %_lhs1969 = load i32* %s1965
  %_lhs1970 = load i32* %i1966
  %len_ptr1971 = getelementptr { i32, [ 0 x i32 ] }** %arr21964, i32 0, i32 0
  %len1972 = load i32* %len_ptr1971
  call void @oat_array_bounds_check( i32 %len1972, i32 %_lhs1970 )
  %array_dereferenced1973 = load { i32, [ 0 x i32 ] }** %arr21964
  %elt_ptr1974 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced1973, i32 0, i32 1, i32 %_lhs1970
  %_lhs1975 = load i32* %elt_ptr1974
  %bop1976 = add i32 %_lhs1969, %_lhs1975
  store i32 %bop1976, i32* %s1965
  %_lhs1977 = load i32* %i1966
  %bop1978 = add i32 %_lhs1977, 1
  store i32 %bop1978, i32* %i1966
  br label %__cond315

__fresh318:
  br label %__post313

__post313:
  %_lhs1979 = load i32* %s1965
  ret i32 %_lhs1979
}


