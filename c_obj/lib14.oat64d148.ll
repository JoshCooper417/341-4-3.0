declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@a1625 = global { i32, [ 0 x i32 ] }* zeroinitializer, align 4		; initialized by a1625.init
define void @oat_init (){

__fresh227:
  call void @a1625.init(  )
  ret void
}


define i32 @program (i32 %argc1628, { i32, [ 0 x i8* ] }* %argv1626){

__fresh226:
  %argc_slot1629 = alloca i32
  store i32 %argc1628, i32* %argc_slot1629
  %argv_slot1627 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv1626, { i32, [ 0 x i8* ] }** %argv_slot1627
  %_lhs1630 = load { i32, [ 0 x i32 ] }** @a1625
  %ret1631 = call i8* @string_of_array ( { i32, [ 0 x i32 ] }* %_lhs1630 )
  call void @print_string( i8* %ret1631 )
  ret i32 0
}


define void @a1625.init (){

__fresh225:
  %array_ptr1613 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 10 )
  %array1614 = bitcast { i32, [ 0 x i32 ] }* %array_ptr1613 to { i32, [ 0 x i32 ] }* 
  %index_ptr1615 = getelementptr { i32, [ 0 x i32 ] }* %array1614, i32 0, i32 1, i32 0
  store i32 126, i32* %index_ptr1615
  %index_ptr1616 = getelementptr { i32, [ 0 x i32 ] }* %array1614, i32 0, i32 1, i32 1
  store i32 125, i32* %index_ptr1616
  %index_ptr1617 = getelementptr { i32, [ 0 x i32 ] }* %array1614, i32 0, i32 1, i32 2
  store i32 124, i32* %index_ptr1617
  %index_ptr1618 = getelementptr { i32, [ 0 x i32 ] }* %array1614, i32 0, i32 1, i32 3
  store i32 123, i32* %index_ptr1618
  %index_ptr1619 = getelementptr { i32, [ 0 x i32 ] }* %array1614, i32 0, i32 1, i32 4
  store i32 122, i32* %index_ptr1619
  %index_ptr1620 = getelementptr { i32, [ 0 x i32 ] }* %array1614, i32 0, i32 1, i32 5
  store i32 121, i32* %index_ptr1620
  %index_ptr1621 = getelementptr { i32, [ 0 x i32 ] }* %array1614, i32 0, i32 1, i32 6
  store i32 120, i32* %index_ptr1621
  %index_ptr1622 = getelementptr { i32, [ 0 x i32 ] }* %array1614, i32 0, i32 1, i32 7
  store i32 119, i32* %index_ptr1622
  %index_ptr1623 = getelementptr { i32, [ 0 x i32 ] }* %array1614, i32 0, i32 1, i32 8
  store i32 118, i32* %index_ptr1623
  %index_ptr1624 = getelementptr { i32, [ 0 x i32 ] }* %array1614, i32 0, i32 1, i32 9
  store i32 117, i32* %index_ptr1624
  store { i32, [ 0 x i32 ] }* %array1614, { i32, [ 0 x i32 ] }** @a1625
  ret void
}


