declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
define void @oat_init (){

__fresh1073:
  ret void
}


define i32 @program (i32 %argc2923, { i32, [ 0 x i8* ] }* %argv2921){

__fresh1070:
  %argc_slot2924 = alloca i32
  store i32 %argc2923, i32* %argc_slot2924
  %argv_slot2922 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv2921, { i32, [ 0 x i8* ] }** %argv_slot2922
  %array_ptr2925 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 15 )
  %array2926 = bitcast { i32, [ 0 x i32 ] }* %array_ptr2925 to { i32, [ 0 x i32 ] }* 
  %index_ptr2927 = getelementptr { i32, [ 0 x i32 ] }* %array2926, i32 0, i32 1, i32 0
  store i32 1, i32* %index_ptr2927
  %index_ptr2928 = getelementptr { i32, [ 0 x i32 ] }* %array2926, i32 0, i32 1, i32 1
  store i32 4, i32* %index_ptr2928
  %index_ptr2929 = getelementptr { i32, [ 0 x i32 ] }* %array2926, i32 0, i32 1, i32 2
  store i32 5, i32* %index_ptr2929
  %index_ptr2930 = getelementptr { i32, [ 0 x i32 ] }* %array2926, i32 0, i32 1, i32 3
  store i32 3, i32* %index_ptr2930
  %unop2931 = sub i32 0, 6
  %index_ptr2932 = getelementptr { i32, [ 0 x i32 ] }* %array2926, i32 0, i32 1, i32 4
  store i32 %unop2931, i32* %index_ptr2932
  %index_ptr2933 = getelementptr { i32, [ 0 x i32 ] }* %array2926, i32 0, i32 1, i32 5
  store i32 3, i32* %index_ptr2933
  %index_ptr2934 = getelementptr { i32, [ 0 x i32 ] }* %array2926, i32 0, i32 1, i32 6
  store i32 7, i32* %index_ptr2934
  %index_ptr2935 = getelementptr { i32, [ 0 x i32 ] }* %array2926, i32 0, i32 1, i32 7
  store i32 10, i32* %index_ptr2935
  %unop2936 = sub i32 0, 2
  %index_ptr2937 = getelementptr { i32, [ 0 x i32 ] }* %array2926, i32 0, i32 1, i32 8
  store i32 %unop2936, i32* %index_ptr2937
  %unop2938 = sub i32 0, 5
  %index_ptr2939 = getelementptr { i32, [ 0 x i32 ] }* %array2926, i32 0, i32 1, i32 9
  store i32 %unop2938, i32* %index_ptr2939
  %index_ptr2940 = getelementptr { i32, [ 0 x i32 ] }* %array2926, i32 0, i32 1, i32 10
  store i32 7, i32* %index_ptr2940
  %index_ptr2941 = getelementptr { i32, [ 0 x i32 ] }* %array2926, i32 0, i32 1, i32 11
  store i32 5, i32* %index_ptr2941
  %index_ptr2942 = getelementptr { i32, [ 0 x i32 ] }* %array2926, i32 0, i32 1, i32 12
  store i32 9, i32* %index_ptr2942
  %unop2943 = sub i32 0, 3
  %index_ptr2944 = getelementptr { i32, [ 0 x i32 ] }* %array2926, i32 0, i32 1, i32 13
  store i32 %unop2943, i32* %index_ptr2944
  %index_ptr2945 = getelementptr { i32, [ 0 x i32 ] }* %array2926, i32 0, i32 1, i32 14
  store i32 7, i32* %index_ptr2945
  %nums2946 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %array2926, { i32, [ 0 x i32 ] }** %nums2946
  %i2947 = alloca i32
  store i32 0, i32* %i2947
  %_lhs2948 = load { i32, [ 0 x i32 ] }** %nums2946
  %len_ptr2949 = getelementptr { i32, [ 0 x i32 ] }* %_lhs2948, i32 0, i32 0
  %len2950 = load i32* %len_ptr2949
  %n2951 = alloca i32
  store i32 %len2950, i32* %n2951
  %_lhs2953 = load i32* %n2951
  %bop2954 = sub i32 %_lhs2953, 1
  %_lhs2952 = load { i32, [ 0 x i32 ] }** %nums2946
  call void @stoogeSort( { i32, [ 0 x i32 ] }* %_lhs2952, i32 0, i32 %bop2954 )
  store i32 0, i32* %i2947
  br label %__cond1069

__cond1069:
  %_lhs2955 = load i32* %i2947
  %_lhs2956 = load i32* %n2951
  %bop2957 = sub i32 %_lhs2956, 1
  %bop2958 = icmp sle i32 %_lhs2955, %bop2957
  br i1 %bop2958, label %__body1068, label %__post1067

__fresh1071:
  br label %__body1068

__body1068:
  %_lhs2959 = load i32* %i2947
  %array_dereferenced2960 = load { i32, [ 0 x i32 ] }** %nums2946
  %len_ptr2961 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2960, i32 0, i32 0
  %len2962 = load i32* %len_ptr2961
  call void @oat_array_bounds_check( i32 %len2962, i32 %_lhs2959 )
  %elt_ptr2963 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2960, i32 0, i32 1, i32 %_lhs2959
  %_lhs2964 = load i32* %elt_ptr2963
  call void @print_int( i32 %_lhs2964 )
  %_lhs2965 = load i32* %i2947
  %bop2966 = add i32 %_lhs2965, 1
  store i32 %bop2966, i32* %i2947
  br label %__cond1069

__fresh1072:
  br label %__post1067

__post1067:
  ret i32 0
}


define void @stoogeSort ({ i32, [ 0 x i32 ] }* %a2858, i32 %i2856, i32 %j2854){

__fresh1062:
  %a_slot2859 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %a2858, { i32, [ 0 x i32 ] }** %a_slot2859
  %i_slot2857 = alloca i32
  store i32 %i2856, i32* %i_slot2857
  %j_slot2855 = alloca i32
  store i32 %j2854, i32* %j_slot2855
  %t2860 = alloca i32
  store i32 0, i32* %t2860
  %_lhs2861 = load i32* %j_slot2855
  %array_dereferenced2862 = load { i32, [ 0 x i32 ] }** %a_slot2859
  %len_ptr2863 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2862, i32 0, i32 0
  %len2864 = load i32* %len_ptr2863
  call void @oat_array_bounds_check( i32 %len2864, i32 %_lhs2861 )
  %elt_ptr2865 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2862, i32 0, i32 1, i32 %_lhs2861
  %_lhs2866 = load i32* %elt_ptr2865
  %_lhs2867 = load i32* %i_slot2857
  %array_dereferenced2868 = load { i32, [ 0 x i32 ] }** %a_slot2859
  %len_ptr2869 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2868, i32 0, i32 0
  %len2870 = load i32* %len_ptr2869
  call void @oat_array_bounds_check( i32 %len2870, i32 %_lhs2867 )
  %elt_ptr2871 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2868, i32 0, i32 1, i32 %_lhs2867
  %_lhs2872 = load i32* %elt_ptr2871
  %bop2873 = icmp slt i32 %_lhs2866, %_lhs2872
  br i1 %bop2873, label %__then1058, label %__else1057

__fresh1063:
  br label %__then1058

__then1058:
  %_lhs2874 = load i32* %i_slot2857
  %array_dereferenced2875 = load { i32, [ 0 x i32 ] }** %a_slot2859
  %len_ptr2876 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2875, i32 0, i32 0
  %len2877 = load i32* %len_ptr2876
  call void @oat_array_bounds_check( i32 %len2877, i32 %_lhs2874 )
  %elt_ptr2878 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2875, i32 0, i32 1, i32 %_lhs2874
  %_lhs2879 = load i32* %elt_ptr2878
  store i32 %_lhs2879, i32* %t2860
  %_lhs2880 = load i32* %i_slot2857
  %array_dereferenced2881 = load { i32, [ 0 x i32 ] }** %a_slot2859
  %len_ptr2882 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2881, i32 0, i32 0
  %len2883 = load i32* %len_ptr2882
  call void @oat_array_bounds_check( i32 %len2883, i32 %_lhs2880 )
  %elt_ptr2884 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2881, i32 0, i32 1, i32 %_lhs2880
  %_lhs2885 = load i32* %j_slot2855
  %array_dereferenced2886 = load { i32, [ 0 x i32 ] }** %a_slot2859
  %len_ptr2887 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2886, i32 0, i32 0
  %len2888 = load i32* %len_ptr2887
  call void @oat_array_bounds_check( i32 %len2888, i32 %_lhs2885 )
  %elt_ptr2889 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2886, i32 0, i32 1, i32 %_lhs2885
  %_lhs2890 = load i32* %elt_ptr2889
  store i32 %_lhs2890, i32* %elt_ptr2884
  %_lhs2891 = load i32* %j_slot2855
  %array_dereferenced2892 = load { i32, [ 0 x i32 ] }** %a_slot2859
  %len_ptr2893 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2892, i32 0, i32 0
  %len2894 = load i32* %len_ptr2893
  call void @oat_array_bounds_check( i32 %len2894, i32 %_lhs2891 )
  %elt_ptr2895 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2892, i32 0, i32 1, i32 %_lhs2891
  %_lhs2896 = load i32* %t2860
  store i32 %_lhs2896, i32* %elt_ptr2895
  br label %__merge1056

__fresh1064:
  br label %__else1057

__else1057:
  br label %__merge1056

__merge1056:
  %_lhs2897 = load i32* %j_slot2855
  %_lhs2898 = load i32* %i_slot2857
  %bop2899 = sub i32 %_lhs2897, %_lhs2898
  %bop2900 = icmp sgt i32 %bop2899, 1
  br i1 %bop2900, label %__then1061, label %__else1060

__fresh1065:
  br label %__then1061

__then1061:
  %_lhs2901 = load i32* %j_slot2855
  %_lhs2902 = load i32* %i_slot2857
  %bop2903 = sub i32 %_lhs2901, %_lhs2902
  %bop2904 = add i32 %bop2903, 1
  %bop2905 = ashr i32 %bop2904, 1
  store i32 %bop2905, i32* %t2860
  %_lhs2908 = load i32* %j_slot2855
  %_lhs2909 = load i32* %t2860
  %bop2910 = sub i32 %_lhs2908, %_lhs2909
  %_lhs2907 = load i32* %i_slot2857
  %_lhs2906 = load { i32, [ 0 x i32 ] }** %a_slot2859
  call void @stoogeSort( { i32, [ 0 x i32 ] }* %_lhs2906, i32 %_lhs2907, i32 %bop2910 )
  %_lhs2915 = load i32* %j_slot2855
  %_lhs2912 = load i32* %i_slot2857
  %_lhs2913 = load i32* %t2860
  %bop2914 = add i32 %_lhs2912, %_lhs2913
  %_lhs2911 = load { i32, [ 0 x i32 ] }** %a_slot2859
  call void @stoogeSort( { i32, [ 0 x i32 ] }* %_lhs2911, i32 %bop2914, i32 %_lhs2915 )
  %_lhs2918 = load i32* %j_slot2855
  %_lhs2919 = load i32* %t2860
  %bop2920 = sub i32 %_lhs2918, %_lhs2919
  %_lhs2917 = load i32* %i_slot2857
  %_lhs2916 = load { i32, [ 0 x i32 ] }** %a_slot2859
  call void @stoogeSort( { i32, [ 0 x i32 ] }* %_lhs2916, i32 %_lhs2917, i32 %bop2920 )
  br label %__merge1059

__fresh1066:
  br label %__else1060

__else1060:
  br label %__merge1059

__merge1059:
  ret void
}


