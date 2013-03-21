declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@a1500 = global { i32, [ 0 x i32 ] }* zeroinitializer, align 4		; initialized by a1500.init
define void @oat_init (){

__fresh196:
  call void @a1500.init(  )
  ret void
}


define i32 @program (i32 %argc1503, { i32, [ 0 x i8* ] }* %argv1501){

__fresh195:
  %argc_slot1504 = alloca i32
  store i32 %argc1503, i32* %argc_slot1504
  %argv_slot1502 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv1501, { i32, [ 0 x i8* ] }** %argv_slot1502
  %_lhs1505 = load { i32, [ 0 x i32 ] }** @a1500
  %ret1506 = call i8* @string_of_array ( { i32, [ 0 x i32 ] }* %_lhs1505 )
  call void @print_string( i8* %ret1506 )
  ret i32 0
}


define void @a1500.init (){

__fresh194:
  %array_ptr1488 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 10 )
  %array1489 = bitcast { i32, [ 0 x i32 ] }* %array_ptr1488 to { i32, [ 0 x i32 ] }* 
  %index_ptr1490 = getelementptr { i32, [ 0 x i32 ] }* %array1489, i32 0, i32 1, i32 0
  store i32 126, i32* %index_ptr1490
  %index_ptr1491 = getelementptr { i32, [ 0 x i32 ] }* %array1489, i32 0, i32 1, i32 1
  store i32 125, i32* %index_ptr1491
  %index_ptr1492 = getelementptr { i32, [ 0 x i32 ] }* %array1489, i32 0, i32 1, i32 2
  store i32 124, i32* %index_ptr1492
  %index_ptr1493 = getelementptr { i32, [ 0 x i32 ] }* %array1489, i32 0, i32 1, i32 3
  store i32 123, i32* %index_ptr1493
  %index_ptr1494 = getelementptr { i32, [ 0 x i32 ] }* %array1489, i32 0, i32 1, i32 4
  store i32 122, i32* %index_ptr1494
  %index_ptr1495 = getelementptr { i32, [ 0 x i32 ] }* %array1489, i32 0, i32 1, i32 5
  store i32 121, i32* %index_ptr1495
  %index_ptr1496 = getelementptr { i32, [ 0 x i32 ] }* %array1489, i32 0, i32 1, i32 6
  store i32 120, i32* %index_ptr1496
  %index_ptr1497 = getelementptr { i32, [ 0 x i32 ] }* %array1489, i32 0, i32 1, i32 7
  store i32 119, i32* %index_ptr1497
  %index_ptr1498 = getelementptr { i32, [ 0 x i32 ] }* %array1489, i32 0, i32 1, i32 8
  store i32 118, i32* %index_ptr1498
  %index_ptr1499 = getelementptr { i32, [ 0 x i32 ] }* %array1489, i32 0, i32 1, i32 9
  store i32 117, i32* %index_ptr1499
  store { i32, [ 0 x i32 ] }* %array1489, { i32, [ 0 x i32 ] }** @a1500
  ret void
}


