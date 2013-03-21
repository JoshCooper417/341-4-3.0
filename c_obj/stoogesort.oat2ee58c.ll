declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
define void @oat_init (){

__fresh667:
  ret void
}


define i32 @program (i32 %argc3125, { i32, [ 0 x i8* ] }* %argv3123){

__fresh664:
  %argc_slot3126 = alloca i32
  store i32 %argc3125, i32* %argc_slot3126
  %argv_slot3124 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv3123, { i32, [ 0 x i8* ] }** %argv_slot3124
  %array_ptr3127 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 15 )
  %array3128 = bitcast { i32, [ 0 x i32 ] }* %array_ptr3127 to { i32, [ 0 x i32 ] }* 
  %index_ptr3129 = getelementptr { i32, [ 0 x i32 ] }* %array3128, i32 0, i32 1, i32 0
  store i32 1, i32* %index_ptr3129
  %index_ptr3130 = getelementptr { i32, [ 0 x i32 ] }* %array3128, i32 0, i32 1, i32 1
  store i32 4, i32* %index_ptr3130
  %index_ptr3131 = getelementptr { i32, [ 0 x i32 ] }* %array3128, i32 0, i32 1, i32 2
  store i32 5, i32* %index_ptr3131
  %index_ptr3132 = getelementptr { i32, [ 0 x i32 ] }* %array3128, i32 0, i32 1, i32 3
  store i32 3, i32* %index_ptr3132
  %unop3133 = sub i32 0, 6
  %index_ptr3134 = getelementptr { i32, [ 0 x i32 ] }* %array3128, i32 0, i32 1, i32 4
  store i32 %unop3133, i32* %index_ptr3134
  %index_ptr3135 = getelementptr { i32, [ 0 x i32 ] }* %array3128, i32 0, i32 1, i32 5
  store i32 3, i32* %index_ptr3135
  %index_ptr3136 = getelementptr { i32, [ 0 x i32 ] }* %array3128, i32 0, i32 1, i32 6
  store i32 7, i32* %index_ptr3136
  %index_ptr3137 = getelementptr { i32, [ 0 x i32 ] }* %array3128, i32 0, i32 1, i32 7
  store i32 10, i32* %index_ptr3137
  %unop3138 = sub i32 0, 2
  %index_ptr3139 = getelementptr { i32, [ 0 x i32 ] }* %array3128, i32 0, i32 1, i32 8
  store i32 %unop3138, i32* %index_ptr3139
  %unop3140 = sub i32 0, 5
  %index_ptr3141 = getelementptr { i32, [ 0 x i32 ] }* %array3128, i32 0, i32 1, i32 9
  store i32 %unop3140, i32* %index_ptr3141
  %index_ptr3142 = getelementptr { i32, [ 0 x i32 ] }* %array3128, i32 0, i32 1, i32 10
  store i32 7, i32* %index_ptr3142
  %index_ptr3143 = getelementptr { i32, [ 0 x i32 ] }* %array3128, i32 0, i32 1, i32 11
  store i32 5, i32* %index_ptr3143
  %index_ptr3144 = getelementptr { i32, [ 0 x i32 ] }* %array3128, i32 0, i32 1, i32 12
  store i32 9, i32* %index_ptr3144
  %unop3145 = sub i32 0, 3
  %index_ptr3146 = getelementptr { i32, [ 0 x i32 ] }* %array3128, i32 0, i32 1, i32 13
  store i32 %unop3145, i32* %index_ptr3146
  %index_ptr3147 = getelementptr { i32, [ 0 x i32 ] }* %array3128, i32 0, i32 1, i32 14
  store i32 7, i32* %index_ptr3147
  %nums3148 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %array3128, { i32, [ 0 x i32 ] }** %nums3148
  %i3149 = alloca i32
  store i32 0, i32* %i3149
  %_lhs3150 = load { i32, [ 0 x i32 ] }** %nums3148
  %len_ptr3151 = getelementptr { i32, [ 0 x i32 ] }* %_lhs3150, i32 0, i32 0
  %len3152 = load i32* %len_ptr3151
  %n3153 = alloca i32
  store i32 %len3152, i32* %n3153
  %_lhs3155 = load i32* %n3153
  %bop3156 = sub i32 %_lhs3155, 1
  %_lhs3154 = load { i32, [ 0 x i32 ] }** %nums3148
  call void @stoogeSort( { i32, [ 0 x i32 ] }* %_lhs3154, i32 0, i32 %bop3156 )
  store i32 0, i32* %i3149
  br label %__cond663

__cond663:
  %_lhs3157 = load i32* %i3149
  %_lhs3158 = load i32* %n3153
  %bop3159 = sub i32 %_lhs3158, 1
  %bop3160 = icmp sle i32 %_lhs3157, %bop3159
  br i1 %bop3160, label %__body662, label %__post661

__fresh665:
  br label %__body662

__body662:
  %_lhs3161 = load i32* %i3149
  %len_ptr3162 = getelementptr { i32, [ 0 x i32 ] }** %nums3148, i32 0, i32 0
  %len3163 = load i32* %len_ptr3162
  call void @oat_array_bounds_check( i32 %len3163, i32 %_lhs3161 )
  %array_dereferenced3164 = load { i32, [ 0 x i32 ] }** %nums3148
  %elt_ptr3165 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced3164, i32 0, i32 1, i32 %_lhs3161
  %_lhs3166 = load i32* %elt_ptr3165
  call void @print_int( i32 %_lhs3166 )
  %_lhs3167 = load i32* %i3149
  %bop3168 = add i32 %_lhs3167, 1
  store i32 %bop3168, i32* %i3149
  br label %__cond663

__fresh666:
  br label %__post661

__post661:
  ret i32 0
}


define void @stoogeSort ({ i32, [ 0 x i32 ] }* %a3060, i32 %i3058, i32 %j3056){

__fresh656:
  %a_slot3061 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %a3060, { i32, [ 0 x i32 ] }** %a_slot3061
  %i_slot3059 = alloca i32
  store i32 %i3058, i32* %i_slot3059
  %j_slot3057 = alloca i32
  store i32 %j3056, i32* %j_slot3057
  %t3062 = alloca i32
  store i32 0, i32* %t3062
  %_lhs3063 = load i32* %j_slot3057
  %len_ptr3064 = getelementptr { i32, [ 0 x i32 ] }** %a_slot3061, i32 0, i32 0
  %len3065 = load i32* %len_ptr3064
  call void @oat_array_bounds_check( i32 %len3065, i32 %_lhs3063 )
  %array_dereferenced3066 = load { i32, [ 0 x i32 ] }** %a_slot3061
  %elt_ptr3067 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced3066, i32 0, i32 1, i32 %_lhs3063
  %_lhs3068 = load i32* %elt_ptr3067
  %_lhs3069 = load i32* %i_slot3059
  %len_ptr3070 = getelementptr { i32, [ 0 x i32 ] }** %a_slot3061, i32 0, i32 0
  %len3071 = load i32* %len_ptr3070
  call void @oat_array_bounds_check( i32 %len3071, i32 %_lhs3069 )
  %array_dereferenced3072 = load { i32, [ 0 x i32 ] }** %a_slot3061
  %elt_ptr3073 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced3072, i32 0, i32 1, i32 %_lhs3069
  %_lhs3074 = load i32* %elt_ptr3073
  %bop3075 = icmp slt i32 %_lhs3068, %_lhs3074
  br i1 %bop3075, label %__then652, label %__else651

__fresh657:
  br label %__then652

__then652:
  %_lhs3076 = load i32* %i_slot3059
  %len_ptr3077 = getelementptr { i32, [ 0 x i32 ] }** %a_slot3061, i32 0, i32 0
  %len3078 = load i32* %len_ptr3077
  call void @oat_array_bounds_check( i32 %len3078, i32 %_lhs3076 )
  %array_dereferenced3079 = load { i32, [ 0 x i32 ] }** %a_slot3061
  %elt_ptr3080 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced3079, i32 0, i32 1, i32 %_lhs3076
  %_lhs3081 = load i32* %elt_ptr3080
  store i32 %_lhs3081, i32* %t3062
  %_lhs3082 = load i32* %i_slot3059
  %len_ptr3083 = getelementptr { i32, [ 0 x i32 ] }** %a_slot3061, i32 0, i32 0
  %len3084 = load i32* %len_ptr3083
  call void @oat_array_bounds_check( i32 %len3084, i32 %_lhs3082 )
  %array_dereferenced3085 = load { i32, [ 0 x i32 ] }** %a_slot3061
  %elt_ptr3086 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced3085, i32 0, i32 1, i32 %_lhs3082
  %_lhs3087 = load i32* %j_slot3057
  %len_ptr3088 = getelementptr { i32, [ 0 x i32 ] }** %a_slot3061, i32 0, i32 0
  %len3089 = load i32* %len_ptr3088
  call void @oat_array_bounds_check( i32 %len3089, i32 %_lhs3087 )
  %array_dereferenced3090 = load { i32, [ 0 x i32 ] }** %a_slot3061
  %elt_ptr3091 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced3090, i32 0, i32 1, i32 %_lhs3087
  %_lhs3092 = load i32* %elt_ptr3091
  store i32 %_lhs3092, i32* %elt_ptr3086
  %_lhs3093 = load i32* %j_slot3057
  %len_ptr3094 = getelementptr { i32, [ 0 x i32 ] }** %a_slot3061, i32 0, i32 0
  %len3095 = load i32* %len_ptr3094
  call void @oat_array_bounds_check( i32 %len3095, i32 %_lhs3093 )
  %array_dereferenced3096 = load { i32, [ 0 x i32 ] }** %a_slot3061
  %elt_ptr3097 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced3096, i32 0, i32 1, i32 %_lhs3093
  %_lhs3098 = load i32* %t3062
  store i32 %_lhs3098, i32* %elt_ptr3097
  br label %__merge650

__fresh658:
  br label %__else651

__else651:
  br label %__merge650

__merge650:
  %_lhs3099 = load i32* %j_slot3057
  %_lhs3100 = load i32* %i_slot3059
  %bop3101 = sub i32 %_lhs3099, %_lhs3100
  %bop3102 = icmp sgt i32 %bop3101, 1
  br i1 %bop3102, label %__then655, label %__else654

__fresh659:
  br label %__then655

__then655:
  %_lhs3103 = load i32* %j_slot3057
  %_lhs3104 = load i32* %i_slot3059
  %bop3105 = sub i32 %_lhs3103, %_lhs3104
  %bop3106 = add i32 %bop3105, 1
  %bop3107 = ashr i32 %bop3106, 1
  store i32 %bop3107, i32* %t3062
  %_lhs3110 = load i32* %j_slot3057
  %_lhs3111 = load i32* %t3062
  %bop3112 = sub i32 %_lhs3110, %_lhs3111
  %_lhs3109 = load i32* %i_slot3059
  %_lhs3108 = load { i32, [ 0 x i32 ] }** %a_slot3061
  call void @stoogeSort( { i32, [ 0 x i32 ] }* %_lhs3108, i32 %_lhs3109, i32 %bop3112 )
  %_lhs3117 = load i32* %j_slot3057
  %_lhs3114 = load i32* %i_slot3059
  %_lhs3115 = load i32* %t3062
  %bop3116 = add i32 %_lhs3114, %_lhs3115
  %_lhs3113 = load { i32, [ 0 x i32 ] }** %a_slot3061
  call void @stoogeSort( { i32, [ 0 x i32 ] }* %_lhs3113, i32 %bop3116, i32 %_lhs3117 )
  %_lhs3120 = load i32* %j_slot3057
  %_lhs3121 = load i32* %t3062
  %bop3122 = sub i32 %_lhs3120, %_lhs3121
  %_lhs3119 = load i32* %i_slot3059
  %_lhs3118 = load { i32, [ 0 x i32 ] }** %a_slot3061
  call void @stoogeSort( { i32, [ 0 x i32 ] }* %_lhs3118, i32 %_lhs3119, i32 %bop3122 )
  br label %__merge653

__fresh660:
  br label %__else654

__else654:
  br label %__merge653

__merge653:
  ret void
}


