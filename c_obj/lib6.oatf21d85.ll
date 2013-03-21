declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@arr11782 = global { i32, [ 0 x i32 ] }* zeroinitializer, align 4		; initialized by arr11782.init
define void @oat_init (){

__fresh340:
  call void @arr11782.init(  )
  ret void
}


define i32 @program (i32 %argc1785, { i32, [ 0 x i8* ] }* %argv1783){

__fresh337:
  %argc_slot1786 = alloca i32
  store i32 %argc1785, i32* %argc_slot1786
  %argv_slot1784 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv1783, { i32, [ 0 x i8* ] }** %argv_slot1784
  %_lhs1787 = load { i32, [ 0 x i32 ] }** @arr11782
  %ret1788 = call i8* @string_of_array ( { i32, [ 0 x i32 ] }* %_lhs1787 )
  %str1789 = alloca i8*
  store i8* %ret1788, i8** %str1789
  %_lhs1790 = load i8** %str1789
  %ret1791 = call { i32, [ 0 x i32 ] }* @array_of_string ( i8* %_lhs1790 )
  %arr21792 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %ret1791, { i32, [ 0 x i32 ] }** %arr21792
  %s1793 = alloca i32
  store i32 0, i32* %s1793
  %i1794 = alloca i32
  store i32 0, i32* %i1794
  br label %__cond336

__cond336:
  %_lhs1795 = load i32* %i1794
  %bop1796 = icmp slt i32 %_lhs1795, 5
  br i1 %bop1796, label %__body335, label %__post334

__fresh338:
  br label %__body335

__body335:
  %_lhs1797 = load i32* %s1793
  %_lhs1798 = load i32* %i1794
  %len_ptr1799 = getelementptr { i32, [ 0 x i32 ] }** %arr21792, i32 0, i32 0
  %len1800 = load i32* %len_ptr1799
  call void @oat_array_bounds_check( i32 %len1800, i32 %_lhs1798 )
  %array_dereferenced1801 = load { i32, [ 0 x i32 ] }** %arr21792
  %elt_ptr1802 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced1801, i32 0, i32 1, i32 %_lhs1798
  %_lhs1803 = load i32* %elt_ptr1802
  %bop1804 = add i32 %_lhs1797, %_lhs1803
  store i32 %bop1804, i32* %s1793
  %_lhs1805 = load i32* %i1794
  %bop1806 = add i32 %_lhs1805, 1
  store i32 %bop1806, i32* %i1794
  br label %__cond336

__fresh339:
  br label %__post334

__post334:
  %_lhs1807 = load i32* %s1793
  ret i32 %_lhs1807
}


define void @arr11782.init (){

__fresh333:
  %array_ptr1775 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 5 )
  %array1776 = bitcast { i32, [ 0 x i32 ] }* %array_ptr1775 to { i32, [ 0 x i32 ] }* 
  %index_ptr1777 = getelementptr { i32, [ 0 x i32 ] }* %array1776, i32 0, i32 1, i32 0
  store i32 111, i32* %index_ptr1777
  %index_ptr1778 = getelementptr { i32, [ 0 x i32 ] }* %array1776, i32 0, i32 1, i32 1
  store i32 112, i32* %index_ptr1778
  %index_ptr1779 = getelementptr { i32, [ 0 x i32 ] }* %array1776, i32 0, i32 1, i32 2
  store i32 113, i32* %index_ptr1779
  %index_ptr1780 = getelementptr { i32, [ 0 x i32 ] }* %array1776, i32 0, i32 1, i32 3
  store i32 114, i32* %index_ptr1780
  %index_ptr1781 = getelementptr { i32, [ 0 x i32 ] }* %array1776, i32 0, i32 1, i32 4
  store i32 115, i32* %index_ptr1781
  store { i32, [ 0 x i32 ] }* %array1776, { i32, [ 0 x i32 ] }** @arr11782
  ret void
}


