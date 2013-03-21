declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@str1721 = global i8* zeroinitializer, align 4		; initialized by str1721.init
@_oat_string1719.str. = private unnamed_addr constant [ 6 x i8 ] c "hello\00", align 4
@_oat_string1719 = global i8* getelementptr inbounds ([ 6 x i8 ]* @_oat_string1719.str., i32 0, i32 0), align 4
define void @oat_init (){

__fresh271:
  call void @str1721.init(  )
  ret void
}


define i32 @program (i32 %argc1725, { i32, [ 0 x i8* ] }* %argv1723){

__fresh268:
  %argc_slot1726 = alloca i32
  store i32 %argc1725, i32* %argc_slot1726
  %argv_slot1724 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv1723, { i32, [ 0 x i8* ] }** %argv_slot1724
  %_lhs1727 = load i8** @str1721
  %ret1728 = call { i32, [ 0 x i32 ] }* @array_of_string ( i8* %_lhs1727 )
  %arr1729 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %ret1728, { i32, [ 0 x i32 ] }** %arr1729
  %s1730 = alloca i32
  store i32 0, i32* %s1730
  %i1731 = alloca i32
  store i32 0, i32* %i1731
  br label %__cond267

__cond267:
  %_lhs1732 = load i32* %i1731
  %bop1733 = icmp slt i32 %_lhs1732, 5
  br i1 %bop1733, label %__body266, label %__post265

__fresh269:
  br label %__body266

__body266:
  %_lhs1734 = load i32* %s1730
  %_lhs1735 = load i32* %i1731
  %len_ptr1736 = getelementptr { i32, [ 0 x i32 ] }** %arr1729, i32 0, i32 0
  %len1737 = load i32* %len_ptr1736
  call void @oat_array_bounds_check( i32 %len1737, i32 %_lhs1735 )
  %array_dereferenced1738 = load { i32, [ 0 x i32 ] }** %arr1729
  %elt_ptr1739 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced1738, i32 0, i32 1, i32 %_lhs1735
  %_lhs1740 = load i32* %elt_ptr1739
  %bop1741 = add i32 %_lhs1734, %_lhs1740
  store i32 %bop1741, i32* %s1730
  %_lhs1742 = load i32* %i1731
  %bop1743 = add i32 %_lhs1742, 1
  store i32 %bop1743, i32* %i1731
  br label %__cond267

__fresh270:
  br label %__post265

__post265:
  %_lhs1744 = load i32* %s1730
  ret i32 %_lhs1744
}


define void @str1721.init (){

__fresh264:
  %strval1720 = load i8** @_oat_string1719
  store i8* %strval1720, i8** @str1721
  ret void
}


