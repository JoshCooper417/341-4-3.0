declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@arr11809 = global { i32, [ 0 x i32 ] }* zeroinitializer, align 4		; initialized by arr11809.init
define void @oat_init (){

__fresh340:
  call void @arr11809.init(  )
  ret void
}


define i32 @program (i32 %argc1812, { i32, [ 0 x i8* ] }* %argv1810){

__fresh337:
  %argc_slot1813 = alloca i32
  store i32 %argc1812, i32* %argc_slot1813
  %argv_slot1811 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv1810, { i32, [ 0 x i8* ] }** %argv_slot1811
  %_lhs1814 = load { i32, [ 0 x i32 ] }** @arr11809
  %ret1815 = call i8* @string_of_array ( { i32, [ 0 x i32 ] }* %_lhs1814 )
  %str1816 = alloca i8*
  store i8* %ret1815, i8** %str1816
  %_lhs1817 = load i8** %str1816
  %ret1818 = call { i32, [ 0 x i32 ] }* @array_of_string ( i8* %_lhs1817 )
  %arr21819 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %ret1818, { i32, [ 0 x i32 ] }** %arr21819
  %s1820 = alloca i32
  store i32 0, i32* %s1820
  %i1821 = alloca i32
  store i32 0, i32* %i1821
  br label %__cond336

__cond336:
  %_lhs1822 = load i32* %i1821
  %bop1823 = icmp slt i32 %_lhs1822, 5
  br i1 %bop1823, label %__body335, label %__post334

__fresh338:
  br label %__body335

__body335:
  %_lhs1824 = load i32* %s1820
  %_lhs1825 = load i32* %i1821
  %len_ptr1826 = getelementptr { i32, [ 0 x i32 ] }** %arr21819, i32 0, i32 0
  %len1827 = load i32* %len_ptr1826
  call void @oat_array_bounds_check( i32 %len1827, i32 %_lhs1825 )
  %array_dereferenced1828 = load { i32, [ 0 x i32 ] }** %arr21819
  %elt_ptr1829 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced1828, i32 0, i32 1, i32 %_lhs1825
  %_lhs1830 = load i32* %elt_ptr1829
  %bop1831 = add i32 %_lhs1824, %_lhs1830
  store i32 %bop1831, i32* %s1820
  %_lhs1832 = load i32* %i1821
  %bop1833 = add i32 %_lhs1832, 1
  store i32 %bop1833, i32* %i1821
  br label %__cond336

__fresh339:
  br label %__post334

__post334:
  %_lhs1834 = load i32* %s1820
  ret i32 %_lhs1834
}


define void @arr11809.init (){

__fresh333:
  %array_ptr1802 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 5 )
  %array1803 = bitcast { i32, [ 0 x i32 ] }* %array_ptr1802 to { i32, [ 0 x i32 ] }* 
  %index_ptr1804 = getelementptr { i32, [ 0 x i32 ] }* %array1803, i32 0, i32 1, i32 0
  store i32 111, i32* %index_ptr1804
  %index_ptr1805 = getelementptr { i32, [ 0 x i32 ] }* %array1803, i32 0, i32 1, i32 1
  store i32 112, i32* %index_ptr1805
  %index_ptr1806 = getelementptr { i32, [ 0 x i32 ] }* %array1803, i32 0, i32 1, i32 2
  store i32 113, i32* %index_ptr1806
  %index_ptr1807 = getelementptr { i32, [ 0 x i32 ] }* %array1803, i32 0, i32 1, i32 3
  store i32 114, i32* %index_ptr1807
  %index_ptr1808 = getelementptr { i32, [ 0 x i32 ] }* %array1803, i32 0, i32 1, i32 4
  store i32 115, i32* %index_ptr1808
  store { i32, [ 0 x i32 ] }* %array1803, { i32, [ 0 x i32 ] }** @arr11809
  ret void
}


