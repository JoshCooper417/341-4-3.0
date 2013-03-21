declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@_oat_string1780.str. = private unnamed_addr constant [ 6 x i8 ] c "hello\00", align 4
@_oat_string1780 = global i8* getelementptr inbounds ([ 6 x i8 ]* @_oat_string1780.str., i32 0, i32 0), align 4
define void @oat_init (){

__fresh332:
  ret void
}


define i32 @program (i32 %argc1778, { i32, [ 0 x i8* ] }* %argv1776){

__fresh329:
  %argc_slot1779 = alloca i32
  store i32 %argc1778, i32* %argc_slot1779
  %argv_slot1777 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv1776, { i32, [ 0 x i8* ] }** %argv_slot1777
  %strval1781 = load i8** @_oat_string1780
  %str1782 = alloca i8*
  store i8* %strval1781, i8** %str1782
  %_lhs1783 = load i8** %str1782
  %ret1784 = call { i32, [ 0 x i32 ] }* @array_of_string ( i8* %_lhs1783 )
  %arr1785 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %ret1784, { i32, [ 0 x i32 ] }** %arr1785
  %s1786 = alloca i32
  store i32 0, i32* %s1786
  %i1787 = alloca i32
  store i32 0, i32* %i1787
  br label %__cond328

__cond328:
  %_lhs1788 = load i32* %i1787
  %bop1789 = icmp slt i32 %_lhs1788, 5
  br i1 %bop1789, label %__body327, label %__post326

__fresh330:
  br label %__body327

__body327:
  %_lhs1790 = load i32* %s1786
  %_lhs1791 = load i32* %i1787
  %len_ptr1792 = getelementptr { i32, [ 0 x i32 ] }** %arr1785, i32 0, i32 0
  %len1793 = load i32* %len_ptr1792
  call void @oat_array_bounds_check( i32 %len1793, i32 %_lhs1791 )
  %array_dereferenced1794 = load { i32, [ 0 x i32 ] }** %arr1785
  %elt_ptr1795 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced1794, i32 0, i32 1, i32 %_lhs1791
  %_lhs1796 = load i32* %elt_ptr1795
  %bop1797 = add i32 %_lhs1790, %_lhs1796
  store i32 %bop1797, i32* %s1786
  %_lhs1798 = load i32* %i1787
  %bop1799 = add i32 %_lhs1798, 1
  store i32 %bop1799, i32* %i1787
  br label %__cond328

__fresh331:
  br label %__post326

__post326:
  %_lhs1800 = load i32* %s1786
  ret i32 %_lhs1800
}


