declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
define void @oat_init (){

__fresh758:
  ret void
}


define i32 @program (i32 %argc3534, { i32, [ 0 x i8* ] }* %argv3532){

__fresh753:
  %argc_slot3535 = alloca i32
  store i32 %argc3534, i32* %argc_slot3535
  %argv_slot3533 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv3532, { i32, [ 0 x i8* ] }** %argv_slot3533
  %x3536 = alloca i32
  store i32 10, i32* %x3536
  br label %__check751

__check751:
  %cmp_op3552 = icmp slt i32 1, 3
  br i32 %cmp_op3552, label %__body752, label %__end750

__fresh754:
  br label %__body752

__body752:
