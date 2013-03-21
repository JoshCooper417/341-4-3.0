declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@a952 = global { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* ] }* zeroinitializer, align 4		; initialized by a952.init
define void @oat_init (){

__fresh335:
  call void @a952.init(  )
  ret void
}


define i32 @program (i32 %argc955, { i32, [ 0 x i8* ] }* %argv953){

__fresh334:
  %argc_slot956 = alloca i32
  store i32 %argc955, i32* %argc_slot956
  %argv_slot954 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv953, { i32, [ 0 x i8* ] }** %argv_slot954
  %array_dereferenced957 = load { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* ] }** @a952
  %len_ptr958 = getelementptr { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* ] }* %array_dereferenced957, i32 0, i32 0
  %len959 = load i32* %len_ptr958
  call void @oat_array_bounds_check( i32 %len959, i32 0 )
  %elt_ptr960 = getelementptr { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* ] }* %array_dereferenced957, i32 0, i32 1, i32 0
  %array_dereferenced961 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %elt_ptr960
  %len_ptr962 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array_dereferenced961, i32 0, i32 0
  %len963 = load i32* %len_ptr962
  call void @oat_array_bounds_check( i32 %len963, i32 1 )
  %elt_ptr964 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array_dereferenced961, i32 0, i32 1, i32 1
  %array_dereferenced965 = load { i32, [ 0 x i32 ] }** %elt_ptr964
  %len_ptr966 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced965, i32 0, i32 0
  %len967 = load i32* %len_ptr966
  call void @oat_array_bounds_check( i32 %len967, i32 2 )
  %elt_ptr968 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced965, i32 0, i32 1, i32 2
  %_lhs969 = load i32* %elt_ptr968
  ret i32 %_lhs969
}


define void @a952.init (){

__fresh333:
  %array_ptr923 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 3 )
  %array924 = bitcast { i32, [ 0 x i32 ] }* %array_ptr923 to { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* ] }* 
  %array_ptr925 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array926 = bitcast { i32, [ 0 x i32 ] }* %array_ptr925 to { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* 
  %array_ptr927 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 1 )
  %array928 = bitcast { i32, [ 0 x i32 ] }* %array_ptr927 to { i32, [ 0 x i32 ] }* 
  %index_ptr929 = getelementptr { i32, [ 0 x i32 ] }* %array928, i32 0, i32 1, i32 0
  store i32 0, i32* %index_ptr929
  %index_ptr930 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array926, i32 0, i32 1, i32 0
  store { i32, [ 0 x i32 ] }* %array928, { i32, [ 0 x i32 ] }** %index_ptr930
  %array_ptr931 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 3 )
  %array932 = bitcast { i32, [ 0 x i32 ] }* %array_ptr931 to { i32, [ 0 x i32 ] }* 
  %index_ptr933 = getelementptr { i32, [ 0 x i32 ] }* %array932, i32 0, i32 1, i32 0
  store i32 0, i32* %index_ptr933
  %index_ptr934 = getelementptr { i32, [ 0 x i32 ] }* %array932, i32 0, i32 1, i32 1
  store i32 1, i32* %index_ptr934
  %index_ptr935 = getelementptr { i32, [ 0 x i32 ] }* %array932, i32 0, i32 1, i32 2
  store i32 2, i32* %index_ptr935
  %index_ptr936 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array926, i32 0, i32 1, i32 1
  store { i32, [ 0 x i32 ] }* %array932, { i32, [ 0 x i32 ] }** %index_ptr936
  %index_ptr937 = getelementptr { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* ] }* %array924, i32 0, i32 1, i32 0
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array926, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %index_ptr937
  %array_ptr938 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 1 )
  %array939 = bitcast { i32, [ 0 x i32 ] }* %array_ptr938 to { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* 
  %array_ptr940 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 1 )
  %array941 = bitcast { i32, [ 0 x i32 ] }* %array_ptr940 to { i32, [ 0 x i32 ] }* 
  %index_ptr942 = getelementptr { i32, [ 0 x i32 ] }* %array941, i32 0, i32 1, i32 0
  store i32 0, i32* %index_ptr942
  %index_ptr943 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array939, i32 0, i32 1, i32 0
  store { i32, [ 0 x i32 ] }* %array941, { i32, [ 0 x i32 ] }** %index_ptr943
  %index_ptr944 = getelementptr { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* ] }* %array924, i32 0, i32 1, i32 1
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array939, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %index_ptr944
  %array_ptr945 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 1 )
  %array946 = bitcast { i32, [ 0 x i32 ] }* %array_ptr945 to { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* 
  %array_ptr947 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 1 )
  %array948 = bitcast { i32, [ 0 x i32 ] }* %array_ptr947 to { i32, [ 0 x i32 ] }* 
  %index_ptr949 = getelementptr { i32, [ 0 x i32 ] }* %array948, i32 0, i32 1, i32 0
  store i32 0, i32* %index_ptr949
  %index_ptr950 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array946, i32 0, i32 1, i32 0
  store { i32, [ 0 x i32 ] }* %array948, { i32, [ 0 x i32 ] }** %index_ptr950
  %index_ptr951 = getelementptr { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* ] }* %array924, i32 0, i32 1, i32 2
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array946, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %index_ptr951
  store { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* ] }* %array924, { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* ] }** @a952
  ret void
}


