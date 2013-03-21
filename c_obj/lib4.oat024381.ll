declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@str1702 = global i8* zeroinitializer, align 4		; initialized by str1702.init
@_oat_string1700.str. = private unnamed_addr constant [ 6 x i8 ] c "hello\00", align 4
@_oat_string1700 = global i8* getelementptr inbounds ([ 6 x i8 ]* @_oat_string1700.str., i32 0, i32 0), align 4
define void @oat_init (){

__fresh485:
  call void @str1702.init(  )
  ret void
}


define i32 @program (i32 %argc1706, { i32, [ 0 x i8* ] }* %argv1704){

__fresh482:
  %argc_slot1707 = alloca i32
  store i32 %argc1706, i32* %argc_slot1707
  %argv_slot1705 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv1704, { i32, [ 0 x i8* ] }** %argv_slot1705
  %_lhs1708 = load i8** @str1702
  %ret1709 = call { i32, [ 0 x i32 ] }* @array_of_string ( i8* %_lhs1708 )
  %arr1710 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %ret1709, { i32, [ 0 x i32 ] }** %arr1710
  %s1711 = alloca i32
  store i32 0, i32* %s1711
  %i1712 = alloca i32
  store i32 0, i32* %i1712
  br label %__cond481

__cond481:
  %_lhs1713 = load i32* %i1712
  %bop1714 = icmp slt i32 %_lhs1713, 5
  br i1 %bop1714, label %__body480, label %__post479

__fresh483:
  br label %__body480

__body480:
  %_lhs1715 = load i32* %s1711
  %_lhs1716 = load i32* %i1712
  %array_dereferenced1717 = load { i32, [ 0 x i32 ] }** %arr1710
  %len_ptr1718 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced1717, i32 0, i32 0
  %len1719 = load i32* %len_ptr1718
  call void @oat_array_bounds_check( i32 %len1719, i32 %_lhs1716 )
  %elt_ptr1720 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced1717, i32 0, i32 1, i32 %_lhs1716
  %_lhs1721 = load i32* %elt_ptr1720
  %bop1722 = add i32 %_lhs1715, %_lhs1721
  store i32 %bop1722, i32* %s1711
  %_lhs1723 = load i32* %i1712
  %bop1724 = add i32 %_lhs1723, 1
  store i32 %bop1724, i32* %i1712
  br label %__cond481

__fresh484:
  br label %__post479

__post479:
  %_lhs1725 = load i32* %s1711
  ret i32 %_lhs1725
}


define void @str1702.init (){

__fresh478:
  %strval1701 = load i8** @_oat_string1700
  store i8* %strval1701, i8** @str1702
  ret void
}


