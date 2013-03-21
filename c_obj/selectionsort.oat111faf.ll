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


define i32 @program (i32 %argc3248, { i32, [ 0 x i8* ] }* %argv3246){

__fresh688:
  %argc_slot3249 = alloca i32
  store i32 %argc3248, i32* %argc_slot3249
  %argv_slot3247 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv3246, { i32, [ 0 x i8* ] }** %argv_slot3247
  %array_ptr3250 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 8 )
  %array3251 = bitcast { i32, [ 0 x i32 ] }* %array_ptr3250 to { i32, [ 0 x i32 ] }* 
  %index_ptr3252 = getelementptr { i32, [ 0 x i32 ] }* %array3251, i32 0, i32 1, i32 0
  store i32 5, i32* %index_ptr3252
  %index_ptr3253 = getelementptr { i32, [ 0 x i32 ] }* %array3251, i32 0, i32 1, i32 1
  store i32 200, i32* %index_ptr3253
  %index_ptr3254 = getelementptr { i32, [ 0 x i32 ] }* %array3251, i32 0, i32 1, i32 2
  store i32 1, i32* %index_ptr3254
  %index_ptr3255 = getelementptr { i32, [ 0 x i32 ] }* %array3251, i32 0, i32 1, i32 3
  store i32 65, i32* %index_ptr3255
  %index_ptr3256 = getelementptr { i32, [ 0 x i32 ] }* %array3251, i32 0, i32 1, i32 4
  store i32 30, i32* %index_ptr3256
  %index_ptr3257 = getelementptr { i32, [ 0 x i32 ] }* %array3251, i32 0, i32 1, i32 5
  store i32 99, i32* %index_ptr3257
  %index_ptr3258 = getelementptr { i32, [ 0 x i32 ] }* %array3251, i32 0, i32 1, i32 6
  store i32 2, i32* %index_ptr3258
  %index_ptr3259 = getelementptr { i32, [ 0 x i32 ] }* %array3251, i32 0, i32 1, i32 7
  store i32 0, i32* %index_ptr3259
  %ar3260 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %array3251, { i32, [ 0 x i32 ] }** %ar3260
  %_lhs3261 = load { i32, [ 0 x i32 ] }** %ar3260
  call void @selectionsort( { i32, [ 0 x i32 ] }* %_lhs3261, i32 8 )
  %i3262 = alloca i32
  store i32 0, i32* %i3262
  br label %__cond687

__cond687:
  %_lhs3263 = load i32* %i3262
  %bop3264 = icmp slt i32 %_lhs3263, 8
  br i1 %bop3264, label %__body686, label %__post685

__fresh689:
  br label %__body686

__body686:
  %_lhs3265 = load i32* %i3262
  %len_ptr3266 = getelementptr { i32, [ 0 x i32 ] }** %ar3260, i32 0, i32 0
  %len3267 = load i32* %len_ptr3266
  call void @oat_array_bounds_check( i32 %len3267, i32 %_lhs3265 )
  %array_dereferenced3268 = load { i32, [ 0 x i32 ] }** %ar3260
  %elt_ptr3269 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced3268, i32 0, i32 1, i32 %_lhs3265
  %_lhs3270 = load i32* %elt_ptr3269
  call void @print_int( i32 %_lhs3270 )
  %_lhs3271 = load i32* %i3262
  %bop3272 = add i32 %_lhs3271, 1
  store i32 %bop3272, i32* %i3262
  br label %__cond687

__fresh690:
  br label %__post685

__post685:
  ret i32 0
}


define void @selectionsort ({ i32, [ 0 x i32 ] }* %a3209, i32 %s3207){

__fresh682:
  %a_slot3210 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %a3209, { i32, [ 0 x i32 ] }** %a_slot3210
  %s_slot3208 = alloca i32
  store i32 %s3207, i32* %s_slot3208
  %t3211 = alloca i32
  store i32 0, i32* %t3211
  %mi3212 = alloca i32
  store i32 0, i32* %mi3212
  %i3213 = alloca i32
  store i32 0, i32* %i3213
  br label %__cond681

__cond681:
  %_lhs3214 = load i32* %i3213
  %_lhs3215 = load i32* %s_slot3208
  %bop3216 = icmp slt i32 %_lhs3214, %_lhs3215
  br i1 %bop3216, label %__body680, label %__post679

__fresh683:
  br label %__body680

__body680:
  %_lhs3219 = load i32* %s_slot3208
  %_lhs3218 = load i32* %i3213
  %_lhs3217 = load { i32, [ 0 x i32 ] }** %a_slot3210
  %ret3220 = call i32 @getminindex ( { i32, [ 0 x i32 ] }* %_lhs3217, i32 %_lhs3218, i32 %_lhs3219 )
  store i32 %ret3220, i32* %mi3212
  %_lhs3221 = load i32* %i3213
  %len_ptr3222 = getelementptr { i32, [ 0 x i32 ] }** %a_slot3210, i32 0, i32 0
  %len3223 = load i32* %len_ptr3222
  call void @oat_array_bounds_check( i32 %len3223, i32 %_lhs3221 )
  %array_dereferenced3224 = load { i32, [ 0 x i32 ] }** %a_slot3210
  %elt_ptr3225 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced3224, i32 0, i32 1, i32 %_lhs3221
  %_lhs3226 = load i32* %elt_ptr3225
  store i32 %_lhs3226, i32* %t3211
  %_lhs3227 = load i32* %i3213
  %len_ptr3228 = getelementptr { i32, [ 0 x i32 ] }** %a_slot3210, i32 0, i32 0
  %len3229 = load i32* %len_ptr3228
  call void @oat_array_bounds_check( i32 %len3229, i32 %_lhs3227 )
  %array_dereferenced3230 = load { i32, [ 0 x i32 ] }** %a_slot3210
  %elt_ptr3231 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced3230, i32 0, i32 1, i32 %_lhs3227
  %_lhs3232 = load i32* %mi3212
  %len_ptr3233 = getelementptr { i32, [ 0 x i32 ] }** %a_slot3210, i32 0, i32 0
  %len3234 = load i32* %len_ptr3233
  call void @oat_array_bounds_check( i32 %len3234, i32 %_lhs3232 )
  %array_dereferenced3235 = load { i32, [ 0 x i32 ] }** %a_slot3210
  %elt_ptr3236 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced3235, i32 0, i32 1, i32 %_lhs3232
  %_lhs3237 = load i32* %elt_ptr3236
  store i32 %_lhs3237, i32* %elt_ptr3231
  %_lhs3238 = load i32* %mi3212
  %len_ptr3239 = getelementptr { i32, [ 0 x i32 ] }** %a_slot3210, i32 0, i32 0
  %len3240 = load i32* %len_ptr3239
  call void @oat_array_bounds_check( i32 %len3240, i32 %_lhs3238 )
  %array_dereferenced3241 = load { i32, [ 0 x i32 ] }** %a_slot3210
  %elt_ptr3242 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced3241, i32 0, i32 1, i32 %_lhs3238
  %_lhs3243 = load i32* %t3211
  store i32 %_lhs3243, i32* %elt_ptr3242
  %_lhs3244 = load i32* %i3213
  %bop3245 = add i32 %_lhs3244, 1
  store i32 %bop3245, i32* %i3213
  br label %__cond681

__fresh684:
  br label %__post679

__post679:
  ret void
}


define i32 @getminindex ({ i32, [ 0 x i32 ] }* %a3173, i32 %s3171, i32 %b3169){

__fresh674:
  %a_slot3174 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %a3173, { i32, [ 0 x i32 ] }** %a_slot3174
  %s_slot3172 = alloca i32
  store i32 %s3171, i32* %s_slot3172
  %b_slot3170 = alloca i32
  store i32 %b3169, i32* %b_slot3170
  %_lhs3175 = load i32* %s_slot3172
  %i3176 = alloca i32
  store i32 %_lhs3175, i32* %i3176
  %_lhs3177 = load i32* %s_slot3172
  %len_ptr3178 = getelementptr { i32, [ 0 x i32 ] }** %a_slot3174, i32 0, i32 0
  %len3179 = load i32* %len_ptr3178
  call void @oat_array_bounds_check( i32 %len3179, i32 %_lhs3177 )
  %array_dereferenced3180 = load { i32, [ 0 x i32 ] }** %a_slot3174
  %elt_ptr3181 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced3180, i32 0, i32 1, i32 %_lhs3177
  %_lhs3182 = load i32* %elt_ptr3181
  %min3183 = alloca i32
  store i32 %_lhs3182, i32* %min3183
  %_lhs3184 = load i32* %s_slot3172
  %mi3185 = alloca i32
  store i32 %_lhs3184, i32* %mi3185
  br label %__cond670

__cond670:
  %_lhs3186 = load i32* %i3176
  %_lhs3187 = load i32* %b_slot3170
  %bop3188 = icmp slt i32 %_lhs3186, %_lhs3187
  br i1 %bop3188, label %__body669, label %__post668

__fresh675:
  br label %__body669

__body669:
  %_lhs3189 = load i32* %i3176
  %len_ptr3190 = getelementptr { i32, [ 0 x i32 ] }** %a_slot3174, i32 0, i32 0
  %len3191 = load i32* %len_ptr3190
  call void @oat_array_bounds_check( i32 %len3191, i32 %_lhs3189 )
  %array_dereferenced3192 = load { i32, [ 0 x i32 ] }** %a_slot3174
  %elt_ptr3193 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced3192, i32 0, i32 1, i32 %_lhs3189
  %_lhs3194 = load i32* %elt_ptr3193
  %_lhs3195 = load i32* %min3183
  %bop3196 = icmp slt i32 %_lhs3194, %_lhs3195
  br i1 %bop3196, label %__then673, label %__else672

__fresh676:
  br label %__then673

__then673:
  %_lhs3197 = load i32* %i3176
  %len_ptr3198 = getelementptr { i32, [ 0 x i32 ] }** %a_slot3174, i32 0, i32 0
  %len3199 = load i32* %len_ptr3198
  call void @oat_array_bounds_check( i32 %len3199, i32 %_lhs3197 )
  %array_dereferenced3200 = load { i32, [ 0 x i32 ] }** %a_slot3174
  %elt_ptr3201 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced3200, i32 0, i32 1, i32 %_lhs3197
  %_lhs3202 = load i32* %elt_ptr3201
  store i32 %_lhs3202, i32* %min3183
  %_lhs3203 = load i32* %i3176
  store i32 %_lhs3203, i32* %mi3185
  br label %__merge671

__fresh677:
  br label %__else672

__else672:
  br label %__merge671

__merge671:
  %_lhs3204 = load i32* %i3176
  %bop3205 = add i32 %_lhs3204, 1
  store i32 %bop3205, i32* %i3176
  br label %__cond670

__fresh678:
  br label %__post668

__post668:
  %_lhs3206 = load i32* %mi3185
  ret i32 %_lhs3206
}


