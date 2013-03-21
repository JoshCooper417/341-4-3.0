declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@_oat_string3277.str. = private unnamed_addr constant [ 2 x i8 ] c "
\00", align 4
@_oat_string3277 = global i8* getelementptr inbounds ([ 2 x i8 ]* @_oat_string3277.str., i32 0, i32 0), align 4
@_oat_string3273.str. = private unnamed_addr constant [ 2 x i8 ] c " \00", align 4
@_oat_string3273 = global i8* getelementptr inbounds ([ 2 x i8 ]* @_oat_string3273.str., i32 0, i32 0), align 4
define void @oat_init (){

__fresh1168:
  ret void
}


define void @prnNx4 ({ i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %ar3253, i32 %n3251){

__fresh1163:
  %ar_slot3254 = alloca { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }*
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %ar3253, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %ar_slot3254
  %n_slot3252 = alloca i32
  store i32 %n3251, i32* %n_slot3252
  %i3255 = alloca i32
  store i32 0, i32* %i3255
  br label %__cond1159

__cond1159:
  %_lhs3256 = load i32* %i3255
  %_lhs3257 = load i32* %n_slot3252
  %bop3258 = icmp slt i32 %_lhs3256, %_lhs3257
  br i1 %bop3258, label %__body1158, label %__post1157

__fresh1164:
  br label %__body1158

__body1158:
  %j3259 = alloca i32
  store i32 0, i32* %j3259
  br label %__cond1162

__cond1162:
  %_lhs3260 = load i32* %j3259
  %bop3261 = icmp slt i32 %_lhs3260, 4
  br i1 %bop3261, label %__body1161, label %__post1160

__fresh1165:
  br label %__body1161

__body1161:
  %_lhs3263 = load i32* %i3255
  %array_dereferenced3264 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %ar_slot3254
  %len_ptr3265 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array_dereferenced3264, i32 0, i32 0
  %len3266 = load i32* %len_ptr3265
  call void @oat_array_bounds_check( i32 %len3266, i32 %_lhs3263 )
  %elt_ptr3267 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array_dereferenced3264, i32 0, i32 1, i32 %_lhs3263
  %_lhs3262 = load i32* %j3259
  %array_dereferenced3268 = load { i32, [ 0 x i32 ] }** %elt_ptr3267
  %len_ptr3269 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced3268, i32 0, i32 0
  %len3270 = load i32* %len_ptr3269
  call void @oat_array_bounds_check( i32 %len3270, i32 %_lhs3262 )
  %elt_ptr3271 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced3268, i32 0, i32 1, i32 %_lhs3262
  %_lhs3272 = load i32* %elt_ptr3271
  call void @print_int( i32 %_lhs3272 )
  %strval3274 = load i8** @_oat_string3273
  call void @print_string( i8* %strval3274 )
  %_lhs3275 = load i32* %j3259
  %bop3276 = add i32 %_lhs3275, 1
  store i32 %bop3276, i32* %j3259
  br label %__cond1162

__fresh1166:
  br label %__post1160

__post1160:
  %strval3278 = load i8** @_oat_string3277
  call void @print_string( i8* %strval3278 )
  %_lhs3279 = load i32* %i3255
  %bop3280 = add i32 %_lhs3279, 1
  store i32 %bop3280, i32* %i3255
  br label %__cond1159

__fresh1167:
  br label %__post1157

__post1157:
  ret void
}


define i32 @dot3 ({ i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %a13217, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %a23215, i32 %row3213, i32 %col3211){

__fresh1154:
  %a1_slot3218 = alloca { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }*
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %a13217, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a1_slot3218
  %a2_slot3216 = alloca { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }*
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %a23215, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a2_slot3216
  %row_slot3214 = alloca i32
  store i32 %row3213, i32* %row_slot3214
  %col_slot3212 = alloca i32
  store i32 %col3211, i32* %col_slot3212
  %sum3219 = alloca i32
  store i32 0, i32* %sum3219
  %k3220 = alloca i32
  store i32 0, i32* %k3220
  br label %__cond1153

__cond1153:
  %_lhs3221 = load i32* %k3220
  %bop3222 = icmp slt i32 %_lhs3221, 3
  br i1 %bop3222, label %__body1152, label %__post1151

__fresh1155:
  br label %__body1152

__body1152:
  %_lhs3223 = load i32* %sum3219
  %_lhs3225 = load i32* %row_slot3214
  %array_dereferenced3226 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a1_slot3218
  %len_ptr3227 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array_dereferenced3226, i32 0, i32 0
  %len3228 = load i32* %len_ptr3227
  call void @oat_array_bounds_check( i32 %len3228, i32 %_lhs3225 )
  %elt_ptr3229 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array_dereferenced3226, i32 0, i32 1, i32 %_lhs3225
  %_lhs3224 = load i32* %k3220
  %array_dereferenced3230 = load { i32, [ 0 x i32 ] }** %elt_ptr3229
  %len_ptr3231 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced3230, i32 0, i32 0
  %len3232 = load i32* %len_ptr3231
  call void @oat_array_bounds_check( i32 %len3232, i32 %_lhs3224 )
  %elt_ptr3233 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced3230, i32 0, i32 1, i32 %_lhs3224
  %_lhs3234 = load i32* %elt_ptr3233
  %_lhs3236 = load i32* %k3220
  %array_dereferenced3237 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a2_slot3216
  %len_ptr3238 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array_dereferenced3237, i32 0, i32 0
  %len3239 = load i32* %len_ptr3238
  call void @oat_array_bounds_check( i32 %len3239, i32 %_lhs3236 )
  %elt_ptr3240 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array_dereferenced3237, i32 0, i32 1, i32 %_lhs3236
  %_lhs3235 = load i32* %col_slot3212
  %array_dereferenced3241 = load { i32, [ 0 x i32 ] }** %elt_ptr3240
  %len_ptr3242 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced3241, i32 0, i32 0
  %len3243 = load i32* %len_ptr3242
  call void @oat_array_bounds_check( i32 %len3243, i32 %_lhs3235 )
  %elt_ptr3244 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced3241, i32 0, i32 1, i32 %_lhs3235
  %_lhs3245 = load i32* %elt_ptr3244
  %bop3246 = mul i32 %_lhs3234, %_lhs3245
  %bop3247 = add i32 %_lhs3223, %bop3246
  store i32 %bop3247, i32* %sum3219
  %_lhs3248 = load i32* %k3220
  %bop3249 = add i32 %_lhs3248, 1
  store i32 %bop3249, i32* %k3220
  br label %__cond1153

__fresh1156:
  br label %__post1151

__post1151:
  %_lhs3250 = load i32* %sum3219
  ret i32 %_lhs3250
}


define void @matrix_MultAlt ({ i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %a13184, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %a23182, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %a33180){

__fresh1146:
  %a1_slot3185 = alloca { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }*
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %a13184, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a1_slot3185
  %a2_slot3183 = alloca { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }*
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %a23182, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a2_slot3183
  %a3_slot3181 = alloca { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }*
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %a33180, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a3_slot3181
  %i3186 = alloca i32
  store i32 0, i32* %i3186
  br label %__cond1142

__cond1142:
  %_lhs3187 = load i32* %i3186
  %bop3188 = icmp slt i32 %_lhs3187, 2
  br i1 %bop3188, label %__body1141, label %__post1140

__fresh1147:
  br label %__body1141

__body1141:
  %j3189 = alloca i32
  store i32 0, i32* %j3189
  br label %__cond1145

__cond1145:
  %_lhs3190 = load i32* %j3189
  %bop3191 = icmp slt i32 %_lhs3190, 4
  br i1 %bop3191, label %__body1144, label %__post1143

__fresh1148:
  br label %__body1144

__body1144:
  %_lhs3193 = load i32* %i3186
  %array_dereferenced3194 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a3_slot3181
  %len_ptr3195 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array_dereferenced3194, i32 0, i32 0
  %len3196 = load i32* %len_ptr3195
  call void @oat_array_bounds_check( i32 %len3196, i32 %_lhs3193 )
  %elt_ptr3197 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array_dereferenced3194, i32 0, i32 1, i32 %_lhs3193
  %_lhs3192 = load i32* %j3189
  %array_dereferenced3198 = load { i32, [ 0 x i32 ] }** %elt_ptr3197
  %len_ptr3199 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced3198, i32 0, i32 0
  %len3200 = load i32* %len_ptr3199
  call void @oat_array_bounds_check( i32 %len3200, i32 %_lhs3192 )
  %elt_ptr3201 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced3198, i32 0, i32 1, i32 %_lhs3192
  %_lhs3205 = load i32* %j3189
  %_lhs3204 = load i32* %i3186
  %_lhs3203 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a2_slot3183
  %_lhs3202 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a1_slot3185
  %ret3206 = call i32 @dot3 ( { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %_lhs3202, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %_lhs3203, i32 %_lhs3204, i32 %_lhs3205 )
  store i32 %ret3206, i32* %elt_ptr3201
  %_lhs3207 = load i32* %j3189
  %bop3208 = add i32 %_lhs3207, 1
  store i32 %bop3208, i32* %j3189
  br label %__cond1145

__fresh1149:
  br label %__post1143

__post1143:
  %_lhs3209 = load i32* %i3186
  %bop3210 = add i32 %_lhs3209, 1
  store i32 %bop3210, i32* %i3186
  br label %__cond1142

__fresh1150:
  br label %__post1140

__post1140:
  ret void
}


define void @matrix_Mult ({ i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %a13118, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %a23116, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %a33114){

__fresh1133:
  %a1_slot3119 = alloca { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }*
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %a13118, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a1_slot3119
  %a2_slot3117 = alloca { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }*
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %a23116, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a2_slot3117
  %a3_slot3115 = alloca { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }*
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %a33114, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a3_slot3115
  %i3120 = alloca i32
  store i32 0, i32* %i3120
  br label %__cond1126

__cond1126:
  %_lhs3121 = load i32* %i3120
  %bop3122 = icmp slt i32 %_lhs3121, 2
  br i1 %bop3122, label %__body1125, label %__post1124

__fresh1134:
  br label %__body1125

__body1125:
  %j3123 = alloca i32
  store i32 0, i32* %j3123
  br label %__cond1129

__cond1129:
  %_lhs3124 = load i32* %j3123
  %bop3125 = icmp slt i32 %_lhs3124, 4
  br i1 %bop3125, label %__body1128, label %__post1127

__fresh1135:
  br label %__body1128

__body1128:
  %k3126 = alloca i32
  store i32 0, i32* %k3126
  br label %__cond1132

__cond1132:
  %_lhs3127 = load i32* %k3126
  %bop3128 = icmp slt i32 %_lhs3127, 3
  br i1 %bop3128, label %__body1131, label %__post1130

__fresh1136:
  br label %__body1131

__body1131:
  %_lhs3130 = load i32* %i3120
  %array_dereferenced3131 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a3_slot3115
  %len_ptr3132 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array_dereferenced3131, i32 0, i32 0
  %len3133 = load i32* %len_ptr3132
  call void @oat_array_bounds_check( i32 %len3133, i32 %_lhs3130 )
  %elt_ptr3134 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array_dereferenced3131, i32 0, i32 1, i32 %_lhs3130
  %_lhs3129 = load i32* %j3123
  %array_dereferenced3135 = load { i32, [ 0 x i32 ] }** %elt_ptr3134
  %len_ptr3136 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced3135, i32 0, i32 0
  %len3137 = load i32* %len_ptr3136
  call void @oat_array_bounds_check( i32 %len3137, i32 %_lhs3129 )
  %elt_ptr3138 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced3135, i32 0, i32 1, i32 %_lhs3129
  %_lhs3140 = load i32* %i3120
  %array_dereferenced3141 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a3_slot3115
  %len_ptr3142 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array_dereferenced3141, i32 0, i32 0
  %len3143 = load i32* %len_ptr3142
  call void @oat_array_bounds_check( i32 %len3143, i32 %_lhs3140 )
  %elt_ptr3144 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array_dereferenced3141, i32 0, i32 1, i32 %_lhs3140
  %_lhs3139 = load i32* %j3123
  %array_dereferenced3145 = load { i32, [ 0 x i32 ] }** %elt_ptr3144
  %len_ptr3146 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced3145, i32 0, i32 0
  %len3147 = load i32* %len_ptr3146
  call void @oat_array_bounds_check( i32 %len3147, i32 %_lhs3139 )
  %elt_ptr3148 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced3145, i32 0, i32 1, i32 %_lhs3139
  %_lhs3149 = load i32* %elt_ptr3148
  %_lhs3151 = load i32* %i3120
  %array_dereferenced3152 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a1_slot3119
  %len_ptr3153 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array_dereferenced3152, i32 0, i32 0
  %len3154 = load i32* %len_ptr3153
  call void @oat_array_bounds_check( i32 %len3154, i32 %_lhs3151 )
  %elt_ptr3155 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array_dereferenced3152, i32 0, i32 1, i32 %_lhs3151
  %_lhs3150 = load i32* %k3126
  %array_dereferenced3156 = load { i32, [ 0 x i32 ] }** %elt_ptr3155
  %len_ptr3157 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced3156, i32 0, i32 0
  %len3158 = load i32* %len_ptr3157
  call void @oat_array_bounds_check( i32 %len3158, i32 %_lhs3150 )
  %elt_ptr3159 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced3156, i32 0, i32 1, i32 %_lhs3150
  %_lhs3160 = load i32* %elt_ptr3159
  %_lhs3162 = load i32* %k3126
  %array_dereferenced3163 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a2_slot3117
  %len_ptr3164 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array_dereferenced3163, i32 0, i32 0
  %len3165 = load i32* %len_ptr3164
  call void @oat_array_bounds_check( i32 %len3165, i32 %_lhs3162 )
  %elt_ptr3166 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array_dereferenced3163, i32 0, i32 1, i32 %_lhs3162
  %_lhs3161 = load i32* %j3123
  %array_dereferenced3167 = load { i32, [ 0 x i32 ] }** %elt_ptr3166
  %len_ptr3168 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced3167, i32 0, i32 0
  %len3169 = load i32* %len_ptr3168
  call void @oat_array_bounds_check( i32 %len3169, i32 %_lhs3161 )
  %elt_ptr3170 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced3167, i32 0, i32 1, i32 %_lhs3161
  %_lhs3171 = load i32* %elt_ptr3170
  %bop3172 = mul i32 %_lhs3160, %_lhs3171
  %bop3173 = add i32 %_lhs3149, %bop3172
  store i32 %bop3173, i32* %elt_ptr3138
  %_lhs3174 = load i32* %k3126
  %bop3175 = add i32 %_lhs3174, 1
  store i32 %bop3175, i32* %k3126
  br label %__cond1132

__fresh1137:
  br label %__post1130

__post1130:
  %_lhs3176 = load i32* %j3123
  %bop3177 = add i32 %_lhs3176, 1
  store i32 %bop3177, i32* %j3123
  br label %__cond1129

__fresh1138:
  br label %__post1127

__post1127:
  %_lhs3178 = load i32* %i3120
  %bop3179 = add i32 %_lhs3178, 1
  store i32 %bop3179, i32* %i3120
  br label %__cond1126

__fresh1139:
  br label %__post1124

__post1124:
  ret void
}


define i32 @program (i32 %argc3048, { i32, [ 0 x i8* ] }* %argv3046){

__fresh1123:
  %argc_slot3049 = alloca i32
  store i32 %argc3048, i32* %argc_slot3049
  %argv_slot3047 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv3046, { i32, [ 0 x i8* ] }** %argv_slot3047
  %array_ptr3050 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array3051 = bitcast { i32, [ 0 x i32 ] }* %array_ptr3050 to { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* 
  %array_ptr3052 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 3 )
  %array3053 = bitcast { i32, [ 0 x i32 ] }* %array_ptr3052 to { i32, [ 0 x i32 ] }* 
  %index_ptr3054 = getelementptr { i32, [ 0 x i32 ] }* %array3053, i32 0, i32 1, i32 0
  store i32 1, i32* %index_ptr3054
  %index_ptr3055 = getelementptr { i32, [ 0 x i32 ] }* %array3053, i32 0, i32 1, i32 1
  store i32 3, i32* %index_ptr3055
  %index_ptr3056 = getelementptr { i32, [ 0 x i32 ] }* %array3053, i32 0, i32 1, i32 2
  store i32 4, i32* %index_ptr3056
  %index_ptr3057 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array3051, i32 0, i32 1, i32 0
  store { i32, [ 0 x i32 ] }* %array3053, { i32, [ 0 x i32 ] }** %index_ptr3057
  %array_ptr3058 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 3 )
  %array3059 = bitcast { i32, [ 0 x i32 ] }* %array_ptr3058 to { i32, [ 0 x i32 ] }* 
  %index_ptr3060 = getelementptr { i32, [ 0 x i32 ] }* %array3059, i32 0, i32 1, i32 0
  store i32 2, i32* %index_ptr3060
  %index_ptr3061 = getelementptr { i32, [ 0 x i32 ] }* %array3059, i32 0, i32 1, i32 1
  store i32 0, i32* %index_ptr3061
  %index_ptr3062 = getelementptr { i32, [ 0 x i32 ] }* %array3059, i32 0, i32 1, i32 2
  store i32 1, i32* %index_ptr3062
  %index_ptr3063 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array3051, i32 0, i32 1, i32 1
  store { i32, [ 0 x i32 ] }* %array3059, { i32, [ 0 x i32 ] }** %index_ptr3063
  %a3064 = alloca { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }*
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array3051, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a3064
  %array_ptr3065 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 3 )
  %array3066 = bitcast { i32, [ 0 x i32 ] }* %array_ptr3065 to { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* 
  %array_ptr3067 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 4 )
  %array3068 = bitcast { i32, [ 0 x i32 ] }* %array_ptr3067 to { i32, [ 0 x i32 ] }* 
  %index_ptr3069 = getelementptr { i32, [ 0 x i32 ] }* %array3068, i32 0, i32 1, i32 0
  store i32 1, i32* %index_ptr3069
  %index_ptr3070 = getelementptr { i32, [ 0 x i32 ] }* %array3068, i32 0, i32 1, i32 1
  store i32 2, i32* %index_ptr3070
  %index_ptr3071 = getelementptr { i32, [ 0 x i32 ] }* %array3068, i32 0, i32 1, i32 2
  store i32 3, i32* %index_ptr3071
  %index_ptr3072 = getelementptr { i32, [ 0 x i32 ] }* %array3068, i32 0, i32 1, i32 3
  store i32 1, i32* %index_ptr3072
  %index_ptr3073 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array3066, i32 0, i32 1, i32 0
  store { i32, [ 0 x i32 ] }* %array3068, { i32, [ 0 x i32 ] }** %index_ptr3073
  %array_ptr3074 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 4 )
  %array3075 = bitcast { i32, [ 0 x i32 ] }* %array_ptr3074 to { i32, [ 0 x i32 ] }* 
  %index_ptr3076 = getelementptr { i32, [ 0 x i32 ] }* %array3075, i32 0, i32 1, i32 0
  store i32 2, i32* %index_ptr3076
  %index_ptr3077 = getelementptr { i32, [ 0 x i32 ] }* %array3075, i32 0, i32 1, i32 1
  store i32 2, i32* %index_ptr3077
  %index_ptr3078 = getelementptr { i32, [ 0 x i32 ] }* %array3075, i32 0, i32 1, i32 2
  store i32 2, i32* %index_ptr3078
  %index_ptr3079 = getelementptr { i32, [ 0 x i32 ] }* %array3075, i32 0, i32 1, i32 3
  store i32 2, i32* %index_ptr3079
  %index_ptr3080 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array3066, i32 0, i32 1, i32 1
  store { i32, [ 0 x i32 ] }* %array3075, { i32, [ 0 x i32 ] }** %index_ptr3080
  %array_ptr3081 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 4 )
  %array3082 = bitcast { i32, [ 0 x i32 ] }* %array_ptr3081 to { i32, [ 0 x i32 ] }* 
  %index_ptr3083 = getelementptr { i32, [ 0 x i32 ] }* %array3082, i32 0, i32 1, i32 0
  store i32 3, i32* %index_ptr3083
  %index_ptr3084 = getelementptr { i32, [ 0 x i32 ] }* %array3082, i32 0, i32 1, i32 1
  store i32 2, i32* %index_ptr3084
  %index_ptr3085 = getelementptr { i32, [ 0 x i32 ] }* %array3082, i32 0, i32 1, i32 2
  store i32 1, i32* %index_ptr3085
  %index_ptr3086 = getelementptr { i32, [ 0 x i32 ] }* %array3082, i32 0, i32 1, i32 3
  store i32 4, i32* %index_ptr3086
  %index_ptr3087 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array3066, i32 0, i32 1, i32 2
  store { i32, [ 0 x i32 ] }* %array3082, { i32, [ 0 x i32 ] }** %index_ptr3087
  %b3088 = alloca { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }*
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array3066, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %b3088
  %array_ptr3089 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array3090 = bitcast { i32, [ 0 x i32 ] }* %array_ptr3089 to { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* 
  %array_ptr3091 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 4 )
  %array3092 = bitcast { i32, [ 0 x i32 ] }* %array_ptr3091 to { i32, [ 0 x i32 ] }* 
  %index_ptr3093 = getelementptr { i32, [ 0 x i32 ] }* %array3092, i32 0, i32 1, i32 0
  store i32 0, i32* %index_ptr3093
  %index_ptr3094 = getelementptr { i32, [ 0 x i32 ] }* %array3092, i32 0, i32 1, i32 1
  store i32 0, i32* %index_ptr3094
  %index_ptr3095 = getelementptr { i32, [ 0 x i32 ] }* %array3092, i32 0, i32 1, i32 2
  store i32 0, i32* %index_ptr3095
  %index_ptr3096 = getelementptr { i32, [ 0 x i32 ] }* %array3092, i32 0, i32 1, i32 3
  store i32 0, i32* %index_ptr3096
  %index_ptr3097 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array3090, i32 0, i32 1, i32 0
  store { i32, [ 0 x i32 ] }* %array3092, { i32, [ 0 x i32 ] }** %index_ptr3097
  %array_ptr3098 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 4 )
  %array3099 = bitcast { i32, [ 0 x i32 ] }* %array_ptr3098 to { i32, [ 0 x i32 ] }* 
  %index_ptr3100 = getelementptr { i32, [ 0 x i32 ] }* %array3099, i32 0, i32 1, i32 0
  store i32 0, i32* %index_ptr3100
  %index_ptr3101 = getelementptr { i32, [ 0 x i32 ] }* %array3099, i32 0, i32 1, i32 1
  store i32 0, i32* %index_ptr3101
  %index_ptr3102 = getelementptr { i32, [ 0 x i32 ] }* %array3099, i32 0, i32 1, i32 2
  store i32 0, i32* %index_ptr3102
  %index_ptr3103 = getelementptr { i32, [ 0 x i32 ] }* %array3099, i32 0, i32 1, i32 3
  store i32 0, i32* %index_ptr3103
  %index_ptr3104 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array3090, i32 0, i32 1, i32 1
  store { i32, [ 0 x i32 ] }* %array3099, { i32, [ 0 x i32 ] }** %index_ptr3104
  %c3105 = alloca { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }*
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array3090, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %c3105
  %_lhs3108 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %c3105
  %_lhs3107 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %b3088
  %_lhs3106 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a3064
  call void @matrix_Mult( { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %_lhs3106, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %_lhs3107, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %_lhs3108 )
  %_lhs3109 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %c3105
  call void @prnNx4( { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %_lhs3109, i32 2 )
  %_lhs3112 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %c3105
  %_lhs3111 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %b3088
  %_lhs3110 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a3064
  call void @matrix_MultAlt( { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %_lhs3110, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %_lhs3111, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %_lhs3112 )
  %_lhs3113 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %c3105
  call void @prnNx4( { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %_lhs3113, i32 2 )
  ret i32 0
}


