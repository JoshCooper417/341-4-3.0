declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@arr11790 = global { i32, [ 0 x i32 ] }* zeroinitializer, align 4		; initialized by arr11790.init
define void @oat_init (){

__fresh669:
  call void @arr11790.init(  )
  ret void
}


define i32 @program (i32 %argc1793, { i32, [ 0 x i8* ] }* %argv1791){

__fresh666:
  %argc_slot1794 = alloca i32
  store i32 %argc1793, i32* %argc_slot1794
  %argv_slot1792 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv1791, { i32, [ 0 x i8* ] }** %argv_slot1792
  %_lhs1795 = load { i32, [ 0 x i32 ] }** @arr11790
  %ret1796 = call i8* @string_of_array ( { i32, [ 0 x i32 ] }* %_lhs1795 )
  %str1797 = alloca i8*
  store i8* %ret1796, i8** %str1797
  %_lhs1798 = load i8** %str1797
  %ret1799 = call { i32, [ 0 x i32 ] }* @array_of_string ( i8* %_lhs1798 )
  %arr21800 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %ret1799, { i32, [ 0 x i32 ] }** %arr21800
  %s1801 = alloca i32
  store i32 0, i32* %s1801
  %i1802 = alloca i32
  store i32 0, i32* %i1802
  br label %__cond665

__cond665:
  %_lhs1803 = load i32* %i1802
  %bop1804 = icmp slt i32 %_lhs1803, 5
  br i1 %bop1804, label %__body664, label %__post663

__fresh667:
  br label %__body664

__body664:
  %_lhs1805 = load i32* %s1801
  %_lhs1806 = load i32* %i1802
  %array_dereferenced1807 = load { i32, [ 0 x i32 ] }** %arr21800
  %len_ptr1808 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced1807, i32 0, i32 0
  %len1809 = load i32* %len_ptr1808
  call void @oat_array_bounds_check( i32 %len1809, i32 %_lhs1806 )
  %elt_ptr1810 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced1807, i32 0, i32 1, i32 %_lhs1806
  %_lhs1811 = load i32* %elt_ptr1810
  %bop1812 = add i32 %_lhs1805, %_lhs1811
  store i32 %bop1812, i32* %s1801
  %_lhs1813 = load i32* %i1802
  %bop1814 = add i32 %_lhs1813, 1
  store i32 %bop1814, i32* %i1802
  br label %__cond665

__fresh668:
  br label %__post663

__post663:
  %_lhs1815 = load i32* %s1801
  ret i32 %_lhs1815
}


define void @arr11790.init (){

__fresh662:
  %array_ptr1783 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 5 )
  %array1784 = bitcast { i32, [ 0 x i32 ] }* %array_ptr1783 to { i32, [ 0 x i32 ] }* 
  %index_ptr1785 = getelementptr { i32, [ 0 x i32 ] }* %array1784, i32 0, i32 1, i32 0
  store i32 111, i32* %index_ptr1785
  %index_ptr1786 = getelementptr { i32, [ 0 x i32 ] }* %array1784, i32 0, i32 1, i32 1
  store i32 112, i32* %index_ptr1786
  %index_ptr1787 = getelementptr { i32, [ 0 x i32 ] }* %array1784, i32 0, i32 1, i32 2
  store i32 113, i32* %index_ptr1787
  %index_ptr1788 = getelementptr { i32, [ 0 x i32 ] }* %array1784, i32 0, i32 1, i32 3
  store i32 114, i32* %index_ptr1788
  %index_ptr1789 = getelementptr { i32, [ 0 x i32 ] }* %array1784, i32 0, i32 1, i32 4
  store i32 115, i32* %index_ptr1789
  store { i32, [ 0 x i32 ] }* %array1784, { i32, [ 0 x i32 ] }** @arr11790
  ret void
}


