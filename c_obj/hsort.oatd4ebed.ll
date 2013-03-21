declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@n2786 = global i32 8, align 4
@b2785 = global { i32, [ 0 x i32 ] }* zeroinitializer, align 4		; initialized by b2785.init
define void @oat_init (){

__fresh649:
  call void @b2785.init(  )
  ret void
}


define void @restoreHdown ({ i32, [ 0 x i32 ] }* %a2936, i32 %i2934, i32 %n2932){

__fresh640:
  %a_slot2937 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %a2936, { i32, [ 0 x i32 ] }** %a_slot2937
  %i_slot2935 = alloca i32
  store i32 %i2934, i32* %i_slot2935
  %n_slot2933 = alloca i32
  store i32 %n2932, i32* %n_slot2933
  %_lhs2938 = load i32* %i_slot2935
  %len_ptr2939 = getelementptr { i32, [ 0 x i32 ] }** %a_slot2937, i32 0, i32 0
  %len2940 = load i32* %len_ptr2939
  call void @oat_array_bounds_check( i32 %len2940, i32 %_lhs2938 )
  %array_dereferenced2941 = load { i32, [ 0 x i32 ] }** %a_slot2937
  %elt_ptr2942 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2941, i32 0, i32 1, i32 %_lhs2938
  %_lhs2943 = load i32* %elt_ptr2942
  %v2944 = alloca i32
  store i32 %_lhs2943, i32* %v2944
  %_lhs2945 = load i32* %i_slot2935
  %bop2946 = mul i32 %_lhs2945, 2
  %j2947 = alloca i32
  store i32 %bop2946, i32* %j2947
  %done2948 = alloca i32
  store i32 0, i32* %done2948
  br label %__cond630

__cond630:
  %_lhs2949 = load i32* %j2947
  %_lhs2950 = load i32* %n_slot2933
  %bop2951 = icmp sle i32 %_lhs2949, %_lhs2950
  %_lhs2952 = load i32* %done2948
  %bop2953 = icmp eq i32 %_lhs2952, 0
  %bop2954 = and i1 %bop2951, %bop2953
  br i1 %bop2954, label %__body629, label %__post628

__fresh641:
  br label %__body629

__body629:
  %_lhs2955 = load i32* %j2947
  %_lhs2956 = load i32* %n_slot2933
  %bop2957 = icmp slt i32 %_lhs2955, %_lhs2956
  %_lhs2958 = load i32* %j2947
  %len_ptr2959 = getelementptr { i32, [ 0 x i32 ] }** %a_slot2937, i32 0, i32 0
  %len2960 = load i32* %len_ptr2959
  call void @oat_array_bounds_check( i32 %len2960, i32 %_lhs2958 )
  %array_dereferenced2961 = load { i32, [ 0 x i32 ] }** %a_slot2937
  %elt_ptr2962 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2961, i32 0, i32 1, i32 %_lhs2958
  %_lhs2963 = load i32* %elt_ptr2962
  %_lhs2964 = load i32* %j2947
  %bop2965 = add i32 %_lhs2964, 1
  %len_ptr2966 = getelementptr { i32, [ 0 x i32 ] }** %a_slot2937, i32 0, i32 0
  %len2967 = load i32* %len_ptr2966
  call void @oat_array_bounds_check( i32 %len2967, i32 %bop2965 )
  %array_dereferenced2968 = load { i32, [ 0 x i32 ] }** %a_slot2937
  %elt_ptr2969 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2968, i32 0, i32 1, i32 %bop2965
  %_lhs2970 = load i32* %elt_ptr2969
  %bop2971 = icmp slt i32 %_lhs2963, %_lhs2970
  %bop2972 = and i1 %bop2957, %bop2971
  br i1 %bop2972, label %__then633, label %__else632

__fresh642:
  br label %__then633

__then633:
  %_lhs2973 = load i32* %j2947
  %bop2974 = add i32 %_lhs2973, 1
  store i32 %bop2974, i32* %j2947
  br label %__merge631

__fresh643:
  br label %__else632

__else632:
  br label %__merge631

__merge631:
  %_lhs2975 = load i32* %j2947
  %len_ptr2976 = getelementptr { i32, [ 0 x i32 ] }** %a_slot2937, i32 0, i32 0
  %len2977 = load i32* %len_ptr2976
  call void @oat_array_bounds_check( i32 %len2977, i32 %_lhs2975 )
  %array_dereferenced2978 = load { i32, [ 0 x i32 ] }** %a_slot2937
  %elt_ptr2979 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2978, i32 0, i32 1, i32 %_lhs2975
  %_lhs2980 = load i32* %elt_ptr2979
  %_lhs2981 = load i32* %j2947
  %bop2982 = ashr i32 %_lhs2981, 1
  %len_ptr2983 = getelementptr { i32, [ 0 x i32 ] }** %a_slot2937, i32 0, i32 0
  %len2984 = load i32* %len_ptr2983
  call void @oat_array_bounds_check( i32 %len2984, i32 %bop2982 )
  %array_dereferenced2985 = load { i32, [ 0 x i32 ] }** %a_slot2937
  %elt_ptr2986 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2985, i32 0, i32 1, i32 %bop2982
  %_lhs2987 = load i32* %elt_ptr2986
  %bop2988 = icmp slt i32 %_lhs2980, %_lhs2987
  br i1 %bop2988, label %__then636, label %__else635

__fresh644:
  br label %__then636

__then636:
  store i32 1, i32* %done2948
  br label %__merge634

__fresh645:
  br label %__else635

__else635:
  br label %__merge634

__merge634:
  %_lhs2989 = load i32* %done2948
  %bop2990 = icmp eq i32 %_lhs2989, 0
  br i1 %bop2990, label %__then639, label %__else638

__fresh646:
  br label %__then639

__then639:
  %_lhs2991 = load i32* %j2947
  %bop2992 = ashr i32 %_lhs2991, 1
  %len_ptr2993 = getelementptr { i32, [ 0 x i32 ] }** %a_slot2937, i32 0, i32 0
  %len2994 = load i32* %len_ptr2993
  call void @oat_array_bounds_check( i32 %len2994, i32 %bop2992 )
  %array_dereferenced2995 = load { i32, [ 0 x i32 ] }** %a_slot2937
  %elt_ptr2996 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2995, i32 0, i32 1, i32 %bop2992
  %_lhs2997 = load i32* %j2947
  %len_ptr2998 = getelementptr { i32, [ 0 x i32 ] }** %a_slot2937, i32 0, i32 0
  %len2999 = load i32* %len_ptr2998
  call void @oat_array_bounds_check( i32 %len2999, i32 %_lhs2997 )
  %array_dereferenced3000 = load { i32, [ 0 x i32 ] }** %a_slot2937
  %elt_ptr3001 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced3000, i32 0, i32 1, i32 %_lhs2997
  %_lhs3002 = load i32* %elt_ptr3001
  store i32 %_lhs3002, i32* %elt_ptr2996
  %_lhs3003 = load i32* %j2947
  %bop3004 = mul i32 %_lhs3003, 2
  store i32 %bop3004, i32* %j2947
  br label %__merge637

__fresh647:
  br label %__else638

__else638:
  br label %__merge637

__merge637:
  br label %__cond630

__fresh648:
  br label %__post628

__post628:
  %_lhs3005 = load i32* %j2947
  %bop3006 = ashr i32 %_lhs3005, 1
  %len_ptr3007 = getelementptr { i32, [ 0 x i32 ] }** %a_slot2937, i32 0, i32 0
  %len3008 = load i32* %len_ptr3007
  call void @oat_array_bounds_check( i32 %len3008, i32 %bop3006 )
  %array_dereferenced3009 = load { i32, [ 0 x i32 ] }** %a_slot2937
  %elt_ptr3010 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced3009, i32 0, i32 1, i32 %bop3006
  %_lhs3011 = load i32* %v2944
  store i32 %_lhs3011, i32* %elt_ptr3010
  ret void
}


define void @restoreHup ({ i32, [ 0 x i32 ] }* %a2891, i32 %i2889){

__fresh625:
  %a_slot2892 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %a2891, { i32, [ 0 x i32 ] }** %a_slot2892
  %i_slot2890 = alloca i32
  store i32 %i2889, i32* %i_slot2890
  %_lhs2893 = load i32* %i_slot2890
  %len_ptr2894 = getelementptr { i32, [ 0 x i32 ] }** %a_slot2892, i32 0, i32 0
  %len2895 = load i32* %len_ptr2894
  call void @oat_array_bounds_check( i32 %len2895, i32 %_lhs2893 )
  %array_dereferenced2896 = load { i32, [ 0 x i32 ] }** %a_slot2892
  %elt_ptr2897 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2896, i32 0, i32 1, i32 %_lhs2893
  %_lhs2898 = load i32* %elt_ptr2897
  %v2899 = alloca i32
  store i32 %_lhs2898, i32* %v2899
  br label %__cond624

__cond624:
  %_lhs2900 = load i32* %i_slot2890
  %bop2901 = icmp sgt i32 %_lhs2900, 1
  %_lhs2902 = load i32* %i_slot2890
  %bop2903 = ashr i32 %_lhs2902, 1
  %len_ptr2904 = getelementptr { i32, [ 0 x i32 ] }** %a_slot2892, i32 0, i32 0
  %len2905 = load i32* %len_ptr2904
  call void @oat_array_bounds_check( i32 %len2905, i32 %bop2903 )
  %array_dereferenced2906 = load { i32, [ 0 x i32 ] }** %a_slot2892
  %elt_ptr2907 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2906, i32 0, i32 1, i32 %bop2903
  %_lhs2908 = load i32* %elt_ptr2907
  %_lhs2909 = load i32* %v2899
  %bop2910 = icmp slt i32 %_lhs2908, %_lhs2909
  %bop2911 = and i1 %bop2901, %bop2910
  br i1 %bop2911, label %__body623, label %__post622

__fresh626:
  br label %__body623

__body623:
  %_lhs2912 = load i32* %i_slot2890
  %len_ptr2913 = getelementptr { i32, [ 0 x i32 ] }** %a_slot2892, i32 0, i32 0
  %len2914 = load i32* %len_ptr2913
  call void @oat_array_bounds_check( i32 %len2914, i32 %_lhs2912 )
  %array_dereferenced2915 = load { i32, [ 0 x i32 ] }** %a_slot2892
  %elt_ptr2916 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2915