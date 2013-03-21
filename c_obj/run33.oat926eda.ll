declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
define void @oat_init (){

__fresh43:
  ret void
}


define i32 @program (i32 %argc150, { i32, [ 0 x i8* ] }* %argv148){

__fresh40:
  %argc_slot151 = alloca i32
  store i32 %argc150, i32* %argc_slot151
  %argv_slot149 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv148, { i32, [ 0 x i8* ] }** %argv_slot149
  %array_ptr152 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array153 = bitcast { i32, [ 0 x i32 ] }* %array_ptr152 to { i32, [ 0 x i1 ] }* 
  %index_ptr154 = getelementptr { i32, [ 0 x i1 ] }* %array153, i32 0, i32 1, i32 0
  store i1 1, i1* %index_ptr154
  %index_ptr155 = getelementptr { i32, [ 0 x i1 ] }* %array153, i32 0, i32 1, i32 1
  store i1 0, i1* %index_ptr155
  %b156 = alloca { i32, [ 0 x i1 ] }*
  store { i32, [ 0 x i1 ] }* %array153, { i32, [ 0 x i1 ] }** %b156
  %i157 = alloca i32
  store i32 0, i32* %i157
  %_lhs158 = load { i32, [ 0 x i1 ] }** %b156
  br { i32, [ 0 x i1 ] }* %_lhs158, label %__then39, label %__else38

__fresh41:
  br label %__then39

__then39:
  store i32 1, i32* %i157
  br label %__merge37

__fresh42:
  br label %__else38

__else38:
  br label %__merge37

__merge37:
  %_lhs159 = load i32* %i157
  ret i32 %_lhs159
}


