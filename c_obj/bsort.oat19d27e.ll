declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@_oat_string2216.str. = private unnamed_addr constant [ 2 x i8 ] c " \00", align 4
@_oat_string2216 = global i8* getelementptr inbounds ([ 2 x i8 ]* @_oat_string2216.str., i32 0, i32 0), align 4
define void @oat_init (){

__fresh386:
  ret void
}


define i32 @program (i32 %argc2171, { i32, [ 0 x i8* ] }* %argv2169){

__fresh382:
  %argc_slot2172 = alloca i32
  store i32 %argc2171, i32* %argc_slot2172
  %argv_slot2170 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv2169, { i32, [ 0 x i8* ] }** %argv_slot2170
  %array_ptr2174 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 8 )
  %array2175 = bitcast { i32, [ 0 x i32 ] }* %array_ptr2174 to { i32, [ 0 x i32 ] }* 
  %i2179 = alloca i32
  store i32 1, i32* %i2179
  %i2173 = load i32* %i2179
  br label %__check380

__fresh383:
  br label %__check380

__check380:
  br label %__end379

__fresh384:
  br label %__body381

__body381:
  br label %__check380

__fresh385:
  br label %__end379

__end379:
  %a2181 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %array2175, { i32, [ 0 x i32 ] }** %a2181
  %len_ptr2182 = getelementptr { i32, [ 0 x i32 ] }** %a2181, i32 0, i32 0
  %len2183 = load i32* %len_ptr2182
  call void @oat_array_bounds_check( i32 %len2183, i32 0 )
  %array_dereferenced2184 = load { i32, [ 0 x i32 ] }** %a2181
  %elt_ptr2185 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2184, i32 0, i32 1, i32 0
  store i32 121, i32* %elt_ptr2185
  %len_ptr2186 = getelementptr { i32, [ 0 x i32 ] }** %a2181, i32 0, i32 0
  %len2187 = load i32* %len_ptr2186
  call void @oat_array_bounds_check( i32 %len2187, i32 1 )
  %array_dereferenced2188 = load { i32, [ 0 x i32 ] }** %a2181
  %elt_ptr2189 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2188, i32 0, i32 1, i32 1
  store i32 125, i32* %elt_ptr2189
  %len_ptr2190 = getelementptr { i32, [ 0 x i32 ] }** %a2181, i32 0, i32 0
  %len2191 = load i32* %len_ptr2190
  call void @oat_array_bounds_check( i32 %len2191, i32 2 )
  %array_dereferenced2192 = load { i32, [ 0 x i32 ] }** %a2181
  %elt_ptr2193 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2192, i32 0, i32 1, i32 2
  store i32 120, i32* %elt_ptr2193
  %len_ptr2194 = getelementptr { i32, [ 0 x i32 ] }** %a2181, i32 0, i32 0
  %len2195 = load i32* %len_ptr2194
  call void @oat_array_bounds_check( i32 %len2195, i32 3 )
  %array_dereferenced2196 = load { i32, [ 0 x i32 ] }** %a2181
  %elt_ptr2197 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2196, i32 0, i32 1, i32 3
  store i32 111, i32* %elt_ptr2197
  %len_ptr2198 = getelementptr { i32, [ 0 x i32 ] }** %a2181, i32 0, i32 0
  %len2199 = load i32* %len_ptr2198
  call void @oat_array_bounds_check( i32 %len2199, i32 4 )
  %array_dereferenced2200 = load { i32, [ 0 x i32 ] }** %a2181
  %elt_ptr2201 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2200, i32 0, i32 1, i32 4
  store i32 116, i32* %elt_ptr2201
  %len_ptr2202 = getelementptr { i32, [ 0 x i32 ] }** %a2181, i32 0, i32 0
  %len2203 = load i32* %len_ptr2202
  call void @oat_array_bounds_check( i32 %len2203, i32 5 )
  %array_dereferenced2204 = load { i32, [ 0 x i32 ] }** %a2181
  %elt_ptr2205 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2204, i32 0, i32 1, i32 5
  store i32 110, i32* %elt_ptr2205
  %len_ptr2206 = getelementptr { i32, [ 0 x i32 ] }** %a2181, i32 0, i32 0
  %len2207 = load i32* %len_ptr2206
  call void @oat_array_bounds_check( i32 %len2207, i32 6 )
  %array_dereferenced2208 = load { i32, [ 0 x i32 ] }** %a2181
  %elt_ptr2209 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2208, i32 0, i32 1, i32 6
  store i32 117, i32* %elt_ptr2209
  %len_ptr2210 = getelementptr { i32, [ 0 x i32 ] }** %a2181, i32 0, i32 0
  %len2211 = load i32* %len_ptr2210
  call void @oat_array_bounds_check( i32 %len2211, i32 7 )
  %array_dereferenced2212 = load { i32, [ 0 x i32 ] }** %a2181
  %elt_ptr2213 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2212, i32 0, i32 1, i32 7
  store i32 119, i32* %elt_ptr2213
  %_lhs2214 = load { i32, [ 0 x i32 ] }** %a2181
  %ret2215 = call i8* @string_of_array ( { i32, [ 0 x i32 ] }* %_lhs2214 )
  call void @print_string( i8* %ret2215 )
  %strval2217 = load i8** @_oat_string2216
  call void @print_string( i8* %strval2217 )
  %_lhs2219 = load { i32, [ 0 x i32 ] }** %a2181
  %len_ptr2220 = getelementptr { i32, [ 0 x i32 ] }* %_lhs2219, i32 0, i32 0
  %len2221 = load i32* %len_ptr2220
  %_lhs2218 = load { i32, [ 0 x i32 ] }** %a2181
  call void @bubble_sort( { i32, [ 0 x i32 ] }* %_lhs2218, i32 %len2221 )
  %_lhs2222 = load { i32, [ 0 x i32 ] }** %a2181
  %ret2223 = call i8* @string_of_array ( { i32, [ 0 x i32 ] }* %_lhs2222 )
  call void @print_string( i8* %ret2223 )
  %unop2224 = sub i32 0, 1
  ret i32 %unop2224
}


define void @bubble_sort ({ i32, [ 0 x i32 ] }* %numbers2114, i32 %array_size2112){

__fresh372:
  %numbers_slot2115 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %numbers2114, { i32, [ 0 x i32 ] }** %numbers_slot2115
  %array_size_slot2113 = alloca i32
  store i32 %array_size2112, i32* %array_size_slot2113
  %temp2116 = alloca i32
  store i32 0, i32* %temp2116
  %_lhs2117 = load i32* %array_size_slot2113
  %bop2118 = sub i32 %_lhs2117, 1
  %i2119 = alloca i32
  store i32 %bop2118, i32* %i2119
  br label %__cond365

__cond365:
  %_lhs2120 = load i32* %i2119
  %bop2121 = icmp sgt i32 %_lhs2120, 0
  br i1 %bop2121, label %__body364, label %__post363

__fresh373:
  br label %__body364

__body364:
  %j2122 = alloca i32
  store i32 1, i32* %j2122
  br label %__cond368

__cond368:
  %_lhs2123 = load i32* %j2122
  %_lhs2124 = load i32* %i2119
  %bop2125 = icmp sle i32 %_lhs2123, %_lhs2124
  br i1 %bop2125, label %__body367, label %__post366

__fresh374:
  br label %__body367

__body367:
  %_lhs2126 = load i32* %j2122
  %bop2127 = sub i32 %_lhs2126, 1
  %len_ptr2128 = getelementptr { i32, [ 0 x i32 ] }** %numbers_slot2115, i32 0, i32 0
  %len2129 = load i32* %len_ptr2128
  call void @oat_array_bounds_check( i32 %len2129, i32 %bop2127 )
  %array_dereferenced2130 = load { i32, [ 0 x i32 ] }** %numbers_slot2115
  %elt_ptr2131 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2130, i32 0, i32 1, i32 %bop2127
  %_lhs2132 = load i32* %elt_ptr2131
  %_lhs2133 = load i32* %j2122
  %len_ptr2134 = getelementptr { i32, [ 0 x i32 ] }** %numbers_slot2115, i32 0, i32 0
  %len2135 = load i32* %len_ptr2134
  call void @oat_array_bounds_check( i32 %len2135, i32 %_lhs2133 )
  %array_dereferenced2136 = load { i32, [ 0 x i32 ] }** %numbers_slot2115
  %elt_ptr2137 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2136, i32 0, i32 1, i32 %_lhs2133
  %_lhs2138 = load i32* %elt_ptr2137
  %bop2139 = icmp sgt i32 %_lhs2132, %_lhs2138
  br i1 %bop2139, label %__then371, label %__else370

__fresh375:
  br label %__then371

__then371:
  %_lhs2140 = load i32* %j2122
  %bop2141 = sub i32 %_lhs2140, 1
  %len_ptr2142 = getelementptr { i32, [ 0 x i32 ] }** %numbers_slot2115, i32 0, i32 0
  %len2143 = load i32* %len_ptr2142
  call void @oat_array_bounds_check( i32 %len2143, i32 %bop2141 )
  %array_dereferenced2144 = load { i32, [ 0 x i32 ] }** %numbers_slot2115
  %elt_ptr2145 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2144, i32 0, i32 1, i32 %bop2141
  %_lhs2146 = load i32* %elt_ptr2145
  store i32 %_lhs2146, i32* %temp2116
  %_lhs2147 = load i32* %j2122
  %bop2148 = sub i32 %_lhs2147, 1
  %len_ptr2149 = getelementptr { i32, [ 0 x i32 ] }** %numbers_slot2115, i32 0, i32 0
  %len2150 = load i32* %len_ptr2149
  call void @oat_array_bounds_check( i32 %len2150, i32 %bop2148 )
  %array_dereferenced2151 = load { i32, [ 0 x i32 ] }** %numbers_slot2115
  %elt_ptr2152 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2151, i32 0, i32 1, i32 %bop2148
  %_lhs2153 = load i32* %j2122
  %len_ptr2154 = getelementptr { i32, [ 0 x i32 ] }** %numbers_slot2115, i32 0, i32 0
  %len2155 = load i32* %len_ptr2154
  call void @oat_array_bounds_check( i32 %len2155, i32 %_lhs2153 )
  %array_dereferenced2156 = load { i32, [ 0 x i32 ] }** %numbers_slot2115
  %elt_ptr2157 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2156, i32 0, i32 1, i32 %_lhs2153
  %_lhs2158 = load i32* %elt_ptr2157
  store i32 %_lhs2158, i32* %elt_ptr2152
  %_lhs2159 = load i32* %j2122
  %len_ptr2160 = getelementptr { i32, [ 0 x i32 ] }** %numbers_slot2115, i32 0, i32 0
  %len2161 = load i32* %len_ptr2160
  call void @oat_array_bounds_check( i32 %len2161, i32 %_lhs2159 )
  %array_dereferenced2162 = load { i32, [ 0 x i32 ] }** %numbers_slot2115
  %elt_ptr2163 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2162, i32 0, i32 1, i32 %_lhs2159
  %_lhs2164 = load i32* %temp2116
  store i32 %_lhs2164, i32* %elt_ptr2163
  br label %__merge369

__fresh376:
  br label %__else370

__else370:
  br label %__merge369

__merge369:
  %_lhs2165 = load i32* %j2122
  %bop2166 = add i32 %_lhs2165, 1
  store i32 %bop2166, i32* %j2122
  br label %__cond368

__fresh377:
  br label %__post366

__post366:
  %_lhs2167 = load i32* %i2119
  %bop2168 = sub i32 %_lhs2167, 1
  store i32 %bop2168, i32* %i2119
  br label %__cond365

__fresh378:
  br label %__post363

__post363:
  ret void
}


