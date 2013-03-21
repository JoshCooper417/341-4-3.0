declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@_oat_string3302.str. = private unnamed_addr constant [ 2 x i8 ] c "
\00", align 4
@_oat_string3302 = global i8* getelementptr inbounds ([ 2 x i8 ]* @_oat_string3302.str., i32 0, i32 0), align 4
@_oat_string3298.str. = private unnamed_addr constant [ 2 x i8 ] c " \00", align 4
@_oat_string3298 = global i8* getelementptr inbounds ([ 2 x i8 ]* @_oat_string3298.str., i32 0, i32 0), align 4
define void @oat_init (){

__fresh1168:
  ret void
}


define void @prnNx4 ({ i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %ar3278, i32 %n3276){

__fresh1163:
  %ar_slot3279 = alloca { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }*
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %ar3278, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %ar_slot3279
  %n_slot3277 = alloca i32
  store i32 %n3276, i32* %n_slot3277
  %i3280 = alloca i32
  store i32 0, i32* %i3280
  br label %__cond1159

__cond1159:
  %_lhs3281 = load i32* %i3280
  %_lhs3282 = load i32* %n_slot3277
  %bop3283 = icmp slt i32 %_lhs3281, %_lhs3282
  br i1 %bop3283, label %__body1158, label %__post1157

__fresh1164:
  br label %__body1158

__body1158:
  %j3284 = alloca i32
  store i32 0, i32* %j3284
  br label %__cond1162

__cond1162:
  %_lhs3285 = load i32* %j3284
  %bop3286 = icmp slt i32 %_lhs3285, 4
  br i1 %bop3286, label %__body1161, label %__post1160

__fresh1165:
  br label %__body1161

__body1161:
  %_lhs3288 = load i32* %i3280
  %array_dereferenced3289 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %ar_slot3279
  %len_ptr3290 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array_dereferenced3289, i32 0, i32 0
  %len3291 = load i32* %len_ptr3290
  call void @oat_array_bounds_check( i32 %len3291, i32 %_lhs3288 )
  %elt_ptr3292 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array_dereferenced3289, i32 0, i32 1, i32 %_lhs3288
  %_lhs3287 = load i32* %j3284
  %array_dereferenced3293 = load { i32, [ 0 x i32 ] }** %elt_ptr3292
  %len_ptr3294 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced3293, i32 0, i32 0
  %len3295 = load i32* %len_ptr3294
  call void @oat_array_bounds_check( i32 %len3295, i32 %_lhs3287 )
  %elt_ptr3296 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced3293, i32 0, i32 1, i32 %_lhs3287
  %_lhs3297 = load i32* %elt_ptr3296
  call void @print_int( i32 %_lhs3297 )
  %strval3299 = load i8** @_oat_string3298
  call void @print_string( i8* %strval3299 )
  %_lhs3300 = load i32* %j3284
  %bop3301 = add i32 %_lhs3300, 1
  store i32 %bop3301, i32* %j3284
  br label %__cond1162

__fresh1166:
  br label %__post1160

__post1160:
  %strval3303 = load i8** @_oat_string3302
  call void @print_string( i8* %strval3303 )
  %_lhs3304 = load i32* %i3280
  %bop3305 = add i32 %_lhs3304, 1
  store i32 %bop3305, i32* %i3280
  br label %__cond1159

__fresh1167:
  br label %__post1157

__post1157:
  ret void
}


define i32 @dot3 ({ i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %a13242, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %a23240, i32 %row3238, i32 %col3236){

__fresh1154:
  %a1_slot3243 = alloca { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }*
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %a13242, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a1_slot3243
  %a2_slot3241 = alloca { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }*
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %a23240, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a2_slot3241
  %row_slot3239 = alloca i32
  store i32 %row3238, i32* %row_slot3239
  %col_slot3237 = alloca i32
  store i32 %col3236, i32* %col_slot3237
  %sum3244 = alloca i32
  store i32 0, i32* %sum3244
  %k3245 = alloca i32
  store i32 0, i32* %k3245
  br label %__cond1153

__cond1153:
  %_lhs3246 = load i32* %k3245
  %bop3247 = icmp slt i32 %_lhs3246, 3
  br i1 %bop3247, label %__body1152, label %__post1151

__fresh1155:
  br label %__body1152

__body1152:
  %_lhs3248 = load i32* %sum3244
  %_lhs3250 = load i32* %row_slot3239
  %array_dereferenced3251 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a1_slot3243
  %len_ptr3252 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array_dereferenced3251, i32 0, i32 0
  %len3253 = load i32* %len_ptr3252
  call void @oat_array_bounds_check( i32 %len3253, i32 %_lhs3250 )
  %elt_ptr3254 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array_dereferenced3251, i32 0, i32 1, i32 %_lhs3250
  %_lhs3249 = load i32* %k3245
  %array_dereferenced3255 = load { i32, [ 0 x i32 ] }** %elt_ptr3254
  %len_ptr3256 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced3255, i32 0, i32 0
  %len3257 = load i32* %len_ptr3256
  call void @oat_array_bounds_check( i32 %len3257, i32 %_lhs3249 )
  %elt_ptr3258 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced3255, i32 0, i32 1, i32 %_lhs3249
  %_lhs3259 = load i32* %elt_ptr3258
  %_lhs3261 = load i32* %k3245
  %array_dereferenced3262 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a2_slot3241
  %len_ptr3263 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array_dereferenced3262, i32 0, i32 0
  %len3264 = load i32* %len_ptr3263
  call void @oat_array_bounds_check( i32 %len3264, i32 %_lhs3261 )
  %elt_ptr3265 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array_dereferenced3262, i32 0, i32 1, i32 %_lhs3261
  %_lhs3260 = load i32* %col_slot3237
  %array_dereferenced3266 = load { i32, [ 0 x i32 ] }** %elt_ptr3265
  %len_ptr3267 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced3266, i32 0, i32 0
  %len3268 = load i32* %len_ptr3267
  call void @oat_array_bounds_check( i32 %len3268, i32 %_lhs3260 )
  %elt_ptr3269 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced3266, i32 0, i32 1, i32 %_lhs3260
  %_lhs3270 = load i32* %elt_ptr3269
  %bop3271 = mul i32 %_lhs3259, %_lhs3270
  %bop3272 = add i32 %_lhs3248, %bop3271
  store i32 %bop3272, i32* %sum3244
  %_lhs3273 = load i32* %k3245
  %bop3274 = add i32 %_lhs3273, 1
  store i32 %bop3274, i32* %k3245
  br label %__cond1153

__fresh1156:
  br label %__post1151

__post1151:
  %_lhs3275 = load i32* %sum3244
  ret i32 %_lhs3275
}


define void @matrix_MultAlt ({ i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %a13209, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %a23207, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %a33205){

__fresh1146:
  %a1_slot3210 = alloca { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }*
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %a13209, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a1_slot3210
  %a2_slot3208 = alloca { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }*
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %a23207, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a2_slot3208
  %a3_slot3206 = alloca { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }*
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %a33205, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a3_slot3206
  %i3211 = alloca i32
  store i32 0, i32* %i3211
  br label %__cond1142

__cond1142:
  %_lhs3212 = load i32* %i3211
  %bop3213 = icmp slt i32 %_lhs3212, 2
  br i1 %bop3213, label %__body1141, label %__post1140

__fresh1147:
  br label %__body1141

__body1141:
  %j3214 = alloca i32
  store i32 0, i32* %j3214
  br label %__cond1145

__cond1145:
  %_lhs3215 = load i32* %j3214
  %bop3216 = icmp slt i32 %_lhs3215, 4
  br i1 %bop3216, label %__body1144, label %__post1143

__fresh1148:
  br label %__body1144

__body1144:
  %_lhs3218 = load i32* %i3211
  %array_dereferenced3219 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a3_slot3206
  %len_ptr3220 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array_dereferenced3219, i32 0, i32 0
  %len3221 = load i32* %len_ptr3220
  call void @oat_array_bounds_check( i32 %len3221, i32 %_lhs3218 )
  %elt_ptr3222 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array_dereferenced3219, i32 0, i32 1, i32 %_lhs3218
  %_lhs3217 = load i32* %j3214
  %array_dereferenced3223 = load { i32, [ 0 x i32 ] }** %elt_ptr3222
  %len_ptr3224 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced3223, i32 0, i32 0
  %len3225 = load i32* %len_ptr3224
  call void @oat_array_bounds_check( i32 %len3225, i32 %_lhs3217 )
  %elt_ptr3226 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced3223, i32 0, i32 1, i32 %_lhs3217
  %_lhs3230 = load i32* %j3214
  %_lhs3229 = load i32* %i3211
  %_lhs3228 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a2_slot3208
  %_lhs3227 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a1_slot3210
  %ret3231 = call i32 @dot3 ( { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %_lhs3227, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %_lhs3228, i32 %_lhs3229, i32 %_lhs3230 )
  store i32 %ret3231, i32* %elt_ptr3226
  %_lhs3232 = load i32* %j3214
  %bop3233 = add i32 %_lhs3232, 1
  store i32 %bop3233, i32* %j3214
  br label %__cond1145

__fresh1149:
  br label %__post1143

__post1143:
  %_lhs3234 = load i32* %i3211
  %bop3235 = add i32 %_lhs3234, 1
  store i32 %bop3235, i32* %i3211
  br label %__cond1142

__fresh1150:
  br label %__post1140

__post1140:
  ret void
}


define void @matrix_Mult ({ i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %a13143, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %a23141, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %a33139){

__fresh1133:
  %a1_slot3144 = alloca { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }*
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %a13143, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a1_slot3144
  %a2_slot3142 = alloca { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }*
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %a23141, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a2_slot3142
  %a3_slot3140 = alloca { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }*
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %a33139, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a3_slot3140
  %i3145 = alloca i32
  store i32 0, i32* %i3145
  br label %__cond1126

__cond1126:
  %_lhs3146 = load i32* %i3145
  %bop3147 = icmp slt i32 %_lhs3146, 2
  br i1 %bop3147, label %__body1125, label %__post1124

__fresh1134:
  br label %__body1125

__body1125:
  %j3148 = alloca i32
  store i32 0, i32* %j3148
  br label %__cond1129

__cond1129:
  %_lhs3149 = load i32* %j3148
  %bop3150 = icmp slt i32 %_lhs3149, 4
  br i1 %bop3150, label %__body1128, label %__post1127

__fresh1135:
  br label %__body1128

__body1128:
  %k3151 = alloca i32
  store i32 0, i32* %k3151
  br label %__cond1132

__cond1132:
  %_lhs3152 = load i32* %k3151
  %bop3153 = icmp slt i32 %_lhs3152, 3
  br i1 %bop3153, label %__body1131, label %__post1130

__fresh1136:
  br label %__body1131

__body1131:
  %_lhs3155 = load i32* %i3145
  %array_dereferenced3156 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a3_slot3140
  %len_ptr3157 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array_dereferenced3156, i32 0, i32 0
  %len3158 = load i32* %len_ptr3157
  call void @oat_array_bounds_check( i32 %len3158, i32 %_lhs3155 )
  %elt_ptr3159 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array_dereferenced3156, i32 0, i32 1, i32 %_lhs3155
  %_lhs3154 = load i32* %j3148
  %array_dereferenced3160 = load { i32, [ 0 x i32 ] }** %elt_ptr3159
  %len_ptr3161 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced3160, i32 0, i32 0
  %len3162 = load i32* %len_ptr3161
  call void @oat_array_bounds_check( i32 %len3162, i32 %_lhs3154 )
  %elt_ptr3163 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced3160, i32 0, i32 1, i32 %_lhs3154
  %_lhs3165 = load i32* %i3145
  %array_dereferenced3166 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a3_slot3140
  %len_ptr3167 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array_dereferenced3166, i32 0, i32 0
  %len3168 = load i32* %len_ptr3167
  call void @oat_array_bounds_check( i32 %len3168, i32 %_lhs3165 )
  %elt_ptr3169 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array_dereferenced3166, i32 0, i32 1, i32 %_lhs3165
  %_lhs3164 = load i32* %j3148
  %array_dereferenced3170 = load { i32, [ 0 x i32 ] }** %elt_ptr3169
  %len_ptr3171 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced3170, i32 0, i32 0
  %len3172 = load i32* %len_ptr3171
  call void @oat_array_bounds_check( i32 %len3172, i32 %_lhs3164 )
  %elt_ptr3173 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced3170, i32 0, i32 1, i32 %_lhs3164
  %_lhs3174 = load i32* %elt_ptr3173
  %_lhs3176 = load i32* %i3145
  %array_dereferenced3177 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a1_slot3144
  %len_ptr3178 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array_dereferenced3177, i32 0, i32 0
  %len3179 = load i32* %len_ptr3178
  call void @oat_array_bounds_check( i32 %len3179, i32 %_lhs3176 )
  %elt_ptr3180 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array_dereferenced3177, i32 0, i32 1, i32 %_lhs3176
  %_lhs3175 = load i32* %k3151
  %array_dereferenced3181 = load { i32, [ 0 x i32 ] }** %elt_ptr3180
  %len_ptr3182 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced3181, i32 0, i32 0
  %len3183 = load i32* %len_ptr3182
  call void @oat_array_bounds_check( i32 %len3183, i32 %_lhs3175 )
  %elt_ptr3184 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced3181, i32 0, i32 1, i32 %_lhs3175
  %_lhs3185 = load i32* %elt_ptr3184
  %_lhs3187 = load i32* %k3151
  %array_dereferenced3188 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a2_slot3142
  %len_ptr3189 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array_dereferenced3188, i32 0, i32 0
  %len3190 = load i32* %len_ptr3189
  call void @oat_array_bounds_check( i32 %len3190, i32 %_lhs3187 )
  %elt_ptr3191 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array_dereferenced3188, i32 0, i32 1, i32 %_lhs3187
  %_lhs3186 = load i32* %j3148
  %array_dereferenced3192 = load { i32, [ 0 x i32 ] }** %elt_ptr3191
  %len_ptr3193 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced3192, i32 0, i32 0
  %len3194 = load i32* %len_ptr3193
  call void @oat_array_bounds_check( i32 %len3194, i32 %_lhs3186 )
  %elt_ptr3195 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced3192, i32 0, i32 1, i32 %_lhs3186
  %_lhs3196 = load i32* %elt_ptr3195
  %bop3197 = mul i32 %_lhs3185, %_lhs3196
  %bop3198 = add i32 %_lhs3174, %bop3197
  store i32 %bop3198, i32* %elt_ptr3163
  %_lhs3199 = load i32* %k3151
  %bop3200 = add i32 %_lhs3199, 1
  store i32 %bop3200, i32* %k3151
  br label %__cond1132

__fresh1137:
  br label %__post1130

__post1130:
  %_lhs3201 = load i32* %j3148
  %bop3202 = add i32 %_lhs3201, 1
  store i32 %bop3202, i32* %j3148
  br label %__cond1129

__fresh1138:
  br label %__post1127

__post1127:
  %_lhs3203 = load i32* %i3145
  %bop3204 = add i32 %_lhs3203, 1
  store i32 %bop3204, i32* %i3145
  br label %__cond1126

__fresh1139:
  br label %__post1124

__post1124:
  ret void
}


define i32 @program (i32 %argc3073, { i32, [ 0 x i8* ] }* %argv3071){

__fresh1123:
  %argc_slot3074 = alloca i32
  store i32 %argc3073, i32* %argc_slot3074
  %argv_slot3072 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv3071, { i32, [ 0 x i8* ] }** %argv_slot3072
  %array_ptr3075 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array3076 = bitcast { i32, [ 0 x i32 ] }* %array_ptr3075 to { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* 
  %array_ptr3077 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 3 )
  %array3078 = bitcast { i32, [ 0 x i32 ] }* %array_ptr3077 to { i32, [ 0 x i32 ] }* 
  %index_ptr3079 = getelementptr { i32, [ 0 x i32 ] }* %array3078, i32 0, i32 1, i32 0
  store i32 1, i32* %index_ptr3079
  %index_ptr3080 = getelementptr { i32, [ 0 x i32 ] }* %array3078, i32 0, i32 1, i32 1
  store i32 3, i32* %index_ptr3080
  %index_ptr3081 = getelementptr { i32, [ 0 x i32 ] }* %array3078, i32 0, i32 1, i32 2
  store i32 4, i32* %index_ptr3081
  %index_ptr3082 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array3076, i32 0, i32 1, i32 0
  store { i32, [ 0 x i32 ] }* %array3078, { i32, [ 0 x i32 ] }** %index_ptr3082
  %array_ptr3083 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 3 )
  %array3084 = bitcast { i32, [ 0 x i32 ] }* %array_ptr3083 to { i32, [ 0 x i32 ] }* 
  %index_ptr3085 = getelementptr { i32, [ 0 x i32 ] }* %array3084, i32 0, i32 1, i32 0
  store i32 2, i32* %index_ptr3085
  %index_ptr3086 = getelementptr { i32, [ 0 x i32 ] }* %array3084, i32 0, i32 1, i32 1
  store i32 0, i32* %index_ptr3086
  %index_ptr3087 = getelementptr { i32, [ 0 x i32 ] }* %array3084, i32 0, i32 1, i32 2
  store i32 1, i32* %index_ptr3087
  %index_ptr3088 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array3076, i32 0, i32 1, i32 1
  store { i32, [ 0 x i32 ] }* %array3084, { i32, [ 0 x i32 ] }** %index_ptr3088
  %a3089 = alloca { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }*
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array3076, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a3089
  %array_ptr3090 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 3 )
  %array3091 = bitcast { i32, [ 0 x i32 ] }* %array_ptr3090 to { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* 
  %array_ptr3092 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 4 )
  %array3093 = bitcast { i32, [ 0 x i32 ] }* %array_ptr3092 to { i32, [ 0 x i32 ] }* 
  %index_ptr3094 = getelementptr { i32, [ 0 x i32 ] }* %array3093, i32 0, i32 1, i32 0
  store i32 1, i32* %index_ptr3094
  %index_ptr3095 = getelementptr { i32, [ 0 x i32 ] }* %array3093, i32 0, i32 1, i32 1
  store i32 2, i32* %index_ptr3095
  %index_ptr3096 = getelementptr { i32, [ 0 x i32 ] }* %array3093, i32 0, i32 1, i32 2
  store i32 3, i32* %index_ptr3096
  %index_ptr3097 = getelementptr { i32, [ 0 x i32 ] }* %array3093, i32 0, i32 1, i32 3
  store i32 1, i32* %index_ptr3097
  %index_ptr3098 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array3091, i32 0, i32 1, i32 0
  store { i32, [ 0 x i32 ] }* %array3093, { i32, [ 0 x i32 ] }** %index_ptr3098
  %array_ptr3099 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 4 )
  %array3100 = bitcast { i32, [ 0 x i32 ] }* %array_ptr3099 to { i32, [ 0 x i32 ] }* 
  %index_ptr3101 = getelementptr { i32, [ 0 x i32 ] }* %array3100, i32 0, i32 1, i32 0
  store i32 2, i32* %index_ptr3101
  %index_ptr3102 = getelementptr { i32, [ 0 x i32 ] }* %array3100, i32 0, i32 1, i32 1
  store i32 2, i32* %index_ptr3102
  %index_ptr3103 = getelementptr { i32, [ 0 x i32 ] }* %array3100, i32 0, i32 1, i32 2
  store i32 2, i32* %index_ptr3103
  %index_ptr3104 = getelementptr { i32, [ 0 x i32 ] }* %array3100, i32 0, i32 1, i32 3
  store i32 2, i32* %index_ptr3104
  %index_ptr3105 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array3091, i32 0, i32 1, i32 1
  store { i32, [ 0 x i32 ] }* %array3100, { i32, [ 0 x i32 ] }** %index_ptr3105
  %array_ptr3106 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 4 )
  %array3107 = bitcast { i32, [ 0 x i32 ] }* %array_ptr3106 to { i32, [ 0 x i32 ] }* 
  %index_ptr3108 = getelementptr { i32, [ 0 x i32 ] }* %array3107, i32 0, i32 1, i32 0
  store i32 3, i32* %index_ptr3108
  %index_ptr3109 = getelementptr { i32, [ 0 x i32 ] }* %array3107, i32 0, i32 1, i32 1
  store i32 2, i32* %index_ptr3109
  %index_ptr3110 = getelementptr { i32, [ 0 x i32 ] }* %array3107, i32 0, i32 1, i32 2
  store i32 1, i32* %index_ptr3110
  %index_ptr3111 = getelementptr { i32, [ 0 x i32 ] }* %array3107, i32 0, i32 1, i32 3
  store i32 4, i32* %index_ptr3111
  %index_ptr3112 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array3091, i32 0, i32 1, i32 2
  store { i32, [ 0 x i32 ] }* %array3107, { i32, [ 0 x i32 ] }** %index_ptr3112
  %b3113 = alloca { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }*
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array3091, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %b3113
  %array_ptr3114 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array3115 = bitcast { i32, [ 0 x i32 ] }* %array_ptr3114 to { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* 
  %array_ptr3116 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 4 )
  %array3117 = bitcast { i32, [ 0 x i32 ] }* %array_ptr3116 to { i32, [ 0 x i32 ] }* 
  %index_ptr3118 = getelementptr { i32, [ 0 x i32 ] }* %array3117, i32 0, i32 1, i32 0
  store i32 0, i32* %index_ptr3118
  %index_ptr3119 = getelementptr { i32, [ 0 x i32 ] }* %array3117, i32 0, i32 1, i32 1
  store i32 0, i32* %index_ptr3119
  %index_ptr3120 = getelementptr { i32, [ 0 x i32 ] }* %array3117, i32 0, i32 1, i32 2
  store i32 0, i32* %index_ptr3120
  %index_ptr3121 = getelementptr { i32, [ 0 x i32 ] }* %array3117, i32 0, i32 1, i32 3
  store i32 0, i32* %index_ptr3121
  %index_ptr3122 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array3115, i32 0, i32 1, i32 0
  store { i32, [ 0 x i32 ] }* %array3117, { i32, [ 0 x i32 ] }** %index_ptr3122
  %array_ptr3123 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 4 )
  %array3124 = bitcast { i32, [ 0 x i32 ] }* %array_ptr3123 to { i32, [ 0 x i32 ] }* 
  %index_ptr3125 = getelementptr { i32, [ 0 x i32 ] }* %array3124, i32 0, i32 1, i32 0
  store i32 0, i32* %index_ptr3125
  %index_ptr3126 = getelementptr { i32, [ 0 x i32 ] }* %array3124, i32 0, i32 1, i32 1
  store i32 0, i32* %index_ptr3126
  %index_ptr3127 = getelementptr { i32, [ 0 x i32 ] }* %array3124, i32 0, i32 1, i32 2
  store i32 0, i32* %index_ptr3127
  %index_ptr3128 = getelementptr { i32, [ 0 x i32 ] }* %array3124, i32 0, i32 1, i32 3
  store i32 0, i32* %index_ptr3128
  %index_ptr3129 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array3115, i32 0, i32 1, i32 1
  store { i32, [ 0 x i32 ] }* %array3124, { i32, [ 0 x i32 ] }** %index_ptr3129
  %c3130 = alloca { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }*
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array3115, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %c3130
  %_lhs3133 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %c3130
  %_lhs3132 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %b3113
  %_lhs3131 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a3089
  call void @matrix_Mult( { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %_lhs3131, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %_lhs3132, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %_lhs3133 )
  %_lhs3134 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %c3130
  call void @prnNx4( { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %_lhs3134, i32 2 )
  %_lhs3137 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %c3130
  %_lhs3136 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %b3113
  %_lhs3135 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a3089
  call void @matrix_MultAlt( { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %_lhs3135, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %_lhs3136, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %_lhs3137 )
  %_lhs3138 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %c3130
  call void @prnNx4( { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %_lhs3138, i32 2 )
  ret i32 0
}


