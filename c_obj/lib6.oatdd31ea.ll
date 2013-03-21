declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@arr11779 = global { i32, [ 0 x i32 ] }* zeroinitializer, align 4		; initialized by arr11779.init
define void @oat_init (){

__fresh331:
  call void @arr11779.init(  )
  ret void
}


define i32 @program (i32 %argc1782, { i32, [ 0 x i8* ] }* %argv1780){

__fresh328:
  %argc_slot1783 = alloca i32
  store i32 %argc1782, i32* %argc_slot1783
  %argv_slot1781 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv1780, { i32, [ 0 x i8* ] }** %argv_slot1781
  %_lhs1784 = load { i32, [ 0 x i32 ] }** @arr11779
  %ret1785 = call i8* @string_of_array ( { i32, [ 0 x i32 ] }* %_lhs1784 )
  %str1786 = alloca i8*
  store i8* %ret1785, i8** %str1786
  %_lhs1787 = load i8** %str1786
  %ret1788 = call { i32, [ 0 x i32 ] }* @array_of_string ( i8* %_lhs1787 )
  %arr21789 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %ret1788, { i32, [ 0 x i32 ] }** %arr21789
  %s1790 = alloca i32
  store i32 0, i32* %s1790
  %i1791 = alloca i32
  store i32 0, i32* %i1791
  br label %__cond327

__cond327:
  %_lhs1792 = load i32* %i1791
  %bop1793 = icmp slt i32 %_lhs1792, 5
  br i1 %bop1793, label %__body326, label %__post325

__fresh329:
  br label %__body326

__body326:
  %_lhs1794 = load i32* %s1790
  %_lhs1795 = load i32* %i1791
  %len_ptr1796 = getelementptr { i32, [ 0 x i32 ] }** %arr21789, i32 0, i32 0
  %len1797 = load i32* %len_ptr1796
  call void @oat_array_bounds_check( i32 %len1797, i32 %_lhs1795 )
  %array_dereferenced1798 = load { i32, [ 0 x i32 ] }** %arr21789
  %elt_ptr1799 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced1798, i32 0, i32 1, i32 %_lhs1795
  %_lhs1800 = load i32* %elt_ptr1799
  %bop1801 = add i32 %_lhs1794, %_lhs1800
  store i32 %bop1801, i32* %s1790
  %_lhs1802 = load i32* %i1791
  %bop1803 = add i32 %_lhs1802, 1
  store i32 %bop1803, i32* %i1791
  br label %__cond327

__fresh330:
  br label %__post325

__post325:
  %_lhs1804 = load i32* %s1790
  ret i32 %_lhs1804
}


define void @arr11779.init (){

__fresh324:
  %array_ptr1772 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 5 )
  %array1773 = bitcast { i32, [ 0 x i32 ] }* %array_ptr1772 to { i32, [ 0 x i32 ] }* 
  %index_ptr1774 = getelementptr { i32, [ 0 x i32 ] }* %array1773, i32 0, i32 1, i32 0
  store i32 111, i32* %index_ptr1774
  %index_ptr1775 = getelementptr { i32, [ 0 x i32 ] }* %array1773, i32 0, i32 1, i32 1
  store i32 112, i32* %index_ptr1775
  %index_ptr1776 = getelementptr { i32, [ 0 x i32 ] }* %array1773, i32 0, i32 1, i32 2
  store i32 113, i32* %index_ptr1776
  %index_ptr1777 = getelementptr { i32, [ 0 x i32 ] }* %array1773, i32 0, i32 1, i32 3
  store i32 114, i32* %index_ptr1777
  %index_ptr1778 = getelementptr { i32, [ 0 x i32 ] }* %array1773, i32 0, i32 1, i32 4
  store i32 115, i32* %index_ptr1778
  store { i32, [ 0 x i32 ] }* %array1773, { i32, [ 0 x i32 ] }** @arr11779
  ret void
}


