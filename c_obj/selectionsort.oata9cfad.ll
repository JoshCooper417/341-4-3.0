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


define i32 @program (i32 %argc3057, { i32, [ 0 x i8* ] }* %argv3055){

__fresh612:
  %argc_slot3058 = alloca i32
  store i32 %argc3057, i32* %argc_slot3058
  %argv_slot3056 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv3055, { i32, [ 0 x i8* ] }** %argv_slot3056
  %array_ptr3059 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 8 )
  %array3060 = bitcast { i32, [ 0 x i32 ] }* %array_ptr3059 to { i32, [ 0 x i32 ] }* 
  %index_ptr3061 = getelementptr { i32, [ 0 x i32 ] }* %array3060, i32 0, i32 1, i32 0
  store i32 5, i32* %index_ptr3061
  %index_ptr3062 = getelementptr { i32, [ 0 x i32 ] }* %array3060, i32 0, i32 1, i32 1
  store i32 200, i32* %index_ptr3062
  %index_ptr3063 = getelementptr { i32, [ 0 x i32 ] }* %array3060, i32 0, i32 1, i32 2
  store i32 1, i32* %index_ptr3063
  %index_ptr3064 = getelementptr { i32, [ 0 x i32 ] }* %array3060, i32 0, i32 1, i32 3
  store i32 65, i32* %index_ptr3064
  %index_ptr3065 = getelementptr { i32, [ 0 x i32 ] }* %array3060, i32 0, i32 1, i32 4
  store i32 30, i32* %index_ptr3065
  %index_ptr3066 = getelementptr { i32, [ 0 x i32 ] }* %array3060, i32 0, i32 1, i32 5
  store i32 99, i32* %index_ptr3066
  %index_ptr3067 = getelementptr { i32, [ 0 x i32 ] }* %array3060, i32 0, i32 1, i32 6
  store i32 2, i32* %index_ptr3067
  %index_ptr3068 = getelementptr { i32, [ 0 x i32 ] }* %array3060, i32 0, i32 1, i32 7
  store i32 0, i32* %index_ptr3068
  %ar3069 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %array3060, { i32, [ 0 x i32 ] }** %ar3069
  %_lhs3070 = load { i32, [ 0 x i32 ] }** %ar3069
  call void @selectionsort( { i32, [ 0 x i32 ] }* %_lhs3070, i32 8 )
  %i3071 = alloca i32
  store i32 0, i32* %i3071
  br label %__cond611

__cond611:
  %_lhs3072 = load i32* %i3071
  %bop3073 = icmp slt i32 %_lhs3072, 8
  br i1 %bop3073, label %__body610, label %__post609

__fresh613:
  br label %__body610

__body610:
  %_lhs3074 = load i32* %i3071
  %len_ptr3075 = getelementptr { i32, [ 0 x i32 ] }** %ar3069, i32 0, i32 0
  %len3076 = load i32* %len_ptr3075
  call void @oat_array_bounds_check( i32 %len3076, i32 %_lhs3074 )
  %array_dereferenced3077 = load { i32, [ 0 x i32 ] }** %ar3069
  %elt_ptr3078 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced3077, i32 0, i32 1, i32 %_lhs3074
  %_lhs3079 = load i32* %elt_ptr3078
  call void @print_int( i32 %_lhs3079 )
  %_lhs3080 = load i32* %i3071
  %bop3081 = add i32 %_lhs3080, 1
  store i32 %bop3081, i32* %i3071
  br label %__cond611

__fresh614:
  br label %__post609

__post609:
  ret i32 0
}


define void @selectionsort ({ i32, [ 0 x i32 ] }* %a3018, i32 %s3016){

__fresh606:
  %a_slot3019 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %a3018, { i32, [ 0 x i32 ] }** %a_slot3019
  %s_slot3017 = alloca i32
  store i32 %s3016, i32* %s_slot3017
  %t3020 = alloca i32
  store i32 0, i32* %t3020
  %mi3021 = alloca i32
  store i32 0, i32* %mi3021
  %i3022 = alloca i32
  store i32 0, i32* %i3022
  br label %__cond605

__cond605:
  %_lhs3023 = load i32* %i3022
  %_lhs3024 = load i32* %s_slot3017
  %bop3025 = icmp slt i32 %_lhs3023, %_lhs3024
  br i1 %bop3025, label %__body604, label %__post603

__fresh607:
  br label %__body604

__body604:
  %_lhs3028 = load i32* %s_slot3017
  %_lhs3027 = load i32* %i3022
  %_lhs3026 = load { i32, [ 0 x i32 ] }** %a_slot3019
  %ret3029 = call i32 @getminindex ( { i32, [ 0 x i32 ] }* %_lhs3026, i32 %_lhs3027, i32 %_lhs3028 )
  store i32 %ret3029, i32* %mi3021
  %_lhs3030 = load i32* %i3022
  %len_ptr3031 = getelementptr { i32, [ 0 x i32 ] }** %a_slot3019, i32 0, i32 0
  %len3032 = load i32* %len_ptr3031
  call void @oat_array_bounds_check( i32 %len3032, i32 %_lhs3030 )
  %array_dereferenced3033 = load { i32, [ 0 x i32 ] }** %a_slot3019
  %elt_ptr3034 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced3033, i32 0, i32 1, i32 %_lhs3030
  %_lhs3035 = load i32* %elt_ptr3034
  store i32 %_lhs3035, i32* %t3020
  %_lhs3036 = load i32* %i3022
  %len_ptr3037 = getelementptr { i32, [ 0 x i32 ] }** %a_slot3019, i32 0, i32 0
  %len3038 = load i32* %len_ptr3037
  call void @oat_array_bounds_check( i32 %len3038, i32 %_lhs3036 )
  %array_dereferenced3039 = load { i32, [ 0 x i32 ] }** %a_slot3019
  %elt_ptr3040 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced3039, i32 0, i32 1, i32 %_lhs3036
  %_lhs3041 = load i32* %mi3021
  %len_ptr3042 = getelementptr { i32, [ 0 x i32 ] }** %a_slot3019, i32 0, i32 0
  %len3043 = load i32* %len_ptr3042
  call void @oat_array_bounds_check( i32 %len3043, i32 %_lhs3041 )
  %array_dereferenced3044 = load { i32, [ 0 x i32 ] }** %a_slot3019
  %elt_ptr3045 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced3044, i32 0, i32 1, i32 %_lhs3041
  %_lhs3046 = load i32* %elt_ptr3045
  store i32 %_lhs3046, i32* %elt_ptr3040
  %_lhs3047 = load i32* %mi3021
  %len_ptr3048 = getelementptr { i32, [ 0 x i32 ] }** %a_slot3019, i32 0, i32 0
  %len3049 = load i32* %len_ptr3048
  call void @oat_array_bounds_check( i32 %len3049, i32 %_lhs3047 )
  %array_dereferenced3050 = load { i32, [ 0 x i32 ] }** %a_slot3019
  %elt_ptr3051 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced3050, i32 0, i32 1, i32 %_lhs3047
  %_lhs3052 = load i32* %t3020
  store i32 %_lhs3052, i32* %elt_ptr3051
  %_lhs3053 = load i32* %i3022
  %bop3054 = add i32 %_lhs3053, 1
  store i32 %bop3054, i32* %i3022
  br label %__cond605

__fresh608:
  br label %__post603

__post603:
  ret void
}


define i32 @getminindex ({ i32, [ 0 x i32 ] }* %a2982, i32 %s2980, i32 %b2978){

__fresh598:
  %a_slot2983 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %a2982, { i32, [ 0 x i32 ] }** %a_slot2983
  %s_slot2981 = alloca i32
  store i32 %s2980, i32* %s_slot2981
  %b_slot2979 = alloca i32
  store i32 %b2978, i32* %b_slot2979
  %_lhs2984 = load i32* %s_slot2981
  %i2985 = alloca i32
  store i32 %_lhs2984, i32* %i2985
  %_lhs2986 = load i32* %s_slot2981
  %len_ptr2987 = getelementptr { i32, [ 0 x i32 ] }** %a_slot2983, i32 0, i32 0
  %len2988 = load i32* %len_ptr2987
  call void @oat_array_bounds_check( i32 %len2988, i32 %_lhs2986 )
  %array_dereferenced2989 = load { i32, [ 0 x i32 ] }** %a_slot2983
  %elt_ptr2990 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2989, i32 0, i32 1, i32 %_lhs2986
  %_lhs2991 = load i32* %elt_ptr2990
  %min2992 = alloca i32
  store i32 %_lhs2991, i32* %min2992
  %_lhs2993 = load i32* %s_slot2981
  %mi2994 = alloca i32
  store i32 %_lhs2993, i32* %mi2994
  br label %__cond594

__cond594:
  %_lhs2995 = load i32* %i2985
  %_lhs2996 = load i32* %b_slot2979
  %bop2997 = icmp slt i32 %_lhs2995, %_lhs2996
  br i1 %bop2997, label %__body593, label %__post592

__fresh599:
  br label %__body593

__body593:
  %_lhs2998 = load i32* %i2985
  %len_ptr2999 = getelementptr { i32, [ 0 x i32 ] }** %a_slot2983, i32 0, i32 0
  %len3000 = load i32* %len_ptr2999
  call void @oat_array_bounds_check( i32 %len3000, i32 %_lhs2998 )
  %array_dereferenced3001 = load { i32, [ 0 x i32 ] }** %a_slot2983
  %elt_ptr3002 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced3001, i32 0, i32 1, i32 %_lhs2998
  %_lhs3003 = load i32* %elt_ptr3002
  %_lhs3004 = load i32* %min2992
  %bop3005 = icmp slt i32 %_lhs3003, %_lhs3004
  br i1 %bop3005, label %__then597, label %__else596

__fresh600:
  br label %__then597

__then597:
  %_lhs3006 = load i32* %i2985
  %len_ptr3007 = getelementptr { i32, [ 0 x i32 ] }** %a_slot2983, i32 0, i32 0
  %len3008 = load i32* %len_ptr3007
  call void @oat_array_bounds_check( i32 %len3008, i32 %_lhs3006 )
  %array_dereferenced3009 = load { i32, [ 0 x i32 ] }** %a_slot2983
  %elt_ptr3010 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced3009, i32 0, i32 1, i32 %_lhs3006
  %_lhs3011 = load i32* %elt_ptr3010
  store i32 %_lhs3011, i32* %min2992
  %_lhs3012 = load i32* %i2985
  store i32 %_lhs3012, i32* %mi2994
  br label %__merge595

__fresh601:
  br label %__else596

__else596:
  br label %__merge595

__merge595:
  %_lhs3013 = load i32* %i2985
  %bop3014 = add i32 %_lhs3013, 1
  store i32 %bop3014, i32* %i2985
  br label %__cond594

__fresh602:
  br label %__post592

__post592:
  %_lhs3015 = load i32* %mi2994
  ret i32 %_lhs3015
}


