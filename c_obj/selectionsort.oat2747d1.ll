declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
define void @oat_init (){

__fresh535:
  ret void
}


define i32 @program (i32 %argc3030, { i32, [ 0 x i8* ] }* %argv3028){

__fresh532:
  %argc_slot3031 = alloca i32
  store i32 %argc3030, i32* %argc_slot3031
  %argv_slot3029 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv3028, { i32, [ 0 x i8* ] }** %argv_slot3029
  %array_ptr3032 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 8 )
  %array3033 = bitcast { i32, [ 0 x i32 ] }* %array_ptr3032 to { i32, [ 0 x i32 ] }* 
  %index_ptr3034 = getelementptr { i32, [ 0 x i32 ] }* %array3033, i32 0, i32 1, i32 0
  store i32 5, i32* %index_ptr3034
  %index_ptr3035 = getelementptr { i32, [ 0 x i32 ] }* %array3033, i32 0, i32 1, i32 1
  store i32 200, i32* %index_ptr3035
  %index_ptr3036 = getelementptr { i32, [ 0 x i32 ] }* %array3033, i32 0, i32 1, i32 2
  store i32 1, i32* %index_ptr3036
  %index_ptr3037 = getelementptr { i32, [ 0 x i32 ] }* %array3033, i32 0, i32 1, i32 3
  store i32 65, i32* %index_ptr3037
  %index_ptr3038 = getelementptr { i32, [ 0 x i32 ] }* %array3033, i32 0, i32 1, i32 4
  store i32 30, i32* %index_ptr3038
  %index_ptr3039 = getelementptr { i32, [ 0 x i32 ] }* %array3033, i32 0, i32 1, i32 5
  store i32 99, i32* %index_ptr3039
  %index_ptr3040 = getelementptr { i32, [ 0 x i32 ] }* %array3033, i32 0, i32 1, i32 6
  store i32 2, i32* %index_ptr3040
  %index_ptr3041 = getelementptr { i32, [ 0 x i32 ] }* %array3033, i32 0, i32 1, i32 7
  store i32 0, i32* %index_ptr3041
  %ar3042 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %array3033, { i32, [ 0 x i32 ] }** %ar3042
  %_lhs3043 = load { i32, [ 0 x i32 ] }** %ar3042
  call void @selectionsort( { i32, [ 0 x i32 ] }* %_lhs3043, i32 8 )
  %i3044 = alloca i32
  store i32 0, i32* %i3044
  br label %__cond531

__cond531:
  %_lhs3045 = load i32* %i3044
  %bop3046 = icmp slt i32 %_lhs3045, 8
  br i1 %bop3046, label %__body530, label %__post529

__fresh533:
  br label %__body530

__body530:
  %_lhs3047 = load i32* %i3044
  %len_ptr3048 = getelementptr { i32, [ 0 x i32 ] }** %ar3042, i32 0, i32 0
  %len3049 = load i32* %len_ptr3048
  call void @oat_array_bounds_check( i32 %len3049, i32 %_lhs3047 )
  %array_dereferenced3050 = load { i32, [ 0 x i32 ] }** %ar3042
  %elt_ptr3051 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced3050, i32 0, i32 1, i32 %_lhs3047
  %_lhs3052 = load i32* %elt_ptr3051
  call void @print_int( i32 %_lhs3052 )
  %_lhs3053 = load i32* %i3044
  %bop3054 = add i32 %_lhs3053, 1
  store i32 %bop3054, i32* %i3044
  br label %__cond531

__fresh534:
  br label %__post529

__post529:
  ret i32 0
}


define void @selectionsort ({ i32, [ 0 x i32 ] }* %a2991, i32 %s2989){

__fresh526:
  %a_slot2992 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %a2991, { i32, [ 0 x i32 ] }** %a_slot2992
  %s_slot2990 = alloca i32
  store i32 %s2989, i32* %s_slot2990
  %t2993 = alloca i32
  store i32 0, i32* %t2993
  %mi2994 = alloca i32
  store i32 0, i32* %mi2994
  %i2995 = alloca i32
  store i32 0, i32* %i2995
  br label %__cond525

__cond525:
  %_lhs2996 = load i32* %i2995
  %_lhs2997 = load i32* %s_slot2990
  %bop2998 = icmp slt i32 %_lhs2996, %_lhs2997
  br i1 %bop2998, label %__body524, label %__post523

__fresh527:
  br label %__body524

__body524:
  %_lhs3001 = load i32* %s_slot2990
  %_lhs3000 = load i32* %i2995
  %_lhs2999 = load { i32, [ 0 x i32 ] }** %a_slot2992
  %ret3002 = call i32 @getminindex ( { i32, [ 0 x i32 ] }* %_lhs2999, i32 %_lhs3000, i32 %_lhs3001 )
  store i32 %ret3002, i32* %mi2994
  %_lhs3003 = load i32* %i2995
  %len_ptr3004 = getelementptr { i32, [ 0 x i32 ] }** %a_slot2992, i32 0, i32 0
  %len3005 = load i32* %len_ptr3004
  call void @oat_array_bounds_check( i32 %len3005, i32 %_lhs3003 )
  %array_dereferenced3006 = load { i32, [ 0 x i32 ] }** %a_slot2992
  %elt_ptr3007 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced3006, i32 0, i32 1, i32 %_lhs3003
  %_lhs3008 = load i32* %elt_ptr3007
  store i32 %_lhs3008, i32* %t2993
  %_lhs3009 = load i32* %i2995
  %len_ptr3010 = getelementptr { i32, [ 0 x i32 ] }** %a_slot2992, i32 0, i32 0
  %len3011 = load i32* %len_ptr3010
  call void @oat_array_bounds_check( i32 %len3011, i32 %_lhs3009 )
  %array_dereferenced3012 = load { i32, [ 0 x i32 ] }** %a_slot2992
  %elt_ptr3013 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced3012, i32 0, i32 1, i32 %_lhs3009
  %_lhs3014 = load i32* %mi2994
  %len_ptr3015 = getelementptr { i32, [ 0 x i32 ] }** %a_slot2992, i32 0, i32 0
  %len3016 = load i32* %len_ptr3015
  call void @oat_array_bounds_check( i32 %len3016, i32 %_lhs3014 )
  %array_dereferenced3017 = load { i32, [ 0 x i32 ] }** %a_slot2992
  %elt_ptr3018 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced3017, i32 0, i32 1, i32 %_lhs3014
  %_lhs3019 = load i32* %elt_ptr3018
  store i32 %_lhs3019, i32* %elt_ptr3013
  %_lhs3020 = load i32* %mi2994
  %len_ptr3021 = getelementptr { i32, [ 0 x i32 ] }** %a_slot2992, i32 0, i32 0
  %len3022 = load i32* %len_ptr3021
  call void @oat_array_bounds_check( i32 %len3022, i32 %_lhs3020 )
  %array_dereferenced3023 = load { i32, [ 0 x i32 ] }** %a_slot2992
  %elt_ptr3024 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced3023, i32 0, i32 1, i32 %_lhs3020
  %_lhs3025 = load i32* %t2993
  store i32 %_lhs3025, i32* %elt_ptr3024
  %_lhs3026 = load i32* %i2995
  %bop3027 = add i32 %_lhs3026, 1
  store i32 %bop3027, i32* %i2995
  br label %__cond525

__fresh528:
  br label %__post523

__post523:
  ret void
}


define i32 @getminindex ({ i32, [ 0 x i32 ] }* %a2955, i32 %s2953, i32 %b2951){

__fresh518:
  %a_slot2956 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %a2955, { i32, [ 0 x i32 ] }** %a_slot2956
  %s_slot2954 = alloca i32
  store i32 %s2953, i32* %s_slot2954
  %b_slot2952 = alloca i32
  store i32 %b2951, i32* %b_slot2952
  %_lhs2957 = load i32* %s_slot2954
  %i2958 = alloca i32
  store i32 %_lhs2957, i32* %i2958
  %_lhs2959 = load i32* %s_slot2954
  %len_ptr2960 = getelementptr { i32, [ 0 x i32 ] }** %a_slot2956, i32 0, i32 0
  %len2961 = load i32* %len_ptr2960
  call void @oat_array_bounds_check( i32 %len2961, i32 %_lhs2959 )
  %array_dereferenced2962 = load { i32, [ 0 x i32 ] }** %a_slot2956
  %elt_ptr2963 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2962, i32 0, i32 1, i32 %_lhs2959
  %_lhs2964 = load i32* %elt_ptr2963
  %min2965 = alloca i32
  store i32 %_lhs2964, i32* %min2965
  %_lhs2966 = load i32* %s_slot2954
  %mi2967 = alloca i32
  store i32 %_lhs2966, i32* %mi2967
  br label %__cond514

__cond514:
  %_lhs2968 = load i32* %i2958
  %_lhs2969 = load i32* %b_slot2952
  %bop2970 = icmp slt i32 %_lhs2968, %_lhs2969
  br i1 %bop2970, label %__body513, label %__post512

__fresh519:
  br label %__body513

__body513:
  %_lhs2971 = load i32* %i2958
  %len_ptr2972 = getelementptr { i32, [ 0 x i32 ] }** %a_slot2956, i32 0, i32 0
  %len2973 = load i32* %len_ptr2972
  call void @oat_array_bounds_check( i32 %len2973, i32 %_lhs2971 )
  %array_dereferenced2974 = load { i32, [ 0 x i32 ] }** %a_slot2956
  %elt_ptr2975 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2974, i32 0, i32 1, i32 %_lhs2971
  %_lhs2976 = load i32* %elt_ptr2975
  %_lhs2977 = load i32* %min2965
  %bop2978 = icmp slt i32 %_lhs2976, %_lhs2977
  br i1 %bop2978, label %__then517, label %__else516

__fresh520:
  br label %__then517

__then517:
  %_lhs2979 = load i32* %i2958
  %len_ptr2980 = getelementptr { i32, [ 0 x i32 ] }** %a_slot2956, i32 0, i32 0
  %len2981 = load i32* %len_ptr2980
  call void @oat_array_bounds_check( i32 %len2981, i32 %_lhs2979 )
  %array_dereferenced2982 = load { i32, [ 0 x i32 ] }** %a_slot2956
  %elt_ptr2983 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2982, i32 0, i32 1, i32 %_lhs2979
  %_lhs2984 = load i32* %elt_ptr2983
  store i32 %_lhs2984, i32* %min2965
  %_lhs2985 = load i32* %i2958
  store i32 %_lhs2985, i32* %mi2967
  br label %__merge515

__fresh521:
  br label %__else516

__else516:
  br label %__merge515

__merge515:
  %_lhs2986 = load i32* %i2958
  %bop2987 = add i32 %_lhs2986, 1
  store i32 %bop2987, i32* %i2958
  br label %__cond514

__fresh522:
  br label %__post512

__post512:
  %_lhs2988 = load i32* %mi2967
  ret i32 %_lhs2988
}


