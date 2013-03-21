declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@strs800 = global { i32, [ 0 x i8* ] }* zeroinitializer, align 4		; initialized by strs800.init
@_oat_string797.str. = private unnamed_addr constant [ 4 x i8 ] c "def\00", align 4
@_oat_string797 = global i8* getelementptr inbounds ([ 4 x i8 ]* @_oat_string797.str., i32 0, i32 0), align 4
@_oat_string794.str. = private unnamed_addr constant [ 4 x i8 ] c "abc\00", align 4
@_oat_string794 = global i8* getelementptr inbounds ([ 4 x i8 ]* @_oat_string794.str., i32 0, i32 0), align 4
define void @oat_init (){

__fresh128:
  call void @strs800.init(  )
  ret void
}


define i32 @program (i32 %argc805, { i32, [ 0 x i8* ] }* %argv803){

__fresh127:
  %argc_slot806 = alloca i32
  store i32 %argc805, i32* %argc_slot806
  %argv_slot804 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv803, { i32, [ 0 x i8* ] }** %argv_slot804
  %_lhs807 = load { i32, [ 0 x i8* ] }** @strs800
  %len_ptr808 = getelementptr { i32, [ 0 x i8* ] }* %_lhs807, i32 0, i32 0
  %len809 = load i32* %len_ptr808
  call void @oat_array_bounds_check( i32 %len809, i32 0 )
  %array_dereferenced810 = load { i32, [ 0 x i8* ] }** @strs800
  %elt_ptr811 = getelementptr { i32, [ 0 x i8* ] }** @strs800, i32 0, i32 1, i32 0
  %_lhs812 = load [ 0 x i8* ]* %elt_ptr811
  call void @print_string( [ 0 x i8* ] %_lhs812 )
  ret i32 0
}


define void @strs800.init (){

__fresh126:
  %array_ptr792 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array793 = bitcast { i32, [ 0 x i32 ] }* %array_ptr792 to { i32, [ 0 x i8* ] }* 
  %strval795 = load i8** @_oat_string794
  %index_ptr796 = getelementptr { i32, [ 0 x i8* ] }* %array793, i32 0, i32 1, i32 0
  store i8* %strval795, i8** %index_ptr796
  %strval798 = load i8** @_oat_string797
  %index_ptr799 = getelementptr { i32, [ 0 x i8* ] }* %array793, i32 0, i32 1, i32 1
  store i8* %strval798, i8** %index_ptr799
  store { i32, [ 0 x i8* ] }* %array793, { i32, [ 0 x i8* ] }** @strs800
  ret void
}


