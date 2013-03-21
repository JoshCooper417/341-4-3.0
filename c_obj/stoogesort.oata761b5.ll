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


define i32 @program (i32 %argc2898, { i32, [ 0 x i8* ] }* %argv2896){

__fresh1070:
  %argc_slot2899 = alloca i32
  store i32 %argc2898, i32* %argc_slot2899
  %argv_slot2897 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv2896, { i32, [ 0 x i8* ] }** %argv_slot2897
  %array_ptr2900 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 15 )
  %array2901 = bitcast { i32, [ 0 x i32 ] }* %array_ptr2900 to { i32, [ 0 x i32 ] }* 
  %index_ptr2902 = getelementptr { i32, [ 0 x i32 ] }* %array2901, i32 0, i32 1, i32 0
  store i32 1, i32* %index_ptr2902
  %index_ptr2903 = getelementptr { i32, [ 0 x i32 ] }* %array2901, i32 0, i32 1, i32 1
  store i32 4, i32* %index_ptr2903
  %index_ptr2904 = getelementptr { i32, [ 0 x i32 ] }* %array2901, i32 0, i32 1, i32 2
  store i32 5, i32* %index_ptr2904
  %index_ptr2905 = getelementptr { i32, [ 0 x i32 ] }* %array2901, i32 0, i32 1, i32 3
  store i32 3, i32* %index_ptr2905
  %unop2906 = sub i32 0, 6
  %index_ptr2907 = getelementptr { i32, [ 0 x i32 ] }* %array2901, i32 0, i32 1, i32 4
  store i32 %unop2906, i32* %index_ptr2907
  %index_ptr2908 = getelementptr { i32, [ 0 x i32 ] }* %array2901, i32 0, i32 1, i32 5
  store i32 3, i32* %index_ptr2908
  %index_ptr2909 = getelementptr { i32, [ 0 x i32 ] }* %array2901, i32 0, i32 1, i32 6
  store i32 7, i32* %index_ptr2909
  %index_ptr2910 = getelementptr { i32, [ 0 x i32 ] }* %array2901, i32 0, i32 1, i32 7
  store i32 10, i32* %index_ptr2910
  %unop2911 = sub i32 0, 2
  %index_ptr2912 = getelementptr { i32, [ 0 x i32 ] }* %array2901, i32 0, i32 1, i32 8
  store i32 %unop2911, i32* %index_ptr2912
  %unop2913 = sub i32 0, 5
  %index_ptr2914 = getelementptr { i32, [ 0 x i32 ] }* %array2901, i32 0, i32 1, i32 9
  store i32 %unop2913, i32* %index_ptr2914
  %index_ptr2915 = getelementptr { i32, [ 0 x i32 ] }* %array2901, i32 0, i32 1, i32 10
  store i32 7, i32* %index_ptr2915
  %index_ptr2916 = getelementptr { i32, [ 0 x i32 ] }* %array2901, i32 0, i32 1, i32 11
  store i32 5, i32* %index_ptr2916
  %index_ptr2917 = getelementptr { i32, [ 0 x i32 ] }* %array2901, i32 0, i32 1, i32 12
  store i32 9, i32* %index_ptr2917
  %unop2918 = sub i32 0, 3
  %index_ptr2919 = getelementptr { i32, [ 0 x i32 ] }* %array2901, i32 0, i32 1, i32 13
  store i32 %unop2918, i32* %index_ptr2919
  %index_ptr2920 = getelementptr { i32, [ 0 x i32 ] }* %array2901, i32 0, i32 1, i32 14
  store i32 7, i32* %index_ptr2920
  %nums2921 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %array2901, { i32, [ 0 x i32 ] }** %nums2921
  %i2922 = alloca i32
  store i32 0, i32* %i2922
  %_lhs2923 = load { i32, [ 0 x i32 ] }** %nums2921
  %len_ptr2924 = getelementptr { i32, [ 0 x i32 ] }* %_lhs2923, i32 0, i32 0
  %len2925 = load i32* %len_ptr2924
  %n2926 = alloca i32
  store i32 %len2925, i32* %n2926
  %_lhs2928 = load i32* %n2926
  %bop2929 = sub i32 %_lhs2928, 1
  %_lhs2927 = load { i32, [ 0 x i32 ] }** %nums2921
  call void @stoogeSort( { i32, [ 0 x i32 ] }* %_lhs2927, i32 0, i32 %bop2929 )
  store i32 0, i32* %i2922
  br label %__cond1069

__cond1069:
  %_lhs2930 = load i32* %i2922
  %_lhs2931 = load i32* %n2926
  %bop2932 = sub i32 %_lhs2931, 1
  %bop2933 = icmp sle i32 %_lhs2930, %bop2932
  br i1 %bop2933, label %__body1068, label %__post1067

__fresh1071:
  br label %__body1068

__body1068:
  %_lhs2934 = load i32* %i2922
  %array_dereferenced2935 = load { i32, [ 0 x i32 ] }** %nums2921
  %len_ptr2936 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2935, i32 0, i32 0
  %len2937 = load i32* %len_ptr2936
  call void @oat_array_bounds_check( i32 %len2937, i32 %_lhs2934 )
  %elt_ptr2938 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2935, i32 0, i32 1, i32 %_lhs2934
  %_lhs2939 = load i32* %elt_ptr2938
  call void @print_int( i32 %_lhs2939 )
  %_lhs2940 = load i32* %i2922
  %bop2941 = add i32 %_lhs2940, 1
  store i32 %bop2941, i32* %i2922
  br label %__cond1069

__fresh1072:
  br label %__post1067

__post1067:
  ret i32 0
}


define void @stoogeSort ({ i32, [ 0 x i32 ] }* %a2833, i32 %i2831, i32 %j2829){

__fresh1062:
  %a_slot2834 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %a2833, { i32, [ 0 x i32 ] }** %a_slot2834
  %i_slot2832 = alloca i32
  store i32 %i2831, i32* %i_slot2832
  %j_slot2830 = alloca i32
  store i32 %j2829, i32* %j_slot2830
  %t2835 = alloca i32
  store i32 0, i32* %t2835
  %_lhs2836 = load i32* %j_slot2830
  %array_dereferenced2837 = load { i32, [ 0 x i32 ] }** %a_slot2834
  %len_ptr2838 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2837, i32 0, i32 0
  %len2839 = load i32* %len_ptr2838
  call void @oat_array_bounds_check( i32 %len2839, i32 %_lhs2836 )
  %elt_ptr2840 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2837, i32 0, i32 1, i32 %_lhs2836
  %_lhs2841 = load i32* %elt_ptr2840
  %_lhs2842 = load i32* %i_slot2832
  %array_dereferenced2843 = load { i32, [ 0 x i32 ] }** %a_slot2834
  %len_ptr2844 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2843, i32 0, i32 0
  %len2845 = load i32* %len_ptr2844
  call void @oat_array_bounds_check( i32 %len2845, i32 %_lhs2842 )
  %elt_ptr2846 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2843, i32 0, i32 1, i32 %_lhs2842
  %_lhs2847 = load i32* %elt_ptr2846
  %bop2848 = icmp slt i32 %_lhs2841, %_lhs2847
  br i1 %bop2848, label %__then1058, label %__else1057

__fresh1063:
  br label %__then1058

__then1058:
  %_lhs2849 = load i32* %i_slot2832
  %array_dereferenced2850 = load { i32, [ 0 x i32 ] }** %a_slot2834
  %len_ptr2851 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2850, i32 0, i32 0
  %len2852 = load i32* %len_ptr2851
  call void @oat_array_bounds_check( i32 %len2852, i32 %_lhs2849 )
  %elt_ptr2853 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2850, i32 0, i32 1, i32 %_lhs2849
  %_lhs2854 = load i32* %elt_ptr2853
  store i32 %_lhs2854, i32* %t2835
  %_lhs2855 = load i32* %i_slot2832
  %array_dereferenced2856 = load { i32, [ 0 x i32 ] }** %a_slot2834
  %len_ptr2857 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2856, i32 0, i32 0
  %len2858 = load i32* %len_ptr2857
  call void @oat_array_bounds_check( i32 %len2858, i32 %_lhs2855 )
  %elt_ptr2859 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2856, i32 0, i32 1, i32 %_lhs2855
  %_lhs2860 = load i32* %j_slot2830
  %array_dereferenced2861 = load { i32, [ 0 x i32 ] }** %a_slot2834
  %len_ptr2862 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2861, i32 0, i32 0
  %len2863 = load i32* %len_ptr2862
  call void @oat_array_bounds_check( i32 %len2863, i32 %_lhs2860 )
  %elt_ptr2864 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2861, i32 0, i32 1, i32 %_lhs2860
  %_lhs2865 = load i32* %elt_ptr2864
  store i32 %_lhs2865, i32* %elt_ptr2859
  %_lhs2866 = load i32* %j_slot2830
  %array_dereferenced2867 = load { i32, [ 0 x i32 ] }** %a_slot2834
  %len_ptr2868 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2867, i32 0, i32 0
  %len2869 = load i32* %len_ptr2868
  call void @oat_array_bounds_check( i32 %len2869, i32 %_lhs2866 )
  %elt_ptr2870 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2867, i32 0, i32 1, i32 %_lhs2866
  %_lhs2871 = load i32* %t2835
  store i32 %_lhs2871, i32* %elt_ptr2870
  br label %__merge1056

__fresh1064:
  br label %__else1057

__else1057:
  br label %__merge1056

__merge1056:
  %_lhs2872 = load i32* %j_slot2830
  %_lhs2873 = load i32* %i_slot2832
  %bop2874 = sub i32 %_lhs2872, %_lhs2873
  %bop2875 = icmp sgt i32 %bop2874, 1
  br i1 %bop2875, label %__then1061, label %__else1060

__fresh1065:
  br label %__then1061

__then1061:
  %_lhs2876 = load i32* %j_slot2830
  %_lhs2877 = load i32* %i_slot2832
  %bop2878 = sub i32 %_lhs2876, %_lhs2877
  %bop2879 = add i32 %bop2878, 1
  %bop2880 = ashr i32 %bop2879, 1
  store i32 %bop2880, i32* %t2835
  %_lhs2883 = load i32* %j_slot2830
  %_lhs2884 = load i32* %t2835
  %bop2885 = sub i32 %_lhs2883, %_lhs2884
  %_lhs2882 = load i32* %i_slot2832
  %_lhs2881 = load { i32, [ 0 x i32 ] }** %a_slot2834
  call void @stoogeSort( { i32, [ 0 x i32 ] }* %_lhs2881, i32 %_lhs2882, i32 %bop2885 )
  %_lhs2890 = load i32* %j_slot2830
  %_lhs2887 = load i32* %i_slot2832
  %_lhs2888 = load i32* %t2835
  %bop2889 = add i32 %_lhs2887, %_lhs2888
  %_lhs2886 = load { i32, [ 0 x i32 ] }** %a_slot2834
  call void @stoogeSort( { i32, [ 0 x i32 ] }* %_lhs2886, i32 %bop2889, i32 %_lhs2890 )
  %_lhs2893 = load i32* %j_slot2830
  %_lhs2894 = load i32* %t2835
  %bop2895 = sub i32 %_lhs2893, %_lhs2894
  %_lhs2892 = load i32* %i_slot2832
  %_lhs2891 = load { i32, [ 0 x i32 ] }** %a_slot2834
  call void @stoogeSort( { i32, [ 0 x i32 ] }* %_lhs2891, i32 %_lhs2892, i32 %bop2895 )
  br label %__merge1059

__fresh1066:
  br label %__else1060

__else1060:
  br label %__merge1059

__merge1059:
  ret void
}


