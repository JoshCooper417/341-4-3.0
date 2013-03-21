declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
define void @oat_init (){

__fresh611:
  ret void
}


define i32 @program (i32 %argc2908, { i32, [ 0 x i8* ] }* %argv2906){

__fresh608:
  %argc_slot2909 = alloca i32
  store i32 %argc2908, i32* %argc_slot2909
  %argv_slot2907 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv2906, { i32, [ 0 x i8* ] }** %argv_slot2907
  %array_ptr2910 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 15 )
  %array2911 = bitcast { i32, [ 0 x i32 ] }* %array_ptr2910 to { i32, [ 0 x i32 ] }* 
  %index_ptr2912 = getelementptr { i32, [ 0 x i32 ] }* %array2911, i32 0, i32 1, i32 0
  store i32 1, i32* %index_ptr2912
  %index_ptr2913 = getelementptr { i32, [ 0 x i32 ] }* %array2911, i32 0, i32 1, i32 1
  store i32 4, i32* %index_ptr2913
  %index_ptr2914 = getelementptr { i32, [ 0 x i32 ] }* %array2911, i32 0, i32 1, i32 2
  store i32 5, i32* %index_ptr2914
  %index_ptr2915 = getelementptr { i32, [ 0 x i32 ] }* %array2911, i32 0, i32 1, i32 3
  store i32 3, i32* %index_ptr2915
  %unop2916 = sub i32 0, 6
  %index_ptr2917 = getelementptr { i32, [ 0 x i32 ] }* %array2911, i32 0, i32 1, i32 4
  store i32 %unop2916, i32* %index_ptr2917
  %index_ptr2918 = getelementptr { i32, [ 0 x i32 ] }* %array2911, i32 0, i32 1, i32 5
  store i32 3, i32* %index_ptr2918
  %index_ptr2919 = getelementptr { i32, [ 0 x i32 ] }* %array2911, i32 0, i32 1, i32 6
  store i32 7, i32* %index_ptr2919
  %index_ptr2920 = getelementptr { i32, [ 0 x i32 ] }* %array2911, i32 0, i32 1, i32 7
  store i32 10, i32* %index_ptr2920
  %unop2921 = sub i32 0, 2
  %index_ptr2922 = getelementptr { i32, [ 0 x i32 ] }* %array2911, i32 0, i32 1, i32 8
  store i32 %unop2921, i32* %index_ptr2922
  %unop2923 = sub i32 0, 5
  %index_ptr2924 = getelementptr { i32, [ 0 x i32 ] }* %array2911, i32 0, i32 1, i32 9
  store i32 %unop2923, i32* %index_ptr2924
  %index_ptr2925 = getelementptr { i32, [ 0 x i32 ] }* %array2911, i32 0, i32 1, i32 10
  store i32 7, i32* %index_ptr2925
  %index_ptr2926 = getelementptr { i32, [ 0 x i32 ] }* %array2911, i32 0, i32 1, i32 11
  store i32 5, i32* %index_ptr2926
  %index_ptr2927 = getelementptr { i32, [ 0 x i32 ] }* %array2911, i32 0, i32 1, i32 12
  store i32 9, i32* %index_ptr2927
  %unop2928 = sub i32 0, 3
  %index_ptr2929 = getelementptr { i32, [ 0 x i32 ] }* %array2911, i32 0, i32 1, i32 13
  store i32 %unop2928, i32* %index_ptr2929
  %index_ptr2930 = getelementptr { i32, [ 0 x i32 ] }* %array2911, i32 0, i32 1, i32 14
  store i32 7, i32* %index_ptr2930
  %nums2931 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %array2911, { i32, [ 0 x i32 ] }** %nums2931
  %i2932 = alloca i32
  store i32 0, i32* %i2932
  %_lhs2933 = load { i32, [ 0 x i32 ] }** %nums2931
  %len_ptr2934 = getelementptr { i32, [ 0 x i32 ] }* %_lhs2933, i32 0, i32 0
  %len2935 = load i32* %len_ptr2934
  %n2936 = alloca i32
  store i32 %len2935, i32* %n2936
  %_lhs2938 = load i32* %n2936
  %bop2939 = sub i32 %_lhs2938, 1
  %_lhs2937 = load { i32, [ 0 x i32 ] }** %nums2931
  call void @stoogeSort( { i32, [ 0 x i32 ] }* %_lhs2937, i32 0, i32 %bop2939 )
  store i32 0, i32* %i2932
  br label %__cond607

__cond607:
  %_lhs2940 = load i32* %i2932
  %_lhs2941 = load i32* %n2936
  %bop2942 = sub i32 %_lhs2941, 1
  %bop2943 = icmp sle i32 %_lhs2940, %bop2942
  br i1 %bop2943, label %__body606, label %__post605

__fresh609:
  br label %__body606

__body606:
  %_lhs2944 = load i32* %i2932
  %len_ptr2945 = getelementptr { i32, [ 0 x i32 ] }** %nums2931, i32 0, i32 0
  %len2946 = load i32* %len_ptr2945
  call void @oat_array_bounds_check( i32 %len2946, i32 %_lhs2944 )
  %array_dereferenced2947 = load { i32, [ 0 x i32 ] }** %nums2931
  %elt_ptr2948 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2947, i32 0, i32 1, i32 %_lhs2944
  %_lhs2949 = load i32* %elt_ptr2948
  call void @print_int( i32 %_lhs2949 )
  %_lhs2950 = load i32* %i2932
  %bop2951 = add i32 %_lhs2950, 1
  store i32 %bop2951, i32* %i2932
  br label %__cond607

__fresh610:
  br label %__post605

__post605:
  ret i32 0
}


define void @stoogeSort ({ i32, [ 0 x i32 ] }* %a2843, i32 %i2841, i32 %j2839){

__fresh600:
  %a_slot2844 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %a2843, { i32, [ 0 x i32 ] }** %a_slot2844
  %i_slot2842 = alloca i32
  store i32 %i2841, i32* %i_slot2842
  %j_slot2840 = alloca i32
  store i32 %j2839, i32* %j_slot2840
  %t2845 = alloca i32
  store i32 0, i32* %t2845
  %_lhs2846 = load i32* %j_slot2840
  %len_ptr2847 = getelementptr { i32, [ 0 x i32 ] }** %a_slot2844, i32 0, i32 0
  %len2848 = load i32* %len_ptr2847
  call void @oat_array_bounds_check( i32 %len2848, i32 %_lhs2846 )
  %array_dereferenced2849 = load { i32, [ 0 x i32 ] }** %a_slot2844
  %elt_ptr2850 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2849, i32 0, i32 1, i32 %_lhs2846
  %_lhs2851 = load i32* %elt_ptr2850
  %_lhs2852 = load i32* %i_slot2842
  %len_ptr2853 = getelementptr { i32, [ 0 x i32 ] }** %a_slot2844, i32 0, i32 0
  %len2854 = load i32* %len_ptr2853
  call void @oat_array_bounds_check( i32 %len2854, i32 %_lhs2852 )
  %array_dereferenced2855 = load { i32, [ 0 x i32 ] }** %a_slot2844
  %elt_ptr2856 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2855, i32 0, i32 1, i32 %_lhs2852
  %_lhs2857 = load i32* %elt_ptr2856
  %bop2858 = icmp slt i32 %_lhs2851, %_lhs2857
  br i1 %bop2858, label %__then596, label %__else595

__fresh601:
  br label %__then596

__then596:
  %_lhs2859 = load i32* %i_slot2842
  %len_ptr2860 = getelementptr { i32, [ 0 x i32 ] }** %a_slot2844, i32 0, i32 0
  %len2861 = load i32* %len_ptr2860
  call void @oat_array_bounds_check( i32 %len2861, i32 %_lhs2859 )
  %array_dereferenced2862 = load { i32, [ 0 x i32 ] }** %a_slot2844
  %elt_ptr2863 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2862, i32 0, i32 1, i32 %_lhs2859
  %_lhs2864 = load i32* %elt_ptr2863
  store i32 %_lhs2864, i32* %t2845
  %_lhs2865 = load i32* %i_slot2842
  %len_ptr2866 = getelementptr { i32, [ 0 x i32 ] }** %a_slot2844, i32 0, i32 0
  %len2867 = load i32* %len_ptr2866
  call void @oat_array_bounds_check( i32 %len2867, i32 %_lhs2865 )
  %array_dereferenced2868 = load { i32, [ 0 x i32 ] }** %a_slot2844
  %elt_ptr2869 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2868, i32 0, i32 1, i32 %_lhs2865
  %_lhs2870 = load i32* %j_slot2840
  %len_ptr2871 = getelementptr { i32, [ 0 x i32 ] }** %a_slot2844, i32 0, i32 0
  %len2872 = load i32* %len_ptr2871
  call void @oat_array_bounds_check( i32 %len2872, i32 %_lhs2870 )
  %array_dereferenced2873 = load { i32, [ 0 x i32 ] }** %a_slot2844
  %elt_ptr2874 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2873, i32 0, i32 1, i32 %_lhs2870
  %_lhs2875 = load i32* %elt_ptr2874
  store i32 %_lhs2875, i32* %elt_ptr2869
  %_lhs2876 = load i32* %j_slot2840
  %len_ptr2877 = getelementptr { i32, [ 0 x i32 ] }** %a_slot2844, i32 0, i32 0
  %len2878 = load i32* %len_ptr2877
  call void @oat_array_bounds_check( i32 %len2878, i32 %_lhs2876 )
  %array_dereferenced2879 = load { i32, [ 0 x i32 ] }** %a_slot2844
  %elt_ptr2880 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2879, i32 0, i32 1, i32 %_lhs2876
  %_lhs2881 = load i32* %t2845
  store i32 %_lhs2881, i32* %elt_ptr2880
  br label %__merge594

__fresh602:
  br label %__else595

__else595:
  br label %__merge594

__merge594:
  %_lhs2882 = load i32* %j_slot2840
  %_lhs2883 = load i32* %i_slot2842
  %bop2884 = sub i32 %_lhs2882, %_lhs2883
  %bop2885 = icmp sgt i32 %bop2884, 1
  br i1 %bop2885, label %__then599, label %__else598

__fresh603:
  br label %__then599

__then599:
  %_lhs2886 = load i32* %j_slot2840
  %_lhs2887 = load i32* %i_slot2842
  %bop2888 = sub i32 %_lhs2886, %_lhs2887
  %bop2889 = add i32 %bop2888, 1
  %bop2890 = ashr i32 %bop2889, 1
  store i32 %bop2890, i32* %t2845
  %_lhs2893 = load i32* %j_slot2840
  %_lhs2894 = load i32* %t2845
  %bop2895 = sub i32 %_lhs2893, %_lhs2894
  %_lhs2892 = load i32* %i_slot2842
  %_lhs2891 = load { i32, [ 0 x i32 ] }** %a_slot2844
  call void @stoogeSort( { i32, [ 0 x i32 ] }* %_lhs2891, i32 %_lhs2892, i32 %bop2895 )
  %_lhs2900 = load i32* %j_slot2840
  %_lhs2897 = load i32* %i_slot2842
  %_lhs2898 = load i32* %t2845
  %bop2899 = add i32 %_lhs2897, %_lhs2898
  %_lhs2896 = load { i32, [ 0 x i32 ] }** %a_slot2844
  call void @stoogeSort( { i32, [ 0 x i32 ] }* %_lhs2896, i32 %bop2899, i32 %_lhs2900 )
  %_lhs2903 = load i32* %j_slot2840
  %_lhs2904 = load i32* %t2845
  %bop2905 = sub i32 %_lhs2903, %_lhs2904
  %_lhs2902 = load i32* %i_slot2842
  %_lhs2901 = load { i32, [ 0 x i32 ] }** %a_slot2844
  call void @stoogeSort( { i32, [ 0 x i32 ] }* %_lhs2901, i32 %_lhs2902, i32 %bop2905 )
  br label %__merge597

__fresh604:
  br label %__else598

__else598:
  br label %__merge597

__merge597:
  ret void
}


