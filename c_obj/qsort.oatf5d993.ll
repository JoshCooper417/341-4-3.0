declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@_oat_string2119.str. = private unnamed_addr constant [ 2 x i8 ] c "
\00", align 4
@_oat_string2119 = global i8* getelementptr inbounds ([ 2 x i8 ]* @_oat_string2119.str., i32 0, i32 0), align 4
@_oat_string2114.str. = private unnamed_addr constant [ 2 x i8 ] c "
\00", align 4
@_oat_string2114 = global i8* getelementptr inbounds ([ 2 x i8 ]* @_oat_string2114.str., i32 0, i32 0), align 4
@_oat_string2110.str. = private unnamed_addr constant [ 2 x i8 ] c "
\00", align 4
@_oat_string2110 = global i8* getelementptr inbounds ([ 2 x i8 ]* @_oat_string2110.str., i32 0, i32 0), align 4
define void @oat_init (){

__fresh768:
  ret void
}


define i32 @program (i32 %argc2096, { i32, [ 0 x i8* ] }* %argv2094){

__fresh767:
  %argc_slot2097 = alloca i32
  store i32 %argc2096, i32* %argc_slot2097
  %argv_slot2095 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv2094, { i32, [ 0 x i8* ] }** %argv_slot2095
  %array_ptr2098 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 9 )
  %array2099 = bitcast { i32, [ 0 x i32 ] }* %array_ptr2098 to { i32, [ 0 x i32 ] }* 
  %index_ptr2100 = getelementptr { i32, [ 0 x i32 ] }* %array2099, i32 0, i32 1, i32 0
  store i32 107, i32* %index_ptr2100
  %index_ptr2101 = getelementptr { i32, [ 0 x i32 ] }* %array2099, i32 0, i32 1, i32 1
  store i32 112, i32* %index_ptr2101
  %index_ptr2102 = getelementptr { i32, [ 0 x i32 ] }* %array2099, i32 0, i32 1, i32 2
  store i32 121, i32* %index_ptr2102
  %index_ptr2103 = getelementptr { i32, [ 0 x i32 ] }* %array2099, i32 0, i32 1, i32 3
  store i32 102, i32* %index_ptr2103
  %index_ptr2104 = getelementptr { i32, [ 0 x i32 ] }* %array2099, i32 0, i32 1, i32 4
  store i32 123, i32* %index_ptr2104
  %index_ptr2105 = getelementptr { i32, [ 0 x i32 ] }* %array2099, i32 0, i32 1, i32 5
  store i32 115, i32* %index_ptr2105
  %index_ptr2106 = getelementptr { i32, [ 0 x i32 ] }* %array2099, i32 0, i32 1, i32 6
  store i32 104, i32* %index_ptr2106
  %index_ptr2107 = getelementptr { i32, [ 0 x i32 ] }* %array2099, i32 0, i32 1, i32 7
  store i32 111, i32* %index_ptr2107
  %index_ptr2108 = getelementptr { i32, [ 0 x i32 ] }* %array2099, i32 0, i32 1, i32 8
  store i32 109, i32* %index_ptr2108
  %a2109 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %array2099, { i32, [ 0 x i32 ] }** %a2109
  %strval2111 = load i8** @_oat_string2110
  call void @print_string( i8* %strval2111 )
  %_lhs2112 = load { i32, [ 0 x i32 ] }** %a2109
  %ret2113 = call i8* @string_of_array ( { i32, [ 0 x i32 ] }* %_lhs2112 )
  call void @print_string( i8* %ret2113 )
  %strval2115 = load i8** @_oat_string2114
  call void @print_string( i8* %strval2115 )
  %_lhs2116 = load { i32, [ 0 x i32 ] }** %a2109
  call void @quick_sort( { i32, [ 0 x i32 ] }* %_lhs2116, i32 0, i32 8 )
  %_lhs2117 = load { i32, [ 0 x i32 ] }** %a2109
  %ret2118 = call i8* @string_of_array ( { i32, [ 0 x i32 ] }* %_lhs2117 )
  call void @print_string( i8* %ret2118 )
  %strval2120 = load i8** @_oat_string2119
  call void @print_string( i8* %strval2120 )
  ret i32 255
}


define i32 @partition ({ i32, [ 0 x i32 ] }* %a1996, i32 %l1994, i32 %r1992){

__fresh756:
  %a_slot1997 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %a1996, { i32, [ 0 x i32 ] }** %a_slot1997
  %l_slot1995 = alloca i32
  store i32 %l1994, i32* %l_slot1995
  %r_slot1993 = alloca i32
  store i32 %r1992, i32* %r_slot1993
  %_lhs1998 = load i32* %l_slot1995
  %array_dereferenced1999 = load { i32, [ 0 x i32 ] }** %a_slot1997
  %len_ptr2000 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced1999, i32 0, i32 0
  %len2001 = load i32* %len_ptr2000
  call void @oat_array_bounds_check( i32 %len2001, i32 %_lhs1998 )
  %elt_ptr2002 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced1999, i32 0, i32 1, i32 %_lhs1998
  %_lhs2003 = load i32* %elt_ptr2002
  %pivot2004 = alloca i32
  store i32 %_lhs2003, i32* %pivot2004
  %_lhs2005 = load i32* %l_slot1995
  %i2006 = alloca i32
  store i32 %_lhs2005, i32* %i2006
  %_lhs2007 = load i32* %r_slot1993
  %bop2008 = add i32 %_lhs2007, 1
  %j2009 = alloca i32
  store i32 %bop2008, i32* %j2009
  %t2010 = alloca i32
  store i32 0, i32* %t2010
  %done2011 = alloca i32
  store i32 0, i32* %done2011
  br label %__cond743

__cond743:
  %_lhs2012 = load i32* %done2011
  %bop2013 = icmp eq i32 %_lhs2012, 0
  br i1 %bop2013, label %__body742, label %__post741

__fresh757:
  br label %__body742

__body742:
  %_lhs2014 = load i32* %i2006
  %bop2015 = add i32 %_lhs2014, 1
  store i32 %bop2015, i32* %i2006
  br label %__cond746

__cond746:
  %_lhs2016 = load i32* %i2006
  %array_dereferenced2017 = load { i32, [ 0 x i32 ] }** %a_slot1997
  %len_ptr2018 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2017, i32 0, i32 0
  %len2019 = load i32* %len_ptr2018
  call void @oat_array_bounds_check( i32 %len2019, i32 %_lhs2016 )
  %elt_ptr2020 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2017, i32 0, i32 1, i32 %_lhs2016
  %_lhs2021 = load i32* %elt_ptr2020
  %_lhs2022 = load i32* %pivot2004
  %bop2023 = icmp sle i32 %_lhs2021, %_lhs2022
  %_lhs2024 = load i32* %i2006
  %_lhs2025 = load i32* %r_slot1993
  %bop2026 = icmp sle i32 %_lhs2024, %_lhs2025
  %bop2027 = and i1 %bop2023, %bop2026
  br i1 %bop2027, label %__body745, label %__post744

__fresh758:
  br label %__body745

__body745:
  %_lhs2028 = load i32* %i2006
  %bop2029 = add i32 %_lhs2028, 1
  store i32 %bop2029, i32* %i2006
  br label %__cond746

__fresh759:
  br label %__post744

__post744:
  %_lhs2030 = load i32* %j2009
  %bop2031 = sub i32 %_lhs2030, 1
  store i32 %bop2031, i32* %j2009
  br label %__cond749

__cond749:
  %_lhs2032 = load i32* %j2009
  %array_dereferenced2033 = load { i32, [ 0 x i32 ] }** %a_slot1997
  %len_ptr2034 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2033, i32 0, i32 0
  %len2035 = load i32* %len_ptr2034
  call void @oat_array_bounds_check( i32 %len2035, i32 %_lhs2032 )
  %elt_ptr2036 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2033, i32 0, i32 1, i32 %_lhs2032
  %_lhs2037 = load i32* %elt_ptr2036
  %_lhs2038 = load i32* %pivot2004
  %bop2039 = icmp sgt i32 %_lhs2037, %_lhs2038
  br i1 %bop2039, label %__body748, label %__post747

__fresh760:
  br label %__body748

__body748:
  %_lhs2040 = load i32* %j2009
  %bop2041 = sub i32 %_lhs2040, 1
  store i32 %bop2041, i32* %j2009
  br label %__cond749

__fresh761:
  br label %__post747

__post747:
  %_lhs2042 = load i32* %i2006
  %_lhs2043 = load i32* %j2009
  %bop2044 = icmp sge i32 %_lhs2042, %_lhs2043
  br i1 %bop2044, label %__then752, label %__else751

__fresh762:
  br label %__then752

__then752:
  store i32 1, i32* %done2011
  br label %__merge750

__fresh763:
  br label %__else751

__else751:
  br label %__merge750

__merge750:
  %_lhs2045 = load i32* %done2011
  %bop2046 = icmp eq i32 %_lhs2045, 0
  br i1 %bop2046, label %__then755, label %__else754

__fresh764:
  br label %__then755

__then755:
  %_lhs2047 = load i32* %i2006
  %array_dereferenced2048 = load { i32, [ 0 x i32 ] }** %a_slot1997
  %len_ptr2049 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2048, i32 0, i32 0
  %len2050 = load i32* %len_ptr2049
  call void @oat_array_bounds_check( i32 %len2050, i32 %_lhs2047 )
  %elt_ptr2051 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2048, i32 0, i32 1, i32 %_lhs2047
  %_lhs2052 = load i32* %elt_ptr2051
  store i32 %_lhs2052, i32* %t2010
  %_lhs2053 = load i32* %i2006
  %array_dereferenced2054 = load { i32, [ 0 x i32 ] }** %a_slot1997
  %len_ptr2055 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2054, i32 0, i32 0
  %len2056 = load i32* %len_ptr2055
  call void @oat_array_bounds_check( i32 %len2056, i32 %_lhs2053 )
  %elt_ptr2057 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2054, i32 0, i32 1, i32 %_lhs2053
  %_lhs2058 = load i32* %j2009
  %array_dereferenced2059 = load { i32, [ 0 x i32 ] }** %a_slot1997
  %len_ptr2060 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2059, i32 0, i32 0
  %len2061 = load i32* %len_ptr2060
  call void @oat_array_bounds_check( i32 %len2061, i32 %_lhs2058 )
  %elt_ptr2062 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2059, i32 0, i32 1, i32 %_lhs2058
  %_lhs2063 = load i32* %elt_ptr2062
  store i32 %_lhs2063, i32* %elt_ptr2057
  %_lhs2064 = load i32* %j2009
  %array_dereferenced2065 = load { i32, [ 0 x i32 ] }** %a_slot1997
  %len_ptr2066 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2065, i32 0, i32 0
  %len2067 = load i32* %len_ptr2066
  call void @oat_array_bounds_check( i32 %len2067, i32 %_lhs2064 )
  %elt_ptr2068 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2065, i32 0, i32 1, i32 %_lhs2064
  %_lhs2069 = load i32* %t2010
  store i32 %_lhs2069, i32* %elt_ptr2068
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
  %_lhs2070 = load i32* %l_slot1995
  %array_dereferenced2071 = load { i32, [ 0 x i32 ] }** %a_slot1997
  %len_ptr2072 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2071, i32 0, i32 0
  %len2073 = load i32* %len_ptr2072
  call void @oat_array_bounds_check( i32 %len2073, i32 %_lhs2070 )
  %elt_ptr2074 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2071, i32 0, i32 1, i32 %_lhs2070
  %_lhs2075 = load i32* %elt_ptr2074
  store i32 %_lhs2075, i32* %t2010
  %_lhs2076 = load i32* %l_slot1995
  %array_dereferenced2077 = load { i32, [ 0 x i32 ] }** %a_slot1997
  %len_ptr2078 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2077, i32 0, i32 0
  %len2079 = load i32* %len_ptr2078
  call void @oat_array_bounds_check( i32 %len2079, i32 %_lhs2076 )
  %elt_ptr2080 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2077, i32 0, i32 1, i32 %_lhs2076
  %_lhs2081 = load i32* %j2009
  %array_dereferenced2082 = load { i32, [ 0 x i32 ] }** %a_slot1997
  %len_ptr2083 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2082, i32 0, i32 0
  %len2084 = load i32* %len_ptr2083
  call void @oat_array_bounds_check( i32 %len2084, i32 %_lhs2081 )
  %elt_ptr2085 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2082, i32 0, i32 1, i32 %_lhs2081
  %_lhs2086 = load i32* %elt_ptr2085
  store i32 %_lhs2086, i32* %elt_ptr2080
  %_lhs2087 = load i32* %j2009
  %array_dereferenced2088 = load { i32, [ 0 x i32 ] }** %a_slot1997
  %len_ptr2089 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2088, i32 0, i32 0
  %len2090 = load i32* %len_ptr2089
  call void @oat_array_bounds_check( i32 %len2090, i32 %_lhs2087 )
  %elt_ptr2091 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2088, i32 0, i32 1, i32 %_lhs2087
  %_lhs2092 = load i32* %t2010
  store i32 %_lhs2092, i32* %elt_ptr2091
  %_lhs2093 = load i32* %j2009
  ret i32 %_lhs2093
}


define void @quick_sort ({ i32, [ 0 x i32 ] }* %a1974, i32 %l1972, i32 %r1970){

__fresh738:
  %a_slot1975 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %a1974, { i32, [ 0 x i32 ] }** %a_slot1975
  %l_slot1973 = alloca i32
  store i32 %l1972, i32* %l_slot1973
  %r_slot1971 = alloca i32
  store i32 %r1970, i32* %r_slot1971
  %j1976 = alloca i32
  store i32 0, i32* %j1976
  %_lhs1977 = load i32* %l_slot1973
  %_lhs1978 = load i32* %r_slot1971
  %bop1979 = icmp slt i32 %_lhs1977, %_lhs1978
  br i1 %bop1979, label %__then737, label %__else736

__fresh739:
  br label %__then737

__then737:
  %_lhs1982 = load i32* %r_slot1971
  %_lhs1981 = load i32* %l_slot1973
  %_lhs1980 = load { i32, [ 0 x i32 ] }** %a_slot1975
  %ret1983 = call i32 @partition ( { i32, [ 0 x i32 ] }* %_lhs1980, i32 %_lhs1981, i32 %_lhs1982 )
  store i32 %ret1983, i32* %j1976
  %_lhs1986 = load i32* %j1976
  %bop1987 = sub i32 %_lhs1986, 1
  %_lhs1985 = load i32* %l_slot1973
  %_lhs1984 = load { i32, [ 0 x i32 ] }** %a_slot1975
  call void @quick_sort( { i32, [ 0 x i32 ] }* %_lhs1984, i32 %_lhs1985, i32 %bop1987 )
  %_lhs1991 = load i32* %r_slot1971
  %_lhs1989 = load i32* %j1976
  %bop1990 = add i32 %_lhs1989, 1
  %_lhs1988 = load { i32, [ 0 x i32 ] }** %a_slot1975
  call void @quick_sort( { i32, [ 0 x i32 ] }* %_lhs1988, i32 %bop1990, i32 %_lhs1991 )
  br label %__merge735

__fresh740:
  br label %__else736

__else736:
  br label %__merge735

__merge735:
  ret void
}


