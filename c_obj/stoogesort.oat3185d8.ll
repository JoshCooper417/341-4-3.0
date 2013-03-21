declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
define void @oat_init (){

__fresh529:
  ret void
}


define i32 @program (i32 %argc2933, { i32, [ 0 x i8* ] }* %argv2931){

__fresh526:
  %argc_slot2934 = alloca i32
  store i32 %argc2933, i32* %argc_slot2934
  %argv_slot2932 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv2931, { i32, [ 0 x i8* ] }** %argv_slot2932
  %array_ptr2935 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 15 )
  %array2936 = bitcast { i32, [ 0 x i32 ] }* %array_ptr2935 to { i32, [ 0 x i32 ] }* 
  %index_ptr2937 = getelementptr { i32, [ 0 x i32 ] }* %array2936, i32 0, i32 1, i32 0
  store i32 1, i32* %index_ptr2937
  %index_ptr2938 = getelementptr { i32, [ 0 x i32 ] }* %array2936, i32 0, i32 1, i32 1
  store i32 4, i32* %index_ptr2938
  %index_ptr2939 = getelementptr { i32, [ 0 x i32 ] }* %array2936, i32 0, i32 1, i32 2
  store i32 5, i32* %index_ptr2939
  %index_ptr2940 = getelementptr { i32, [ 0 x i32 ] }* %array2936, i32 0, i32 1, i32 3
  store i32 3, i32* %index_ptr2940
  %unop2941 = sub i32 0, 6
  %index_ptr2942 = getelementptr { i32, [ 0 x i32 ] }* %array2936, i32 0, i32 1, i32 4
  store i32 %unop2941, i32* %index_ptr2942
  %index_ptr2943 = getelementptr { i32, [ 0 x i32 ] }* %array2936, i32 0, i32 1, i32 5
  store i32 3, i32* %index_ptr2943
  %index_ptr2944 = getelementptr { i32, [ 0 x i32 ] }* %array2936, i32 0, i32 1, i32 6
  store i32 7, i32* %index_ptr2944
  %index_ptr2945 = getelementptr { i32, [ 0 x i32 ] }* %array2936, i32 0, i32 1, i32 7
  store i32 10, i32* %index_ptr2945
  %unop2946 = sub i32 0, 2
  %index_ptr2947 = getelementptr { i32, [ 0 x i32 ] }* %array2936, i32 0, i32 1, i32 8
  store i32 %unop2946, i32* %index_ptr2947
  %unop2948 = sub i32 0, 5
  %index_ptr2949 = getelementptr { i32, [ 0 x i32 ] }* %array2936, i32 0, i32 1, i32 9
  store i32 %unop2948, i32* %index_ptr2949
  %index_ptr2950 = getelementptr { i32, [ 0 x i32 ] }* %array2936, i32 0, i32 1, i32 10
  store i32 7, i32* %index_ptr2950
  %index_ptr2951 = getelementptr { i32, [ 0 x i32 ] }* %array2936, i32 0, i32 1, i32 11
  store i32 5, i32* %index_ptr2951
  %index_ptr2952 = getelementptr { i32, [ 0 x i32 ] }* %array2936, i32 0, i32 1, i32 12
  store i32 9, i32* %index_ptr2952
  %unop2953 = sub i32 0, 3
  %index_ptr2954 = getelementptr { i32, [ 0 x i32 ] }* %array2936, i32 0, i32 1, i32 13
  store i32 %unop2953, i32* %index_ptr2954
  %index_ptr2955 = getelementptr { i32, [ 0 x i32 ] }* %array2936, i32 0, i32 1, i32 14
  store i32 7, i32* %index_ptr2955
  %nums2956 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %array2936, { i32, [ 0 x i32 ] }** %nums2956
  %i2957 = alloca i32
  store i32 0, i32* %i2957
  %_lhs2958 = load { i32, [ 0 x i32 ] }** %nums2956
  %len_ptr2959 = getelementptr { i32, [ 0 x i32 ] }* %_lhs2958, i32 0, i32 0
  %len2960 = load i32* %len_ptr2959
  %n2961 = alloca i32
  store i32 %len2960, i32* %n2961
  %_lhs2963 = load i32* %n2961
  %bop2964 = sub i32 %_lhs2963, 1
  %_lhs2962 = load { i32, [ 0 x i32 ] }** %nums2956
  call void @stoogeSort( { i32, [ 0 x i32 ] }* %_lhs2962, i32 0, i32 %bop2964 )
  store i32 0, i32* %i2957
  br label %__cond525

__cond525:
  %_lhs2965 = load i32* %i2957
  %_lhs2966 = load i32* %n2961
  %bop2967 = sub i32 %_lhs2966, 1
  %bop2968 = icmp sle i32 %_lhs2965, %bop2967
  br i1 %bop2968, label %__body524, label %__post523

__fresh527:
  br label %__body524

__body524:
  %_lhs2969 = load i32* %i2957
  %len_ptr2970 = getelementptr { i32, [ 0 x i32 ] }** %nums2956, i32 0, i32 0
  %len2971 = load i32* %len_ptr2970
  call void @oat_array_bounds_check( i32 %len2971, i32 %_lhs2969 )
  %array_dereferenced2972 = load { i32, [ 0 x i32 ] }** %nums2956
  %elt_ptr2973 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2972, i32 0, i32 1, i32 %_lhs2969
  %_lhs2974 = load i32* %elt_ptr2973
  call void @print_int( i32 %_lhs2974 )
  %_lhs2975 = load i32* %i2957
  %bop2976 = add i32 %_lhs2975, 1
  store i32 %bop2976, i32* %i2957
  br label %__cond525

__fresh528:
  br label %__post523

__post523:
  ret i32 0
}


define void @stoogeSort ({ i32, [ 0 x i32 ] }* %a2868, i32 %i2866, i32 %j2864){

__fresh518:
  %a_slot2869 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %a2868, { i32, [ 0 x i32 ] }** %a_slot2869
  %i_slot2867 = alloca i32
  store i32 %i2866, i32* %i_slot2867
  %j_slot2865 = alloca i32
  store i32 %j2864, i32* %j_slot2865
  %t2870 = alloca i32
  store i32 0, i32* %t2870
  %_lhs2871 = load i32* %j_slot2865
  %len_ptr2872 = getelementptr { i32, [ 0 x i32 ] }** %a_slot2869, i32 0, i32 0
  %len2873 = load i32* %len_ptr2872
  call void @oat_array_bounds_check( i32 %len2873, i32 %_lhs2871 )
  %array_dereferenced2874 = load { i32, [ 0 x i32 ] }** %a_slot2869
  %elt_ptr2875 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2874, i32 0, i32 1, i32 %_lhs2871
  %_lhs2876 = load i32* %elt_ptr2875
  %_lhs2877 = load i32* %i_slot2867
  %len_ptr2878 = getelementptr { i32, [ 0 x i32 ] }** %a_slot2869, i32 0, i32 0
  %len2879 = load i32* %len_ptr2878
  call void @oat_array_bounds_check( i32 %len2879, i32 %_lhs2877 )
  %array_dereferenced2880 = load { i32, [ 0 x i32 ] }** %a_slot2869
  %elt_ptr2881 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2880, i32 0, i32 1, i32 %_lhs2877
  %_lhs2882 = load i32* %elt_ptr2881
  %bop2883 = icmp slt i32 %_lhs2876, %_lhs2882
  br i1 %bop2883, label %__then514, label %__else513

__fresh519:
  br label %__then514

__then514:
  %_lhs2884 = load i32* %i_slot2867
  %len_ptr2885 = getelementptr { i32, [ 0 x i32 ] }** %a_slot2869, i32 0, i32 0
  %len2886 = load i32* %len_ptr2885
  call void @oat_array_bounds_check( i32 %len2886, i32 %_lhs2884 )
  %array_dereferenced2887 = load { i32, [ 0 x i32 ] }** %a_slot2869
  %elt_ptr2888 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2887, i32 0, i32 1, i32 %_lhs2884
  %_lhs2889 = load i32* %elt_ptr2888
  store i32 %_lhs2889, i32* %t2870
  %_lhs2890 = load i32* %i_slot2867
  %len_ptr2891 = getelementptr { i32, [ 0 x i32 ] }** %a_slot2869, i32 0, i32 0
  %len2892 = load i32* %len_ptr2891
  call void @oat_array_bounds_check( i32 %len2892, i32 %_lhs2890 )
  %array_dereferenced2893 = load { i32, [ 0 x i32 ] }** %a_slot2869
  %elt_ptr2894 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2893, i32 0, i32 1, i32 %_lhs2890
  %_lhs2895 = load i32* %j_slot2865
  %len_ptr2896 = getelementptr { i32, [ 0 x i32 ] }** %a_slot2869, i32 0, i32 0
  %len2897 = load i32* %len_ptr2896
  call void @oat_array_bounds_check( i32 %len2897, i32 %_lhs2895 )
  %array_dereferenced2898 = load { i32, [ 0 x i32 ] }** %a_slot2869
  %elt_ptr2899 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2898, i32 0, i32 1, i32 %_lhs2895
  %_lhs2900 = load i32* %elt_ptr2899
  store i32 %_lhs2900, i32* %elt_ptr2894
  %_lhs2901 = load i32* %j_slot2865
  %len_ptr2902 = getelementptr { i32, [ 0 x i32 ] }** %a_slot2869, i32 0, i32 0
  %len2903 = load i32* %len_ptr2902
  call void @oat_array_bounds_check( i32 %len2903, i32 %_lhs2901 )
  %array_dereferenced2904 = load { i32, [ 0 x i32 ] }** %a_slot2869
  %elt_ptr2905 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2904, i32 0, i32 1, i32 %_lhs2901
  %_lhs2906 = load i32* %t2870
  store i32 %_lhs2906, i32* %elt_ptr2905
  br label %__merge512

__fresh520:
  br label %__else513

__else513:
  br label %__merge512

__merge512:
  %_lhs2907 = load i32* %j_slot2865
  %_lhs2908 = load i32* %i_slot2867
  %bop2909 = sub i32 %_lhs2907, %_lhs2908
  %bop2910 = icmp sgt i32 %bop2909, 1
  br i1 %bop2910, label %__then517, label %__else516

__fresh521:
  br label %__then517

__then517:
  %_lhs2911 = load i32* %j_slot2865
  %_lhs2912 = load i32* %i_slot2867
  %bop2913 = sub i32 %_lhs2911, %_lhs2912
  %bop2914 = add i32 %bop2913, 1
  %bop2915 = ashr i32 %bop2914, 1
  store i32 %bop2915, i32* %t2870
  %_lhs2918 = load i32* %j_slot2865
  %_lhs2919 = load i32* %t2870
  %bop2920 = sub i32 %_lhs2918, %_lhs2919
  %_lhs2917 = load i32* %i_slot2867
  %_lhs2916 = load { i32, [ 0 x i32 ] }** %a_slot2869
  call void @stoogeSort( { i32, [ 0 x i32 ] }* %_lhs2916, i32 %_lhs2917, i32 %bop2920 )
  %_lhs2925 = load i32* %j_slot2865
  %_lhs2922 = load i32* %i_slot2867
  %_lhs2923 = load i32* %t2870
  %bop2924 = add i32 %_lhs2922, %_lhs2923
  %_lhs2921 = load { i32, [ 0 x i32 ] }** %a_slot2869
  call void @stoogeSort( { i32, [ 0 x i32 ] }* %_lhs2921, i32 %bop2924, i32 %_lhs2925 )
  %_lhs2928 = load i32* %j_slot2865
  %_lhs2929 = load i32* %t2870
  %bop2930 = sub i32 %_lhs2928, %_lhs2929
  %_lhs2927 = load i32* %i_slot2867
  %_lhs2926 = load { i32, [ 0 x i32 ] }** %a_slot2869
  call void @stoogeSort( { i32, [ 0 x i32 ] }* %_lhs2926, i32 %_lhs2927, i32 %bop2930 )
  br label %__merge515

__fresh522:
  br label %__else516

__else516:
  br label %__merge515

__merge515:
  ret void
}


