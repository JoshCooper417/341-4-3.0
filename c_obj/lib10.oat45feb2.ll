declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@_oat_string1458.str. = private unnamed_addr constant [ 7 x i8 ] c "Hello?\00", align 4
@_oat_string1458 = global i8* getelementptr inbounds ([ 7 x i8 ]* @_oat_string1458.str., i32 0, i32 0), align 4
define void @oat_init (){

__fresh181:
  ret void
}


define i32 @program (i32 %argc1456, { i32, [ 0 x i8* ] }* %argv1454){

__fresh180:
  %argc_slot1457 = alloca i32
  store i32 %argc1456, i32* %argc_slot1457
  %argv_slot1455 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv1454, { i32, [ 0 x i8* ] }** %argv_slot1455
  %strval1459 = load i8** @_oat_string1458
  %ret1460 = call i32 @my_length_of_string ( i8* %strval1459 )
  ret i32 %ret1460
}


define i32 @my_length_of_string (i8* %str1448){

__fresh179:
  %str_slot1449 = alloca i8*
  store i8* %str1448, i8** %str_slot1449
  %_lhs1450 = load i8** %str_slot1449
  %ret1451 = call { i32, [ 0 x i32 ] }* @array_of_string ( i8* %_lhs1450 )
  %len_ptr1452 = getelementptr { i32, [ 0 x i32 ] }* %ret1451, i32 0, i32 0
  %len1453 = load i32* %len_ptr1452
  ret i32 %len1453
}


