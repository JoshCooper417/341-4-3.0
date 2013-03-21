declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@strs908 = global { i32, [ 0 x i8* ] }* zeroinitializer, align 4		; initialized by strs908.init
@_oat_string905.str. = private unnamed_addr constant [ 4 x i8 ] c "def\00", align 4
@_oat_string905 = global i8* getelementptr inbounds ([ 4 x i8 ]* @_oat_string905.str., i32 0, i32 0), align 4
@_oat_string902.str. = private unnamed_addr constant [ 4 x i8 ] c "abc\00", align 4
@_oat_string902 = global i8* getelementptr inbounds ([ 4 x i8 ]* @_oat_string902.str., i32 0, i32 0), align 4
define void @oat_init (){

__fresh188:
  call void @strs908.init(  )
  ret void
}


define i32 @program (i32 %argc913, { i32, [ 0 x i8* ] }* %argv911){

__fresh187:
  %argc_slot914 = alloca i32
  store i32 %argc913, i32* %argc_slot914
  %argv_slot912 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv911, { i32, [ 0 x i8* ] }** %argv_slot912
  %len_ptr915 = getelementptr { i32, [ 0 x i8* ] }** @strs908, i32 0, i32 0
  %len916 = load i32* %len_ptr915
  call void @oat_array_bounds_check( i32 %len916, i32 0 )
  %array_dereferenced917 = load { i32, [ 0 x i8* ] }** @strs908
  %elt_ptr918 = getelementptr { i32, [ 0 x i8* ] }* %array_dereferenced917, i32 0, i32 1, i32 0
  %_lhs919 = load i8** %elt_ptr918
  call void @print_string( i8* %_lhs919 )
  ret i32 0
}


define void @strs908.init (){

__fresh186:
  %array_ptr900 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array901 = bitcast { i32, [ 0 x i32 ] }* %array_ptr900 to { i32, [ 0 x i8* ] }* 
  %strval903 = load i8** @_oat_string902
  %index_ptr904 = getelementptr { i32, [ 0 x i8* ] }* %array901, i32 0, i32 1, i32 0
  store i8* %strval903, i8** %index_ptr904
  %strval906 = load i8** @_oat_string905
  %index_ptr907 = getelementptr { i32, [ 0 x i8* ] }* %array901, i32 0, i32 1, i32 1
  store i8* %strval906, i8** %index_ptr907
  store { i32, [ 0 x i8* ] }* %array901, { i32, [ 0 x i8* ] }** @strs908
  ret void
}


