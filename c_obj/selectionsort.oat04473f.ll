declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
define void @oat_init (){

__fresh615:
  ret void
}


define i32 @program (i32 %argc3026, { i32, [ 0 x i8* ] }* %argv3024){

__fresh612:
  %argc_slot3027 = alloca i32
  store i32 %argc3026, i32* %argc_slot3027
  %argv_slot3025 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv3024, { i32, [ 0 x i8* ] }** %argv_slot3025
  %array_ptr3028 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 8 )
  %array3029 = bitcast { i32, [ 0 x i32 ] }* %array_ptr3028 to { i32, [ 0 x i32 ] }* 
  %index_ptr3030 = getelementptr { i32, [ 0 x i32 ] }* %array3029, i32 0, i32 1, i32 0
  store i32 5, i32* %index_ptr3030
  %index_ptr3031 = getelementptr { i32, [ 0 x i32 ] }* %array3029, i32 0, i32 1, i32 1
  store i32 200, i32* %index_ptr3031
  %index_ptr3032 = getelementptr { i32, [ 0 x i32 ] }* %array3029, i32 0, i32 1, i32 2
  store i32 1, i32* %index_ptr3032
  %index_ptr3033 = getelementptr { i32, [ 0 x i32 ] }* %array3029, i32 0, i32 1, i32 3
  store i32 65, i32* %index_ptr3033
  %index_ptr3034 = getelementptr { i32, [ 0 x i32 ] }* %array3029, i32 0, i32 1, i32 4
  store i32 30, i32* %index_ptr3034
  %index_ptr3035 = getelementptr { i32, [ 0 x i32 ] }* %array3029, i32 0, i32 1, i32 5
  store i32 99, i32* %index_ptr3035
  %index_ptr3036 = getelementptr { i32, [ 0 x i32 ] }* %array3029, i32 0, i32 1, i32 6
  store i32 2, i32* %index_ptr3036
  %index_ptr3037 = getelementptr { i32, [ 0 x i32 ] }* %array3029, i32 0, i32 1, i32 7
  store i32 0, i32* %index_ptr3037
  %ar3038 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %array3029, { i32, [ 0 x i32 ] }** %ar3038
  %_lhs3039 = load { i32, [ 0 x i32 ] }** %ar3038
  call void @selectionsort( { i32, [ 0 x i32 ] }* %_lhs3039, i32 8 )
  %i3040 = alloca i32
  store i32 0, i32* %i3040
  br label %__cond611

__cond611:
  %_lhs3041 = load i32* %i3040
  %bop3042 = icmp slt i32 %_lhs3041, 8
  br i1 %bop3042, label %__body610, label %__post609

__fresh613:
  br label %__body610

__body610:
  %_lhs3043 = load i32* %i3040
  %len_ptr3044 = getelementptr { i32, [ 0 x i32 ] }** %ar3038, i32 0, i32 0
  %len3045 = load i32* %len_ptr3044
  call void @oat_array_bounds_check( i32 %len3045, i32 %_lhs3043 )
  %array_dereferenced3046 = load { i32, [ 0 x i32 ] }** %ar3038
  %elt_ptr3047 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced3046, i32 0, i32 1, i32 %_lhs3043
  %_lhs3048 = load i32* %elt_ptr3047
  call void @print_int( i32 %_lhs3048 )
  %_lhs3049 = load i32* %i3040
  %bop3050 = add i32 %_lhs3049, 1
  store i32 %bop3050, i32* %i3040
  br label %__cond611

__fresh614:
  br label %__post609

__post609:
  ret i32 0
}


define void @selectionsort ({ i32, [ 0 x i32 ] }* %a2987, i32 %s2985){

__fresh606:
  %a_slot2988 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %a2987, { i32, [ 0 x i32 ] }** %a_slot2988
  %s_slot2986 = alloca i32
  store i32 %s2985, i32* %s_slot2986
  %t2989 = alloca i32
  store i32 0, i32* %t2989
  %mi2990 = alloca i32
  store i32 0, i32* %mi2990
  %i2991 = alloca i32
  store i32 0, i32* %i2991
  br label %__cond605

__cond605:
  %_lhs2992 = load i32* %i2991
  %_lhs2993 = load i32* %s_slot2986
  %bop2994 = icmp slt i32 %_lhs2992, %_lhs2993
  br i1 %bop2994, label %__body604, label %__post603

__fresh607:
  br label %__body604

__body604:
  %_lhs2997 = load i32* %s_slot2986
  %_lhs2996 = load i32* %i2991
  %_lhs2995 = load { i32, [ 0 x i32 ] }** %a_slot2988
  %ret2998 = call i32 @getminindex ( { i32, [ 0 x i32 ] }* %_lhs2995, i32 %_lhs2996, i32 %_lhs2997 )
  store i32 %ret2998, i32* %mi2990
  %_lhs2999 = load i32* %i2991
  %len_ptr3000 = getelementptr { i32, [ 0 x i32 ] }** %a_slot2988, i32 0, i32 0
  %len3001 = load i32* %len_ptr3000
  call void @oat_array_bounds_check( i32 %len3001, i32 %_lhs2999 )
  %array_dereferenced3002 = load { i32, [ 0 x i32 ] }** %a_slot2988
  %elt_ptr3003 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced3002, i32 0, i32 1, i32 %_lhs2999
  %_lhs3004 = load i32* %elt_ptr3003
  store i32 %_lhs3004, i32* %t2989
  %_lhs3005 = load i32* %i2991
  %len_ptr3006 = getelementptr { i32, [ 0 x i32 ] }** %a_slot2988, i32 0, i32 0
  %len3007 = load i32* %len_ptr3006
  call void @oat_array_bounds_check( i32 %len3007, i32 %_lhs3005 )
  %array_dereferenced3008 = load { i32, [ 0 x i32 ] }** %a_slot2988
  %elt_ptr3009 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced3008, i32 0, i32 1, i32 %_lhs3005
  %_lhs3010 = load i32* %mi2990
  %len_ptr3011 = getelementptr { i32, [ 0 x i32 ] }** %a_slot2988, i32 0, i32 0
  %len3012 = load i32* %len_ptr3011
  call void @oat_array_bounds_check( i32 %len3012, i32 %_lhs3010 )
  %array_dereferenced3013 = load { i32, [ 0 x i32 ] }** %a_slot2988
  %elt_ptr3014 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced3013, i32 0, i32 1, i32 %_lhs3010
  %_lhs3015 = load i32* %elt_ptr3014
  store i32 %_lhs3015, i32* %elt_ptr3009
  %_lhs3016 = load i32* %mi2990
  %len_ptr3017 = getelementptr { i32, [ 0 x i32 ] }** %a_slot2988, i32 0, i32 0
  %len3018 = load i32* %len_ptr3017
  call void @oat_array_bounds_check( i32 %len3018, i32 %_lhs3016 )
  %array_dereferenced3019 = load { i32, [ 0 x i32 ] }** %a_slot2988
  %elt_ptr3020 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced3019, i32 0, i32 1, i32 %_lhs3016
  %_lhs3021 = load i32* %t2989
  store i32 %_lhs3021, i32* %elt_ptr3020
  %_lhs3022 = load i32* %i2991
  %bop3023 = add i32 %_lhs3022, 1
  store i32 %bop3023, i32* %i2991
  br label %__cond605

__fresh608:
  br label %__post603

__post603:
  ret void
}


define i32 @getminindex ({ i32, [ 0 x i32 ] }* %a2951, i32 %s2949, i32 %b2947){

__fresh598:
  %a_slot2952 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %a2951, { i32, [ 0 x i32 ] }** %a_slot2952
  %s_slot2950 = alloca i32
  store i32 %s2949, i32* %s_slot2950
  %b_slot2948 = alloca i32
  store i32 %b2947, i32* %b_slot2948
  %_lhs2953 = load i32* %s_slot2950
  %i2954 = alloca i32
  store i32 %_lhs2953, i32* %i2954
  %_lhs2955 = load i32* %s_slot2950
  %len_ptr2956 = getelementptr { i32, [ 0 x i32 ] }** %a_slot2952, i32 0, i32 0
  %len2957 = load i32* %len_ptr2956
  call void @oat_array_bounds_check( i32 %len2957, i32 %_lhs2955 )
  %array_dereferenced2958 = load { i32, [ 0 x i32 ] }** %a_slot2952
  %elt_ptr2959 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2958, i32 0, i32 1, i32 %_lhs2955
  %_lhs2960 = load i32* %elt_ptr2959
  %min2961 = alloca i32
  store i32 %_lhs2960, i32* %min2961
  %_lhs2962 = load i32* %s_slot2950
  %mi2963 = alloca i32
  store i32 %_lhs2962, i32* %mi2963
  br label %__cond594

__cond594:
  %_lhs2964 = load i32* %i2954
  %_lhs2965 = load i32* %b_slot2948
  %bop2966 = icmp slt i32 %_lhs2964, %_lhs2965
  br i1 %bop2966, label %__body593, label %__post592

__fresh599:
  br label %__body593

__body593:
  %_lhs2967 = load i32* %i2954
  %len_ptr2968 = getelementptr { i32, [ 0 x i32 ] }** %a_slot2952, i32 0, i32 0
  %len2969 = load i32* %len_ptr2968
  call void @oat_array_bounds_check( i32 %len2969, i32 %_lhs2967 )
  %array_dereferenced2970 = load { i32, [ 0 x i32 ] }** %a_slot2952
  %elt_ptr2971 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2970, i32 0, i32 1, i32 %_lhs2967
  %_lhs2972 = load i32* %elt_ptr2971
  %_lhs2973 = load i32* %min2961
  %bop2974 = icmp slt i32 %_lhs2972, %_lhs2973
  br i1 %bop2974, label %__then597, label %__else596

__fresh600:
  br label %__then597

__then597:
  %_lhs2975 = load i32* %i2954
  %len_ptr2976 = getelementptr { i32, [ 0 x i32 ] }** %a_slot2952, i32 0, i32 0
  %len2977 = load i32* %len_ptr2976
  call void @oat_array_bounds_check( i32 %len2977, i32 %_lhs2975 )
  %array_dereferenced2978 = load { i32, [ 0 x i32 ] }** %a_slot2952
  %elt_ptr2979 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2978, i32 0, i32 1, i32 %_lhs2975
  %_lhs2980 = load i32* %elt_ptr2979
  store i32 %_lhs2980, i32* %min2961
  %_lhs2981 = load i32* %i2954
  store i32 %_lhs2981, i32* %mi2963
  br label %__merge595

__fresh601:
  br label %__else596

__else596:
  br label %__merge595

__merge595:
  %_lhs2982 = load i32* %i2954
  %bop2983 = add i32 %_lhs2982, 1
  store i32 %bop2983, i32* %i2954
  br label %__cond594

__fresh602:
  br label %__post592

__post592:
  %_lhs2984 = load i32* %mi2963
  ret i32 %_lhs2984
}


