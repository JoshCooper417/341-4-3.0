declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@strs884 = global { i32, [ 0 x { i32, [ 0 x i8* ] }* ] }* zeroinitializer, align 4		; initialized by strs884.init
@_oat_string880.str. = private unnamed_addr constant [ 4 x i8 ] c "123\00", align 4
@_oat_string880 = global i8* getelementptr inbounds ([ 4 x i8 ]* @_oat_string880.str., i32 0, i32 0), align 4
@_oat_string877.str. = private unnamed_addr constant [ 4 x i8 ] c "789\00", align 4
@_oat_string877 = global i8* getelementptr inbounds ([ 4 x i8 ]* @_oat_string877.str., i32 0, i32 0), align 4
@_oat_string871.str. = private unnamed_addr constant [ 4 x i8 ] c "def\00", align 4
@_oat_string871 = global i8* getelementptr inbounds ([ 4 x i8 ]* @_oat_string871.str., i32 0, i32 0), align 4
@_oat_string868.str. = private unnamed_addr constant [ 4 x i8 ] c "abc\00", align 4
@_oat_string868 = global i8* getelementptr inbounds ([ 4 x i8 ]* @_oat_string868.str., i32 0, i32 0), align 4
define void @oat_init (){

__fresh311:
  call void @strs884.init(  )
  ret void
}


define i32 @program (i32 %argc891, { i32, [ 0 x i8* ] }* %argv889){

__fresh310:
  %argc_slot892 = alloca i32
  store i32 %argc891, i32* %argc_slot892
  %argv_slot890 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv889, { i32, [ 0 x i8* ] }** %argv_slot890
  %array_dereferenced893 = load { i32, [ 0 x { i32, [ 0 x i8* ] }* ] }** @strs884
  %len_ptr894 = getelementptr { i32, [ 0 x { i32, [ 0 x i8* ] }* ] }* %array_dereferenced893, i32 0, i32 0
  %len895 = load i32* %len_ptr894
  call void @oat_array_bounds_check( i32 %len895, i32 1 )
  %elt_ptr896 = getelementptr { i32, [ 0 x { i32, [ 0 x i8* ] }* ] }* %array_dereferenced893, i32 0, i32 1, i32 1
  %array_dereferenced897 = load { i32, [ 0 x i8* ] }** %elt_ptr896
  %len_ptr898 = getelementptr { i32, [ 0 x i8* ] }* %array_dereferenced897, i32 0, i32 0
  %len899 = load i32* %len_ptr898
  call void @oat_array_bounds_check( i32 %len899, i32 1 )
  %elt_ptr900 = getelementptr { i32, [ 0 x i8* ] }* %array_dereferenced897, i32 0, i32 1, i32 1
  %_lhs901 = load i8** %elt_ptr900
  call void @print_string( i8* %_lhs901 )
  ret i32 0
}


define void @strs884.init (){

__fresh309:
  %array_ptr864 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array865 = bitcast { i32, [ 0 x i32 ] }* %array_ptr864 to { i32, [ 0 x { i32, [ 0 x i8* ] }* ] }* 
  %array_ptr866 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array867 = bitcast { i32, [ 0 x i32 ] }* %array_ptr866 to { i32, [ 0 x i8* ] }* 
  %strval869 = load i8** @_oat_string868
  %index_ptr870 = getelementptr { i32, [ 0 x i8* ] }* %array867, i32 0, i32 1, i32 0
  store i8* %strval869, i8** %index_ptr870
  %strval872 = load i8** @_oat_string871
  %index_ptr873 = getelementptr { i32, [ 0 x i8* ] }* %array867, i32 0, i32 1, i32 1
  store i8* %strval872, i8** %index_ptr873
  %index_ptr874 = getelementptr { i32, [ 0 x { i32, [ 0 x i8* ] }* ] }* %array865, i32 0, i32 1, i32 0
  store { i32, [ 0 x i8* ] }* %array867, { i32, [ 0 x i8* ] }** %index_ptr874
  %array_ptr875 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array876 = bitcast { i32, [ 0 x i32 ] }* %array_ptr875 to { i32, [ 0 x i8* ] }* 
  %strval878 = load i8** @_oat_string877
  %index_ptr879 = getelementptr { i32, [ 0 x i8* ] }* %array876, i32 0, i32 1, i32 0
  store i8* %strval878, i8** %index_ptr879
  %strval881 = load i8** @_oat_string880
  %index_ptr882 = getelementptr { i32, [ 0 x i8* ] }* %array876, i32 0, i32 1, i32 1
  store i8* %strval881, i8** %index_ptr882
  %index_ptr883 = getelementptr { i32, [ 0 x { i32, [ 0 x i8* ] }* ] }* %array865, i32 0, i32 1, i32 1
  store { i32, [ 0 x i8* ] }* %array876, { i32, [ 0 x i8* ] }** %index_ptr883
  store { i32, [ 0 x { i32, [ 0 x i8* ] }* ] }* %array865, { i32, [ 0 x { i32, [ 0 x i8* ] }* ] }** @strs884
  ret void
}


