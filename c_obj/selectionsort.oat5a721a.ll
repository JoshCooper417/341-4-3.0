declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
define void @oat_init (){

__fresh1110:
  ret void
}


define i32 @program (i32 %argc3046, { i32, [ 0 x i8* ] }* %argv3044){

__fresh1107:
  %argc_slot3047 = alloca i32
  store i32 %argc3046, i32* %argc_slot3047
  %argv_slot3045 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv3044, { i32, [ 0 x i8* ] }** %argv_slot3045
  %array_ptr3048 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 8 )
  %array3049 = bitcast { i32, [ 0 x i32 ] }* %array_ptr3048 to { i32, [ 0 x i32 ] }* 
  %index_ptr3050 = getelementptr { i32, [ 0 x i32 ] }* %array3049, i32 0, i32 1, i32 0
  store i32 5, i32* %index_ptr3050
  %index_ptr3051 = getelementptr { i32, [ 0 x i32 ] }* %array3049, i32 0, i32 1, i32 1
  store i32 200, i32* %index_ptr3051
  %index_ptr3052 = getelementptr { i32, [ 0 x i32 ] }* %array3049, i32 0, i32 1, i32 2
  store i32 1, i32* %index_ptr3052
  %index_ptr3053 = getelementptr { i32, [ 0 x i32 ] }* %array3049, i32 0, i32 1, i32 3
  store i32 65, i32* %index_ptr3053
  %index_ptr3054 = getelementptr { i32, [ 0 x i32 ] }* %array3049, i32 0, i32 1, i32 4
  store i32 30, i32* %index_ptr3054
  %index_ptr3055 = getelementptr { i32, [ 0 x i32 ] }* %array3049, i32 0, i32 1, i32 5
  store i32 99, i32* %index_ptr3055
  %index_ptr3056 = getelementptr { i32, [ 0 x i32 ] }* %array3049, i32 0, i32 1, i32 6
  store i32 2, i32* %index_ptr3056
  %index_ptr3057 = getelementptr { i32, [ 0 x i32 ] }* %array3049, i32 0, i32 1, i32 7
  store i32 0, i32* %index_ptr3057
  %ar3058 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %array3049, { i32, [ 0 x i32 ] }** %ar3058
  %_lhs3059 = load { i32, [ 0 x i32 ] }** %ar3058
  call void @selectionsort( { i32, [ 0 x i32 ] }* %_lhs3059, i32 8 )
  %i3060 = alloca i32
  store i32 0, i32* %i3060
  br label %__cond1106

__cond1106:
  %_lhs3061 = load i32* %i3060
  %bop3062 = icmp slt i32 %_lhs3061, 8
  br i1 %bop3062, label %__body1105, label %__post1104

__fresh1108:
  br label %__body1105

__body1105:
  %_lhs3063 = load i32* %i3060
  %array_dereferenced3064 = load { i32, [ 0 x i32 ] }** %ar3058
  %len_ptr3065 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced3064, i32 0, i32 0
  %len3066 = load i32* %len_ptr3065
  call void @oat_array_bounds_check( i32 %len3066, i32 %_lhs3063 )
  %elt_ptr3067 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced3064, i32 0, i32 1, i32 %_lhs3063
  %_lhs3068 = load i32* %elt_ptr3067
  call void @print_int( i32 %_lhs3068 )
  %_lhs3069 = load i32* %i3060
  %bop3070 = add i32 %_lhs3069, 1
  store i32 %bop3070, i32* %i3060
  br label %__cond1106

__fresh1109:
  br label %__post1104

__post1104:
  ret i32 0
}


define void @selectionsort ({ i32, [ 0 x i32 ] }* %a3007, i32 %s3005){

__fresh1101:
  %a_slot3008 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %a3007, { i32, [ 0 x i32 ] }** %a_slot3008
  %s_slot3006 = alloca i32
  store i32 %s3005, i32* %s_slot3006
  %t3009 = alloca i32
  store i32 0, i32* %t3009
  %mi3010 = alloca i32
  store i32 0, i32* %mi3010
  %i3011 = alloca i32
  store i32 0, i32* %i3011
  br label %__cond1100

__cond1100:
  %_lhs3012 = load i32* %i3011
  %_lhs3013 = load i32* %s_slot3006
  %bop3014 = icmp slt i32 %_lhs3012, %_lhs3013
  br i1 %bop3014, label %__body1099, label %__post1098

__fresh1102:
  br label %__body1099

__body1099:
  %_lhs3017 = load i32* %s_slot3006
  %_lhs3016 = load i32* %i3011
  %_lhs3015 = load { i32, [ 0 x i32 ] }** %a_slot3008
  %ret3018 = call i32 @getminindex ( { i32, [ 0 x i32 ] }* %_lhs3015, i32 %_lhs3016, i32 %_lhs3017 )
  store i32 %ret3018, i32* %mi3010
  %_lhs3019 = load i32* %i3011
  %array_dereferenced3020 = load { i32, [ 0 x i32 ] }** %a_slot3008
  %len_ptr3021 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced3020, i32 0, i32 0
  %len3022 = load i32* %len_ptr3021
  call void @oat_array_bounds_check( i32 %len3022, i32 %_lhs3019 )
  %elt_ptr3023 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced3020, i32 0, i32 1, i32 %_lhs3019
  %_lhs3024 = load i32* %elt_ptr3023
  store i32 %_lhs3024, i32* %t3009
  %_lhs3025 = load i32* %i3011
  %array_dereferenced3026 = load { i32, [ 0 x i32 ] }** %a_slot3008
  %len_ptr3027 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced3026, i32 0, i32 0
  %len3028 = load i32* %len_ptr3027
  call void @oat_array_bounds_check( i32 %len3028, i32 %_lhs3025 )
  %elt_ptr3029 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced3026, i32 0, i32 1, i32 %_lhs3025
  %_lhs3030 = load i32* %mi3010
  %array_dereferenced3031 = load { i32, [ 0 x i32 ] }** %a_slot3008
  %len_ptr3032 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced3031, i32 0, i32 0
  %len3033 = load i32* %len_ptr3032
  call void @oat_array_bounds_check( i32 %len3033, i32 %_lhs3030 )
  %elt_ptr3034 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced3031, i32 0, i32 1, i32 %_lhs3030
  %_lhs3035 = load i32* %elt_ptr3034
  store i32 %_lhs3035, i32* %elt_ptr3029
  %_lhs3036 = load i32* %mi3010
  %array_dereferenced3037 = load { i32, [ 0 x i32 ] }** %a_slot3008
  %len_ptr3038 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced3037, i32 0, i32 0
  %len3039 = load i32* %len_ptr3038
  call void @oat_array_bounds_check( i32 %len3039, i32 %_lhs3036 )
  %elt_ptr3040 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced3037, i32 0, i32 1, i32 %_lhs3036
  %_lhs3041 = load i32* %t3009
  store i32 %_lhs3041, i32* %elt_ptr3040
  %_lhs3042 = load i32* %i3011
  %bop3043 = add i32 %_lhs3042, 1
  store i32 %bop3043, i32* %i3011
  br label %__cond1100

__fresh1103:
  br label %__post1098

__post1098:
  ret void
}


define i32 @getminindex ({ i32, [ 0 x i32 ] }* %a2971, i32 %s2969, i32 %b2967){

__fresh1093:
  %a_slot2972 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %a2971, { i32, [ 0 x i32 ] }** %a_slot2972
  %s_slot2970 = alloca i32
  store i32 %s2969, i32* %s_slot2970
  %b_slot2968 = alloca i32
  store i32 %b2967, i32* %b_slot2968
  %_lhs2973 = load i32* %s_slot2970
  %i2974 = alloca i32
  store i32 %_lhs2973, i32* %i2974
  %_lhs2975 = load i32* %s_slot2970
  %array_dereferenced2976 = load { i32, [ 0 x i32 ] }** %a_slot2972
  %len_ptr2977 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2976, i32 0, i32 0
  %len2978 = load i32* %len_ptr2977
  call void @oat_array_bounds_check( i32 %len2978, i32 %_lhs2975 )
  %elt_ptr2979 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2976, i32 0, i32 1, i32 %_lhs2975
  %_lhs2980 = load i32* %elt_ptr2979
  %min2981 = alloca i32
  store i32 %_lhs2980, i32* %min2981
  %_lhs2982 = load i32* %s_slot2970
  %mi2983 = alloca i32
  store i32 %_lhs2982, i32* %mi2983
  br label %__cond1089

__cond1089:
  %_lhs2984 = load i32* %i2974
  %_lhs2985 = load i32* %b_slot2968
  %bop2986 = icmp slt i32 %_lhs2984, %_lhs2985
  br i1 %bop2986, label %__body1088, label %__post1087

__fresh1094:
  br label %__body1088

__body1088:
  %_lhs2987 = load i32* %i2974
  %array_dereferenced2988 = load { i32, [ 0 x i32 ] }** %a_slot2972
  %len_ptr2989 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2988, i32 0, i32 0
  %len2990 = load i32* %len_ptr2989
  call void @oat_array_bounds_check( i32 %len2990, i32 %_lhs2987 )
  %elt_ptr2991 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2988, i32 0, i32 1, i32 %_lhs2987
  %_lhs2992 = load i32* %elt_ptr2991
  %_lhs2993 = load i32* %min2981
  %bop2994 = icmp slt i32 %_lhs2992, %_lhs2993
  br i1 %bop2994, label %__then1092, label %__else1091

__fresh1095:
  br label %__then1092

__then1092:
  %_lhs2995 = load i32* %i2974
  %array_dereferenced2996 = load { i32, [ 0 x i32 ] }** %a_slot2972
  %len_ptr2997 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2996, i32 0, i32 0
  %len2998 = load i32* %len_ptr2997
  call void @oat_array_bounds_check( i32 %len2998, i32 %_lhs2995 )
  %elt_ptr2999 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2996, i32 0, i32 1, i32 %_lhs2995
  %_lhs3000 = load i32* %elt_ptr2999
  store i32 %_lhs3000, i32* %min2981
  %_lhs3001 = load i32* %i2974
  store i32 %_lhs3001, i32* %mi2983
  br label %__merge1090

__fresh1096:
  br label %__else1091

__else1091:
  br label %__merge1090

__merge1090:
  %_lhs3002 = load i32* %i2974
  %bop3003 = add i32 %_lhs3002, 1
  store i32 %bop3003, i32* %i2974
  br label %__cond1089

__fresh1097:
  br label %__post1087

__post1087:
  %_lhs3004 = load i32* %mi2983
  ret i32 %_lhs3004
}


