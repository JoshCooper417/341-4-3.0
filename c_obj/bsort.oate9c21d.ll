declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@_oat_string2197.str. = private unnamed_addr constant [ 2 x i8 ] c " \00", align 4
@_oat_string2197 = global i8* getelementptr inbounds ([ 2 x i8 ]* @_oat_string2197.str., i32 0, i32 0), align 4
define void @oat_init (){

__fresh811:
  ret void
}


define i32 @program (i32 %argc2152, { i32, [ 0 x i8* ] }* %argv2150){

__fresh806:
  %argc_slot2153 = alloca i32
  store i32 %argc2152, i32* %argc_slot2153
  %argv_slot2151 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv2150, { i32, [ 0 x i8* ] }** %argv_slot2151
  %array_ptr2155 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 8 )
  %array2156 = bitcast { i32, [ 0 x i32 ] }* %array_ptr2155 to { i32, [ 0 x i32 ] }* 
  %i2160 = alloca i32
  store i32 1, i32* %i2160
  %i2154 = load i32* %i2160
  br label %__check804

__fresh807:
  br label %__check804

__check804:
  br label %__end803

__fresh808:
  %cmp_op2158 = icmp slt i32 %i2154, 8
  br i32 %cmp_op2158, label %__body805, label %__end803

__fresh809:
  br label %__body805

__body805:
  %elem_ptr2157 = getelementptr { i32, [ 0 x i32 ] }* %array2156, i32 0, i32 1, i32 %i2154
  store i32 0, i32* %elem_ptr2157
  %index_op2159 = add i32 %i2154, 1
  br label %__check804

__fresh810:
  br label %__end803

__end803:
  %a2162 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %array2156, { i32, [ 0 x i32 ] }** %a2162
  %array_dereferenced2163 = load { i32, [ 0 x i32 ] }** %a2162
  %len_ptr2164 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2163, i32 0, i32 0
  %len2165 = load i32* %len_ptr2164
  call void @oat_array_bounds_check( i32 %len2165, i32 0 )
  %elt_ptr2166 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2163, i32 0, i32 1, i32 0
  store i32 121, i32* %elt_ptr2166
  %array_dereferenced2167 = load { i32, [ 0 x i32 ] }** %a2162
  %len_ptr2168 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2167, i32 0, i32 0
  %len2169 = load i32* %len_ptr2168
  call void @oat_array_bounds_check( i32 %len2169, i32 1 )
  %elt_ptr2170 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2167, i32 0, i32 1, i32 1
  store i32 125, i32* %elt_ptr2170
  %array_dereferenced2171 = load { i32, [ 0 x i32 ] }** %a2162
  %len_ptr2172 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2171, i32 0, i32 0
  %len2173 = load i32* %len_ptr2172
  call void @oat_array_bounds_check( i32 %len2173, i32 2 )
  %elt_ptr2174 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2171, i32 0, i32 1, i32 2
  store i32 120, i32* %elt_ptr2174
  %array_dereferenced2175 = load { i32, [ 0 x i32 ] }** %a2162
  %len_ptr2176 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2175, i32 0, i32 0
  %len2177 = load i32* %len_ptr2176
  call void @oat_array_bounds_check( i32 %len2177, i32 3 )
  %elt_ptr2178 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2175, i32 0, i32 1, i32 3
  store i32 111, i32* %elt_ptr2178
  %array_dereferenced2179 = load { i32, [ 0 x i32 ] }** %a2162
  %len_ptr2180 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2179, i32 0, i32 0
  %len2181 = load i32* %len_ptr2180
  call void @oat_array_bounds_check( i32 %len2181, i32 4 )
  %elt_ptr2182 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2179, i32 0, i32 1, i32 4
  store i32 116, i32* %elt_ptr2182
  %array_dereferenced2183 = load { i32, [ 0 x i32 ] }** %a2162
  %len_ptr2184 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2183, i32 0, i32 0
  %len2185 = load i32* %len_ptr2184
  call void @oat_array_bounds_check( i32 %len2185, i32 5 )
  %elt_ptr2186 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2183, i32 0, i32 1, i32 5
  store i32 110, i32* %elt_ptr2186
  %array_dereferenced2187 = load { i32, [ 0 x i32 ] }** %a2162
  %len_ptr2188 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2187, i32 0, i32 0
  %len2189 = load i32* %len_ptr2188
  call void @oat_array_bounds_check( i32 %len2189, i32 6 )
  %elt_ptr2190 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2187, i32 0, i32 1, i32 6
  store i32 117, i32* %elt_ptr2190
  %array_dereferenced2191 = load { i32, [ 0 x i32 ] }** %a2162
  %len_ptr2192 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2191, i32 0, i32 0
  %len2193 = load i32* %len_ptr2192
  call void @oat_array_bounds_check( i32 %len2193, i32 7 )
  %elt_ptr2194 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2191, i32 0, i32 1, i32 7
  store i32 119, i32* %elt_ptr2194
  %_lhs2195 = load { i32, [ 0 x i32 ] }** %a2162
  %ret2196 = call i8* @string_of_array ( { i32, [ 0 x i32 ] }* %_lhs2195 )
  call void @print_string( i8* %ret2196 )
  %strval2198 = load i8** @_oat_string2197
  call void @print_string( i8* %strval2198 )
  %_lhs2200 = load { i32, [ 0 x i32 ] }** %a2162
  %len_ptr2201 = getelementptr { i32, [ 0 x i32 ] }* %_lhs2200, i32 0
  %len2202 = load i32* %len_ptr2201
  %_lhs2199 = load { i32, [ 0 x i32 ] }** %a2162
  call void @bubble_sort( { i32, [ 0 x i32 ] }* %_lhs2199, i32 %len2202 )
  %_lhs2203 = load { i32, [ 0 x i32 ] }** %a2162
  %ret2204 = call i8* @string_of_array ( { i32, [ 0 x i32 ] }* %_lhs2203 )
  call void @print_string( i8* %ret2204 )
  %unop2205 = sub i32 0, 1
  ret i32 %unop2205
}


define void @bubble_sort ({ i32, [ 0 x i32 ] }* %numbers2095, i32 %array_size2093){

__fresh796:
  %numbers_slot2096 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %numbers2095, { i32, [ 0 x i32 ] }** %numbers_slot2096
  %array_size_slot2094 = alloca i32
  store i32 %array_size2093, i32* %array_size_slot2094
  %temp2097 = alloca i32
  store i32 0, i32* %temp2097
  %_lhs2098 = load i32* %array_size_slot2094
  %bop2099 = sub i32 %_lhs2098, 1
  %i2100 = alloca i32
  store i32 %bop2099, i32* %i2100
  br label %__cond789

__cond789:
  %_lhs2101 = load i32* %i2100
  %bop2102 = icmp sgt i32 %_lhs2101, 0
  br i1 %bop2102, label %__body788, label %__post787

__fresh797:
  br label %__body788

__body788:
  %j2103 = alloca i32
  store i32 1, i32* %j2103
  br label %__cond792

__cond792:
  %_lhs2104 = load i32* %j2103
  %_lhs2105 = load i32* %i2100
  %bop2106 = icmp sle i32 %_lhs2104, %_lhs2105
  br i1 %bop2106, label %__body791, label %__post790

__fresh798:
  br label %__body791

__body791:
  %_lhs2107 = load i32* %j2103
  %bop2108 = sub i32 %_lhs2107, 1
  %array_dereferenced2109 = load { i32, [ 0 x i32 ] }** %numbers_slot2096
  %len_ptr2110 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2109, i32 0, i32 0
  %len2111 = load i32* %len_ptr2110
  call void @oat_array_bounds_check( i32 %len2111, i32 %bop2108 )
  %elt_ptr2112 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2109, i32 0, i32 1, i32 %bop2108
  %_lhs2113 = load i32* %elt_ptr2112
  %_lhs2114 = load i32* %j2103
  %array_dereferenced2115 = load { i32, [ 0 x i32 ] }** %numbers_slot2096
  %len_ptr2116 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2115, i32 0, i32 0
  %len2117 = load i32* %len_ptr2116
  call void @oat_array_bounds_check( i32 %len2117, i32 %_lhs2114 )
  %elt_ptr2118 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2115, i32 0, i32 1, i32 %_lhs2114
  %_lhs2119 = load i32* %elt_ptr2118
  %bop2120 = icmp sgt i32 %_lhs2113, %_lhs2119
  br i1 %bop2120, label %__then795, label %__else794

__fresh799:
  br label %__then795

__then795:
  %_lhs2121 = load i32* %j2103
  %bop2122 = sub i32 %_lhs2121, 1
  %array_dereferenced2123 = load { i32, [ 0 x i32 ] }** %numbers_slot2096
  %len_ptr2124 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2123, i32 0, i32 0
  %len2125 = load i32* %len_ptr2124
  call void @oat_array_bounds_check( i32 %len2125, i32 %bop2122 )
  %elt_ptr2126 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2123, i32 0, i32 1, i32 %bop2122
  %_lhs2127 = load i32* %elt_ptr2126
  store i32 %_lhs2127, i32* %temp2097
  %_lhs2128 = load i32* %j2103
  %bop2129 = sub i32 %_lhs2128, 1
  %array_dereferenced2130 = load { i32, [ 0 x i32 ] }** %numbers_slot2096
  %len_ptr2131 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2130, i32 0, i32 0
  %len2132 = load i32* %len_ptr2131
  call void @oat_array_bounds_check( i32 %len2132, i32 %bop2129 )
  %elt_ptr2133 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2130, i32 0, i32 1, i32 %bop2129
  %_lhs2134 = load i32* %j2103
  %array_dereferenced2135 = load { i32, [ 0 x i32 ] }** %numbers_slot2096
  %len_ptr2136 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2135, i32 0, i32 0
  %len2137 = load i32* %len_ptr2136
  call void @oat_array_bounds_check( i32 %len2137, i32 %_lhs2134 )
  %elt_ptr2138 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2135, i32 0, i32 1, i32 %_lhs2134
  %_lhs2139 = load i32* %elt_ptr2138
  store i32 %_lhs2139, i32* %elt_ptr2133
  %_lhs2140 = load i32* %j2103
  %array_dereferenced2141 = load { i32, [ 0 x i32 ] }** %numbers_slot2096
  %len_ptr2142 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2141, i32 0, i32 0
  %len2143 = load i32* %len_ptr2142
  call void @oat_array_bounds_check( i32 %len2143, i32 %_lhs2140 )
  %elt_ptr2144 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2141, i32 0, i32 1, i32 %_lhs2140
  %_lhs2145 = load i32* %temp2097
  store i32 %_lhs2145, i32* %elt_ptr2144
  br label %__merge793

__fresh800:
  br label %__else794

__else794:
  br label %__merge793

__merge793:
  %_lhs2146 = load i32* %j2103
  %bop2147 = add i32 %_lhs2146, 1
  store i32 %bop2147, i32* %j2103
  br label %__cond792

__fresh801:
  br label %__post790

__post790:
  %_lhs2148 = load i32* %i2100
  %bop2149 = sub i32 %_lhs2148, 1
  store i32 %bop2149, i32* %i2100
  br label %__cond789

__fresh802:
  br label %__post787

__post787:
  ret void
}


