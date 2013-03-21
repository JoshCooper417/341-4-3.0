declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@a936 = global { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* ] }* zeroinitializer, align 4		; initialized by a936.init
define void @oat_init (){

__fresh328:
  call void @a936.init(  )
  ret void
}


define i32 @program (i32 %argc939, { i32, [ 0 x i8* ] }* %argv937){

__fresh327:
  %argc_slot940 = alloca i32
  store i32 %argc939, i32* %argc_slot940
  %argv_slot938 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv937, { i32, [ 0 x i8* ] }** %argv_slot938
  %array_dereferenced949 = load { i32, [ 0 x i32 ] }** %elt_ptr948
  %array_dereferenced945 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %elt_ptr944
  %array_dereferenced941 = load { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* ] }** @a936
  %len_ptr942 = getelementptr { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* ] }* %array_dereferenced941, i32 0, i32 0
  %len943 = load i32* %len_ptr942
  call void @oat_array_bounds_check( i32 %len943, i32 0 )
  %elt_ptr944 = getelementptr { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* ] }* %array_dereferenced941, i32 0, i32 1, i32 0
  %len_ptr946 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array_dereferenced945, i32 0, i32 0
  %len947 = load i32* %len_ptr946
  call void @oat_array_bounds_check( i32 %len947, i32 1 )
  %elt_ptr948 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array_dereferenced945, i32 0, i32 1, i32 1
  %len_ptr950 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced949, i32 0, i32 0
  %len951 = load i32* %len_ptr950
  call void @oat_array_bounds_check( i32 %len951, i32 2 )
  %elt_ptr952 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced949, i32 0, i32 1, i32 2
  %_lhs953 = load i32* %elt_ptr952
  ret i32 %_lhs953
}


define void @a936.init (){

__fresh326:
  %array_ptr907 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 3 )
  %array908 = bitcast { i32, [ 0 x i32 ] }* %array_ptr907 to { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* ] }* 
  %array_ptr909 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array910 = bitcast { i32, [ 0 x i32 ] }* %array_ptr909 to { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* 
  %array_ptr911 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 1 )
  %array912 = bitcast { i32, [ 0 x i32 ] }* %array_ptr911 to { i32, [ 0 x i32 ] }* 
  %index_ptr913 = getelementptr { i32, [ 0 x i32 ] }* %array912, i32 0, i32 1, i32 0
  store i32 0, i32* %index_ptr913
  %index_ptr914 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array910, i32 0, i32 1, i32 0
  store { i32, [ 0 x i32 ] }* %array912, { i32, [ 0 x i32 ] }** %index_ptr914
  %array_ptr915 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 3 )
  %array916 = bitcast { i32, [ 0 x i32 ] }* %array_ptr915 to { i32, [ 0 x i32 ] }* 
  %index_ptr917 = getelementptr { i32, [ 0 x i32 ] }* %array916, i32 0, i32 1, i32 0
  store i32 0, i32* %index_ptr917
  %index_ptr918 = getelementptr { i32, [ 0 x i32 ] }* %array916, i32 0, i32 1, i32 1
  store i32 1, i32* %index_ptr918
  %index_ptr919 = getelementptr { i32, [ 0 x i32 ] }* %array916, i32 0, i32 1, i32 2
  store i32 2, i32* %index_ptr919
  %index_ptr920 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array910, i32 0, i32 1, i32 1
  store { i32, [ 0 x i32 ] }* %array916, { i32, [ 0 x i32 ] }** %index_ptr920
  %index_ptr921 = getelementptr { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* ] }* %array908, i32 0, i32 1, i32 0
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array910, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %index_ptr921
  %array_ptr922 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 1 )
  %array923 = bitcast { i32, [ 0 x i32 ] }* %array_ptr922 to { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* 
  %array_ptr924 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 1 )
  %array925 = bitcast { i32, [ 0 x i32 ] }* %array_ptr924 to { i32, [ 0 x i32 ] }* 
  %index_ptr926 = getelementptr { i32, [ 0 x i32 ] }* %array925, i32 0, i32 1, i32 0
  store i32 0, i32* %index_ptr926
  %index_ptr927 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array923, i32 0, i32 1, i32 0
  store { i32, [ 0 x i32 ] }* %array925, { i32, [ 0 x i32 ] }** %index_ptr927
  %index_ptr928 = getelementptr { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* ] }* %array908, i32 0, i32 1, i32 1
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array923, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %index_ptr928
  %array_ptr929 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 1 )
  %array930 = bitcast { i32, [ 0 x i32 ] }* %array_ptr929 to { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* 
  %array_ptr931 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 1 )
  %array932 = bitcast { i32, [ 0 x i32 ] }* %array_ptr931 to { i32, [ 0 x i32 ] }* 
  %index_ptr933 = getelementptr { i32, [ 0 x i32 ] }* %array932, i32 0, i32 1, i32 0
  store i32 0, i32* %index_ptr933
  %index_ptr934 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array930, i32 0, i32 1, i32 0
  store { i32, [ 0 x i32 ] }* %array932, { i32, [ 0 x i32 ] }** %index_ptr934
  %index_ptr935 = getelementptr { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* ] }* %array908, i32 0, i32 1, i32 2
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array930, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %index_ptr935
  store { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* ] }* %array908, { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* ] }** @a936
  ret void
}


