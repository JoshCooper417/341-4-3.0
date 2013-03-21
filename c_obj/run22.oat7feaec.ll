declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@strs780 = global { i32, [ 0 x i8* ] }* zeroinitializer, align 4		; initialized by strs780.init
@_oat_string777.str. = private unnamed_addr constant [ 4 x i8 ] c "def\00", align 4
@_oat_string777 = global i8* getelementptr inbounds ([ 4 x i8 ]* @_oat_string777.str., i32 0, i32 0), align 4
@_oat_string774.str. = private unnamed_addr constant [ 4 x i8 ] c "abc\00", align 4
@_oat_string774 = global i8* getelementptr inbounds ([ 4 x i8 ]* @_oat_string774.str., i32 0, i32 0), align 4
define void @oat_init (){

__fresh151:
  call void @strs780.init(  )
  ret void
}


define i32 @program (i32 %argc785, { i32, [ 0 x i8* ] }* %argv783){

__fresh150:
  %argc_slot786 = alloca i32
  store i32 %argc785, i32* %argc_slot786
  %argv_slot784 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv783, { i32, [ 0 x i8* ] }** %argv_slot784
  %len_ptr787 = getelementptr { i32, [ 0 x i8* ] }** @strs780, i32 0, i32 0
  %len788 = load i32* %len_ptr787
  call void @oat_array_bounds_check( i32 %len788, i32 0 )
  %array_dereferenced789 = load { i32, [ 0 x i8* ] }** @strs780
  %elt_ptr790 = getelementptr { i32, [ 0 x i8* ] }* %array_dereferenced789, i32 0, i32 1, i32 0
  %_lhs791 = load i8** %elt_ptr790
  call void @print_string( i8* %_lhs791 )
  ret i32 0
}


define void @strs780.init (){

__fresh149:
  %array_ptr772 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array773 = bitcast { i32, [ 0 x i32 ] }* %array_ptr772 to { i32, [ 0 x i8* ] }* 
  %strval775 = load i8** @_oat_string774
  %index_ptr776 = getelementptr { i32, [ 0 x i8* ] }* %array773, i32 0, i32 1, i32 0
  store i8* %strval775, i8** %index_ptr776
  %strval778 = load i8** @_oat_string777
  %index_ptr779 = getelementptr { i32, [ 0 x i8* ] }* %array773, i32 0, i32 1, i32 1
  store i8* %strval778, i8** %index_ptr779
  store { i32, [ 0 x i8* ] }* %array773, { i32, [ 0 x i8* ] }** @strs780
  ret void
}


