declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@arr11808 = global { i32, [ 0 x i32 ] }* zeroinitializer, align 4		; initialized by arr11808.init
define void @oat_init (){

__fresh286:
  call void @arr11808.init(  )
  ret void
}


define i32 @program (i32 %argc1811, { i32, [ 0 x i8* ] }* %argv1809){

__fresh283:
  %argc_slot1812 = alloca i32
  store i32 %argc1811, i32* %argc_slot1812
  %argv_slot1810 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv1809, { i32, [ 0 x i8* ] }** %argv_slot1810
  %_lhs1813 = load { i32, [ 0 x i32 ] }** @arr11808
  %ret1814 = call i8* @string_of_array ( { i32, [ 0 x i32 ] }* %_lhs1813 )
  %str1815 = alloca i8*
  store i8* %ret1814, i8** %str1815
  %_lhs1816 = load i8** %str1815
  %ret1817 = call { i32, [ 0 x i32 ] }* @array_of_string ( i8* %_lhs1816 )
  %arr21818 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %ret1817, { i32, [ 0 x i32 ] }** %arr21818
  %s1819 = alloca i32
  store i32 0, i32* %s1819
  %i1820 = alloca i32
  store i32 0, i32* %i1820
  br label %__cond282

__cond282:
  %_lhs1821 = load i32* %i1820
  %bop1822 = icmp slt i32 %_lhs1821, 5
  br i1 %bop1822, label %__body281, label %__post280

__fresh284:
  br label %__body281

__body281:
  %_lhs1823 = load i32* %s1819
  %_lhs1824 = load i32* %i1820
  %len_ptr1825 = getelementptr { i32, [ 0 x i32 ] }** %arr21818, i32 0, i32 0
  %len1826 = load i32* %len_ptr1825
  call void @oat_array_bounds_check( i32 %len1826, i32 %_lhs1824 )
  %array_dereferenced1827 = load { i32, [ 0 x i32 ] }** %arr21818
  %elt_ptr1828 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced1827, i32 0, i32 1, i32 %_lhs1824
  %_lhs1829 = load i32* %elt_ptr1828
  %bop1830 = add i32 %_lhs1823, %_lhs1829
  store i32 %bop1830, i32* %s1819
  %_lhs1831 = load i32* %i1820
  %bop1832 = add i32 %_lhs1831, 1
  store i32 %bop1832, i32* %i1820
  br label %__cond282

__fresh285:
  br label %__post280

__post280:
  %_lhs1833 = load i32* %s1819
  ret i32 %_lhs1833
}


define void @arr11808.init (){

__fresh279:
  %array_ptr1801 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 5 )
  %array1802 = bitcast { i32, [ 0 x i32 ] }* %array_ptr1801 to { i32, [ 0 x i32 ] }* 
  %index_ptr1803 = getelementptr { i32, [ 0 x i32 ] }* %array1802, i32 0, i32 1, i32 0
  store i32 111, i32* %index_ptr1803
  %index_ptr1804 = getelementptr { i32, [ 0 x i32 ] }* %array1802, i32 0, i32 1, i32 1
  store i32 112, i32* %index_ptr1804
  %index_ptr1805 = getelementptr { i32, [ 0 x i32 ] }* %array1802, i32 0, i32 1, i32 2
  store i32 113, i32* %index_ptr1805
  %index_ptr1806 = getelementptr { i32, [ 0 x i32 ] }* %array1802, i32 0, i32 1, i32 3
  store i32 114, i32* %index_ptr1806
  %index_ptr1807 = getelementptr { i32, [ 0 x i32 ] }* %array1802, i32 0, i32 1, i32 4
  store i32 115, i32* %index_ptr1807
  store { i32, [ 0 x i32 ] }* %array1802, { i32, [ 0 x i32 ] }** @arr11808
  ret void
}


