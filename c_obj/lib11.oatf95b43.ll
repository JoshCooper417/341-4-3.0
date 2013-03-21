declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@_oat_string1893.str. = private unnamed_addr constant [ 11 x i8 ] c "1234967890\00", align 4
@_oat_string1893 = global i8* getelementptr inbounds ([ 11 x i8 ]* @_oat_string1893.str., i32 0, i32 0), align 4
define void @oat_init (){

__fresh714:
  ret void
}


define i32 @program (i32 %argc1891, { i32, [ 0 x i8* ] }* %argv1889){

__fresh709:
  %argc_slot1892 = alloca i32
  store i32 %argc1891, i32* %argc_slot1892
  %argv_slot1890 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv1889, { i32, [ 0 x i8* ] }** %argv_slot1890
  %strval1894 = load i8** @_oat_string1893
  %ret1895 = call { i32, [ 0 x i32 ] }* @array_of_string ( i8* %strval1894 )
  %arr1896 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %ret1895, { i32, [ 0 x i32 ] }** %arr1896
  %sum1897 = alloca i32
  store i32 0, i32* %sum1897
  %i1898 = alloca i32
  store i32 0, i32* %i1898
  br label %__cond705

__cond705:
  %_lhs1899 = load i32* %i1898
  %bop1900 = icmp slt i32 %_lhs1899, 10
  br i1 %bop1900, label %__body704, label %__post703

__fresh710:
  br label %__body704

__body704:
  %_lhs1901 = load i32* %i1898
  %array_dereferenced1902 = load { i32, [ 0 x i32 ] }** %arr1896
  %len_ptr1903 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced1902, i32 0, i32 0
  %len1904 = load i32* %len_ptr1903
  call void @oat_array_bounds_check( i32 %len1904, i32 %_lhs1901 )
  %elt_ptr1905 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced1902, i32 0, i32 1, i32 %_lhs1901
  %_lhs1906 = load i32* %i1898
  store i32 %_lhs1906, i32* %elt_ptr1905
  %_lhs1907 = load i32* %i1898
  %bop1908 = add i32 %_lhs1907, 1
  store i32 %bop1908, i32* %i1898
  br label %__cond705

__fresh711:
  br label %__post703

__post703:
  %i1909 = alloca i32
  store i32 0, i32* %i1909
  br label %__cond708

__cond708:
  %_lhs1910 = load i32* %i1909
  %bop1911 = icmp slt i32 %_lhs1910, 10
  br i1 %bop1911, label %__body707, label %__post706

__fresh712:
  br label %__body707

__body707:
  %_lhs1912 = load i32* %sum1897
  %_lhs1913 = load i32* %i1909
  %array_dereferenced1914 = load { i32, [ 0 x i32 ] }** %arr1896
  %len_ptr1915 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced1914, i32 0, i32 0
  %len1916 = load i32* %len_ptr1915
  call void @oat_array_bounds_check( i32 %len1916, i32 %_lhs1913 )
  %elt_ptr1917 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced1914, i32 0, i32 1, i32 %_lhs1913
  %_lhs1918 = load i32* %elt_ptr1917
  %bop1919 = add i32 %_lhs1912, %_lhs1918
  store i32 %bop1919, i32* %sum1897
  %_lhs1920 = load i32* %i1909
  %bop1921 = add i32 %_lhs1920, 1
  store i32 %bop1921, i32* %i1909
  br label %__cond708

__fresh713:
  br label %__post706

__post706:
  %_lhs1922 = load i32* %sum1897
  ret i32 %_lhs1922
}


