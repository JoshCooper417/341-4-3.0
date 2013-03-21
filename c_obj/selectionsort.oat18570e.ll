declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
define void @oat_init (){

__fresh610:
  ret void
}


define i32 @program (i32 %argc3031, { i32, [ 0 x i8* ] }* %argv3029){

__fresh607:
  %argc_slot3032 = alloca i32
  store i32 %argc3031, i32* %argc_slot3032
  %argv_slot3030 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv3029, { i32, [ 0 x i8* ] }** %argv_slot3030
  %array_ptr3033 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 8 )
  %array3034 = bitcast { i32, [ 0 x i32 ] }* %array_ptr3033 to { i32, [ 0 x i32 ] }* 
  %index_ptr3035 = getelementptr { i32, [ 0 x i32 ] }* %array3034, i32 0, i32 1, i32 0
  store i32 5, i32* %index_ptr3035
  %index_ptr3036 = getelementptr { i32, [ 0 x i32 ] }* %array3034, i32 0, i32 1, i32 1
  store i32 200, i32* %index_ptr3036
  %index_ptr3037 = getelementptr { i32, [ 0 x i32 ] }* %array3034, i32 0, i32 1, i32 2
  store i32 1, i32* %index_ptr3037
  %index_ptr3038 = getelementptr { i32, [ 0 x i32 ] }* %array3034, i32 0, i32 1, i32 3
  store i32 65, i32* %index_ptr3038
  %index_ptr3039 = getelementptr { i32, [ 0 x i32 ] }* %array3034, i32 0, i32 1, i32 4
  store i32 30, i32* %index_ptr3039
  %index_ptr3040 = getelementptr { i32, [ 0 x i32 ] }* %array3034, i32 0, i32 1, i32 5
  store i32 99, i32* %index_ptr3040
  %index_ptr3041 = getelementptr { i32, [ 0 x i32 ] }* %array3034, i32 0, i32 1, i32 6
  store i32 2, i32* %index_ptr3041
  %index_ptr3042 = getelementptr { i32, [ 0 x i32 ] }* %array3034, i32 0, i32 1, i32 7
  store i32 0, i32* %index_ptr3042
  %ar3043 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %array3034, { i32, [ 0 x i32 ] }** %ar3043
  %_lhs3044 = load { i32, [ 0 x i32 ] }** %ar3043
  call void @selectionsort( { i32, [ 0 x i32 ] }* %_lhs3044, i32 8 )
  %i3045 = alloca i32
  store i32 0, i32* %i3045
  br label %__cond606

__cond606:
  %_lhs3046 = load i32* %i3045
  %bop3047 = icmp slt i32 %_lhs3046, 8
  br i1 %bop3047, label %__body605, label %__post604

__fresh608:
  br label %__body605

__body605:
  %_lhs3048 = load i32* %i3045
  %len_ptr3049 = getelementptr { i32, [ 0 x i32 ] }** %ar3043, i32 0, i32 0
  %len3050 = load i32* %len_ptr3049
  call void @oat_array_bounds_check( i32 %len3050, i32 %_lhs3048 )
  %array_dereferenced3051 = load { i32, [ 0 x i32 ] }** %ar3043
  %elt_ptr3052 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced3051, i32 0, i32 1, i32 %_lhs3048
  %_lhs3053 = load i32* %elt_ptr3052
  call void @print_int( i32 %_lhs3053 )
  %_lhs3054 = load i32* %i3045
  %bop3055 = add i32 %_lhs3054, 1
  store i32 %bop3055, i32* %i3045
  br label %__cond606

__fresh609:
  br label %__post604

__post604:
  ret i32 0
}


define void @selectionsort ({ i32, [ 0 x i32 ] }* %a2992, i32 %s2990){

__fresh601:
  %a_slot2993 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %a2992, { i32, [ 0 x i32 ] }** %a_slot2993
  %s_slot2991 = alloca i32
  store i32 %s2990, i32* %s_slot2991
  %t2994 = alloca i32
  store i32 0, i32* %t2994
  %mi2995 = alloca i32
  store i32 0, i32* %mi2995
  %i2996 = alloca i32
  store i32 0, i32* %i2996
  br label %__cond600

__cond600:
  %_lhs2997 = load i32* %i2996
  %_lhs2998 = load i32* %s_slot2991
  %bop2999 = icmp slt i32 %_lhs2997, %_lhs2998
  br i1 %bop2999, label %__body599, label %__post598

__fresh602:
  br label %__body599

__body599:
  %_lhs3002 = load i32* %s_slot2991
  %_lhs3001 = load i32* %i2996
  %_lhs3000 = load { i32, [ 0 x i32 ] }** %a_slot2993
  %ret3003 = call i32 @getminindex ( { i32, [ 0 x i32 ] }* %_lhs3000, i32 %_lhs3001, i32 %_lhs3002 )
  store i32 %ret3003, i32* %mi2995
  %_lhs3004 = load i32* %i2996
  %len_ptr3005 = getelementptr { i32, [ 0 x i32 ] }** %a_slot2993, i32 0, i32 0
  %len3006 = load i32* %len_ptr3005
  call void @oat_array_bounds_check( i32 %len3006, i32 %_lhs3004 )
  %array_dereferenced3007 = load { i32, [ 0 x i32 ] }** %a_slot2993
  %elt_ptr3008 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced3007, i32 0, i32 1, i32 %_lhs3004
  %_lhs3009 = load i32* %elt_ptr3008
  store i32 %_lhs3009, i32* %t2994
  %_lhs3010 = load i32* %i2996
  %len_ptr3011 = getelementptr { i32, [ 0 x i32 ] }** %a_slot2993, i32 0, i32 0
  %len3012 = load i32* %len_ptr3011
  call void @oat_array_bounds_check( i32 %len3012, i32 %_lhs3010 )
  %array_dereferenced3013 = load { i32, [ 0 x i32 ] }** %a_slot2993
  %elt_ptr3014 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced3013, i32 0, i32 1, i32 %_lhs3010
  %_lhs3015 = load i32* %mi2995
  %len_ptr3016 = getelementptr { i32, [ 0 x i32 ] }** %a_slot2993, i32 0, i32 0
  %len3017 = load i32* %len_ptr3016
  call void @oat_array_bounds_check( i32 %len3017, i32 %_lhs3015 )
  %array_dereferenced3018 = load { i32, [ 0 x i32 ] }** %a_slot2993
  %elt_ptr3019 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced3018, i32 0, i32 1, i32 %_lhs3015
  %_lhs3020 = load i32* %elt_ptr3019
  store i32 %_lhs3020, i32* %elt_ptr3014
  %_lhs3021 = load i32* %mi2995
  %len_ptr3022 = getelementptr { i32, [ 0 x i32 ] }** %a_slot2993, i32 0, i32 0
  %len3023 = load i32* %len_ptr3022
  call void @oat_array_bounds_check( i32 %len3023, i32 %_lhs3021 )
  %array_dereferenced3024 = load { i32, [ 0 x i32 ] }** %a_slot2993
  %elt_ptr3025 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced3024, i32 0, i32 1, i32 %_lhs3021
  %_lhs3026 = load i32* %t2994
  store i32 %_lhs3026, i32* %elt_ptr3025
  %_lhs3027 = load i32* %i2996
  %bop3028 = add i32 %_lhs3027, 1
  store i32 %bop3028, i32* %i2996
  br label %__cond600

__fresh603:
  br label %__post598

__post598:
  ret void
}


define i32 @getminindex ({ i32, [ 0 x i32 ] }* %a2956, i32 %s2954, i32 %b2952){

__fresh593:
  %a_slot2957 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %a2956, { i32, [ 0 x i32 ] }** %a_slot2957
  %s_slot2955 = alloca i32
  store i32 %s2954, i32* %s_slot2955
  %b_slot2953 = alloca i32
  store i32 %b2952, i32* %b_slot2953
  %_lhs2958 = load i32* %s_slot2955
  %i2959 = alloca i32
  store i32 %_lhs2958, i32* %i2959
  %_lhs2960 = load i32* %s_slot2955
  %len_ptr2961 = getelementptr { i32, [ 0 x i32 ] }** %a_slot2957, i32 0, i32 0
  %len2962 = load i32* %len_ptr2961
  call void @oat_array_bounds_check( i32 %len2962, i32 %_lhs2960 )
  %array_dereferenced2963 = load { i32, [ 0 x i32 ] }** %a_slot2957
  %elt_ptr2964 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2963, i32 0, i32 1, i32 %_lhs2960
  %_lhs2965 = load i32* %elt_ptr2964
  %min2966 = alloca i32
  store i32 %_lhs2965, i32* %min2966
  %_lhs2967 = load i32* %s_slot2955
  %mi2968 = alloca i32
  store i32 %_lhs2967, i32* %mi2968
  br label %__cond589

__cond589:
  %_lhs2969 = load i32* %i2959
  %_lhs2970 = load i32* %b_slot2953
  %bop2971 = icmp slt i32 %_lhs2969, %_lhs2970
  br i1 %bop2971, label %__body588, label %__post587

__fresh594:
  br label %__body588

__body588:
  %_lhs2972 = load i32* %i2959
  %len_ptr2973 = getelementptr { i32, [ 0 x i32 ] }** %a_slot2957, i32 0, i32 0
  %len2974 = load i32* %len_ptr2973
  call void @oat_array_bounds_check( i32 %len2974, i32 %_lhs2972 )
  %array_dereferenced2975 = load { i32, [ 0 x i32 ] }** %a_slot2957
  %elt_ptr2976 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2975, i32 0, i32 1, i32 %_lhs2972
  %_lhs2977 = load i32* %elt_ptr2976
  %_lhs2978 = load i32* %min2966
  %bop2979 = icmp slt i32 %_lhs2977, %_lhs2978
  br i1 %bop2979, label %__then592, label %__else591

__fresh595:
  br label %__then592

__then592:
  %_lhs2980 = load i32* %i2959
  %len_ptr2981 = getelementptr { i32, [ 0 x i32 ] }** %a_slot2957, i32 0, i32 0
  %len2982 = load i32* %len_ptr2981
  call void @oat_array_bounds_check( i32 %len2982, i32 %_lhs2980 )
  %array_dereferenced2983 = load { i32, [ 0 x i32 ] }** %a_slot2957
  %elt_ptr2984 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2983, i32 0, i32 1, i32 %_lhs2980
  %_lhs2985 = load i32* %elt_ptr2984
  store i32 %_lhs2985, i32* %min2966
  %_lhs2986 = load i32* %i2959
  store i32 %_lhs2986, i32* %mi2968
  br label %__merge590

__fresh596:
  br label %__else591

__else591:
  br label %__merge590

__merge590:
  %_lhs2987 = load i32* %i2959
  %bop2988 = add i32 %_lhs2987, 1
  store i32 %bop2988, i32* %i2959
  br label %__cond589

__fresh597:
  br label %__post587

__post587:
  %_lhs2989 = load i32* %mi2968
  ret i32 %_lhs2989
}


