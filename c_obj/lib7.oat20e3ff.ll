declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
define void @oat_init (){

__fresh415:
  ret void
}


define i32 @program (i32 %argc1962, { i32, [ 0 x i8* ] }* %argv1960){

__fresh412:
  %argc_slot1963 = alloca i32
  store i32 %argc1962, i32* %argc_slot1963
  %argv_slot1961 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv1960, { i32, [ 0 x i8* ] }** %argv_slot1961
  %array_ptr1964 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 5 )
  %array1965 = bitcast { i32, [ 0 x i32 ] }* %array_ptr1964 to { i32, [ 0 x i32 ] }* 
  %index_ptr1966 = getelementptr { i32, [ 0 x i32 ] }* %array1965, i32 0, i32 1, i32 0
  store i32 111, i32* %index_ptr1966
  %index_ptr1967 = getelementptr { i32, [ 0 x i32 ] }* %array1965, i32 0, i32 1, i32 1
  store i32 112, i32* %index_ptr1967
  %index_ptr1968 = getelementptr { i32, [ 0 x i32 ] }* %array1965, i32 0, i32 1, i32 2
  store i32 113, i32* %index_ptr1968
  %index_ptr1969 = getelementptr { i32, [ 0 x i32 ] }* %array1965, i32 0, i32 1, i32 3
  store i32 114, i32* %index_ptr1969
  %index_ptr1970 = getelementptr { i32, [ 0 x i32 ] }* %array1965, i32 0, i32 1, i32 4
  store i32 115, i32* %index_ptr1970
  %arr11971 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %array1965, { i32, [ 0 x i32 ] }** %arr11971
  %_lhs1972 = load { i32, [ 0 x i32 ] }** %arr11971
  %ret1973 = call i8* @string_of_array ( { i32, [ 0 x i32 ] }* %_lhs1972 )
  %str1974 = alloca i8*
  store i8* %ret1973, i8** %str1974
  %_lhs1975 = load i8** %str1974
  %ret1976 = call { i32, [ 0 x i32 ] }* @array_of_string ( i8* %_lhs1975 )
  %arr21977 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %ret1976, { i32, [ 0 x i32 ] }** %arr21977
  %s1978 = alloca i32
  store i32 0, i32* %s1978
  %i1979 = alloca i32
  store i32 0, i32* %i1979
  br label %__cond411

__cond411:
  %_lhs1980 = load i32* %i1979
  %bop1981 = icmp slt i32 %_lhs1980, 5
  br i1 %bop1981, label %__body410, label %__post409

__fresh413:
  br label %__body410

__body410:
  %_lhs1982 = load i32* %s1978
  %_lhs1983 = load i32* %i1979
  %len_ptr1984 = getelementptr { i32, [ 0 x i32 ] }** %arr21977, i32 0, i32 0
  %len1985 = load i32* %len_ptr1984
  call void @oat_array_bounds_check( i32 %len1985, i32 %_lhs1983 )
  %array_dereferenced1986 = load { i32, [ 0 x i32 ] }** %arr21977
  %elt_ptr1987 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced1986, i32 0, i32 1, i32 %_lhs1983
  %_lhs1988 = load i32* %elt_ptr1987
  %bop1989 = add i32 %_lhs1982, %_lhs1988
  store i32 %bop1989, i32* %s1978
  %_lhs1990 = load i32* %i1979
  %bop1991 = add i32 %_lhs1990, 1
  store i32 %bop1991, i32* %i1979
  br label %__cond411

__fresh414:
  br label %__post409

__post409:
  %_lhs1992 = load i32* %s1978
  ret i32 %_lhs1992
}


