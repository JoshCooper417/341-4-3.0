declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@arr11769 = global { i32, [ 0 x i32 ] }* zeroinitializer, align 4		; initialized by arr11769.init
define void @oat_init (){

__fresh669:
  call void @arr11769.init(  )
  ret void
}


define i32 @program (i32 %argc1772, { i32, [ 0 x i8* ] }* %argv1770){

__fresh666:
  %argc_slot1773 = alloca i32
  store i32 %argc1772, i32* %argc_slot1773
  %argv_slot1771 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv1770, { i32, [ 0 x i8* ] }** %argv_slot1771
  %_lhs1774 = load { i32, [ 0 x i32 ] }** @arr11769
  %ret1775 = call i8* @string_of_array ( { i32, [ 0 x i32 ] }* %_lhs1774 )
  %str1776 = alloca i8*
  store i8* %ret1775, i8** %str1776
  %_lhs1777 = load i8** %str1776
  %ret1778 = call { i32, [ 0 x i32 ] }* @array_of_string ( i8* %_lhs1777 )
  %arr21779 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %ret1778, { i32, [ 0 x i32 ] }** %arr21779
  %s1780 = alloca i32
  store i32 0, i32* %s1780
  %i1781 = alloca i32
  store i32 0, i32* %i1781
  br label %__cond665

__cond665:
  %_lhs1782 = load i32* %i1781
  %bop1783 = icmp slt i32 %_lhs1782, 5
  br i1 %bop1783, label %__body664, label %__post663

__fresh667:
  br label %__body664

__body664:
  %_lhs1784 = load i32* %s1780
  %_lhs1785 = load i32* %i1781
  %array_dereferenced1786 = load { i32, [ 0 x i32 ] }** %arr21779
  %len_ptr1787 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced1786, i32 0, i32 0
  %len1788 = load i32* %len_ptr1787
  call void @oat_array_bounds_check( i32 %len1788, i32 %_lhs1785 )
  %elt_ptr1789 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced1786, i32 0, i32 1, i32 %_lhs1785
  %_lhs1790 = load i32* %elt_ptr1789
  %bop1791 = add i32 %_lhs1784, %_lhs1790
  store i32 %bop1791, i32* %s1780
  %_lhs1792 = load i32* %i1781
  %bop1793 = add i32 %_lhs1792, 1
  store i32 %bop1793, i32* %i1781
  br label %__cond665

__fresh668:
  br label %__post663

__post663:
  %_lhs1794 = load i32* %s1780
  ret i32 %_lhs1794
}


define void @arr11769.init (){

__fresh662:
  %array_ptr1762 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 5 )
  %array1763 = bitcast { i32, [ 0 x i32 ] }* %array_ptr1762 to { i32, [ 0 x i32 ] }* 
  %index_ptr1764 = getelementptr { i32, [ 0 x i32 ] }* %array1763, i32 0, i32 1, i32 0
  store i32 111, i32* %index_ptr1764
  %index_ptr1765 = getelementptr { i32, [ 0 x i32 ] }* %array1763, i32 0, i32 1, i32 1
  store i32 112, i32* %index_ptr1765
  %index_ptr1766 = getelementptr { i32, [ 0 x i32 ] }* %array1763, i32 0, i32 1, i32 2
  store i32 113, i32* %index_ptr1766
  %index_ptr1767 = getelementptr { i32, [ 0 x i32 ] }* %array1763, i32 0, i32 1, i32 3
  store i32 114, i32* %index_ptr1767
  %index_ptr1768 = getelementptr { i32, [ 0 x i32 ] }* %array1763, i32 0, i32 1, i32 4
  store i32 115, i32* %index_ptr1768
  store { i32, [ 0 x i32 ] }* %array1763, { i32, [ 0 x i32 ] }** @arr11769
  ret void
}


