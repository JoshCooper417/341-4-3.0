declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@_oat_string2229.str. = private unnamed_addr constant [ 2 x i8 ] c " \00", align 4
@_oat_string2229 = global i8* getelementptr inbounds ([ 2 x i8 ]* @_oat_string2229.str., i32 0, i32 0), align 4
define void @oat_init (){

__fresh816:
  ret void
}


define i32 @program (i32 %argc2183, { i32, [ 0 x i8* ] }* %argv2181){

__fresh811:
  %argc_slot2184 = alloca i32
  store i32 %argc2183, i32* %argc_slot2184
  %argv_slot2182 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv2181, { i32, [ 0 x i8* ] }** %argv_slot2182
  %array_ptr2186 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 8 )
  %array2187 = bitcast { i32, [ 0 x i32 ] }* %array_ptr2186 to { i32, [ 0 x i32 ] }* 
  %i2192 = alloca i32
  store i32 1, i32* %i2192
  %i2185 = load i32* %i2192
  br label %__check809

__fresh812:
  br label %__check809

__check809:
  br label %__end808

__fresh813:
  %cmp_op2190 = icmp slt i32 %i2185, 8
  br i32 %cmp_op2190, label %__body810, label %__end808

__fresh814:
  br label %__body810

__body810:
  %elem_ptr2189 = getelementptr { i32, [ 0 x i32 ] }* %array2187, i32 0, i32 1, i32 %i2185
  store i32 0, i32* %elem_ptr2189
  %index_op2191 = add i32 %i2185, 1
  br label %__check809

__fresh815:
  br label %__end808

__end808:
  %array_ptr2188 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %array2187, { i32, [ 0 x i32 ] }** %array_ptr2188
  %a2194 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }** %array_ptr2188, { i32, [ 0 x i32 ] }** %a2194
  %array_dereferenced2195 = load { i32, [ 0 x i32 ] }** %a2194
  %len_ptr2196 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2195, i32 0, i32 0
  %len2197 = load i32* %len_ptr2196
  call void @oat_array_bounds_check( i32 %len2197, i32 0 )
  %elt_ptr2198 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2195, i32 0, i32 1, i32 0
  store i32 121, i32* %elt_ptr2198
  %array_dereferenced2199 = load { i32, [ 0 x i32 ] }** %a2194
  %len_ptr2200 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2199, i32 0, i32 0
  %len2201 = load i32* %len_ptr2200
  call void @oat_array_bounds_check( i32 %len2201, i32 1 )
  %elt_ptr2202 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2199, i32 0, i32 1, i32 1
  store i32 125, i32* %elt_ptr2202
  %array_dereferenced2203 = load { i32, [ 0 x i32 ] }** %a2194
  %len_ptr2204 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2203, i32 0, i32 0
  %len2205 = load i32* %len_ptr2204
  call void @oat_array_bounds_check( i32 %len2205, i32 2 )
  %elt_ptr2206 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2203, i32 0, i32 1, i32 2
  store i32 120, i32* %elt_ptr2206
  %array_dereferenced2207 = load { i32, [ 0 x i32 ] }** %a2194
  %len_ptr2208 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2207, i32 0, i32 0
  %len2209 = load i32* %len_ptr2208
  call void @oat_array_bounds_check( i32 %len2209, i32 3 )
  %elt_ptr2210 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2207, i32 0, i32 1, i32 3
  store i32 111, i32* %elt_ptr2210
  %array_dereferenced2211 = load { i32, [ 0 x i32 ] }** %a2194
  %len_ptr2212 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2211, i32 0, i32 0
  %len2213 = load i32* %len_ptr2212
  call void @oat_array_bounds_check( i32 %len2213, i32 4 )
  %elt_ptr2214 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2211, i32 0, i32 1, i32 4
  store i32 116, i32* %elt_ptr2214
  %array_dereferenced2215 = load { i32, [ 0 x i32 ] }** %a2194
  %len_ptr2216 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2215, i32 0, i32 0
  %len2217 = load i32* %len_ptr2216
  call void @oat_array_bounds_check( i32 %len2217, i32 5 )
  %elt_ptr2218 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2215, i32 0, i32 1, i32 5
  store i32 110, i32* %elt_ptr2218
  %array_dereferenced2219 = load { i32, [ 0 x i32 ] }** %a2194
  %len_ptr2220 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2219, i32 0, i32 0
  %len2221 = load i32* %len_ptr2220
  call void @oat_array_bounds_check( i32 %len2221, i32 6 )
  %elt_ptr2222 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2219, i32 0, i32 1, i32 6
  store i32 117, i32* %elt_ptr2222
  %array_dereferenced2223 = load { i32, [ 0 x i32 ] }** %a2194
  %len_ptr2224 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2223, i32 0, i32 0
  %len2225 = load i32* %len_ptr2224
  call void @oat_array_bounds_check( i32 %len2225, i32 7 )
  %elt_ptr2226 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2223, i32 0, i32 1, i32 7
  store i32 119, i32* %elt_ptr2226
  %_lhs2227 = load { i32, [ 0 x i32 ] }** %a2194
  %ret2228 = call i8* @string_of_array ( { i32, [ 0 x i32 ] }* %_lhs2227 )
  call void @print_string( i8* %ret2228 )
  %strval2230 = load i8** @_oat_string2229
  call void @print_string( i8* %strval2230 )
  %_lhs2232 = load { i32, [ 0 x i32 ] }** %a2194
  %len_ptr2233 = getelementptr { i32, [ 0 x i32 ] }* %_lhs2232, i32 0, i32 0
  %len2234 = load i32* %len_ptr2233
  %_lhs2231 = load { i32, [ 0 x i32 ] }** %a2194
  call void @bubble_sort( { i32, [ 0 x i32 ] }* %_lhs2231, i32 %len2234 )
  %_lhs2235 = load { i32, [ 0 x i32 ] }** %a2194
  %ret2236 = call i8* @string_of_array ( { i32, [ 0 x i32 ] }* %_lhs2235 )
  call void @print_string( i8* %ret2236 )
  %unop2237 = sub i32 0, 1
  ret i32 %unop2237
}


define void @bubble_sort ({ i32, [ 0 x i32 ] }* %numbers2126, i32 %array_size2124){

__fresh801:
  %numbers_slot2127 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %numbers2126, { i32, [ 0 x i32 ] }** %numbers_slot2127
  %array_size_slot2125 = alloca i32
  store i32 %array_size2124, i32* %array_size_slot2125
  %temp2128 = alloca i32
  store i32 0, i32* %temp2128
  %_lhs2129 = load i32* %array_size_slot2125
  %bop2130 = sub i32 %_lhs2129, 1
  %i2131 = alloca i32
  store i32 %bop2130, i32* %i2131
  br label %__cond794

__cond794:
  %_lhs2132 = load i32* %i2131
  %bop2133 = icmp sgt i32 %_lhs2132, 0
  br i1 %bop2133, label %__body793, label %__post792

__fresh802:
  br label %__body793

__body793:
  %j2134 = alloca i32
  store i32 1, i32* %j2134
  br label %__cond797

__cond797:
  %_lhs2135 = load i32* %j2134
  %_lhs2136 = load i32* %i2131
  %bop2137 = icmp sle i32 %_lhs2135, %_lhs2136
  br i1 %bop2137, label %__body796, label %__post795

__fresh803:
  br label %__body796

__body796:
  %_lhs2138 = load i32* %j2134
  %bop2139 = sub i32 %_lhs2138, 1
  %array_dereferenced2140 = load { i32, [ 0 x i32 ] }** %numbers_slot2127
  %len_ptr2141 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2140, i32 0, i32 0
  %len2142 = load i32* %len_ptr2141
  call void @oat_array_bounds_check( i32 %len2142, i32 %bop2139 )
  %elt_ptr2143 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2140, i32 0, i32 1, i32 %bop2139
  %_lhs2144 = load i32* %elt_ptr2143
  %_lhs2145 = load i32* %j2134
  %array_dereferenced2146 = load { i32, [ 0 x i32 ] }** %numbers_slot2127
  %len_ptr2147 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2146, i32 0, i32 0
  %len2148 = load i32* %len_ptr2147
  call void @oat_array_bounds_check( i32 %len2148, i32 %_lhs2145 )
  %elt_ptr2149 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2146, i32 0, i32 1, i32 %_lhs2145
  %_lhs2150 = load i32* %elt_ptr2149
  %bop2151 = icmp sgt i32 %_lhs2144, %_lhs2150
  br i1 %bop2151, label %__then800, label %__else799

__fresh804:
  br label %__then800

__then800:
  %_lhs2152 = load i32* %j2134
  %bop2153 = sub i32 %_lhs2152, 1
  %array_dereferenced2154 = load { i32, [ 0 x i32 ] }** %numbers_slot2127
  %len_ptr2155 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2154, i32 0, i32 0
  %len2156 = load i32* %len_ptr2155
  call void @oat_array_bounds_check( i32 %len2156, i32 %bop2153 )
  %elt_ptr2157 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2154, i32 0, i32 1, i32 %bop2153
  %_lhs2158 = load i32* %elt_ptr2157
  store i32 %_lhs2158, i32* %temp2128
  %_lhs2159 = load i32* %j2134
  %bop2160 = sub i32 %_lhs2159, 1
  %array_dereferenced2161 = load { i32, [ 0 x i32 ] }** %numbers_slot2127
  %len_ptr2162 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2161, i32 0, i32 0
  %len2163 = load i32* %len_ptr2162
  call void @oat_array_bounds_check( i32 %len2163, i32 %bop2160 )
  %elt_ptr2164 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2161, i32 0, i32 1, i32 %bop2160
  %_lhs2165 = load i32* %j2134
  %array_dereferenced2166 = load { i32, [ 0 x i32 ] }** %numbers_slot2127
  %len_ptr2167 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2166, i32 0, i32 0
  %len2168 = load i32* %len_ptr2167
  call void @oat_array_bounds_check( i32 %len2168, i32 %_lhs2165 )
  %elt_ptr2169 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2166, i32 0, i32 1, i32 %_lhs2165
  %_lhs2170 = load i32* %elt_ptr2169
  store i32 %_lhs2170, i32* %elt_ptr2164
  %_lhs2171 = load i32* %j2134
  %array_dereferenced2172 = load { i32, [ 0 x i32 ] }** %numbers_slot2127
  %len_ptr2173 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2172, i32 0, i32 0
  %len2174 = load i32* %len_ptr2173
  call void @oat_array_bounds_check( i32 %len2174, i32 %_lhs2171 )
  %elt_ptr2175 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2172, i32 0, i32 1, i32 %_lhs2171
  %_lhs2176 = load i32* %temp2128
  store i32 %_lhs2176, i32* %elt_ptr2175
  br label %__merge798

__fresh805:
  br label %__else799

__else799:
  br label %__merge798

__merge798:
  %_lhs2177 = load i32* %j2134
  %bop2178 = add i32 %_lhs2177, 1
  store i32 %bop2178, i32* %j2134
  br label %__cond797

__fresh806:
  br label %__post795

__post795:
  %_lhs2179 = load i32* %i2131
  %bop2180 = sub i32 %_lhs2179, 1
  store i32 %bop2180, i32* %i2131
  br label %__cond794

__fresh807:
  br label %__post792

__post792:
  ret void
}


