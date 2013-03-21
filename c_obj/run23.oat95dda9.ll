declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@strs1083 = global { i32, [ 0 x { i32, [ 0 x i8* ] }* ] }* zeroinitializer, align 4		; initialized by strs1083.init
@_oat_string1079.str. = private unnamed_addr constant [ 4 x i8 ] c "123\00", align 4
@_oat_string1079 = global i8* getelementptr inbounds ([ 4 x i8 ]* @_oat_string1079.str., i32 0, i32 0), align 4
@_oat_string1076.str. = private unnamed_addr constant [ 4 x i8 ] c "789\00", align 4
@_oat_string1076 = global i8* getelementptr inbounds ([ 4 x i8 ]* @_oat_string1076.str., i32 0, i32 0), align 4
@_oat_string1070.str. = private unnamed_addr constant [ 4 x i8 ] c "def\00", align 4
@_oat_string1070 = global i8* getelementptr inbounds ([ 4 x i8 ]* @_oat_string1070.str., i32 0, i32 0), align 4
@_oat_string1067.str. = private unnamed_addr constant [ 4 x i8 ] c "abc\00", align 4
@_oat_string1067 = global i8* getelementptr inbounds ([ 4 x i8 ]* @_oat_string1067.str., i32 0, i32 0), align 4
define void @oat_init (){

__fresh274:
  call void @strs1083.init(  )
  ret void
}


define i32 @program (i32 %argc1090, { i32, [ 0 x i8* ] }* %argv1088){

__fresh273:
  %argc_slot1091 = alloca i32
  store i32 %argc1090, i32* %argc_slot1091
  %argv_slot1089 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv1088, { i32, [ 0 x i8* ] }** %argv_slot1089
  %len_ptr1092 = getelementptr { i32, [ 0 x { i32, [ 0 x i8* ] }* ] }** @strs1083, i32 0, i32 0
  %len1093 = load i32* %len_ptr1092
  call void @oat_array_bounds_check( i32 %len1093, i32 1 )
  %array_dereferenced1094 = load { i32, [ 0 x { i32, [ 0 x i8* ] }* ] }** @strs1083
  %elt_ptr1095 = getelementptr { i32, [ 0 x { i32, [ 0 x i8* ] }* ] }* %array_dereferenced1094, i32 0, i32 1, i32 1
  %len_ptr1096 = getelementptr { i32, [ 0 x i8* ] }** %elt_ptr1095, i32 0, i32 0
  %len1097 = load i32* %len_ptr1096
  call void @oat_array_bounds_check( i32 %len1097, i32 1 )
  %array_dereferenced1098 = load { i32, [ 0 x i8* ] }** %elt_ptr1095
  %elt_ptr1099 = getelementptr { i32, [ 0 x i8* ] }* %array_dereferenced1098, i32 0, i32 1, i32 1
  %_lhs1100 = load i8** %elt_ptr1099
  call void @print_string( i8* %_lhs1100 )
  ret i32 0
}


define void @strs1083.init (){

__fresh272:
  %array_ptr1063 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array1064 = bitcast { i32, [ 0 x i32 ] }* %array_ptr1063 to { i32, [ 0 x { i32, [ 0 x i8* ] }* ] }* 
  %array_ptr1065 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array1066 = bitcast { i32, [ 0 x i32 ] }* %array_ptr1065 to { i32, [ 0 x i8* ] }* 
  %strval1068 = load i8** @_oat_string1067
  %index_ptr1069 = getelementptr { i32, [ 0 x i8* ] }* %array1066, i32 0, i32 1, i32 0
  store i8* %strval1068, i8** %index_ptr1069
  %strval1071 = load i8** @_oat_string1070
  %index_ptr1072 = getelementptr { i32, [ 0 x i8* ] }* %array1066, i32 0, i32 1, i32 1
  store i8* %strval1071, i8** %index_ptr1072
  %index_ptr1073 = getelementptr { i32, [ 0 x { i32, [ 0 x i8* ] }* ] }* %array1064, i32 0, i32 1, i32 0
  store { i32, [ 0 x i8* ] }* %array1066, { i32, [ 0 x i8* ] }** %index_ptr1073
  %array_ptr1074 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array1075 = bitcast { i32, [ 0 x i32 ] }* %array_ptr1074 to { i32, [ 0 x i8* ] }* 
  %strval1077 = load i8** @_oat_string1076
  %index_ptr1078 = getelementptr { i32, [ 0 x i8* ] }* %array1075, i32 0, i32 1, i32 0
  store i8* %strval1077, i8** %index_ptr1078
  %strval1080 = load i8** @_oat_string1079
  %index_ptr1081 = getelementptr { i32, [ 0 x i8* ] }* %array1075, i32 0, i32 1, i32 1
  store i8* %strval1080, i8** %index_ptr1081
  %index_ptr1082 = getelementptr { i32, [ 0 x { i32, [ 0 x i8* ] }* ] }* %array1064, i32 0, i32 1, i32 1
  store { i32, [ 0 x i8* ] }* %array1075, { i32, [ 0 x i8* ] }** %index_ptr1082
  store { i32, [ 0 x { i32, [ 0 x i8* ] }* ] }* %array1064, { i32, [ 0 x { i32, [ 0 x i8* ] }* ] }** @strs1083
  ret void
}


