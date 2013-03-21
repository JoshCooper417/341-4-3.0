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


define i32 @program (i32 %argc2903, { i32, [ 0 x i8* ] }* %argv2901){

__fresh588:
  %argc_slot2904 = alloca i32
  store i32 %argc2903, i32* %argc_slot2904
  %argv_slot2902 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv2901, { i32, [ 0 x i8* ] }** %argv_slot2902
  %array_ptr2905 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 15 )
  %array2906 = bitcast { i32, [ 0 x i32 ] }* %array_ptr2905 to { i32, [ 0 x i32 ] }* 
  %index_ptr2907 = getelementptr { i32, [ 0 x i32 ] }* %array2906, i32 0, i32 1, i32 0
  store i32 1, i32* %index_ptr2907
  %index_ptr2908 = getelementptr { i32, [ 0 x i32 ] }* %array2906, i32 0, i32 1, i32 1
  store i32 4, i32* %index_ptr2908
  %index_ptr2909 = getelementptr { i32, [ 0 x i32 ] }* %array2906, i32 0, i32 1, i32 2
  store i32 5, i32* %index_ptr2909
  %index_ptr2910 = getelementptr { i32, [ 0 x i32 ] }* %array2906, i32 0, i32 1, i32 3
  store i32 3, i32* %index_ptr2910
  %unop2911 = sub i32 0, 6
  %index_ptr2912 = getelementptr { i32, [ 0 x i32 ] }* %array2906, i32 0, i32 1, i32 4
  store i32 %unop2911, i32* %index_ptr2912
  %index_ptr2913 = getelementptr { i32, [ 0 x i32 ] }* %array2906, i32 0, i32 1, i32 5
  store i32 3, i32* %index_ptr2913
  %index_ptr2914 = getelementptr { i32, [ 0 x i32 ] }* %array2906, i32 0, i32 1, i32 6
  store i32 7, i32* %index_ptr2914
  %index_ptr2915 = getelementptr { i32, [ 0 x i32 ] }* %array2906, i32 0, i32 1, i32 7
  store i32 10, i32* %index_ptr2915
  %unop2916 = sub i32 0, 2
  %index_ptr2917 = getelementptr { i32, [ 0 x i32 ] }* %array2906, i32 0, i32 1, i32 8
  store i32 %unop2916, i32* %index_ptr2917
  %unop2918 = sub i32 0, 5
  %index_ptr2919 = getelementptr { i32, [ 0 x i32 ] }* %array2906, i32 0, i32 1, i32 9
  store i32 %unop2918, i32* %index_ptr2919
  %index_ptr2920 = getelementptr { i32, [ 0 x i32 ] }* %array2906, i32 0, i32 1, i32 10
  store i32 7, i32* %index_ptr2920
  %index_ptr2921 = getelementptr { i32, [ 0 x i32 ] }* %array2906, i32 0, i32 1, i32 11
  store i32 5, i32* %index_ptr2921
  %index_ptr2922 = getelementptr { i32, [ 0 x i32 ] }* %array2906, i32 0, i32 1, i32 12
  store i32 9, i32* %index_ptr2922
  %unop2923 = sub i32 0, 3
  %index_ptr2924 = getelementptr { i32, [ 0 x i32 ] }* %array2906, i32 0, i32 1, i32 13
  store i32 %unop2923, i32* %index_ptr2924
  %index_ptr2925 = getelementptr { i32, [ 0 x i32 ] }* %array2906, i32 0, i32 1, i32 14
  store i32 7, i32* %index_ptr2925
  %nums2926 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %array2906, { i32, [ 0 x i32 ] }** %nums2926
  %i2927 = alloca i32
  store i32 0, i32* %i2927
  %_lhs2928 = load { i32, [ 0 x i32 ] }** %nums2926
  %len_ptr2929 = getelementptr { i32, [ 0 x i32 ] }* %_lhs2928, i32 0, i32 0
  %len2930 = load i32* %len_ptr2929
  %n2931 = alloca i32
  store i32 %len2930, i32* %n2931
  %_lhs2933 = load i32* %n2931
  %bop2934 = sub i32 %_lhs2933, 1
  %_lhs2932 = load { i32, [ 0 x i32 ] }** %nums2926
  call void @stoogeSort( { i32, [ 0 x i32 ] }* %_lhs2932, i32 0, i32 %bop2934 )
  store i32 0, i32* %i2927
  br label %__cond587

__cond587:
  %_lhs2935 = load i32* %i2927
  %_lhs2936 = load i32* %n2931
  %bop2937 = sub i32 %_lhs2936, 1
  %bop2938 = icmp sle i32 %_lhs2935, %bop2937
  br i1 %bop2938, label %__body586, label %__post585

__fresh589:
  br label %__body586

__body586:
  %_lhs2939 = load i32* %i2927
  %len_ptr2940 = getelementptr { i32, [ 0 x i32 ] }** %nums2926, i32 0, i32 0
  %len2941 = load i32* %len_ptr2940
  call void @oat_array_bounds_check( i32 %len2941, i32 %_lhs2939 )
  %array_dereferenced2942 = load { i32, [ 0 x i32 ] }** %nums2926
  %elt_ptr2943 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2942, i32 0, i32 1, i32 %_lhs2939
  %_lhs2944 = load i32* %elt_ptr2943
  call void @print_int( i32 %_lhs2944 )
  %_lhs2945 = load i32* %i2927
  %bop2946 = add i32 %_lhs2945, 1
  store i32 %bop2946, i32* %i2927
  br label %__cond587

__fresh590:
  br label %__post585

__post585:
  ret i32 0
}


define void @stoogeSort ({ i32, [ 0 x i32 ] }* %a2838, i32 %i2836, i32 %j2834){

__fresh580:
  %a_slot2839 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %a2838, { i32, [ 0 x i32 ] }** %a_slot2839
  %i_slot2837 = alloca i32
  store i32 %i2836, i32* %i_slot2837
  %j_slot2835 = alloca i32
  store i32 %j2834, i32* %j_slot2835
  %t2840 = alloca i32
  store i32 0, i32* %t2840
  %_lhs2841 = load i32* %j_slot2835
  %len_ptr2842 = getelementptr { i32, [ 0 x i32 ] }** %a_slot2839, i32 0, i32 0
  %len2843 = load i32* %len_ptr2842
  call void @oat_array_bounds_check( i32 %len2843, i32 %_lhs2841 )
  %array_dereferenced2844 = load { i32, [ 0 x i32 ] }** %a_slot2839
  %elt_ptr2845 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2844, i32 0, i32 1, i32 %_lhs2841
  %_lhs2846 = load i32* %elt_ptr2845
  %_lhs2847 = load i32* %i_slot2837
  %len_ptr2848 = getelementptr { i32, [ 0 x i32 ] }** %a_slot2839, i32 0, i32 0
  %len2849 = load i32* %len_ptr2848
  call void @oat_array_bounds_check( i32 %len2849, i32 %_lhs2847 )
  %array_dereferenced2850 = load { i32, [ 0 x i32 ] }** %a_slot2839
  %elt_ptr2851 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2850, i32 0, i32 1, i32 %_lhs2847
  %_lhs2852 = load i32* %elt_ptr2851
  %bop2853 = icmp slt i32 %_lhs2846, %_lhs2852
  br i1 %bop2853, label %__then576, label %__else575

__fresh581:
  br label %__then576

__then576:
  %_lhs2854 = load i32* %i_slot2837
  %len_ptr2855 = getelementptr { i32, [ 0 x i32 ] }** %a_slot2839, i32 0, i32 0
  %len2856 = load i32* %len_ptr2855
  call void @oat_array_bounds_check( i32 %len2856, i32 %_lhs2854 )
  %array_dereferenced2857 = load { i32, [ 0 x i32 ] }** %a_slot2839
  %elt_ptr2858 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2857, i32 0, i32 1, i32 %_lhs2854
  %_lhs2859 = load i32* %elt_ptr2858
  store i32 %_lhs2859, i32* %t2840
  %_lhs2860 = load i32* %i_slot2837
  %len_ptr2861 = getelementptr { i32, [ 0 x i32 ] }** %a_slot2839, i32 0, i32 0
  %len2862 = load i32* %len_ptr2861
  call void @oat_array_bounds_check( i32 %len2862, i32 %_lhs2860 )
  %array_dereferenced2863 = load { i32, [ 0 x i32 ] }** %a_slot2839
  %elt_ptr2864 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2863, i32 0, i32 1, i32 %_lhs2860
  %_lhs2865 = load i32* %j_slot2835
  %len_ptr2866 = getelementptr { i32, [ 0 x i32 ] }** %a_slot2839, i32 0, i32 0
  %len2867 = load i32* %len_ptr2866
  call void @oat_array_bounds_check( i32 %len2867, i32 %_lhs2865 )
  %array_dereferenced2868 = load { i32, [ 0 x i32 ] }** %a_slot2839
  %elt_ptr2869 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2868, i32 0, i32 1, i32 %_lhs2865
  %_lhs2870 = load i32* %elt_ptr2869
  store i32 %_lhs2870, i32* %elt_ptr2864
  %_lhs2871 = load i32* %j_slot2835
  %len_ptr2872 = getelementptr { i32, [ 0 x i32 ] }** %a_slot2839, i32 0, i32 0
  %len2873 = load i32* %len_ptr2872
  call void @oat_array_bounds_check( i32 %len2873, i32 %_lhs2871 )
  %array_dereferenced2874 = load { i32, [ 0 x i32 ] }** %a_slot2839
  %elt_ptr2875 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2874, i32 0, i32 1, i32 %_lhs2871
  %_lhs2876 = load i32* %t2840
  store i32 %_lhs2876, i32* %elt_ptr2875
  br label %__merge574

__fresh582:
  br label %__else575

__else575:
  br label %__merge574

__merge574:
  %_lhs2877 = load i32* %j_slot2835
  %_lhs2878 = load i32* %i_slot2837
  %bop2879 = sub i32 %_lhs2877, %_lhs2878
  %bop2880 = icmp sgt i32 %bop2879, 1
  br i1 %bop2880, label %__then579, label %__else578

__fresh583:
  br label %__then579

__then579:
  %_lhs2881 = load i32* %j_slot2835
  %_lhs2882 = load i32* %i_slot2837
  %bop2883 = sub i32 %_lhs2881, %_lhs2882
  %bop2884 = add i32 %bop2883, 1
  %bop2885 = ashr i32 %bop2884, 1
  store i32 %bop2885, i32* %t2840
  %_lhs2888 = load i32* %j_slot2835
  %_lhs2889 = load i32* %t2840
  %bop2890 = sub i32 %_lhs2888, %_lhs2889
  %_lhs2887 = load i32* %i_slot2837
  %_lhs2886 = load { i32, [ 0 x i32 ] }** %a_slot2839
  call void @stoogeSort( { i32, [ 0 x i32 ] }* %_lhs2886, i32 %_lhs2887, i32 %bop2890 )
  %_lhs2895 = load i32* %j_slot2835
  %_lhs2892 = load i32* %i_slot2837
  %_lhs2893 = load i32* %t2840
  %bop2894 = add i32 %_lhs2892, %_lhs2893
  %_lhs2891 = load { i32, [ 0 x i32 ] }** %a_slot2839
  call void @stoogeSort( { i32, [ 0 x i32 ] }* %_lhs2891, i32 %bop2894, i32 %_lhs2895 )
  %_lhs2898 = load i32* %j_slot2835
  %_lhs2899 = load i32* %t2840
  %bop2900 = sub i32 %_lhs2898, %_lhs2899
  %_lhs2897 = load i32* %i_slot2837
  %_lhs2896 = load { i32, [ 0 x i32 ] }** %a_slot2839
  call void @stoogeSort( { i32, [ 0 x i32 ] }* %_lhs2896, i32 %_lhs2897, i32 %bop2900 )
  br label %__merge577

__fresh584:
  br label %__else578

__else578:
  br label %__merge577

__merge577:
  ret void
}


