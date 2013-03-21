declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@strs1032 = global { i32, [ 0 x { i32, [ 0 x i8* ] }* ] }* zeroinitializer, align 4		; initialized by strs1032.init
@_oat_string1028.str. = private unnamed_addr constant [ 4 x i8 ] c "123\00", align 4
@_oat_string1028 = global i8* getelementptr inbounds ([ 4 x i8 ]* @_oat_string1028.str., i32 0, i32 0), align 4
@_oat_string1025.str. = private unnamed_addr constant [ 4 x i8 ] c "789\00", align 4
@_oat_string1025 = global i8* getelementptr inbounds ([ 4 x i8 ]* @_oat_string1025.str., i32 0, i32 0), align 4
@_oat_string1019.str. = private unnamed_addr constant [ 4 x i8 ] c "def\00", align 4
@_oat_string1019 = global i8* getelementptr inbounds ([ 4 x i8 ]* @_oat_string1019.str., i32 0, i32 0), align 4
@_oat_string1016.str. = private unnamed_addr constant [ 4 x i8 ] c "abc\00", align 4
@_oat_string1016 = global i8* getelementptr inbounds ([ 4 x i8 ]* @_oat_string1016.str., i32 0, i32 0), align 4
define void @oat_init (){

__fresh212:
  call void @strs1032.init(  )
  ret void
}


define i32 @program (i32 %argc1039, { i32, [ 0 x i8* ] }* %argv1037){

__fresh211:
  %argc_slot1040 = alloca i32
  store i32 %argc1039, i32* %argc_slot1040
  %argv_slot1038 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv1037, { i32, [ 0 x i8* ] }** %argv_slot1038
  %len_ptr1041 = getelementptr { i32, [ 0 x { i32, [ 0 x i8* ] }* ] }** @strs1032, i32 0, i32 0
  %len1042 = load i32* %len_ptr1041
  call void @oat_array_bounds_check( i32 %len1042, i32 1 )
  %array_dereferenced1043 = load { i32, [ 0 x { i32, [ 0 x i8* ] }* ] }** @strs1032
  %elt_ptr1044 = getelementptr { i32, [ 0 x { i32, [ 0 x i8* ] }* ] }* %array_dereferenced1043, i32 0, i32 1, i32 1
  %len_ptr1045 = getelementptr { i32, [ 0 x i8* ] }** %elt_ptr1044, i32 0, i32 0
  %len1046 = load i32* %len_ptr1045
  call void @oat_array_bounds_check( i32 %len1046, i32 1 )
  %array_dereferenced1047 = load { i32, [ 0 x i8* ] }** %elt_ptr1044
  %elt_ptr1048 = getelementptr { i32, [ 0 x i8* ] }* %array_dereferenced1047, i32 0, i32 1, i32 1
  %_lhs1049 = load i8** %elt_ptr1048
  call void @print_string( i8* %_lhs1049 )
  ret i32 0
}


define void @strs1032.init (){

__fresh210:
  %array_ptr1012 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array1013 = bitcast { i32, [ 0 x i32 ] }* %array_ptr1012 to { i32, [ 0 x { i32, [ 0 x i8* ] }* ] }* 
  %array_ptr1014 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array1015 = bitcast { i32, [ 0 x i32 ] }* %array_ptr1014 to { i32, [ 0 x i8* ] }* 
  %strval1017 = load i8** @_oat_string1016
  %index_ptr1018 = getelementptr { i32, [ 0 x i8* ] }* %array1015, i32 0, i32 1, i32 0
  store i8* %strval1017, i8** %index_ptr1018
  %strval1020 = load i8** @_oat_string1019
  %index_ptr1021 = getelementptr { i32, [ 0 x i8* ] }* %array1015, i32 0, i32 1, i32 1
  store i8* %strval1020, i8** %index_ptr1021
  %index_ptr1022 = getelementptr { i32, [ 0 x { i32, [ 0 x i8* ] }* ] }* %array1013, i32 0, i32 1, i32 0
  store { i32, [ 0 x i8* ] }* %array1015, { i32, [ 0 x i8* ] }** %index_ptr1022
  %array_ptr1023 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array1024 = bitcast { i32, [ 0 x i32 ] }* %array_ptr1023 to { i32, [ 0 x i8* ] }* 
  %strval1026 = load i8** @_oat_string1025
  %index_ptr1027 = getelementptr { i32, [ 0 x i8* ] }* %array1024, i32 0, i32 1, i32 0
  store i8* %strval1026, i8** %index_ptr1027
  %strval1029 = load i8** @_oat_string1028
  %index_ptr1030 = getelementptr { i32, [ 0 x i8* ] }* %array1024, i32 0, i32 1, i32 1
  store i8* %strval1029, i8** %index_ptr1030
  %index_ptr1031 = getelementptr { i32, [ 0 x { i32, [ 0 x i8* ] }* ] }* %array1013, i32 0, i32 1, i32 1
  store { i32, [ 0 x i8* ] }* %array1024, { i32, [ 0 x i8* ] }** %index_ptr1031
  store { i32, [ 0 x { i32, [ 0 x i8* ] }* ] }* %array1013, { i32, [ 0 x { i32, [ 0 x i8* ] }* ] }** @strs1032
  ret void
}


