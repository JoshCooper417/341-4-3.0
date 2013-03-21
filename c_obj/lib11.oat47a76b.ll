declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@_oat_string1881.str. = private unnamed_addr constant [ 11 x i8 ] c "1234967890\00", align 4
@_oat_string1881 = global i8* getelementptr inbounds ([ 11 x i8 ]* @_oat_string1881.str., i32 0, i32 0), align 4
define void @oat_init (){

__fresh317:
  ret void
}


define i32 @program (i32 %argc1879, { i32, [ 0 x i8* ] }* %argv1877){

__fresh312:
  %argc_slot1880 = alloca i32
  store i32 %argc1879, i32* %argc_slot1880
  %argv_slot1878 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv1877, { i32, [ 0 x i8* ] }** %argv_slot1878
  %strval1882 = load i8** @_oat_string1881
  %ret1883 = call { i32, [ 0 x i32 ] }* @array_of_string ( i8* %strval1882 )
  %arr1884 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %ret1883, { i32, [ 0 x i32 ] }** %arr1884
  %sum1885 = alloca i32
  store i32 0, i32* %sum1885
  %i1886 = alloca i32
  store i32 0, i32* %i1886
  br label %__cond308

__cond308:
  %_lhs1887 = load i32* %i1886
  %bop1888 = icmp slt i32 %_lhs1887, 10
  br i1 %bop1888, label %__body307, label %__post306

__fresh313:
  br label %__body307

__body307:
  %_lhs1889 = load i32* %i1886
  %len_ptr1890 = getelementptr { i32, [ 0 x i32 ] }** %arr1884, i32 0, i32 0
  %len1891 = load i32* %len_ptr1890
  call void @oat_array_bounds_check( i32 %len1891, i32 %_lhs1889 )
  %array_dereferenced1892 = load { i32, [ 0 x i32 ] }** %arr1884
  %elt_ptr1893 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced1892, i32 0, i32 1, i32 %_lhs1889
  %_lhs1894 = load i32* %i1886
  store i32 %_lhs1894, i32* %elt_ptr1893
  %_lhs1895 = load i32* %i1886
  %bop1896 = add i32 %_lhs1895, 1
  store i32 %bop1896, i32* %i1886
  br label %__cond308

__fresh314:
  br label %__post306

__post306:
  %i1897 = alloca i32
  store i32 0, i32* %i1897
  br label %__cond311

__cond311:
  %_lhs1898 = load i32* %i1897
  %bop1899 = icmp slt i32 %_lhs1898, 10
  br i1 %bop1899, label %__body310, label %__post309

__fresh315:
  br label %__body310

__body310:
  %_lhs1900 = load i32* %sum1885
  %_lhs1901 = load i32* %i1897
  %len_ptr1902 = getelementptr { i32, [ 0 x i32 ] }** %arr1884, i32 0, i32 0
  %len1903 = load i32* %len_ptr1902
  call void @oat_array_bounds_check( i32 %len1903, i32 %_lhs1901 )
  %array_dereferenced1904 = load { i32, [ 0 x i32 ] }** %arr1884
  %elt_ptr1905 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced1904, i32 0, i32 1, i32 %_lhs1901
  %_lhs1906 = load i32* %elt_ptr1905
  %bop1907 = add i32 %_lhs1900, %_lhs1906
  store i32 %bop1907, i32* %sum1885
  %_lhs1908 = load i32* %i1897
  %bop1909 = add i32 %_lhs1908, 1
  store i32 %bop1909, i32* %i1897
  br label %__cond311

__fresh316:
  br label %__post309

__post309:
  %_lhs1910 = load i32* %sum1885
  ret i32 %_lhs1910
}


