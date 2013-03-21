declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
define void @oat_init (){

__fresh604:
  ret void
}


define i32 @program (i32 %argc2888, { i32, [ 0 x i8* ] }* %argv2886){

__fresh601:
  %argc_slot2889 = alloca i32
  store i32 %argc2888, i32* %argc_slot2889
  %argv_slot2887 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv2886, { i32, [ 0 x i8* ] }** %argv_slot2887
  %array_ptr2890 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 15 )
  %array2891 = bitcast { i32, [ 0 x i32 ] }* %array_ptr2890 to { i32, [ 0 x i32 ] }* 
  %index_ptr2892 = getelementptr { i32, [ 0 x i32 ] }* %array2891, i32 0, i32 1, i32 0
  store i32 1, i32* %index_ptr2892
  %index_ptr2893 = getelementptr { i32, [ 0 x i32 ] }* %array2891, i32 0, i32 1, i32 1
  store i32 4, i32* %index_ptr2893
  %index_ptr2894 = getelementptr { i32, [ 0 x i32 ] }* %array2891, i32 0, i32 1, i32 2
  store i32 5, i32* %index_ptr2894
  %index_ptr2895 = getelementptr { i32, [ 0 x i32 ] }* %array2891, i32 0, i32 1, i32 3
  store i32 3, i32* %index_ptr2895
  %unop2896 = sub i32 0, 6
  %index_ptr2897 = getelementptr { i32, [ 0 x i32 ] }* %array2891, i32 0, i32 1, i32 4
  store i32 %unop2896, i32* %index_ptr2897
  %index_ptr2898 = getelementptr { i32, [ 0 x i32 ] }* %array2891, i32 0, i32 1, i32 5
  store i32 3, i32* %index_ptr2898
  %index_ptr2899 = getelementptr { i32, [ 0 x i32 ] }* %array2891, i32 0, i32 1, i32 6
  store i32 7, i32* %index_ptr2899
  %index_ptr2900 = getelementptr { i32, [ 0 x i32 ] }* %array2891, i32 0, i32 1, i32 7
  store i32 10, i32* %index_ptr2900
  %unop2901 = sub i32 0, 2
  %index_ptr2902 = getelementptr { i32, [ 0 x i32 ] }* %array2891, i32 0, i32 1, i32 8
  store i32 %unop2901, i32* %index_ptr2902
  %unop2903 = sub i32 0, 5
  %index_ptr2904 = getelementptr { i32, [ 0 x i32 ] }* %array2891, i32 0, i32 1, i32 9
  store i32 %unop2903, i32* %index_ptr2904
  %index_ptr2905 = getelementptr { i32, [ 0 x i32 ] }* %array2891, i32 0, i32 1, i32 10
  store i32 7, i32* %index_ptr2905
  %index_ptr2906 = getelementptr { i32, [ 0 x i32 ] }* %array2891, i32 0, i32 1, i32 11
  store i32 5, i32* %index_ptr2906
  %index_ptr2907 = getelementptr { i32, [ 0 x i32 ] }* %array2891, i32 0, i32 1, i32 12
  store i32 9, i32* %index_ptr2907
  %unop2908 = sub i32 0, 3
  %index_ptr2909 = getelementptr { i32, [ 0 x i32 ] }* %array2891, i32 0, i32 1, i32 13
  store i32 %unop2908, i32* %index_ptr2909
  %index_ptr2910 = getelementptr { i32, [ 0 x i32 ] }* %array2891, i32 0, i32 1, i32 14
  store i32 7, i32* %index_ptr2910
  %nums2911 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %array2891, { i32, [ 0 x i32 ] }** %nums2911
  %i2912 = alloca i32
  store i32 0, i32* %i2912
  %_lhs2913 = load { i32, [ 0 x i32 ] }** %nums2911
  %len_ptr2914 = getelementptr { i32, [ 0 x i32 ] }* %_lhs2913, i32 0, i32 0
  %len2915 = load i32* %len_ptr2914
  %n2916 = alloca i32
  store i32 %len2915, i32* %n2916
  %_lhs2918 = load i32* %n2916
  %bop2919 = sub i32 %_lhs2918, 1
  %_lhs2917 = load { i32, [ 0 x i32 ] }** %nums2911
  call void @stoogeSort( { i32, [ 0 x i32 ] }* %_lhs2917, i32 0, i32 %bop2919 )
  store i32 0, i32* %i2912
  br label %__cond600

__cond600:
  %_lhs2920 = load i32* %i2912
  %_lhs2921 = load i32* %n2916
  %bop2922 = sub i32 %_lhs2921, 1
  %bop2923 = icmp sle i32 %_lhs2920, %bop2922
  br i1 %bop2923, label %__body599, label %__post598

__fresh602:
  br label %__body599

__body599:
  %_lhs2924 = load i32* %i2912
  %len_ptr2925 = getelementptr { i32, [ 0 x i32 ] }** %nums2911, i32 0, i32 0
  %len2926 = load i32* %len_ptr2925
  call void @oat_array_bounds_check( i32 %len2926, i32 %_lhs2924 )
  %array_dereferenced2927 = load { i32, [ 0 x i32 ] }** %nums2911
  %elt_ptr2928 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2927, i32 0, i32 1, i32 %_lhs2924
  %_lhs2929 = load i32* %elt_ptr2928
  call void @print_int( i32 %_lhs2929 )
  %_lhs2930 = load i32* %i2912
  %bop2931 = add i32 %_lhs2930, 1
  store i32 %bop2931, i32* %i2912
  br label %__cond600

__fresh603:
  br label %__post598

__post598:
  ret i32 0
}


define void @stoogeSort ({ i32, [ 0 x i32 ] }* %a2823, i32 %i2821, i32 %j2819){

__fresh593:
  %a_slot2824 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %a2823, { i32, [ 0 x i32 ] }** %a_slot2824
  %i_slot2822 = alloca i32
  store i32 %i2821, i32* %i_slot2822
  %j_slot2820 = alloca i32
  store i32 %j2819, i32* %j_slot2820
  %t2825 = alloca i32
  store i32 0, i32* %t2825
  %_lhs2826 = load i32* %j_slot2820
  %len_ptr2827 = getelementptr { i32, [ 0 x i32 ] }** %a_slot2824, i32 0, i32 0
  %len2828 = load i32* %len_ptr2827
  call void @oat_array_bounds_check( i32 %len2828, i32 %_lhs2826 )
  %array_dereferenced2829 = load { i32, [ 0 x i32 ] }** %a_slot2824
  %elt_ptr2830 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2829, i32 0, i32 1, i32 %_lhs2826
  %_lhs2831 = load i32* %elt_ptr2830
  %_lhs2832 = load i32* %i_slot2822
  %len_ptr2833 = getelementptr { i32, [ 0 x i32 ] }** %a_slot2824, i32 0, i32 0
  %len2834 = load i32* %len_ptr2833
  call void @oat_array_bounds_check( i32 %len2834, i32 %_lhs2832 )
  %array_dereferenced2835 = load { i32, [ 0 x i32 ] }** %a_slot2824
  %elt_ptr2836 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2835, i32 0, i32 1, i32 %_lhs2832
  %_lhs2837 = load i32* %elt_ptr2836
  %bop2838 = icmp slt i32 %_lhs2831, %_lhs2837
  br i1 %bop2838, label %__then589, label %__else588

__fresh594:
  br label %__then589

__then589:
  %_lhs2839 = load i32* %i_slot2822
  %len_ptr2840 = getelementptr { i32, [ 0 x i32 ] }** %a_slot2824, i32 0, i32 0
  %len2841 = load i32* %len_ptr2840
  call void @oat_array_bounds_check( i32 %len2841, i32 %_lhs2839 )
  %array_dereferenced2842 = load { i32, [ 0 x i32 ] }** %a_slot2824
  %elt_ptr2843 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2842, i32 0, i32 1, i32 %_lhs2839
  %_lhs2844 = load i32* %elt_ptr2843
  store i32 %_lhs2844, i32* %t2825
  %_lhs2845 = load i32* %i_slot2822
  %len_ptr2846 = getelementptr { i32, [ 0 x i32 ] }** %a_slot2824, i32 0, i32 0
  %len2847 = load i32* %len_ptr2846
  call void @oat_array_bounds_check( i32 %len2847, i32 %_lhs2845 )
  %array_dereferenced2848 = load { i32, [ 0 x i32 ] }** %a_slot2824
  %elt_ptr2849 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2848, i32 0, i32 1, i32 %_lhs2845
  %_lhs2850 = load i32* %j_slot2820
  %len_ptr2851 = getelementptr { i32, [ 0 x i32 ] }** %a_slot2824, i32 0, i32 0
  %len2852 = load i32* %len_ptr2851
  call void @oat_array_bounds_check( i32 %len2852, i32 %_lhs2850 )
  %array_dereferenced2853 = load { i32, [ 0 x i32 ] }** %a_slot2824
  %elt_ptr2854 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2853, i32 0, i32 1, i32 %_lhs2850
  %_lhs2855 = load i32* %elt_ptr2854
  store i32 %_lhs2855, i32* %elt_ptr2849
  %_lhs2856 = load i32* %j_slot2820
  %len_ptr2857 = getelementptr { i32, [ 0 x i32 ] }** %a_slot2824, i32 0, i32 0
  %len2858 = load i32* %len_ptr2857
  call void @oat_array_bounds_check( i32 %len2858, i32 %_lhs2856 )
  %array_dereferenced2859 = load { i32, [ 0 x i32 ] }** %a_slot2824
  %elt_ptr2860 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2859, i32 0, i32 1, i32 %_lhs2856
  %_lhs2861 = load i32* %t2825
  store i32 %_lhs2861, i32* %elt_ptr2860
  br label %__merge587

__fresh595:
  br label %__else588

__else588:
  br label %__merge587

__merge587:
  %_lhs2862 = load i32* %j_slot2820
  %_lhs2863 = load i32* %i_slot2822
  %bop2864 = sub i32 %_lhs2862, %_lhs2863
  %bop2865 = icmp sgt i32 %bop2864, 1
  br i1 %bop2865, label %__then592, label %__else591

__fresh596:
  br label %__then592

__then592:
  %_lhs2866 = load i32* %j_slot2820
  %_lhs2867 = load i32* %i_slot2822
  %bop2868 = sub i32 %_lhs2866, %_lhs2867
  %bop2869 = add i32 %bop2868, 1
  %bop2870 = ashr i32 %bop2869, 1
  store i32 %bop2870, i32* %t2825
  %_lhs2873 = load i32* %j_slot2820
  %_lhs2874 = load i32* %t2825
  %bop2875 = sub i32 %_lhs2873, %_lhs2874
  %_lhs2872 = load i32* %i_slot2822
  %_lhs2871 = load { i32, [ 0 x i32 ] }** %a_slot2824
  call void @stoogeSort( { i32, [ 0 x i32 ] }* %_lhs2871, i32 %_lhs2872, i32 %bop2875 )
  %_lhs2880 = load i32* %j_slot2820
  %_lhs2877 = load i32* %i_slot2822
  %_lhs2878 = load i32* %t2825
  %bop2879 = add i32 %_lhs2877, %_lhs2878
  %_lhs2876 = load { i32, [ 0 x i32 ] }** %a_slot2824
  call void @stoogeSort( { i32, [ 0 x i32 ] }* %_lhs2876, i32 %bop2879, i32 %_lhs2880 )
  %_lhs2883 = load i32* %j_slot2820
  %_lhs2884 = load i32* %t2825
  %bop2885 = sub i32 %_lhs2883, %_lhs2884
  %_lhs2882 = load i32* %i_slot2822
  %_lhs2881 = load { i32, [ 0 x i32 ] }** %a_slot2824
  call void @stoogeSort( { i32, [ 0 x i32 ] }* %_lhs2881, i32 %_lhs2882, i32 %bop2885 )
  br label %__merge590

__fresh597:
  br label %__else591

__else591:
  br label %__merge590

__merge590:
  ret void
}


