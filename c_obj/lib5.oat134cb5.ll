declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@_oat_string1779.str. = private unnamed_addr constant [ 6 x i8 ] c "hello\00", align 4
@_oat_string1779 = global i8* getelementptr inbounds ([ 6 x i8 ]* @_oat_string1779.str., i32 0, i32 0), align 4
define void @oat_init (){

__fresh278:
  ret void
}


define i32 @program (i32 %argc1777, { i32, [ 0 x i8* ] }* %argv1775){

__fresh275:
  %argc_slot1778 = alloca i32
  store i32 %argc1777, i32* %argc_slot1778
  %argv_slot1776 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv1775, { i32, [ 0 x i8* ] }** %argv_slot1776
  %strval1780 = load i8** @_oat_string1779
  %str1781 = alloca i8*
  store i8* %strval1780, i8** %str1781
  %_lhs1782 = load i8** %str1781
  %ret1783 = call { i32, [ 0 x i32 ] }* @array_of_string ( i8* %_lhs1782 )
  %arr1784 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %ret1783, { i32, [ 0 x i32 ] }** %arr1784
  %s1785 = alloca i32
  store i32 0, i32* %s1785
  %i1786 = alloca i32
  store i32 0, i32* %i1786
  br label %__cond274

__cond274:
  %_lhs1787 = load i32* %i1786
  %bop1788 = icmp slt i32 %_lhs1787, 5
  br i1 %bop1788, label %__body273, label %__post272

__fresh276:
  br label %__body273

__body273:
  %_lhs1789 = load i32* %s1785
  %_lhs1790 = load i32* %i1786
  %len_ptr1791 = getelementptr { i32, [ 0 x i32 ] }** %arr1784, i32 0, i32 0
  %len1792 = load i32* %len_ptr1791
  call void @oat_array_bounds_check( i32 %len1792, i32 %_lhs1790 )
  %array_dereferenced1793 = load { i32, [ 0 x i32 ] }** %arr1784
  %elt_ptr1794 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced1793, i32 0, i32 1, i32 %_lhs1790
  %_lhs1795 = load i32* %elt_ptr1794
  %bop1796 = add i32 %_lhs1789, %_lhs1795
  store i32 %bop1796, i32* %s1785
  %_lhs1797 = load i32* %i1786
  %bop1798 = add i32 %_lhs1797, 1
  store i32 %bop1798, i32* %i1786
  br label %__cond274

__fresh277:
  br label %__post272

__post272:
  %_lhs1799 = load i32* %s1785
  ret i32 %_lhs1799
}


