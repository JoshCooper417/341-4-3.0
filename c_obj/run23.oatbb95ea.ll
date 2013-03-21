declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@strs684 = global { i32, [ 0 x { i32, [ 0 x i8* ] }* ] }* zeroinitializer, align 4		; initialized by strs684.init
@_oat_string680.str. = private unnamed_addr constant [ 4 x i8 ] c "123\00", align 4
@_oat_string680 = global i8* getelementptr inbounds ([ 4 x i8 ]* @_oat_string680.str., i32 0, i32 0), align 4
@_oat_string677.str. = private unnamed_addr constant [ 4 x i8 ] c "789\00", align 4
@_oat_string677 = global i8* getelementptr inbounds ([ 4 x i8 ]* @_oat_string677.str., i32 0, i32 0), align 4
@_oat_string671.str. = private unnamed_addr constant [ 4 x i8 ] c "def\00", align 4
@_oat_string671 = global i8* getelementptr inbounds ([ 4 x i8 ]* @_oat_string671.str., i32 0, i32 0), align 4
@_oat_string668.str. = private unnamed_addr constant [ 4 x i8 ] c "abc\00", align 4
@_oat_string668 = global i8* getelementptr inbounds ([ 4 x i8 ]* @_oat_string668.str., i32 0, i32 0), align 4
define void @oat_init (){

__fresh154:
  call void @strs684.init(  )
  ret void
}


define i32 @program (i32 %argc691, { i32, [ 0 x i8* ] }* %argv689){

__fresh153:
  %argc_slot692 = alloca i32
  store i32 %argc691, i32* %argc_slot692
  %argv_slot690 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv689, { i32, [ 0 x i8* ] }** %argv_slot690
  %_lhs693 = load { i32, [ 0 x { i32, [ 0 x i8* ] }* ] }** @strs684
  call void @print_string( { i32, [ 0 x { i32, [ 0 x i8* ] }* ] }* %_lhs693 )
  ret i32 0
}


define void @strs684.init (){

__fresh152:
  %array_ptr664 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array665 = bitcast { i32, [ 0 x i32 ] }* %array_ptr664 to { i32, [ 0 x { i32, [ 0 x i8* ] }* ] }* 
  %array_ptr666 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array667 = bitcast { i32, [ 0 x i32 ] }* %array_ptr666 to { i32, [ 0 x i8* ] }* 
  %strval669 = load i8** @_oat_string668
  %index_ptr670 = getelementptr { i32, [ 0 x i8* ] }* %array667, i32 0, i32 1, i32 0
  store i8* %strval669, i8** %index_ptr670
  %strval672 = load i8** @_oat_string671
  %index_ptr673 = getelementptr { i32, [ 0 x i8* ] }* %array667, i32 0, i32 1, i32 1
  store i8* %strval672, i8** %index_ptr673
  %index_ptr674 = getelementptr { i32, [ 0 x { i32, [ 0 x i8* ] }* ] }* %array665, i32 0, i32 1, i32 0
  store { i32, [ 0 x i8* ] }* %array667, { i32, [ 0 x i8* ] }** %index_ptr674
  %array_ptr675 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array676 = bitcast { i32, [ 0 x i32 ] }* %array_ptr675 to { i32, [ 0 x i8* ] }* 
  %strval678 = load i8** @_oat_string677
  %index_ptr679 = getelementptr { i32, [ 0 x i8* ] }* %array676, i32 0, i32 1, i32 0
  store i8* %strval678, i8** %index_ptr679
  %strval681 = load i8** @_oat_string680
  %index_ptr682 = getelementptr { i32, [ 0 x i8* ] }* %array676, i32 0, i32 1, i32 1
  store i8* %strval681, i8** %index_ptr682
  %index_ptr683 = getelementptr { i32, [ 0 x { i32, [ 0 x i8* ] }* ] }* %array665, i32 0, i32 1, i32 1
  store { i32, [ 0 x i8* ] }* %array676, { i32, [ 0 x i8* ] }** %index_ptr683
  store { i32, [ 0 x { i32, [ 0 x i8* ] }* ] }* %array665, { i32, [ 0 x { i32, [ 0 x i8* ] }* ] }** @strs684
  ret void
}


