declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@_oat_string2098.str. = private unnamed_addr constant [ 2 x i8 ] c "
\00", align 4
@_oat_string2098 = global i8* getelementptr inbounds ([ 2 x i8 ]* @_oat_string2098.str., i32 0, i32 0), align 4
@_oat_string2093.str. = private unnamed_addr constant [ 2 x i8 ] c "
\00", align 4
@_oat_string2093 = global i8* getelementptr inbounds ([ 2 x i8 ]* @_oat_string2093.str., i32 0, i32 0), align 4
@_oat_string2089.str. = private unnamed_addr constant [ 2 x i8 ] c "
\00", align 4
@_oat_string2089 = global i8* getelementptr inbounds ([ 2 x i8 ]* @_oat_string2089.str., i32 0, i32 0), align 4
define void @oat_init (){

__fresh768:
  ret void
}


define i32 @program (i32 %argc2075, { i32, [ 0 x i8* ] }* %argv2073){

__fresh767:
  %argc_slot2076 = alloca i32
  store i32 %argc2075, i32* %argc_slot2076
  %argv_slot2074 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv2073, { i32, [ 0 x i8* ] }** %argv_slot2074
  %array_ptr2077 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 9 )
  %array2078 = bitcast { i32, [ 0 x i32 ] }* %array_ptr2077 to { i32, [ 0 x i32 ] }* 
  %index_ptr2079 = getelementptr { i32, [ 0 x i32 ] }* %array2078, i32 0, i32 1, i32 0
  store i32 107, i32* %index_ptr2079
  %index_ptr2080 = getelementptr { i32, [ 0 x i32 ] }* %array2078, i32 0, i32 1, i32 1
  store i32 112, i32* %index_ptr2080
  %index_ptr2081 = getelementptr { i32, [ 0 x i32 ] }* %array2078, i32 0, i32 1, i32 2
  store i32 121, i32* %index_ptr2081
  %index_ptr2082 = getelementptr { i32, [ 0 x i32 ] }* %array2078, i32 0, i32 1, i32 3
  store i32 102, i32* %index_ptr2082
  %index_ptr2083 = getelementptr { i32, [ 0 x i32 ] }* %array2078, i32 0, i32 1, i32 4
  store i32 123, i32* %index_ptr2083
  %index_ptr2084 = getelementptr { i32, [ 0 x i32 ] }* %array2078, i32 0, i32 1, i32 5
  store i32 115, i32* %index_ptr2084
  %index_ptr2085 = getelementptr { i32, [ 0 x i32 ] }* %array2078, i32 0, i32 1, i32 6
  store i32 104, i32* %index_ptr2085
  %index_ptr2086 = getelementptr { i32, [ 0 x i32 ] }* %array2078, i32 0, i32 1, i32 7
  store i32 111, i32* %index_ptr2086
  %index_ptr2087 = getelementptr { i32, [ 0 x i32 ] }* %array2078, i32 0, i32 1, i32 8
  store i32 109, i32* %index_ptr2087
  %a2088 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %array2078, { i32, [ 0 x i32 ] }** %a2088
  %strval2090 = load i8** @_oat_string2089
  call void @print_string( i8* %strval2090 )
  %_lhs2091 = load { i32, [ 0 x i32 ] }** %a2088
  %ret2092 = call i8* @string_of_array ( { i32, [ 0 x i32 ] }* %_lhs2091 )
  call void @print_string( i8* %ret2092 )
  %strval2094 = load i8** @_oat_string2093
  call void @print_string( i8* %strval2094 )
  %_lhs2095 = load { i32, [ 0 x i32 ] }** %a2088
  call void @quick_sort( { i32, [ 0 x i32 ] }* %_lhs2095, i32 0, i32 8 )
  %_lhs2096 = load { i32, [ 0 x i32 ] }** %a2088
  %ret2097 = call i8* @string_of_array ( { i32, [ 0 x i32 ] }* %_lhs2096 )
  call void @print_string( i8* %ret2097 )
  %strval2099 = load i8** @_oat_string2098
  call void @print_string( i8* %strval2099 )
  ret i32 255
}


define i32 @partition ({ i32, [ 0 x i32 ] }* %a1975, i32 %l1973, i32 %r1971){

__fresh756:
  %a_slot1976 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %a1975, { i32, [ 0 x i32 ] }** %a_slot1976
  %l_slot1974 = alloca i32
  store i32 %l1973, i32* %l_slot1974
  %r_slot1972 = alloca i32
  store i32 %r1971, i32* %r_slot1972
  %_lhs1977 = load i32* %l_slot1974
  %array_dereferenced1978 = load { i32, [ 0 x i32 ] }** %a_slot1976
  %len_ptr1979 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced1978, i32 0, i32 0
  %len1980 = load i32* %len_ptr1979
  call void @oat_array_bounds_check( i32 %len1980, i32 %_lhs1977 )
  %elt_ptr1981 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced1978, i32 0, i32 1, i32 %_lhs1977
  %_lhs1982 = load i32* %elt_ptr1981
  %pivot1983 = alloca i32
  store i32 %_lhs1982, i32* %pivot1983
  %_lhs1984 = load i32* %l_slot1974
  %i1985 = alloca i32
  store i32 %_lhs1984, i32* %i1985
  %_lhs1986 = load i32* %r_slot1972
  %bop1987 = add i32 %_lhs1986, 1
  %j1988 = alloca i32
  store i32 %bop1987, i32* %j1988
  %t1989 = alloca i32
  store i32 0, i32* %t1989
  %done1990 = alloca i32
  store i32 0, i32* %done1990
  br label %__cond743

__cond743:
  %_lhs1991 = load i32* %done1990
  %bop1992 = icmp eq i32 %_lhs1991, 0
  br i1 %bop1992, label %__body742, label %__post741

__fresh757:
  br label %__body742

__body742:
  %_lhs1993 = load i32* %i1985
  %bop1994 = add i32 %_lhs1993, 1
  store i32 %bop1994, i32* %i1985
  br label %__cond746

__cond746:
  %_lhs1995 = load i32* %i1985
  %array_dereferenced1996 = load { i32, [ 0 x i32 ] }** %a_slot1976
  %len_ptr1997 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced1996, i32 0, i32 0
  %len1998 = load i32* %len_ptr1997
  call void @oat_array_bounds_check( i32 %len1998, i32 %_lhs1995 )
  %elt_ptr1999 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced1996, i32 0, i32 1, i32 %_lhs1995
  %_lhs2000 = load i32* %elt_ptr1999
  %_lhs2001 = load i32* %pivot1983
  %bop2002 = icmp sle i32 %_lhs2000, %_lhs2001
  %_lhs2003 = load i32* %i1985
  %_lhs2004 = load i32* %r_slot1972
  %bop2005 = icmp sle i32 %_lhs2003, %_lhs2004
  %bop2006 = and i1 %bop2002, %bop2005
  br i1 %bop2006, label %__body745, label %__post744

__fresh758:
  br label %__body745

__body745:
  %_lhs2007 = load i32* %i1985
  %bop2008 = add i32 %_lhs2007, 1
  store i32 %bop2008, i32* %i1985
  br label %__cond746

__fresh759:
  br label %__post744

__post744:
  %_lhs2009 = load i32* %j1988
  %bop2010 = sub i32 %_lhs2009, 1
  store i32 %bop2010, i32* %j1988
  br label %__cond749

__cond749:
  %_lhs2011 = load i32* %j1988
  %array_dereferenced2012 = load { i32, [ 0 x i32 ] }** %a_slot1976
  %len_ptr2013 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2012, i32 0, i32 0
  %len2014 = load i32* %len_ptr2013
  call void @oat_array_bounds_check( i32 %len2014, i32 %_lhs2011 )
  %elt_ptr2015 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2012, i32 0, i32 1, i32 %_lhs2011
  %_lhs2016 = load i32* %elt_ptr2015
  %_lhs2017 = load i32* %pivot1983
  %bop2018 = icmp sgt i32 %_lhs2016, %_lhs2017
  br i1 %bop2018, label %__body748, label %__post747

__fresh760:
  br label %__body748

__body748:
  %_lhs2019 = load i32* %j1988
  %bop2020 = sub i32 %_lhs2019, 1
  store i32 %bop2020, i32* %j1988
  br label %__cond749

__fresh761:
  br label %__post747

__post747:
  %_lhs2021 = load i32* %i1985
  %_lhs2022 = load i32* %j1988
  %bop2023 = icmp sge i32 %_lhs2021, %_lhs2022
  br i1 %bop2023, label %__then752, label %__else751

__fresh762:
  br label %__then752

__then752:
  store i32 1, i32* %done1990
  br label %__merge750

__fresh763:
  br label %__else751

__else751:
  br label %__merge750

__merge750:
  %_lhs2024 = load i32* %done1990
  %bop2025 = icmp eq i32 %_lhs2024, 0
  br i1 %bop2025, label %__then755, label %__else754

__fresh764:
  br label %__then755

__then755:
  %_lhs2026 = load i32* %i1985
  %array_dereferenced2027 = load { i32, [ 0 x i32 ] }** %a_slot1976
  %len_ptr2028 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2027, i32 0, i32 0
  %len2029 = load i32* %len_ptr2028
  call void @oat_array_bounds_check( i32 %len2029, i32 %_lhs2026 )
  %elt_ptr2030 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2027, i32 0, i32 1, i32 %_lhs2026
  %_lhs2031 = load i32* %elt_ptr2030
  store i32 %_lhs2031, i32* %t1989
  %_lhs2032 = load i32* %i1985
  %array_dereferenced2033 = load { i32, [ 0 x i32 ] }** %a_slot1976
  %len_ptr2034 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2033, i32 0, i32 0
  %len2035 = load i32* %len_ptr2034
  call void @oat_array_bounds_check( i32 %len2035, i32 %_lhs2032 )
  %elt_ptr2036 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2033, i32 0, i32 1, i32 %_lhs2032
  %_lhs2037 = load i32* %j1988
  %array_dereferenced2038 = load { i32, [ 0 x i32 ] }** %a_slot1976
  %len_ptr2039 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2038, i32 0, i32 0
  %len2040 = load i32* %len_ptr2039
  call void @oat_array_bounds_check( i32 %len2040, i32 %_lhs2037 )
  %elt_ptr2041 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2038, i32 0, i32 1, i32 %_lhs2037
  %_lhs2042 = load i32* %elt_ptr2041
  store i32 %_lhs2042, i32* %elt_ptr2036
  %_lhs2043 = load i32* %j1988
  %array_dereferenced2044 = load { i32, [ 0 x i32 ] }** %a_slot1976
  %len_ptr2045 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2044, i32 0, i32 0
  %len2046 = load i32* %len_ptr2045
  call void @oat_array_bounds_check( i32 %len2046, i32 %_lhs2043 )
  %elt_ptr2047 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2044, i32 0, i32 1, i32 %_lhs2043
  %_lhs2048 = load i32* %t1989
  store i32 %_lhs2048, i32* %elt_ptr2047
  br label %__merge753

__fresh765:
  br label %__else754

__else754:
  br label %__merge753

__merge753:
  br label %__cond743

__fresh766:
  br label %__post741

__post741:
  %_lhs2049 = load i32* %l_slot1974
  %array_dereferenced2050 = load { i32, [ 0 x i32 ] }** %a_slot1976
  %len_ptr2051 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2050, i32 0, i32 0
  %len2052 = load i32* %len_ptr2051
  call void @oat_array_bounds_check( i32 %len2052, i32 %_lhs2049 )
  %elt_ptr2053 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2050, i32 0, i32 1, i32 %_lhs2049
  %_lhs2054 = load i32* %elt_ptr2053
  store i32 %_lhs2054, i32* %t1989
  %_lhs2055 = load i32* %l_slot1974
  %array_dereferenced2056 = load { i32, [ 0 x i32 ] }** %a_slot1976
  %len_ptr2057 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2056, i32 0, i32 0
  %len2058 = load i32* %len_ptr2057
  call void @oat_array_bounds_check( i32 %len2058, i32 %_lhs2055 )
  %elt_ptr2059 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2056, i32 0, i32 1, i32 %_lhs2055
  %_lhs2060 = load i32* %j1988
  %array_dereferenced2061 = load { i32, [ 0 x i32 ] }** %a_slot1976
  %len_ptr2062 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2061, i32 0, i32 0
  %len2063 = load i32* %len_ptr2062
  call void @oat_array_bounds_check( i32 %len2063, i32 %_lhs2060 )
  %elt_ptr2064 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2061, i32 0, i32 1, i32 %_lhs2060
  %_lhs2065 = load i32* %elt_ptr2064
  store i32 %_lhs2065, i32* %elt_ptr2059
  %_lhs2066 = load i32* %j1988
  %array_dereferenced2067 = load { i32, [ 0 x i32 ] }** %a_slot1976
  %len_ptr2068 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2067, i32 0, i32 0
  %len2069 = load i32* %len_ptr2068
  call void @oat_array_bounds_check( i32 %len2069, i32 %_lhs2066 )
  %elt_ptr2070 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2067, i32 0, i32 1, i32 %_lhs2066
  %_lhs2071 = load i32* %t1989
  store i32 %_lhs2071, i32* %elt_ptr2070
  %_lhs2072 = load i32* %j1988
  ret i32 %_lhs2072
}


define void @quick_sort ({ i32, [ 0 x i32 ] }* %a1953, i32 %l1951, i32 %r1949){

__fresh738:
  %a_slot1954 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %a1953, { i32, [ 0 x i32 ] }** %a_slot1954
  %l_slot1952 = alloca i32
  store i32 %l1951, i32* %l_slot1952
  %r_slot1950 = alloca i32
  store i32 %r1949, i32* %r_slot1950
  %j1955 = alloca i32
  store i32 0, i32* %j1955
  %_lhs1956 = load i32* %l_slot1952
  %_lhs1957 = load i32* %r_slot1950
  %bop1958 = icmp slt i32 %_lhs1956, %_lhs1957
  br i1 %bop1958, label %__then737, label %__else736

__fresh739:
  br label %__then737

__then737:
  %_lhs1961 = load i32* %r_slot1950
  %_lhs1960 = load i32* %l_slot1952
  %_lhs1959 = load { i32, [ 0 x i32 ] }** %a_slot1954
  %ret1962 = call i32 @partition ( { i32, [ 0 x i32 ] }* %_lhs1959, i32 %_lhs1960, i32 %_lhs1961 )
  store i32 %ret1962, i32* %j1955
  %_lhs1965 = load i32* %j1955
  %bop1966 = sub i32 %_lhs1965, 1
  %_lhs1964 = load i32* %l_slot1952
  %_lhs1963 = load { i32, [ 0 x i32 ] }** %a_slot1954
  call void @quick_sort( { i32, [ 0 x i32 ] }* %_lhs1963, i32 %_lhs1964, i32 %bop1966 )
  %_lhs1970 = load i32* %r_slot1950
  %_lhs1968 = load i32* %j1955
  %bop1969 = add i32 %_lhs1968, 1
  %_lhs1967 = load { i32, [ 0 x i32 ] }** %a_slot1954
  call void @quick_sort( { i32, [ 0 x i32 ] }* %_lhs1967, i32 %bop1969, i32 %_lhs1970 )
  br label %__merge735

__fresh740:
  br label %__else736

__else736:
  br label %__merge735

__merge735:
  ret void
}


