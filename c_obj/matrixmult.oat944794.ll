declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@_oat_string3282.str. = private unnamed_addr constant [ 2 x i8 ] c "
\00", align 4
@_oat_string3282 = global i8* getelementptr inbounds ([ 2 x i8 ]* @_oat_string3282.str., i32 0, i32 0), align 4
@_oat_string3278.str. = private unnamed_addr constant [ 2 x i8 ] c " \00", align 4
@_oat_string3278 = global i8* getelementptr inbounds ([ 2 x i8 ]* @_oat_string3278.str., i32 0, i32 0), align 4
define void @oat_init (){

__fresh661:
  ret void
}


define void @prnNx4 ({ i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %ar3258, i32 %n3256){

__fresh656:
  %ar_slot3259 = alloca { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }*
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %ar3258, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %ar_slot3259
  %n_slot3257 = alloca i32
  store i32 %n3256, i32* %n_slot3257
  %i3260 = alloca i32
  store i32 0, i32* %i3260
  br label %__cond652

__cond652:
  %_lhs3261 = load i32* %i3260
  %_lhs3262 = load i32* %n_slot3257
  %bop3263 = icmp slt i32 %_lhs3261, %_lhs3262
  br i1 %bop3263, label %__body651, label %__post650

__fresh657:
  br label %__body651

__body651:
  %j3264 = alloca i32
  store i32 0, i32* %j3264
  br label %__cond655

__cond655:
  %_lhs3265 = load i32* %j3264
  %bop3266 = icmp slt i32 %_lhs3265, 4
  br i1 %bop3266, label %__body654, label %__post653

__fresh658:
  br label %__body654

__body654:
  %_lhs3267 = load i32* %j3264
  %_lhs3268 = load i32* %i3260
  %len_ptr3269 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %ar_slot3259, i32 0, i32 0
  %len3270 = load i32* %len_ptr3269
  call void @oat_array_bounds_check( i32 %len3270, i32 %_lhs3268 )
  %array_dereferenced3271 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %ar_slot3259
  %elt_ptr3272 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array_dereferenced3271, i32 0, i32 1, i32 %_lhs3268
  %len_ptr3273 = getelementptr { i32, [ 0 x i32 ] }** %elt_ptr3272, i32 0, i32 0
  %len3274 = load i32* %len_ptr3273
  call void @oat_array_bounds_check( i32 %len3274, i32 %_lhs3267 )
  %array_dereferenced3275 = load { i32, [ 0 x i32 ] }** %elt_ptr3272
  %elt_ptr3276 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced3275, i32 0, i32 1, i32 %_lhs3267
  %_lhs3277 = load i32* %elt_ptr3276
  call void @print_int( i32 %_lhs3277 )
  %strval3279 = load i8** @_oat_string3278
  call void @print_string( i8* %strval3279 )
  %_lhs3280 = load i32* %j3264
  %bop3281 = add i32 %_lhs3280, 1
  store i32 %bop3281, i32* %j3264
  br label %__cond655

__fresh659:
  br label %__post653

__post653:
  %strval3283 = load i8** @_oat_string3282
  call void @print_string( i8* %strval3283 )
  %_lhs3284 = load i32* %i3260
  %bop3285 = add i32 %_lhs3284, 1
  store i32 %bop3285, i32* %i3260
  br label %__cond652

__fresh660:
  br label %__post650

__post650:
  ret void
}


define i32 @dot3 ({ i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %a13222, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %a23220, i32 %row3218, i32 %col3216){

__fresh647:
  %a1_slot3223 = alloca { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }*
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %a13222, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a1_slot3223
  %a2_slot3221 = alloca { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }*
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %a23220, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a2_slot3221
  %row_slot3219 = alloca i32
  store i32 %row3218, i32* %row_slot3219
  %col_slot3217 = alloca i32
  store i32 %col3216, i32* %col_slot3217
  %sum3224 = alloca i32
  store i32 0, i32* %sum3224
  %k3225 = alloca i32
  store i32 0, i32* %k3225
  br label %__cond646

__cond646:
  %_lhs3226 = load i32* %k3225
  %bop3227 = icmp slt i32 %_lhs3226, 3
  br i1 %bop3227, label %__body645, label %__post644

__fresh648:
  br label %__body645

__body645:
  %_lhs3228 = load i32* %sum3224
  %_lhs3229 = load i32* %k3225
  %_lhs3230 = load i32* %row_slot3219
  %len_ptr3231 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a1_slot3223, i32 0, i32 0
  %len3232 = load i32* %len_ptr3231
  call void @oat_array_bounds_check( i32 %len3232, i32 %_lhs3230 )
  %array_dereferenced3233 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a1_slot3223
  %elt_ptr3234 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array_dereferenced3233, i32 0, i32 1, i32 %_lhs3230
  %len_ptr3235 = getelementptr { i32, [ 0 x i32 ] }** %elt_ptr3234, i32 0, i32 0
  %len3236 = load i32* %len_ptr3235
  call void @oat_array_bounds_check( i32 %len3236, i32 %_lhs3229 )
  %array_dereferenced3237 = load { i32, [ 0 x i32 ] }** %elt_ptr3234
  %elt_ptr3238 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced3237, i32 0, i32 1, i32 %_lhs3229
  %_lhs3239 = load i32* %elt_ptr3238
  %_lhs3240 = load i32* %col_slot3217
  %_lhs3241 = load i32* %k3225
  %len_ptr3242 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a2_slot3221, i32 0, i32 0
  %len3243 = load i32* %len_ptr3242
  call void @oat_array_bounds_check( i32 %len3243, i32 %_lhs3241 )
  %array_dereferenced3244 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a2_slot3221
  %elt_ptr3245 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array_dereferenced3244, i32 0, i32 1, i32 %_lhs3241
  %len_ptr3246 = getelementptr { i32, [ 0 x i32 ] }** %elt_ptr3245, i32 0, i32 0
  %len3247 = load i32* %len_ptr3246
  call void @oat_array_bounds_check( i32 %len3247, i32 %_lhs3240 )
  %array_dereferenced3248 = load { i32, [ 0 x i32 ] }** %elt_ptr3245
  %elt_ptr3249 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced3248, i32 0, i32 1, i32 %_lhs3240
  %_lhs3250 = load i32* %elt_ptr3249
  %bop3251 = mul i32 %_lhs3239, %_lhs3250
  %bop3252 = add i32 %_lhs3228, %bop3251
  store i32 %bop3252, i32* %sum3224
  %_lhs3253 = load i32* %k3225
  %bop3254 = add i32 %_lhs3253, 1
  store i32 %bop3254, i32* %k3225
  br label %__cond646

__fresh649:
  br label %__post644

__post644:
  %_lhs3255 = load i32* %sum3224
  ret i32 %_lhs3255
}


define void @matrix_MultAlt ({ i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %a13189, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %a23187, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %a33185){

__fresh639:
  %a1_slot3190 = alloca { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }*
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %a13189, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a1_slot3190
  %a2_slot3188 = alloca { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }*
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %a23187, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a2_slot3188
  %a3_slot3186 = alloca { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }*
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %a33185, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a3_slot3186
  %i3191 = alloca i32
  store i32 0, i32* %i3191
  br label %__cond635

__cond635:
  %_lhs3192 = load i32* %i3191
  %bop3193 = icmp slt i32 %_lhs3192, 2
  br i1 %bop3193, label %__body634, label %__post633

__fresh640:
  br label %__body634

__body634:
  %j3194 = alloca i32
  store i32 0, i32* %j3194
  br label %__cond638

__cond638:
  %_lhs3195 = load i32* %j3194
  %bop3196 = icmp slt i32 %_lhs3195, 4
  br i1 %bop3196, label %__body637, label %__post636

__fresh641:
  br label %__body637

__body637:
  %_lhs3197 = load i32* %j3194
  %_lhs3198 = load i32* %i3191
  %len_ptr3199 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a3_slot3186, i32 0, i32 0
  %len3200 = load i32* %len_ptr3199
  call void @oat_array_bounds_check( i32 %len3200, i32 %_lhs3198 )
  %array_dereferenced3201 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a3_slot3186
  %elt_ptr3202 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array_dereferenced3201, i32 0, i32 1, i32 %_lhs3198
  %len_ptr3203 = getelementptr { i32, [ 0 x i32 ] }** %elt_ptr3202, i32 0, i32 0
  %len3204 = load i32* %len_ptr3203
  call void @oat_array_bounds_check( i32 %len3204, i32 %_lhs3197 )
  %array_dereferenced3205 = load { i32, [ 0 x i32 ] }** %elt_ptr3202
  %elt_ptr3206 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced3205, i32 0, i32 1, i32 %_lhs3197
  %_lhs3210 = load i32* %j3194
  %_lhs3209 = load i32* %i3191
  %_lhs3208 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a2_slot3188
  %_lhs3207 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a1_slot3190
  %ret3211 = call i32 @dot3 ( { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %_lhs3207, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %_lhs3208, i32 %_lhs3209, i32 %_lhs3210 )
  store i32 %ret3211, i32* %elt_ptr3206
  %_lhs3212 = load i32* %j3194
  %bop3213 = add i32 %_lhs3212, 1
  store i32 %bop3213, i32* %j3194
  br label %__cond638

__fresh642:
  br label %__post636

__post636:
  %_lhs3214 = load i32* %i3191
  %bop3215 = add i32 %_lhs3214, 1
  store i32 %bop3215, i32* %i3191
  br label %__cond635

__fresh643:
  br label %__post633

__post633:
  ret void
}


define void @matrix_Mult ({ i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %a13123, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %a23121, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %a33119){

__fresh626:
  %a1_slot3124 = alloca { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }*
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %a13123, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a1_slot3124
  %a2_slot3122 = alloca { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }*
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %a23121, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a2_slot3122
  %a3_slot3120 = alloca { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }*
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %a33119, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a3_slot3120
  %i3125 = alloca i32
  store i32 0, i32* %i3125
  br label %__cond619

__cond619:
  %_lhs3126 = load i32* %i3125
  %bop3127 = icmp slt i32 %_lhs3126, 2
  br i1 %bop3127, label %__body618, label %__post617

__fresh627:
  br label %__body618

__body618:
  %j3128 = alloca i32
  store i32 0, i32* %j3128
  br label %__cond622

__cond622:
  %_lhs3129 = load i32* %j3128
  %bop3130 = icmp slt i32 %_lhs3129, 4
  br i1 %bop3130, label %__body621, label %__post620

__fresh628:
  br label %__body621

__body621:
  %k3131 = alloca i32
  store i32 0, i32* %k3131
  br label %__cond625

__cond625:
  %_lhs3132 = load i32* %k3131
  %bop3133 = icmp slt i32 %_lhs3132, 3
  br i1 %bop3133, label %__body624, label %__post623

__fresh629:
  br label %__body624

__body624:
  %_lhs3134 = load i32* %j3128
  %_lhs3135 = load i32* %i3125
  %len_ptr3136 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a3_slot3120, i32 0, i32 0
  %len3137 = load i32* %len_ptr3136
  call void @oat_array_bounds_check( i32 %len3137, i32 %_lhs3135 )
  %array_dereferenced3138 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a3_slot3120
  %elt_ptr3139 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array_dereferenced3138, i32 0, i32 1, i32 %_lhs3135
  %len_ptr3140 = getelementptr { i32, [ 0 x i32 ] }** %elt_ptr3139, i32 0, i32 0
  %len3141 = load i32* %len_ptr3140
  call void @oat_array_bounds_check( i32 %len3141, i32 %_lhs3134 )
  %array_dereferenced3142 = load { i32, [ 0 x i32 ] }** %elt_ptr3139
  %elt_ptr3143 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced3142, i32 0, i32 1, i32 %_lhs3134
  %_lhs3144 = load i32* %j3128
  %_lhs3145 = load i32* %i3125
  %len_ptr3146 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a3_slot3120, i32 0, i32 0
  %len3147 = load i32* %len_ptr3146
  call void @oat_array_bounds_check( i32 %len3147, i32 %_lhs3145 )
  %array_dereferenced3148 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a3_slot3120
  %elt_ptr3149 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array_dereferenced3148, i32 0, i32 1, i32 %_lhs3145
  %len_ptr3150 = getelementptr { i32, [ 0 x i32 ] }** %elt_ptr3149, i32 0, i32 0
  %len3151 = load i32* %len_ptr3150
  call void @oat_array_bounds_check( i32 %len3151, i32 %_lhs3144 )
  %array_dereferenced3152 = load { i32, [ 0 x i32 ] }** %elt_ptr3149
  %elt_ptr3153 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced3152, i32 0, i32 1, i32 %_lhs3144
  %_lhs3154 = load i32* %elt_ptr3153
  %_lhs3155 = load i32* %k3131
  %_lhs3156 = load i32* %i3125
  %len_ptr3157 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a1_slot3124, i32 0, i32 0
  %len3158 = load i32* %len_ptr3157
  call void @oat_array_bounds_check( i32 %len3158, i32 %_lhs3156 )
  %array_dereferenced3159 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a1_slot3124
  %elt_ptr3160 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array_dereferenced3159, i32 0, i32 1, i32 %_lhs3156
  %len_ptr3161 = getelementptr { i32, [ 0 x i32 ] }** %elt_ptr3160, i32 0, i32 0
  %len3162 = load i32* %len_ptr3161
  call void @oat_array_bounds_check( i32 %len3162, i32 %_lhs3155 )
  %array_dereferenced3163 = load { i32, [ 0 x i32 ] }** %elt_ptr3160
  %elt_ptr3164 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced3163, i32 0, i32 1, i32 %_lhs3155
  %_lhs3165 = load i32* %elt_ptr3164
  %_lhs3166 = load i32* %j3128
  %_lhs3167 = load i32* %k3131
  %len_ptr3168 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a2_slot3122, i32 0, i32 0
  %len3169 = load i32* %len_ptr3168
  call void @oat_array_bounds_check( i32 %len3169, i32 %_lhs3167 )
  %array_dereferenced3170 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a2_slot3122
  %elt_ptr3171 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array_dereferenced3170, i32 0, i32 1, i32 %_lhs3167
  %len_ptr3172 = getelementptr { i32, [ 0 x i32 ] }** %elt_ptr3171, i32 0, i32 0
  %len3173 = load i32* %len_ptr3172
  call void @oat_array_bounds_check( i32 %len3173, i32 %_lhs3166 )
  %array_dereferenced3174 = load { i32, [ 0 x i32 ] }** %elt_ptr3171
  %elt_ptr3175 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced3174, i32 0, i32 1, i32 %_lhs3166
  %_lhs3176 = load i32* %elt_ptr3175
  %bop3177 = mul i32 %_lhs3165, %_lhs3176
  %bop3178 = add i32 %_lhs3154, %bop3177
  store i32 %bop3178, i32* %elt_ptr3143
  %_lhs3179 = load i32* %k3131
  %bop3180 = add i32 %_lhs3179, 1
  store i32 %bop3180, i32* %k3131
  br label %__cond625

__fresh630:
  br label %__post623

__post623:
  %_lhs3181 = load i32* %j3128
  %bop3182 = add i32 %_lhs3181, 1
  store i32 %bop3182, i32* %j3128
  br label %__cond622

__fresh631:
  br label %__post620

__post620:
  %_lhs3183 = load i32* %i3125
  %bop3184 = add i32 %_lhs3183, 1
  store i32 %bop3184, i32* %i3125
  br label %__cond619

__fresh632:
  br label %__post617

__post617:
  ret void
}


define i32 @program (i32 %argc3053, { i32, [ 0 x i8* ] }* %argv3051){

__fresh616:
  %argc_slot3054 = alloca i32
  store i32 %argc3053, i32* %argc_slot3054
  %argv_slot3052 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv3051, { i32, [ 0 x i8* ] }** %argv_slot3052
  %array_ptr3055 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array3056 = bitcast { i32, [ 0 x i32 ] }* %array_ptr3055 to { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* 
  %array_ptr3057 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 3 )
  %array3058 = bitcast { i32, [ 0 x i32 ] }* %array_ptr3057 to { i32, [ 0 x i32 ] }* 
  %index_ptr3059 = getelementptr { i32, [ 0 x i32 ] }* %array3058, i32 0, i32 1, i32 0
  store i32 1, i32* %index_ptr3059
  %index_ptr3060 = getelementptr { i32, [ 0 x i32 ] }* %array3058, i32 0, i32 1, i32 1
  store i32 3, i32* %index_ptr3060
  %index_ptr3061 = getelementptr { i32, [ 0 x i32 ] }* %array3058, i32 0, i32 1, i32 2
  store i32 4, i32* %index_ptr3061
  %index_ptr3062 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array3056, i32 0, i32 1, i32 0
  store { i32, [ 0 x i32 ] }* %array3058, { i32, [ 0 x i32 ] }** %index_ptr3062
  %array_ptr3063 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 3 )
  %array3064 = bitcast { i32, [ 0 x i32 ] }* %array_ptr3063 to { i32, [ 0 x i32 ] }* 
  %index_ptr3065 = getelementptr { i32, [ 0 x i32 ] }* %array3064, i32 0, i32 1, i32 0
  store i32 2, i32* %index_ptr3065
  %index_ptr3066 = getelementptr { i32, [ 0 x i32 ] }* %array3064, i32 0, i32 1, i32 1
  store i32 0, i32* %index_ptr3066
  %index_ptr3067 = getelementptr { i32, [ 0 x i32 ] }* %array3064, i32 0, i32 1, i32 2
  store i32 1, i32* %index_ptr3067
  %index_ptr3068 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array3056, i32 0, i32 1, i32 1
  store { i32, [ 0 x i32 ] }* %array3064, { i32, [ 0 x i32 ] }** %index_ptr3068
  %a3069 = alloca { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }*
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array3056, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a3069
  %array_ptr3070 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 3 )
  %array3071 = bitcast { i32, [ 0 x i32 ] }* %array_ptr3070 to { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* 
  %array_ptr3072 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 4 )
  %array3073 = bitcast { i32, [ 0 x i32 ] }* %array_ptr3072 to { i32, [ 0 x i32 ] }* 
  %index_ptr3074 = getelementptr { i32, [ 0 x i32 ] }* %array3073, i32 0, i32 1, i32 0
  store i32 1, i32* %index_ptr3074
  %index_ptr3075 = getelementptr { i32, [ 0 x i32 ] }* %array3073, i32 0, i32 1, i32 1
  store i32 2, i32* %index_ptr3075
  %index_ptr3076 = getelementptr { i32, [ 0 x i32 ] }* %array3073, i32 0, i32 1, i32 2
  store i32 3, i32* %index_ptr3076
  %index_ptr3077 = getelementptr { i32, [ 0 x i32 ] }* %array3073, i32 0, i32 1, i32 3
  store i32 1, i32* %index_ptr3077
  %index_ptr3078 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array3071, i32 0, i32 1, i32 0
  store { i32, [ 0 x i32 ] }* %array3073, { i32, [ 0 x i32 ] }** %index_ptr3078
  %array_ptr3079 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 4 )
  %array3080 = bitcast { i32, [ 0 x i32 ] }* %array_ptr3079 to { i32, [ 0 x i32 ] }* 
  %index_ptr3081 = getelementptr { i32, [ 0 x i32 ] }* %array3080, i32 0, i32 1, i32 0
  store i32 2, i32* %index_ptr3081
  %index_ptr3082 = getelementptr { i32, [ 0 x i32 ] }* %array3080, i32 0, i32 1, i32 1
  store i32 2, i32* %index_ptr3082
  %index_ptr3083 = getelementptr { i32, [ 0 x i32 ] }* %array3080, i32 0, i32 1, i32 2
  store i32 2, i32* %index_ptr3083
  %index_ptr3084 = getelementptr { i32, [ 0 x i32 ] }* %array3080, i32 0, i32 1, i32 3
  store i32 2, i32* %index_ptr3084
  %index_ptr3085 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array3071, i32 0, i32 1, i32 1
  store { i32, [ 0 x i32 ] }* %array3080, { i32, [ 0 x i32 ] }** %index_ptr3085
  %array_ptr3086 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 4 )
  %array3087 = bitcast { i32, [ 0 x i32 ] }* %array_ptr3086 to { i32, [ 0 x i32 ] }* 
  %index_ptr3088 = getelementptr { i32, [ 0 x i32 ] }* %array3087, i32 0, i32 1, i32 0
  store i32 3, i32* %index_ptr3088
  %index_ptr3089 = getelementptr { i32, [ 0 x i32 ] }* %array3087, i32 0, i32 1, i32 1
  store i32 2, i32* %index_ptr3089
  %index_ptr3090 = getelementptr { i32, [ 0 x i32 ] }* %array3087, i32 0, i32 1, i32 2
  store i32 1, i32* %index_ptr3090
  %index_ptr3091 = getelementptr { i32, [ 0 x i32 ] }* %array3087, i32 0, i32 1, i32 3
  store i32 4, i32* %index_ptr3091
  %index_ptr3092 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array3071, i32 0, i32 1, i32 2
  store { i32, [ 0 x i32 ] }* %array3087, { i32, [ 0 x i32 ] }** %index_ptr3092
  %b3093 = alloca { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }*
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array3071, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %b3093
  %array_ptr3094 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array3095 = bitcast { i32, [ 0 x i32 ] }* %array_ptr3094 to { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* 
  %array_ptr3096 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 4 )
  %array3097 = bitcast { i32, [ 0 x i32 ] }* %array_ptr3096 to { i32, [ 0 x i32 ] }* 
  %index_ptr3098 = getelementptr { i32, [ 0 x i32 ] }* %array3097, i32 0, i32 1, i32 0
  store i32 0, i32* %index_ptr3098
  %index_ptr3099 = getelementptr { i32, [ 0 x i32 ] }* %array3097, i32 0, i32 1, i32 1
  store i32 0, i32* %index_ptr3099
  %index_ptr3100 = getelementptr { i32, [ 0 x i32 ] }* %array3097, i32 0, i32 1, i32 2
  store i32 0, i32* %index_ptr3100
  %index_ptr3101 = getelementptr { i32, [ 0 x i32 ] }* %array3097, i32 0, i32 1, i32 3
  store i32 0, i32* %index_ptr3101
  %index_ptr3102 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array3095, i32 0, i32 1, i32 0
  store { i32, [ 0 x i32 ] }* %array3097, { i32, [ 0 x i32 ] }** %index_ptr3102
  %array_ptr3103 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 4 )
  %array3104 = bitcast { i32, [ 0 x i32 ] }* %array_ptr3103 to { i32, [ 0 x i32 ] }* 
  %index_ptr3105 = getelementptr { i32, [ 0 x i32 ] }* %array3104, i32 0, i32 1, i32 0
  store i32 0, i32* %index_ptr3105
  %index_ptr3106 = getelementptr { i32, [ 0 x i32 ] }* %array3104, i32 0, i32 1, i32 1
  store i32 0, i32* %index_ptr3106
  %index_ptr3107 = getelementptr { i32, [ 0 x i32 ] }* %array3104, i32 0, i32 1, i32 2
  store i32 0, i32* %index_ptr3107
  %index_ptr3108 = getelementptr { i32, [ 0 x i32 ] }* %array3104, i32 0, i32 1, i32 3
  store i32 0, i32* %index_ptr3108
  %index_ptr3109 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array3095, i32 0, i32 1, i32 1
  store { i32, [ 0 x i32 ] }* %array3104, { i32, [ 0 x i32 ] }** %index_ptr3109
  %c3110 = alloca { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }*
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array3095, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %c3110
  %_lhs3113 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %c3110
  %_lhs3112 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %b3093
  %_lhs3111 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a3069
  call void @matrix_Mult( { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %_lhs3111, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %_lhs3112, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %_lhs3113 )
  %_lhs3114 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %c3110
  call void @prnNx4( { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %_lhs3114, i32 2 )
  %_lhs3117 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %c3110
  %_lhs3116 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %b3093
  %_lhs3115 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a3069
  call void @matrix_MultAlt( { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %_lhs3115, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %_lhs3116, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %_lhs3117 )
  %_lhs3118 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %c3110
  call void @prnNx4( { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %_lhs3118, i32 2 )
  ret i32 0
}


