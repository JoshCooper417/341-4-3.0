declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@_oat_string2107.str. = private unnamed_addr constant [ 2 x i8 ] c "
\00", align 4
@_oat_string2107 = global i8* getelementptr inbounds ([ 2 x i8 ]* @_oat_string2107.str., i32 0, i32 0), align 4
@_oat_string2102.str. = private unnamed_addr constant [ 2 x i8 ] c "
\00", align 4
@_oat_string2102 = global i8* getelementptr inbounds ([ 2 x i8 ]* @_oat_string2102.str., i32 0, i32 0), align 4
@_oat_string2098.str. = private unnamed_addr constant [ 2 x i8 ] c "
\00", align 4
@_oat_string2098 = global i8* getelementptr inbounds ([ 2 x i8 ]* @_oat_string2098.str., i32 0, i32 0), align 4
define void @oat_init (){

__fresh362:
  ret void
}


define i32 @program (i32 %argc2084, { i32, [ 0 x i8* ] }* %argv2082){

__fresh361:
  %argc_slot2085 = alloca i32
  store i32 %argc2084, i32* %argc_slot2085
  %argv_slot2083 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv2082, { i32, [ 0 x i8* ] }** %argv_slot2083
  %array_ptr2086 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 9 )
  %array2087 = bitcast { i32, [ 0 x i32 ] }* %array_ptr2086 to { i32, [ 0 x i32 ] }* 
  %index_ptr2088 = getelementptr { i32, [ 0 x i32 ] }* %array2087, i32 0, i32 1, i32 0
  store i32 107, i32* %index_ptr2088
  %index_ptr2089 = getelementptr { i32, [ 0 x i32 ] }* %array2087, i32 0, i32 1, i32 1
  store i32 112, i32* %index_ptr2089
  %index_ptr2090 = getelementptr { i32, [ 0 x i32 ] }* %array2087, i32 0, i32 1, i32 2
  store i32 121, i32* %index_ptr2090
  %index_ptr2091 = getelementptr { i32, [ 0 x i32 ] }* %array2087, i32 0, i32 1, i32 3
  store i32 102, i32* %index_ptr2091
  %index_ptr2092 = getelementptr { i32, [ 0 x i32 ] }* %array2087, i32 0, i32 1, i32 4
  store i32 123, i32* %index_ptr2092
  %index_ptr2093 = getelementptr { i32, [ 0 x i32 ] }* %array2087, i32 0, i32 1, i32 5
  store i32 115, i32* %index_ptr2093
  %index_ptr2094 = getelementptr { i32, [ 0 x i32 ] }* %array2087, i32 0, i32 1, i32 6
  store i32 104, i32* %index_ptr2094
  %index_ptr2095 = getelementptr { i32, [ 0 x i32 ] }* %array2087, i32 0, i32 1, i32 7
  store i32 111, i32* %index_ptr2095
  %index_ptr2096 = getelementptr { i32, [ 0 x i32 ] }* %array2087, i32 0, i32 1, i32 8
  store i32 109, i32* %index_ptr2096
  %a2097 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %array2087, { i32, [ 0 x i32 ] }** %a2097
  %strval2099 = load i8** @_oat_string2098
  call void @print_string( i8* %strval2099 )
  %_lhs2100 = load { i32, [ 0 x i32 ] }** %a2097
  %ret2101 = call i8* @string_of_array ( { i32, [ 0 x i32 ] }* %_lhs2100 )
  call void @print_string( i8* %ret2101 )
  %strval2103 = load i8** @_oat_string2102
  call void @print_string( i8* %strval2103 )
  %_lhs2104 = load { i32, [ 0 x i32 ] }** %a2097
  call void @quick_sort( { i32, [ 0 x i32 ] }* %_lhs2104, i32 0, i32 8 )
  %_lhs2105 = load { i32, [ 0 x i32 ] }** %a2097
  %ret2106 = call i8* @string_of_array ( { i32, [ 0 x i32 ] }* %_lhs2105 )
  call void @print_string( i8* %ret2106 )
  %strval2108 = load i8** @_oat_string2107
  call void @print_string( i8* %strval2108 )
  ret i32 255
}


define i32 @partition ({ i32, [ 0 x i32 ] }* %a1984, i32 %l1982, i32 %r1980){

__fresh350:
  %a_slot1985 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %a1984, { i32, [ 0 x i32 ] }** %a_slot1985
  %l_slot1983 = alloca i32
  store i32 %l1982, i32* %l_slot1983
  %r_slot1981 = alloca i32
  store i32 %r1980, i32* %r_slot1981
  %_lhs1986 = load i32* %l_slot1983
  %len_ptr1987 = getelementptr { i32, [ 0 x i32 ] }** %a_slot1985, i32 0, i32 0
  %len1988 = load i32* %len_ptr1987
  call void @oat_array_bounds_check( i32 %len1988, i32 %_lhs1986 )
  %array_dereferenced1989 = load { i32, [ 0 x i32 ] }** %a_slot1985
  %elt_ptr1990 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced1989, i32 0, i32 1, i32 %_lhs1986
  %_lhs1991 = load i32* %elt_ptr1990
  %pivot1992 = alloca i32
  store i32 %_lhs1991, i32* %pivot1992
  %_lhs1993 = load i32* %l_slot1983
  %i1994 = alloca i32
  store i32 %_lhs1993, i32* %i1994
  %_lhs1995 = load i32* %r_slot1981
  %bop1996 = add i32 %_lhs1995, 1
  %j1997 = alloca i32
  store i32 %bop1996, i32* %j1997
  %t1998 = alloca i32
  store i32 0, i32* %t1998
  %done1999 = alloca i32
  store i32 0, i32* %done1999
  br label %__cond337

__cond337:
  %_lhs2000 = load i32* %done1999
  %bop2001 = icmp eq i32 %_lhs2000, 0
  br i1 %bop2001, label %__body336, label %__post335

__fresh351:
  br label %__body336

__body336:
  %_lhs2002 = load i32* %i1994
  %bop2003 = add i32 %_lhs2002, 1
  store i32 %bop2003, i32* %i1994
  br label %__cond340

__cond340:
  %_lhs2004 = load i32* %i1994
  %len_ptr2005 = getelementptr { i32, [ 0 x i32 ] }** %a_slot1985, i32 0, i32 0
  %len2006 = load i32* %len_ptr2005
  call void @oat_array_bounds_check( i32 %len2006, i32 %_lhs2004 )
  %array_dereferenced2007 = load { i32, [ 0 x i32 ] }** %a_slot1985
  %elt_ptr2008 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2007, i32 0, i32 1, i32 %_lhs2004
  %_lhs2009 = load i32* %elt_ptr2008
  %_lhs2010 = load i32* %pivot1992
  %bop2011 = icmp sle i32 %_lhs2009, %_lhs2010
  %_lhs2012 = load i32* %i1994
  %_lhs2013 = load i32* %r_slot1981
  %bop2014 = icmp sle i32 %_lhs2012, %_lhs2013
  %bop2015 = and i1 %bop2011, %bop2014
  br i1 %bop2015, label %__body339, label %__post338

__fresh352:
  br label %__body339

__body339:
  %_lhs2016 = load i32* %i1994
  %bop2017 = add i32 %_lhs2016, 1
  store i32 %bop2017, i32* %i1994
  br label %__cond340

__fresh353:
  br label %__post338

__post338:
  %_lhs2018 = load i32* %j1997
  %bop2019 = sub i32 %_lhs2018, 1
  store i32 %bop2019, i32* %j1997
  br label %__cond343

__cond343:
  %_lhs2020 = load i32* %j1997
  %len_ptr2021 = getelementptr { i32, [ 0 x i32 ] }** %a_slot1985, i32 0, i32 0
  %len2022 = load i32* %len_ptr2021
  call void @oat_array_bounds_check( i32 %len2022, i32 %_lhs2020 )
  %array_dereferenced2023 = load { i32, [ 0 x i32 ] }** %a_slot1985
  %elt_ptr2024 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2023, i32 0, i32 1, i32 %_lhs2020
  %_lhs2025 = load i32* %elt_ptr2024
  %_lhs2026 = load i32* %pivot1992
  %bop2027 = icmp sgt i32 %_lhs2025, %_lhs2026
  br i1 %bop2027, label %__body342, label %__post341

__fresh354:
  br label %__body342

__body342:
  %_lhs2028 = load i32* %j1997
  %bop2029 = sub i32 %_lhs2028, 1
  store i32 %bop2029, i32* %j1997
  br label %__cond343

__fresh355:
  br label %__post341

__post341:
  %_lhs2030 = load i32* %i1994
  %_lhs2031 = load i32* %j1997
  %bop2032 = icmp sge i32 %_lhs2030, %_lhs2031
  br i1 %bop2032, label %__then346, label %__else345

__fresh356:
  br label %__then346

__then346:
  store i32 1, i32* %done1999
  br label %__merge344

__fresh357:
  br label %__else345

__else345:
  br label %__merge344

__merge344:
  %_lhs2033 = load i32* %done1999
  %bop2034 = icmp eq i32 %_lhs2033, 0
  br i1 %bop2034, label %__then349, label %__else348

__fresh358:
  br label %__then349

__then349:
  %_lhs2035 = load i32* %i1994
  %len_ptr2036 = getelementptr { i32, [ 0 x i32 ] }** %a_slot1985, i32 0, i32 0
  %len2037 = load i32* %len_ptr2036
  call void @oat_array_bounds_check( i32 %len2037, i32 %_lhs2035 )
  %array_dereferenced2038 = load { i32, [ 0 x i32 ] }** %a_slot1985
  %elt_ptr2039 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2038, i32 0, i32 1, i32 %_lhs2035
  %_lhs2040 = load i32* %elt_ptr2039
  store i32 %_lhs2040, i32* %t1998
  %_lhs2041 = load i32* %i1994
  %len_ptr2042 = getelementptr { i32, [ 0 x i32 ] }** %a_slot1985, i32 0, i32 0
  %len2043 = load i32* %len_ptr2042
  call void @oat_array_bounds_check( i32 %len2043, i32 %_lhs2041 )
  %array_dereferenced2044 = load { i32, [ 0 x i32 ] }** %a_slot1985
  %elt_ptr2045 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2044, i32 0, i32 1, i32 %_lhs2041
  %_lhs2046 = load i32* %j1997
  %len_ptr2047 = getelementptr { i32, [ 0 x i32 ] }** %a_slot1985, i32 0, i32 0
  %len2048 = load i32* %len_ptr2047
  call void @oat_array_bounds_check( i32 %len2048, i32 %_lhs2046 )
  %array_dereferenced2049 = load { i32, [ 0 x i32 ] }** %a_slot1985
  %elt_ptr2050 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2049, i32 0, i32 1, i32 %_lhs2046
  %_lhs2051 = load i32* %elt_ptr2050
  store i32 %_lhs2051, i32* %elt_ptr2045
  %_lhs2052 = load i32* %j1997
  %len_ptr2053 = getelementptr { i32, [ 0 x i32 ] }** %a_slot1985, i32 0, i32 0
  %len2054 = load i32* %len_ptr2053
  call void @oat_array_bounds_check( i32 %len2054, i32 %_lhs2052 )
  %array_dereferenced2055 = load { i32, [ 0 x i32 ] }** %a_slot1985
  %elt_ptr2056 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2055, i32 0, i32 1, i32 %_lhs2052
  %_lhs2057 = load i32* %t1998
  store i32 %_lhs2057, i32* %elt_ptr2056
  br label %__merge347

__fresh359:
  br label %__else348

__else348:
  br label %__merge347

__merge347:
  br label %__cond337

__fresh360:
  br label %__post335

__post335:
  %_lhs2058 = load i32* %l_slot1983
  %len_ptr2059 = getelementptr { i32, [ 0 x i32 ] }** %a_slot1985, i32 0, i32 0
  %len2060 = load i32* %len_ptr2059
  call void @oat_array_bounds_check( i32 %len2060, i32 %_lhs2058 )
  %array_dereferenced2061 = load { i32, [ 0 x i32 ] }** %a_slot1985
  %elt_ptr2062 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2061, i32 0, i32 1, i32 %_lhs2058
  %_lhs2063 = load i32* %elt_ptr2062
  store i32 %_lhs2063, i32* %t1998
  %_lhs2064 = load i32* %l_slot1983
  %len_ptr2065 = getelementptr { i32, [ 0 x i32 ] }** %a_slot1985, i32 0, i32 0
  %len2066 = load i32* %len_ptr2065
  call void @oat_array_bounds_check( i32 %len2066, i32 %_lhs2064 )
  %array_dereferenced2067 = load { i32, [ 0 x i32 ] }** %a_slot1985
  %elt_ptr2068 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2067, i32 0, i32 1, i32 %_lhs2064
  %_lhs2069 = load i32* %j1997
  %len_ptr2070 = getelementptr { i32, [ 0 x i32 ] }** %a_slot1985, i32 0, i32 0
  %len2071 = load i32* %len_ptr2070
  call void @oat_array_bounds_check( i32 %len2071, i32 %_lhs2069 )
  %array_dereferenced2072 = load { i32, [ 0 x i32 ] }** %a_slot1985
  %elt_ptr2073 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2072, i32 0, i32 1, i32 %_lhs2069
  %_lhs2074 = load i32* %elt_ptr2073
  store i32 %_lhs2074, i32* %elt_ptr2068
  %_lhs2075 = load i32* %j1997
  %len_ptr2076 = getelementptr { i32, [ 0 x i32 ] }** %a_slot1985, i32 0, i32 0
  %len2077 = load i32* %len_ptr2076
  call void @oat_array_bounds_check( i32 %len2077, i32 %_lhs2075 )
  %array_dereferenced2078 = load { i32, [ 0 x i32 ] }** %a_slot1985
  %elt_ptr2079 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2078, i32 0, i32 1, i32 %_lhs2075
  %_lhs2080 = load i32* %t1998
  store i32 %_lhs2080, i32* %elt_ptr2079
  %_lhs2081 = load i32* %j1997
  ret i32 %_lhs2081
}


define void @quick_sort ({ i32, [ 0 x i32 ] }* %a1962, i32 %l1960, i32 %r1958){

__fresh332:
  %a_slot1963 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %a1962, { i32, [ 0 x i32 ] }** %a_slot1963
  %l_slot1961 = alloca i32
  store i32 %l1960, i32* %l_slot1961
  %r_slot1959 = alloca i32
  store i32 %r1958, i32* %r_slot1959
  %j1964 = alloca i32
  store i32 0, i32* %j1964
  %_lhs1965 = load i32* %l_slot1961
  %_lhs1966 = load i32* %r_slot1959
  %bop1967 = icmp slt i32 %_lhs1965, %_lhs1966
  br i1 %bop1967, label %__then331, label %__else330

__fresh333:
  br label %__then331

__then331:
  %_lhs1970 = load i32* %r_slot1959
  %_lhs1969 = load i32* %l_slot1961
  %_lhs1968 = load { i32, [ 0 x i32 ] }** %a_slot1963
  %ret1971 = call i32 @partition ( { i32, [ 0 x i32 ] }* %_lhs1968, i32 %_lhs1969, i32 %_lhs1970 )
  store i32 %ret1971, i32* %j1964
  %_lhs1974 = load i32* %j1964
  %bop1975 = sub i32 %_lhs1974, 1
  %_lhs1973 = load i32* %l_slot1961
  %_lhs1972 = load { i32, [ 0 x i32 ] }** %a_slot1963
  call void @quick_sort( { i32, [ 0 x i32 ] }* %_lhs1972, i32 %_lhs1973, i32 %bop1975 )
  %_lhs1979 = load i32* %r_slot1959
  %_lhs1977 = load i32* %j1964
  %bop1978 = add i32 %_lhs1977, 1
  %_lhs1976 = load { i32, [ 0 x i32 ] }** %a_slot1963
  call void @quick_sort( { i32, [ 0 x i32 ] }* %_lhs1976, i32 %bop1978, i32 %_lhs1979 )
  br label %__merge329

__fresh334:
  br label %__else330

__else330:
  br label %__merge329

__merge329:
  ret void
}


