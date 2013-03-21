declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@a956 = global { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* ] }* zeroinitializer, align 4		; initialized by a956.init
define void @oat_init (){

__fresh206:
  call void @a956.init(  )
  ret void
}


define i32 @program (i32 %argc959, { i32, [ 0 x i8* ] }* %argv957){

__fresh205:
  %argc_slot960 = alloca i32
  store i32 %argc959, i32* %argc_slot960
  %argv_slot958 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv957, { i32, [ 0 x i8* ] }** %argv_slot958
  %len_ptr961 = getelementptr { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* ] }** @a956, i32 0, i32 0
  %len962 = load i32* %len_ptr961
  call void @oat_array_bounds_check( i32 %len962, i32 0 )
  %array_dereferenced963 = load { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* ] }** @a956
  %elt_ptr964 = getelementptr { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* ] }* %array_dereferenced963, i32 0, i32 1, i32 0
  %len_ptr965 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %elt_ptr964, i32 0, i32 0
  %len966 = load i32* %len_ptr965
  call void @oat_array_bounds_check( i32 %len966, i32 1 )
  %array_dereferenced967 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %elt_ptr964
  %elt_ptr968 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array_dereferenced967, i32 0, i32 1, i32 1
  %len_ptr969 = getelementptr { i32, [ 0 x i32 ] }** %elt_ptr968, i32 0, i32 0
  %len970 = load i32* %len_ptr969
  call void @oat_array_bounds_check( i32 %len970, i32 2 )
  %array_dereferenced971 = load { i32, [ 0 x i32 ] }** %elt_ptr968
  %elt_ptr972 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced971, i32 0, i32 1, i32 2
  %_lhs973 = load i32* %elt_ptr972
  ret i32 %_lhs973
}


define void @a956.init (){

__fresh204:
  %array_ptr927 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 3 )
  %array928 = bitcast { i32, [ 0 x i32 ] }* %array_ptr927 to { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* ] }* 
  %array_ptr929 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array930 = bitcast { i32, [ 0 x i32 ] }* %array_ptr929 to { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* 
  %array_ptr931 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 1 )
  %array932 = bitcast { i32, [ 0 x i32 ] }* %array_ptr931 to { i32, [ 0 x i32 ] }* 
  %index_ptr933 = getelementptr { i32, [ 0 x i32 ] }* %array932, i32 0, i32 1, i32 0
  store i32 0, i32* %index_ptr933
  %index_ptr934 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array930, i32 0, i32 1, i32 0
  store { i32, [ 0 x i32 ] }* %array932, { i32, [ 0 x i32 ] }** %index_ptr934
  %array_ptr935 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 3 )
  %array936 = bitcast { i32, [ 0 x i32 ] }* %array_ptr935 to { i32, [ 0 x i32 ] }* 
  %index_ptr937 = getelementptr { i32, [ 0 x i32 ] }* %array936, i32 0, i32 1, i32 0
  store i32 0, i32* %index_ptr937
  %index_ptr938 = getelementptr { i32, [ 0 x i32 ] }* %array936, i32 0, i32 1, i32 1
  store i32 1, i32* %index_ptr938
  %index_ptr939 = getelementptr { i32, [ 0 x i32 ] }* %array936, i32 0, i32 1, i32 2
  store i32 2, i32* %index_ptr939
  %index_ptr940 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array930, i32 0, i32 1, i32 1
  store { i32, [ 0 x i32 ] }* %array936, { i32, [ 0 x i32 ] }** %index_ptr940
  %index_ptr941 = getelementptr { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* ] }* %array928, i32 0, i32 1, i32 0
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array930, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %index_ptr941
  %array_ptr942 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 1 )
  %array943 = bitcast { i32, [ 0 x i32 ] }* %array_ptr942 to { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* 
  %array_ptr944 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 1 )
  %array945 = bitcast { i32, [ 0 x i32 ] }* %array_ptr944 to { i32, [ 0 x i32 ] }* 
  %index_ptr946 = getelementptr { i32, [ 0 x i32 ] }* %array945, i32 0, i32 1, i32 0
  store i32 0, i32* %index_ptr946
  %index_ptr947 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array943, i32 0, i32 1, i32 0
  store { i32, [ 0 x i32 ] }* %array945, { i32, [ 0 x i32 ] }** %index_ptr947
  %index_ptr948 = getelementptr { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* ] }* %array928, i32 0, i32 1, i32 1
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array943, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %index_ptr948
  %array_ptr949 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 1 )
  %array950 = bitcast { i32, [ 0 x i32 ] }* %array_ptr949 to { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* 
  %array_ptr951 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 1 )
  %array952 = bitcast { i32, [ 0 x i32 ] }* %array_ptr951 to { i32, [ 0 x i32 ] }* 
  %index_ptr953 = getelementptr { i32, [ 0 x i32 ] }* %array952, i32 0, i32 1, i32 0
  store i32 0, i32* %index_ptr953
  %index_ptr954 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array950, i32 0, i32 1, i32 0
  store { i32, [ 0 x i32 ] }* %array952, { i32, [ 0 x i32 ] }** %index_ptr954
  %index_ptr955 = getelementptr { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* ] }* %array928, i32 0, i32 1, i32 2
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array950, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %index_ptr955
  store { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* ] }* %array928, { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* ] }** @a956
  ret void
}


