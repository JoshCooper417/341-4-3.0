declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
define void @oat_init (){

__fresh591:
  ret void
}


define i32 @program (i32 %argc2934, { i32, [ 0 x i8* ] }* %argv2932){

__fresh588:
  %argc_slot2935 = alloca i32
  store i32 %argc2934, i32* %argc_slot2935
  %argv_slot2933 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv2932, { i32, [ 0 x i8* ] }** %argv_slot2933
  %array_ptr2936 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 15 )
  %array2937 = bitcast { i32, [ 0 x i32 ] }* %array_ptr2936 to { i32, [ 0 x i32 ] }* 
  %index_ptr2938 = getelementptr { i32, [ 0 x i32 ] }* %array2937, i32 0, i32 1, i32 0
  store i32 1, i32* %index_ptr2938
  %index_ptr2939 = getelementptr { i32, [ 0 x i32 ] }* %array2937, i32 0, i32 1, i32 1
  store i32 4, i32* %index_ptr2939
  %index_ptr2940 = getelementptr { i32, [ 0 x i32 ] }* %array2937, i32 0, i32 1, i32 2
  store i32 5, i32* %index_ptr2940
  %index_ptr2941 = getelementptr { i32, [ 0 x i32 ] }* %array2937, i32 0, i32 1, i32 3
  store i32 3, i32* %index_ptr2941
  %unop2942 = sub i32 0, 6
  %index_ptr2943 = getelementptr { i32, [ 0 x i32 ] }* %array2937, i32 0, i32 1, i32 4
  store i32 %unop2942, i32* %index_ptr2943
  %index_ptr2944 = getelementptr { i32, [ 0 x i32 ] }* %array2937, i32 0, i32 1, i32 5
  store i32 3, i32* %index_ptr2944
  %index_ptr2945 = getelementptr { i32, [ 0 x i32 ] }* %array2937, i32 0, i32 1, i32 6
  store i32 7, i32* %index_ptr2945
  %index_ptr2946 = getelementptr { i32, [ 0 x i32 ] }* %array2937, i32 0, i32 1, i32 7
  store i32 10, i32* %index_ptr2946
  %unop2947 = sub i32 0, 2
  %index_ptr2948 = getelementptr { i32, [ 0 x i32 ] }* %array2937, i32 0, i32 1, i32 8
  store i32 %unop2947, i32* %index_ptr2948
  %unop2949 = sub i32 0, 5
  %index_ptr2950 = getelementptr { i32, [ 0 x i32 ] }* %array2937, i32 0, i32 1, i32 9
  store i32 %unop2949, i32* %index_ptr2950
  %index_ptr2951 = getelementptr { i32, [ 0 x i32 ] }* %array2937, i32 0, i32 1, i32 10
  store i32 7, i32* %index_ptr2951
  %index_ptr2952 = getelementptr { i32, [ 0 x i32 ] }* %array2937, i32 0, i32 1, i32 11
  store i32 5, i32* %index_ptr2952
  %index_ptr2953 = getelementptr { i32, [ 0 x i32 ] }* %array2937, i32 0, i32 1, i32 12
  store i32 9, i32* %index_ptr2953
  %unop2954 = sub i32 0, 3
  %index_ptr2955 = getelementptr { i32, [ 0 x i32 ] }* %array2937, i32 0, i32 1, i32 13
  store i32 %unop2954, i32* %index_ptr2955
  %index_ptr2956 = getelementptr { i32, [ 0 x i32 ] }* %array2937, i32 0, i32 1, i32 14
  store i32 7, i32* %index_ptr2956
  %nums2957 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %array2937, { i32, [ 0 x i32 ] }** %nums2957
  %i2958 = alloca i32
  store i32 0, i32* %i2958
  %_lhs2959 = load { i32, [ 0 x i32 ] }** %nums2957
  %len_ptr2960 = getelementptr { i32, [ 0 x i32 ] }* %_lhs2959, i32 0, i32 0
  %len2961 = load i32* %len_ptr2960
  %n2962 = alloca i32
  store i32 %len2961, i32* %n2962
  %_lhs2964 = load i32* %n2962
  %bop2965 = sub i32 %_lhs2964, 1
  %_lhs2963 = load { i32, [ 0 x i32 ] }** %nums2957
  call void @stoogeSort( { i32, [ 0 x i32 ] }* %_lhs2963, i32 0, i32 %bop2965 )
  store i32 0, i32* %i2958
  br label %__cond587

__cond587:
  %_lhs2966 = load i32* %i2958
  %_lhs2967 = load i32* %n2962
  %bop2968 = sub i32 %_lhs2967, 1
  %bop2969 = icmp sle i32 %_lhs2966, %bop2968
  br i1 %bop2969, label %__body586, label %__post585

__fresh589:
  br label %__body586

__body586:
  %_lhs2970 = load i32* %i2958
  %len_ptr2971 = getelementptr { i32, [ 0 x i32 ] }** %nums2957, i32 0, i32 0
  %len2972 = load i32* %len_ptr2971
  call void @oat_array_bounds_check( i32 %len2972, i32 %_lhs2970 )
  %array_dereferenced2973 = load { i32, [ 0 x i32 ] }** %nums2957
  %elt_ptr2974 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2973, i32 0, i32 1, i32 %_lhs2970
  %_lhs2975 = load i32* %elt_ptr2974
  call void @print_int( i32 %_lhs2975 )
  %_lhs2976 = load i32* %i2958
  %bop2977 = add i32 %_lhs2976, 1
  store i32 %bop2977, i32* %i2958
  br label %__cond587

__fresh590:
  br label %__post585

__post585:
  ret i32 0
}


define void @stoogeSort ({ i32, [ 0 x i32 ] }* %a2869, i32 %i2867, i32 %j2865){

__fresh580:
  %a_slot2870 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %a2869, { i32, [ 0 x i32 ] }** %a_slot2870
  %i_slot2868 = alloca i32
  store i32 %i2867, i32* %i_slot2868
  %j_slot2866 = alloca i32
  store i32 %j2865, i32* %j_slot2866
  %t2871 = alloca i32
  store i32 0, i32* %t2871
  %_lhs2872 = load i32* %j_slot2866
  %len_ptr2873 = getelementptr { i32, [ 0 x i32 ] }** %a_slot2870, i32 0, i32 0
  %len2874 = load i32* %len_ptr2873
  call void @oat_array_bounds_check( i32 %len2874, i32 %_lhs2872 )
  %array_dereferenced2875 = load { i32, [ 0 x i32 ] }** %a_slot2870
  %elt_ptr2876 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2875, i32 0, i32 1, i32 %_lhs2872
  %_lhs2877 = load i32* %elt_ptr2876
  %_lhs2878 = load i32* %i_slot2868
  %len_ptr2879 = getelementptr { i32, [ 0 x i32 ] }** %a_slot2870, i32 0, i32 0
  %len2880 = load i32* %len_ptr2879
  call void @oat_array_bounds_check( i32 %len2880, i32 %_lhs2878 )
  %array_dereferenced2881 = load { i32, [ 0 x i32 ] }** %a_slot2870
  %elt_ptr2882 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2881, i32 0, i32 1, i32 %_lhs2878
  %_lhs2883 = load i32* %elt_ptr2882
  %bop2884 = icmp slt i32 %_lhs2877, %_lhs2883
  br i1 %bop2884, label %__then576, label %__else575

__fresh581:
  br label %__then576

__then576:
  %_lhs2885 = load i32* %i_slot2868
  %len_ptr2886 = getelementptr { i32, [ 0 x i32 ] }** %a_slot2870, i32 0, i32 0
  %len2887 = load i32* %len_ptr2886
  call void @oat_array_bounds_check( i32 %len2887, i32 %_lhs2885 )
  %array_dereferenced2888 = load { i32, [ 0 x i32 ] }** %a_slot2870
  %elt_ptr2889 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2888, i32 0, i32 1, i32 %_lhs2885
  %_lhs2890 = load i32* %elt_ptr2889
  store i32 %_lhs2890, i32* %t2871
  %_lhs2891 = load i32* %i_slot2868
  %len_ptr2892 = getelementptr { i32, [ 0 x i32 ] }** %a_slot2870, i32 0, i32 0
  %len2893 = load i32* %len_ptr2892
  call void @oat_array_bounds_check( i32 %len2893, i32 %_lhs2891 )
  %array_dereferenced2894 = load { i32, [ 0 x i32 ] }** %a_slot2870
  %elt_ptr2895 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2894, i32 0, i32 1, i32 %_lhs2891
  %_lhs2896 = load i32* %j_slot2866
  %len_ptr2897 = getelementptr { i32, [ 0 x i32 ] }** %a_slot2870, i32 0, i32 0
  %len2898 = load i32* %len_ptr2897
  call void @oat_array_bounds_check( i32 %len2898, i32 %_lhs2896 )
  %array_dereferenced2899 = load { i32, [ 0 x i32 ] }** %a_slot2870
  %elt_ptr2900 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2899, i32 0, i32 1, i32 %_lhs2896
  %_lhs2901 = load i32* %elt_ptr2900
  store i32 %_lhs2901, i32* %elt_ptr2895
  %_lhs2902 = load i32* %j_slot2866
  %len_ptr2903 = getelementptr { i32, [ 0 x i32 ] }** %a_slot2870, i32 0, i32 0
  %len2904 = load i32* %len_ptr2903
  call void @oat_array_bounds_check( i32 %len2904, i32 %_lhs2902 )
  %array_dereferenced2905 = load { i32, [ 0 x i32 ] }** %a_slot2870
  %elt_ptr2906 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2905, i32 0, i32 1, i32 %_lhs2902
  %_lhs2907 = load i32* %t2871
  store i32 %_lhs2907, i32* %elt_ptr2906
  br label %__merge574

__fresh582:
  br label %__else575

__else575:
  br label %__merge574

__merge574:
  %_lhs2908 = load i32* %j_slot2866
  %_lhs2909 = load i32* %i_slot2868
  %bop2910 = sub i32 %_lhs2908, %_lhs2909
  %bop2911 = icmp sgt i32 %bop2910, 1
  br i1 %bop2911, label %__then579, label %__else578

__fresh583:
  br label %__then579

__then579:
  %_lhs2912 = load i32* %j_slot2866
  %_lhs2913 = load i32* %i_slot2868
  %bop2914 = sub i32 %_lhs2912, %_lhs2913
  %bop2915 = add i32 %bop2914, 1
  %bop2916 = ashr i32 %bop2915, 1
  store i32 %bop2916, i32* %t2871
  %_lhs2919 = load i32* %j_slot2866
  %_lhs2920 = load i32* %t2871
  %bop2921 = sub i32 %_lhs2919, %_lhs2920
  %_lhs2918 = load i32* %i_slot2868
  %_lhs2917 = load { i32, [ 0 x i32 ] }** %a_slot2870
  call void @stoogeSort( { i32, [ 0 x i32 ] }* %_lhs2917, i32 %_lhs2918, i32 %bop2921 )
  %_lhs2926 = load i32* %j_slot2866
  %_lhs2923 = load i32* %i_slot2868
  %_lhs2924 = load i32* %t2871
  %bop2925 = add i32 %_lhs2923, %_lhs2924
  %_lhs2922 = load { i32, [ 0 x i32 ] }** %a_slot2870
  call void @stoogeSort( { i32, [ 0 x i32 ] }* %_lhs2922, i32 %bop2925, i32 %_lhs2926 )
  %_lhs2929 = load i32* %j_slot2866
  %_lhs2930 = load i32* %t2871
  %bop2931 = sub i32 %_lhs2929, %_lhs2930
  %_lhs2928 = load i32* %i_slot2868
  %_lhs2927 = load { i32, [ 0 x i32 ] }** %a_slot2870
  call void @stoogeSort( { i32, [ 0 x i32 ] }* %_lhs2927, i32 %_lhs2928, i32 %bop2931 )
  br label %__merge577

__fresh584:
  br label %__else578

__else578:
  br label %__merge577

__merge577:
  ret void
}


