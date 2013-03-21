declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@_oat_string3313.str. = private unnamed_addr constant [ 2 x i8 ] c "
\00", align 4
@_oat_string3313 = global i8* getelementptr inbounds ([ 2 x i8 ]* @_oat_string3313.str., i32 0, i32 0), align 4
@_oat_string3309.str. = private unnamed_addr constant [ 2 x i8 ] c " \00", align 4
@_oat_string3309 = global i8* getelementptr inbounds ([ 2 x i8 ]* @_oat_string3309.str., i32 0, i32 0), align 4
define void @oat_init (){

__fresh661:
  ret void
}


define void @prnNx4 ({ i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %ar3289, i32 %n3287){

__fresh656:
  %ar_slot3290 = alloca { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }*
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %ar3289, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %ar_slot3290
  %n_slot3288 = alloca i32
  store i32 %n3287, i32* %n_slot3288
  %i3291 = alloca i32
  store i32 0, i32* %i3291
  br label %__cond652

__cond652:
  %_lhs3292 = load i32* %i3291
  %_lhs3293 = load i32* %n_slot3288
  %bop3294 = icmp slt i32 %_lhs3292, %_lhs3293
  br i1 %bop3294, label %__body651, label %__post650

__fresh657:
  br label %__body651

__body651:
  %j3295 = alloca i32
  store i32 0, i32* %j3295
  br label %__cond655

__cond655:
  %_lhs3296 = load i32* %j3295
  %bop3297 = icmp slt i32 %_lhs3296, 4
  br i1 %bop3297, label %__body654, label %__post653

__fresh658:
  br label %__body654

__body654:
  %_lhs3298 = load i32* %j3295
  %_lhs3299 = load i32* %i3291
  %len_ptr3300 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %ar_slot3290, i32 0, i32 0
  %len3301 = load i32* %len_ptr3300
  call void @oat_array_bounds_check( i32 %len3301, i32 %_lhs3299 )
  %array_dereferenced3302 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %ar_slot3290
  %elt_ptr3303 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array_dereferenced3302, i32 0, i32 1, i32 %_lhs3299
  %len_ptr3304 = getelementptr { i32, [ 0 x i32 ] }** %elt_ptr3303, i32 0, i32 0
  %len3305 = load i32* %len_ptr3304
  call void @oat_array_bounds_check( i32 %len3305, i32 %_lhs3298 )
  %array_dereferenced3306 = load { i32, [ 0 x i32 ] }** %elt_ptr3303
  %elt_ptr3307 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced3306, i32 0, i32 1, i32 %_lhs3298
  %_lhs3308 = load i32* %elt_ptr3307
  call void @print_int( i32 %_lhs3308 )
  %strval3310 = load i8** @_oat_string3309
  call void @print_string( i8* %strval3310 )
  %_lhs3311 = load i32* %j3295
  %bop3312 = add i32 %_lhs3311, 1
  store i32 %bop3312, i32* %j3295
  br label %__cond655

__fresh659:
  br label %__post653

__post653:
  %strval3314 = load i8** @_oat_string3313
  call void @print_string( i8* %strval3314 )
  %_lhs3315 = load i32* %i3291
  %bop3316 = add i32 %_lhs3315, 1
  store i32 %bop3316, i32* %i3291
  br label %__cond652

__fresh660:
  br label %__post650

__post650:
  ret void
}


define i32 @dot3 ({ i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %a13253, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %a23251, i32 %row3249, i32 %col3247){

__fresh647:
  %a1_slot3254 = alloca { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }*
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %a13253, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a1_slot3254
  %a2_slot3252 = alloca { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }*
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %a23251, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a2_slot3252
  %row_slot3250 = alloca i32
  store i32 %row3249, i32* %row_slot3250
  %col_slot3248 = alloca i32
  store i32 %col3247, i32* %col_slot3248
  %sum3255 = alloca i32
  store i32 0, i32* %sum3255
  %k3256 = alloca i32
  store i32 0, i32* %k3256
  br label %__cond646

__cond646:
  %_lhs3257 = load i32* %k3256
  %bop3258 = icmp slt i32 %_lhs3257, 3
  br i1 %bop3258, label %__body645, label %__post644

__fresh648:
  br label %__body645

__body645:
  %_lhs3259 = load i32* %sum3255
  %_lhs3260 = load i32* %k3256
  %_lhs3261 = load i32* %row_slot3250
  %len_ptr3262 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a1_slot3254, i32 0, i32 0
  %len3263 = load i32* %len_ptr3262
  call void @oat_array_bounds_check( i32 %len3263, i32 %_lhs3261 )
  %array_dereferenced3264 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a1_slot3254
  %elt_ptr3265 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array_dereferenced3264, i32 0, i32 1, i32 %_lhs3261
  %len_ptr3266 = getelementptr { i32, [ 0 x i32 ] }** %elt_ptr3265, i32 0, i32 0
  %len3267 = load i32* %len_ptr3266
  call void @oat_array_bounds_check( i32 %len3267, i32 %_lhs3260 )
  %array_dereferenced3268 = load { i32, [ 0 x i32 ] }** %elt_ptr3265
  %elt_ptr3269 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced3268, i32 0, i32 1, i32 %_lhs3260
  %_lhs3270 = load i32* %elt_ptr3269
  %_lhs3271 = load i32* %col_slot3248
  %_lhs3272 = load i32* %k3256
  %len_ptr3273 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a2_slot3252, i32 0, i32 0
  %len3274 = load i32* %len_ptr3273
  call void @oat_array_bounds_check( i32 %len3274, i32 %_lhs3272 )
  %array_dereferenced3275 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a2_slot3252
  %elt_ptr3276 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array_dereferenced3275, i32 0, i32 1, i32 %_lhs3272
  %len_ptr3277 = getelementptr { i32, [ 0 x i32 ] }** %elt_ptr3276, i32 0, i32 0
  %len3278 = load i32* %len_ptr3277
  call void @oat_array_bounds_check( i32 %len3278, i32 %_lhs3271 )
  %array_dereferenced3279 = load { i32, [ 0 x i32 ] }** %elt_ptr3276
  %elt_ptr3280 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced3279, i32 0, i32 1, i32 %_lhs3271
  %_lhs3281 = load i32* %elt_ptr3280
  %bop3282 = mul i32 %_lhs3270, %_lhs3281
  %bop3283 = add i32 %_lhs3259, %bop3282
  store i32 %bop3283, i32* %sum3255
  %_lhs3284 = load i32* %k3256
  %bop3285 = add i32 %_lhs3284, 1
  store i32 %bop3285, i32* %k3256
  br label %__cond646

__fresh649:
  br label %__post644

__post644:
  %_lhs3286 = load i32* %sum3255
  ret i32 %_lhs3286
}


define void @matrix_MultAlt ({ i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %a13220, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %a23218, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %a33216){

__fresh639:
  %a1_slot3221 = alloca { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }*
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %a13220, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a1_slot3221
  %a2_slot3219 = alloca { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }*
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %a23218, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a2_slot3219
  %a3_slot3217 = alloca { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }*
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %a33216, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a3_slot3217
  %i3222 = alloca i32
  store i32 0, i32* %i3222
  br label %__cond635

__cond635:
  %_lhs3223 = load i32* %i3222
  %bop3224 = icmp slt i32 %_lhs3223, 2
  br i1 %bop3224, label %__body634, label %__post633

__fresh640:
  br label %__body634

__body634:
  %j3225 = alloca i32
  store i32 0, i32* %j3225
  br label %__cond638

__cond638:
  %_lhs3226 = load i32* %j3225
  %bop3227 = icmp slt i32 %_lhs3226, 4
  br i1 %bop3227, label %__body637, label %__post636

__fresh641:
  br label %__body637

__body637:
  %_lhs3228 = load i32* %j3225
  %_lhs3229 = load i32* %i3222
  %len_ptr3230 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a3_slot3217, i32 0, i32 0
  %len3231 = load i32* %len_ptr3230
  call void @oat_array_bounds_check( i32 %len3231, i32 %_lhs3229 )
  %array_dereferenced3232 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a3_slot3217
  %elt_ptr3233 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array_dereferenced3232, i32 0, i32 1, i32 %_lhs3229
  %len_ptr3234 = getelementptr { i32, [ 0 x i32 ] }** %elt_ptr3233, i32 0, i32 0
  %len3235 = load i32* %len_ptr3234
  call void @oat_array_bounds_check( i32 %len3235, i32 %_lhs3228 )
  %array_dereferenced3236 = load { i32, [ 0 x i32 ] }** %elt_ptr3233
  %elt_ptr3237 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced3236, i32 0, i32 1, i32 %_lhs3228
  %_lhs3241 = load i32* %j3225
  %_lhs3240 = load i32* %i3222
  %_lhs3239 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a2_slot3219
  %_lhs3238 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a1_slot3221
  %ret3242 = call i32 @dot3 ( { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %_lhs3238, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %_lhs3239, i32 %_lhs3240, i32 %_lhs3241 )
  store i32 %ret3242, i32* %elt_ptr3237
  %_lhs3243 = load i32* %j3225
  %bop3244 = add i32 %_lhs3243, 1
  store i32 %bop3244, i32* %j3225
  br label %__cond638

__fresh642:
  br label %__post636

__post636:
  %_lhs3245 = load i32* %i3222
  %bop3246 = add i32 %_lhs3245, 1
  store i32 %bop3246, i32* %i3222
  br label %__cond635

__fresh643:
  br label %__post633

__post633:
  ret void
}


define void @matrix_Mult ({ i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %a13154, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %a23152, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %a33150){

__fresh626:
  %a1_slot3155 = alloca { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }*
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %a13154, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a1_slot3155
  %a2_slot3153 = alloca { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }*
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %a23152, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a2_slot3153
  %a3_slot3151 = alloca { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }*
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %a33150, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a3_slot3151
  %i3156 = alloca i32
  store i32 0, i32* %i3156
  br label %__cond619

__cond619:
  %_lhs3157 = load i32* %i3156
  %bop3158 = icmp slt i32 %_lhs3157, 2
  br i1 %bop3158, label %__body618, label %__post617

__fresh627:
  br label %__body618

__body618:
  %j3159 = alloca i32
  store i32 0, i32* %j3159
  br label %__cond622

__cond622:
  %_lhs3160 = load i32* %j3159
  %bop3161 = icmp slt i32 %_lhs3160, 4
  br i1 %bop3161, label %__body621, label %__post620

__fresh628:
  br label %__body621

__body621:
  %k3162 = alloca i32
  store i32 0, i32* %k3162
  br label %__cond625

__cond625:
  %_lhs3163 = load i32* %k3162
  %bop3164 = icmp slt i32 %_lhs3163, 3
  br i1 %bop3164, label %__body624, label %__post623

__fresh629:
  br label %__body624

__body624:
  %_lhs3165 = load i32* %j3159
  %_lhs3166 = load i32* %i3156
  %len_ptr3167 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a3_slot3151, i32 0, i32 0
  %len3168 = load i32* %len_ptr3167
  call void @oat_array_bounds_check( i32 %len3168, i32 %_lhs3166 )
  %array_dereferenced3169 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a3_slot3151
  %elt_ptr3170 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array_dereferenced3169, i32 0, i32 1, i32 %_lhs3166
  %len_ptr3171 = getelementptr { i32, [ 0 x i32 ] }** %elt_ptr3170, i32 0, i32 0
  %len3172 = load i32* %len_ptr3171
  call void @oat_array_bounds_check( i32 %len3172, i32 %_lhs3165 )
  %array_dereferenced3173 = load { i32, [ 0 x i32 ] }** %elt_ptr3170
  %elt_ptr3174 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced3173, i32 0, i32 1, i32 %_lhs3165
  %_lhs3175 = load i32* %j3159
  %_lhs3176 = load i32* %i3156
  %len_ptr3177 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a3_slot3151, i32 0, i32 0
  %len3178 = load i32* %len_ptr3177
  call void @oat_array_bounds_check( i32 %len3178, i32 %_lhs3176 )
  %array_dereferenced3179 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a3_slot3151
  %elt_ptr3180 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array_dereferenced3179, i32 0, i32 1, i32 %_lhs3176
  %len_ptr3181 = getelementptr { i32, [ 0 x i32 ] }** %elt_ptr3180, i32 0, i32 0
  %len3182 = load i32* %len_ptr3181
  call void @oat_array_bounds_check( i32 %len3182, i32 %_lhs3175 )
  %array_dereferenced3183 = load { i32, [ 0 x i32 ] }** %elt_ptr3180
  %elt_ptr3184 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced3183, i32 0, i32 1, i32 %_lhs3175
  %_lhs3185 = load i32* %elt_ptr3184
  %_lhs3186 = load i32* %k3162
  %_lhs3187 = load i32* %i3156
  %len_ptr3188 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a1_slot3155, i32 0, i32 0
  %len3189 = load i32* %len_ptr3188
  call void @oat_array_bounds_check( i32 %len3189, i32 %_lhs3187 )
  %array_dereferenced3190 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a1_slot3155
  %elt_ptr3191 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array_dereferenced3190, i32 0, i32 1, i32 %_lhs3187
  %len_ptr3192 = getelementptr { i32, [ 0 x i32 ] }** %elt_ptr3191, i32 0, i32 0
  %len3193 = load i32* %len_ptr3192
  call void @oat_array_bounds_check( i32 %len3193, i32 %_lhs3186 )
  %array_dereferenced3194 = load { i32, [ 0 x i32 ] }** %elt_ptr3191
  %elt_ptr3195 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced3194, i32 0, i32 1, i32 %_lhs3186
  %_lhs3196 = load i32* %elt_ptr3195
  %_lhs3197 = load i32* %j3159
  %_lhs3198 = load i32* %k3162
  %len_ptr3199 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a2_slot3153, i32 0, i32 0
  %len3200 = load i32* %len_ptr3199
  call void @oat_array_bounds_check( i32 %len3200, i32 %_lhs3198 )
  %array_dereferenced3201 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a2_slot3153
  %elt_ptr3202 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array_dereferenced3201, i32 0, i32 1, i32 %_lhs3198
  %len_ptr3203 = getelementptr { i32, [ 0 x i32 ] }** %elt_ptr3202, i32 0, i32 0
  %len3204 = load i32* %len_ptr3203
  call void @oat_array_bounds_check( i32 %len3204, i32 %_lhs3197 )
  %array_dereferenced3205 = load { i32, [ 0 x i32 ] }** %elt_ptr3202
  %elt_ptr3206 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced3205, i32 0, i32 1, i32 %_lhs3197
  %_lhs3207 = load i32* %elt_ptr3206
  %bop3208 = mul i32 %_lhs3196, %_lhs3207
  %bop3209 = add i32 %_lhs3185, %bop3208
  store i32 %bop3209, i32* %elt_ptr3174
  %_lhs3210 = load i32* %k3162
  %bop3211 = add i32 %_lhs3210, 1
  store i32 %bop3211, i32* %k3162
  br label %__cond625

__fresh630:
  br label %__post623

__post623:
  %_lhs3212 = load i32* %j3159
  %bop3213 = add i32 %_lhs3212, 1
  store i32 %bop3213, i32* %j3159
  br label %__cond622

__fresh631:
  br label %__post620

__post620:
  %_lhs3214 = load i32* %i3156
  %bop3215 = add i32 %_lhs3214, 1
  store i32 %bop3215, i32* %i3156
  br label %__cond619

__fresh632:
  br label %__post617

__post617:
  ret void
}


define i32 @program (i32 %argc3084, { i32, [ 0 x i8* ] }* %argv3082){

__fresh616:
  %argc_slot3085 = alloca i32
  store i32 %argc3084, i32* %argc_slot3085
  %argv_slot3083 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv3082, { i32, [ 0 x i8* ] }** %argv_slot3083
  %array_ptr3086 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array3087 = bitcast { i32, [ 0 x i32 ] }* %array_ptr3086 to { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* 
  %array_ptr3088 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 3 )
  %array3089 = bitcast { i32, [ 0 x i32 ] }* %array_ptr3088 to { i32, [ 0 x i32 ] }* 
  %index_ptr3090 = getelementptr { i32, [ 0 x i32 ] }* %array3089, i32 0, i32 1, i32 0
  store i32 1, i32* %index_ptr3090
  %index_ptr3091 = getelementptr { i32, [ 0 x i32 ] }* %array3089, i32 0, i32 1, i32 1
  store i32 3, i32* %index_ptr3091
  %index_ptr3092 = getelementptr { i32, [ 0 x i32 ] }* %array3089, i32 0, i32 1, i32 2
  store i32 4, i32* %index_ptr3092
  %index_ptr3093 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array3087, i32 0, i32 1, i32 0
  store { i32, [ 0 x i32 ] }* %array3089, { i32, [ 0 x i32 ] }** %index_ptr3093
  %array_ptr3094 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 3 )
  %array3095 = bitcast { i32, [ 0 x i32 ] }* %array_ptr3094 to { i32, [ 0 x i32 ] }* 
  %index_ptr3096 = getelementptr { i32, [ 0 x i32 ] }* %array3095, i32 0, i32 1, i32 0
  store i32 2, i32* %index_ptr3096
  %index_ptr3097 = getelementptr { i32, [ 0 x i32 ] }* %array3095, i32 0, i32 1, i32 1
  store i32 0, i32* %index_ptr3097
  %index_ptr3098 = getelementptr { i32, [ 0 x i32 ] }* %array3095, i32 0, i32 1, i32 2
  store i32 1, i32* %index_ptr3098
  %index_ptr3099 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array3087, i32 0, i32 1, i32 1
  store { i32, [ 0 x i32 ] }* %array3095, { i32, [ 0 x i32 ] }** %index_ptr3099
  %a3100 = alloca { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }*
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array3087, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a3100
  %array_ptr3101 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 3 )
  %array3102 = bitcast { i32, [ 0 x i32 ] }* %array_ptr3101 to { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* 
  %array_ptr3103 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 4 )
  %array3104 = bitcast { i32, [ 0 x i32 ] }* %array_ptr3103 to { i32, [ 0 x i32 ] }* 
  %index_ptr3105 = getelementptr { i32, [ 0 x i32 ] }* %array3104, i32 0, i32 1, i32 0
  store i32 1, i32* %index_ptr3105
  %index_ptr3106 = getelementptr { i32, [ 0 x i32 ] }* %array3104, i32 0, i32 1, i32 1
  store i32 2, i32* %index_ptr3106
  %index_ptr3107 = getelementptr { i32, [ 0 x i32 ] }* %array3104, i32 0, i32 1, i32 2
  store i32 3, i32* %index_ptr3107
  %index_ptr3108 = getelementptr { i32, [ 0 x i32 ] }* %array3104, i32 0, i32 1, i32 3
  store i32 1, i32* %index_ptr3108
  %index_ptr3109 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array3102, i32 0, i32 1, i32 0
  store { i32, [ 0 x i32 ] }* %array3104, { i32, [ 0 x i32 ] }** %index_ptr3109
  %array_ptr3110 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 4 )
  %array3111 = bitcast { i32, [ 0 x i32 ] }* %array_ptr3110 to { i32, [ 0 x i32 ] }* 
  %index_ptr3112 = getelementptr { i32, [ 0 x i32 ] }* %array3111, i32 0, i32 1, i32 0
  store i32 2, i32* %index_ptr3112
  %index_ptr3113 = getelementptr { i32, [ 0 x i32 ] }* %array3111, i32 0, i32 1, i32 1
  store i32 2, i32* %index_ptr3113
  %index_ptr3114 = getelementptr { i32, [ 0 x i32 ] }* %array3111, i32 0, i32 1, i32 2
  store i32 2, i32* %index_ptr3114
  %index_ptr3115 = getelementptr { i32, [ 0 x i32 ] }* %array3111, i32 0, i32 1, i32 3
  store i32 2, i32* %index_ptr3115
  %index_ptr3116 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array3102, i32 0, i32 1, i32 1
  store { i32, [ 0 x i32 ] }* %array3111, { i32, [ 0 x i32 ] }** %index_ptr3116
  %array_ptr3117 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 4 )
  %array3118 = bitcast { i32, [ 0 x i32 ] }* %array_ptr3117 to { i32, [ 0 x i32 ] }* 
  %index_ptr3119 = getelementptr { i32, [ 0 x i32 ] }* %array3118, i32 0, i32 1, i32 0
  store i32 3, i32* %index_ptr3119
  %index_ptr3120 = getelementptr { i32, [ 0 x i32 ] }* %array3118, i32 0, i32 1, i32 1
  store i32 2, i32* %index_ptr3120
  %index_ptr3121 = getelementptr { i32, [ 0 x i32 ] }* %array3118, i32 0, i32 1, i32 2
  store i32 1, i32* %index_ptr3121
  %index_ptr3122 = getelementptr { i32, [ 0 x i32 ] }* %array3118, i32 0, i32 1, i32 3
  store i32 4, i32* %index_ptr3122
  %index_ptr3123 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array3102, i32 0, i32 1, i32 2
  store { i32, [ 0 x i32 ] }* %array3118, { i32, [ 0 x i32 ] }** %index_ptr3123
  %b3124 = alloca { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }*
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array3102, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %b3124
  %array_ptr3125 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array3126 = bitcast { i32, [ 0 x i32 ] }* %array_ptr3125 to { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* 
  %array_ptr3127 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 4 )
  %array3128 = bitcast { i32, [ 0 x i32 ] }* %array_ptr3127 to { i32, [ 0 x i32 ] }* 
  %index_ptr3129 = getelementptr { i32, [ 0 x i32 ] }* %array3128, i32 0, i32 1, i32 0
  store i32 0, i32* %index_ptr3129
  %index_ptr3130 = getelementptr { i32, [ 0 x i32 ] }* %array3128, i32 0, i32 1, i32 1
  store i32 0, i32* %index_ptr3130
  %index_ptr3131 = getelementptr { i32, [ 0 x i32 ] }* %array3128, i32 0, i32 1, i32 2
  store i32 0, i32* %index_ptr3131
  %index_ptr3132 = getelementptr { i32, [ 0 x i32 ] }* %array3128, i32 0, i32 1, i32 3
  store i32 0, i32* %index_ptr3132
  %index_ptr3133 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array3126, i32 0, i32 1, i32 0
  store { i32, [ 0 x i32 ] }* %array3128, { i32, [ 0 x i32 ] }** %index_ptr3133
  %array_ptr3134 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 4 )
  %array3135 = bitcast { i32, [ 0 x i32 ] }* %array_ptr3134 to { i32, [ 0 x i32 ] }* 
  %index_ptr3136 = getelementptr { i32, [ 0 x i32 ] }* %array3135, i32 0, i32 1, i32 0
  store i32 0, i32* %index_ptr3136
  %index_ptr3137 = getelementptr { i32, [ 0 x i32 ] }* %array3135, i32 0, i32 1, i32 1
  store i32 0, i32* %index_ptr3137
  %index_ptr3138 = getelementptr { i32, [ 0 x i32 ] }* %array3135, i32 0, i32 1, i32 2
  store i32 0, i32* %index_ptr3138
  %index_ptr3139 = getelementptr { i32, [ 0 x i32 ] }* %array3135, i32 0, i32 1, i32 3
  store i32 0, i32* %index_ptr3139
  %index_ptr3140 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array3126, i32 0, i32 1, i32 1
  store { i32, [ 0 x i32 ] }* %array3135, { i32, [ 0 x i32 ] }** %index_ptr3140
  %c3141 = alloca { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }*
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array3126, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %c3141
  %_lhs3144 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %c3141
  %_lhs3143 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %b3124
  %_lhs3142 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a3100
  call void @matrix_Mult( { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %_lhs3142, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %_lhs3143, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %_lhs3144 )
  %_lhs3145 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %c3141
  call void @prnNx4( { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %_lhs3145, i32 2 )
  %_lhs3148 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %c3141
  %_lhs3147 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %b3124
  %_lhs3146 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a3100
  call void @matrix_MultAlt( { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %_lhs3146, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %_lhs3147, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %_lhs3148 )
  %_lhs3149 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %c3141
  call void @prnNx4( { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %_lhs3149, i32 2 )
  ret i32 0
}


