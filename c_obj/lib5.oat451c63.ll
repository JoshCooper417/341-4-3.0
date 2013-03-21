declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@_oat_string1740.str. = private unnamed_addr constant [ 6 x i8 ] c "hello\00", align 4
@_oat_string1740 = global i8* getelementptr inbounds ([ 6 x i8 ]* @_oat_string1740.str., i32 0, i32 0), align 4
define void @oat_init (){

__fresh659:
  ret void
}


define i32 @program (i32 %argc1738, { i32, [ 0 x i8* ] }* %argv1736){

__fresh656:
  %argc_slot1739 = alloca i32
  store i32 %argc1738, i32* %argc_slot1739
  %argv_slot1737 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv1736, { i32, [ 0 x i8* ] }** %argv_slot1737
  %strval1741 = load i8** @_oat_string1740
  %str1742 = alloca i8*
  store i8* %strval1741, i8** %str1742
  %_lhs1743 = load i8** %str1742
  %ret1744 = call { i32, [ 0 x i32 ] }* @array_of_string ( i8* %_lhs1743 )
  %arr1745 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %ret1744, { i32, [ 0 x i32 ] }** %arr1745
  %s1746 = alloca i32
  store i32 0, i32* %s1746
  %i1747 = alloca i32
  store i32 0, i32* %i1747
  br label %__cond655

__cond655:
  %_lhs1748 = load i32* %i1747
  %bop1749 = icmp slt i32 %_lhs1748, 5
  br i1 %bop1749, label %__body654, label %__post653

__fresh657:
  br label %__body654

__body654:
  %_lhs1750 = load i32* %s1746
  %_lhs1751 = load i32* %i1747
  %array_dereferenced1752 = load { i32, [ 0 x i32 ] }** %arr1745
  %len_ptr1753 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced1752, i32 0, i32 0
  %len1754 = load i32* %len_ptr1753
  call void @oat_array_bounds_check( i32 %len1754, i32 %_lhs1751 )
  %elt_ptr1755 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced1752, i32 0, i32 1, i32 %_lhs1751
  %_lhs1756 = load i32* %elt_ptr1755
  %bop1757 = add i32 %_lhs1750, %_lhs1756
  store i32 %bop1757, i32* %s1746
  %_lhs1758 = load i32* %i1747
  %bop1759 = add i32 %_lhs1758, 1
  store i32 %bop1759, i32* %i1747
  br label %__cond655

__fresh658:
  br label %__post653

__post653:
  %_lhs1760 = load i32* %s1746
  ret i32 %_lhs1760
}


