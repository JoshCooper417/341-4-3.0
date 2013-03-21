declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@_oat_string1447.str. = private unnamed_addr constant [ 7 x i8 ] c "Hello?\00", align 4
@_oat_string1447 = global i8* getelementptr inbounds ([ 7 x i8 ]* @_oat_string1447.str., i32 0, i32 0), align 4
define void @oat_init (){

__fresh181:
  ret void
}


define i32 @program (i32 %argc1445, { i32, [ 0 x i8* ] }* %argv1443){

__fresh180:
  %argc_slot1446 = alloca i32
  store i32 %argc1445, i32* %argc_slot1446
  %argv_slot1444 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv1443, { i32, [ 0 x i8* ] }** %argv_slot1444
  %strval1448 = load i8** @_oat_string1447
  %ret1449 = call i32 @my_length_of_string ( i8* %strval1448 )
  ret i32 %ret1449
}


define i32 @my_length_of_string (i8* %str1437){

__fresh179:
  %str_slot1438 = alloca i8*
  store i8* %str1437, i8** %str_slot1438
  %_lhs1439 = load i8** %str_slot1438
  %ret1440 = call { i32, [ 0 x i32 ] }* @array_of_string ( i8* %_lhs1439 )
  %len_ptr1441 = getelementptr { i32, [ 0 x i32 ] }* %ret1440, i32 0, i32 0
  %len1442 = load i32* %len_ptr1441
  ret i32 %len1442
}


