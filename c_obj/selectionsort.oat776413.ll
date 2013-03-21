declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
define void @oat_init (){

__fresh774:
  ret void
}


define i32 @program (i32 %argc3011, { i32, [ 0 x i8* ] }* %argv3009){

__fresh771:
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
  br label %__cond770

__cond770:
  %_lhs3026 = load i32* %i3025
  %bop3027 = icmp slt i32 %_lhs3026, 8
  br i1 %bop3027, label %__body769, label %__post768

__fresh772:
  br label %__body769

__body769:
  %_lhs3028 = load i32* %i3025
  %len_ptr3029 = getelementptr { i32, [ 0 x i32 ] }** %ar3023, i32 0, i32 0
  %len3030 = load i32* %len_ptr3029
  call void @oat_array_bounds_check( i32 %len3030, i32 %_lhs3028 )
  %array_dereferenced3031 = load { i32, [ 0 x i32 ] }** %ar3023
  %elt_ptr3032 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced3031, i32 0, i32 1, i32 %_lhs3028
  %_lhs3033 = load i32* %elt_ptr3032
  call void @print_int( i32 %_lhs3033 )
  %_lhs3034 = load i32* %i3025
  %bop3035 = add i32 %_lhs3034, 1
  store i32 %bop3035, i32* %i3025
  br label %__cond770

__fresh773:
  br label %__post768

__post768:
  ret i32 0
}


define void @selectionsort ({ i32, [ 0 x i32 ] }* %a2972, i32 %s2970){

__fresh765:
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
  br label %__cond764

__cond764:
  %_lhs2977 = load i32* %i2976
  %_lhs2978 = load i32* %s_slot2971
  %bop2979 = icmp slt i32 %_lhs2977, %_lhs2978
  br i1 %bop2979, label %__body763, label %__post762

__fresh766:
  br label %__body763

__body763:
  %_lhs2982 = load i32* %s_slot2971
  %_lhs2981 = load i32* %i2976
  %_lhs2980 = load { i32, [ 0 x i32 ] }** %a_slot2973
  %ret2983 = call i32 @getminindex ( { i32, [ 0 x i32 ] }* %_lhs2980, i32 %_lhs2981, i32 %_lhs2982 )
  store i32 %ret2983, i32* %mi2975
  %_lhs2984 = load i32* %i2976
  %len_ptr2985 = getelementptr { i32, [ 0 x i32 ] }** %a_slot2973, i32 0, i32 0
  %len2986 = load i32* %len_ptr2985
  call void @oat_array_bounds_check( i32 %len2986, i32 %_lhs2984 )
  %array_dereferenced2987 = load { i32, [ 0 x i32 ] }** %a_slot2973
  %elt_ptr2988 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2987, i32 0, i32 1, i32 %_lhs2984
  %_lhs2989 = load i32* %elt_ptr2988
  store i32 %_lhs2989, i32* %t2974
  %_lhs2990 = load i32* %i2976
  %len_ptr2991 = getelementptr { i32, [ 0 x i32 ] }** %a_slot2973, i32 0, i32 0
  %len2992 = load i32* %len_ptr2991
  call void @oat_array_bounds_check( i32 %len2992, i32 %_lhs2990 )
  %array_dereferenced2993 = load { i32, [ 0 x i32 ] }** %a_slot2973
  %elt_ptr2994 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2993, i32 0, i32 1, i32 %_lhs2990
  %_lhs2995 = load i32* %mi2975
  %len_ptr2996 = getelementptr { i32, [ 0 x i32 ] }** %a_slot2973, i32 0, i32 0
  %len2997 = load i32* %len_ptr2996
  call void @oat_array_bounds_check( i32 %len2997, i32 %_lhs2995 )
  %array_dereferenced2998 = load { i32, [ 0 x i32 ] }** %a_slot2973
  %elt_ptr2999 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2998, i32 0, i32 1, i32 %_lhs2995
  %_lhs3000 = load i32* %elt_ptr2999
  store i32 %_lhs3000, i32* %elt_ptr2994
  %_lhs3001 = load i32* %mi2975
  %len_ptr3002 = getelementptr { i32, [ 0 x i32 ] }** %a_slot2973, i32 0, i32 0
  %len3003 = load i32* %len_ptr3002
  call void @oat_array_bounds_check( i32 %len3003, i32 %_lhs3001 )
  %array_dereferenced3004 = load { i32, [ 0 x i32 ] }** %a_slot2973
  %elt_ptr3005 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced3004, i32 0, i32 1, i32 %_lhs3001
  %_lhs3006 = load i32* %t2974
  store i32 %_lhs3006, i32* %elt_ptr3005
  %_lhs3007 = load i32* %i2976
  %bop3008 = add i32 %_lhs3007, 1
  store i32 %bop3008, i32* %i2976
  br label %__cond764

__fresh767:
  br label %__post762

__post762:
  ret void
}


define i32 @getminindex ({ i32, [ 0 x i32 ] }* %a2936, i32 %s2934, i32 %b2932){

__fresh757:
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
  %len_ptr2941 = getelementptr { i32, [ 0 x i32 ] }** %a_slot2937, i32 0, i32 0
  %len2942 = load i32* %len_ptr2941
  call void @oat_array_bounds_check( i32 %len2942, i32 %_lhs2940 )
  %array_dereferenced2943 = load { i32, [ 0 x i32 ] }** %a_slot2937
  %elt_ptr2944 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2943, i32 0, i32 1, i32 %_lhs2940
  %_lhs2945 = load i32* %elt_ptr2944
  %min2946 = alloca i32
  store i32 %_lhs2945, i32* %min2946
  %_lhs2947 = load i32* %s_slot2935
  %mi2948 = alloca i32
  store i32 %_lhs2947, i32* %mi2948
  br label %__cond753

__cond753:
  %_lhs2949 = load i32* %i2939
  %_lhs2950 = load i32* %b_slot2933
  %bop2951 = icmp slt i32 %_lhs2949, %_lhs2950
  br i1 %bop2951, label %__body752, label %__post751

__fresh758:
  br label %__body752

__body752:
  %_lhs2952 = load i32* %i2939
  %len_ptr2953 = getelementptr { i32, [ 0 x i32 ] }** %a_slot2937, i32 0, i32 0
  %len2954 = load i32* %len_ptr2953
  call void @oat_array_bounds_check( i32 %len2954, i32 %_lhs2952 )
  %array_dereferenced2955 = load { i32, [ 0 x i32 ] }** %a_slot2937
  %elt_ptr2956 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2955, i32 0, i32 1, i32 %_lhs2952
  %_lhs2957 = load i32* %elt_ptr2956
  %_lhs2958 = load i32* %min2946
  %bop2959 = icmp slt i32 %_lhs2957, %_lhs2958
  br i1 %bop2959, label %__then756, label %__else755

__fresh759:
  br label %__then756

__then756:
  %_lhs2960 = load i32* %i2939
  %len_ptr2961 = getelementptr { i32, [ 0 x i32 ] }** %a_slot2937, i32 0, i32 0
  %len2962 = load i32* %len_ptr2961
  call void @oat_array_bounds_check( i32 %len2962, i32 %_lhs2960 )
  %array_dereferenced2963 = load { i32, [ 0 x i32 ] }** %a_slot2937
  %elt_ptr2964 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2963, i32 0, i32 1, i32 %_lhs2960
  %_lhs2965 = load i32* %elt_ptr2964
  store i32 %_lhs2965, i32* %min2946
  %_lhs2966 = load i32* %i2939
  store i32 %_lhs2966, i32* %mi2948
  br label %__merge754

__fresh760:
  br label %__else755

__else755:
  br label %__merge754

__merge754:
  %_lhs2967 = load i32* %i2939
  %bop2968 = add i32 %_lhs2967, 1
  store i32 %bop2968, i32* %i2939
  br label %__cond753

__fresh761:
  br label %__post751

__post751:
  %_lhs2969 = load i32* %mi2948
  ret i32 %_lhs2969
}


