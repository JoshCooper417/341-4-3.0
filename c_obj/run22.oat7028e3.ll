declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@strs1051 = global { i32, [ 0 x i8* ] }* zeroinitializer, align 4		; initialized by strs1051.init
@_oat_string1048.str. = private unnamed_addr constant [ 4 x i8 ] c "def\00", align 4
@_oat_string1048 = global i8* getelementptr inbounds ([ 4 x i8 ]* @_oat_string1048.str., i32 0, i32 0), align 4
@_oat_string1045.str. = private unnamed_addr constant [ 4 x i8 ] c "abc\00", align 4
@_oat_string1045 = global i8* getelementptr inbounds ([ 4 x i8 ]* @_oat_string1045.str., i32 0, i32 0), align 4
define void @oat_init (){

__fresh271:
  call void @strs1051.init(  )
  ret void
}


define i32 @program (i32 %argc1056, { i32, [ 0 x i8* ] }* %argv1054){

__fresh270:
  %argc_slot1057 = alloca i32
  store i32 %argc1056, i32* %argc_slot1057
  %argv_slot1055 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv1054, { i32, [ 0 x i8* ] }** %argv_slot1055
  %len_ptr1058 = getelementptr { i32, [ 0 x i8* ] }** @strs1051, i32 0, i32 0
  %len1059 = load i32* %len_ptr1058
  call void @oat_array_bounds_check( i32 %len1059, i32 0 )
  %array_dereferenced1060 = load { i32, [ 0 x i8* ] }** @strs1051
  %elt_ptr1061 = getelementptr { i32, [ 0 x i8* ] }* %array_dereferenced1060, i32 0, i32 1, i32 0
  %_lhs1062 = load i8** %elt_ptr1061
  call void @print_string( i8* %_lhs1062 )
  ret i32 0
}


define void @strs1051.init (){

__fresh269:
  %array_ptr1043 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array1044 = bitcast { i32, [ 0 x i32 ] }* %array_ptr1043 to { i32, [ 0 x i8* ] }* 
  %strval1046 = load i8** @_oat_string1045
  %index_ptr1047 = getelementptr { i32, [ 0 x i8* ] }* %array1044, i32 0, i32 1, i32 0
  store i8* %strval1046, i8** %index_ptr1047
  %strval1049 = load i8** @_oat_string1048
  %index_ptr1050 = getelementptr { i32, [ 0 x i8* ] }* %array1044, i32 0, i32 1, i32 1
  store i8* %strval1049, i8** %index_ptr1050
  store { i32, [ 0 x i8* ] }* %array1044, { i32, [ 0 x i8* ] }** @strs1051
  ret void
}


