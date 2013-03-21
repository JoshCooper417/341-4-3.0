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

__fresh299:
  ret void
}


define i32 @program (i32 %argc1879, { i32, [ 0 x i8* ] }* %argv1877){

__fresh294:
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
  br label %__cond290

__cond290:
  %_lhs1887 = load i32* %i1886
  %bop1888 = icmp slt i32 %_lhs1887, 10
  br i1 %bop1888, label %__body289, label %__post288

__fresh295:
  br label %__body289

__body289:
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
  br label %__cond290

__fresh296:
  br label %__post288

__post288:
  %i1897 = alloca i32
  store i32 0, i32* %i1897
  br label %__cond293

__cond293:
  %_lhs1898 = load i32* %i1897
  %bop1899 = icmp slt i32 %_lhs1898, 10
  br i1 %bop1899, label %__body292, label %__post291

__fresh297:
  br label %__body292

__body292:
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
  br label %__cond293

__fresh298:
  br label %__post291

__post291:
  %_lhs1910 = load i32* %sum1885
  ret i32 %_lhs1910
}


