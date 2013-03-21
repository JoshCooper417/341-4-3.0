declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@strs889 = global { i32, [ 0 x { i32, [ 0 x i8* ] }* ] }* zeroinitializer, align 4		; initialized by strs889.init
@_oat_string885.str. = private unnamed_addr constant [ 4 x i8 ] c "123\00", align 4
@_oat_string885 = global i8* getelementptr inbounds ([ 4 x i8 ]* @_oat_string885.str., i32 0, i32 0), align 4
@_oat_string882.str. = private unnamed_addr constant [ 4 x i8 ] c "789\00", align 4
@_oat_string882 = global i8* getelementptr inbounds ([ 4 x i8 ]* @_oat_string882.str., i32 0, i32 0), align 4
@_oat_string876.str. = private unnamed_addr constant [ 4 x i8 ] c "def\00", align 4
@_oat_string876 = global i8* getelementptr inbounds ([ 4 x i8 ]* @_oat_string876.str., i32 0, i32 0), align 4
@_oat_string873.str. = private unnamed_addr constant [ 4 x i8 ] c "abc\00", align 4
@_oat_string873 = global i8* getelementptr inbounds ([ 4 x i8 ]* @_oat_string873.str., i32 0, i32 0), align 4
define void @oat_init (){

__fresh311:
  call void @strs889.init(  )
  ret void
}


define i32 @program (i32 %argc896, { i32, [ 0 x i8* ] }* %argv894){

__fresh310:
  %argc_slot897 = alloca i32
  store i32 %argc896, i32* %argc_slot897
  %argv_slot895 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv894, { i32, [ 0 x i8* ] }** %argv_slot895
  %array_dereferenced898 = load { i32, [ 0 x { i32, [ 0 x i8* ] }* ] }** @strs889
  %len_ptr899 = getelementptr { i32, [ 0 x { i32, [ 0 x i8* ] }* ] }* %array_dereferenced898, i32 0, i32 0
  %len900 = load i32* %len_ptr899
  call void @oat_array_bounds_check( i32 %len900, i32 1 )
  %elt_ptr901 = getelementptr { i32, [ 0 x { i32, [ 0 x i8* ] }* ] }* %array_dereferenced898, i32 0, i32 1, i32 1
  %array_dereferenced902 = load { i32, [ 0 x i8* ] }** %elt_ptr901
  %len_ptr903 = getelementptr { i32, [ 0 x i8* ] }* %array_dereferenced902, i32 0, i32 0
  %len904 = load i32* %len_ptr903
  call void @oat_array_bounds_check( i32 %len904, i32 1 )
  %elt_ptr905 = getelementptr { i32, [ 0 x i8* ] }* %array_dereferenced902, i32 0, i32 1, i32 1
  %_lhs906 = load i8** %elt_ptr905
  call void @print_string( i8* %_lhs906 )
  ret i32 0
}


define void @strs889.init (){

__fresh309:
  %array_ptr869 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array870 = bitcast { i32, [ 0 x i32 ] }* %array_ptr869 to { i32, [ 0 x { i32, [ 0 x i8* ] }* ] }* 
  %array_ptr871 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array872 = bitcast { i32, [ 0 x i32 ] }* %array_ptr871 to { i32, [ 0 x i8* ] }* 
  %strval874 = load i8** @_oat_string873
  %index_ptr875 = getelementptr { i32, [ 0 x i8* ] }* %array872, i32 0, i32 1, i32 0
  store i8* %strval874, i8** %index_ptr875
  %strval877 = load i8** @_oat_string876
  %index_ptr878 = getelementptr { i32, [ 0 x i8* ] }* %array872, i32 0, i32 1, i32 1
  store i8* %strval877, i8** %index_ptr878
  %index_ptr879 = getelementptr { i32, [ 0 x { i32, [ 0 x i8* ] }* ] }* %array870, i32 0, i32 1, i32 0
  store { i32, [ 0 x i8* ] }* %array872, { i32, [ 0 x i8* ] }** %index_ptr879
  %array_ptr880 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array881 = bitcast { i32, [ 0 x i32 ] }* %array_ptr880 to { i32, [ 0 x i8* ] }* 
  %strval883 = load i8** @_oat_string882
  %index_ptr884 = getelementptr { i32, [ 0 x i8* ] }* %array881, i32 0, i32 1, i32 0
  store i8* %strval883, i8** %index_ptr884
  %strval886 = load i8** @_oat_string885
  %index_ptr887 = getelementptr { i32, [ 0 x i8* ] }* %array881, i32 0, i32 1, i32 1
  store i8* %strval886, i8** %index_ptr887
  %index_ptr888 = getelementptr { i32, [ 0 x { i32, [ 0 x i8* ] }* ] }* %array870, i32 0, i32 1, i32 1
  store { i32, [ 0 x i8* ] }* %array881, { i32, [ 0 x i8* ] }** %index_ptr888
  store { i32, [ 0 x { i32, [ 0 x i8* ] }* ] }* %array870, { i32, [ 0 x { i32, [ 0 x i8* ] }* ] }** @strs889
  ret void
}


