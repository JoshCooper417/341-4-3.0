declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@strs1029 = global { i32, [ 0 x i8* ] }* zeroinitializer, align 4		; initialized by strs1029.init
@_oat_string1026.str. = private unnamed_addr constant [ 4 x i8 ] c "def\00", align 4
@_oat_string1026 = global i8* getelementptr inbounds ([ 4 x i8 ]* @_oat_string1026.str., i32 0, i32 0), align 4
@_oat_string1023.str. = private unnamed_addr constant [ 4 x i8 ] c "abc\00", align 4
@_oat_string1023 = global i8* getelementptr inbounds ([ 4 x i8 ]* @_oat_string1023.str., i32 0, i32 0), align 4
define void @oat_init (){

__fresh271:
  call void @strs1029.init(  )
  ret void
}


define i32 @program (i32 %argc1034, { i32, [ 0 x i8* ] }* %argv1032){

__fresh270:
  %argc_slot1035 = alloca i32
  store i32 %argc1034, i32* %argc_slot1035
  %argv_slot1033 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv1032, { i32, [ 0 x i8* ] }** %argv_slot1033
  %len_ptr1036 = getelementptr { i32, [ 0 x i8* ] }** @strs1029, i32 0, i32 0
  %len1037 = load i32* %len_ptr1036
  call void @oat_array_bounds_check( i32 %len1037, i32 0 )
  %array_dereferenced1038 = load { i32, [ 0 x i8* ] }** @strs1029
  %elt_ptr1039 = getelementptr { i32, [ 0 x i8* ] }* %array_dereferenced1038, i32 0, i32 1, i32 0
  %_lhs1040 = load i8** %elt_ptr1039
  call void @print_string( i8* %_lhs1040 )
  ret i32 0
}


define void @strs1029.init (){

__fresh269:
  %array_ptr1021 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array1022 = bitcast { i32, [ 0 x i32 ] }* %array_ptr1021 to { i32, [ 0 x i8* ] }* 
  %strval1024 = load i8** @_oat_string1023
  %index_ptr1025 = getelementptr { i32, [ 0 x i8* ] }* %array1022, i32 0, i32 1, i32 0
  store i8* %strval1024, i8** %index_ptr1025
  %strval1027 = load i8** @_oat_string1026
  %index_ptr1028 = getelementptr { i32, [ 0 x i8* ] }* %array1022, i32 0, i32 1, i32 1
  store i8* %strval1027, i8** %index_ptr1028
  store { i32, [ 0 x i8* ] }* %array1022, { i32, [ 0 x i8* ] }** @strs1029
  ret void
}


