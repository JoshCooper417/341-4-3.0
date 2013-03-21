declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@_oat_string3286.str. = private unnamed_addr constant [ 2 x i8 ] c "
\00", align 4
@_oat_string3286 = global i8* getelementptr inbounds ([ 2 x i8 ]* @_oat_string3286.str., i32 0, i32 0), align 4
@_oat_string3282.str. = private unnamed_addr constant [ 2 x i8 ] c " \00", align 4
@_oat_string3282 = global i8* getelementptr inbounds ([ 2 x i8 ]* @_oat_string3282.str., i32 0, i32 0), align 4
define void @oat_init (){

__fresh581:
  ret void
}


define void @prnNx4 ({ i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %ar3262, i32 %n3260){

__fresh576:
  %ar_slot3263 = alloca { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }*
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %ar3262, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %ar_slot3263
  %n_slot3261 = alloca i32
  store i32 %n3260, i32* %n_slot3261
  %i3264 = alloca i32
  store i32 0, i32* %i3264
  br label %__cond572

__cond572:
  %_lhs3265 = load i32* %i3264
  %_lhs3266 = load i32* %n_slot3261
  %bop3267 = icmp slt i32 %_lhs3265, %_lhs3266
  br i1 %bop3267, label %__body571, label %__post570

__fresh577:
  br label %__body571

__body571:
  %j3268 = alloca i32
  store i32 0, i32* %j3268
  br label %__cond575

__cond575:
  %_lhs3269 = load i32* %j3268
  %bop3270 = icmp slt i32 %_lhs3269, 4
  br i1 %bop3270, label %__body574, label %__post573

__fresh578:
  br label %__body574

__body574:
  %_lhs3271 = load i32* %j3268
  %_lhs3272 = load i32* %i3264
  %len_ptr3273 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %ar_slot3263, i32 0, i32 0
  %len3274 = load i32* %len_ptr3273
  call void @oat_array_bounds_check( i32 %len3274, i32 %_lhs3272 )
  %array_dereferenced3275 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %ar_slot3263
  %elt_ptr3276 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array_dereferenced3275, i32 0, i32 1, i32 %_lhs3272
  %len_ptr3277 = getelementptr { i32, [ 0 x i32 ] }** %elt_ptr3276, i32 0, i32 0
  %len3278 = load i32* %len_ptr3277
  call void @oat_array_bounds_check( i32 %len3278, i32 %_lhs3271 )
  %array_dereferenced3279 = load { i32, [ 0 x i32 ] }** %elt_ptr3276
  %elt_ptr3280 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced3279, i32 0, i32 1, i32 %_lhs3271
  %_lhs3281 = load i32* %elt_ptr3280
  call void @print_int( i32 %_lhs3281 )
  %strval3283 = load i8** @_oat_string3282
  call void @print_string( i8* %strval3283 )
  %_lhs3284 = load i32* %j3268
  %bop3285 = add i32 %_lhs3284, 1
  store i32 %bop3285, i32* %j3268
  br label %__cond575

__fresh579:
  br label %__post573

__post573:
  %strval3287 = load i8** @_oat_string3286
  call void @print_string( i8* %strval3287 )
  %_lhs3288 = load i32* %i3264
  %bop3289 = add i32 %_lhs3288, 1
  store i32 %bop3289, i32* %i3264
  br label %__cond572

__fresh580:
  br label %__post570

__post570:
  ret void
}


define i32 @dot3 ({ i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %a13226, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %a23224, i32 %row3222, i32 %col3220){

__fresh567:
  %a1_slot3227 = alloca { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }*
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %a13226, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a1_slot3227
  %a2_slot3225 = alloca { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }*
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %a23224, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a2_slot3225
  %row_slot3223 = alloca i32
  store i32 %row3222, i32* %row_slot3223
  %col_slot3221 = alloca i32
  store i32 %col3220, i32* %col_slot3221
  %sum3228 = alloca i32
  store i32 0, i32* %sum3228
  %k3229 = alloca i32
  store i32 0, i32* %k3229
  br label %__cond566

__cond566:
  %_lhs3230 = load i32* %k3229
  %bop3231 = icmp slt i32 %_lhs3230, 3
  br i1 %bop3231, label %__body565, label %__post564

__fresh568:
  br label %__body565

__body565:
  %_lhs3232 = load i32* %sum3228
  %_lhs3233 = load i32* %k3229
  %_lhs3234 = load i32* %row_slot3223
  %len_ptr3235 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a1_slot3227, i32 0, i32 0
  %len3236 = load i32* %len_ptr3235
  call void @oat_array_bounds_check( i32 %len3236, i32 %_lhs3234 )
  %array_dereferenced3237 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a1_slot3227
  %elt_ptr3238 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array_dereferenced3237, i32 0, i32 1, i32 %_lhs3234
  %len_ptr3239 = getelementptr { i32, [ 0 x i32 ] }** %elt_ptr3238, i32 0, i32 0
  %len3240 = load i32* %len_ptr3239
  call void @oat_array_bounds_check( i32 %len3240, i32 %_lhs3233 )
  %array_dereferenced3241 = load { i32, [ 0 x i32 ] }** %elt_ptr3238
  %elt_ptr3242 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced3241, i32 0, i32 1, i32 %_lhs3233
  %_lhs3243 = load i32* %elt_ptr3242
  %_lhs3244 = load i32* %col_slot3221
  %_lhs3245 = load i32* %k3229
  %len_ptr3246 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a2_slot3225, i32 0, i32 0
  %len3247 = load i32* %len_ptr3246
  call void @oat_array_bounds_check( i32 %len3247, i32 %_lhs3245 )
  %array_dereferenced3248 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a2_slot3225
  %elt_ptr3249 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array_dereferenced3248, i32 0, i32 1, i32 %_lhs3245
  %len_ptr3250 = getelementptr { i32, [ 0 x i32 ] }** %elt_ptr3249, i32 0, i32 0
  %len3251 = load i32* %len_ptr3250
  call void @oat_array_bounds_check( i32 %len3251, i32 %_lhs3244 )
  %array_dereferenced3252 = load { i32, [ 0 x i32 ] }** %elt_ptr3249
  %elt_ptr3253 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced3252, i32 0, i32 1, i32 %_lhs3244
  %_lhs3254 = load i32* %elt_ptr3253
  %bop3255 = mul i32 %_lhs3243, %_lhs3254
  %bop3256 = add i32 %_lhs3232, %bop3255
  store i32 %bop3256, i32* %sum3228
  %_lhs3257 = load i32* %k3229
  %bop3258 = add i32 %_lhs3257, 1
  store i32 %bop3258, i32* %k3229
  br label %__cond566

__fresh569:
  br label %__post564

__post564:
  %_lhs3259 = load i32* %sum3228
  ret i32 %_lhs3259
}


define void @matrix_MultAlt ({ i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %a13193, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %a23191, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %a33189){

__fresh559:
  %a1_slot3194 = alloca { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }*
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %a13193, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a1_slot3194
  %a2_slot3192 = alloca { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }*
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %a23191, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a2_slot3192
  %a3_slot3190 = alloca { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }*
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %a33189, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a3_slot3190
  %i3195 = alloca i32
  store i32 0, i32* %i3195
  br label %__cond555

__cond555:
  %_lhs3196 = load i32* %i3195
  %bop3197 = icmp slt i32 %_lhs3196, 2
  br i1 %bop3197, label %__body554, label %__post553

__fresh560:
  br label %__body554

__body554:
  %j3198 = alloca i32
  store i32 0, i32* %j3198
  br label %__cond558

__cond558:
  %_lhs3199 = load i32* %j3198
  %bop3200 = icmp slt i32 %_lhs3199, 4
  br i1 %bop3200, label %__body557, label %__post556

__fresh561:
  br label %__body557

__body557:
  %_lhs3201 = load i32* %j3198
  %_lhs3202 = load i32* %i3195
  %len_ptr3203 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a3_slot3190, i32 0, i32 0
  %len3204 = load i32* %len_ptr3203
  call void @oat_array_bounds_check( i32 %len3204, i32 %_lhs3202 )
  %array_dereferenced3205 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a3_slot3190
  %elt_ptr3206 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array_dereferenced3205, i32 0, i32 1, i32 %_lhs3202
  %len_ptr3207 = getelementptr { i32, [ 0 x i32 ] }** %elt_ptr3206, i32 0, i32 0
  %len3208 = load i32* %len_ptr3207
  call void @oat_array_bounds_check( i32 %len3208, i32 %_lhs3201 )
  %array_dereferenced3209 = load { i32, [ 0 x i32 ] }** %elt_ptr3206
  %elt_ptr3210 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced3209, i32 0, i32 1, i32 %_lhs3201
  %_lhs3214 = load i32* %j3198
  %_lhs3213 = load i32* %i3195
  %_lhs3212 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a2_slot3192
  %_lhs3211 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a1_slot3194
  %ret3215 = call i32 @dot3 ( { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %_lhs3211, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %_lhs3212, i32 %_lhs3213, i32 %_lhs3214 )
  store i32 %ret3215, i32* %elt_ptr3210
  %_lhs3216 = load i32* %j3198
  %bop3217 = add i32 %_lhs3216, 1
  store i32 %bop3217, i32* %j3198
  br label %__cond558

__fresh562:
  br label %__post556

__post556:
  %_lhs3218 = load i32* %i3195
  %bop3219 = add i32 %_lhs3218, 1
  store i32 %bop3219, i32* %i3195
  br label %__cond555

__fresh563:
  br label %__post553

__post553:
  ret void
}


define void @matrix_Mult ({ i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %a13127, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %a23125, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %a33123){

__fresh546:
  %a1_slot3128 = alloca { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }*
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %a13127, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a1_slot3128
  %a2_slot3126 = alloca { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }*
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %a23125, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a2_slot3126
  %a3_slot3124 = alloca { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }*
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %a33123, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a3_slot3124
  %i3129 = alloca i32
  store i32 0, i32* %i3129
  br label %__cond539

__cond539:
  %_lhs3130 = load i32* %i3129
  %bop3131 = icmp slt i32 %_lhs3130, 2
  br i1 %bop3131, label %__body538, label %__post537

__fresh547:
  br label %__body538

__body538:
  %j3132 = alloca i32
  store i32 0, i32* %j3132
  br label %__cond542

__cond542:
  %_lhs3133 = load i32* %j3132
  %bop3134 = icmp slt i32 %_lhs3133, 4
  br i1 %bop3134, label %__body541, label %__post540

__fresh548:
  br label %__body541

__body541:
  %k3135 = alloca i32
  store i32 0, i32* %k3135
  br label %__cond545

__cond545:
  %_lhs3136 = load i32* %k3135
  %bop3137 = icmp slt i32 %_lhs3136, 3
  br i1 %bop3137, label %__body544, label %__post543

__fresh549:
  br label %__body544

__body544:
  %_lhs3138 = load i32* %j3132
  %_lhs3139 = load i32* %i3129
  %len_ptr3140 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a3_slot3124, i32 0, i32 0
  %len3141 = load i32* %len_ptr3140
  call void @oat_array_bounds_check( i32 %len3141, i32 %_lhs3139 )
  %array_dereferenced3142 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a3_slot3124
  %elt_ptr3143 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array_dereferenced3142, i32 0, i32 1, i32 %_lhs3139
  %len_ptr3144 = getelementptr { i32, [ 0 x i32 ] }** %elt_ptr3143, i32 0, i32 0
  %len3145 = load i32* %len_ptr3144
  call void @oat_array_bounds_check( i32 %len3145, i32 %_lhs3138 )
  %array_dereferenced3146 = load { i32, [ 0 x i32 ] }** %elt_ptr3143
  %elt_ptr3147 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced3146, i32 0, i32 1, i32 %_lhs3138
  %_lhs3148 = load i32* %j3132
  %_lhs3149 = load i32* %i3129
  %len_ptr3150 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a3_slot3124, i32 0, i32 0
  %len3151 = load i32* %len_ptr3150
  call void @oat_array_bounds_check( i32 %len3151, i32 %_lhs3149 )
  %array_dereferenced3152 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a3_slot3124
  %elt_ptr3153 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array_dereferenced3152, i32 0, i32 1, i32 %_lhs3149
  %len_ptr3154 = getelementptr { i32, [ 0 x i32 ] }** %elt_ptr3153, i32 0, i32 0
  %len3155 = load i32* %len_ptr3154
  call void @oat_array_bounds_check( i32 %len3155, i32 %_lhs3148 )
  %array_dereferenced3156 = load { i32, [ 0 x i32 ] }** %elt_ptr3153
  %elt_ptr3157 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced3156, i32 0, i32 1, i32 %_lhs3148
  %_lhs3158 = load i32* %elt_ptr3157
  %_lhs3159 = load i32* %k3135
  %_lhs3160 = load i32* %i3129
  %len_ptr3161 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a1_slot3128, i32 0, i32 0
  %len3162 = load i32* %len_ptr3161
  call void @oat_array_bounds_check( i32 %len3162, i32 %_lhs3160 )
  %array_dereferenced3163 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a1_slot3128
  %elt_ptr3164 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array_dereferenced3163, i32 0, i32 1, i32 %_lhs3160
  %len_ptr3165 = getelementptr { i32, [ 0 x i32 ] }** %elt_ptr3164, i32 0, i32 0
  %len3166 = load i32* %len_ptr3165
  call void @oat_array_bounds_check( i32 %len3166, i32 %_lhs3159 )
  %array_dereferenced3167 = load { i32, [ 0 x i32 ] }** %elt_ptr3164
  %elt_ptr3168 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced3167, i32 0, i32 1, i32 %_lhs3159
  %_lhs3169 = load i32* %elt_ptr3168
  %_lhs3170 = load i32* %j3132
  %_lhs3171 = load i32* %k3135
  %len_ptr3172 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a2_slot3126, i32 0, i32 0
  %len3173 = load i32* %len_ptr3172
  call void @oat_array_bounds_check( i32 %len3173, i32 %_lhs3171 )
  %array_dereferenced3174 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a2_slot3126
  %elt_ptr3175 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array_dereferenced3174, i32 0, i32 1, i32 %_lhs3171
  %len_ptr3176 = getelementptr { i32, [ 0 x i32 ] }** %elt_ptr3175, i32 0, i32 0
  %len3177 = load i32* %len_ptr3176
  call void @oat_array_bounds_check( i32 %len3177, i32 %_lhs3170 )
  %array_dereferenced3178 = load { i32, [ 0 x i32 ] }** %elt_ptr3175
  %elt_ptr3179 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced3178, i32 0, i32 1, i32 %_lhs3170
  %_lhs3180 = load i32* %elt_ptr3179
  %bop3181 = mul i32 %_lhs3169, %_lhs3180
  %bop3182 = add i32 %_lhs3158, %bop3181
  store i32 %bop3182, i32* %elt_ptr3147
  %_lhs3183 = load i32* %k3135
  %bop3184 = add i32 %_lhs3183, 1
  store i32 %bop3184, i32* %k3135
  br label %__cond545

__fresh550:
  br label %__post543

__post543:
  %_lhs3185 = load i32* %j3132
  %bop3186 = add i32 %_lhs3185, 1
  store i32 %bop3186, i32* %j3132
  br label %__cond542

__fresh551:
  br label %__post540

__post540:
  %_lhs3187 = load i32* %i3129
  %bop3188 = add i32 %_lhs3187, 1
  store i32 %bop3188, i32* %i3129
  br label %__cond539

__fresh552:
  br label %__post537

__post537:
  ret void
}


define i32 @program (i32 %argc3057, { i32, [ 0 x i8* ] }* %argv3055){

__fresh536:
  %argc_slot3058 = alloca i32
  store i32 %argc3057, i32* %argc_slot3058
  %argv_slot3056 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv3055, { i32, [ 0 x i8* ] }** %argv_slot3056
  %array_ptr3059 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array3060 = bitcast { i32, [ 0 x i32 ] }* %array_ptr3059 to { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* 
  %array_ptr3061 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 3 )
  %array3062 = bitcast { i32, [ 0 x i32 ] }* %array_ptr3061 to { i32, [ 0 x i32 ] }* 
  %index_ptr3063 = getelementptr { i32, [ 0 x i32 ] }* %array3062, i32 0, i32 1, i32 0
  store i32 1, i32* %index_ptr3063
  %index_ptr3064 = getelementptr { i32, [ 0 x i32 ] }* %array3062, i32 0, i32 1, i32 1
  store i32 3, i32* %index_ptr3064
  %index_ptr3065 = getelementptr { i32, [ 0 x i32 ] }* %array3062, i32 0, i32 1, i32 2
  store i32 4, i32* %index_ptr3065
  %index_ptr3066 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array3060, i32 0, i32 1, i32 0
  store { i32, [ 0 x i32 ] }* %array3062, { i32, [ 0 x i32 ] }** %index_ptr3066
  %array_ptr3067 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 3 )
  %array3068 = bitcast { i32, [ 0 x i32 ] }* %array_ptr3067 to { i32, [ 0 x i32 ] }* 
  %index_ptr3069 = getelementptr { i32, [ 0 x i32 ] }* %array3068, i32 0, i32 1, i32 0
  store i32 2, i32* %index_ptr3069
  %index_ptr3070 = getelementptr { i32, [ 0 x i32 ] }* %array3068, i32 0, i32 1, i32 1
  store i32 0, i32* %index_ptr3070
  %index_ptr3071 = getelementptr { i32, [ 0 x i32 ] }* %array3068, i32 0, i32 1, i32 2
  store i32 1, i32* %index_ptr3071
  %index_ptr3072 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array3060, i32 0, i32 1, i32 1
  store { i32, [ 0 x i32 ] }* %array3068, { i32, [ 0 x i32 ] }** %index_ptr3072
  %a3073 = alloca { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }*
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array3060, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a3073
  %array_ptr3074 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 3 )
  %array3075 = bitcast { i32, [ 0 x i32 ] }* %array_ptr3074 to { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* 
  %array_ptr3076 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 4 )
  %array3077 = bitcast { i32, [ 0 x i32 ] }* %array_ptr3076 to { i32, [ 0 x i32 ] }* 
  %index_ptr3078 = getelementptr { i32, [ 0 x i32 ] }* %array3077, i32 0, i32 1, i32 0
  store i32 1, i32* %index_ptr3078
  %index_ptr3079 = getelementptr { i32, [ 0 x i32 ] }* %array3077, i32 0, i32 1, i32 1
  store i32 2, i32* %index_ptr3079
  %index_ptr3080 = getelementptr { i32, [ 0 x i32 ] }* %array3077, i32 0, i32 1, i32 2
  store i32 3, i32* %index_ptr3080
  %index_ptr3081 = getelementptr { i32, [ 0 x i32 ] }* %array3077, i32 0, i32 1, i32 3
  store i32 1, i32* %index_ptr3081
  %index_ptr3082 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array3075, i32 0, i32 1, i32 0
  store { i32, [ 0 x i32 ] }* %array3077, { i32, [ 0 x i32 ] }** %index_ptr3082
  %array_ptr3083 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 4 )
  %array3084 = bitcast { i32, [ 0 x i32 ] }* %array_ptr3083 to { i32, [ 0 x i32 ] }* 
  %index_ptr3085 = getelementptr { i32, [ 0 x i32 ] }* %array3084, i32 0, i32 1, i32 0
  store i32 2, i32* %index_ptr3085
  %index_ptr3086 = getelementptr { i32, [ 0 x i32 ] }* %array3084, i32 0, i32 1, i32 1
  store i32 2, i32* %index_ptr3086
  %index_ptr3087 = getelementptr { i32, [ 0 x i32 ] }* %array3084, i32 0, i32 1, i32 2
  store i32 2, i32* %index_ptr3087
  %index_ptr3088 = getelementptr { i32, [ 0 x i32 ] }* %array3084, i32 0, i32 1, i32 3
  store i32 2, i32* %index_ptr3088
  %index_ptr3089 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array3075, i32 0, i32 1, i32 1
  store { i32, [ 0 x i32 ] }* %array3084, { i32, [ 0 x i32 ] }** %index_ptr3089
  %array_ptr3090 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 4 )
  %array3091 = bitcast { i32, [ 0 x i32 ] }* %array_ptr3090 to { i32, [ 0 x i32 ] }* 
  %index_ptr3092 = getelementptr { i32, [ 0 x i32 ] }* %array3091, i32 0, i32 1, i32 0
  store i32 3, i32* %index_ptr3092
  %index_ptr3093 = getelementptr { i32, [ 0 x i32 ] }* %array3091, i32 0, i32 1, i32 1
  store i32 2, i32* %index_ptr3093
  %index_ptr3094 = getelementptr { i32, [ 0 x i32 ] }* %array3091, i32 0, i32 1, i32 2
  store i32 1, i32* %index_ptr3094
  %index_ptr3095 = getelementptr { i32, [ 0 x i32 ] }* %array3091, i32 0, i32 1, i32 3
  store i32 4, i32* %index_ptr3095
  %index_ptr3096 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array3075, i32 0, i32 1, i32 2
  store { i32, [ 0 x i32 ] }* %array3091, { i32, [ 0 x i32 ] }** %index_ptr3096
  %b3097 = alloca { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }*
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array3075, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %b3097
  %array_ptr3098 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array3099 = bitcast { i32, [ 0 x i32 ] }* %array_ptr3098 to { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* 
  %array_ptr3100 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 4 )
  %array3101 = bitcast { i32, [ 0 x i32 ] }* %array_ptr3100 to { i32, [ 0 x i32 ] }* 
  %index_ptr3102 = getelementptr { i32, [ 0 x i32 ] }* %array3101, i32 0, i32 1, i32 0
  store i32 0, i32* %index_ptr3102
  %index_ptr3103 = getelementptr { i32, [ 0 x i32 ] }* %array3101, i32 0, i32 1, i32 1
  store i32 0, i32* %index_ptr3103
  %index_ptr3104 = getelementptr { i32, [ 0 x i32 ] }* %array3101, i32 0, i32 1, i32 2
  store i32 0, i32* %index_ptr3104
  %index_ptr3105 = getelementptr { i32, [ 0 x i32 ] }* %array3101, i32 0, i32 1, i32 3
  store i32 0, i32* %index_ptr3105
  %index_ptr3106 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array3099, i32 0, i32 1, i32 0
  store { i32, [ 0 x i32 ] }* %array3101, { i32, [ 0 x i32 ] }** %index_ptr3106
  %array_ptr3107 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 4 )
  %array3108 = bitcast { i32, [ 0 x i32 ] }* %array_ptr3107 to { i32, [ 0 x i32 ] }* 
  %index_ptr3109 = getelementptr { i32, [ 0 x i32 ] }* %array3108, i32 0, i32 1, i32 0
  store i32 0, i32* %index_ptr3109
  %index_ptr3110 = getelementptr { i32, [ 0 x i32 ] }* %array3108, i32 0, i32 1, i32 1
  store i32 0, i32* %index_ptr3110
  %index_ptr3111 = getelementptr { i32, [ 0 x i32 ] }* %array3108, i32 0, i32 1, i32 2
  store i32 0, i32* %index_ptr3111
  %index_ptr3112 = getelementptr { i32, [ 0 x i32 ] }* %array3108, i32 0, i32 1, i32 3
  store i32 0, i32* %index_ptr3112
  %index_ptr3113 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array3099, i32 0, i32 1, i32 1
  store { i32, [ 0 x i32 ] }* %array3108, { i32, [ 0 x i32 ] }** %index_ptr3113
  %c3114 = alloca { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }*
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array3099, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %c3114
  %_lhs3117 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %c3114
  %_lhs3116 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %b3097
  %_lhs3115 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a3073
  call void @matrix_Mult( { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %_lhs3115, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %_lhs3116, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %_lhs3117 )
  %_lhs3118 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %c3114
  call void @prnNx4( { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %_lhs3118, i32 2 )
  %_lhs3121 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %c3114
  %_lhs3120 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %b3097
  %_lhs3119 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a3073
  call void @matrix_MultAlt( { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %_lhs3119, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %_lhs3120, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %_lhs3121 )
  %_lhs3122 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %c3114
  call void @prnNx4( { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %_lhs3122, i32 2 )
  ret i32 0
}


