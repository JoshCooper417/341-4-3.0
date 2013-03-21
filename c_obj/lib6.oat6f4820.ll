declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@arr11778 = global { i32, [ 0 x i32 ] }* zeroinitializer, align 4		; initialized by arr11778.init
define void @oat_init (){

__fresh286:
  call void @arr11778.init(  )
  ret void
}


define i32 @program (i32 %argc1781, { i32, [ 0 x i8* ] }* %argv1779){

__fresh283:
  %argc_slot1782 = alloca i32
  store i32 %argc1781, i32* %argc_slot1782
  %argv_slot1780 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv1779, { i32, [ 0 x i8* ] }** %argv_slot1780
  %_lhs1783 = load { i32, [ 0 x i32 ] }** @arr11778
  %ret1784 = call i8* @string_of_array ( { i32, [ 0 x i32 ] }* %_lhs1783 )
  %str1785 = alloca i8*
  store i8* %ret1784, i8** %str1785
  %_lhs1786 = load i8** %str1785
  %ret1787 = call { i32, [ 0 x i32 ] }* @array_of_string ( i8* %_lhs1786 )
  %arr21788 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %ret1787, { i32, [ 0 x i32 ] }** %arr21788
  %s1789 = alloca i32
  store i32 0, i32* %s1789
  %i1790 = alloca i32
  store i32 0, i32* %i1790
  br label %__cond282

__cond282:
  %_lhs1791 = load i32* %i1790
  %bop1792 = icmp slt i32 %_lhs1791, 5
  br i1 %bop1792, label %__body281, label %__post280

__fresh284:
  br label %__body281

__body281:
  %_lhs1793 = load i32* %s1789
  %_lhs1794 = load i32* %i1790
  %len_ptr1795 = getelementptr { i32, [ 0 x i32 ] }** %arr21788, i32 0, i32 0
  %len1796 = load i32* %len_ptr1795
  call void @oat_array_bounds_check( i32 %len1796, i32 %_lhs1794 )
  %array_dereferenced1797 = load { i32, [ 0 x i32 ] }** %arr21788
  %elt_ptr1798 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced1797, i32 0, i32 1, i32 %_lhs1794
  %_lhs1799 = load i32* %elt_ptr1798
  %bop1800 = add i32 %_lhs1793, %_lhs1799
  store i32 %bop1800, i32* %s1789
  %_lhs1801 = load i32* %i1790
  %bop1802 = add i32 %_lhs1801, 1
  store i32 %bop1802, i32* %i1790
  br label %__cond282

__fresh285:
  br label %__post280

__post280:
  %_lhs1803 = load i32* %s1789
  ret i32 %_lhs1803
}


define void @arr11778.init (){

__fresh279:
  %array_ptr1771 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 5 )
  %array1772 = bitcast { i32, [ 0 x i32 ] }* %array_ptr1771 to { i32, [ 0 x i32 ] }* 
  %index_ptr1773 = getelementptr { i32, [ 0 x i32 ] }* %array1772, i32 0, i32 1, i32 0
  store i32 111, i32* %index_ptr1773
  %index_ptr1774 = getelementptr { i32, [ 0 x i32 ] }* %array1772, i32 0, i32 1, i32 1
  store i32 112, i32* %index_ptr1774
  %index_ptr1775 = getelementptr { i32, [ 0 x i32 ] }* %array1772, i32 0, i32 1, i32 2
  store i32 113, i32* %index_ptr1775
  %index_ptr1776 = getelementptr { i32, [ 0 x i32 ] }* %array1772, i32 0, i32 1, i32 3
  store i32 114, i32* %index_ptr1776
  %index_ptr1777 = getelementptr { i32, [ 0 x i32 ] }* %array1772, i32 0, i32 1, i32 4
  store i32 115, i32* %index_ptr1777
  store { i32, [ 0 x i32 ] }* %array1772, { i32, [ 0 x i32 ] }** @arr11778
  ret void
}


