declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
define void @oat_init (){

__fresh561:
  ret void
}


define i32 @program (i32 %argc3073, { i32, [ 0 x i8* ] }* %argv3071){

__fresh558:
  %argc_slot3074 = alloca i32
  store i32 %argc3073, i32* %argc_slot3074
  %argv_slot3072 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv3071, { i32, [ 0 x i8* ] }** %argv_slot3072
  %array_ptr3075 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 15 )
  %array3076 = bitcast { i32, [ 0 x i32 ] }* %array_ptr3075 to { i32, [ 0 x i32 ] }* 
  %index_ptr3077 = getelementptr { i32, [ 0 x i32 ] }* %array3076, i32 0, i32 1, i32 0
  store i32 1, i32* %index_ptr3077
  %index_ptr3078 = getelementptr { i32, [ 0 x i32 ] }* %array3076, i32 0, i32 1, i32 1
  store i32 4, i32* %index_ptr3078
  %index_ptr3079 = getelementptr { i32, [ 0 x i32 ] }* %array3076, i32 0, i32 1, i32 2
  store i32 5, i32* %index_ptr3079
  %index_ptr3080 = getelementptr { i32, [ 0 x i32 ] }* %array3076, i32 0, i32 1, i32 3
  store i32 3, i32* %index_ptr3080
  %unop3081 = sub i32 0, 6
  %index_ptr3082 = getelementptr { i32, [ 0 x i32 ] }* %array3076, i32 0, i32 1, i32 4
  store i32 %unop3081, i32* %index_ptr3082
  %index_ptr3083 = getelementptr { i32, [ 0 x i32 ] }* %array3076, i32 0, i32 1, i32 5
  store i32 3, i32* %index_ptr3083
  %index_ptr3084 = getelementptr { i32, [ 0 x i32 ] }* %array3076, i32 0, i32 1, i32 6
  store i32 7, i32* %index_ptr3084
  %index_ptr3085 = getelementptr { i32, [ 0 x i32 ] }* %array3076, i32 0, i32 1, i32 7
  store i32 10, i32* %index_ptr3085
  %unop3086 = sub i32 0, 2
  %index_ptr3087 = getelementptr { i32, [ 0 x i32 ] }* %array3076, i32 0, i32 1, i32 8
  store i32 %unop3086, i32* %index_ptr3087
  %unop3088 = sub i32 0, 5
  %index_ptr3089 = getelementptr { i32, [ 0 x i32 ] }* %array3076, i32 0, i32 1, i32 9
  store i32 %unop3088, i32* %index_ptr3089
  %index_ptr3090 = getelementptr { i32, [ 0 x i32 ] }* %array3076, i32 0, i32 1, i32 10
  store i32 7, i32* %index_ptr3090
  %index_ptr3091 = getelementptr { i32, [ 0 x i32 ] }* %array3076, i32 0, i32 1, i32 11
  store i32 5, i32* %index_ptr3091
  %index_ptr3092 = getelementptr { i32, [ 0 x i32 ] }* %array3076, i32 0, i32 1, i32 12
  store i32 9, i32* %index_ptr3092
  %unop3093 = sub i32 0, 3
  %index_ptr3094 = getelementptr { i32, [ 0 x i32 ] }* %array3076, i32 0, i32 1, i32 13
  store i32 %unop3093, i32* %index_ptr3094
  %index_ptr3095 = getelementptr { i32, [ 0 x i32 ] }* %array3076, i32 0, i32 1, i32 14
  store i32 7, i32* %index_ptr3095
  %nums3096 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %array3076, { i32, [ 0 x i32 ] }** %nums3096
  %i3097 = alloca i32
  store i32 0, i32* %i3097
  %_lhs3098 = load { i32, [ 0 x i32 ] }** %nums3096
  %len_ptr3099 = getelementptr { i32, [ 0 x i32 ] }* %_lhs3098, i32 0, i32 0
  %len3100 = load i32* %len_ptr3099
  %n3101 = alloca i32
  store i32 %len3100, i32* %n3101
  %_lhs3103 = load i32* %n3101
  %bop3104 = sub i32 %_lhs3103, 1
  %_lhs3102 = load { i32, [ 0 x i32 ] }** %nums3096
  call void @stoogeSort( { i32, [ 0 x i32 ] }* %_lhs3102, i32 0, i32 %bop3104 )
  store i32 0, i32* %i3097
  br label %__cond557

__cond557:
  %_lhs3105 = load i32* %i3097
  %_lhs3106 = load i32* %n3101
  %bop3107 = sub i32 %_lhs3106, 1
  %bop3108 = icmp sle i32 %_lhs3105, %bop3107
  br i1 %bop3108, label %__body556, label %__post555

__fresh559:
  br label %__body556

__body556:
  %_lhs3109 = load i32* %i3097
  %len_ptr3110 = getelementptr { i32, [ 0 x i32 ] }** %nums3096, i32 0, i32 0
  %len3111 = load i32* %len_ptr3110
  call void @oat_array_bounds_check( i32 %len3111, i32 %_lhs3109 )
  %array_dereferenced3112 = load { i32, [ 0 x i32 ] }** %nums3096
  %elt_ptr3113 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced3112, i32 0, i32 1, i32 %_lhs3109
  %_lhs3114 = load i32* %elt_ptr3113
  call void @print_int( i32 %_lhs3114 )
  %_lhs3115 = load i32* %i3097
  %bop3116 = add i32 %_lhs3115, 1
  store i32 %bop3116, i32* %i3097
  br label %__cond557

__fresh560:
  br label %__post555

__post555:
  ret i32 0
}


define void @stoogeSort ({ i32, [ 0 x i32 ] }* %a3008, i32 %i3006, i32 %j3004){

__fresh550:
  %a_slot3009 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %a3008, { i32, [ 0 x i32 ] }** %a_slot3009
  %i_slot3007 = alloca i32
  store i32 %i3006, i32* %i_slot3007
  %j_slot3005 = alloca i32
  store i32 %j3004, i32* %j_slot3005
  %t3010 = alloca i32
  store i32 0, i32* %t3010
  %_lhs3011 = load i32* %j_slot3005
  %len_ptr3012 = getelementptr { i32, [ 0 x i32 ] }** %a_slot3009, i32 0, i32 0
  %len3013 = load i32* %len_ptr3012
  call void @oat_array_bounds_check( i32 %len3013, i32 %_lhs3011 )
  %array_dereferenced3014 = load { i32, [ 0 x i32 ] }** %a_slot3009
  %elt_ptr3015 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced3014, i32 0, i32 1, i32 %_lhs3011
  %_lhs3016 = load i32* %elt_ptr3015
  %_lhs3017 = load i32* %i_slot3007
  %len_ptr3018 = getelementptr { i32, [ 0 x i32 ] }** %a_slot3009, i32 0, i32 0
  %len3019 = load i32* %len_ptr3018
  call void @oat_array_bounds_check( i32 %len3019, i32 %_lhs3017 )
  %array_dereferenced3020 = load { i32, [ 0 x i32 ] }** %a_slot3009
  %elt_ptr3021 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced3020, i32 0, i32 1, i32 %_lhs3017
  %_lhs3022 = load i32* %elt_ptr3021
  %bop3023 = icmp slt i32 %_lhs3016, %_lhs3022
  br i1 %bop3023, label %__then546, label %__else545

__fresh551:
  br label %__then546

__then546:
  %_lhs3024 = load i32* %i_slot3007
  %len_ptr3025 = getelementptr { i32, [ 0 x i32 ] }** %a_slot3009, i32 0, i32 0
  %len3026 = load i32* %len_ptr3025
  call void @oat_array_bounds_check( i32 %len3026, i32 %_lhs3024 )
  %array_dereferenced3027 = load { i32, [ 0 x i32 ] }** %a_slot3009
  %elt_ptr3028 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced3027, i32 0, i32 1, i32 %_lhs3024
  %_lhs3029 = load i32* %elt_ptr3028
  store i32 %_lhs3029, i32* %t3010
  %_lhs3030 = load i32* %i_slot3007
  %len_ptr3031 = getelementptr { i32, [ 0 x i32 ] }** %a_slot3009, i32 0, i32 0
  %len3032 = load i32* %len_ptr3031
  call void @oat_array_bounds_check( i32 %len3032, i32 %_lhs3030 )
  %array_dereferenced3033 = load { i32, [ 0 x i32 ] }** %a_slot3009
  %elt_ptr3034 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced3033, i32 0, i32 1, i32 %_lhs3030
  %_lhs3035 = load i32* %j_slot3005
  %len_ptr3036 = getelementptr { i32, [ 0 x i32 ] }** %a_slot3009, i32 0, i32 0
  %len3037 = load i32* %len_ptr3036
  call void @oat_array_bounds_check( i32 %len3037, i32 %_lhs3035 )
  %array_dereferenced3038 = load { i32, [ 0 x i32 ] }** %a_slot3009
  %elt_ptr3039 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced3038, i32 0, i32 1, i32 %_lhs3035
  %_lhs3040 = load i32* %elt_ptr3039
  store i32 %_lhs3040, i32* %elt_ptr3034
  %_lhs3041 = load i32* %j_slot3005
  %len_ptr3042 = getelementptr { i32, [ 0 x i32 ] }** %a_slot3009, i32 0, i32 0
  %len3043 = load i32* %len_ptr3042
  call void @oat_array_bounds_check( i32 %len3043, i32 %_lhs3041 )
  %array_dereferenced3044 = load { i32, [ 0 x i32 ] }** %a_slot3009
  %elt_ptr3045 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced3044, i32 0, i32 1, i32 %_lhs3041
  %_lhs3046 = load i32* %t3010
  store i32 %_lhs3046, i32* %elt_ptr3045
  br label %__merge544

__fresh552:
  br label %__else545

__else545:
  br label %__merge544

__merge544:
  %_lhs3047 = load i32* %j_slot3005
  %_lhs3048 = load i32* %i_slot3007
  %bop3049 = sub i32 %_lhs3047, %_lhs3048
  %bop3050 = icmp sgt i32 %bop3049, 1
  br i1 %bop3050, label %__then549, label %__else548

__fresh553:
  br label %__then549

__then549:
  %_lhs3051 = load i32* %j_slot3005
  %_lhs3052 = load i32* %i_slot3007
  %bop3053 = sub i32 %_lhs3051, %_lhs3052
  %bop3054 = add i32 %bop3053, 1
  %bop3055 = ashr i32 %bop3054, 1
  store i32 %bop3055, i32* %t3010
  %_lhs3058 = load i32* %j_slot3005
  %_lhs3059 = load i32* %t3010
  %bop3060 = sub i32 %_lhs3058, %_lhs3059
  %_lhs3057 = load i32* %i_slot3007
  %_lhs3056 = load { i32, [ 0 x i32 ] }** %a_slot3009
  call void @stoogeSort( { i32, [ 0 x i32 ] }* %_lhs3056, i32 %_lhs3057, i32 %bop3060 )
  %_lhs3065 = load i32* %j_slot3005
  %_lhs3062 = load i32* %i_slot3007
  %_lhs3063 = load i32* %t3010
  %bop3064 = add i32 %_lhs3062, %_lhs3063
  %_lhs3061 = load { i32, [ 0 x i32 ] }** %a_slot3009
  call void @stoogeSort( { i32, [ 0 x i32 ] }* %_lhs3061, i32 %bop3064, i32 %_lhs3065 )
  %_lhs3068 = load i32* %j_slot3005
  %_lhs3069 = load i32* %t3010
  %bop3070 = sub i32 %_lhs3068, %_lhs3069
  %_lhs3067 = load i32* %i_slot3007
  %_lhs3066 = load { i32, [ 0 x i32 ] }** %a_slot3009
  call void @stoogeSort( { i32, [ 0 x i32 ] }* %_lhs3066, i32 %_lhs3067, i32 %bop3070 )
  br label %__merge547

__fresh554:
  br label %__else548

__else548:
  br label %__merge547

__merge547:
  ret void
}


