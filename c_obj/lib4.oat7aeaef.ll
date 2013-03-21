declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@str1725 = global i8* zeroinitializer, align 4		; initialized by str1725.init
@_oat_string1723.str. = private unnamed_addr constant [ 6 x i8 ] c "hello\00", align 4
@_oat_string1723 = global i8* getelementptr inbounds ([ 6 x i8 ]* @_oat_string1723.str., i32 0, i32 0), align 4
define void @oat_init (){

__fresh325:
  call void @str1725.init(  )
  ret void
}


define i32 @program (i32 %argc1729, { i32, [ 0 x i8* ] }* %argv1727){

__fresh322:
  %argc_slot1730 = alloca i32
  store i32 %argc1729, i32* %argc_slot1730
  %argv_slot1728 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv1727, { i32, [ 0 x i8* ] }** %argv_slot1728
  %_lhs1731 = load i8** @str1725
  %ret1732 = call { i32, [ 0 x i32 ] }* @array_of_string ( i8* %_lhs1731 )
  %arr1733 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %ret1732, { i32, [ 0 x i32 ] }** %arr1733
  %s1734 = alloca i32
  store i32 0, i32* %s1734
  %i1735 = alloca i32
  store i32 0, i32* %i1735
  br label %__cond321

__cond321:
  %_lhs1736 = load i32* %i1735
  %bop1737 = icmp slt i32 %_lhs1736, 5
  br i1 %bop1737, label %__body320, label %__post319

__fresh323:
  br label %__body320

__body320:
  %_lhs1738 = load i32* %s1734
  %_lhs1739 = load i32* %i1735
  %len_ptr1740 = getelementptr { i32, [ 0 x i32 ] }** %arr1733, i32 0, i32 0
  %len1741 = load i32* %len_ptr1740
  call void @oat_array_bounds_check( i32 %len1741, i32 %_lhs1739 )
  %array_dereferenced1742 = load { i32, [ 0 x i32 ] }** %arr1733
  %elt_ptr1743 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced1742, i32 0, i32 1, i32 %_lhs1739
  %_lhs1744 = load i32* %elt_ptr1743
  %bop1745 = add i32 %_lhs1738, %_lhs1744
  store i32 %bop1745, i32* %s1734
  %_lhs1746 = load i32* %i1735
  %bop1747 = add i32 %_lhs1746, 1
  store i32 %bop1747, i32* %i1735
  br label %__cond321

__fresh324:
  br label %__post319

__post319:
  %_lhs1748 = load i32* %s1734
  ret i32 %_lhs1748
}


define void @str1725.init (){

__fresh318:
  %strval1724 = load i8** @_oat_string1723
  store i8* %strval1724, i8** @str1725
  ret void
}


