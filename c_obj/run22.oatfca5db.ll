declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@strs857 = global { i32, [ 0 x i8* ] }* zeroinitializer, align 4		; initialized by strs857.init
@_oat_string854.str. = private unnamed_addr constant [ 4 x i8 ] c "def\00", align 4
@_oat_string854 = global i8* getelementptr inbounds ([ 4 x i8 ]* @_oat_string854.str., i32 0, i32 0), align 4
@_oat_string851.str. = private unnamed_addr constant [ 4 x i8 ] c "abc\00", align 4
@_oat_string851 = global i8* getelementptr inbounds ([ 4 x i8 ]* @_oat_string851.str., i32 0, i32 0), align 4
define void @oat_init (){

__fresh304:
  call void @strs857.init(  )
  ret void
}


define i32 @program (i32 %argc862, { i32, [ 0 x i8* ] }* %argv860){

__fresh303:
  %argc_slot863 = alloca i32
  store i32 %argc862, i32* %argc_slot863
  %argv_slot861 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv860, { i32, [ 0 x i8* ] }** %argv_slot861
  %array_dereferenced864 = load { i32, [ 0 x i8* ] }** @strs857
  %len_ptr865 = getelementptr { i32, [ 0 x i8* ] }* %array_dereferenced864, i32 0, i32 0
  %len866 = load i32* %len_ptr865
  call void @oat_array_bounds_check( i32 %len866, i32 0 )
  %elt_ptr867 = getelementptr { i32, [ 0 x i8* ] }* %array_dereferenced864, i32 0, i32 1, i32 0
  %_lhs868 = load i8** %elt_ptr867
  call void @print_string( i8* %_lhs868 )
  ret i32 0
}


define void @strs857.init (){

__fresh302:
  %array_ptr849 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array850 = bitcast { i32, [ 0 x i32 ] }* %array_ptr849 to { i32, [ 0 x i8* ] }* 
  %strval852 = load i8** @_oat_string851
  %index_ptr853 = getelementptr { i32, [ 0 x i8* ] }* %array850, i32 0, i32 1, i32 0
  store i8* %strval852, i8** %index_ptr853
  %strval855 = load i8** @_oat_string854
  %index_ptr856 = getelementptr { i32, [ 0 x i8* ] }* %array850, i32 0, i32 1, i32 1
  store i8* %strval855, i8** %index_ptr856
  store { i32, [ 0 x i8* ] }* %array850, { i32, [ 0 x i8* ] }** @strs857
  ret void
}


