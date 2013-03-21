declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
define void @oat_init (){

__fresh312:
  ret void
}


define i32 @program (i32 %argc2127, { i32, [ 0 x i8* ] }* %argv2125){

__fresh309:
  %argc_slot2128 = alloca i32
  store i32 %argc2127, i32* %argc_slot2128
  %argv_slot2126 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv2125, { i32, [ 0 x i8* ] }** %argv_slot2126
  %array_ptr2129 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 8 )
  %array2130 = bitcast { i32, [ 0 x i32 ] }* %array_ptr2129 to { i32, [ 0 x i32 ] }* 
  %index_ptr2131 = getelementptr { i32, [ 0 x i32 ] }* %array2130, i32 0, i32 1, i32 0
  store i32 5, i32* %index_ptr2131
  %index_ptr2132 = getelementptr { i32, [ 0 x i32 ] }* %array2130, i32 0, i32 1, i32 1
  store i32 200, i32* %index_ptr2132
  %index_ptr2133 = getelementptr { i32, [ 0 x i32 ] }* %array2130, i32 0, i32 1, i32 2
  store i32 1, i32* %index_ptr2133
  %index_ptr2134 = getelementptr { i32, [ 0 x i32 ] }* %array2130, i32 0, i32 1, i32 3
  store i32 65, i32* %index_ptr2134
  %index_ptr2135 = getelementptr { i32, [ 0 x i32 ] }* %array2130, i32 0, i32 1, i32 4
  store i32 30, i32* %index_ptr2135
  %index_ptr2136 = getelementptr { i32, [ 0 x i32 ] }* %array2130, i32 0, i32 1, i32 5
  store i32 99, i32* %index_ptr2136
  %index_ptr2137 = getelementptr { i32, [ 0 x i32 ] }* %array2130, i32 0, i32 1, i32 6
  store i32 2, i32* %index_ptr2137
  %index_ptr2138 = getelementptr { i32, [ 0 x i32 ] }* %array2130, i32 0, i32 1, i32 7
  store i32 0, i32* %index_ptr2138
  %ar2139 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %array2130, { i32, [ 0 x i32 ] }** %ar2139
  %_lhs2140 = load { i32, [ 0 x i32 ] }** %ar2139
  call void @selectionsort( { i32, [ 0 x i32 ] }* %_lhs2140, i32 8 )
  %i2141 = alloca i32
  store i32 0, i32* %i2141
  br label %__cond308

__cond308:
  %_lhs2142 = load i32* %i2141
  %bop2143 = icmp slt i32 %_lhs2142, 8
  br i1 %bop2143, label %__body307, label %__post306

__fresh310:
  br label %__body307

__body307:
  %_lhs2150 = load [ 0 x i32 ]* %elt_ptr2149
  call void @print_int( [ 0 x i32 ] %_lhs2150 )
  %_lhs2151 = load i32* %i2141
  %bop2152 = add i32 %_lhs2151, 1
  store i32 %bop2152, i32* %i2141
  br label %__cond308

__fresh311:
  br label %__post306

__post306:
  ret i32 0
}


define void @selectionsort ({ i32, [ 0 x i32 ] }* %a2084, i32 %s2082){

__fresh303:
  %a_slot2085 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %a2084, { i32, [ 0 x i32 ] }** %a_slot2085
  %s_slot2083 = alloca i32
  store i32 %s2082, i32* %s_slot2083
  %t2086 = alloca i32
  store i32 0, i32* %t2086
  %mi2087 = alloca i32
  store i32 0, i32* %mi2087
  %i2088 = alloca i32
  store i32 0, i32* %i2088
  br label %__cond302

__cond302:
  %_lhs2089 = load i32* %i2088
  %_lhs2090 = load i32* %s_slot2083
  %bop2091 = icmp slt i32 %_lhs2089, %_lhs2090
  br i1 %bop2091, label %__body301, label %__post300

__fresh304:
  br label %__body301

__body301:
  %_lhs2094 = load i32* %s_slot2083
  %_lhs2093 = load i32* %i2088
  %_lhs2092 = load { i32, [ 0 x i32 ] }** %a_slot2085
  %ret2095 = call i32 @getminindex ( { i32, [ 0 x i32 ] }* %_lhs2092, i32 %_lhs2093, i32 %_lhs2094 )
  store i32 %ret2095, i32* %mi2087
  %_lhs2102 = load [ 0 x i32 ]* %elt_ptr2101
  store [ 0 x i32 ] %_lhs2102, i32* %t2086
  %_lhs2115 = load [ 0 x i32 ]* %elt_ptr2114
  store [ 0 x i32 ] %_lhs2115, [ 0 x i32 ]* %elt_ptr2108
  %_lhs2122 = load i32* %t2086
  store i32 %_lhs2122, [ 0 x i32 ]* %elt_ptr2121
  %_lhs2123 = load i32* %i2088
  %bop2124 = add i32 %_lhs2123, 1
  store i32 %bop2124, i32* %i2088
  br label %__cond302

__fresh305:
  br label %__post300

__post300:
  ret void
}


define i32 @getminindex ({ i32, [ 0 x i32 ] }* %a2045, i32 %s2043, i32 %b2041){

__fresh295:
  %a_slot2046 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %a2045, { i32, [ 0 x i32 ] }** %a_slot2046
  %s_slot2044 = alloca i32
  store i32 %s2043, i32* %s_slot2044
  %b_slot2042 = alloca i32
  store i32 %b2041, i32* %b_slot2042
  %_lhs2047 = load i32* %s_slot2044
  %i2048 = alloca i32
  store i32 %_lhs2047, i32* %i2048
  %_lhs2055 = load [ 0 x i32 ]* %elt_ptr2054
  %min2056 = alloca i32
  store [ 0 x i32 ] %_lhs2055, i32* %min2056
  %_lhs2057 = load i32* %s_slot2044
  %mi2058 = alloca i32
  store i32 %_lhs2057, i32* %mi2058
  br label %__cond291

__cond291:
  %_lhs2059 = load i32* %i2048
  %_lhs2060 = load i32* %b_slot2042
  %bop2061 = icmp slt i32 %_lhs2059, %_lhs2060
  br i1 %bop2061, label %__body290, label %__post289

__fresh296:
  br label %__body290

__body290:
  %_lhs2068 = load [ 0 x i32 ]* %elt_ptr2067
  %_lhs2069 = load i32* %min2056
  %bop2070 = icmp slt [ 0 x i32 ] %_lhs2068, %_lhs2069
  br i1 %bop2070, label %__then294, label %__else293

__fresh297:
  br label %__then294

__then294:
  %_lhs2077 = load [ 0 x i32 ]* %elt_ptr2076
  store [ 0 x i32 ] %_lhs2077, i32* %min2056
  %_lhs2078 = load i32* %i2048
  store i32 %_lhs2078, i32* %mi2058
  br label %__merge292

__fresh298:
  br label %__else293

__else293:
  br label %__merge292

__merge292:
  %_lhs2079 = load i32* %i2048
  %bop2080 = add i32 %_lhs2079, 1
  store i32 %bop2080, i32* %i2048
  br label %__cond291

__fresh299:
  br label %__post289

__post289:
  %_lhs2081 = load i32* %mi2058
  ret i32 %_lhs2081
}


