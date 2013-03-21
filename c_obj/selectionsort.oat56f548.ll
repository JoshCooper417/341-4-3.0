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


define i32 @program (i32 %argc3021, { i32, [ 0 x i8* ] }* %argv3019){

__fresh1107:
  %argc_slot3022 = alloca i32
  store i32 %argc3021, i32* %argc_slot3022
  %argv_slot3020 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv3019, { i32, [ 0 x i8* ] }** %argv_slot3020
  %array_ptr3023 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 8 )
  %array3024 = bitcast { i32, [ 0 x i32 ] }* %array_ptr3023 to { i32, [ 0 x i32 ] }* 
  %index_ptr3025 = getelementptr { i32, [ 0 x i32 ] }* %array3024, i32 0, i32 1, i32 0
  store i32 5, i32* %index_ptr3025
  %index_ptr3026 = getelementptr { i32, [ 0 x i32 ] }* %array3024, i32 0, i32 1, i32 1
  store i32 200, i32* %index_ptr3026
  %index_ptr3027 = getelementptr { i32, [ 0 x i32 ] }* %array3024, i32 0, i32 1, i32 2
  store i32 1, i32* %index_ptr3027
  %index_ptr3028 = getelementptr { i32, [ 0 x i32 ] }* %array3024, i32 0, i32 1, i32 3
  store i32 65, i32* %index_ptr3028
  %index_ptr3029 = getelementptr { i32, [ 0 x i32 ] }* %array3024, i32 0, i32 1, i32 4
  store i32 30, i32* %index_ptr3029
  %index_ptr3030 = getelementptr { i32, [ 0 x i32 ] }* %array3024, i32 0, i32 1, i32 5
  store i32 99, i32* %index_ptr3030
  %index_ptr3031 = getelementptr { i32, [ 0 x i32 ] }* %array3024, i32 0, i32 1, i32 6
  store i32 2, i32* %index_ptr3031
  %index_ptr3032 = getelementptr { i32, [ 0 x i32 ] }* %array3024, i32 0, i32 1, i32 7
  store i32 0, i32* %index_ptr3032
  %ar3033 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %array3024, { i32, [ 0 x i32 ] }** %ar3033
  %_lhs3034 = load { i32, [ 0 x i32 ] }** %ar3033
  call void @selectionsort( { i32, [ 0 x i32 ] }* %_lhs3034, i32 8 )
  %i3035 = alloca i32
  store i32 0, i32* %i3035
  br label %__cond1106

__cond1106:
  %_lhs3036 = load i32* %i3035
  %bop3037 = icmp slt i32 %_lhs3036, 8
  br i1 %bop3037, label %__body1105, label %__post1104

__fresh1108:
  br label %__body1105

__body1105:
  %_lhs3038 = load i32* %i3035
  %array_dereferenced3039 = load { i32, [ 0 x i32 ] }** %ar3033
  %len_ptr3040 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced3039, i32 0, i32 0
  %len3041 = load i32* %len_ptr3040
  call void @oat_array_bounds_check( i32 %len3041, i32 %_lhs3038 )
  %elt_ptr3042 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced3039, i32 0, i32 1, i32 %_lhs3038
  %_lhs3043 = load i32* %elt_ptr3042
  call void @print_int( i32 %_lhs3043 )
  %_lhs3044 = load i32* %i3035
  %bop3045 = add i32 %_lhs3044, 1
  store i32 %bop3045, i32* %i3035
  br label %__cond1106

__fresh1109:
  br label %__post1104

__post1104:
  ret i32 0
}


define void @selectionsort ({ i32, [ 0 x i32 ] }* %a2982, i32 %s2980){

__fresh1101:
  %a_slot2983 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %a2982, { i32, [ 0 x i32 ] }** %a_slot2983
  %s_slot2981 = alloca i32
  store i32 %s2980, i32* %s_slot2981
  %t2984 = alloca i32
  store i32 0, i32* %t2984
  %mi2985 = alloca i32
  store i32 0, i32* %mi2985
  %i2986 = alloca i32
  store i32 0, i32* %i2986
  br label %__cond1100

__cond1100:
  %_lhs2987 = load i32* %i2986
  %_lhs2988 = load i32* %s_slot2981
  %bop2989 = icmp slt i32 %_lhs2987, %_lhs2988
  br i1 %bop2989, label %__body1099, label %__post1098

__fresh1102:
  br label %__body1099

__body1099:
  %_lhs2992 = load i32* %s_slot2981
  %_lhs2991 = load i32* %i2986
  %_lhs2990 = load { i32, [ 0 x i32 ] }** %a_slot2983
  %ret2993 = call i32 @getminindex ( { i32, [ 0 x i32 ] }* %_lhs2990, i32 %_lhs2991, i32 %_lhs2992 )
  store i32 %ret2993, i32* %mi2985
  %_lhs2994 = load i32* %i2986
  %array_dereferenced2995 = load { i32, [ 0 x i32 ] }** %a_slot2983
  %len_ptr2996 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2995, i32 0, i32 0
  %len2997 = load i32* %len_ptr2996
  call void @oat_array_bounds_check( i32 %len2997, i32 %_lhs2994 )
  %elt_ptr2998 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2995, i32 0, i32 1, i32 %_lhs2994
  %_lhs2999 = load i32* %elt_ptr2998
  store i32 %_lhs2999, i32* %t2984
  %_lhs3000 = load i32* %i2986
  %array_dereferenced3001 = load { i32, [ 0 x i32 ] }** %a_slot2983
  %len_ptr3002 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced3001, i32 0, i32 0
  %len3003 = load i32* %len_ptr3002
  call void @oat_array_bounds_check( i32 %len3003, i32 %_lhs3000 )
  %elt_ptr3004 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced3001, i32 0, i32 1, i32 %_lhs3000
  %_lhs3005 = load i32* %mi2985
  %array_dereferenced3006 = load { i32, [ 0 x i32 ] }** %a_slot2983
  %len_ptr3007 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced3006, i32 0, i32 0
  %len3008 = load i32* %len_ptr3007
  call void @oat_array_bounds_check( i32 %len3008, i32 %_lhs3005 )
  %elt_ptr3009 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced3006, i32 0, i32 1, i32 %_lhs3005
  %_lhs3010 = load i32* %elt_ptr3009
  store i32 %_lhs3010, i32* %elt_ptr3004
  %_lhs3011 = load i32* %mi2985
  %array_dereferenced3012 = load { i32, [ 0 x i32 ] }** %a_slot2983
  %len_ptr3013 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced3012, i32 0, i32 0
  %len3014 = load i32* %len_ptr3013
  call void @oat_array_bounds_check( i32 %len3014, i32 %_lhs3011 )
  %elt_ptr3015 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced3012, i32 0, i32 1, i32 %_lhs3011
  %_lhs3016 = load i32* %t2984
  store i32 %_lhs3016, i32* %elt_ptr3015
  %_lhs3017 = load i32* %i2986
  %bop3018 = add i32 %_lhs3017, 1
  store i32 %bop3018, i32* %i2986
  br label %__cond1100

__fresh1103:
  br label %__post1098

__post1098:
  ret void
}


define i32 @getminindex ({ i32, [ 0 x i32 ] }* %a2946, i32 %s2944, i32 %b2942){

__fresh1093:
  %a_slot2947 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %a2946, { i32, [ 0 x i32 ] }** %a_slot2947
  %s_slot2945 = alloca i32
  store i32 %s2944, i32* %s_slot2945
  %b_slot2943 = alloca i32
  store i32 %b2942, i32* %b_slot2943
  %_lhs2948 = load i32* %s_slot2945
  %i2949 = alloca i32
  store i32 %_lhs2948, i32* %i2949
  %_lhs2950 = load i32* %s_slot2945
  %array_dereferenced2951 = load { i32, [ 0 x i32 ] }** %a_slot2947
  %len_ptr2952 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2951, i32 0, i32 0
  %len2953 = load i32* %len_ptr2952
  call void @oat_array_bounds_check( i32 %len2953, i32 %_lhs2950 )
  %elt_ptr2954 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2951, i32 0, i32 1, i32 %_lhs2950
  %_lhs2955 = load i32* %elt_ptr2954
  %min2956 = alloca i32
  store i32 %_lhs2955, i32* %min2956
  %_lhs2957 = load i32* %s_slot2945
  %mi2958 = alloca i32
  store i32 %_lhs2957, i32* %mi2958
  br label %__cond1089

__cond1089:
  %_lhs2959 = load i32* %i2949
  %_lhs2960 = load i32* %b_slot2943
  %bop2961 = icmp slt i32 %_lhs2959, %_lhs2960
  br i1 %bop2961, label %__body1088, label %__post1087

__fresh1094:
  br label %__body1088

__body1088:
  %_lhs2962 = load i32* %i2949
  %array_dereferenced2963 = load { i32, [ 0 x i32 ] }** %a_slot2947
  %len_ptr2964 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2963, i32 0, i32 0
  %len2965 = load i32* %len_ptr2964
  call void @oat_array_bounds_check( i32 %len2965, i32 %_lhs2962 )
  %elt_ptr2966 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2963, i32 0, i32 1, i32 %_lhs2962
  %_lhs2967 = load i32* %elt_ptr2966
  %_lhs2968 = load i32* %min2956
  %bop2969 = icmp slt i32 %_lhs2967, %_lhs2968
  br i1 %bop2969, label %__then1092, label %__else1091

__fresh1095:
  br label %__then1092

__then1092:
  %_lhs2970 = load i32* %i2949
  %array_dereferenced2971 = load { i32, [ 0 x i32 ] }** %a_slot2947
  %len_ptr2972 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2971, i32 0, i32 0
  %len2973 = load i32* %len_ptr2972
  call void @oat_array_bounds_check( i32 %len2973, i32 %_lhs2970 )
  %elt_ptr2974 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2971, i32 0, i32 1, i32 %_lhs2970
  %_lhs2975 = load i32* %elt_ptr2974
  store i32 %_lhs2975, i32* %min2956
  %_lhs2976 = load i32* %i2949
  store i32 %_lhs2976, i32* %mi2958
  br label %__merge1090

__fresh1096:
  br label %__else1091

__else1091:
  br label %__merge1090

__merge1090:
  %_lhs2977 = load i32* %i2949
  %bop2978 = add i32 %_lhs2977, 1
  store i32 %bop2978, i32* %i2949
  br label %__cond1089

__fresh1097:
  br label %__post1087

__post1087:
  %_lhs2979 = load i32* %mi2958
  ret i32 %_lhs2979
}


