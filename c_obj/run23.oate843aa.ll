declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@strs812 = global { i32, [ 0 x { i32, [ 0 x i8* ] }* ] }* zeroinitializer, align 4		; initialized by strs812.init
@_oat_string808.str. = private unnamed_addr constant [ 4 x i8 ] c "123\00", align 4
@_oat_string808 = global i8* getelementptr inbounds ([ 4 x i8 ]* @_oat_string808.str., i32 0, i32 0), align 4
@_oat_string805.str. = private unnamed_addr constant [ 4 x i8 ] c "789\00", align 4
@_oat_string805 = global i8* getelementptr inbounds ([ 4 x i8 ]* @_oat_string805.str., i32 0, i32 0), align 4
@_oat_string799.str. = private unnamed_addr constant [ 4 x i8 ] c "def\00", align 4
@_oat_string799 = global i8* getelementptr inbounds ([ 4 x i8 ]* @_oat_string799.str., i32 0, i32 0), align 4
@_oat_string796.str. = private unnamed_addr constant [ 4 x i8 ] c "abc\00", align 4
@_oat_string796 = global i8* getelementptr inbounds ([ 4 x i8 ]* @_oat_string796.str., i32 0, i32 0), align 4
define void @oat_init (){

__fresh154:
  call void @strs812.init(  )
  ret void
}


define i32 @program (i32 %argc819, { i32, [ 0 x i8* ] }* %argv817){

__fresh153:
  %argc_slot820 = alloca i32
  store i32 %argc819, i32* %argc_slot820
  %argv_slot818 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv817, { i32, [ 0 x i8* ] }** %argv_slot818
  %len_ptr821 = getelementptr { i32, [ 0 x { i32, [ 0 x i8* ] }* ] }** @strs812, i32 0, i32 0
  %len822 = load i32* %len_ptr821
  call void @oat_array_bounds_check( i32 %len822, i32 1 )
  %array_dereferenced823 = load { i32, [ 0 x { i32, [ 0 x i8* ] }* ] }** @strs812
  %elt_ptr824 = getelementptr i32 %array_dereferenced823, i32 0, i32 1, i32 1
  %len_ptr825 = getelementptr i32* %elt_ptr824, i32 0, i32 0
  %len826 = load i32* %len_ptr825
  call void @oat_array_bounds_check( i32 %len826, i32 1 )
  %array_dereferenced827 = load i32* %elt_ptr824
  %elt_ptr828 = getelementptr i32 %array_dereferenced827, i32 0, i32 1, i32 1
  %_lhs829 = load i32* %elt_ptr828
  call void @print_string( i32 %_lhs829 )
  ret i32 0
}


define void @strs812.init (){

__fresh152:
  %array_ptr792 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array793 = bitcast { i32, [ 0 x i32 ] }* %array_ptr792 to { i32, [ 0 x { i32, [ 0 x i8* ] }* ] }* 
  %array_ptr794 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array795 = bitcast { i32, [ 0 x i32 ] }* %array_ptr794 to { i32, [ 0 x i8* ] }* 
  %strval797 = load i8** @_oat_string796
  %index_ptr798 = getelementptr { i32, [ 0 x i8* ] }* %array795, i32 0, i32 1, i32 0
  store i8* %strval797, i8** %index_ptr798
  %strval800 = load i8** @_oat_string799
  %index_ptr801 = getelementptr { i32, [ 0 x i8* ] }* %array795, i32 0, i32 1, i32 1
  store i8* %strval800, i8** %index_ptr801
  %index_ptr802 = getelementptr { i32, [ 0 x { i32, [ 0 x i8* ] }* ] }* %array793, i32 0, i32 1, i32 0
  store { i32, [ 0 x i8* ] }* %array795, { i32, [ 0 x i8* ] }** %index_ptr802
  %array_ptr803 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array804 = bitcast { i32, [ 0 x i32 ] }* %array_ptr803 to { i32, [ 0 x i8* ] }* 
  %strval806 = load i8** @_oat_string805
  %index_ptr807 = getelementptr { i32, [ 0 x i8* ] }* %array804, i32 0, i32 1, i32 0
  store i8* %strval806, i8** %index_ptr807
  %strval809 = load i8** @_oat_string808
  %index_ptr810 = getelementptr { i32, [ 0 x i8* ] }* %array804, i32 0, i32 1, i32 1
  store i8* %strval809, i8** %index_ptr810
  %index_ptr811 = getelementptr { i32, [ 0 x { i32, [ 0 x i8* ] }* ] }* %array793, i32 0, i32 1, i32 1
  store { i32, [ 0 x i8* ] }* %array804, { i32, [ 0 x i8* ] }** %index_ptr811
  store { i32, [ 0 x { i32, [ 0 x i8* ] }* ] }* %array793, { i32, [ 0 x { i32, [ 0 x i8* ] }* ] }** @strs812
  ret void
}


