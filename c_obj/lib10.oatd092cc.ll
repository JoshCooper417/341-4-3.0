declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@_oat_string1574.str. = private unnamed_addr constant [ 7 x i8 ] c "Hello?\00", align 4
@_oat_string1574 = global i8* getelementptr inbounds ([ 7 x i8 ]* @_oat_string1574.str., i32 0, i32 0), align 4
define void @oat_init (){

__fresh212:
  ret void
}


define i32 @program (i32 %argc1572, { i32, [ 0 x i8* ] }* %argv1570){

__fresh211:
  %argc_slot1573 = alloca i32
  store i32 %argc1572, i32* %argc_slot1573
  %argv_slot1571 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv1570, { i32, [ 0 x i8* ] }** %argv_slot1571
  %strval1575 = load i8** @_oat_string1574
  %ret1576 = call i32 @my_length_of_string ( i8* %strval1575 )
  ret i32 %ret1576
}


define i32 @my_length_of_string (i8* %str1564){

__fresh210:
  %str_slot1565 = alloca i8*
  store i8* %str1564, i8** %str_slot1565
  %_lhs1566 = load i8** %str_slot1565
  %ret1567 = call { i32, [ 0 x i32 ] }* @array_of_string ( i8* %_lhs1566 )
  %len_ptr1568 = getelementptr { i32, [ 0 x i32 ] }* %ret1567, i32 0, i32 0
  %len1569 = load i32* %len_ptr1568
  ret i32 %len1569
}


