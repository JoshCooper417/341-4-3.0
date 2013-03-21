declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
define void @oat_init (){

__fresh541:
  ret void
}


define i32 @program (i32 %argc2907, { i32, [ 0 x i8* ] }* %argv2905){

__fresh538:
  %argc_slot2908 = alloca i32
  store i32 %argc2907, i32* %argc_slot2908
  %argv_slot2906 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv2905, { i32, [ 0 x i8* ] }** %argv_slot2906
  %array_ptr2909 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 15 )
  %array2910 = bitcast { i32, [ 0 x i32 ] }* %array_ptr2909 to { i32, [ 0 x i32 ] }* 
  %index_ptr2911 = getelementptr { i32, [ 0 x i32 ] }* %array2910, i32 0, i32 1, i32 0
  store i32 1, i32* %index_ptr2911
  %index_ptr2912 = getelementptr { i32, [ 0 x i32 ] }* %array2910, i32 0, i32 1, i32 1
  store i32 4, i32* %index_ptr2912
  %index_ptr2913 = getelementptr { i32, [ 0 x i32 ] }* %array2910, i32 0, i32 1, i32 2
  store i32 5, i32* %index_ptr2913
  %index_ptr2914 = getelementptr { i32, [ 0 x i32 ] }* %array2910, i32 0, i32 1, i32 3
  store i32 3, i32* %index_ptr2914
  %unop2915 = sub i32 0, 6
  %index_ptr2916 = getelementptr { i32, [ 0 x i32 ] }* %array2910, i32 0, i32 1, i32 4
  store i32 %unop2915, i32* %index_ptr2916
  %index_ptr2917 = getelementptr { i32, [ 0 x i32 ] }* %array2910, i32 0, i32 1, i32 5
  store i32 3, i32* %index_ptr2917
  %index_ptr2918 = getelementptr { i32, [ 0 x i32 ] }* %array2910, i32 0, i32 1, i32 6
  store i32 7, i32* %index_ptr2918
  %index_ptr2919 = getelementptr { i32, [ 0 x i32 ] }* %array2910, i32 0, i32 1, i32 7
  store i32 10, i32* %index_ptr2919
  %unop2920 = sub i32 0, 2
  %index_ptr2921 = getelementptr { i32, [ 0 x i32 ] }* %array2910, i32 0, i32 1, i32 8
  store i32 %unop2920, i32* %index_ptr2921
  %unop2922 = sub i32 0, 5
  %index_ptr2923 = getelementptr { i32, [ 0 x i32 ] }* %array2910, i32 0, i32 1, i32 9
  store i32 %unop2922, i32* %index_ptr2923
  %index_ptr2924 = getelementptr { i32, [ 0 x i32 ] }* %array2910, i32 0, i32 1, i32 10
  store i32 7, i32* %index_ptr2924
  %index_ptr2925 = getelementptr { i32, [ 0 x i32 ] }* %array2910, i32 0, i32 1, i32 11
  store i32 5, i32* %index_ptr2925
  %index_ptr2926 = getelementptr { i32, [ 0 x i32 ] }* %array2910, i32 0, i32 1, i32 12
  store i32 9, i32* %index_ptr2926
  %unop2927 = sub i32 0, 3
  %index_ptr2928 = getelementptr { i32, [ 0 x i32 ] }* %array2910, i32 0, i32 1, i32 13
  store i32 %unop2927, i32* %index_ptr2928
  %index_ptr2929 = getelementptr { i32, [ 0 x i32 ] }* %array2910, i32 0, i32 1, i32 14
  store i32 7, i32* %index_ptr2929
  %nums2930 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %array2910, { i32, [ 0 x i32 ] }** %nums2930
  %i2931 = alloca i32
  store i32 0, i32* %i2931
  %_lhs2932 = load { i32, [ 0 x i32 ] }** %nums2930
  %len_ptr2933 = getelementptr { i32, [ 0 x i32 ] }* %_lhs2932, i32 0, i32 0
  %len2934 = load i32* %len_ptr2933
  %n2935 = alloca i32
  store i32 %len2934, i32* %n2935
  %_lhs2937 = load i32* %n2935
  %bop2938 = sub i32 %_lhs2937, 1
  %_lhs2936 = load { i32, [ 0 x i32 ] }** %nums2930
  call void @stoogeSort( { i32, [ 0 x i32 ] }* %_lhs2936, i32 0, i32 %bop2938 )
  store i32 0, i32* %i2931
  br label %__cond537

__cond537:
  %_lhs2939 = load i32* %i2931
  %_lhs2940 = load i32* %n2935
  %bop2941 = sub i32 %_lhs2940, 1
  %bop2942 = icmp sle i32 %_lhs2939, %bop2941
  br i1 %bop2942, label %__body536, label %__post535

__fresh539:
  br label %__body536

__body536:
  %_lhs2943 = load i32* %i2931
  %len_ptr2944 = getelementptr { i32, [ 0 x i32 ] }** %nums2930, i32 0, i32 0
  %len2945 = load i32* %len_ptr2944
  call void @oat_array_bounds_check( i32 %len2945, i32 %_lhs2943 )
  %array_dereferenced2946 = load { i32, [ 0 x i32 ] }** %nums2930
  %elt_ptr2947 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2946, i32 0, i32 1, i32 %_lhs2943
  %_lhs2948 = load i32* %elt_ptr2947
  call void @print_int( i32 %_lhs2948 )
  %_lhs2949 = load i32* %i2931
  %bop2950 = add i32 %_lhs2949, 1
  store i32 %bop2950, i32* %i2931
  br label %__cond537

__fresh540:
  br label %__post535

__post535:
  ret i32 0
}


define void @stoogeSort ({ i32, [ 0 x i32 ] }* %a2842, i32 %i2840, i32 %j2838){

__fresh530:
  %a_slot2843 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %a2842, { i32, [ 0 x i32 ] }** %a_slot2843
  %i_slot2841 = alloca i32
  store i32 %i2840, i32* %i_slot2841
  %j_slot2839 = alloca i32
  store i32 %j2838, i32* %j_slot2839
  %t2844 = alloca i32
  store i32 0, i32* %t2844
  %_lhs2845 = load i32* %j_slot2839
  %len_ptr2846 = getelementptr { i32, [ 0 x i32 ] }** %a_slot2843, i32 0, i32 0
  %len2847 = load i32* %len_ptr2846
  call void @oat_array_bounds_check( i32 %len2847, i32 %_lhs2845 )
  %array_dereferenced2848 = load { i32, [ 0 x i32 ] }** %a_slot2843
  %elt_ptr2849 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2848, i32 0, i32 1, i32 %_lhs2845
  %_lhs2850 = load i32* %elt_ptr2849
  %_lhs2851 = load i32* %i_slot2841
  %len_ptr2852 = getelementptr { i32, [ 0 x i32 ] }** %a_slot2843, i32 0, i32 0
  %len2853 = load i32* %len_ptr2852
  call void @oat_array_bounds_check( i32 %len2853, i32 %_lhs2851 )
  %array_dereferenced2854 = load { i32, [ 0 x i32 ] }** %a_slot2843
  %elt_ptr2855 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2854, i32 0, i32 1, i32 %_lhs2851
  %_lhs2856 = load i32* %elt_ptr2855
  %bop2857 = icmp slt i32 %_lhs2850, %_lhs2856
  br i1 %bop2857, label %__then526, label %__else525

__fresh531:
  br label %__then526

__then526:
  %_lhs2858 = load i32* %i_slot2841
  %len_ptr2859 = getelementptr { i32, [ 0 x i32 ] }** %a_slot2843, i32 0, i32 0
  %len2860 = load i32* %len_ptr2859
  call void @oat_array_bounds_check( i32 %len2860, i32 %_lhs2858 )
  %array_dereferenced2861 = load { i32, [ 0 x i32 ] }** %a_slot2843
  %elt_ptr2862 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2861, i32 0, i32 1, i32 %_lhs2858
  %_lhs2863 = load i32* %elt_ptr2862
  store i32 %_lhs2863, i32* %t2844
  %_lhs2864 = load i32* %i_slot2841
  %len_ptr2865 = getelementptr { i32, [ 0 x i32 ] }** %a_slot2843, i32 0, i32 0
  %len2866 = load i32* %len_ptr2865
  call void @oat_array_bounds_check( i32 %len2866, i32 %_lhs2864 )
  %array_dereferenced2867 = load { i32, [ 0 x i32 ] }** %a_slot2843
  %elt_ptr2868 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2867, i32 0, i32 1, i32 %_lhs2864
  %_lhs2869 = load i32* %j_slot2839
  %len_ptr2870 = getelementptr { i32, [ 0 x i32 ] }** %a_slot2843, i32 0, i32 0
  %len2871 = load i32* %len_ptr2870
  call void @oat_array_bounds_check( i32 %len2871, i32 %_lhs2869 )
  %array_dereferenced2872 = load { i32, [ 0 x i32 ] }** %a_slot2843
  %elt_ptr2873 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2872, i32 0, i32 1, i32 %_lhs2869
  %_lhs2874 = load i32* %elt_ptr2873
  store i32 %_lhs2874, i32* %elt_ptr2868
  %_lhs2875 = load i32* %j_slot2839
  %len_ptr2876 = getelementptr { i32, [ 0 x i32 ] }** %a_slot2843, i32 0, i32 0
  %len2877 = load i32* %len_ptr2876
  call void @oat_array_bounds_check( i32 %len2877, i32 %_lhs2875 )
  %array_dereferenced2878 = load { i32, [ 0 x i32 ] }** %a_slot2843
  %elt_ptr2879 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2878, i32 0, i32 1, i32 %_lhs2875
  %_lhs2880 = load i32* %t2844
  store i32 %_lhs2880, i32* %elt_ptr2879
  br label %__merge524

__fresh532:
  br label %__else525

__else525:
  br label %__merge524

__merge524:
  %_lhs2881 = load i32* %j_slot2839
  %_lhs2882 = load i32* %i_slot2841
  %bop2883 = sub i32 %_lhs2881, %_lhs2882
  %bop2884 = icmp sgt i32 %bop2883, 1
  br i1 %bop2884, label %__then529, label %__else528

__fresh533:
  br label %__then529

__then529:
  %_lhs2885 = load i32* %j_slot2839
  %_lhs2886 = load i32* %i_slot2841
  %bop2887 = sub i32 %_lhs2885, %_lhs2886
  %bop2888 = add i32 %bop2887, 1
  %bop2889 = ashr i32 %bop2888, 1
  store i32 %bop2889, i32* %t2844
  %_lhs2892 = load i32* %j_slot2839
  %_lhs2893 = load i32* %t2844
  %bop2894 = sub i32 %_lhs2892, %_lhs2893
  %_lhs2891 = load i32* %i_slot2841
  %_lhs2890 = load { i32, [ 0 x i32 ] }** %a_slot2843
  call void @stoogeSort( { i32, [ 0 x i32 ] }* %_lhs2890, i32 %_lhs2891, i32 %bop2894 )
  %_lhs2899 = load i32* %j_slot2839
  %_lhs2896 = load i32* %i_slot2841
  %_lhs2897 = load i32* %t2844
  %bop2898 = add i32 %_lhs2896, %_lhs2897
  %_lhs2895 = load { i32, [ 0 x i32 ] }** %a_slot2843
  call void @stoogeSort( { i32, [ 0 x i32 ] }* %_lhs2895, i32 %bop2898, i32 %_lhs2899 )
  %_lhs2902 = load i32* %j_slot2839
  %_lhs2903 = load i32* %t2844
  %bop2904 = sub i32 %_lhs2902, %_lhs2903
  %_lhs2901 = load i32* %i_slot2841
  %_lhs2900 = load { i32, [ 0 x i32 ] }** %a_slot2843
  call void @stoogeSort( { i32, [ 0 x i32 ] }* %_lhs2900, i32 %_lhs2901, i32 %bop2904 )
  br label %__merge527

__fresh534:
  br label %__else528

__else528:
  br label %__merge527

__merge527:
  ret void
}


