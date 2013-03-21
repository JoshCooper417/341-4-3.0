declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@strs1000 = global { i32, [ 0 x i8* ] }* zeroinitializer, align 4		; initialized by strs1000.init
@_oat_string997.str. = private unnamed_addr constant [ 4 x i8 ] c "def\00", align 4
@_oat_string997 = global i8* getelementptr inbounds ([ 4 x i8 ]* @_oat_string997.str., i32 0, i32 0), align 4
@_oat_string994.str. = private unnamed_addr constant [ 4 x i8 ] c "abc\00", align 4
@_oat_string994 = global i8* getelementptr inbounds ([ 4 x i8 ]* @_oat_string994.str., i32 0, i32 0), align 4
define void @oat_init (){

__fresh209:
  call void @strs1000.init(  )
  ret void
}


define i32 @program (i32 %argc1005, { i32, [ 0 x i8* ] }* %argv1003){

__fresh208:
  %argc_slot1006 = alloca i32
  store i32 %argc1005, i32* %argc_slot1006
  %argv_slot1004 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv1003, { i32, [ 0 x i8* ] }** %argv_slot1004
  %len_ptr1007 = getelementptr { i32, [ 0 x i8* ] }** @strs1000, i32 0, i32 0
  %len1008 = load i32* %len_ptr1007
  call void @oat_array_bounds_check( i32 %len1008, i32 0 )
  %array_dereferenced1009 = load { i32, [ 0 x i8* ] }** @strs1000
  %elt_ptr1010 = getelementptr { i32, [ 0 x i8* ] }* %array_dereferenced1009, i32 0, i32 1, i32 0
  %_lhs1011 = load i8** %elt_ptr1010
  call void @print_string( i8* %_lhs1011 )
  ret i32 0
}


define void @strs1000.init (){

__fresh207:
  %array_ptr992 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array993 = bitcast { i32, [ 0 x i32 ] }* %array_ptr992 to { i32, [ 0 x i8* ] }* 
  %strval995 = load i8** @_oat_string994
  %index_ptr996 = getelementptr { i32, [ 0 x i8* ] }* %array993, i32 0, i32 1, i32 0
  store i8* %strval995, i8** %index_ptr996
  %strval998 = load i8** @_oat_string997
  %index_ptr999 = getelementptr { i32, [ 0 x i8* ] }* %array993, i32 0, i32 1, i32 1
  store i8* %strval998, i8** %index_ptr999
  store { i32, [ 0 x i8* ] }* %array993, { i32, [ 0 x i8* ] }** @strs1000
  ret void
}


