declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@_oat_string1862.str. = private unnamed_addr constant [ 11 x i8 ] c "1234967890\00", align 4
@_oat_string1862 = global i8* getelementptr inbounds ([ 11 x i8 ]* @_oat_string1862.str., i32 0, i32 0), align 4
define void @oat_init (){

__fresh443:
  ret void
}


define i32 @program (i32 %argc1860, { i32, [ 0 x i8* ] }* %argv1858){

__fresh438:
  %argc_slot1861 = alloca i32
  store i32 %argc1860, i32* %argc_slot1861
  %argv_slot1859 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv1858, { i32, [ 0 x i8* ] }** %argv_slot1859
  %strval1863 = load i8** @_oat_string1862
  %ret1864 = call { i32, [ 0 x i32 ] }* @array_of_string ( i8* %strval1863 )
  %arr1865 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %ret1864, { i32, [ 0 x i32 ] }** %arr1865
  %sum1866 = alloca i32
  store i32 0, i32* %sum1866
  %i1867 = alloca i32
  store i32 0, i32* %i1867
  br label %__cond434

__cond434:
  %_lhs1868 = load i32* %i1867
  %bop1869 = icmp slt i32 %_lhs1868, 10
  br i1 %bop1869, label %__body433, label %__post432

__fresh439:
  br label %__body433

__body433:
  %_lhs1870 = load i32* %i1867
  %len_ptr1871 = getelementptr { i32, [ 0 x i32 ] }** %arr1865, i32 0, i32 0
  %len1872 = load i32* %len_ptr1871
  call void @oat_array_bounds_check( i32 %len1872, i32 %_lhs1870 )
  %array_dereferenced1873 = load { i32, [ 0 x i32 ] }** %arr1865
  %elt_ptr1874 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced1873, i32 0, i32 1, i32 %_lhs1870
  %_lhs1875 = load i32* %i1867
  store i32 %_lhs1875, i32* %elt_ptr1874
  %_lhs1876 = load i32* %i1867
  %bop1877 = add i32 %_lhs1876, 1
  store i32 %bop1877, i32* %i1867
  br label %__cond434

__fresh440:
  br label %__post432

__post432:
  %i1878 = alloca i32
  store i32 0, i32* %i1878
  br label %__cond437

__cond437:
  %_lhs1879 = load i32* %i1878
  %bop1880 = icmp slt i32 %_lhs1879, 10
  br i1 %bop1880, label %__body436, label %__post435

__fresh441:
  br label %__body436

__body436:
  %_lhs1881 = load i32* %sum1866
  %_lhs1882 = load i32* %i1878
  %len_ptr1883 = getelementptr { i32, [ 0 x i32 ] }** %arr1865, i32 0, i32 0
  %len1884 = load i32* %len_ptr1883
  call void @oat_array_bounds_check( i32 %len1884, i32 %_lhs1882 )
  %array_dereferenced1885 = load { i32, [ 0 x i32 ] }** %arr1865
  %elt_ptr1886 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced1885, i32 0, i32 1, i32 %_lhs1882
  %_lhs1887 = load i32* %elt_ptr1886
  %bop1888 = add i32 %_lhs1881, %_lhs1887
  store i32 %bop1888, i32* %sum1866
  %_lhs1889 = load i32* %i1878
  %bop1890 = add i32 %_lhs1889, 1
  store i32 %bop1890, i32* %i1878
  br label %__cond437

__fresh442:
  br label %__post435

__post435:
  %_lhs1891 = load i32* %sum1866
  ret i32 %_lhs1891
}


