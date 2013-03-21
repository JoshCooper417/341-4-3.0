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


define i32 @program (i32 %argc3081, { i32, [ 0 x i8* ] }* %argv3079){

__fresh664:
  %argc_slot3082 = alloca i32
  store i32 %argc3081, i32* %argc_slot3082
  %argv_slot3080 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv3079, { i32, [ 0 x i8* ] }** %argv_slot3080
  %array_ptr3083 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 15 )
  %array3084 = bitcast { i32, [ 0 x i32 ] }* %array_ptr3083 to { i32, [ 0 x i32 ] }* 
  %index_ptr3085 = getelementptr { i32, [ 0 x i32 ] }* %array3084, i32 0, i32 1, i32 0
  store i32 1, i32* %index_ptr3085
  %index_ptr3086 = getelementptr { i32, [ 0 x i32 ] }* %array3084, i32 0, i32 1, i32 1
  store i32 4, i32* %index_ptr3086
  %index_ptr3087 = getelementptr { i32, [ 0 x i32 ] }* %array3084, i32 0, i32 1, i32 2
  store i32 5, i32* %index_ptr3087
  %index_ptr3088 = getelementptr { i32, [ 0 x i32 ] }* %array3084, i32 0, i32 1, i32 3
  store i32 3, i32* %index_ptr3088
  %unop3089 = sub i32 0, 6
  %index_ptr3090 = getelementptr { i32, [ 0 x i32 ] }* %array3084, i32 0, i32 1, i32 4
  store i32 %unop3089, i32* %index_ptr3090
  %index_ptr3091 = getelementptr { i32, [ 0 x i32 ] }* %array3084, i32 0, i32 1, i32 5
  store i32 3, i32* %index_ptr3091
  %index_ptr3092 = getelementptr { i32, [ 0 x i32 ] }* %array3084, i32 0, i32 1, i32 6
  store i32 7, i32* %index_ptr3092
  %index_ptr3093 = getelementptr { i32, [ 0 x i32 ] }* %array3084, i32 0, i32 1, i32 7
  store i32 10, i32* %index_ptr3093
  %unop3094 = sub i32 0, 2
  %index_ptr3095 = getelementptr { i32, [ 0 x i32 ] }* %array3084, i32 0, i32 1, i32 8
  store i32 %unop3094, i32* %index_ptr3095
  %unop3096 = sub i32 0, 5
  %index_ptr3097 = getelementptr { i32, [ 0 x i32 ] }* %array3084, i32 0, i32 1, i32 9
  store i32 %unop3096, i32* %index_ptr3097
  %index_ptr3098 = getelementptr { i32, [ 0 x i32 ] }* %array3084, i32 0, i32 1, i32 10
  store i32 7, i32* %index_ptr3098
  %index_ptr3099 = getelementptr { i32, [ 0 x i32 ] }* %array3084, i32 0, i32 1, i32 11
  store i32 5, i32* %index_ptr3099
  %index_ptr3100 = getelementptr { i32, [ 0 x i32 ] }* %array3084, i32 0, i32 1, i32 12
  store i32 9, i32* %index_ptr3100
  %unop3101 = sub i32 0, 3
  %index_ptr3102 = getelementptr { i32, [ 0 x i32 ] }* %array3084, i32 0, i32 1, i32 13
  store i32 %unop3101, i32* %index_ptr3102
  %index_ptr3103 = getelementptr { i32, [ 0 x i32 ] }* %array3084, i32 0, i32 1, i32 14
  store i32 7, i32* %index_ptr3103
  %nums3104 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %array3084, { i32, [ 0 x i32 ] }** %nums3104
  %i3105 = alloca i32
  store i32 0, i32* %i3105
  %_lhs3106 = load { i32, [ 0 x i32 ] }** %nums3104
  %len_ptr3107 = getelementptr { i32, [ 0 x i32 ] }* %_lhs3106, i32 0, i32 0
  %len3108 = load i32* %len_ptr3107
  %n3109 = alloca i32
  store i32 %len3108, i32* %n3109
  %_lhs3111 = load i32* %n3109
  %bop3112 = sub i32 %_lhs3111, 1
  %_lhs3110 = load { i32, [ 0 x i32 ] }** %nums3104
  call void @stoogeSort( { i32, [ 0 x i32 ] }* %_lhs3110, i32 0, i32 %bop3112 )
  store i32 0, i32* %i3105
  br label %__cond663

__cond663:
  %_lhs3113 = load i32* %i3105
  %_lhs3114 = load i32* %n3109
  %bop3115 = sub i32 %_lhs3114, 1
  %bop3116 = icmp sle i32 %_lhs3113, %bop3115
  br i1 %bop3116, label %__body662, label %__post661

__fresh665:
  br label %__body662

__body662:
  %_lhs3117 = load i32* %i3105
  %len_ptr3118 = getelementptr { i32, [ 0 x i32 ] }** %nums3104, i32 0, i32 0
  %len3119 = load i32* %len_ptr3118
  call void @oat_array_bounds_check( i32 %len3119, i32 %_lhs3117 )
  %array_dereferenced3120 = load { i32, [ 0 x i32 ] }** %nums3104
  %elt_ptr3121 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced3120, i32 0, i32 1, i32 %_lhs3117
  %_lhs3122 = load i32* %elt_ptr3121
  call void @print_int( i32 %_lhs3122 )
  %_lhs3123 = load i32* %i3105
  %bop3124 = add i32 %_lhs3123, 1
  store i32 %bop3124, i32* %i3105
  br label %__cond663

__fresh666:
  br label %__post661

__post661:
  ret i32 0
}


define void @stoogeSort ({ i32, [ 0 x i32 ] }* %a3016, i32 %i3014, i32 %j3012){

__fresh656:
  %a_slot3017 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %a3016, { i32, [ 0 x i32 ] }** %a_slot3017
  %i_slot3015 = alloca i32
  store i32 %i3014, i32* %i_slot3015
  %j_slot3013 = alloca i32
  store i32 %j3012, i32* %j_slot3013
  %t3018 = alloca i32
  store i32 0, i32* %t3018
  %_lhs3019 = load i32* %j_slot3013
  %len_ptr3020 = getelementptr { i32, [ 0 x i32 ] }** %a_slot3017, i32 0, i32 0
  %len3021 = load i32* %len_ptr3020
  call void @oat_array_bounds_check( i32 %len3021, i32 %_lhs3019 )
  %array_dereferenced3022 = load { i32, [ 0 x i32 ] }** %a_slot3017
  %elt_ptr3023 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced3022, i32 0, i32 1, i32 %_lhs3019
  %_lhs3024 = load i32* %elt_ptr3023
  %_lhs3025 = load i32* %i_slot3015
  %len_ptr3026 = getelementptr { i32, [ 0 x i32 ] }** %a_slot3017, i32 0, i32 0
  %len3027 = load i32* %len_ptr3026
  call void @oat_array_bounds_check( i32 %len3027, i32 %_lhs3025 )
  %array_dereferenced3028 = load { i32, [ 0 x i32 ] }** %a_slot3017
  %elt_ptr3029 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced3028, i32 0, i32 1, i32 %_lhs3025
  %_lhs3030 = load i32* %elt_ptr3029
  %bop3031 = icmp slt i32 %_lhs3024, %_lhs3030
  br i1 %bop3031, label %__then652, label %__else651

__fresh657:
  br label %__then652

__then652:
  %_lhs3032 = load i32* %i_slot3015
  %len_ptr3033 = getelementptr { i32, [ 0 x i32 ] }** %a_slot3017, i32 0, i32 0
  %len3034 = load i32* %len_ptr3033
  call void @oat_array_bounds_check( i32 %len3034, i32 %_lhs3032 )
  %array_dereferenced3035 = load { i32, [ 0 x i32 ] }** %a_slot3017
  %elt_ptr3036 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced3035, i32 0, i32 1, i32 %_lhs3032
  %_lhs3037 = load i32* %elt_ptr3036
  store i32 %_lhs3037, i32* %t3018
  %_lhs3038 = load i32* %i_slot3015
  %len_ptr3039 = getelementptr { i32, [ 0 x i32 ] }** %a_slot3017, i32 0, i32 0
  %len3040 = load i32* %len_ptr3039
  call void @oat_array_bounds_check( i32 %len3040, i32 %_lhs3038 )
  %array_dereferenced3041 = load { i32, [ 0 x i32 ] }** %a_slot3017
  %elt_ptr3042 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced3041, i32 0, i32 1, i32 %_lhs3038
  %_lhs3043 = load i32* %j_slot3013
  %len_ptr3044 = getelementptr { i32, [ 0 x i32 ] }** %a_slot3017, i32 0, i32 0
  %len3045 = load i32* %len_ptr3044
  call void @oat_array_bounds_check( i32 %len3045, i32 %_lhs3043 )
  %array_dereferenced3046 = load { i32, [ 0 x i32 ] }** %a_slot3017
  %elt_ptr3047 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced3046, i32 0, i32 1, i32 %_lhs3043
  %_lhs3048 = load i32* %elt_ptr3047
  store i32 %_lhs3048, i32* %elt_ptr3042
  %_lhs3049 = load i32* %j_slot3013
  %len_ptr3050 = getelementptr { i32, [ 0 x i32 ] }** %a_slot3017, i32 0, i32 0
  %len3051 = load i32* %len_ptr3050
  call void @oat_array_bounds_check( i32 %len3051, i32 %_lhs3049 )
  %array_dereferenced3052 = load { i32, [ 0 x i32 ] }** %a_slot3017
  %elt_ptr3053 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced3052, i32 0, i32 1, i32 %_lhs3049
  %_lhs3054 = load i32* %t3018
  store i32 %_lhs3054, i32* %elt_ptr3053
  br label %__merge650

__fresh658:
  br label %__else651

__else651:
  br label %__merge650

__merge650:
  %_lhs3055 = load i32* %j_slot3013
  %_lhs3056 = load i32* %i_slot3015
  %bop3057 = sub i32 %_lhs3055, %_lhs3056
  %bop3058 = icmp sgt i32 %bop3057, 1
  br i1 %bop3058, label %__then655, label %__else654

__fresh659:
  br label %__then655

__then655:
  %_lhs3059 = load i32* %j_slot3013
  %_lhs3060 = load i32* %i_slot3015
  %bop3061 = sub i32 %_lhs3059, %_lhs3060
  %bop3062 = add i32 %bop3061, 1
  %bop3063 = ashr i32 %bop3062, 1
  store i32 %bop3063, i32* %t3018
  %_lhs3066 = load i32* %j_slot3013
  %_lhs3067 = load i32* %t3018
  %bop3068 = sub i32 %_lhs3066, %_lhs3067
  %_lhs3065 = load i32* %i_slot3015
  %_lhs3064 = load { i32, [ 0 x i32 ] }** %a_slot3017
  call void @stoogeSort( { i32, [ 0 x i32 ] }* %_lhs3064, i32 %_lhs3065, i32 %bop3068 )
  %_lhs3073 = load i32* %j_slot3013
  %_lhs3070 = load i32* %i_slot3015
  %_lhs3071 = load i32* %t3018
  %bop3072 = add i32 %_lhs3070, %_lhs3071
  %_lhs3069 = load { i32, [ 0 x i32 ] }** %a_slot3017
  call void @stoogeSort( { i32, [ 0 x i32 ] }* %_lhs3069, i32 %bop3072, i32 %_lhs3073 )
  %_lhs3076 = load i32* %j_slot3013
  %_lhs3077 = load i32* %t3018
  %bop3078 = sub i32 %_lhs3076, %_lhs3077
  %_lhs3075 = load i32* %i_slot3015
  %_lhs3074 = load { i32, [ 0 x i32 ] }** %a_slot3017
  call void @stoogeSort( { i32, [ 0 x i32 ] }* %_lhs3074, i32 %_lhs3075, i32 %bop3078 )
  br label %__merge653

__fresh660:
  br label %__else654

__else654:
  br label %__merge653

__merge653:
  ret void
}


