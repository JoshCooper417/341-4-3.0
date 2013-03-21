declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@_oat_string3267.str. = private unnamed_addr constant [ 2 x i8 ] c "
\00", align 4
@_oat_string3267 = global i8* getelementptr inbounds ([ 2 x i8 ]* @_oat_string3267.str., i32 0, i32 0), align 4
@_oat_string3263.str. = private unnamed_addr constant [ 2 x i8 ] c " \00", align 4
@_oat_string3263 = global i8* getelementptr inbounds ([ 2 x i8 ]* @_oat_string3263.str., i32 0, i32 0), align 4
define void @oat_init (){

__fresh674:
  ret void
}


define void @prnNx4 ({ i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %ar3243, i32 %n3241){

__fresh669:
  %ar_slot3244 = alloca { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }*
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %ar3243, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %ar_slot3244
  %n_slot3242 = alloca i32
  store i32 %n3241, i32* %n_slot3242
  %i3245 = alloca i32
  store i32 0, i32* %i3245
  br label %__cond665

__cond665:
  %_lhs3246 = load i32* %i3245
  %_lhs3247 = load i32* %n_slot3242
  %bop3248 = icmp slt i32 %_lhs3246, %_lhs3247
  br i1 %bop3248, label %__body664, label %__post663

__fresh670:
  br label %__body664

__body664:
  %j3249 = alloca i32
  store i32 0, i32* %j3249
  br label %__cond668

__cond668:
  %_lhs3250 = load i32* %j3249
  %bop3251 = icmp slt i32 %_lhs3250, 4
  br i1 %bop3251, label %__body667, label %__post666

__fresh671:
  br label %__body667

__body667:
  %_lhs3252 = load i32* %j3249
  %_lhs3253 = load i32* %i3245
  %len_ptr3254 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %ar_slot3244, i32 0, i32 0
  %len3255 = load i32* %len_ptr3254
  call void @oat_array_bounds_check( i32 %len3255, i32 %_lhs3253 )
  %array_dereferenced3256 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %ar_slot3244
  %elt_ptr3257 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array_dereferenced3256, i32 0, i32 1, i32 %_lhs3253
  %len_ptr3258 = getelementptr { i32, [ 0 x i32 ] }** %elt_ptr3257, i32 0, i32 0
  %len3259 = load i32* %len_ptr3258
  call void @oat_array_bounds_check( i32 %len3259, i32 %_lhs3252 )
  %array_dereferenced3260 = load { i32, [ 0 x i32 ] }** %elt_ptr3257
  %elt_ptr3261 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced3260, i32 0, i32 1, i32 %_lhs3252
  %_lhs3262 = load i32* %elt_ptr3261
  call void @print_int( i32 %_lhs3262 )
  %strval3264 = load i8** @_oat_string3263
  call void @print_string( i8* %strval3264 )
  %_lhs3265 = load i32* %j3249
  %bop3266 = add i32 %_lhs3265, 1
  store i32 %bop3266, i32* %j3249
  br label %__cond668

__fresh672:
  br label %__post666

__post666:
  %strval3268 = load i8** @_oat_string3267
  call void @print_string( i8* %strval3268 )
  %_lhs3269 = load i32* %i3245
  %bop3270 = add i32 %_lhs3269, 1
  store i32 %bop3270, i32* %i3245
  br label %__cond665

__fresh673:
  br label %__post663

__post663:
  ret void
}


define i32 @dot3 ({ i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %a13207, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %a23205, i32 %row3203, i32 %col3201){

__fresh660:
  %a1_slot3208 = alloca { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }*
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %a13207, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a1_slot3208
  %a2_slot3206 = alloca { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }*
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %a23205, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a2_slot3206
  %row_slot3204 = alloca i32
  store i32 %row3203, i32* %row_slot3204
  %col_slot3202 = alloca i32
  store i32 %col3201, i32* %col_slot3202
  %sum3209 = alloca i32
  store i32 0, i32* %sum3209
  %k3210 = alloca i32
  store i32 0, i32* %k3210
  br label %__cond659

__cond659:
  %_lhs3211 = load i32* %k3210
  %bop3212 = icmp slt i32 %_lhs3211, 3
  br i1 %bop3212, label %__body658, label %__post657

__fresh661:
  br label %__body658

__body658:
  %_lhs3213 = load i32* %sum3209
  %_lhs3214 = load i32* %k3210
  %_lhs3215 = load i32* %row_slot3204
  %len_ptr3216 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a1_slot3208, i32 0, i32 0
  %len3217 = load i32* %len_ptr3216
  call void @oat_array_bounds_check( i32 %len3217, i32 %_lhs3215 )
  %array_dereferenced3218 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a1_slot3208
  %elt_ptr3219 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array_dereferenced3218, i32 0, i32 1, i32 %_lhs3215
  %len_ptr3220 = getelementptr { i32, [ 0 x i32 ] }** %elt_ptr3219, i32 0, i32 0
  %len3221 = load i32* %len_ptr3220
  call void @oat_array_bounds_check( i32 %len3221, i32 %_lhs3214 )
  %array_dereferenced3222 = load { i32, [ 0 x i32 ] }** %elt_ptr3219
  %elt_ptr3223 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced3222, i32 0, i32 1, i32 %_lhs3214
  %_lhs3224 = load i32* %elt_ptr3223
  %_lhs3225 = load i32* %col_slot3202
  %_lhs3226 = load i32* %k3210
  %len_ptr3227 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a2_slot3206, i32 0, i32 0
  %len3228 = load i32* %len_ptr3227
  call void @oat_array_bounds_check( i32 %len3228, i32 %_lhs3226 )
  %array_dereferenced3229 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a2_slot3206
  %elt_ptr3230 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array_dereferenced3229, i32 0, i32 1, i32 %_lhs3226
  %len_ptr3231 = getelementptr { i32, [ 0 x i32 ] }** %elt_ptr3230, i32 0, i32 0
  %len3232 = load i32* %len_ptr3231
  call void @oat_array_bounds_check( i32 %len3232, i32 %_lhs3225 )
  %array_dereferenced3233 = load { i32, [ 0 x i32 ] }** %elt_ptr3230
  %elt_ptr3234 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced3233, i32 0, i32 1, i32 %_lhs3225
  %_lhs3235 = load i32* %elt_ptr3234
  %bop3236 = mul i32 %_lhs3224, %_lhs3235
  %bop3237 = add i32 %_lhs3213, %bop3236
  store i32 %bop3237, i32* %sum3209
  %_lhs3238 = load i32* %k3210
  %bop3239 = add i32 %_lhs3238, 1
  store i32 %bop3239, i32* %k3210
  br label %__cond659

__fresh662:
  br label %__post657

__post657:
  %_lhs3240 = load i32* %sum3209
  ret i32 %_lhs3240
}


define void @matrix_MultAlt ({ i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %a13174, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %a23172, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %a33170){

__fresh652:
  %a1_slot3175 = alloca { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }*
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %a13174, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a1_slot3175
  %a2_slot3173 = alloca { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }*
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %a23172, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a2_slot3173
  %a3_slot3171 = alloca { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }*
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %a33170, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a3_slot3171
  %i3176 = alloca i32
  store i32 0, i32* %i3176
  br label %__cond648

__cond648:
  %_lhs3177 = load i32* %i3176
  %bop3178 = icmp slt i32 %_lhs3177, 2
  br i1 %bop3178, label %__body647, label %__post646

__fresh653:
  br label %__body647

__body647:
  %j3179 = alloca i32
  store i32 0, i32* %j3179
  br label %__cond651

__cond651:
  %_lhs3180 = load i32* %j3179
  %bop3181 = icmp slt i32 %_lhs3180, 4
  br i1 %bop3181, label %__body650, label %__post649

__fresh654:
  br label %__body650

__body650:
  %_lhs3182 = load i32* %j3179
  %_lhs3183 = load i32* %i3176
  %len_ptr3184 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a3_slot3171, i32 0, i32 0
  %len3185 = load i32* %len_ptr3184
  call void @oat_array_bounds_check( i32 %len3185, i32 %_lhs3183 )
  %array_dereferenced3186 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a3_slot3171
  %elt_ptr3187 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array_dereferenced3186, i32 0, i32 1, i32 %_lhs3183
  %len_ptr3188 = getelementptr { i32, [ 0 x i32 ] }** %elt_ptr3187, i32 0, i32 0
  %len3189 = load i32* %len_ptr3188
  call void @oat_array_bounds_check( i32 %len3189, i32 %_lhs3182 )
  %array_dereferenced3190 = load { i32, [ 0 x i32 ] }** %elt_ptr3187
  %elt_ptr3191 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced3190, i32 0, i32 1, i32 %_lhs3182
  %_lhs3195 = load i32* %j3179
  %_lhs3194 = load i32* %i3176
  %_lhs3193 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a2_slot3173
  %_lhs3192 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a1_slot3175
  %ret3196 = call i32 @dot3 ( { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %_lhs3192, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %_lhs3193, i32 %_lhs3194, i32 %_lhs3195 )
  store i32 %ret3196, i32* %elt_ptr3191
  %_lhs3197 = load i32* %j3179
  %bop3198 = add i32 %_lhs3197, 1
  store i32 %bop3198, i32* %j3179
  br label %__cond651

__fresh655:
  br label %__post649

__post649:
  %_lhs3199 = load i32* %i3176
  %bop3200 = add i32 %_lhs3199, 1
  store i32 %bop3200, i32* %i3176
  br label %__cond648

__fresh656:
  br label %__post646

__post646:
  ret void
}


define void @matrix_Mult ({ i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %a13108, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %a23106, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %a33104){

__fresh639:
  %a1_slot3109 = alloca { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }*
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %a13108, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a1_slot3109
  %a2_slot3107 = alloca { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }*
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %a23106, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a2_slot3107
  %a3_slot3105 = alloca { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }*
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %a33104, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a3_slot3105
  %i3110 = alloca i32
  store i32 0, i32* %i3110
  br label %__cond632

__cond632:
  %_lhs3111 = load i32* %i3110
  %bop3112 = icmp slt i32 %_lhs3111, 2
  br i1 %bop3112, label %__body631, label %__post630

__fresh640:
  br label %__body631

__body631:
  %j3113 = alloca i32
  store i32 0, i32* %j3113
  br label %__cond635

__cond635:
  %_lhs3114 = load i32* %j3113
  %bop3115 = icmp slt i32 %_lhs3114, 4
  br i1 %bop3115, label %__body634, label %__post633

__fresh641:
  br label %__body634

__body634:
  %k3116 = alloca i32
  store i32 0, i32* %k3116
  br label %__cond638

__cond638:
  %_lhs3117 = load i32* %k3116
  %bop3118 = icmp slt i32 %_lhs3117, 3
  br i1 %bop3118, label %__body637, label %__post636

__fresh642:
  br label %__body637

__body637:
  %_lhs3119 = load i32* %j3113
  %_lhs3120 = load i32* %i3110
  %len_ptr3121 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a3_slot3105, i32 0, i32 0
  %len3122 = load i32* %len_ptr3121
  call void @oat_array_bounds_check( i32 %len3122, i32 %_lhs3120 )
  %array_dereferenced3123 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a3_slot3105
  %elt_ptr3124 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array_dereferenced3123, i32 0, i32 1, i32 %_lhs3120
  %len_ptr3125 = getelementptr { i32, [ 0 x i32 ] }** %elt_ptr3124, i32 0, i32 0
  %len3126 = load i32* %len_ptr3125
  call void @oat_array_bounds_check( i32 %len3126, i32 %_lhs3119 )
  %array_dereferenced3127 = load { i32, [ 0 x i32 ] }** %elt_ptr3124
  %elt_ptr3128 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced3127, i32 0, i32 1, i32 %_lhs3119
  %_lhs3129 = load i32* %j3113
  %_lhs3130 = load i32* %i3110
  %len_ptr3131 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a3_slot3105, i32 0, i32 0
  %len3132 = load i32* %len_ptr3131
  call void @oat_array_bounds_check( i32 %len3132, i32 %_lhs3130 )
  %array_dereferenced3133 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a3_slot3105
  %elt_ptr3134 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array_dereferenced3133, i32 0, i32 1, i32 %_lhs3130
  %len_ptr3135 = getelementptr { i32, [ 0 x i32 ] }** %elt_ptr3134, i32 0, i32 0
  %len3136 = load i32* %len_ptr3135
  call void @oat_array_bounds_check( i32 %len3136, i32 %_lhs3129 )
  %array_dereferenced3137 = load { i32, [ 0 x i32 ] }** %elt_ptr3134
  %elt_ptr3138 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced3137, i32 0, i32 1, i32 %_lhs3129
  %_lhs3139 = load i32* %elt_ptr3138
  %_lhs3140 = load i32* %k3116
  %_lhs3141 = load i32* %i3110
  %len_ptr3142 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a1_slot3109, i32 0, i32 0
  %len3143 = load i32* %len_ptr3142
  call void @oat_array_bounds_check( i32 %len3143, i32 %_lhs3141 )
  %array_dereferenced3144 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a1_slot3109
  %elt_ptr3145 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array_dereferenced3144, i32 0, i32 1, i32 %_lhs3141
  %len_ptr3146 = getelementptr { i32, [ 0 x i32 ] }** %elt_ptr3145, i32 0, i32 0
  %len3147 = load i32* %len_ptr3146
  call void @oat_array_bounds_check( i32 %len3147, i32 %_lhs3140 )
  %array_dereferenced3148 = load { i32, [ 0 x i32 ] }** %elt_ptr3145
  %elt_ptr3149 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced3148, i32 0, i32 1, i32 %_lhs3140
  %_lhs3150 = load i32* %elt_ptr3149
  %_lhs3151 = load i32* %j3113
  %_lhs3152 = load i32* %k3116
  %len_ptr3153 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a2_slot3107, i32 0, i32 0
  %len3154 = load i32* %len_ptr3153
  call void @oat_array_bounds_check( i32 %len3154, i32 %_lhs3152 )
  %array_dereferenced3155 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a2_slot3107
  %elt_ptr3156 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array_dereferenced3155, i32 0, i32 1, i32 %_lhs3152
  %len_ptr3157 = getelementptr { i32, [ 0 x i32 ] }** %elt_ptr3156, i32 0, i32 0
  %len3158 = load i32* %len_ptr3157
  call void @oat_array_bounds_check( i32 %len3158, i32 %_lhs3151 )
  %array_dereferenced3159 = load { i32, [ 0 x i32 ] }** %elt_ptr3156
  %elt_ptr3160 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced3159, i32 0, i32 1, i32 %_lhs3151
  %_lhs3161 = load i32* %elt_ptr3160
  %bop3162 = mul i32 %_lhs3150, %_lhs3161
  %bop3163 = add i32 %_lhs3139, %bop3162
  store i32 %bop3163, i32* %elt_ptr3128
  %_lhs3164 = load i32* %k3116
  %bop3165 = add i32 %_lhs3164, 1
  store i32 %bop3165, i32* %k3116
  br label %__cond638

__fresh643:
  br label %__post636

__post636:
  %_lhs3166 = load i32* %j3113
  %bop3167 = add i32 %_lhs3166, 1
  store i32 %bop3167, i32* %j3113
  br label %__cond635

__fresh644:
  br label %__post633

__post633:
  %_lhs3168 = load i32* %i3110
  %bop3169 = add i32 %_lhs3168, 1
  store i32 %bop3169, i32* %i3110
  br label %__cond632

__fresh645:
  br label %__post630

__post630:
  ret void
}


define i32 @program (i32 %argc3038, { i32, [ 0 x i8* ] }* %argv3036){

__fresh629:
  %argc_slot3039 = alloca i32
  store i32 %argc3038, i32* %argc_slot3039
  %argv_slot3037 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv3036, { i32, [ 0 x i8* ] }** %argv_slot3037
  %array_ptr3040 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array3041 = bitcast { i32, [ 0 x i32 ] }* %array_ptr3040 to { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* 
  %array_ptr3042 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 3 )
  %array3043 = bitcast { i32, [ 0 x i32 ] }* %array_ptr3042 to { i32, [ 0 x i32 ] }* 
  %index_ptr3044 = getelementptr { i32, [ 0 x i32 ] }* %array3043, i32 0, i32 1, i32 0
  store i32 1, i32* %index_ptr3044
  %index_ptr3045 = getelementptr { i32, [ 0 x i32 ] }* %array3043, i32 0, i32 1, i32 1
  store i32 3, i32* %index_ptr3045
  %index_ptr3046 = getelementptr { i32, [ 0 x i32 ] }* %array3043, i32 0, i32 1, i32 2
  store i32 4, i32* %index_ptr3046
  %index_ptr3047 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array3041, i32 0, i32 1, i32 0
  store { i32, [ 0 x i32 ] }* %array3043, { i32, [ 0 x i32 ] }** %index_ptr3047
  %array_ptr3048 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 3 )
  %array3049 = bitcast { i32, [ 0 x i32 ] }* %array_ptr3048 to { i32, [ 0 x i32 ] }* 
  %index_ptr3050 = getelementptr { i32, [ 0 x i32 ] }* %array3049, i32 0, i32 1, i32 0
  store i32 2, i32* %index_ptr3050
  %index_ptr3051 = getelementptr { i32, [ 0 x i32 ] }* %array3049, i32 0, i32 1, i32 1
  store i32 0, i32* %index_ptr3051
  %index_ptr3052 = getelementptr { i32, [ 0 x i32 ] }* %array3049, i32 0, i32 1, i32 2
  store i32 1, i32* %index_ptr3052
  %index_ptr3053 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array3041, i32 0, i32 1, i32 1
  store { i32, [ 0 x i32 ] }* %array3049, { i32, [ 0 x i32 ] }** %index_ptr3053
  %a3054 = alloca { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }*
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array3041, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a3054
  %array_ptr3055 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 3 )
  %array3056 = bitcast { i32, [ 0 x i32 ] }* %array_ptr3055 to { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* 
  %array_ptr3057 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 4 )
  %array3058 = bitcast { i32, [ 0 x i32 ] }* %array_ptr3057 to { i32, [ 0 x i32 ] }* 
  %index_ptr3059 = getelementptr { i32, [ 0 x i32 ] }* %array3058, i32 0, i32 1, i32 0
  store i32 1, i32* %index_ptr3059
  %index_ptr3060 = getelementptr { i32, [ 0 x i32 ] }* %array3058, i32 0, i32 1, i32 1
  store i32 2, i32* %index_ptr3060
  %index_ptr3061 = getelementptr { i32, [ 0 x i32 ] }* %array3058, i32 0, i32 1, i32 2
  store i32 3, i32* %index_ptr3061
  %index_ptr3062 = getelementptr { i32, [ 0 x i32 ] }* %array3058, i32 0, i32 1, i32 3
  store i32 1, i32* %index_ptr3062
  %index_ptr3063 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array3056, i32 0, i32 1, i32 0
  store { i32, [ 0 x i32 ] }* %array3058, { i32, [ 0 x i32 ] }** %index_ptr3063
  %array_ptr3064 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 4 )
  %array3065 = bitcast { i32, [ 0 x i32 ] }* %array_ptr3064 to { i32, [ 0 x i32 ] }* 
  %index_ptr3066 = getelementptr { i32, [ 0 x i32 ] }* %array3065, i32 0, i32 1, i32 0
  store i32 2, i32* %index_ptr3066
  %index_ptr3067 = getelementptr { i32, [ 0 x i32 ] }* %array3065, i32 0, i32 1, i32 1
  store i32 2, i32* %index_ptr3067
  %index_ptr3068 = getelementptr { i32, [ 0 x i32 ] }* %array3065, i32 0, i32 1, i32 2
  store i32 2, i32* %index_ptr3068
  %index_ptr3069 = getelementptr { i32, [ 0 x i32 ] }* %array3065, i32 0, i32 1, i32 3
  store i32 2, i32* %index_ptr3069
  %index_ptr3070 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array3056, i32 0, i32 1, i32 1
  store { i32, [ 0 x i32 ] }* %array3065, { i32, [ 0 x i32 ] }** %index_ptr3070
  %array_ptr3071 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 4 )
  %array3072 = bitcast { i32, [ 0 x i32 ] }* %array_ptr3071 to { i32, [ 0 x i32 ] }* 
  %index_ptr3073 = getelementptr { i32, [ 0 x i32 ] }* %array3072, i32 0, i32 1, i32 0
  store i32 3, i32* %index_ptr3073
  %index_ptr3074 = getelementptr { i32, [ 0 x i32 ] }* %array3072, i32 0, i32 1, i32 1
  store i32 2, i32* %index_ptr3074
  %index_ptr3075 = getelementptr { i32, [ 0 x i32 ] }* %array3072, i32 0, i32 1, i32 2
  store i32 1, i32* %index_ptr3075
  %index_ptr3076 = getelementptr { i32, [ 0 x i32 ] }* %array3072, i32 0, i32 1, i32 3
  store i32 4, i32* %index_ptr3076
  %index_ptr3077 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array3056, i32 0, i32 1, i32 2
  store { i32, [ 0 x i32 ] }* %array3072, { i32, [ 0 x i32 ] }** %index_ptr3077
  %b3078 = alloca { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }*
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array3056, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %b3078
  %array_ptr3079 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array3080 = bitcast { i32, [ 0 x i32 ] }* %array_ptr3079 to { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* 
  %array_ptr3081 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 4 )
  %array3082 = bitcast { i32, [ 0 x i32 ] }* %array_ptr3081 to { i32, [ 0 x i32 ] }* 
  %index_ptr3083 = getelementptr { i32, [ 0 x i32 ] }* %array3082, i32 0, i32 1, i32 0
  store i32 0, i32* %index_ptr3083
  %index_ptr3084 = getelementptr { i32, [ 0 x i32 ] }* %array3082, i32 0, i32 1, i32 1
  store i32 0, i32* %index_ptr3084
  %index_ptr3085 = getelementptr { i32, [ 0 x i32 ] }* %array3082, i32 0, i32 1, i32 2
  store i32 0, i32* %index_ptr3085
  %index_ptr3086 = getelementptr { i32, [ 0 x i32 ] }* %array3082, i32 0, i32 1, i32 3
  store i32 0, i32* %index_ptr3086
  %index_ptr3087 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array3080, i32 0, i32 1, i32 0
  store { i32, [ 0 x i32 ] }* %array3082, { i32, [ 0 x i32 ] }** %index_ptr3087
  %array_ptr3088 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 4 )
  %array3089 = bitcast { i32, [ 0 x i32 ] }* %array_ptr3088 to { i32, [ 0 x i32 ] }* 
  %index_ptr3090 = getelementptr { i32, [ 0 x i32 ] }* %array3089, i32 0, i32 1, i32 0
  store i32 0, i32* %index_ptr3090
  %index_ptr3091 = getelementptr { i32, [ 0 x i32 ] }* %array3089, i32 0, i32 1, i32 1
  store i32 0, i32* %index_ptr3091
  %index_ptr3092 = getelementptr { i32, [ 0 x i32 ] }* %array3089, i32 0, i32 1, i32 2
  store i32 0, i32* %index_ptr3092
  %index_ptr3093 = getelementptr { i32, [ 0 x i32 ] }* %array3089, i32 0, i32 1, i32 3
  store i32 0, i32* %index_ptr3093
  %index_ptr3094 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array3080, i32 0, i32 1, i32 1
  store { i32, [ 0 x i32 ] }* %array3089, { i32, [ 0 x i32 ] }** %index_ptr3094
  %c3095 = alloca { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }*
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array3080, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %c3095
  %_lhs3098 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %c3095
  %_lhs3097 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %b3078
  %_lhs3096 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a3054
  call void @matrix_Mult( { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %_lhs3096, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %_lhs3097, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %_lhs3098 )
  %_lhs3099 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %c3095
  call void @prnNx4( { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %_lhs3099, i32 2 )
  %_lhs3102 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %c3095
  %_lhs3101 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %b3078
  %_lhs3100 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a3054
  call void @matrix_MultAlt( { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %_lhs3100, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %_lhs3101, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %_lhs3102 )
  %_lhs3103 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %c3095
  call void @prnNx4( { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %_lhs3103, i32 2 )
  ret i32 0
}


