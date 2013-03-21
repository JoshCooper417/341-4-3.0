declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@strs940 = global { i32, [ 0 x { i32, [ 0 x i8* ] }* ] }* zeroinitializer, align 4		; initialized by strs940.init
@_oat_string936.str. = private unnamed_addr constant [ 4 x i8 ] c "123\00", align 4
@_oat_string936 = global i8* getelementptr inbounds ([ 4 x i8 ]* @_oat_string936.str., i32 0, i32 0), align 4
@_oat_string933.str. = private unnamed_addr constant [ 4 x i8 ] c "789\00", align 4
@_oat_string933 = global i8* getelementptr inbounds ([ 4 x i8 ]* @_oat_string933.str., i32 0, i32 0), align 4
@_oat_string927.str. = private unnamed_addr constant [ 4 x i8 ] c "def\00", align 4
@_oat_string927 = global i8* getelementptr inbounds ([ 4 x i8 ]* @_oat_string927.str., i32 0, i32 0), align 4
@_oat_string924.str. = private unnamed_addr constant [ 4 x i8 ] c "abc\00", align 4
@_oat_string924 = global i8* getelementptr inbounds ([ 4 x i8 ]* @_oat_string924.str., i32 0, i32 0), align 4
define void @oat_init (){

__fresh191:
  call void @strs940.init(  )
  ret void
}


define i32 @program (i32 %argc947, { i32, [ 0 x i8* ] }* %argv945){

__fresh190:
  %argc_slot948 = alloca i32
  store i32 %argc947, i32* %argc_slot948
  %argv_slot946 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv945, { i32, [ 0 x i8* ] }** %argv_slot946
  %len_ptr949 = getelementptr { i32, [ 0 x { i32, [ 0 x i8* ] }* ] }** @strs940, i32 0, i32 0
  %len950 = load i32* %len_ptr949
  call void @oat_array_bounds_check( i32 %len950, i32 1 )
  %array_dereferenced951 = load { i32, [ 0 x { i32, [ 0 x i8* ] }* ] }** @strs940
  %elt_ptr952 = getelementptr { i32, [ 0 x { i32, [ 0 x i8* ] }* ] }* %array_dereferenced951, i32 0, i32 1, i32 1
  %len_ptr953 = getelementptr { i32, [ 0 x i8* ] }** %elt_ptr952, i32 0, i32 0
  %len954 = load i32* %len_ptr953
  call void @oat_array_bounds_check( i32 %len954, i32 1 )
  %array_dereferenced955 = load { i32, [ 0 x i8* ] }** %elt_ptr952
  %elt_ptr956 = getelementptr { i32, [ 0 x i8* ] }* %array_dereferenced955, i32 0, i32 1, i32 1
  %_lhs957 = load i8** %elt_ptr956
  call void @print_string( i8* %_lhs957 )
  ret i32 0
}


define void @strs940.init (){

__fresh189:
  %array_ptr920 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array921 = bitcast { i32, [ 0 x i32 ] }* %array_ptr920 to { i32, [ 0 x { i32, [ 0 x i8* ] }* ] }* 
  %array_ptr922 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array923 = bitcast { i32, [ 0 x i32 ] }* %array_ptr922 to { i32, [ 0 x i8* ] }* 
  %strval925 = load i8** @_oat_string924
  %index_ptr926 = getelementptr { i32, [ 0 x i8* ] }* %array923, i32 0, i32 1, i32 0
  store i8* %strval925, i8** %index_ptr926
  %strval928 = load i8** @_oat_string927
  %index_ptr929 = getelementptr { i32, [ 0 x i8* ] }* %array923, i32 0, i32 1, i32 1
  store i8* %strval928, i8** %index_ptr929
  %index_ptr930 = getelementptr { i32, [ 0 x { i32, [ 0 x i8* ] }* ] }* %array921, i32 0, i32 1, i32 0
  store { i32, [ 0 x i8* ] }* %array923, { i32, [ 0 x i8* ] }** %index_ptr930
  %array_ptr931 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array932 = bitcast { i32, [ 0 x i32 ] }* %array_ptr931 to { i32, [ 0 x i8* ] }* 
  %strval934 = load i8** @_oat_string933
  %index_ptr935 = getelementptr { i32, [ 0 x i8* ] }* %array932, i32 0, i32 1, i32 0
  store i8* %strval934, i8** %index_ptr935
  %strval937 = load i8** @_oat_string936
  %index_ptr938 = getelementptr { i32, [ 0 x i8* ] }* %array932, i32 0, i32 1, i32 1
  store i8* %strval937, i8** %index_ptr938
  %index_ptr939 = getelementptr { i32, [ 0 x { i32, [ 0 x i8* ] }* ] }* %array921, i32 0, i32 1, i32 1
  store { i32, [ 0 x i8* ] }* %array932, { i32, [ 0 x i8* ] }** %index_ptr939
  store { i32, [ 0 x { i32, [ 0 x i8* ] }* ] }* %array921, { i32, [ 0 x { i32, [ 0 x i8* ] }* ] }** @strs940
  ret void
}


