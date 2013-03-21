declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@str1712 = global i8* zeroinitializer, align 4		; initialized by str1712.init
@_oat_string1710.str. = private unnamed_addr constant [ 6 x i8 ] c "hello\00", align 4
@_oat_string1710 = global i8* getelementptr inbounds ([ 6 x i8 ]* @_oat_string1710.str., i32 0, i32 0), align 4
define void @oat_init (){

__fresh649:
  call void @str1712.init(  )
  ret void
}


define i32 @program (i32 %argc1716, { i32, [ 0 x i8* ] }* %argv1714){

__fresh646:
  %argc_slot1717 = alloca i32
  store i32 %argc1716, i32* %argc_slot1717
  %argv_slot1715 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv1714, { i32, [ 0 x i8* ] }** %argv_slot1715
  %_lhs1718 = load i8** @str1712
  %ret1719 = call { i32, [ 0 x i32 ] }* @array_of_string ( i8* %_lhs1718 )
  %arr1720 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %ret1719, { i32, [ 0 x i32 ] }** %arr1720
  %s1721 = alloca i32
  store i32 0, i32* %s1721
  %i1722 = alloca i32
  store i32 0, i32* %i1722
  br label %__cond645

__cond645:
  %_lhs1723 = load i32* %i1722
  %bop1724 = icmp slt i32 %_lhs1723, 5
  br i1 %bop1724, label %__body644, label %__post643

__fresh647:
  br label %__body644

__body644:
  %_lhs1725 = load i32* %s1721
  %_lhs1726 = load i32* %i1722
  %array_dereferenced1727 = load { i32, [ 0 x i32 ] }** %arr1720
  %len_ptr1728 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced1727, i32 0, i32 0
  %len1729 = load i32* %len_ptr1728
  call void @oat_array_bounds_check( i32 %len1729, i32 %_lhs1726 )
  %elt_ptr1730 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced1727, i32 0, i32 1, i32 %_lhs1726
  %_lhs1731 = load i32* %elt_ptr1730
  %bop1732 = add i32 %_lhs1725, %_lhs1731
  store i32 %bop1732, i32* %s1721
  %_lhs1733 = load i32* %i1722
  %bop1734 = add i32 %_lhs1733, 1
  store i32 %bop1734, i32* %i1722
  br label %__cond645

__fresh648:
  br label %__post643

__post643:
  %_lhs1735 = load i32* %s1721
  ret i32 %_lhs1735
}


define void @str1712.init (){

__fresh642:
  %strval1711 = load i8** @_oat_string1710
  store i8* %strval1711, i8** @str1712
  ret void
}


