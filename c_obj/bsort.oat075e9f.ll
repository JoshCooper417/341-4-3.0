declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@_oat_string2207.str. = private unnamed_addr constant [ 2 x i8 ] c " \00", align 4
@_oat_string2207 = global i8* getelementptr inbounds ([ 2 x i8 ]* @_oat_string2207.str., i32 0, i32 0), align 4
define void @oat_init (){

__fresh816:
  ret void
}


define i32 @program (i32 %argc2162, { i32, [ 0 x i8* ] }* %argv2160){

__fresh811:
  %argc_slot2163 = alloca i32
  store i32 %argc2162, i32* %argc_slot2163
  %argv_slot2161 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv2160, { i32, [ 0 x i8* ] }** %argv_slot2161
  %array_ptr2165 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 8 )
  %array2166 = bitcast { i32, [ 0 x i32 ] }* %array_ptr2165 to { i32, [ 0 x i32 ] }* 
  %i2170 = alloca i32
  store i32 1, i32* %i2170
  %i2164 = load i32* %i2170
  br label %__check809

__fresh812:
  br label %__check809

__check809:
  br label %__end808

__fresh813:
  %cmp_op2168 = icmp slt i32 %i2164, 8
  br i32 %cmp_op2168, label %__body810, label %__end808

__fresh814:
  br label %__body810

__body810:
  %elem_ptr2167 = getelementptr { i32, [ 0 x i32 ] }* %array2166, i32 0, i32 1, i32 %i2164
  store i32 0, i32* %elem_ptr2167
  %index_op2169 = add i32 %i2164, 1
  br label %__check809

__fresh815:
  br label %__end808

__end808:
  %a2172 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %array2166, { i32, [ 0 x i32 ] }** %a2172
  %array_dereferenced2173 = load { i32, [ 0 x i32 ] }** %a2172
  %len_ptr2174 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2173, i32 0, i32 0
  %len2175 = load i32* %len_ptr2174
  call void @oat_array_bounds_check( i32 %len2175, i32 0 )
  %elt_ptr2176 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2173, i32 0, i32 1, i32 0
  store i32 121, i32* %elt_ptr2176
  %array_dereferenced2177 = load { i32, [ 0 x i32 ] }** %a2172
  %len_ptr2178 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2177, i32 0, i32 0
  %len2179 = load i32* %len_ptr2178
  call void @oat_array_bounds_check( i32 %len2179, i32 1 )
  %elt_ptr2180 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2177, i32 0, i32 1, i32 1
  store i32 125, i32* %elt_ptr2180
  %array_dereferenced2181 = load { i32, [ 0 x i32 ] }** %a2172
  %len_ptr2182 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2181, i32 0, i32 0
  %len2183 = load i32* %len_ptr2182
  call void @oat_array_bounds_check( i32 %len2183, i32 2 )
  %elt_ptr2184 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2181, i32 0, i32 1, i32 2
  store i32 120, i32* %elt_ptr2184
  %array_dereferenced2185 = load { i32, [ 0 x i32 ] }** %a2172
  %len_ptr2186 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2185, i32 0, i32 0
  %len2187 = load i32* %len_ptr2186
  call void @oat_array_bounds_check( i32 %len2187, i32 3 )
  %elt_ptr2188 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2185, i32 0, i32 1, i32 3
  store i32 111, i32* %elt_ptr2188
  %array_dereferenced2189 = load { i32, [ 0 x i32 ] }** %a2172
  %len_ptr2190 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2189, i32 0, i32 0
  %len2191 = load i32* %len_ptr2190
  call void @oat_array_bounds_check( i32 %len2191, i32 4 )
  %elt_ptr2192 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2189, i32 0, i32 1, i32 4
  store i32 116, i32* %elt_ptr2192
  %array_dereferenced2193 = load { i32, [ 0 x i32 ] }** %a2172
  %len_ptr2194 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2193, i32 0, i32 0
  %len2195 = load i32* %len_ptr2194
  call void @oat_array_bounds_check( i32 %len2195, i32 5 )
  %elt_ptr2196 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2193, i32 0, i32 1, i32 5
  store i32 110, i32* %elt_ptr2196
  %array_dereferenced2197 = load { i32, [ 0 x i32 ] }** %a2172
  %len_ptr2198 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2197, i32 0, i32 0
  %len2199 = load i32* %len_ptr2198
  call void @oat_array_bounds_check( i32 %len2199, i32 6 )
  %elt_ptr2200 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2197, i32 0, i32 1, i32 6
  store i32 117, i32* %elt_ptr2200
  %array_dereferenced2201 = load { i32, [ 0 x i32 ] }** %a2172
  %len_ptr2202 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2201, i32 0, i32 0
  %len2203 = load i32* %len_ptr2202
  call void @oat_array_bounds_check( i32 %len2203, i32 7 )
  %elt_ptr2204 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2201, i32 0, i32 1, i32 7
  store i32 119, i32* %elt_ptr2204
  %_lhs2205 = load { i32, [ 0 x i32 ] }** %a2172
  %ret2206 = call i8* @string_of_array ( { i32, [ 0 x i32 ] }* %_lhs2205 )
  call void @print_string( i8* %ret2206 )
  %strval2208 = load i8** @_oat_string2207
  call void @print_string( i8* %strval2208 )
  %_lhs2210 = load { i32, [ 0 x i32 ] }** %a2172
  %len_ptr2211 = getelementptr { i32, [ 0 x i32 ] }* %_lhs2210, i32 0, i32 0
  %len2212 = load i32* %len_ptr2211
  %_lhs2209 = load { i32, [ 0 x i32 ] }** %a2172
  call void @bubble_sort( { i32, [ 0 x i32 ] }* %_lhs2209, i32 %len2212 )
  %_lhs2213 = load { i32, [ 0 x i32 ] }** %a2172
  %ret2214 = call i8* @string_of_array ( { i32, [ 0 x i32 ] }* %_lhs2213 )
  call void @print_string( i8* %ret2214 )
  %unop2215 = sub i32 0, 1
  ret i32 %unop2215
}


define void @bubble_sort ({ i32, [ 0 x i32 ] }* %numbers2105, i32 %array_size2103){

__fresh801:
  %numbers_slot2106 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %numbers2105, { i32, [ 0 x i32 ] }** %numbers_slot2106
  %array_size_slot2104 = alloca i32
  store i32 %array_size2103, i32* %array_size_slot2104
  %temp2107 = alloca i32
  store i32 0, i32* %temp2107
  %_lhs2108 = load i32* %array_size_slot2104
  %bop2109 = sub i32 %_lhs2108, 1
  %i2110 = alloca i32
  store i32 %bop2109, i32* %i2110
  br label %__cond794

__cond794:
  %_lhs2111 = load i32* %i2110
  %bop2112 = icmp sgt i32 %_lhs2111, 0
  br i1 %bop2112, label %__body793, label %__post792

__fresh802:
  br label %__body793

__body793:
  %j2113 = alloca i32
  store i32 1, i32* %j2113
  br label %__cond797

__cond797:
  %_lhs2114 = load i32* %j2113
  %_lhs2115 = load i32* %i2110
  %bop2116 = icmp sle i32 %_lhs2114, %_lhs2115
  br i1 %bop2116, label %__body796, label %__post795

__fresh803:
  br label %__body796

__body796:
  %_lhs2117 = load i32* %j2113
  %bop2118 = sub i32 %_lhs2117, 1
  %array_dereferenced2119 = load { i32, [ 0 x i32 ] }** %numbers_slot2106
  %len_ptr2120 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2119, i32 0, i32 0
  %len2121 = load i32* %len_ptr2120
  call void @oat_array_bounds_check( i32 %len2121, i32 %bop2118 )
  %elt_ptr2122 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2119, i32 0, i32 1, i32 %bop2118
  %_lhs2123 = load i32* %elt_ptr2122
  %_lhs2124 = load i32* %j2113
  %array_dereferenced2125 = load { i32, [ 0 x i32 ] }** %numbers_slot2106
  %len_ptr2126 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2125, i32 0, i32 0
  %len2127 = load i32* %len_ptr2126
  call void @oat_array_bounds_check( i32 %len2127, i32 %_lhs2124 )
  %elt_ptr2128 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2125, i32 0, i32 1, i32 %_lhs2124
  %_lhs2129 = load i32* %elt_ptr2128
  %bop2130 = icmp sgt i32 %_lhs2123, %_lhs2129
  br i1 %bop2130, label %__then800, label %__else799

__fresh804:
  br label %__then800

__then800:
  %_lhs2131 = load i32* %j2113
  %bop2132 = sub i32 %_lhs2131, 1
  %array_dereferenced2133 = load { i32, [ 0 x i32 ] }** %numbers_slot2106
  %len_ptr2134 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2133, i32 0, i32 0
  %len2135 = load i32* %len_ptr2134
  call void @oat_array_bounds_check( i32 %len2135, i32 %bop2132 )
  %elt_ptr2136 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2133, i32 0, i32 1, i32 %bop2132
  %_lhs2137 = load i32* %elt_ptr2136
  store i32 %_lhs2137, i32* %temp2107
  %_lhs2138 = load i32* %j2113
  %bop2139 = sub i32 %_lhs2138, 1
  %array_dereferenced2140 = load { i32, [ 0 x i32 ] }** %numbers_slot2106
  %len_ptr2141 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2140, i32 0, i32 0
  %len2142 = load i32* %len_ptr2141
  call void @oat_array_bounds_check( i32 %len2142, i32 %bop2139 )
  %elt_ptr2143 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2140, i32 0, i32 1, i32 %bop2139
  %_lhs2144 = load i32* %j2113
  %array_dereferenced2145 = load { i32, [ 0 x i32 ] }** %numbers_slot2106
  %len_ptr2146 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2145, i32 0, i32 0
  %len2147 = load i32* %len_ptr2146
  call void @oat_array_bounds_check( i32 %len2147, i32 %_lhs2144 )
  %elt_ptr2148 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2145, i32 0, i32 1, i32 %_lhs2144
  %_lhs2149 = load i32* %elt_ptr2148
  store i32 %_lhs2149, i32* %elt_ptr2143
  %_lhs2150 = load i32* %j2113
  %array_dereferenced2151 = load { i32, [ 0 x i32 ] }** %numbers_slot2106
  %len_ptr2152 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2151, i32 0, i32 0
  %len2153 = load i32* %len_ptr2152
  call void @oat_array_bounds_check( i32 %len2153, i32 %_lhs2150 )
  %elt_ptr2154 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2151, i32 0, i32 1, i32 %_lhs2150
  %_lhs2155 = load i32* %temp2107
  store i32 %_lhs2155, i32* %elt_ptr2154
  br label %__merge798

__fresh805:
  br label %__else799

__else799:
  br label %__merge798

__merge798:
  %_lhs2156 = load i32* %j2113
  %bop2157 = add i32 %_lhs2156, 1
  store i32 %bop2157, i32* %j2113
  br label %__cond797

__fresh806:
  br label %__post795

__post795:
  %_lhs2158 = load i32* %i2110
  %bop2159 = sub i32 %_lhs2158, 1
  store i32 %bop2159, i32* %i2110
  br label %__cond794

__fresh807:
  br label %__post792

__post792:
  ret void
}


