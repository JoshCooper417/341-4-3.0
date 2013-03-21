declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
define void @oat_init (){

__fresh585:
  ret void
}


define i32 @program (i32 %argc3196, { i32, [ 0 x i8* ] }* %argv3194){

__fresh582:
  %argc_slot3197 = alloca i32
  store i32 %argc3196, i32* %argc_slot3197
  %argv_slot3195 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv3194, { i32, [ 0 x i8* ] }** %argv_slot3195
  %array_ptr3198 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 8 )
  %array3199 = bitcast { i32, [ 0 x i32 ] }* %array_ptr3198 to { i32, [ 0 x i32 ] }* 
  %index_ptr3200 = getelementptr { i32, [ 0 x i32 ] }* %array3199, i32 0, i32 1, i32 0
  store i32 5, i32* %index_ptr3200
  %index_ptr3201 = getelementptr { i32, [ 0 x i32 ] }* %array3199, i32 0, i32 1, i32 1
  store i32 200, i32* %index_ptr3201
  %index_ptr3202 = getelementptr { i32, [ 0 x i32 ] }* %array3199, i32 0, i32 1, i32 2
  store i32 1, i32* %index_ptr3202
  %index_ptr3203 = getelementptr { i32, [ 0 x i32 ] }* %array3199, i32 0, i32 1, i32 3
  store i32 65, i32* %index_ptr3203
  %index_ptr3204 = getelementptr { i32, [ 0 x i32 ] }* %array3199, i32 0, i32 1, i32 4
  store i32 30, i32* %index_ptr3204
  %index_ptr3205 = getelementptr { i32, [ 0 x i32 ] }* %array3199, i32 0, i32 1, i32 5
  store i32 99, i32* %index_ptr3205
  %index_ptr3206 = getelementptr { i32, [ 0 x i32 ] }* %array3199, i32 0, i32 1, i32 6
  store i32 2, i32* %index_ptr3206
  %index_ptr3207 = getelementptr { i32, [ 0 x i32 ] }* %array3199, i32 0, i32 1, i32 7
  store i32 0, i32* %index_ptr3207
  %ar3208 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %array3199, { i32, [ 0 x i32 ] }** %ar3208
  %_lhs3209 = load { i32, [ 0 x i32 ] }** %ar3208
  call void @selectionsort( { i32, [ 0 x i32 ] }* %_lhs3209, i32 8 )
  %i3210 = alloca i32
  store i32 0, i32* %i3210
  br label %__cond581

__cond581:
  %_lhs3211 = load i32* %i3210
  %bop3212 = icmp slt i32 %_lhs3211, 8
  br i1 %bop3212, label %__body580, label %__post579

__fresh583:
  br label %__body580

__body580:
  %_lhs3213 = load i32* %i3210
  %len_ptr3214 = getelementptr { i32, [ 0 x i32 ] }** %ar3208, i32 0, i32 0
  %len3215 = load i32* %len_ptr3214
  call void @oat_array_bounds_check( i32 %len3215, i32 %_lhs3213 )
  %array_dereferenced3216 = load { i32, [ 0 x i32 ] }** %ar3208
  %elt_ptr3217 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced3216, i32 0, i32 1, i32 %_lhs3213
  %_lhs3218 = load i32* %elt_ptr3217
  call void @print_int( i32 %_lhs3218 )
  %_lhs3219 = load i32* %i3210
  %bop3220 = add i32 %_lhs3219, 1
  store i32 %bop3220, i32* %i3210
  br label %__cond581

__fresh584:
  br label %__post579

__post579:
  ret i32 0
}


define void @selectionsort ({ i32, [ 0 x i32 ] }* %a3157, i32 %s3155){

__fresh576:
  %a_slot3158 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %a3157, { i32, [ 0 x i32 ] }** %a_slot3158
  %s_slot3156 = alloca i32
  store i32 %s3155, i32* %s_slot3156
  %t3159 = alloca i32
  store i32 0, i32* %t3159
  %mi3160 = alloca i32
  store i32 0, i32* %mi3160
  %i3161 = alloca i32
  store i32 0, i32* %i3161
  br label %__cond575

__cond575:
  %_lhs3162 = load i32* %i3161
  %_lhs3163 = load i32* %s_slot3156
  %bop3164 = icmp slt i32 %_lhs3162, %_lhs3163
  br i1 %bop3164, label %__body574, label %__post573

__fresh577:
  br label %__body574

__body574:
  %_lhs3167 = load i32* %s_slot3156
  %_lhs3166 = load i32* %i3161
  %_lhs3165 = load { i32, [ 0 x i32 ] }** %a_slot3158
  %ret3168 = call i32 @getminindex ( { i32, [ 0 x i32 ] }* %_lhs3165, i32 %_lhs3166, i32 %_lhs3167 )
  store i32 %ret3168, i32* %mi3160
  %_lhs3169 = load i32* %i3161
  %len_ptr3170 = getelementptr { i32, [ 0 x i32 ] }** %a_slot3158, i32 0, i32 0
  %len3171 = load i32* %len_ptr3170
  call void @oat_array_bounds_check( i32 %len3171, i32 %_lhs3169 )
  %array_dereferenced3172 = load { i32, [ 0 x i32 ] }** %a_slot3158
  %elt_ptr3173 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced3172, i32 0, i32 1, i32 %_lhs3169
  %_lhs3174 = load i32* %elt_ptr3173
  store i32 %_lhs3174, i32* %t3159
  %_lhs3175 = load i32* %i3161
  %len_ptr3176 = getelementptr { i32, [ 0 x i32 ] }** %a_slot3158, i32 0, i32 0
  %len3177 = load i32* %len_ptr3176
  call void @oat_array_bounds_check( i32 %len3177, i32 %_lhs3175 )
  %array_dereferenced3178 = load { i32, [ 0 x i32 ] }** %a_slot3158
  %elt_ptr3179 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced3178, i32 0, i32 1, i32 %_lhs3175
  %_lhs3180 = load i32* %mi3160
  %len_ptr3181 = getelementptr { i32, [ 0 x i32 ] }** %a_slot3158, i32 0, i32 0
  %len3182 = load i32* %len_ptr3181
  call void @oat_array_bounds_check( i32 %len3182, i32 %_lhs3180 )
  %array_dereferenced3183 = load { i32, [ 0 x i32 ] }** %a_slot3158
  %elt_ptr3184 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced3183, i32 0, i32 1, i32 %_lhs3180
  %_lhs3185 = load i32* %elt_ptr3184
  store i32 %_lhs3185, i32* %elt_ptr3179
  %_lhs3186 = load i32* %mi3160
  %len_ptr3187 = getelementptr { i32, [ 0 x i32 ] }** %a_slot3158, i32 0, i32 0
  %len3188 = load i32* %len_ptr3187
  call void @oat_array_bounds_check( i32 %len3188, i32 %_lhs3186 )
  %array_dereferenced3189 = load { i32, [ 0 x i32 ] }** %a_slot3158
  %elt_ptr3190 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced3189, i32 0, i32 1, i32 %_lhs3186
  %_lhs3191 = load i32* %t3159
  store i32 %_lhs3191, i32* %elt_ptr3190
  %_lhs3192 = load i32* %i3161
  %bop3193 = add i32 %_lhs3192, 1
  store i32 %bop3193, i32* %i3161
  br label %__cond575

__fresh578:
  br label %__post573

__post573:
  ret void
}


define i32 @getminindex ({ i32, [ 0 x i32 ] }* %a3121, i32 %s3119, i32 %b3117){

__fresh568:
  %a_slot3122 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %a3121, { i32, [ 0 x i32 ] }** %a_slot3122
  %s_slot3120 = alloca i32
  store i32 %s3119, i32* %s_slot3120
  %b_slot3118 = alloca i32
  store i32 %b3117, i32* %b_slot3118
  %_lhs3123 = load i32* %s_slot3120
  %i3124 = alloca i32
  store i32 %_lhs3123, i32* %i3124
  %_lhs3125 = load i32* %s_slot3120
  %len_ptr3126 = getelementptr { i32, [ 0 x i32 ] }** %a_slot3122, i32 0, i32 0
  %len3127 = load i32* %len_ptr3126
  call void @oat_array_bounds_check( i32 %len3127, i32 %_lhs3125 )
  %array_dereferenced3128 = load { i32, [ 0 x i32 ] }** %a_slot3122
  %elt_ptr3129 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced3128, i32 0, i32 1, i32 %_lhs3125
  %_lhs3130 = load i32* %elt_ptr3129
  %min3131 = alloca i32
  store i32 %_lhs3130, i32* %min3131
  %_lhs3132 = load i32* %s_slot3120
  %mi3133 = alloca i32
  store i32 %_lhs3132, i32* %mi3133
  br label %__cond564

__cond564:
  %_lhs3134 = load i32* %i3124
  %_lhs3135 = load i32* %b_slot3118
  %bop3136 = icmp slt i32 %_lhs3134, %_lhs3135
  br i1 %bop3136, label %__body563, label %__post562

__fresh569:
  br label %__body563

__body563:
  %_lhs3137 = load i32* %i3124
  %len_ptr3138 = getelementptr { i32, [ 0 x i32 ] }** %a_slot3122, i32 0, i32 0
  %len3139 = load i32* %len_ptr3138
  call void @oat_array_bounds_check( i32 %len3139, i32 %_lhs3137 )
  %array_dereferenced3140 = load { i32, [ 0 x i32 ] }** %a_slot3122
  %elt_ptr3141 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced3140, i32 0, i32 1, i32 %_lhs3137
  %_lhs3142 = load i32* %elt_ptr3141
  %_lhs3143 = load i32* %min3131
  %bop3144 = icmp slt i32 %_lhs3142, %_lhs3143
  br i1 %bop3144, label %__then567, label %__else566

__fresh570:
  br label %__then567

__then567:
  %_lhs3145 = load i32* %i3124
  %len_ptr3146 = getelementptr { i32, [ 0 x i32 ] }** %a_slot3122, i32 0, i32 0
  %len3147 = load i32* %len_ptr3146
  call void @oat_array_bounds_check( i32 %len3147, i32 %_lhs3145 )
  %array_dereferenced3148 = load { i32, [ 0 x i32 ] }** %a_slot3122
  %elt_ptr3149 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced3148, i32 0, i32 1, i32 %_lhs3145
  %_lhs3150 = load i32* %elt_ptr3149
  store i32 %_lhs3150, i32* %min3131
  %_lhs3151 = load i32* %i3124
  store i32 %_lhs3151, i32* %mi3133
  br label %__merge565

__fresh571:
  br label %__else566

__else566:
  br label %__merge565

__merge565:
  %_lhs3152 = load i32* %i3124
  %bop3153 = add i32 %_lhs3152, 1
  store i32 %bop3153, i32* %i3124
  br label %__cond564

__fresh572:
  br label %__post562

__post562:
  %_lhs3154 = load i32* %mi3133
  ret i32 %_lhs3154
}


