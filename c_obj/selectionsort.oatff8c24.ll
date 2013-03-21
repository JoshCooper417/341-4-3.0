declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
define void @oat_init (){

__fresh343:
  ret void
}


define i32 @program (i32 %argc2221, { i32, [ 0 x i8* ] }* %argv2219){

__fresh340:
  %argc_slot2222 = alloca i32
  store i32 %argc2221, i32* %argc_slot2222
  %argv_slot2220 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv2219, { i32, [ 0 x i8* ] }** %argv_slot2220
  %array_ptr2223 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 8 )
  %array2224 = bitcast { i32, [ 0 x i32 ] }* %array_ptr2223 to { i32, [ 0 x i32 ] }* 
  %index_ptr2225 = getelementptr { i32, [ 0 x i32 ] }* %array2224, i32 0, i32 1, i32 0
  store i32 5, i32* %index_ptr2225
  %index_ptr2226 = getelementptr { i32, [ 0 x i32 ] }* %array2224, i32 0, i32 1, i32 1
  store i32 200, i32* %index_ptr2226
  %index_ptr2227 = getelementptr { i32, [ 0 x i32 ] }* %array2224, i32 0, i32 1, i32 2
  store i32 1, i32* %index_ptr2227
  %index_ptr2228 = getelementptr { i32, [ 0 x i32 ] }* %array2224, i32 0, i32 1, i32 3
  store i32 65, i32* %index_ptr2228
  %index_ptr2229 = getelementptr { i32, [ 0 x i32 ] }* %array2224, i32 0, i32 1, i32 4
  store i32 30, i32* %index_ptr2229
  %index_ptr2230 = getelementptr { i32, [ 0 x i32 ] }* %array2224, i32 0, i32 1, i32 5
  store i32 99, i32* %index_ptr2230
  %index_ptr2231 = getelementptr { i32, [ 0 x i32 ] }* %array2224, i32 0, i32 1, i32 6
  store i32 2, i32* %index_ptr2231
  %index_ptr2232 = getelementptr { i32, [ 0 x i32 ] }* %array2224, i32 0, i32 1, i32 7
  store i32 0, i32* %index_ptr2232
  %ar2233 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %array2224, { i32, [ 0 x i32 ] }** %ar2233
  %_lhs2234 = load { i32, [ 0 x i32 ] }** %ar2233
  call void @selectionsort( { i32, [ 0 x i32 ] }* %_lhs2234, i32 8 )
  %i2235 = alloca i32
  store i32 0, i32* %i2235
  br label %__cond339

__cond339:
  %_lhs2236 = load i32* %i2235
  %bop2237 = icmp slt i32 %_lhs2236, 8
  br i1 %bop2237, label %__body338, label %__post337

__fresh341:
  br label %__body338

__body338:
  %_lhs2238 = load i32* %i2235
  %len_ptr2239 = getelementptr { i32, [ 0 x i32 ] }** %ar2233, i32 0, i32 0
  %len2240 = load i32* %len_ptr2239
  call void @oat_array_bounds_check( i32 %len2240, i32 %_lhs2238 )
  %array_dereferenced2241 = load { i32, [ 0 x i32 ] }** %ar2233
  %elt_ptr2242 = getelementptr i32 %array_dereferenced2241, i32 0, i32 1, i32 %_lhs2238
  %_lhs2243 = load i32* %elt_ptr2242
  call void @print_int( i32 %_lhs2243 )
  %_lhs2244 = load i32* %i2235
  %bop2245 = add i32 %_lhs2244, 1
  store i32 %bop2245, i32* %i2235
  br label %__cond339

__fresh342:
  br label %__post337

__post337:
  ret i32 0
}


define void @selectionsort ({ i32, [ 0 x i32 ] }* %a2182, i32 %s2180){

__fresh334:
  %a_slot2183 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %a2182, { i32, [ 0 x i32 ] }** %a_slot2183
  %s_slot2181 = alloca i32
  store i32 %s2180, i32* %s_slot2181
  %t2184 = alloca i32
  store i32 0, i32* %t2184
  %mi2185 = alloca i32
  store i32 0, i32* %mi2185
  %i2186 = alloca i32
  store i32 0, i32* %i2186
  br label %__cond333

__cond333:
  %_lhs2187 = load i32* %i2186
  %_lhs2188 = load i32* %s_slot2181
  %bop2189 = icmp slt i32 %_lhs2187, %_lhs2188
  br i1 %bop2189, label %__body332, label %__post331

__fresh335:
  br label %__body332

__body332:
  %_lhs2192 = load i32* %s_slot2181
  %_lhs2191 = load i32* %i2186
  %_lhs2190 = load { i32, [ 0 x i32 ] }** %a_slot2183
  %ret2193 = call i32 @getminindex ( { i32, [ 0 x i32 ] }* %_lhs2190, i32 %_lhs2191, i32 %_lhs2192 )
  store i32 %ret2193, i32* %mi2185
  %_lhs2194 = load i32* %i2186
  %len_ptr2195 = getelementptr { i32, [ 0 x i32 ] }** %a_slot2183, i32 0, i32 0
  %len2196 = load i32* %len_ptr2195
  call void @oat_array_bounds_check( i32 %len2196, i32 %_lhs2194 )
  %array_dereferenced2197 = load { i32, [ 0 x i32 ] }** %a_slot2183
  %elt_ptr2198 = getelementptr i32 %array_dereferenced2197, i32 0, i32 1, i32 %_lhs2194
  %_lhs2199 = load i32* %elt_ptr2198
  store i32 %_lhs2199, i32* %t2184
  %_lhs2200 = load i32* %i2186
  %len_ptr2201 = getelementptr { i32, [ 0 x i32 ] }** %a_slot2183, i32 0, i32 0
  %len2202 = load i32* %len_ptr2201
  call void @oat_array_bounds_check( i32 %len2202, i32 %_lhs2200 )
  %array_dereferenced2203 = load { i32, [ 0 x i32 ] }** %a_slot2183
  %elt_ptr2204 = getelementptr i32 %array_dereferenced2203, i32 0, i32 1, i32 %_lhs2200
  %_lhs2205 = load i32* %mi2185
  %len_ptr2206 = getelementptr { i32, [ 0 x i32 ] }** %a_slot2183, i32 0, i32 0
  %len2207 = load i32* %len_ptr2206
  call void @oat_array_bounds_check( i32 %len2207, i32 %_lhs2205 )
  %array_dereferenced2208 = load { i32, [ 0 x i32 ] }** %a_slot2183
  %elt_ptr2209 = getelementptr i32 %array_dereferenced2208, i32 0, i32 1, i32 %_lhs2205
  %_lhs2210 = load i32* %elt_ptr2209
  store i32 %_lhs2210, i32* %elt_ptr2204
  %_lhs2211 = load i32* %mi2185
  %len_ptr2212 = getelementptr { i32, [ 0 x i32 ] }** %a_slot2183, i32 0, i32 0
  %len2213 = load i32* %len_ptr2212
  call void @oat_array_bounds_check( i32 %len2213, i32 %_lhs2211 )
  %array_dereferenced2214 = load { i32, [ 0 x i32 ] }** %a_slot2183
  %elt_ptr2215 = getelementptr i32 %array_dereferenced2214, i32 0, i32 1, i32 %_lhs2211
  %_lhs2216 = load i32* %t2184
  store i32 %_lhs2216, i32* %elt_ptr2215
  %_lhs2217 = load i32* %i2186
  %bop2218 = add i32 %_lhs2217, 1
  store i32 %bop2218, i32* %i2186
  br label %__cond333

__fresh336:
  br label %__post331

__post331:
  ret void
}


define i32 @getminindex ({ i32, [ 0 x i32 ] }* %a2146, i32 %s2144, i32 %b2142){

__fresh326:
  %a_slot2147 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %a2146, { i32, [ 0 x i32 ] }** %a_slot2147
  %s_slot2145 = alloca i32
  store i32 %s2144, i32* %s_slot2145
  %b_slot2143 = alloca i32
  store i32 %b2142, i32* %b_slot2143
  %_lhs2148 = load i32* %s_slot2145
  %i2149 = alloca i32
  store i32 %_lhs2148, i32* %i2149
  %_lhs2150 = load i32* %s_slot2145
  %len_ptr2151 = getelementptr { i32, [ 0 x i32 ] }** %a_slot2147, i32 0, i32 0
  %len2152 = load i32* %len_ptr2151
  call void @oat_array_bounds_check( i32 %len2152, i32 %_lhs2150 )
  %array_dereferenced2153 = load { i32, [ 0 x i32 ] }** %a_slot2147
  %elt_ptr2154 = getelementptr i32 %array_dereferenced2153, i32 0, i32 1, i32 %_lhs2150
  %_lhs2155 = load i32* %elt_ptr2154
  %min2156 = alloca i32
  store i32 %_lhs2155, i32* %min2156
  %_lhs2157 = load i32* %s_slot2145
  %mi2158 = alloca i32
  store i32 %_lhs2157, i32* %mi2158
  br label %__cond322

__cond322:
  %_lhs2159 = load i32* %i2149
  %_lhs2160 = load i32* %b_slot2143
  %bop2161 = icmp slt i32 %_lhs2159, %_lhs2160
  br i1 %bop2161, label %__body321, label %__post320

__fresh327:
  br label %__body321

__body321:
  %_lhs2162 = load i32* %i2149
  %len_ptr2163 = getelementptr { i32, [ 0 x i32 ] }** %a_slot2147, i32 0, i32 0
  %len2164 = load i32* %len_ptr2163
  call void @oat_array_bounds_check( i32 %len2164, i32 %_lhs2162 )
  %array_dereferenced2165 = load { i32, [ 0 x i32 ] }** %a_slot2147
  %elt_ptr2166 = getelementptr i32 %array_dereferenced2165, i32 0, i32 1, i32 %_lhs2162
  %_lhs2167 = load i32* %elt_ptr2166
  %_lhs2168 = load i32* %min2156
  %bop2169 = icmp slt i32 %_lhs2167, %_lhs2168
  br i1 %bop2169, label %__then325, label %__else324

__fresh328:
  br label %__then325

__then325:
  %_lhs2170 = load i32* %i2149
  %len_ptr2171 = getelementptr { i32, [ 0 x i32 ] }** %a_slot2147, i32 0, i32 0
  %len2172 = load i32* %len_ptr2171
  call void @oat_array_bounds_check( i32 %len2172, i32 %_lhs2170 )
  %array_dereferenced2173 = load { i32, [ 0 x i32 ] }** %a_slot2147
  %elt_ptr2174 = getelementptr i32 %array_dereferenced2173, i32 0, i32 1, i32 %_lhs2170
  %_lhs2175 = load i32* %elt_ptr2174
  store i32 %_lhs2175, i32* %min2156
  %_lhs2176 = load i32* %i2149
  store i32 %_lhs2176, i32* %mi2158
  br label %__merge323

__fresh329:
  br label %__else324

__else324:
  br label %__merge323

__merge323:
  %_lhs2177 = load i32* %i2149
  %bop2178 = add i32 %_lhs2177, 1
  store i32 %bop2178, i32* %i2149
  br label %__cond322

__fresh330:
  br label %__post320

__post320:
  %_lhs2179 = load i32* %mi2158
  ret i32 %_lhs2179
}


