declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@arr11759 = global { i32, [ 0 x i32 ] }* zeroinitializer, align 4		; initialized by arr11759.init
define void @oat_init (){

__fresh441:
  call void @arr11759.init(  )
  ret void
}


define i32 @program (i32 %argc1762, { i32, [ 0 x i8* ] }* %argv1760){

__fresh438:
  %argc_slot1763 = alloca i32
  store i32 %argc1762, i32* %argc_slot1763
  %argv_slot1761 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv1760, { i32, [ 0 x i8* ] }** %argv_slot1761
  %_lhs1764 = load { i32, [ 0 x i32 ] }** @arr11759
  %ret1765 = call i8* @string_of_array ( { i32, [ 0 x i32 ] }* %_lhs1764 )
  %str1766 = alloca i8*
  store i8* %ret1765, i8** %str1766
  %_lhs1767 = load i8** %str1766
  %ret1768 = call { i32, [ 0 x i32 ] }* @array_of_string ( i8* %_lhs1767 )
  %arr21769 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %ret1768, { i32, [ 0 x i32 ] }** %arr21769
  %s1770 = alloca i32
  store i32 0, i32* %s1770
  %i1771 = alloca i32
  store i32 0, i32* %i1771
  br label %__cond437

__cond437:
  %_lhs1772 = load i32* %i1771
  %bop1773 = icmp slt i32 %_lhs1772, 5
  br i1 %bop1773, label %__body436, label %__post435

__fresh439:
  br label %__body436

__body436:
  %_lhs1774 = load i32* %s1770
  %_lhs1775 = load i32* %i1771
  %len_ptr1776 = getelementptr { i32, [ 0 x i32 ] }** %arr21769, i32 0, i32 0
  %len1777 = load i32* %len_ptr1776
  call void @oat_array_bounds_check( i32 %len1777, i32 %_lhs1775 )
  %array_dereferenced1778 = load { i32, [ 0 x i32 ] }** %arr21769
  %elt_ptr1779 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced1778, i32 0, i32 1, i32 %_lhs1775
  %_lhs1780 = load i32* %elt_ptr1779
  %bop1781 = add i32 %_lhs1774, %_lhs1780
  store i32 %bop1781, i32* %s1770
  %_lhs1782 = load i32* %i1771
  %bop1783 = add i32 %_lhs1782, 1
  store i32 %bop1783, i32* %i1771
  br label %__cond437

__fresh440:
  br label %__post435

__post435:
  %_lhs1784 = load i32* %s1770
  ret i32 %_lhs1784
}


define void @arr11759.init (){

__fresh434:
  %array_ptr1752 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 5 )
  %array1753 = bitcast { i32, [ 0 x i32 ] }* %array_ptr1752 to { i32, [ 0 x i32 ] }* 
  %index_ptr1754 = getelementptr { i32, [ 0 x i32 ] }* %array1753, i32 0, i32 1, i32 0
  store i32 111, i32* %index_ptr1754
  %index_ptr1755 = getelementptr { i32, [ 0 x i32 ] }* %array1753, i32 0, i32 1, i32 1
  store i32 112, i32* %index_ptr1755
  %index_ptr1756 = getelementptr { i32, [ 0 x i32 ] }* %array1753, i32 0, i32 1, i32 2
  store i32 113, i32* %index_ptr1756
  %index_ptr1757 = getelementptr { i32, [ 0 x i32 ] }* %array1753, i32 0, i32 1, i32 3
  store i32 114, i32* %index_ptr1757
  %index_ptr1758 = getelementptr { i32, [ 0 x i32 ] }* %array1753, i32 0, i32 1, i32 4
  store i32 115, i32* %index_ptr1758
  store { i32, [ 0 x i32 ] }* %array1753, { i32, [ 0 x i32 ] }** @arr11759
  ret void
}


