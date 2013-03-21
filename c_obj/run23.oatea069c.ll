declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@strs929 = global { i32, [ 0 x { i32, [ 0 x i8* ] }* ] }* zeroinitializer, align 4		; initialized by strs929.init
@_oat_string925.str. = private unnamed_addr constant [ 4 x i8 ] c "123\00", align 4
@_oat_string925 = global i8* getelementptr inbounds ([ 4 x i8 ]* @_oat_string925.str., i32 0, i32 0), align 4
@_oat_string922.str. = private unnamed_addr constant [ 4 x i8 ] c "789\00", align 4
@_oat_string922 = global i8* getelementptr inbounds ([ 4 x i8 ]* @_oat_string922.str., i32 0, i32 0), align 4
@_oat_string916.str. = private unnamed_addr constant [ 4 x i8 ] c "def\00", align 4
@_oat_string916 = global i8* getelementptr inbounds ([ 4 x i8 ]* @_oat_string916.str., i32 0, i32 0), align 4
@_oat_string913.str. = private unnamed_addr constant [ 4 x i8 ] c "abc\00", align 4
@_oat_string913 = global i8* getelementptr inbounds ([ 4 x i8 ]* @_oat_string913.str., i32 0, i32 0), align 4
define void @oat_init (){

__fresh213:
  call void @strs929.init(  )
  ret void
}


define i32 @program (i32 %argc936, { i32, [ 0 x i8* ] }* %argv934){

__fresh212:
  %argc_slot937 = alloca i32
  store i32 %argc936, i32* %argc_slot937
  %argv_slot935 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv934, { i32, [ 0 x i8* ] }** %argv_slot935
  %len_ptr938 = getelementptr { i32, [ 0 x { i32, [ 0 x i8* ] }* ] }** @strs929, i32 0, i32 0
  %len939 = load i32* %len_ptr938
  call void @oat_array_bounds_check( i32 %len939, i32 1 )
  %array_dereferenced940 = load { i32, [ 0 x { i32, [ 0 x i8* ] }* ] }** @strs929
  %elt_ptr941 = getelementptr { i32, [ 0 x { i32, [ 0 x i8* ] }* ] }* %array_dereferenced940, i32 0, i32 1, i32 1
  %len_ptr942 = getelementptr { i32, [ 0 x i8* ] }** %elt_ptr941, i32 0, i32 0
  %len943 = load i32* %len_ptr942
  call void @oat_array_bounds_check( i32 %len943, i32 1 )
  %array_dereferenced944 = load { i32, [ 0 x i8* ] }** %elt_ptr941
  %elt_ptr945 = getelementptr { i32, [ 0 x i8* ] }* %array_dereferenced944, i32 0, i32 1, i32 1
  %_lhs946 = load i8** %elt_ptr945
  call void @print_string( i8* %_lhs946 )
  ret i32 0
}


define void @strs929.init (){

__fresh211:
  %array_ptr909 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array910 = bitcast { i32, [ 0 x i32 ] }* %array_ptr909 to { i32, [ 0 x { i32, [ 0 x i8* ] }* ] }* 
  %array_ptr911 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array912 = bitcast { i32, [ 0 x i32 ] }* %array_ptr911 to { i32, [ 0 x i8* ] }* 
  %strval914 = load i8** @_oat_string913
  %index_ptr915 = getelementptr { i32, [ 0 x i8* ] }* %array912, i32 0, i32 1, i32 0
  store i8* %strval914, i8** %index_ptr915
  %strval917 = load i8** @_oat_string916
  %index_ptr918 = getelementptr { i32, [ 0 x i8* ] }* %array912, i32 0, i32 1, i32 1
  store i8* %strval917, i8** %index_ptr918
  %index_ptr919 = getelementptr { i32, [ 0 x { i32, [ 0 x i8* ] }* ] }* %array910, i32 0, i32 1, i32 0
  store { i32, [ 0 x i8* ] }* %array912, { i32, [ 0 x i8* ] }** %index_ptr919
  %array_ptr920 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array921 = bitcast { i32, [ 0 x i32 ] }* %array_ptr920 to { i32, [ 0 x i8* ] }* 
  %strval923 = load i8** @_oat_string922
  %index_ptr924 = getelementptr { i32, [ 0 x i8* ] }* %array921, i32 0, i32 1, i32 0
  store i8* %strval923, i8** %index_ptr924
  %strval926 = load i8** @_oat_string925
  %index_ptr927 = getelementptr { i32, [ 0 x i8* ] }* %array921, i32 0, i32 1, i32 1
  store i8* %strval926, i8** %index_ptr927
  %index_ptr928 = getelementptr { i32, [ 0 x { i32, [ 0 x i8* ] }* ] }* %array910, i32 0, i32 1, i32 1
  store { i32, [ 0 x i8* ] }* %array921, { i32, [ 0 x i8* ] }** %index_ptr928
  store { i32, [ 0 x { i32, [ 0 x i8* ] }* ] }* %array910, { i32, [ 0 x { i32, [ 0 x i8* ] }* ] }** @strs929
  ret void
}


