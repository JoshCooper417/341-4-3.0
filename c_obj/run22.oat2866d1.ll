declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@strs848 = global { i32, [ 0 x i8* ] }* zeroinitializer, align 4		; initialized by strs848.init
@_oat_string845.str. = private unnamed_addr constant [ 4 x i8 ] c "def\00", align 4
@_oat_string845 = global i8* getelementptr inbounds ([ 4 x i8 ]* @_oat_string845.str., i32 0, i32 0), align 4
@_oat_string842.str. = private unnamed_addr constant [ 4 x i8 ] c "abc\00", align 4
@_oat_string842 = global i8* getelementptr inbounds ([ 4 x i8 ]* @_oat_string842.str., i32 0, i32 0), align 4
define void @oat_init (){

__fresh151:
  call void @strs848.init(  )
  ret void
}


define i32 @program (i32 %argc853, { i32, [ 0 x i8* ] }* %argv851){

__fresh150:
  %argc_slot854 = alloca i32
  store i32 %argc853, i32* %argc_slot854
  %argv_slot852 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv851, { i32, [ 0 x i8* ] }** %argv_slot852
  %_lhs855 = load { i32, [ 0 x i8* ] }** @strs848
  %len_ptr856 = getelementptr { i32, [ 0 x i8* ] }* %_lhs855, i32 0, i32 0
  %len857 = load i32* %len_ptr856
  call void @oat_array_bounds_check( i32 %len857, i32 0 )
  %array_dereferenced858 = load { i32, [ 0 x i8* ] }** @strs848
  %elt_ptr859 = getelementptr { i32, [ 0 x i8* ] }** @strs848, i32 0, i32 1, i32 0
  %_lhs860 = load i32* %elt_ptr859
  call void @print_string( i32 %_lhs860 )
  ret i32 0
}


define void @strs848.init (){

__fresh149:
  %array_ptr840 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array841 = bitcast { i32, [ 0 x i32 ] }* %array_ptr840 to { i32, [ 0 x i8* ] }* 
  %strval843 = load i8** @_oat_string842
  %index_ptr844 = getelementptr { i32, [ 0 x i8* ] }* %array841, i32 0, i32 1, i32 0
  store i8* %strval843, i8** %index_ptr844
  %strval846 = load i8** @_oat_string845
  %index_ptr847 = getelementptr { i32, [ 0 x i8* ] }* %array841, i32 0, i32 1, i32 1
  store i8* %strval846, i8** %index_ptr847
  store { i32, [ 0 x i8* ] }* %array841, { i32, [ 0 x i8* ] }** @strs848
  ret void
}


