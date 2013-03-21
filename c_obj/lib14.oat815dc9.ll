declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@a1511 = global { i32, [ 0 x i32 ] }* zeroinitializer, align 4		; initialized by a1511.init
define void @oat_init (){

__fresh196:
  call void @a1511.init(  )
  ret void
}


define i32 @program (i32 %argc1514, { i32, [ 0 x i8* ] }* %argv1512){

__fresh195:
  %argc_slot1515 = alloca i32
  store i32 %argc1514, i32* %argc_slot1515
  %argv_slot1513 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv1512, { i32, [ 0 x i8* ] }** %argv_slot1513
  %_lhs1516 = load { i32, [ 0 x i32 ] }** @a1511
  %ret1517 = call i8* @string_of_array ( { i32, [ 0 x i32 ] }* %_lhs1516 )
  call void @print_string( i8* %ret1517 )
  ret i32 0
}


define void @a1511.init (){

__fresh194:
  %array_ptr1499 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 10 )
  %array1500 = bitcast { i32, [ 0 x i32 ] }* %array_ptr1499 to { i32, [ 0 x i32 ] }* 
  %index_ptr1501 = getelementptr { i32, [ 0 x i32 ] }* %array1500, i32 0, i32 1, i32 0
  store i32 126, i32* %index_ptr1501
  %index_ptr1502 = getelementptr { i32, [ 0 x i32 ] }* %array1500, i32 0, i32 1, i32 1
  store i32 125, i32* %index_ptr1502
  %index_ptr1503 = getelementptr { i32, [ 0 x i32 ] }* %array1500, i32 0, i32 1, i32 2
  store i32 124, i32* %index_ptr1503
  %index_ptr1504 = getelementptr { i32, [ 0 x i32 ] }* %array1500, i32 0, i32 1, i32 3
  store i32 123, i32* %index_ptr1504
  %index_ptr1505 = getelementptr { i32, [ 0 x i32 ] }* %array1500, i32 0, i32 1, i32 4
  store i32 122, i32* %index_ptr1505
  %index_ptr1506 = getelementptr { i32, [ 0 x i32 ] }* %array1500, i32 0, i32 1, i32 5
  store i32 121, i32* %index_ptr1506
  %index_ptr1507 = getelementptr { i32, [ 0 x i32 ] }* %array1500, i32 0, i32 1, i32 6
  store i32 120, i32* %index_ptr1507
  %index_ptr1508 = getelementptr { i32, [ 0 x i32 ] }* %array1500, i32 0, i32 1, i32 7
  store i32 119, i32* %index_ptr1508
  %index_ptr1509 = getelementptr { i32, [ 0 x i32 ] }* %array1500, i32 0, i32 1, i32 8
  store i32 118, i32* %index_ptr1509
  %index_ptr1510 = getelementptr { i32, [ 0 x i32 ] }* %array1500, i32 0, i32 1, i32 9
  store i32 117, i32* %index_ptr1510
  store { i32, [ 0 x i32 ] }* %array1500, { i32, [ 0 x i32 ] }** @a1511
  ret void
}


