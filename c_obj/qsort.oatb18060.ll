declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@_oat_string2108.str. = private unnamed_addr constant [ 2 x i8 ] c "
\00", align 4
@_oat_string2108 = global i8* getelementptr inbounds ([ 2 x i8 ]* @_oat_string2108.str., i32 0, i32 0), align 4
@_oat_string2103.str. = private unnamed_addr constant [ 2 x i8 ] c "
\00", align 4
@_oat_string2103 = global i8* getelementptr inbounds ([ 2 x i8 ]* @_oat_string2103.str., i32 0, i32 0), align 4
@_oat_string2099.str. = private unnamed_addr constant [ 2 x i8 ] c "
\00", align 4
@_oat_string2099 = global i8* getelementptr inbounds ([ 2 x i8 ]* @_oat_string2099.str., i32 0, i32 0), align 4
define void @oat_init (){

__fresh428:
  ret void
}


define i32 @program (i32 %argc2085, { i32, [ 0 x i8* ] }* %argv2083){

__fresh427:
  %argc_slot2086 = alloca i32
  store i32 %argc2085, i32* %argc_slot2086
  %argv_slot2084 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv2083, { i32, [ 0 x i8* ] }** %argv_slot2084
  %array_ptr2087 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 9 )
  %array2088 = bitcast { i32, [ 0 x i32 ] }* %array_ptr2087 to { i32, [ 0 x i32 ] }* 
  %index_ptr2089 = getelementptr { i32, [ 0 x i32 ] }* %array2088, i32 0, i32 1, i32 0
  store i32 107, i32* %index_ptr2089
  %index_ptr2090 = getelementptr { i32, [ 0 x i32 ] }* %array2088, i32 0, i32 1, i32 1
  store i32 112, i32* %index_ptr2090
  %index_ptr2091 = getelementptr { i32, [ 0 x i32 ] }* %array2088, i32 0, i32 1, i32 2
  store i32 121, i32* %index_ptr2091
  %index_ptr2092 = getelementptr { i32, [ 0 x i32 ] }* %array2088, i32 0, i32 1, i32 3
  store i32 102, i32* %index_ptr2092
  %index_ptr2093 = getelementptr { i32, [ 0 x i32 ] }* %array2088, i32 0, i32 1, i32 4
  store i32 123, i32* %index_ptr2093
  %index_ptr2094 = getelementptr { i32, [ 0 x i32 ] }* %array2088, i32 0, i32 1, i32 5
  store i32 115, i32* %index_ptr2094
  %index_ptr2095 = getelementptr { i32, [ 0 x i32 ] }* %array2088, i32 0, i32 1, i32 6
  store i32 104, i32* %index_ptr2095
  %index_ptr2096 = getelementptr { i32, [ 0 x i32 ] }* %array2088, i32 0, i32 1, i32 7
  store i32 111, i32* %index_ptr2096
  %index_ptr2097 = getelementptr { i32, [ 0 x i32 ] }* %array2088, i32 0, i32 1, i32 8
  store i32 109, i32* %index_ptr2097
  %a2098 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %array2088, { i32, [ 0 x i32 ] }** %a2098
  %strval2100 = load i8** @_oat_string2099
  call void @print_string( i8* %strval2100 )
  %_lhs2101 = load { i32, [ 0 x i32 ] }** %a2098
  %ret2102 = call i8* @string_of_array ( { i32, [ 0 x i32 ] }* %_lhs2101 )
  call void @print_string( i8* %ret2102 )
  %strval2104 = load i8** @_oat_string2103
  call void @print_string( i8* %strval2104 )
  %_lhs2105 = load { i32, [ 0 x i32 ] }** %a2098
  call void @quick_sort( { i32, [ 0 x i32 ] }* %_lhs2105, i32 0, i32 8 )
  %_lhs2106 = load { i32, [ 0 x i32 ] }** %a2098
  %ret2107 = call i8* @string_of_array ( { i32, [ 0 x i32 ] }* %_lhs2106 )
  call void @print_string( i8* %ret2107 )
  %strval2109 = load i8** @_oat_string2108
  call void @print_string( i8* %strval2109 )
  ret i32 255
}


define i32 @partition ({ i32, [ 0 x i32 ] }* %a1985, i32 %l1983, i32 %r1981){

__fresh416:
  %a_slot1986 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %a1985, { i32, [ 0 x i32 ] }** %a_slot1986
  %l_slot1984 = alloca i32
  store i32 %l1983, i32* %l_slot1984
  %r_slot1982 = alloca i32
  store i32 %r1981, i32* %r_slot1982
  %_lhs1987 = load i32* %l_slot1984
  %len_ptr1988 = getelementptr { i32, [ 0 x i32 ] }** %a_slot1986, i32 0, i32 0
  %len1989 = load i32* %len_ptr1988
  call void @oat_array_bounds_check( i32 %len1989, i32 %_lhs1987 )
  %array_dereferenced1990 = load { i32, [ 0 x i32 ] }** %a_slot1986
  %elt_ptr1991 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced1990, i32 0, i32 1, i32 %_lhs1987
  %_lhs1992 = load i32* %elt_ptr1991
  %pivot1993 = alloca i32
  store i32 %_lhs1992, i32* %pivot1993
  %_lhs1994 = load i32* %l_slot1984
  %i1995 = alloca i32
  store i32 %_lhs1994, i32* %i1995
  %_lhs1996 = load i32* %r_slot1982
  %bop1997 = add i32 %_lhs1996, 1
  %j1998 = alloca i32
  store i32 %bop1997, i32* %j1998
  %t1999 = alloca i32
  store i32 0, i32* %t1999
  %done2000 = alloca i32
  store i32 0, i32* %done2000
  br label %__cond403

__cond403:
  %_lhs2001 = load i32* %done2000
  %bop2002 = icmp eq i32 %_lhs2001, 0
  br i1 %bop2002, label %__body402, label %__post401

__fresh417:
  br label %__body402

__body402:
  %_lhs2003 = load i32* %i1995
  %bop2004 = add i32 %_lhs2003, 1
  store i32 %bop2004, i32* %i1995
  br label %__cond406

__cond406:
  %_lhs2005 = load i32* %i1995
  %len_ptr2006 = getelementptr { i32, [ 0 x i32 ] }** %a_slot1986, i32 0, i32 0
  %len2007 = load i32* %len_ptr2006
  call void @oat_array_bounds_check( i32 %len2007, i32 %_lhs2005 )
  %array_dereferenced2008 = load { i32, [ 0 x i32 ] }** %a_slot1986
  %elt_ptr2009 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2008, i32 0, i32 1, i32 %_lhs2005
  %_lhs2010 = load i32* %elt_ptr2009
  %_lhs2011 = load i32* %pivot1993
  %bop2012 = icmp sle i32 %_lhs2010, %_lhs2011
  %_lhs2013 = load i32* %i1995
  %_lhs2014 = load i32* %r_slot1982
  %bop2015 = icmp sle i32 %_lhs2013, %_lhs2014
  %bop2016 = and i1 %bop2012, %bop2015
  br i1 %bop2016, label %__body405, label %__post404

__fresh418:
  br label %__body405

__body405:
  %_lhs2017 = load i32* %i1995
  %bop2018 = add i32 %_lhs2017, 1
  store i32 %bop2018, i32* %i1995
  br label %__cond406

__fresh419:
  br label %__post404

__post404:
  %_lhs2019 = load i32* %j1998
  %bop2020 = sub i32 %_lhs2019, 1
  store i32 %bop2020, i32* %j1998
  br label %__cond409

__cond409:
  %_lhs2021 = load i32* %j1998
  %len_ptr2022 = getelementptr { i32, [ 0 x i32 ] }** %a_slot1986, i32 0, i32 0
  %len2023 = load i32* %len_ptr2022
  call void @oat_array_bounds_check( i32 %len2023, i32 %_lhs2021 )
  %array_dereferenced2024 = load { i32, [ 0 x i32 ] }** %a_slot1986
  %elt_ptr2025 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2024, i32 0, i32 1, i32 %_lhs2021
  %_lhs2026 = load i32* %elt_ptr2025
  %_lhs2027 = load i32* %pivot1993
  %bop2028 = icmp sgt i32 %_lhs2026, %_lhs2027
  br i1 %bop2028, label %__body408, label %__post407

__fresh420:
  br label %__body408

__body408:
  %_lhs2029 = load i32* %j1998
  %bop2030 = sub i32 %_lhs2029, 1
  store i32 %bop2030, i32* %j1998
  br label %__cond409

__fresh421:
  br label %__post407

__post407:
  %_lhs2031 = load i32* %i1995
  %_lhs2032 = load i32* %j1998
  %bop2033 = icmp sge i32 %_lhs2031, %_lhs2032
  br i1 %bop2033, label %__then412, label %__else411

__fresh422:
  br label %__then412

__then412:
  store i32 1, i32* %done2000
  br label %__merge410

__fresh423:
  br label %__else411

__else411:
  br label %__merge410

__merge410:
  %_lhs2034 = load i32* %done2000
  %bop2035 = icmp eq i32 %_lhs2034, 0
  br i1 %bop2035, label %__then415, label %__else414

__fresh424:
  br label %__then415

__then415:
  %_lhs2036 = load i32* %i1995
  %len_ptr2037 = getelementptr { i32, [ 0 x i32 ] }** %a_slot1986, i32 0, i32 0
  %len2038 = load i32* %len_ptr2037
  call void @oat_array_bounds_check( i32 %len2038, i32 %_lhs2036 )
  %array_dereferenced2039 = load { i32, [ 0 x i32 ] }** %a_slot1986
  %elt_ptr2040 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2039, i32 0, i32 1, i32 %_lhs2036
  %_lhs2041 = load i32* %elt_ptr2040
  store i32 %_lhs2041, i32* %t1999
  %_lhs2042 = load i32* %i1995
  %len_ptr2043 = getelementptr { i32, [ 0 x i32 ] }** %a_slot1986, i32 0, i32 0
  %len2044 = load i32* %len_ptr2043
  call void @oat_array_bounds_check( i32 %len2044, i32 %_lhs2042 )
  %array_dereferenced2045 = load { i32, [ 0 x i32 ] }** %a_slot1986
  %elt_ptr2046 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2045, i32 0, i32 1, i32 %_lhs2042
  %_lhs2047 = load i32* %j1998
  %len_ptr2048 = getelementptr { i32, [ 0 x i32 ] }** %a_slot1986, i32 0, i32 0
  %len2049 = load i32* %len_ptr2048
  call void @oat_array_bounds_check( i32 %len2049, i32 %_lhs2047 )
  %array_dereferenced2050 = load { i32, [ 0 x i32 ] }** %a_slot1986
  %elt_ptr2051 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2050, i32 0, i32 1, i32 %_lhs2047
  %_lhs2052 = load i32* %elt_ptr2051
  store i32 %_lhs2052, i32* %elt_ptr2046
  %_lhs2053 = load i32* %j1998
  %len_ptr2054 = getelementptr { i32, [ 0 x i32 ] }** %a_slot1986, i32 0, i32 0
  %len2055 = load i32* %len_ptr2054
  call void @oat_array_bounds_check( i32 %len2055, i32 %_lhs2053 )
  %array_dereferenced2056 = load { i32, [ 0 x i32 ] }** %a_slot1986
  %elt_ptr2057 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2056, i32 0, i32 1, i32 %_lhs2053
  %_lhs2058 = load i32* %t1999
  store i32 %_lhs2058, i32* %elt_ptr2057
  br label %__merge413

__fresh425:
  br label %__else414

__else414:
  br label %__merge413

__merge413:
  br label %__cond403

__fresh426:
  br label %__post401

__post401:
  %_lhs2059 = load i32* %l_slot1984
  %len_ptr2060 = getelementptr { i32, [ 0 x i32 ] }** %a_slot1986, i32 0, i32 0
  %len2061 = load i32* %len_ptr2060
  call void @oat_array_bounds_check( i32 %len2061, i32 %_lhs2059 )
  %array_dereferenced2062 = load { i32, [ 0 x i32 ] }** %a_slot1986
  %elt_ptr2063 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2062, i32 0, i32 1, i32 %_lhs2059
  %_lhs2064 = load i32* %elt_ptr2063
  store i32 %_lhs2064, i32* %t1999
  %_lhs2065 = load i32* %l_slot1984
  %len_ptr2066 = getelementptr { i32, [ 0 x i32 ] }** %a_slot1986, i32 0, i32 0
  %len2067 = load i32* %len_ptr2066
  call void @oat_array_bounds_check( i32 %len2067, i32 %_lhs2065 )
  %array_dereferenced2068 = load { i32, [ 0 x i32 ] }** %a_slot1986
  %elt_ptr2069 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2068, i32 0, i32 1, i32 %_lhs2065
  %_lhs2070 = load i32* %j1998
  %len_ptr2071 = getelementptr { i32, [ 0 x i32 ] }** %a_slot1986, i32 0, i32 0
  %len2072 = load i32* %len_ptr2071
  call void @oat_array_bounds_check( i32 %len2072, i32 %_lhs2070 )
  %array_dereferenced2073 = load { i32, [ 0 x i32 ] }** %a_slot1986
  %elt_ptr2074 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2073, i32 0, i32 1, i32 %_lhs2070
  %_lhs2075 = load i32* %elt_ptr2074
  store i32 %_lhs2075, i32* %elt_ptr2069
  %_lhs2076 = load i32* %j1998
  %len_ptr2077 = getelementptr { i32, [ 0 x i32 ] }** %a_slot1986, i32 0, i32 0
  %len2078 = load i32* %len_ptr2077
  call void @oat_array_bounds_check( i32 %len2078, i32 %_lhs2076 )
  %array_dereferenced2079 = load { i32, [ 0 x i32 ] }** %a_slot1986
  %elt_ptr2080 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2079, i32 0, i32 1, i32 %_lhs2076
  %_lhs2081 = load i32* %t1999
  store i32 %_lhs2081, i32* %elt_ptr2080
  %_lhs2082 = load i32* %j1998
  ret i32 %_lhs2082
}


define void @quick_sort ({ i32, [ 0 x i32 ] }* %a1963, i32 %l1961, i32 %r1959){

__fresh398:
  %a_slot1964 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %a1963, { i32, [ 0 x i32 ] }** %a_slot1964
  %l_slot1962 = alloca i32
  store i32 %l1961, i32* %l_slot1962
  %r_slot1960 = alloca i32
  store i32 %r1959, i32* %r_slot1960
  %j1965 = alloca i32
  store i32 0, i32* %j1965
  %_lhs1966 = load i32* %l_slot1962
  %_lhs1967 = load i32* %r_slot1960
  %bop1968 = icmp slt i32 %_lhs1966, %_lhs1967
  br i1 %bop1968, label %__then397, label %__else396

__fresh399:
  br label %__then397

__then397:
  %_lhs1971 = load i32* %r_slot1960
  %_lhs1970 = load i32* %l_slot1962
  %_lhs1969 = load { i32, [ 0 x i32 ] }** %a_slot1964
  %ret1972 = call i32 @partition ( { i32, [ 0 x i32 ] }* %_lhs1969, i32 %_lhs1970, i32 %_lhs1971 )
  store i32 %ret1972, i32* %j1965
  %_lhs1975 = load i32* %j1965
  %bop1976 = sub i32 %_lhs1975, 1
  %_lhs1974 = load i32* %l_slot1962
  %_lhs1973 = load { i32, [ 0 x i32 ] }** %a_slot1964
  call void @quick_sort( { i32, [ 0 x i32 ] }* %_lhs1973, i32 %_lhs1974, i32 %bop1976 )
  %_lhs1980 = load i32* %r_slot1960
  %_lhs1978 = load i32* %j1965
  %bop1979 = add i32 %_lhs1978, 1
  %_lhs1977 = load { i32, [ 0 x i32 ] }** %a_slot1964
  call void @quick_sort( { i32, [ 0 x i32 ] }* %_lhs1977, i32 %bop1979, i32 %_lhs1980 )
  br label %__merge395

__fresh400:
  br label %__else396

__else396:
  br label %__merge395

__merge395:
  ret void
}


