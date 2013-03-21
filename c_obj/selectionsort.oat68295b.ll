declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
define void @oat_init (){

__fresh1103:
  ret void
}


define i32 @program (i32 %argc3011, { i32, [ 0 x i8* ] }* %argv3009){

__fresh1100:
  %argc_slot3012 = alloca i32
  store i32 %argc3011, i32* %argc_slot3012
  %argv_slot3010 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv3009, { i32, [ 0 x i8* ] }** %argv_slot3010
  %array_ptr3013 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 8 )
  %array3014 = bitcast { i32, [ 0 x i32 ] }* %array_ptr3013 to { i32, [ 0 x i32 ] }* 
  %index_ptr3015 = getelementptr { i32, [ 0 x i32 ] }* %array3014, i32 0, i32 1, i32 0
  store i32 5, i32* %index_ptr3015
  %index_ptr3016 = getelementptr { i32, [ 0 x i32 ] }* %array3014, i32 0, i32 1, i32 1
  store i32 200, i32* %index_ptr3016
  %index_ptr3017 = getelementptr { i32, [ 0 x i32 ] }* %array3014, i32 0, i32 1, i32 2
  store i32 1, i32* %index_ptr3017
  %index_ptr3018 = getelementptr { i32, [ 0 x i32 ] }* %array3014, i32 0, i32 1, i32 3
  store i32 65, i32* %index_ptr3018
  %index_ptr3019 = getelementptr { i32, [ 0 x i32 ] }* %array3014, i32 0, i32 1, i32 4
  store i32 30, i32* %index_ptr3019
  %index_ptr3020 = getelementptr { i32, [ 0 x i32 ] }* %array3014, i32 0, i32 1, i32 5
  store i32 99, i32* %index_ptr3020
  %index_ptr3021 = getelementptr { i32, [ 0 x i32 ] }* %array3014, i32 0, i32 1, i32 6
  store i32 2, i32* %index_ptr3021
  %index_ptr3022 = getelementptr { i32, [ 0 x i32 ] }* %array3014, i32 0, i32 1, i32 7
  store i32 0, i32* %index_ptr3022
  %ar3023 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %array3014, { i32, [ 0 x i32 ] }** %ar3023
  %_lhs3024 = load { i32, [ 0 x i32 ] }** %ar3023
  call void @selectionsort( { i32, [ 0 x i32 ] }* %_lhs3024, i32 8 )
  %i3025 = alloca i32
  store i32 0, i32* %i3025
  br label %__cond1099

__cond1099:
  %_lhs3026 = load i32* %i3025
  %bop3027 = icmp slt i32 %_lhs3026, 8
  br i1 %bop3027, label %__body1098, label %__post1097

__fresh1101:
  br label %__body1098

__body1098:
  %_lhs3028 = load i32* %i3025
  %array_dereferenced3029 = load { i32, [ 0 x i32 ] }** %ar3023
  %len_ptr3030 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced3029, i32 0, i32 0
  %len3031 = load i32* %len_ptr3030
  call void @oat_array_bounds_check( i32 %len3031, i32 %_lhs3028 )
  %elt_ptr3032 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced3029, i32 0, i32 1, i32 %_lhs3028
  %_lhs3033 = load i32* %elt_ptr3032
  call void @print_int( i32 %_lhs3033 )
  %_lhs3034 = load i32* %i3025
  %bop3035 = add i32 %_lhs3034, 1
  store i32 %bop3035, i32* %i3025
  br label %__cond1099

__fresh1102:
  br label %__post1097

__post1097:
  ret i32 0
}


define void @selectionsort ({ i32, [ 0 x i32 ] }* %a2972, i32 %s2970){

__fresh1094:
  %a_slot2973 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %a2972, { i32, [ 0 x i32 ] }** %a_slot2973
  %s_slot2971 = alloca i32
  store i32 %s2970, i32* %s_slot2971
  %t2974 = alloca i32
  store i32 0, i32* %t2974
  %mi2975 = alloca i32
  store i32 0, i32* %mi2975
  %i2976 = alloca i32
  store i32 0, i32* %i2976
  br label %__cond1093

__cond1093:
  %_lhs2977 = load i32* %i2976
  %_lhs2978 = load i32* %s_slot2971
  %bop2979 = icmp slt i32 %_lhs2977, %_lhs2978
  br i1 %bop2979, label %__body1092, label %__post1091

__fresh1095:
  br label %__body1092

__body1092:
  %_lhs2982 = load i32* %s_slot2971
  %_lhs2981 = load i32* %i2976
  %_lhs2980 = load { i32, [ 0 x i32 ] }** %a_slot2973
  %ret2983 = call i32 @getminindex ( { i32, [ 0 x i32 ] }* %_lhs2980, i32 %_lhs2981, i32 %_lhs2982 )
  store i32 %ret2983, i32* %mi2975
  %_lhs2984 = load i32* %i2976
  %array_dereferenced2985 = load { i32, [ 0 x i32 ] }** %a_slot2973
  %len_ptr2986 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2985, i32 0, i32 0
  %len2987 = load i32* %len_ptr2986
  call void @oat_array_bounds_check( i32 %len2987, i32 %_lhs2984 )
  %elt_ptr2988 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2985, i32 0, i32 1, i32 %_lhs2984
  %_lhs2989 = load i32* %elt_ptr2988
  store i32 %_lhs2989, i32* %t2974
  %_lhs2990 = load i32* %i2976
  %array_dereferenced2991 = load { i32, [ 0 x i32 ] }** %a_slot2973
  %len_ptr2992 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2991, i32 0, i32 0
  %len2993 = load i32* %len_ptr2992
  call void @oat_array_bounds_check( i32 %len2993, i32 %_lhs2990 )
  %elt_ptr2994 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2991, i32 0, i32 1, i32 %_lhs2990
  %_lhs2995 = load i32* %mi2975
  %array_dereferenced2996 = load { i32, [ 0 x i32 ] }** %a_slot2973
  %len_ptr2997 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2996, i32 0, i32 0
  %len2998 = load i32* %len_ptr2997
  call void @oat_array_bounds_check( i32 %len2998, i32 %_lhs2995 )
  %elt_ptr2999 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2996, i32 0, i32 1, i32 %_lhs2995
  %_lhs3000 = load i32* %elt_ptr2999
  store i32 %_lhs3000, i32* %elt_ptr2994
  %_lhs3001 = load i32* %mi2975
  %array_dereferenced3002 = load { i32, [ 0 x i32 ] }** %a_slot2973
  %len_ptr3003 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced3002, i32 0, i32 0
  %len3004 = load i32* %len_ptr3003
  call void @oat_array_bounds_check( i32 %len3004, i32 %_lhs3001 )
  %elt_ptr3005 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced3002, i32 0, i32 1, i32 %_lhs3001
  %_lhs3006 = load i32* %t2974
  store i32 %_lhs3006, i32* %elt_ptr3005
  %_lhs3007 = load i32* %i2976
  %bop3008 = add i32 %_lhs3007, 1
  store i32 %bop3008, i32* %i2976
  br label %__cond1093

__fresh1096:
  br label %__post1091

__post1091:
  ret void
}


define i32 @getminindex ({ i32, [ 0 x i32 ] }* %a2936, i32 %s2934, i32 %b2932){

__fresh1086:
  %a_slot2937 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %a2936, { i32, [ 0 x i32 ] }** %a_slot2937
  %s_slot2935 = alloca i32
  store i32 %s2934, i32* %s_slot2935
  %b_slot2933 = alloca i32
  store i32 %b2932, i32* %b_slot2933
  %_lhs2938 = load i32* %s_slot2935
  %i2939 = alloca i32
  store i32 %_lhs2938, i32* %i2939
  %_lhs2940 = load i32* %s_slot2935
  %array_dereferenced2941 = load { i32, [ 0 x i32 ] }** %a_slot2937
  %len_ptr2942 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2941, i32 0, i32 0
  %len2943 = load i32* %len_ptr2942
  call void @oat_array_bounds_check( i32 %len2943, i32 %_lhs2940 )
  %elt_ptr2944 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2941, i32 0, i32 1, i32 %_lhs2940
  %_lhs2945 = load i32* %elt_ptr2944
  %min2946 = alloca i32
  store i32 %_lhs2945, i32* %min2946
  %_lhs2947 = load i32* %s_slot2935
  %mi2948 = alloca i32
  store i32 %_lhs2947, i32* %mi2948
  br label %__cond1082

__cond1082:
  %_lhs2949 = load i32* %i2939
  %_lhs2950 = load i32* %b_slot2933
  %bop2951 = icmp slt i32 %_lhs2949, %_lhs2950
  br i1 %bop2951, label %__body1081, label %__post1080

__fresh1087:
  br label %__body1081

__body1081:
  %_lhs2952 = load i32* %i2939
  %array_dereferenced2953 = load { i32, [ 0 x i32 ] }** %a_slot2937
  %len_ptr2954 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2953, i32 0, i32 0
  %len2955 = load i32* %len_ptr2954
  call void @oat_array_bounds_check( i32 %len2955, i32 %_lhs2952 )
  %elt_ptr2956 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2953, i32 0, i32 1, i32 %_lhs2952
  %_lhs2957 = load i32* %elt_ptr2956
  %_lhs2958 = load i32* %min2946
  %bop2959 = icmp slt i32 %_lhs2957, %_lhs2958
  br i1 %bop2959, label %__then1085, label %__else1084

__fresh1088:
  br label %__then1085

__then1085:
  %_lhs2960 = load i32* %i2939
  %array_dereferenced2961 = load { i32, [ 0 x i32 ] }** %a_slot2937
  %len_ptr2962 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2961, i32 0, i32 0
  %len2963 = load i32* %len_ptr2962
  call void @oat_array_bounds_check( i32 %len2963, i32 %_lhs2960 )
  %elt_ptr2964 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2961, i32 0, i32 1, i32 %_lhs2960
  %_lhs2965 = load i32* %elt_ptr2964
  store i32 %_lhs2965, i32* %min2946
  %_lhs2966 = load i32* %i2939
  store i32 %_lhs2966, i32* %mi2948
  br label %__merge1083

__fresh1089:
  br label %__else1084

__else1084:
  br label %__merge1083

__merge1083:
  %_lhs2967 = load i32* %i2939
  %bop2968 = add i32 %_lhs2967, 1
  store i32 %bop2968, i32* %i2939
  br label %__cond1082

__fresh1090:
  br label %__post1080

__post1080:
  %_lhs2969 = load i32* %mi2948
  ret i32 %_lhs2969
}


