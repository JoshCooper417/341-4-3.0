declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@_oat_string1872.str. = private unnamed_addr constant [ 11 x i8 ] c "1234967890\00", align 4
@_oat_string1872 = global i8* getelementptr inbounds ([ 11 x i8 ]* @_oat_string1872.str., i32 0, i32 0), align 4
define void @oat_init (){

__fresh714:
  ret void
}


define i32 @program (i32 %argc1870, { i32, [ 0 x i8* ] }* %argv1868){

__fresh709:
  %argc_slot1871 = alloca i32
  store i32 %argc1870, i32* %argc_slot1871
  %argv_slot1869 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv1868, { i32, [ 0 x i8* ] }** %argv_slot1869
  %strval1873 = load i8** @_oat_string1872
  %ret1874 = call { i32, [ 0 x i32 ] }* @array_of_string ( i8* %strval1873 )
  %arr1875 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %ret1874, { i32, [ 0 x i32 ] }** %arr1875
  %sum1876 = alloca i32
  store i32 0, i32* %sum1876
  %i1877 = alloca i32
  store i32 0, i32* %i1877
  br label %__cond705

__cond705:
  %_lhs1878 = load i32* %i1877
  %bop1879 = icmp slt i32 %_lhs1878, 10
  br i1 %bop1879, label %__body704, label %__post703

__fresh710:
  br label %__body704

__body704:
  %_lhs1880 = load i32* %i1877
  %array_dereferenced1881 = load { i32, [ 0 x i32 ] }** %arr1875
  %len_ptr1882 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced1881, i32 0, i32 0
  %len1883 = load i32* %len_ptr1882
  call void @oat_array_bounds_check( i32 %len1883, i32 %_lhs1880 )
  %elt_ptr1884 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced1881, i32 0, i32 1, i32 %_lhs1880
  %_lhs1885 = load i32* %i1877
  store i32 %_lhs1885, i32* %elt_ptr1884
  %_lhs1886 = load i32* %i1877
  %bop1887 = add i32 %_lhs1886, 1
  store i32 %bop1887, i32* %i1877
  br label %__cond705

__fresh711:
  br label %__post703

__post703:
  %i1888 = alloca i32
  store i32 0, i32* %i1888
  br label %__cond708

__cond708:
  %_lhs1889 = load i32* %i1888
  %bop1890 = icmp slt i32 %_lhs1889, 10
  br i1 %bop1890, label %__body707, label %__post706

__fresh712:
  br label %__body707

__body707:
  %_lhs1891 = load i32* %sum1876
  %_lhs1892 = load i32* %i1888
  %array_dereferenced1893 = load { i32, [ 0 x i32 ] }** %arr1875
  %len_ptr1894 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced1893, i32 0, i32 0
  %len1895 = load i32* %len_ptr1894
  call void @oat_array_bounds_check( i32 %len1895, i32 %_lhs1892 )
  %elt_ptr1896 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced1893, i32 0, i32 1, i32 %_lhs1892
  %_lhs1897 = load i32* %elt_ptr1896
  %bop1898 = add i32 %_lhs1891, %_lhs1897
  store i32 %bop1898, i32* %sum1876
  %_lhs1899 = load i32* %i1888
  %bop1900 = add i32 %_lhs1899, 1
  store i32 %bop1900, i32* %i1888
  br label %__cond708

__fresh713:
  br label %__post706

__post706:
  %_lhs1901 = load i32* %sum1876
  ret i32 %_lhs1901
}


