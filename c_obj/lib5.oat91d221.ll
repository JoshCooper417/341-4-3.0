declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@_oat_string1761.str. = private unnamed_addr constant [ 6 x i8 ] c "hello\00", align 4
@_oat_string1761 = global i8* getelementptr inbounds ([ 6 x i8 ]* @_oat_string1761.str., i32 0, i32 0), align 4
define void @oat_init (){

__fresh659:
  ret void
}


define i32 @program (i32 %argc1759, { i32, [ 0 x i8* ] }* %argv1757){

__fresh656:
  %argc_slot1760 = alloca i32
  store i32 %argc1759, i32* %argc_slot1760
  %argv_slot1758 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv1757, { i32, [ 0 x i8* ] }** %argv_slot1758
  %strval1762 = load i8** @_oat_string1761
  %str1763 = alloca i8*
  store i8* %strval1762, i8** %str1763
  %_lhs1764 = load i8** %str1763
  %ret1765 = call { i32, [ 0 x i32 ] }* @array_of_string ( i8* %_lhs1764 )
  %arr1766 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %ret1765, { i32, [ 0 x i32 ] }** %arr1766
  %s1767 = alloca i32
  store i32 0, i32* %s1767
  %i1768 = alloca i32
  store i32 0, i32* %i1768
  br label %__cond655

__cond655:
  %_lhs1769 = load i32* %i1768
  %bop1770 = icmp slt i32 %_lhs1769, 5
  br i1 %bop1770, label %__body654, label %__post653

__fresh657:
  br label %__body654

__body654:
  %_lhs1771 = load i32* %s1767
  %_lhs1772 = load i32* %i1768
  %array_dereferenced1773 = load { i32, [ 0 x i32 ] }** %arr1766
  %len_ptr1774 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced1773, i32 0, i32 0
  %len1775 = load i32* %len_ptr1774
  call void @oat_array_bounds_check( i32 %len1775, i32 %_lhs1772 )
  %elt_ptr1776 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced1773, i32 0, i32 1, i32 %_lhs1772
  %_lhs1777 = load i32* %elt_ptr1776
  %bop1778 = add i32 %_lhs1771, %_lhs1777
  store i32 %bop1778, i32* %s1767
  %_lhs1779 = load i32* %i1768
  %bop1780 = add i32 %_lhs1779, 1
  store i32 %bop1780, i32* %i1768
  br label %__cond655

__fresh658:
  br label %__post653

__post653:
  %_lhs1781 = load i32* %s1767
  ret i32 %_lhs1781
}


