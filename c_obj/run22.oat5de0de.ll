declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@strs842 = global { i32, [ 0 x i8* ] }* zeroinitializer, align 4		; initialized by strs842.init
@_oat_string839.str. = private unnamed_addr constant [ 4 x i8 ] c "def\00", align 4
@_oat_string839 = global i8* getelementptr inbounds ([ 4 x i8 ]* @_oat_string839.str., i32 0, i32 0), align 4
@_oat_string836.str. = private unnamed_addr constant [ 4 x i8 ] c "abc\00", align 4
@_oat_string836 = global i8* getelementptr inbounds ([ 4 x i8 ]* @_oat_string836.str., i32 0, i32 0), align 4
define void @oat_init (){

__fresh224:
  call void @strs842.init(  )
  ret void
}


define i32 @program (i32 %argc847, { i32, [ 0 x i8* ] }* %argv845){

__fresh223:
  %argc_slot848 = alloca i32
  store i32 %argc847, i32* %argc_slot848
  %argv_slot846 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv845, { i32, [ 0 x i8* ] }** %argv_slot846
  %len_ptr849 = getelementptr { i32, [ 0 x i8* ] }** @strs842, i32 0, i32 0
  %len850 = load i32* %len_ptr849
  call void @oat_array_bounds_check( i32 %len850, i32 0 )
  %array_dereferenced851 = load { i32, [ 0 x i8* ] }** @strs842
  %elt_ptr852 = getelementptr { i32, [ 0 x i8* ] }* %array_dereferenced851, i32 0, i32 1, i32 0
  %_lhs853 = load i8** %elt_ptr852
  call void @print_string( i8* %_lhs853 )
  ret i32 0
}


define void @strs842.init (){

__fresh222:
  %array_ptr834 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array835 = bitcast { i32, [ 0 x i32 ] }* %array_ptr834 to { i32, [ 0 x i8* ] }* 
  %strval837 = load i8** @_oat_string836
  %index_ptr838 = getelementptr { i32, [ 0 x i8* ] }* %array835, i32 0, i32 1, i32 0
  store i8* %strval837, i8** %index_ptr838
  %strval840 = load i8** @_oat_string839
  %index_ptr841 = getelementptr { i32, [ 0 x i8* ] }* %array835, i32 0, i32 1, i32 1
  store i8* %strval840, i8** %index_ptr841
  store { i32, [ 0 x i8* ] }* %array835, { i32, [ 0 x i8* ] }** @strs842
  ret void
}


