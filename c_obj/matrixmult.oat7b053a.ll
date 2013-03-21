declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@_oat_string3287.str. = private unnamed_addr constant [ 2 x i8 ] c "
\00", align 4
@_oat_string3287 = global i8* getelementptr inbounds ([ 2 x i8 ]* @_oat_string3287.str., i32 0, i32 0), align 4
@_oat_string3283.str. = private unnamed_addr constant [ 2 x i8 ] c " \00", align 4
@_oat_string3283 = global i8* getelementptr inbounds ([ 2 x i8 ]* @_oat_string3283.str., i32 0, i32 0), align 4
define void @oat_init (){

__fresh681:
  ret void
}


define void @prnNx4 ({ i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %ar3263, i32 %n3261){

__fresh676:
  %ar_slot3264 = alloca { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }*
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %ar3263, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %ar_slot3264
  %n_slot3262 = alloca i32
  store i32 %n3261, i32* %n_slot3262
  %i3265 = alloca i32
  store i32 0, i32* %i3265
  br label %__cond672

__cond672:
  %_lhs3266 = load i32* %i3265
  %_lhs3267 = load i32* %n_slot3262
  %bop3268 = icmp slt i32 %_lhs3266, %_lhs3267
  br i1 %bop3268, label %__body671, label %__post670

__fresh677:
  br label %__body671

__body671:
  %j3269 = alloca i32
  store i32 0, i32* %j3269
  br label %__cond675

__cond675:
  %_lhs3270 = load i32* %j3269
  %bop3271 = icmp slt i32 %_lhs3270, 4
  br i1 %bop3271, label %__body674, label %__post673

__fresh678:
  br label %__body674

__body674:
  %_lhs3272 = load i32* %j3269
  %_lhs3273 = load i32* %i3265
  %len_ptr3274 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %ar_slot3264, i32 0, i32 0
  %len3275 = load i32* %len_ptr3274
  call void @oat_array_bounds_check( i32 %len3275, i32 %_lhs3273 )
  %array_dereferenced3276 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %ar_slot3264
  %elt_ptr3277 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array_dereferenced3276, i32 0, i32 1, i32 %_lhs3273
  %len_ptr3278 = getelementptr { i32, [ 0 x i32 ] }** %elt_ptr3277, i32 0, i32 0
  %len3279 = load i32* %len_ptr3278
  call void @oat_array_bounds_check( i32 %len3279, i32 %_lhs3272 )
  %array_dereferenced3280 = load { i32, [ 0 x i32 ] }** %elt_ptr3277
  %elt_ptr3281 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced3280, i32 0, i32 1, i32 %_lhs3272
  %_lhs3282 = load i32* %elt_ptr3281
  call void @print_int( i32 %_lhs3282 )
  %strval3284 = load i8** @_oat_string3283
  call void @print_string( i8* %strval3284 )
  %_lhs3285 = load i32* %j3269
  %bop3286 = add i32 %_lhs3285, 1
  store i32 %bop3286, i32* %j3269
  br label %__cond675

__fresh679:
  br label %__post673

__post673:
  %strval3288 = load i8** @_oat_string3287
  call void @print_string( i8* %strval3288 )
  %_lhs3289 = load i32* %i3265
  %bop3290 = add i32 %_lhs3289, 1
  store i32 %bop3290, i32* %i3265
  br label %__cond672

__fresh680:
  br label %__post670

__post670:
  ret void
}


define i32 @dot3 ({ i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %a13227, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %a23225, i32 %row3223, i32 %col3221){

__fresh667:
  %a1_slot3228 = alloca { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }*
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %a13227, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a1_slot3228
  %a2_slot3226 = alloca { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }*
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %a23225, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a2_slot3226
  %row_slot3224 = alloca i32
  store i32 %row3223, i32* %row_slot3224
  %col_slot3222 = alloca i32
  store i32 %col3221, i32* %col_slot3222
  %sum3229 = alloca i32
  store i32 0, i32* %sum3229
  %k3230 = alloca i32
  store i32 0, i32* %k3230
  br label %__cond666

__cond666:
  %_lhs3231 = load i32* %k3230
  %bop3232 = icmp slt i32 %_lhs3231, 3
  br i1 %bop3232, label %__body665, label %__post664

__fresh668:
  br label %__body665

__body665:
  %_lhs3233 = load i32* %sum3229
  %_lhs3234 = load i32* %k3230
  %_lhs3235 = load i32* %row_slot3224
  %len_ptr3236 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a1_slot3228, i32 0, i32 0
  %len3237 = load i32* %len_ptr3236
  call void @oat_array_bounds_check( i32 %len3237, i32 %_lhs3235 )
  %array_dereferenced3238 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a1_slot3228
  %elt_ptr3239 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array_dereferenced3238, i32 0, i32 1, i32 %_lhs3235
  %len_ptr3240 = getelementptr { i32, [ 0 x i32 ] }** %elt_ptr3239, i32 0, i32 0
  %len3241 = load i32* %len_ptr3240
  call void @oat_array_bounds_check( i32 %len3241, i32 %_lhs3234 )
  %array_dereferenced3242 = load { i32, [ 0 x i32 ] }** %elt_ptr3239
  %elt_ptr3243 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced3242, i32 0, i32 1, i32 %_lhs3234
  %_lhs3244 = load i32* %elt_ptr3243
  %_lhs3245 = load i32* %col_slot3222
  %_lhs3246 = load i32* %k3230
  %len_ptr3247 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a2_slot3226, i32 0, i32 0
  %len3248 = load i32* %len_ptr3247
  call void @oat_array_bounds_check( i32 %len3248, i32 %_lhs3246 )
  %array_dereferenced3249 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a2_slot3226
  %elt_ptr3250 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array_dereferenced3249, i32 0, i32 1, i32 %_lhs3246
  %len_ptr3251 = getelementptr { i32, [ 0 x i32 ] }** %elt_ptr3250, i32 0, i32 0
  %len3252 = load i32* %len_ptr3251
  call void @oat_array_bounds_check( i32 %len3252, i32 %_lhs3245 )
  %array_dereferenced3253 = load { i32, [ 0 x i32 ] }** %elt_ptr3250
  %elt_ptr3254 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced3253, i32 0, i32 1, i32 %_lhs3245
  %_lhs3255 = load i32* %elt_ptr3254
  %bop3256 = mul i32 %_lhs3244, %_lhs3255
  %bop3257 = add i32 %_lhs3233, %bop3256
  store i32 %bop3257, i32* %sum3229
  %_lhs3258 = load i32* %k3230
  %bop3259 = add i32 %_lhs3258, 1
  store i32 %bop3259, i32* %k3230
  br label %__cond666

__fresh669:
  br label %__post664

__post664:
  %_lhs3260 = load i32* %sum3229
  ret i32 %_lhs3260
}


define void @matrix_MultAlt ({ i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %a13194, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %a23192, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %a33190){

__fresh659:
  %a1_slot3195 = alloca { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }*
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %a13194, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a1_slot3195
  %a2_slot3193 = alloca { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }*
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %a23192, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a2_slot3193
  %a3_slot3191 = alloca { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }*
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %a33190, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a3_slot3191
  %i3196 = alloca i32
  store i32 0, i32* %i3196
  br label %__cond655

__cond655:
  %_lhs3197 = load i32* %i3196
  %bop3198 = icmp slt i32 %_lhs3197, 2
  br i1 %bop3198, label %__body654, label %__post653

__fresh660:
  br label %__body654

__body654:
  %j3199 = alloca i32
  store i32 0, i32* %j3199
  br label %__cond658

__cond658:
  %_lhs3200 = load i32* %j3199
  %bop3201 = icmp slt i32 %_lhs3200, 4
  br i1 %bop3201, label %__body657, label %__post656

__fresh661:
  br label %__body657

__body657:
  %_lhs3202 = load i32* %j3199
  %_lhs3203 = load i32* %i3196
  %len_ptr3204 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a3_slot3191, i32 0, i32 0
  %len3205 = load i32* %len_ptr3204
  call void @oat_array_bounds_check( i32 %len3205, i32 %_lhs3203 )
  %array_dereferenced3206 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a3_slot3191
  %elt_ptr3207 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array_dereferenced3206, i32 0, i32 1, i32 %_lhs3203
  %len_ptr3208 = getelementptr { i32, [ 0 x i32 ] }** %elt_ptr3207, i32 0, i32 0
  %len3209 = load i32* %len_ptr3208
  call void @oat_array_bounds_check( i32 %len3209, i32 %_lhs3202 )
  %array_dereferenced3210 = load { i32, [ 0 x i32 ] }** %elt_ptr3207
  %elt_ptr3211 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced3210, i32 0, i32 1, i32 %_lhs3202
  %_lhs3215 = load i32* %j3199
  %_lhs3214 = load i32* %i3196
  %_lhs3213 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a2_slot3193
  %_lhs3212 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a1_slot3195
  %ret3216 = call i32 @dot3 ( { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %_lhs3212, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %_lhs3213, i32 %_lhs3214, i32 %_lhs3215 )
  store i32 %ret3216, i32* %elt_ptr3211
  %_lhs3217 = load i32* %j3199
  %bop3218 = add i32 %_lhs3217, 1
  store i32 %bop3218, i32* %j3199
  br label %__cond658

__fresh662:
  br label %__post656

__post656:
  %_lhs3219 = load i32* %i3196
  %bop3220 = add i32 %_lhs3219, 1
  store i32 %bop3220, i32* %i3196
  br label %__cond655

__fresh663:
  br label %__post653

__post653:
  ret void
}


define void @matrix_Mult ({ i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %a13128, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %a23126, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %a33124){

__fresh646:
  %a1_slot3129 = alloca { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }*
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %a13128, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a1_slot3129
  %a2_slot3127 = alloca { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }*
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %a23126, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a2_slot3127
  %a3_slot3125 = alloca { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }*
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %a33124, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a3_slot3125
  %i3130 = alloca i32
  store i32 0, i32* %i3130
  br label %__cond639

__cond639:
  %_lhs3131 = load i32* %i3130
  %bop3132 = icmp slt i32 %_lhs3131, 2
  br i1 %bop3132, label %__body638, label %__post637

__fresh647:
  br label %__body638

__body638:
  %j3133 = alloca i32
  store i32 0, i32* %j3133
  br label %__cond642

__cond642:
  %_lhs3134 = load i32* %j3133
  %bop3135 = icmp slt i32 %_lhs3134, 4
  br i1 %bop3135, label %__body641, label %__post640

__fresh648:
  br label %__body641

__body641:
  %k3136 = alloca i32
  store i32 0, i32* %k3136
  br label %__cond645

__cond645:
  %_lhs3137 = load i32* %k3136
  %bop3138 = icmp slt i32 %_lhs3137, 3
  br i1 %bop3138, label %__body644, label %__post643

__fresh649:
  br label %__body644

__body644:
  %_lhs3139 = load i32* %j3133
  %_lhs3140 = load i32* %i3130
  %len_ptr3141 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a3_slot3125, i32 0, i32 0
  %len3142 = load i32* %len_ptr3141
  call void @oat_array_bounds_check( i32 %len3142, i32 %_lhs3140 )
  %array_dereferenced3143 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a3_slot3125
  %elt_ptr3144 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array_dereferenced3143, i32 0, i32 1, i32 %_lhs3140
  %len_ptr3145 = getelementptr { i32, [ 0 x i32 ] }** %elt_ptr3144, i32 0, i32 0
  %len3146 = load i32* %len_ptr3145
  call void @oat_array_bounds_check( i32 %len3146, i32 %_lhs3139 )
  %array_dereferenced3147 = load { i32, [ 0 x i32 ] }** %elt_ptr3144
  %elt_ptr3148 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced3147, i32 0, i32 1, i32 %_lhs3139
  %_lhs3149 = load i32* %j3133
  %_lhs3150 = load i32* %i3130
  %len_ptr3151 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a3_slot3125, i32 0, i32 0
  %len3152 = load i32* %len_ptr3151
  call void @oat_array_bounds_check( i32 %len3152, i32 %_lhs3150 )
  %array_dereferenced3153 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a3_slot3125
  %elt_ptr3154 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array_dereferenced3153, i32 0, i32 1, i32 %_lhs3150
  %len_ptr3155 = getelementptr { i32, [ 0 x i32 ] }** %elt_ptr3154, i32 0, i32 0
  %len3156 = load i32* %len_ptr3155
  call void @oat_array_bounds_check( i32 %len3156, i32 %_lhs3149 )
  %array_dereferenced3157 = load { i32, [ 0 x i32 ] }** %elt_ptr3154
  %elt_ptr3158 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced3157, i32 0, i32 1, i32 %_lhs3149
  %_lhs3159 = load i32* %elt_ptr3158
  %_lhs3160 = load i32* %k3136
  %_lhs3161 = load i32* %i3130
  %len_ptr3162 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a1_slot3129, i32 0, i32 0
  %len3163 = load i32* %len_ptr3162
  call void @oat_array_bounds_check( i32 %len3163, i32 %_lhs3161 )
  %array_dereferenced3164 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a1_slot3129
  %elt_ptr3165 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array_dereferenced3164, i32 0, i32 1, i32 %_lhs3161
  %len_ptr3166 = getelementptr { i32, [ 0 x i32 ] }** %elt_ptr3165, i32 0, i32 0
  %len3167 = load i32* %len_ptr3166
  call void @oat_array_bounds_check( i32 %len3167, i32 %_lhs3160 )
  %array_dereferenced3168 = load { i32, [ 0 x i32 ] }** %elt_ptr3165
  %elt_ptr3169 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced3168, i32 0, i32 1, i32 %_lhs3160
  %_lhs3170 = load i32* %elt_ptr3169
  %_lhs3171 = load i32* %j3133
  %_lhs3172 = load i32* %k3136
  %len_ptr3173 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a2_slot3127, i32 0, i32 0
  %len3174 = load i32* %len_ptr3173
  call void @oat_array_bounds_check( i32 %len3174, i32 %_lhs3172 )
  %array_dereferenced3175 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a2_slot3127
  %elt_ptr3176 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array_dereferenced3175, i32 0, i32 1, i32 %_lhs3172
  %len_ptr3177 = getelementptr { i32, [ 0 x i32 ] }** %elt_ptr3176, i32 0, i32 0
  %len3178 = load i32* %len_ptr3177
  call void @oat_array_bounds_check( i32 %len3178, i32 %_lhs3171 )
  %array_dereferenced3179 = load { i32, [ 0 x i32 ] }** %elt_ptr3176
  %elt_ptr3180 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced3179, i32 0, i32 1, i32 %_lhs3171
  %_lhs3181 = load i32* %elt_ptr3180
  %bop3182 = mul i32 %_lhs3170, %_lhs3181
  %bop3183 = add i32 %_lhs3159, %bop3182
  store i32 %bop3183, i32* %elt_ptr3148
  %_lhs3184 = load i32* %k3136
  %bop3185 = add i32 %_lhs3184, 1
  store i32 %bop3185, i32* %k3136
  br label %__cond645

__fresh650:
  br label %__post643

__post643:
  %_lhs3186 = load i32* %j3133
  %bop3187 = add i32 %_lhs3186, 1
  store i32 %bop3187, i32* %j3133
  br label %__cond642

__fresh651:
  br label %__post640

__post640:
  %_lhs3188 = load i32* %i3130
  %bop3189 = add i32 %_lhs3188, 1
  store i32 %bop3189, i32* %i3130
  br label %__cond639

__fresh652:
  br label %__post637

__post637:
  ret void
}


define i32 @program (i32 %argc3058, { i32, [ 0 x i8* ] }* %argv3056){

__fresh636:
  %argc_slot3059 = alloca i32
  store i32 %argc3058, i32* %argc_slot3059
  %argv_slot3057 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv3056, { i32, [ 0 x i8* ] }** %argv_slot3057
  %array_ptr3060 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array3061 = bitcast { i32, [ 0 x i32 ] }* %array_ptr3060 to { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* 
  %array_ptr3062 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 3 )
  %array3063 = bitcast { i32, [ 0 x i32 ] }* %array_ptr3062 to { i32, [ 0 x i32 ] }* 
  %index_ptr3064 = getelementptr { i32, [ 0 x i32 ] }* %array3063, i32 0, i32 1, i32 0
  store i32 1, i32* %index_ptr3064
  %index_ptr3065 = getelementptr { i32, [ 0 x i32 ] }* %array3063, i32 0, i32 1, i32 1
  store i32 3, i32* %index_ptr3065
  %index_ptr3066 = getelementptr { i32, [ 0 x i32 ] }* %array3063, i32 0, i32 1, i32 2
  store i32 4, i32* %index_ptr3066
  %index_ptr3067 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array3061, i32 0, i32 1, i32 0
  store { i32, [ 0 x i32 ] }* %array3063, { i32, [ 0 x i32 ] }** %index_ptr3067
  %array_ptr3068 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 3 )
  %array3069 = bitcast { i32, [ 0 x i32 ] }* %array_ptr3068 to { i32, [ 0 x i32 ] }* 
  %index_ptr3070 = getelementptr { i32, [ 0 x i32 ] }* %array3069, i32 0, i32 1, i32 0
  store i32 2, i32* %index_ptr3070
  %index_ptr3071 = getelementptr { i32, [ 0 x i32 ] }* %array3069, i32 0, i32 1, i32 1
  store i32 0, i32* %index_ptr3071
  %index_ptr3072 = getelementptr { i32, [ 0 x i32 ] }* %array3069, i32 0, i32 1, i32 2
  store i32 1, i32* %index_ptr3072
  %index_ptr3073 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array3061, i32 0, i32 1, i32 1
  store { i32, [ 0 x i32 ] }* %array3069, { i32, [ 0 x i32 ] }** %index_ptr3073
  %a3074 = alloca { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }*
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array3061, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a3074
  %array_ptr3075 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 3 )
  %array3076 = bitcast { i32, [ 0 x i32 ] }* %array_ptr3075 to { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* 
  %array_ptr3077 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 4 )
  %array3078 = bitcast { i32, [ 0 x i32 ] }* %array_ptr3077 to { i32, [ 0 x i32 ] }* 
  %index_ptr3079 = getelementptr { i32, [ 0 x i32 ] }* %array3078, i32 0, i32 1, i32 0
  store i32 1, i32* %index_ptr3079
  %index_ptr3080 = getelementptr { i32, [ 0 x i32 ] }* %array3078, i32 0, i32 1, i32 1
  store i32 2, i32* %index_ptr3080
  %index_ptr3081 = getelementptr { i32, [ 0 x i32 ] }* %array3078, i32 0, i32 1, i32 2
  store i32 3, i32* %index_ptr3081
  %index_ptr3082 = getelementptr { i32, [ 0 x i32 ] }* %array3078, i32 0, i32 1, i32 3
  store i32 1, i32* %index_ptr3082
  %index_ptr3083 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array3076, i32 0, i32 1, i32 0
  store { i32, [ 0 x i32 ] }* %array3078, { i32, [ 0 x i32 ] }** %index_ptr3083
  %array_ptr3084 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 4 )
  %array3085 = bitcast { i32, [ 0 x i32 ] }* %array_ptr3084 to { i32, [ 0 x i32 ] }* 
  %index_ptr3086 = getelementptr { i32, [ 0 x i32 ] }* %array3085, i32 0, i32 1, i32 0
  store i32 2, i32* %index_ptr3086
  %index_ptr3087 = getelementptr { i32, [ 0 x i32 ] }* %array3085, i32 0, i32 1, i32 1
  store i32 2, i32* %index_ptr3087
  %index_ptr3088 = getelementptr { i32, [ 0 x i32 ] }* %array3085, i32 0, i32 1, i32 2
  store i32 2, i32* %index_ptr3088
  %index_ptr3089 = getelementptr { i32, [ 0 x i32 ] }* %array3085, i32 0, i32 1, i32 3
  store i32 2, i32* %index_ptr3089
  %index_ptr3090 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array3076, i32 0, i32 1, i32 1
  store { i32, [ 0 x i32 ] }* %array3085, { i32, [ 0 x i32 ] }** %index_ptr3090
  %array_ptr3091 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 4 )
  %array3092 = bitcast { i32, [ 0 x i32 ] }* %array_ptr3091 to { i32, [ 0 x i32 ] }* 
  %index_ptr3093 = getelementptr { i32, [ 0 x i32 ] }* %array3092, i32 0, i32 1, i32 0
  store i32 3, i32* %index_ptr3093
  %index_ptr3094 = getelementptr { i32, [ 0 x i32 ] }* %array3092, i32 0, i32 1, i32 1
  store i32 2, i32* %index_ptr3094
  %index_ptr3095 = getelementptr { i32, [ 0 x i32 ] }* %array3092, i32 0, i32 1, i32 2
  store i32 1, i32* %index_ptr3095
  %index_ptr3096 = getelementptr { i32, [ 0 x i32 ] }* %array3092, i32 0, i32 1, i32 3
  store i32 4, i32* %index_ptr3096
  %index_ptr3097 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array3076, i32 0, i32 1, i32 2
  store { i32, [ 0 x i32 ] }* %array3092, { i32, [ 0 x i32 ] }** %index_ptr3097
  %b3098 = alloca { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }*
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array3076, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %b3098
  %array_ptr3099 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array3100 = bitcast { i32, [ 0 x i32 ] }* %array_ptr3099 to { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* 
  %array_ptr3101 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 4 )
  %array3102 = bitcast { i32, [ 0 x i32 ] }* %array_ptr3101 to { i32, [ 0 x i32 ] }* 
  %index_ptr3103 = getelementptr { i32, [ 0 x i32 ] }* %array3102, i32 0, i32 1, i32 0
  store i32 0, i32* %index_ptr3103
  %index_ptr3104 = getelementptr { i32, [ 0 x i32 ] }* %array3102, i32 0, i32 1, i32 1
  store i32 0, i32* %index_ptr3104
  %index_ptr3105 = getelementptr { i32, [ 0 x i32 ] }* %array3102, i32 0, i32 1, i32 2
  store i32 0, i32* %index_ptr3105
  %index_ptr3106 = getelementptr { i32, [ 0 x i32 ] }* %array3102, i32 0, i32 1, i32 3
  store i32 0, i32* %index_ptr3106
  %index_ptr3107 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array3100, i32 0, i32 1, i32 0
  store { i32, [ 0 x i32 ] }* %array3102, { i32, [ 0 x i32 ] }** %index_ptr3107
  %array_ptr3108 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 4 )
  %array3109 = bitcast { i32, [ 0 x i32 ] }* %array_ptr3108 to { i32, [ 0 x i32 ] }* 
  %index_ptr3110 = getelementptr { i32, [ 0 x i32 ] }* %array3109, i32 0, i32 1, i32 0
  store i32 0, i32* %index_ptr3110
  %index_ptr3111 = getelementptr { i32, [ 0 x i32 ] }* %array3109, i32 0, i32 1, i32 1
  store i32 0, i32* %index_ptr3111
  %index_ptr3112 = getelementptr { i32, [ 0 x i32 ] }* %array3109, i32 0, i32 1, i32 2
  store i32 0, i32* %index_ptr3112
  %index_ptr3113 = getelementptr { i32, [ 0 x i32 ] }* %array3109, i32 0, i32 1, i32 3
  store i32 0, i32* %index_ptr3113
  %index_ptr3114 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array3100, i32 0, i32 1, i32 1
  store { i32, [ 0 x i32 ] }* %array3109, { i32, [ 0 x i32 ] }** %index_ptr3114
  %c3115 = alloca { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }*
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array3100, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %c3115
  %_lhs3118 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %c3115
  %_lhs3117 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %b3098
  %_lhs3116 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a3074
  call void @matrix_Mult( { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %_lhs3116, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %_lhs3117, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %_lhs3118 )
  %_lhs3119 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %c3115
  call void @prnNx4( { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %_lhs3119, i32 2 )
  %_lhs3122 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %c3115
  %_lhs3121 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %b3098
  %_lhs3120 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a3074
  call void @matrix_MultAlt( { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %_lhs3120, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %_lhs3121, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %_lhs3122 )
  %_lhs3123 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %c3115
  call void @prnNx4( { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %_lhs3123, i32 2 )
  ret i32 0
}


