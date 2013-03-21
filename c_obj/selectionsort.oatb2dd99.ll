declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
define void @oat_init (){

__fresh553:
  ret void
}


define i32 @program (i32 %argc3056, { i32, [ 0 x i8* ] }* %argv3054){

__fresh550:
  %argc_slot3057 = alloca i32
  store i32 %argc3056, i32* %argc_slot3057
  %argv_slot3055 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv3054, { i32, [ 0 x i8* ] }** %argv_slot3055
  %array_ptr3058 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 8 )
  %array3059 = bitcast { i32, [ 0 x i32 ] }* %array_ptr3058 to { i32, [ 0 x i32 ] }* 
  %index_ptr3060 = getelementptr { i32, [ 0 x i32 ] }* %array3059, i32 0, i32 1, i32 0
  store i32 5, i32* %index_ptr3060
  %index_ptr3061 = getelementptr { i32, [ 0 x i32 ] }* %array3059, i32 0, i32 1, i32 1
  store i32 200, i32* %index_ptr3061
  %index_ptr3062 = getelementptr { i32, [ 0 x i32 ] }* %array3059, i32 0, i32 1, i32 2
  store i32 1, i32* %index_ptr3062
  %index_ptr3063 = getelementptr { i32, [ 0 x i32 ] }* %array3059, i32 0, i32 1, i32 3
  store i32 65, i32* %index_ptr3063
  %index_ptr3064 = getelementptr { i32, [ 0 x i32 ] }* %array3059, i32 0, i32 1, i32 4
  store i32 30, i32* %index_ptr3064
  %index_ptr3065 = getelementptr { i32, [ 0 x i32 ] }* %array3059, i32 0, i32 1, i32 5
  store i32 99, i32* %index_ptr3065
  %index_ptr3066 = getelementptr { i32, [ 0 x i32 ] }* %array3059, i32 0, i32 1, i32 6
  store i32 2, i32* %index_ptr3066
  %index_ptr3067 = getelementptr { i32, [ 0 x i32 ] }* %array3059, i32 0, i32 1, i32 7
  store i32 0, i32* %index_ptr3067
  %ar3068 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %array3059, { i32, [ 0 x i32 ] }** %ar3068
  %_lhs3069 = load { i32, [ 0 x i32 ] }** %ar3068
  call void @selectionsort( { i32, [ 0 x i32 ] }* %_lhs3069, i32 8 )
  %i3070 = alloca i32
  store i32 0, i32* %i3070
  br label %__cond549

__cond549:
  %_lhs3071 = load i32* %i3070
  %bop3072 = icmp slt i32 %_lhs3071, 8
  br i1 %bop3072, label %__body548, label %__post547

__fresh551:
  br label %__body548

__body548:
  %_lhs3073 = load i32* %i3070
  %len_ptr3074 = getelementptr { i32, [ 0 x i32 ] }** %ar3068, i32 0, i32 0
  %len3075 = load i32* %len_ptr3074
  call void @oat_array_bounds_check( i32 %len3075, i32 %_lhs3073 )
  %array_dereferenced3076 = load { i32, [ 0 x i32 ] }** %ar3068
  %elt_ptr3077 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced3076, i32 0, i32 1, i32 %_lhs3073
  %_lhs3078 = load i32* %elt_ptr3077
  call void @print_int( i32 %_lhs3078 )
  %_lhs3079 = load i32* %i3070
  %bop3080 = add i32 %_lhs3079, 1
  store i32 %bop3080, i32* %i3070
  br label %__cond549

__fresh552:
  br label %__post547

__post547:
  ret i32 0
}


define void @selectionsort ({ i32, [ 0 x i32 ] }* %a3017, i32 %s3015){

__fresh544:
  %a_slot3018 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %a3017, { i32, [ 0 x i32 ] }** %a_slot3018
  %s_slot3016 = alloca i32
  store i32 %s3015, i32* %s_slot3016
  %t3019 = alloca i32
  store i32 0, i32* %t3019
  %mi3020 = alloca i32
  store i32 0, i32* %mi3020
  %i3021 = alloca i32
  store i32 0, i32* %i3021
  br label %__cond543

__cond543:
  %_lhs3022 = load i32* %i3021
  %_lhs3023 = load i32* %s_slot3016
  %bop3024 = icmp slt i32 %_lhs3022, %_lhs3023
  br i1 %bop3024, label %__body542, label %__post541

__fresh545:
  br label %__body542

__body542:
  %_lhs3027 = load i32* %s_slot3016
  %_lhs3026 = load i32* %i3021
  %_lhs3025 = load { i32, [ 0 x i32 ] }** %a_slot3018
  %ret3028 = call i32 @getminindex ( { i32, [ 0 x i32 ] }* %_lhs3025, i32 %_lhs3026, i32 %_lhs3027 )
  store i32 %ret3028, i32* %mi3020
  %_lhs3029 = load i32* %i3021
  %len_ptr3030 = getelementptr { i32, [ 0 x i32 ] }** %a_slot3018, i32 0, i32 0
  %len3031 = load i32* %len_ptr3030
  call void @oat_array_bounds_check( i32 %len3031, i32 %_lhs3029 )
  %array_dereferenced3032 = load { i32, [ 0 x i32 ] }** %a_slot3018
  %elt_ptr3033 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced3032, i32 0, i32 1, i32 %_lhs3029
  %_lhs3034 = load i32* %elt_ptr3033
  store i32 %_lhs3034, i32* %t3019
  %_lhs3035 = load i32* %i3021
  %len_ptr3036 = getelementptr { i32, [ 0 x i32 ] }** %a_slot3018, i32 0, i32 0
  %len3037 = load i32* %len_ptr3036
  call void @oat_array_bounds_check( i32 %len3037, i32 %_lhs3035 )
  %array_dereferenced3038 = load { i32, [ 0 x i32 ] }** %a_slot3018
  %elt_ptr3039 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced3038, i32 0, i32 1, i32 %_lhs3035
  %_lhs3040 = load i32* %mi3020
  %len_ptr3041 = getelementptr { i32, [ 0 x i32 ] }** %a_slot3018, i32 0, i32 0
  %len3042 = load i32* %len_ptr3041
  call void @oat_array_bounds_check( i32 %len3042, i32 %_lhs3040 )
  %array_dereferenced3043 = load { i32, [ 0 x i32 ] }** %a_slot3018
  %elt_ptr3044 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced3043, i32 0, i32 1, i32 %_lhs3040
  %_lhs3045 = load i32* %elt_ptr3044
  store i32 %_lhs3045, i32* %elt_ptr3039
  %_lhs3046 = load i32* %mi3020
  %len_ptr3047 = getelementptr { i32, [ 0 x i32 ] }** %a_slot3018, i32 0, i32 0
  %len3048 = load i32* %len_ptr3047
  call void @oat_array_bounds_check( i32 %len3048, i32 %_lhs3046 )
  %array_dereferenced3049 = load { i32, [ 0 x i32 ] }** %a_slot3018
  %elt_ptr3050 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced3049, i32 0, i32 1, i32 %_lhs3046
  %_lhs3051 = load i32* %t3019
  store i32 %_lhs3051, i32* %elt_ptr3050
  %_lhs3052 = load i32* %i3021
  %bop3053 = add i32 %_lhs3052, 1
  store i32 %bop3053, i32* %i3021
  br label %__cond543

__fresh546:
  br label %__post541

__post541:
  ret void
}


define i32 @getminindex ({ i32, [ 0 x i32 ] }* %a2981, i32 %s2979, i32 %b2977){

__fresh536:
  %a_slot2982 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %a2981, { i32, [ 0 x i32 ] }** %a_slot2982
  %s_slot2980 = alloca i32
  store i32 %s2979, i32* %s_slot2980
  %b_slot2978 = alloca i32
  store i32 %b2977, i32* %b_slot2978
  %_lhs2983 = load i32* %s_slot2980
  %i2984 = alloca i32
  store i32 %_lhs2983, i32* %i2984
  %_lhs2985 = load i32* %s_slot2980
  %len_ptr2986 = getelementptr { i32, [ 0 x i32 ] }** %a_slot2982, i32 0, i32 0
  %len2987 = load i32* %len_ptr2986
  call void @oat_array_bounds_check( i32 %len2987, i32 %_lhs2985 )
  %array_dereferenced2988 = load { i32, [ 0 x i32 ] }** %a_slot2982
  %elt_ptr2989 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2988, i32 0, i32 1, i32 %_lhs2985
  %_lhs2990 = load i32* %elt_ptr2989
  %min2991 = alloca i32
  store i32 %_lhs2990, i32* %min2991
  %_lhs2992 = load i32* %s_slot2980
  %mi2993 = alloca i32
  store i32 %_lhs2992, i32* %mi2993
  br label %__cond532

__cond532:
  %_lhs2994 = load i32* %i2984
  %_lhs2995 = load i32* %b_slot2978
  %bop2996 = icmp slt i32 %_lhs2994, %_lhs2995
  br i1 %bop2996, label %__body531, label %__post530

__fresh537:
  br label %__body531

__body531:
  %_lhs2997 = load i32* %i2984
  %len_ptr2998 = getelementptr { i32, [ 0 x i32 ] }** %a_slot2982, i32 0, i32 0
  %len2999 = load i32* %len_ptr2998
  call void @oat_array_bounds_check( i32 %len2999, i32 %_lhs2997 )
  %array_dereferenced3000 = load { i32, [ 0 x i32 ] }** %a_slot2982
  %elt_ptr3001 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced3000, i32 0, i32 1, i32 %_lhs2997
  %_lhs3002 = load i32* %elt_ptr3001
  %_lhs3003 = load i32* %min2991
  %bop3004 = icmp slt i32 %_lhs3002, %_lhs3003
  br i1 %bop3004, label %__then535, label %__else534

__fresh538:
  br label %__then535

__then535:
  %_lhs3005 = load i32* %i2984
  %len_ptr3006 = getelementptr { i32, [ 0 x i32 ] }** %a_slot2982, i32 0, i32 0
  %len3007 = load i32* %len_ptr3006
  call void @oat_array_bounds_check( i32 %len3007, i32 %_lhs3005 )
  %array_dereferenced3008 = load { i32, [ 0 x i32 ] }** %a_slot2982
  %elt_ptr3009 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced3008, i32 0, i32 1, i32 %_lhs3005
  %_lhs3010 = load i32* %elt_ptr3009
  store i32 %_lhs3010, i32* %min2991
  %_lhs3011 = load i32* %i2984
  store i32 %_lhs3011, i32* %mi2993
  br label %__merge533

__fresh539:
  br label %__else534

__else534:
  br label %__merge533

__merge533:
  %_lhs3012 = load i32* %i2984
  %bop3013 = add i32 %_lhs3012, 1
  store i32 %bop3013, i32* %i2984
  br label %__cond532

__fresh540:
  br label %__post530

__post530:
  %_lhs3014 = load i32* %mi2993
  ret i32 %_lhs3014
}


