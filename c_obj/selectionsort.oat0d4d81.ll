declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
define void @oat_init (){

__fresh691:
  ret void
}


define i32 @program (i32 %argc3204, { i32, [ 0 x i8* ] }* %argv3202){

__fresh688:
  %argc_slot3205 = alloca i32
  store i32 %argc3204, i32* %argc_slot3205
  %argv_slot3203 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv3202, { i32, [ 0 x i8* ] }** %argv_slot3203
  %array_ptr3206 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 8 )
  %array3207 = bitcast { i32, [ 0 x i32 ] }* %array_ptr3206 to { i32, [ 0 x i32 ] }* 
  %index_ptr3208 = getelementptr { i32, [ 0 x i32 ] }* %array3207, i32 0, i32 1, i32 0
  store i32 5, i32* %index_ptr3208
  %index_ptr3209 = getelementptr { i32, [ 0 x i32 ] }* %array3207, i32 0, i32 1, i32 1
  store i32 200, i32* %index_ptr3209
  %index_ptr3210 = getelementptr { i32, [ 0 x i32 ] }* %array3207, i32 0, i32 1, i32 2
  store i32 1, i32* %index_ptr3210
  %index_ptr3211 = getelementptr { i32, [ 0 x i32 ] }* %array3207, i32 0, i32 1, i32 3
  store i32 65, i32* %index_ptr3211
  %index_ptr3212 = getelementptr { i32, [ 0 x i32 ] }* %array3207, i32 0, i32 1, i32 4
  store i32 30, i32* %index_ptr3212
  %index_ptr3213 = getelementptr { i32, [ 0 x i32 ] }* %array3207, i32 0, i32 1, i32 5
  store i32 99, i32* %index_ptr3213
  %index_ptr3214 = getelementptr { i32, [ 0 x i32 ] }* %array3207, i32 0, i32 1, i32 6
  store i32 2, i32* %index_ptr3214
  %index_ptr3215 = getelementptr { i32, [ 0 x i32 ] }* %array3207, i32 0, i32 1, i32 7
  store i32 0, i32* %index_ptr3215
  %ar3216 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %array3207, { i32, [ 0 x i32 ] }** %ar3216
  %_lhs3217 = load { i32, [ 0 x i32 ] }** %ar3216
  call void @selectionsort( { i32, [ 0 x i32 ] }* %_lhs3217, i32 8 )
  %i3218 = alloca i32
  store i32 0, i32* %i3218
  br label %__cond687

__cond687:
  %_lhs3219 = load i32* %i3218
  %bop3220 = icmp slt i32 %_lhs3219, 8
  br i1 %bop3220, label %__body686, label %__post685

__fresh689:
  br label %__body686

__body686:
  %_lhs3221 = load i32* %i3218
  %len_ptr3222 = getelementptr { i32, [ 0 x i32 ] }** %ar3216, i32 0, i32 0
  %len3223 = load i32* %len_ptr3222
  call void @oat_array_bounds_check( i32 %len3223, i32 %_lhs3221 )
  %array_dereferenced3224 = load { i32, [ 0 x i32 ] }** %ar3216
  %elt_ptr3225 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced3224, i32 0, i32 1, i32 %_lhs3221
  %_lhs3226 = load i32* %elt_ptr3225
  call void @print_int( i32 %_lhs3226 )
  %_lhs3227 = load i32* %i3218
  %bop3228 = add i32 %_lhs3227, 1
  store i32 %bop3228, i32* %i3218
  br label %__cond687

__fresh690:
  br label %__post685

__post685:
  ret i32 0
}


define void @selectionsort ({ i32, [ 0 x i32 ] }* %a3165, i32 %s3163){

__fresh682:
  %a_slot3166 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %a3165, { i32, [ 0 x i32 ] }** %a_slot3166
  %s_slot3164 = alloca i32
  store i32 %s3163, i32* %s_slot3164
  %t3167 = alloca i32
  store i32 0, i32* %t3167
  %mi3168 = alloca i32
  store i32 0, i32* %mi3168
  %i3169 = alloca i32
  store i32 0, i32* %i3169
  br label %__cond681

__cond681:
  %_lhs3170 = load i32* %i3169
  %_lhs3171 = load i32* %s_slot3164
  %bop3172 = icmp slt i32 %_lhs3170, %_lhs3171
  br i1 %bop3172, label %__body680, label %__post679

__fresh683:
  br label %__body680

__body680:
  %_lhs3175 = load i32* %s_slot3164
  %_lhs3174 = load i32* %i3169
  %_lhs3173 = load { i32, [ 0 x i32 ] }** %a_slot3166
  %ret3176 = call i32 @getminindex ( { i32, [ 0 x i32 ] }* %_lhs3173, i32 %_lhs3174, i32 %_lhs3175 )
  store i32 %ret3176, i32* %mi3168
  %_lhs3177 = load i32* %i3169
  %len_ptr3178 = getelementptr { i32, [ 0 x i32 ] }** %a_slot3166, i32 0, i32 0
  %len3179 = load i32* %len_ptr3178
  call void @oat_array_bounds_check( i32 %len3179, i32 %_lhs3177 )
  %array_dereferenced3180 = load { i32, [ 0 x i32 ] }** %a_slot3166
  %elt_ptr3181 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced3180, i32 0, i32 1, i32 %_lhs3177
  %_lhs3182 = load i32* %elt_ptr3181
  store i32 %_lhs3182, i32* %t3167
  %_lhs3183 = load i32* %i3169
  %len_ptr3184 = getelementptr { i32, [ 0 x i32 ] }** %a_slot3166, i32 0, i32 0
  %len3185 = load i32* %len_ptr3184
  call void @oat_array_bounds_check( i32 %len3185, i32 %_lhs3183 )
  %array_dereferenced3186 = load { i32, [ 0 x i32 ] }** %a_slot3166
  %elt_ptr3187 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced3186, i32 0, i32 1, i32 %_lhs3183
  %_lhs3188 = load i32* %mi3168
  %len_ptr3189 = getelementptr { i32, [ 0 x i32 ] }** %a_slot3166, i32 0, i32 0
  %len3190 = load i32* %len_ptr3189
  call void @oat_array_bounds_check( i32 %len3190, i32 %_lhs3188 )
  %array_dereferenced3191 = load { i32, [ 0 x i32 ] }** %a_slot3166
  %elt_ptr3192 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced3191, i32 0, i32 1, i32 %_lhs3188
  %_lhs3193 = load i32* %elt_ptr3192
  store i32 %_lhs3193, i32* %elt_ptr3187
  %_lhs3194 = load i32* %mi3168
  %len_ptr3195 = getelementptr { i32, [ 0 x i32 ] }** %a_slot3166, i32 0, i32 0
  %len3196 = load i32* %len_ptr3195
  call void @oat_array_bounds_check( i32 %len3196, i32 %_lhs3194 )
  %array_dereferenced3197 = load { i32, [ 0 x i32 ] }** %a_slot3166
  %elt_ptr3198 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced3197, i32 0, i32 1, i32 %_lhs3194
  %_lhs3199 = load i32* %t3167
  store i32 %_lhs3199, i32* %elt_ptr3198
  %_lhs3200 = load i32* %i3169
  %bop3201 = add i32 %_lhs3200, 1
  store i32 %bop3201, i32* %i3169
  br label %__cond681

__fresh684:
  br label %__post679

__post679:
  ret void
}


define i32 @getminindex ({ i32, [ 0 x i32 ] }* %a3129, i32 %s3127, i32 %b3125){

__fresh674:
  %a_slot3130 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %a3129, { i32, [ 0 x i32 ] }** %a_slot3130
  %s_slot3128 = alloca i32
  store i32 %s3127, i32* %s_slot3128
  %b_slot3126 = alloca i32
  store i32 %b3125, i32* %b_slot3126
  %_lhs3131 = load i32* %s_slot3128
  %i3132 = alloca i32
  store i32 %_lhs3131, i32* %i3132
  %_lhs3133 = load i32* %s_slot3128
  %len_ptr3134 = getelementptr { i32, [ 0 x i32 ] }** %a_slot3130, i32 0, i32 0
  %len3135 = load i32* %len_ptr3134
  call void @oat_array_bounds_check( i32 %len3135, i32 %_lhs3133 )
  %array_dereferenced3136 = load { i32, [ 0 x i32 ] }** %a_slot3130
  %elt_ptr3137 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced3136, i32 0, i32 1, i32 %_lhs3133
  %_lhs3138 = load i32* %elt_ptr3137
  %min3139 = alloca i32
  store i32 %_lhs3138, i32* %min3139
  %_lhs3140 = load i32* %s_slot3128
  %mi3141 = alloca i32
  store i32 %_lhs3140, i32* %mi3141
  br label %__cond670

__cond670:
  %_lhs3142 = load i32* %i3132
  %_lhs3143 = load i32* %b_slot3126
  %bop3144 = icmp slt i32 %_lhs3142, %_lhs3143
  br i1 %bop3144, label %__body669, label %__post668

__fresh675:
  br label %__body669

__body669:
  %_lhs3145 = load i32* %i3132
  %len_ptr3146 = getelementptr { i32, [ 0 x i32 ] }** %a_slot3130, i32 0, i32 0
  %len3147 = load i32* %len_ptr3146
  call void @oat_array_bounds_check( i32 %len3147, i32 %_lhs3145 )
  %array_dereferenced3148 = load { i32, [ 0 x i32 ] }** %a_slot3130
  %elt_ptr3149 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced3148, i32 0, i32 1, i32 %_lhs3145
  %_lhs3150 = load i32* %elt_ptr3149
  %_lhs3151 = load i32* %min3139
  %bop3152 = icmp slt i32 %_lhs3150, %_lhs3151
  br i1 %bop3152, label %__then673, label %__else672

__fresh676:
  br label %__then673

__then673:
  %_lhs3153 = load i32* %i3132
  %len_ptr3154 = getelementptr { i32, [ 0 x i32 ] }** %a_slot3130, i32 0, i32 0
  %len3155 = load i32* %len_ptr3154
  call void @oat_array_bounds_check( i32 %len3155, i32 %_lhs3153 )
  %array_dereferenced3156 = load { i32, [ 0 x i32 ] }** %a_slot3130
  %elt_ptr3157 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced3156, i32 0, i32 1, i32 %_lhs3153
  %_lhs3158 = load i32* %elt_ptr3157
  store i32 %_lhs3158, i32* %min3139
  %_lhs3159 = load i32* %i3132
  store i32 %_lhs3159, i32* %mi3141
  br label %__merge671

__fresh677:
  br label %__else672

__else672:
  br label %__merge671

__merge671:
  %_lhs3160 = load i32* %i3132
  %bop3161 = add i32 %_lhs3160, 1
  store i32 %bop3161, i32* %i3132
  br label %__cond670

__fresh678:
  br label %__post668

__post668:
  %_lhs3162 = load i32* %mi3141
  ret i32 %_lhs3162
}


