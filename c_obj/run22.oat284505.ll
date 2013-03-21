declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@strs862 = global { i32, [ 0 x i8* ] }* zeroinitializer, align 4		; initialized by strs862.init
@_oat_string859.str. = private unnamed_addr constant [ 4 x i8 ] c "def\00", align 4
@_oat_string859 = global i8* getelementptr inbounds ([ 4 x i8 ]* @_oat_string859.str., i32 0, i32 0), align 4
@_oat_string856.str. = private unnamed_addr constant [ 4 x i8 ] c "abc\00", align 4
@_oat_string856 = global i8* getelementptr inbounds ([ 4 x i8 ]* @_oat_string856.str., i32 0, i32 0), align 4
define void @oat_init (){

__fresh179:
  call void @strs862.init(  )
  ret void
}


define i32 @program (i32 %argc867, { i32, [ 0 x i8* ] }* %argv865){

__fresh178:
  %argc_slot868 = alloca i32
  store i32 %argc867, i32* %argc_slot868
  %argv_slot866 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv865, { i32, [ 0 x i8* ] }** %argv_slot866
  %len_ptr869 = getelementptr { i32, [ 0 x i8* ] }** @strs862, i32 0, i32 0
  %len870 = load i32* %len_ptr869
  call void @oat_array_bounds_check( i32 %len870, i32 0 )
  %array_dereferenced871 = load { i32, [ 0 x i8* ] }** @strs862
  %elt_ptr872 = getelementptr { i32, [ 0 x i8* ] }* %array_dereferenced871, i32 0, i32 1, i32 0
  %_lhs873 = load i8** %elt_ptr872
  call void @print_string( i8* %_lhs873 )
  ret i32 0
}


define void @strs862.init (){

__fresh177:
  %array_ptr854 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array855 = bitcast { i32, [ 0 x i32 ] }* %array_ptr854 to { i32, [ 0 x i8* ] }* 
  %strval857 = load i8** @_oat_string856
  %index_ptr858 = getelementptr { i32, [ 0 x i8* ] }* %array855, i32 0, i32 1, i32 0
  store i8* %strval857, i8** %index_ptr858
  %strval860 = load i8** @_oat_string859
  %index_ptr861 = getelementptr { i32, [ 0 x i8* ] }* %array855, i32 0, i32 1, i32 1
  store i8* %strval860, i8** %index_ptr861
  store { i32, [ 0 x i8* ] }* %array855, { i32, [ 0 x i8* ] }** @strs862
  ret void
}


