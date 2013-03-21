declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@a946 = global { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* ] }* zeroinitializer, align 4		; initialized by a946.init
define void @oat_init (){

__fresh335:
  call void @a946.init(  )
  ret void
}


define i32 @program (i32 %argc949, { i32, [ 0 x i8* ] }* %argv947){

__fresh334:
  %argc_slot950 = alloca i32
  store i32 %argc949, i32* %argc_slot950
  %argv_slot948 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv947, { i32, [ 0 x i8* ] }** %argv_slot948
  %array_dereferenced951 = load { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* ] }** @a946
  %len_ptr952 = getelementptr { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* ] }* %array_dereferenced951, i32 0, i32 0
  %len953 = load i32* %len_ptr952
  call void @oat_array_bounds_check( i32 %len953, i32 0 )
  %elt_ptr954 = getelementptr { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* ] }* %array_dereferenced951, i32 0, i32 1, i32 0
  %array_dereferenced955 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %elt_ptr954
  %len_ptr956 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array_dereferenced955, i32 0, i32 0
  %len957 = load i32* %len_ptr956
  call void @oat_array_bounds_check( i32 %len957, i32 1 )
  %elt_ptr958 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array_dereferenced955, i32 0, i32 1, i32 1
  %array_dereferenced959 = load { i32, [ 0 x i32 ] }** %elt_ptr958
  %len_ptr960 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced959, i32 0, i32 0
  %len961 = load i32* %len_ptr960
  call void @oat_array_bounds_check( i32 %len961, i32 2 )
  %elt_ptr962 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced959, i32 0, i32 1, i32 2
  %_lhs963 = load i32* %elt_ptr962
  ret i32 %_lhs963
}


define void @a946.init (){

__fresh333:
  %array_ptr917 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 3 )
  %array918 = bitcast { i32, [ 0 x i32 ] }* %array_ptr917 to { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* ] }* 
  %array_ptr919 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array920 = bitcast { i32, [ 0 x i32 ] }* %array_ptr919 to { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* 
  %array_ptr921 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 1 )
  %array922 = bitcast { i32, [ 0 x i32 ] }* %array_ptr921 to { i32, [ 0 x i32 ] }* 
  %index_ptr923 = getelementptr { i32, [ 0 x i32 ] }* %array922, i32 0, i32 1, i32 0
  store i32 0, i32* %index_ptr923
  %index_ptr924 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array920, i32 0, i32 1, i32 0
  store { i32, [ 0 x i32 ] }* %array922, { i32, [ 0 x i32 ] }** %index_ptr924
  %array_ptr925 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 3 )
  %array926 = bitcast { i32, [ 0 x i32 ] }* %array_ptr925 to { i32, [ 0 x i32 ] }* 
  %index_ptr927 = getelementptr { i32, [ 0 x i32 ] }* %array926, i32 0, i32 1, i32 0
  store i32 0, i32* %index_ptr927
  %index_ptr928 = getelementptr { i32, [ 0 x i32 ] }* %array926, i32 0, i32 1, i32 1
  store i32 1, i32* %index_ptr928
  %index_ptr929 = getelementptr { i32, [ 0 x i32 ] }* %array926, i32 0, i32 1, i32 2
  store i32 2, i32* %index_ptr929
  %index_ptr930 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array920, i32 0, i32 1, i32 1
  store { i32, [ 0 x i32 ] }* %array926, { i32, [ 0 x i32 ] }** %index_ptr930
  %index_ptr931 = getelementptr { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* ] }* %array918, i32 0, i32 1, i32 0
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array920, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %index_ptr931
  %array_ptr932 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 1 )
  %array933 = bitcast { i32, [ 0 x i32 ] }* %array_ptr932 to { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* 
  %array_ptr934 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 1 )
  %array935 = bitcast { i32, [ 0 x i32 ] }* %array_ptr934 to { i32, [ 0 x i32 ] }* 
  %index_ptr936 = getelementptr { i32, [ 0 x i32 ] }* %array935, i32 0, i32 1, i32 0
  store i32 0, i32* %index_ptr936
  %index_ptr937 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array933, i32 0, i32 1, i32 0
  store { i32, [ 0 x i32 ] }* %array935, { i32, [ 0 x i32 ] }** %index_ptr937
  %index_ptr938 = getelementptr { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* ] }* %array918, i32 0, i32 1, i32 1
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array933, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %index_ptr938
  %array_ptr939 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 1 )
  %array940 = bitcast { i32, [ 0 x i32 ] }* %array_ptr939 to { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* 
  %array_ptr941 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 1 )
  %array942 = bitcast { i32, [ 0 x i32 ] }* %array_ptr941 to { i32, [ 0 x i32 ] }* 
  %index_ptr943 = getelementptr { i32, [ 0 x i32 ] }* %array942, i32 0, i32 1, i32 0
  store i32 0, i32* %index_ptr943
  %index_ptr944 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array940, i32 0, i32 1, i32 0
  store { i32, [ 0 x i32 ] }* %array942, { i32, [ 0 x i32 ] }** %index_ptr944
  %index_ptr945 = getelementptr { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* ] }* %array918, i32 0, i32 1, i32 2
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array940, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %index_ptr945
  store { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* ] }* %array918, { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* ] }** @a946
  ret void
}


