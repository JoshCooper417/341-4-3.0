declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@_oat_string3312.str. = private unnamed_addr constant [ 2 x i8 ] c "
\00", align 4
@_oat_string3312 = global i8* getelementptr inbounds ([ 2 x i8 ]* @_oat_string3312.str., i32 0, i32 0), align 4
@_oat_string3308.str. = private unnamed_addr constant [ 2 x i8 ] c " \00", align 4
@_oat_string3308 = global i8* getelementptr inbounds ([ 2 x i8 ]* @_oat_string3308.str., i32 0, i32 0), align 4
define void @oat_init (){

__fresh599:
  ret void
}


define void @prnNx4 ({ i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %ar3288, i32 %n3286){

__fresh594:
  %ar_slot3289 = alloca { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }*
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %ar3288, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %ar_slot3289
  %n_slot3287 = alloca i32
  store i32 %n3286, i32* %n_slot3287
  %i3290 = alloca i32
  store i32 0, i32* %i3290
  br label %__cond590

__cond590:
  %_lhs3291 = load i32* %i3290
  %_lhs3292 = load i32* %n_slot3287
  %bop3293 = icmp slt i32 %_lhs3291, %_lhs3292
  br i1 %bop3293, label %__body589, label %__post588

__fresh595:
  br label %__body589

__body589:
  %j3294 = alloca i32
  store i32 0, i32* %j3294
  br label %__cond593

__cond593:
  %_lhs3295 = load i32* %j3294
  %bop3296 = icmp slt i32 %_lhs3295, 4
  br i1 %bop3296, label %__body592, label %__post591

__fresh596:
  br label %__body592

__body592:
  %_lhs3297 = load i32* %j3294
  %_lhs3298 = load i32* %i3290
  %len_ptr3299 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %ar_slot3289, i32 0, i32 0
  %len3300 = load i32* %len_ptr3299
  call void @oat_array_bounds_check( i32 %len3300, i32 %_lhs3298 )
  %array_dereferenced3301 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %ar_slot3289
  %elt_ptr3302 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array_dereferenced3301, i32 0, i32 1, i32 %_lhs3298
  %len_ptr3303 = getelementptr { i32, [ 0 x i32 ] }** %elt_ptr3302, i32 0, i32 0
  %len3304 = load i32* %len_ptr3303
  call void @oat_array_bounds_check( i32 %len3304, i32 %_lhs3297 )
  %array_dereferenced3305 = load { i32, [ 0 x i32 ] }** %elt_ptr3302
  %elt_ptr3306 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced3305, i32 0, i32 1, i32 %_lhs3297
  %_lhs3307 = load i32* %elt_ptr3306
  call void @print_int( i32 %_lhs3307 )
  %strval3309 = load i8** @_oat_string3308
  call void @print_string( i8* %strval3309 )
  %_lhs3310 = load i32* %j3294
  %bop3311 = add i32 %_lhs3310, 1
  store i32 %bop3311, i32* %j3294
  br label %__cond593

__fresh597:
  br label %__post591

__post591:
  %strval3313 = load i8** @_oat_string3312
  call void @print_string( i8* %strval3313 )
  %_lhs3314 = load i32* %i3290
  %bop3315 = add i32 %_lhs3314, 1
  store i32 %bop3315, i32* %i3290
  br label %__cond590

__fresh598:
  br label %__post588

__post588:
  ret void
}


define i32 @dot3 ({ i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %a13252, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %a23250, i32 %row3248, i32 %col3246){

__fresh585:
  %a1_slot3253 = alloca { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }*
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %a13252, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a1_slot3253
  %a2_slot3251 = alloca { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }*
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %a23250, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a2_slot3251
  %row_slot3249 = alloca i32
  store i32 %row3248, i32* %row_slot3249
  %col_slot3247 = alloca i32
  store i32 %col3246, i32* %col_slot3247
  %sum3254 = alloca i32
  store i32 0, i32* %sum3254
  %k3255 = alloca i32
  store i32 0, i32* %k3255
  br label %__cond584

__cond584:
  %_lhs3256 = load i32* %k3255
  %bop3257 = icmp slt i32 %_lhs3256, 3
  br i1 %bop3257, label %__body583, label %__post582

__fresh586:
  br label %__body583

__body583:
  %_lhs3258 = load i32* %sum3254
  %_lhs3259 = load i32* %k3255
  %_lhs3260 = load i32* %row_slot3249
  %len_ptr3261 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a1_slot3253, i32 0, i32 0
  %len3262 = load i32* %len_ptr3261
  call void @oat_array_bounds_check( i32 %len3262, i32 %_lhs3260 )
  %array_dereferenced3263 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a1_slot3253
  %elt_ptr3264 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array_dereferenced3263, i32 0, i32 1, i32 %_lhs3260
  %len_ptr3265 = getelementptr { i32, [ 0 x i32 ] }** %elt_ptr3264, i32 0, i32 0
  %len3266 = load i32* %len_ptr3265
  call void @oat_array_bounds_check( i32 %len3266, i32 %_lhs3259 )
  %array_dereferenced3267 = load { i32, [ 0 x i32 ] }** %elt_ptr3264
  %elt_ptr3268 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced3267, i32 0, i32 1, i32 %_lhs3259
  %_lhs3269 = load i32* %elt_ptr3268
  %_lhs3270 = load i32* %col_slot3247
  %_lhs3271 = load i32* %k3255
  %len_ptr3272 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a2_slot3251, i32 0, i32 0
  %len3273 = load i32* %len_ptr3272
  call void @oat_array_bounds_check( i32 %len3273, i32 %_lhs3271 )
  %array_dereferenced3274 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a2_slot3251
  %elt_ptr3275 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array_dereferenced3274, i32 0, i32 1, i32 %_lhs3271
  %len_ptr3276 = getelementptr { i32, [ 0 x i32 ] }** %elt_ptr3275, i32 0, i32 0
  %len3277 = load i32* %len_ptr3276
  call void @oat_array_bounds_check( i32 %len3277, i32 %_lhs3270 )
  %array_dereferenced3278 = load { i32, [ 0 x i32 ] }** %elt_ptr3275
  %elt_ptr3279 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced3278, i32 0, i32 1, i32 %_lhs3270
  %_lhs3280 = load i32* %elt_ptr3279
  %bop3281 = mul i32 %_lhs3269, %_lhs3280
  %bop3282 = add i32 %_lhs3258, %bop3281
  store i32 %bop3282, i32* %sum3254
  %_lhs3283 = load i32* %k3255
  %bop3284 = add i32 %_lhs3283, 1
  store i32 %bop3284, i32* %k3255
  br label %__cond584

__fresh587:
  br label %__post582

__post582:
  %_lhs3285 = load i32* %sum3254
  ret i32 %_lhs3285
}


define void @matrix_MultAlt ({ i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %a13219, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %a23217, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %a33215){

__fresh577:
  %a1_slot3220 = alloca { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }*
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %a13219, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a1_slot3220
  %a2_slot3218 = alloca { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }*
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %a23217, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a2_slot3218
  %a3_slot3216 = alloca { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }*
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %a33215, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a3_slot3216
  %i3221 = alloca i32
  store i32 0, i32* %i3221
  br label %__cond573

__cond573:
  %_lhs3222 = load i32* %i3221
  %bop3223 = icmp slt i32 %_lhs3222, 2
  br i1 %bop3223, label %__body572, label %__post571

__fresh578:
  br label %__body572

__body572:
  %j3224 = alloca i32
  store i32 0, i32* %j3224
  br label %__cond576

__cond576:
  %_lhs3225 = load i32* %j3224
  %bop3226 = icmp slt i32 %_lhs3225, 4
  br i1 %bop3226, label %__body575, label %__post574

__fresh579:
  br label %__body575

__body575:
  %_lhs3227 = load i32* %j3224
  %_lhs3228 = load i32* %i3221
  %len_ptr3229 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a3_slot3216, i32 0, i32 0
  %len3230 = load i32* %len_ptr3229
  call void @oat_array_bounds_check( i32 %len3230, i32 %_lhs3228 )
  %array_dereferenced3231 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a3_slot3216
  %elt_ptr3232 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array_dereferenced3231, i32 0, i32 1, i32 %_lhs3228
  %len_ptr3233 = getelementptr { i32, [ 0 x i32 ] }** %elt_ptr3232, i32 0, i32 0
  %len3234 = load i32* %len_ptr3233
  call void @oat_array_bounds_check( i32 %len3234, i32 %_lhs3227 )
  %array_dereferenced3235 = load { i32, [ 0 x i32 ] }** %elt_ptr3232
  %elt_ptr3236 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced3235, i32 0, i32 1, i32 %_lhs3227
  %_lhs3240 = load i32* %j3224
  %_lhs3239 = load i32* %i3221
  %_lhs3238 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a2_slot3218
  %_lhs3237 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a1_slot3220
  %ret3241 = call i32 @dot3 ( { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %_lhs3237, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %_lhs3238, i32 %_lhs3239, i32 %_lhs3240 )
  store i32 %ret3241, i32* %elt_ptr3236
  %_lhs3242 = load i32* %j3224
  %bop3243 = add i32 %_lhs3242, 1
  store i32 %bop3243, i32* %j3224
  br label %__cond576

__fresh580:
  br label %__post574

__post574:
  %_lhs3244 = load i32* %i3221
  %bop3245 = add i32 %_lhs3244, 1
  store i32 %bop3245, i32* %i3221
  br label %__cond573

__fresh581:
  br label %__post571

__post571:
  ret void
}


define void @matrix_Mult ({ i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %a13153, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %a23151, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %a33149){

__fresh564:
  %a1_slot3154 = alloca { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }*
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %a13153, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a1_slot3154
  %a2_slot3152 = alloca { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }*
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %a23151, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a2_slot3152
  %a3_slot3150 = alloca { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }*
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %a33149, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a3_slot3150
  %i3155 = alloca i32
  store i32 0, i32* %i3155
  br label %__cond557

__cond557:
  %_lhs3156 = load i32* %i3155
  %bop3157 = icmp slt i32 %_lhs3156, 2
  br i1 %bop3157, label %__body556, label %__post555

__fresh565:
  br label %__body556

__body556:
  %j3158 = alloca i32
  store i32 0, i32* %j3158
  br label %__cond560

__cond560:
  %_lhs3159 = load i32* %j3158
  %bop3160 = icmp slt i32 %_lhs3159, 4
  br i1 %bop3160, label %__body559, label %__post558

__fresh566:
  br label %__body559

__body559:
  %k3161 = alloca i32
  store i32 0, i32* %k3161
  br label %__cond563

__cond563:
  %_lhs3162 = load i32* %k3161
  %bop3163 = icmp slt i32 %_lhs3162, 3
  br i1 %bop3163, label %__body562, label %__post561

__fresh567:
  br label %__body562

__body562:
  %_lhs3164 = load i32* %j3158
  %_lhs3165 = load i32* %i3155
  %len_ptr3166 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a3_slot3150, i32 0, i32 0
  %len3167 = load i32* %len_ptr3166
  call void @oat_array_bounds_check( i32 %len3167, i32 %_lhs3165 )
  %array_dereferenced3168 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a3_slot3150
  %elt_ptr3169 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array_dereferenced3168, i32 0, i32 1, i32 %_lhs3165
  %len_ptr3170 = getelementptr { i32, [ 0 x i32 ] }** %elt_ptr3169, i32 0, i32 0
  %len3171 = load i32* %len_ptr3170
  call void @oat_array_bounds_check( i32 %len3171, i32 %_lhs3164 )
  %array_dereferenced3172 = load { i32, [ 0 x i32 ] }** %elt_ptr3169
  %elt_ptr3173 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced3172, i32 0, i32 1, i32 %_lhs3164
  %_lhs3174 = load i32* %j3158
  %_lhs3175 = load i32* %i3155
  %len_ptr3176 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a3_slot3150, i32 0, i32 0
  %len3177 = load i32* %len_ptr3176
  call void @oat_array_bounds_check( i32 %len3177, i32 %_lhs3175 )
  %array_dereferenced3178 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a3_slot3150
  %elt_ptr3179 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array_dereferenced3178, i32 0, i32 1, i32 %_lhs3175
  %len_ptr3180 = getelementptr { i32, [ 0 x i32 ] }** %elt_ptr3179, i32 0, i32 0
  %len3181 = load i32* %len_ptr3180
  call void @oat_array_bounds_check( i32 %len3181, i32 %_lhs3174 )
  %array_dereferenced3182 = load { i32, [ 0 x i32 ] }** %elt_ptr3179
  %elt_ptr3183 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced3182, i32 0, i32 1, i32 %_lhs3174
  %_lhs3184 = load i32* %elt_ptr3183
  %_lhs3185 = load i32* %k3161
  %_lhs3186 = load i32* %i3155
  %len_ptr3187 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a1_slot3154, i32 0, i32 0
  %len3188 = load i32* %len_ptr3187
  call void @oat_array_bounds_check( i32 %len3188, i32 %_lhs3186 )
  %array_dereferenced3189 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a1_slot3154
  %elt_ptr3190 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array_dereferenced3189, i32 0, i32 1, i32 %_lhs3186
  %len_ptr3191 = getelementptr { i32, [ 0 x i32 ] }** %elt_ptr3190, i32 0, i32 0
  %len3192 = load i32* %len_ptr3191
  call void @oat_array_bounds_check( i32 %len3192, i32 %_lhs3185 )
  %array_dereferenced3193 = load { i32, [ 0 x i32 ] }** %elt_ptr3190
  %elt_ptr3194 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced3193, i32 0, i32 1, i32 %_lhs3185
  %_lhs3195 = load i32* %elt_ptr3194
  %_lhs3196 = load i32* %j3158
  %_lhs3197 = load i32* %k3161
  %len_ptr3198 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a2_slot3152, i32 0, i32 0
  %len3199 = load i32* %len_ptr3198
  call void @oat_array_bounds_check( i32 %len3199, i32 %_lhs3197 )
  %array_dereferenced3200 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a2_slot3152
  %elt_ptr3201 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array_dereferenced3200, i32 0, i32 1, i32 %_lhs3197
  %len_ptr3202 = getelementptr { i32, [ 0 x i32 ] }** %elt_ptr3201, i32 0, i32 0
  %len3203 = load i32* %len_ptr3202
  call void @oat_array_bounds_check( i32 %len3203, i32 %_lhs3196 )
  %array_dereferenced3204 = load { i32, [ 0 x i32 ] }** %elt_ptr3201
  %elt_ptr3205 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced3204, i32 0, i32 1, i32 %_lhs3196
  %_lhs3206 = load i32* %elt_ptr3205
  %bop3207 = mul i32 %_lhs3195, %_lhs3206
  %bop3208 = add i32 %_lhs3184, %bop3207
  store i32 %bop3208, i32* %elt_ptr3173
  %_lhs3209 = load i32* %k3161
  %bop3210 = add i32 %_lhs3209, 1
  store i32 %bop3210, i32* %k3161
  br label %__cond563

__fresh568:
  br label %__post561

__post561:
  %_lhs3211 = load i32* %j3158
  %bop3212 = add i32 %_lhs3211, 1
  store i32 %bop3212, i32* %j3158
  br label %__cond560

__fresh569:
  br label %__post558

__post558:
  %_lhs3213 = load i32* %i3155
  %bop3214 = add i32 %_lhs3213, 1
  store i32 %bop3214, i32* %i3155
  br label %__cond557

__fresh570:
  br label %__post555

__post555:
  ret void
}


define i32 @program (i32 %argc3083, { i32, [ 0 x i8* ] }* %argv3081){

__fresh554:
  %argc_slot3084 = alloca i32
  store i32 %argc3083, i32* %argc_slot3084
  %argv_slot3082 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv3081, { i32, [ 0 x i8* ] }** %argv_slot3082
  %array_ptr3085 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array3086 = bitcast { i32, [ 0 x i32 ] }* %array_ptr3085 to { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* 
  %array_ptr3087 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 3 )
  %array3088 = bitcast { i32, [ 0 x i32 ] }* %array_ptr3087 to { i32, [ 0 x i32 ] }* 
  %index_ptr3089 = getelementptr { i32, [ 0 x i32 ] }* %array3088, i32 0, i32 1, i32 0
  store i32 1, i32* %index_ptr3089
  %index_ptr3090 = getelementptr { i32, [ 0 x i32 ] }* %array3088, i32 0, i32 1, i32 1
  store i32 3, i32* %index_ptr3090
  %index_ptr3091 = getelementptr { i32, [ 0 x i32 ] }* %array3088, i32 0, i32 1, i32 2
  store i32 4, i32* %index_ptr3091
  %index_ptr3092 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array3086, i32 0, i32 1, i32 0
  store { i32, [ 0 x i32 ] }* %array3088, { i32, [ 0 x i32 ] }** %index_ptr3092
  %array_ptr3093 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 3 )
  %array3094 = bitcast { i32, [ 0 x i32 ] }* %array_ptr3093 to { i32, [ 0 x i32 ] }* 
  %index_ptr3095 = getelementptr { i32, [ 0 x i32 ] }* %array3094, i32 0, i32 1, i32 0
  store i32 2, i32* %index_ptr3095
  %index_ptr3096 = getelementptr { i32, [ 0 x i32 ] }* %array3094, i32 0, i32 1, i32 1
  store i32 0, i32* %index_ptr3096
  %index_ptr3097 = getelementptr { i32, [ 0 x i32 ] }* %array3094, i32 0, i32 1, i32 2
  store i32 1, i32* %index_ptr3097
  %index_ptr3098 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array3086, i32 0, i32 1, i32 1
  store { i32, [ 0 x i32 ] }* %array3094, { i32, [ 0 x i32 ] }** %index_ptr3098
  %a3099 = alloca { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }*
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array3086, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a3099
  %array_ptr3100 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 3 )
  %array3101 = bitcast { i32, [ 0 x i32 ] }* %array_ptr3100 to { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* 
  %array_ptr3102 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 4 )
  %array3103 = bitcast { i32, [ 0 x i32 ] }* %array_ptr3102 to { i32, [ 0 x i32 ] }* 
  %index_ptr3104 = getelementptr { i32, [ 0 x i32 ] }* %array3103, i32 0, i32 1, i32 0
  store i32 1, i32* %index_ptr3104
  %index_ptr3105 = getelementptr { i32, [ 0 x i32 ] }* %array3103, i32 0, i32 1, i32 1
  store i32 2, i32* %index_ptr3105
  %index_ptr3106 = getelementptr { i32, [ 0 x i32 ] }* %array3103, i32 0, i32 1, i32 2
  store i32 3, i32* %index_ptr3106
  %index_ptr3107 = getelementptr { i32, [ 0 x i32 ] }* %array3103, i32 0, i32 1, i32 3
  store i32 1, i32* %index_ptr3107
  %index_ptr3108 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array3101, i32 0, i32 1, i32 0
  store { i32, [ 0 x i32 ] }* %array3103, { i32, [ 0 x i32 ] }** %index_ptr3108
  %array_ptr3109 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 4 )
  %array3110 = bitcast { i32, [ 0 x i32 ] }* %array_ptr3109 to { i32, [ 0 x i32 ] }* 
  %index_ptr3111 = getelementptr { i32, [ 0 x i32 ] }* %array3110, i32 0, i32 1, i32 0
  store i32 2, i32* %index_ptr3111
  %index_ptr3112 = getelementptr { i32, [ 0 x i32 ] }* %array3110, i32 0, i32 1, i32 1
  store i32 2, i32* %index_ptr3112
  %index_ptr3113 = getelementptr { i32, [ 0 x i32 ] }* %array3110, i32 0, i32 1, i32 2
  store i32 2, i32* %index_ptr3113
  %index_ptr3114 = getelementptr { i32, [ 0 x i32 ] }* %array3110, i32 0, i32 1, i32 3
  store i32 2, i32* %index_ptr3114
  %index_ptr3115 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array3101, i32 0, i32 1, i32 1
  store { i32, [ 0 x i32 ] }* %array3110, { i32, [ 0 x i32 ] }** %index_ptr3115
  %array_ptr3116 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 4 )
  %array3117 = bitcast { i32, [ 0 x i32 ] }* %array_ptr3116 to { i32, [ 0 x i32 ] }* 
  %index_ptr3118 = getelementptr { i32, [ 0 x i32 ] }* %array3117, i32 0, i32 1, i32 0
  store i32 3, i32* %index_ptr3118
  %index_ptr3119 = getelementptr { i32, [ 0 x i32 ] }* %array3117, i32 0, i32 1, i32 1
  store i32 2, i32* %index_ptr3119
  %index_ptr3120 = getelementptr { i32, [ 0 x i32 ] }* %array3117, i32 0, i32 1, i32 2
  store i32 1, i32* %index_ptr3120
  %index_ptr3121 = getelementptr { i32, [ 0 x i32 ] }* %array3117, i32 0, i32 1, i32 3
  store i32 4, i32* %index_ptr3121
  %index_ptr3122 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array3101, i32 0, i32 1, i32 2
  store { i32, [ 0 x i32 ] }* %array3117, { i32, [ 0 x i32 ] }** %index_ptr3122
  %b3123 = alloca { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }*
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array3101, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %b3123
  %array_ptr3124 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array3125 = bitcast { i32, [ 0 x i32 ] }* %array_ptr3124 to { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* 
  %array_ptr3126 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 4 )
  %array3127 = bitcast { i32, [ 0 x i32 ] }* %array_ptr3126 to { i32, [ 0 x i32 ] }* 
  %index_ptr3128 = getelementptr { i32, [ 0 x i32 ] }* %array3127, i32 0, i32 1, i32 0
  store i32 0, i32* %index_ptr3128
  %index_ptr3129 = getelementptr { i32, [ 0 x i32 ] }* %array3127, i32 0, i32 1, i32 1
  store i32 0, i32* %index_ptr3129
  %index_ptr3130 = getelementptr { i32, [ 0 x i32 ] }* %array3127, i32 0, i32 1, i32 2
  store i32 0, i32* %index_ptr3130
  %index_ptr3131 = getelementptr { i32, [ 0 x i32 ] }* %array3127, i32 0, i32 1, i32 3
  store i32 0, i32* %index_ptr3131
  %index_ptr3132 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array3125, i32 0, i32 1, i32 0
  store { i32, [ 0 x i32 ] }* %array3127, { i32, [ 0 x i32 ] }** %index_ptr3132
  %array_ptr3133 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 4 )
  %array3134 = bitcast { i32, [ 0 x i32 ] }* %array_ptr3133 to { i32, [ 0 x i32 ] }* 
  %index_ptr3135 = getelementptr { i32, [ 0 x i32 ] }* %array3134, i32 0, i32 1, i32 0
  store i32 0, i32* %index_ptr3135
  %index_ptr3136 = getelementptr { i32, [ 0 x i32 ] }* %array3134, i32 0, i32 1, i32 1
  store i32 0, i32* %index_ptr3136
  %index_ptr3137 = getelementptr { i32, [ 0 x i32 ] }* %array3134, i32 0, i32 1, i32 2
  store i32 0, i32* %index_ptr3137
  %index_ptr3138 = getelementptr { i32, [ 0 x i32 ] }* %array3134, i32 0, i32 1, i32 3
  store i32 0, i32* %index_ptr3138
  %index_ptr3139 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array3125, i32 0, i32 1, i32 1
  store { i32, [ 0 x i32 ] }* %array3134, { i32, [ 0 x i32 ] }** %index_ptr3139
  %c3140 = alloca { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }*
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array3125, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %c3140
  %_lhs3143 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %c3140
  %_lhs3142 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %b3123
  %_lhs3141 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a3099
  call void @matrix_Mult( { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %_lhs3141, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %_lhs3142, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %_lhs3143 )
  %_lhs3144 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %c3140
  call void @prnNx4( { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %_lhs3144, i32 2 )
  %_lhs3147 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %c3140
  %_lhs3146 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %b3123
  %_lhs3145 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a3099
  call void @matrix_MultAlt( { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %_lhs3145, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %_lhs3146, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %_lhs3147 )
  %_lhs3148 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %c3140
  call void @prnNx4( { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %_lhs3148, i32 2 )
  ret i32 0
}


