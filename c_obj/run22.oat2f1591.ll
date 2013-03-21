declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@strs656 = global { i32, [ 0 x i8* ] }* zeroinitializer, align 4		; initialized by strs656.init
@_oat_string653.str. = private unnamed_addr constant [ 4 x i8 ] c "def\00", align 4
@_oat_string653 = global i8* getelementptr inbounds ([ 4 x i8 ]* @_oat_string653.str., i32 0, i32 0), align 4
@_oat_string650.str. = private unnamed_addr constant [ 4 x i8 ] c "abc\00", align 4
@_oat_string650 = global i8* getelementptr inbounds ([ 4 x i8 ]* @_oat_string650.str., i32 0, i32 0), align 4
define void @oat_init (){

__fresh151:
  call void @strs656.init(  )
  ret void
}


define i32 @program (i32 %argc661, { i32, [ 0 x i8* ] }* %argv659){

__fresh150:
  %argc_slot662 = alloca i32
  store i32 %argc661, i32* %argc_slot662
  %argv_slot660 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv659, { i32, [ 0 x i8* ] }** %argv_slot660
  %_lhs663 = load { i32, [ 0 x i8* ] }** @strs656
  call void @print_string( { i32, [ 0 x i8* ] }* %_lhs663 )
  ret i32 0
}


define void @strs656.init (){

__fresh149:
  %array_ptr648 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array649 = bitcast { i32, [ 0 x i32 ] }* %array_ptr648 to { i32, [ 0 x i8* ] }* 
  %strval651 = load i8** @_oat_string650
  %index_ptr652 = getelementptr { i32, [ 0 x i8* ] }* %array649, i32 0, i32 1, i32 0
  store i8* %strval651, i8** %index_ptr652
  %strval654 = load i8** @_oat_string653
  %index_ptr655 = getelementptr { i32, [ 0 x i8* ] }* %array649, i32 0, i32 1, i32 1
  store i8* %strval654, i8** %index_ptr655
  store { i32, [ 0 x i8* ] }* %array649, { i32, [ 0 x i8* ] }** @strs656
  ret void
}


