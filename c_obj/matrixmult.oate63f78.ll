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

__fresh878:
  ret void
}


define void @prnNx4 ({ i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %ar3243, i32 %n3241){

__fresh873:
  %ar_slot3244 = alloca { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }*
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %ar3243, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %ar_slot3244
  %n_slot3242 = alloca i32
  store i32 %n3241, i32* %n_slot3242
  %i3245 = alloca i32
  store i32 0, i32* %i3245
  br label %__cond869

__cond869:
  %_lhs3246 = load i32* %i3245
  %_lhs3247 = load i32* %n_slot3242
  %bop3248 = icmp slt i32 %_lhs3246, %_lhs3247
  br i1 %bop3248, label %__body868, label %__post867

__fresh874:
  br label %__body868

__body868:
  %j3249 = alloca i32
  store i32 0, i32* %j3249
  br label %__cond872

__cond872:
  %_lhs3250 = load i32* %j3249
  %bop3251 = icmp slt i32 %_lhs3250, 4
  br i1 %bop3251, label %__body871, label %__post870

__fresh875:
  br label %__body871

__body871:
  %_lhs3252 = load i32* %j3249
  %array_dereferenced3258 = load { i32, [ 0 x i32 ] }** %elt_ptr3257
  %_lhs3253 = load i32* %i3245
  %array_dereferenced3254 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %ar_slot3244
  %len_ptr3255 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array_dereferenced3254, i32 0, i32 0
  %len3256 = load i32* %len_ptr3255
  call void @oat_array_bounds_check( i32 %len3256, i32 %_lhs3253 )
  %elt_ptr3257 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array_dereferenced3254, i32 0, i32 1, i32 %_lhs3253
  %len_ptr3259 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced3258, i32 0, i32 0
  %len3260 = load i32* %len_ptr3259
  call void @oat_array_bounds_check( i32 %len3260, i32 %_lhs3252 )
  %elt_ptr3261 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced3258, i32 0, i32 1, i32 %_lhs3252
  %_lhs3262 = load i32* %elt_ptr3261
  call void @print_int( i32 %_lhs3262 )
  %strval3264 = load i8** @_oat_string3263
  call void @print_string( i8* %strval3264 )
  %_lhs3265 = load i32* %j3249
  %bop3266 = add i32 %_lhs3265, 1
  store i32 %bop3266, i32* %j3249
  br label %__cond872

__fresh876:
  br label %__post870

__post870:
  %strval3268 = load i8** @_oat_string3267
  call void @print_string( i8* %strval3268 )
  %_lhs3269 = load i32* %i3245
  %bop3270 = add i32 %_lhs3269, 1
  store i32 %bop3270, i32* %i3245
  br label %__cond869

__fresh877:
  br label %__post867

__post867:
  ret void
}


define i32 @dot3 ({ i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %a13207, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %a23205, i32 %row3203, i32 %col3201){

__fresh864:
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
  br label %__cond863

__cond863:
  %_lhs3211 = load i32* %k3210
  %bop3212 = icmp slt i32 %_lhs3211, 3
  br i1 %bop3212, label %__body862, label %__post861

__fresh865:
  br label %__body862

__body862:
  %_lhs3213 = load i32* %sum3209
  %_lhs3214 = load i32* %k3210
  %array_dereferenced3220 = load { i32, [ 0 x i32 ] }** %elt_ptr3219
  %_lhs3215 = load i32* %row_slot3204
  %array_dereferenced3216 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a1_slot3208
  %len_ptr3217 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array_dereferenced3216, i32 0, i32 0
  %len3218 = load i32* %len_ptr3217
  call void @oat_array_bounds_check( i32 %len3218, i32 %_lhs3215 )
  %elt_ptr3219 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array_dereferenced3216, i32 0, i32 1, i32 %_lhs3215
  %len_ptr3221 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced3220, i32 0, i32 0
  %len3222 = load i32* %len_ptr3221
  call void @oat_array_bounds_check( i32 %len3222, i32 %_lhs3214 )
  %elt_ptr3223 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced3220, i32 0, i32 1, i32 %_lhs3214
  %_lhs3224 = load i32* %elt_ptr3223
  %_lhs3225 = load i32* %col_slot3202
  %array_dereferenced3231 = load { i32, [ 0 x i32 ] }** %elt_ptr3230
  %_lhs3226 = load i32* %k3210
  %array_dereferenced3227 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a2_slot3206
  %len_ptr3228 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array_dereferenced3227, i32 0, i32 0
  %len3229 = load i32* %len_ptr3228
  call void @oat_array_bounds_check( i32 %len3229, i32 %_lhs3226 )
  %elt_ptr3230 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array_dereferenced3227, i32 0, i32 1, i32 %_lhs3226
  %len_ptr3232 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced3231, i32 0, i32 0
  %len3233 = load i32* %len_ptr3232
  call void @oat_array_bounds_check( i32 %len3233, i32 %_lhs3225 )
  %elt_ptr3234 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced3231, i32 0, i32 1, i32 %_lhs3225
  %_lhs3235 = load i32* %elt_ptr3234
  %bop3236 = mul i32 %_lhs3224, %_lhs3235
  %bop3237 = add i32 %_lhs3213, %bop3236
  store i32 %bop3237, i32* %sum3209
  %_lhs3238 = load i32* %k3210
  %bop3239 = add i32 %_lhs3238, 1
  store i32 %bop3239, i32* %k3210
  br label %__cond863

__fresh866:
  br label %__post861

__post861:
  %_lhs3240 = load i32* %sum3209
  ret i32 %_lhs3240
}


define void @matrix_MultAlt ({ i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %a13174, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %a23172, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %a33170){

__fresh856:
  %a1_slot3175 = alloca { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }*
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %a13174, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a1_slot3175
  %a2_slot3173 = alloca { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }*
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %a23172, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a2_slot3173
  %a3_slot3171 = alloca { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }*
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %a33170, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a3_slot3171
  %i3176 = alloca i32
  store i32 0, i32* %i3176
  br label %__cond852

__cond852:
  %_lhs3177 = load i32* %i3176
  %bop3178 = icmp slt i32 %_lhs3177, 2
  br i1 %bop3178, label %__body851, label %__post850

__fresh857:
  br label %__body851

__body851:
  %j3179 = alloca i32
  store i32 0, i32* %j3179
  br label %__cond855

__cond855:
  %_lhs3180 = load i32* %j3179
  %bop3181 = icmp slt i32 %_lhs3180, 4
  br i1 %bop3181, label %__body854, label %__post853

__fresh858:
  br label %__body854

__body854:
  %_lhs3182 = load i32* %j3179
  %array_dereferenced3188 = load { i32, [ 0 x i32 ] }** %elt_ptr3187
  %_lhs3183 = load i32* %i3176
  %array_dereferenced3184 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a3_slot3171
  %len_ptr3185 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array_dereferenced3184, i32 0, i32 0
  %len3186 = load i32* %len_ptr3185
  call void @oat_array_bounds_check( i32 %len3186, i32 %_lhs3183 )
  %elt_ptr3187 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array_dereferenced3184, i32 0, i32 1, i32 %_lhs3183
  %len_ptr3189 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced3188, i32 0, i32 0
  %len3190 = load i32* %len_ptr3189
  call void @oat_array_bounds_check( i32 %len3190, i32 %_lhs3182 )
  %elt_ptr3191 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced3188, i32 0, i32 1, i32 %_lhs3182
  %_lhs3195 = load i32* %j3179
  %_lhs3194 = load i32* %i3176
  %_lhs3193 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a2_slot3173
  %_lhs3192 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a1_slot3175
  %ret3196 = call i32 @dot3 ( { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %_lhs3192, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %_lhs3193, i32 %_lhs3194, i32 %_lhs3195 )
  store i32 %ret3196, i32* %elt_ptr3191
  %_lhs3197 = load i32* %j3179
  %bop3198 = add i32 %_lhs3197, 1
  store i32 %bop3198, i32* %j3179
  br label %__cond855

__fresh859:
  br label %__post853

__post853:
  %_lhs3199 = load i32* %i3176
  %bop3200 = add i32 %_lhs3199, 1
  store i32 %bop3200, i32* %i3176
  br label %__cond852

__fresh860:
  br label %__post850

__post850:
  ret void
}


define void @matrix_Mult ({ i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %a13108, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %a23106, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %a33104){

__fresh843:
  %a1_slot3109 = alloca { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }*
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %a13108, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a1_slot3109
  %a2_slot3107 = alloca { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }*
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %a23106, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a2_slot3107
  %a3_slot3105 = alloca { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }*
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %a33104, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a3_slot3105
  %i3110 = alloca i32
  store i32 0, i32* %i3110
  br label %__cond836

__cond836:
  %_lhs3111 = load i32* %i3110
  %bop3112 = icmp slt i32 %_lhs3111, 2
  br i1 %bop3112, label %__body835, label %__post834

__fresh844:
  br label %__body835

__body835:
  %j3113 = alloca i32
  store i32 0, i32* %j3113
  br label %__cond839

__cond839:
  %_lhs3114 = load i32* %j3113
  %bop3115 = icmp slt i32 %_lhs3114, 4
  br i1 %bop3115, label %__body838, label %__post837

__fresh845:
  br label %__body838

__body838:
  %k3116 = alloca i32
  store i32 0, i32* %k3116
  br label %__cond842

__cond842:
  %_lhs3117 = load i32* %k3116
  %bop3118 = icmp slt i32 %_lhs3117, 3
  br i1 %bop3118, label %__body841, label %__post840

__fresh846:
  br label %__body841

__body841:
  %_lhs3119 = load i32* %j3113
  %array_dereferenced3125 = load { i32, [ 0 x i32 ] }** %elt_ptr3124
  %_lhs3120 = load i32* %i3110
  %array_dereferenced3121 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a3_slot3105
  %len_ptr3122 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array_dereferenced3121, i32 0, i32 0
  %len3123 = load i32* %len_ptr3122
  call void @oat_array_bounds_check( i32 %len3123, i32 %_lhs3120 )
  %elt_ptr3124 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array_dereferenced3121, i32 0, i32 1, i32 %_lhs3120
  %len_ptr3126 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced3125, i32 0, i32 0
  %len3127 = load i32* %len_ptr3126
  call void @oat_array_bounds_check( i32 %len3127, i32 %_lhs3119 )
  %elt_ptr3128 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced3125, i32 0, i32 1, i32 %_lhs3119
  %_lhs3129 = load i32* %j3113
  %array_dereferenced3135 = load { i32, [ 0 x i32 ] }** %elt_ptr3134
  %_lhs3130 = load i32* %i3110
  %array_dereferenced3131 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a3_slot3105
  %len_ptr3132 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array_dereferenced3131, i32 0, i32 0
  %len3133 = load i32* %len_ptr3132
  call void @oat_array_bounds_check( i32 %len3133, i32 %_lhs3130 )
  %elt_ptr3134 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array_dereferenced3131, i32 0, i32 1, i32 %_lhs3130
  %len_ptr3136 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced3135, i32 0, i32 0
  %len3137 = load i32* %len_ptr3136
  call void @oat_array_bounds_check( i32 %len3137, i32 %_lhs3129 )
  %elt_ptr3138 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced3135, i32 0, i32 1, i32 %_lhs3129
  %_lhs3139 = load i32* %elt_ptr3138
  %_lhs3140 = load i32* %k3116
  %array_dereferenced3146 = load { i32, [ 0 x i32 ] }** %elt_ptr3145
  %_lhs3141 = load i32* %i3110
  %array_dereferenced3142 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a1_slot3109
  %len_ptr3143 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array_dereferenced3142, i32 0, i32 0
  %len3144 = load i32* %len_ptr3143
  call void @oat_array_bounds_check( i32 %len3144, i32 %_lhs3141 )
  %elt_ptr3145 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array_dereferenced3142, i32 0, i32 1, i32 %_lhs3141
  %len_ptr3147 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced3146, i32 0, i32 0
  %len3148 = load i32* %len_ptr3147
  call void @oat_array_bounds_check( i32 %len3148, i32 %_lhs3140 )
  %elt_ptr3149 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced3146, i32 0, i32 1, i32 %_lhs3140
  %_lhs3150 = load i32* %elt_ptr3149
  %_lhs3151 = load i32* %j3113
  %array_dereferenced3157 = load { i32, [ 0 x i32 ] }** %elt_ptr3156
  %_lhs3152 = load i32* %k3116
  %array_dereferenced3153 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a2_slot3107
  %len_ptr3154 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array_dereferenced3153, i32 0, i32 0
  %len3155 = load i32* %len_ptr3154
  call void @oat_array_bounds_check( i32 %len3155, i32 %_lhs3152 )
  %elt_ptr3156 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array_dereferenced3153, i32 0, i32 1, i32 %_lhs3152
  %len_ptr3158 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced3157, i32 0, i32 0
  %len3159 = load i32* %len_ptr3158
  call void @oat_array_bounds_check( i32 %len3159, i32 %_lhs3151 )
  %elt_ptr3160 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced3157, i32 0, i32 1, i32 %_lhs3151
  %_lhs3161 = load i32* %elt_ptr3160
  %bop3162 = mul i32 %_lhs3150, %_lhs3161
  %bop3163 = add i32 %_lhs3139, %bop3162
  store i32 %bop3163, i32* %elt_ptr3128
  %_lhs3164 = load i32* %k3116
  %bop3165 = add i32 %_lhs3164, 1
  store i32 %bop3165, i32* %k3116
  br label %__cond842

__fresh847:
  br label %__post840

__post840:
  %_lhs3166 = load i32* %j3113
  %bop3167 = add i32 %_lhs3166, 1
  store i32 %bop3167, i32* %j3113
  br label %__cond839

__fresh848:
  br label %__post837

__post837:
  %_lhs3168 = load i32* %i3110
  %bop3169 = add i32 %_lhs3168, 1
  store i32 %bop3169, i32* %i3110
  br label %__cond836

__fresh849:
  br label %__post834

__post834:
  ret void
}


define i32 @program (i32 %argc3038, { i32, [ 0 x i8* ] }* %argv3036){

__fresh833:
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


