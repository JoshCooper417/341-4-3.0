declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@strs1061 = global { i32, [ 0 x { i32, [ 0 x i8* ] }* ] }* zeroinitializer, align 4		; initialized by strs1061.init
@_oat_string1057.str. = private unnamed_addr constant [ 4 x i8 ] c "123\00", align 4
@_oat_string1057 = global i8* getelementptr inbounds ([ 4 x i8 ]* @_oat_string1057.str., i32 0, i32 0), align 4
@_oat_string1054.str. = private unnamed_addr constant [ 4 x i8 ] c "789\00", align 4
@_oat_string1054 = global i8* getelementptr inbounds ([ 4 x i8 ]* @_oat_string1054.str., i32 0, i32 0), align 4
@_oat_string1048.str. = private unnamed_addr constant [ 4 x i8 ] c "def\00", align 4
@_oat_string1048 = global i8* getelementptr inbounds ([ 4 x i8 ]* @_oat_string1048.str., i32 0, i32 0), align 4
@_oat_string1045.str. = private unnamed_addr constant [ 4 x i8 ] c "abc\00", align 4
@_oat_string1045 = global i8* getelementptr inbounds ([ 4 x i8 ]* @_oat_string1045.str., i32 0, i32 0), align 4
define void @oat_init (){

__fresh274:
  call void @strs1061.init(  )
  ret void
}


define i32 @program (i32 %argc1068, { i32, [ 0 x i8* ] }* %argv1066){

__fresh273:
  %argc_slot1069 = alloca i32
  store i32 %argc1068, i32* %argc_slot1069
  %argv_slot1067 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv1066, { i32, [ 0 x i8* ] }** %argv_slot1067
  %len_ptr1070 = getelementptr { i32, [ 0 x { i32, [ 0 x i8* ] }* ] }** @strs1061, i32 0, i32 0
  %len1071 = load i32* %len_ptr1070
  call void @oat_array_bounds_check( i32 %len1071, i32 1 )
  %array_dereferenced1072 = load { i32, [ 0 x { i32, [ 0 x i8* ] }* ] }** @strs1061
  %elt_ptr1073 = getelementptr { i32, [ 0 x { i32, [ 0 x i8* ] }* ] }* %array_dereferenced1072, i32 0, i32 1, i32 1
  %len_ptr1074 = getelementptr { i32, [ 0 x i8* ] }** %elt_ptr1073, i32 0, i32 0
  %len1075 = load i32* %len_ptr1074
  call void @oat_array_bounds_check( i32 %len1075, i32 1 )
  %array_dereferenced1076 = load { i32, [ 0 x i8* ] }** %elt_ptr1073
  %elt_ptr1077 = getelementptr { i32, [ 0 x i8* ] }* %array_dereferenced1076, i32 0, i32 1, i32 1
  %_lhs1078 = load i8** %elt_ptr1077
  call void @print_string( i8* %_lhs1078 )
  ret i32 0
}


define void @strs1061.init (){

__fresh272:
  %array_ptr1041 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array1042 = bitcast { i32, [ 0 x i32 ] }* %array_ptr1041 to { i32, [ 0 x { i32, [ 0 x i8* ] }* ] }* 
  %array_ptr1043 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array1044 = bitcast { i32, [ 0 x i32 ] }* %array_ptr1043 to { i32, [ 0 x i8* ] }* 
  %strval1046 = load i8** @_oat_string1045
  %index_ptr1047 = getelementptr { i32, [ 0 x i8* ] }* %array1044, i32 0, i32 1, i32 0
  store i8* %strval1046, i8** %index_ptr1047
  %strval1049 = load i8** @_oat_string1048
  %index_ptr1050 = getelementptr { i32, [ 0 x i8* ] }* %array1044, i32 0, i32 1, i32 1
  store i8* %strval1049, i8** %index_ptr1050
  %index_ptr1051 = getelementptr { i32, [ 0 x { i32, [ 0 x i8* ] }* ] }* %array1042, i32 0, i32 1, i32 0
  store { i32, [ 0 x i8* ] }* %array1044, { i32, [ 0 x i8* ] }** %index_ptr1051
  %array_ptr1052 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array1053 = bitcast { i32, [ 0 x i32 ] }* %array_ptr1052 to { i32, [ 0 x i8* ] }* 
  %strval1055 = load i8** @_oat_string1054
  %index_ptr1056 = getelementptr { i32, [ 0 x i8* ] }* %array1053, i32 0, i32 1, i32 0
  store i8* %strval1055, i8** %index_ptr1056
  %strval1058 = load i8** @_oat_string1057
  %index_ptr1059 = getelementptr { i32, [ 0 x i8* ] }* %array1053, i32 0, i32 1, i32 1
  store i8* %strval1058, i8** %index_ptr1059
  %index_ptr1060 = getelementptr { i32, [ 0 x { i32, [ 0 x i8* ] }* ] }* %array1042, i32 0, i32 1, i32 1
  store { i32, [ 0 x i8* ] }* %array1053, { i32, [ 0 x i8* ] }** %index_ptr1060
  store { i32, [ 0 x { i32, [ 0 x i8* ] }* ] }* %array1042, { i32, [ 0 x { i32, [ 0 x i8* ] }* ] }** @strs1061
  ret void
}


