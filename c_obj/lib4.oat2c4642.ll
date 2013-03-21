declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@str1864 = global i8* zeroinitializer, align 4		; initialized by str1864.init
@_oat_string1862.str. = private unnamed_addr constant [ 6 x i8 ] c "hello\00", align 4
@_oat_string1862 = global i8* getelementptr inbounds ([ 6 x i8 ]* @_oat_string1862.str., i32 0, i32 0), align 4
define void @oat_init (){

__fresh297:
  call void @str1864.init(  )
  ret void
}


define i32 @program (i32 %argc1868, { i32, [ 0 x i8* ] }* %argv1866){

__fresh294:
  %argc_slot1869 = alloca i32
  store i32 %argc1868, i32* %argc_slot1869
  %argv_slot1867 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv1866, { i32, [ 0 x i8* ] }** %argv_slot1867
  %_lhs1870 = load i8** @str1864
  %ret1871 = call { i32, [ 0 x i32 ] }* @array_of_string ( i8* %_lhs1870 )
  %arr1872 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %ret1871, { i32, [ 0 x i32 ] }** %arr1872
  %s1873 = alloca i32
  store i32 0, i32* %s1873
  %i1874 = alloca i32
  store i32 0, i32* %i1874
  br label %__cond293

__cond293:
  %_lhs1875 = load i32* %i1874
  %bop1876 = icmp slt i32 %_lhs1875, 5
  br i1 %bop1876, label %__body292, label %__post291

__fresh295:
  br label %__body292

__body292:
  %_lhs1877 = load i32* %s1873
  %_lhs1878 = load i32* %i1874
  %len_ptr1879 = getelementptr { i32, [ 0 x i32 ] }** %arr1872, i32 0, i32 0
  %len1880 = load i32* %len_ptr1879
  call void @oat_array_bounds_check( i32 %len1880, i32 %_lhs1878 )
  %array_dereferenced1881 = load { i32, [ 0 x i32 ] }** %arr1872
  %elt_ptr1882 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced1881, i32 0, i32 1, i32 %_lhs1878
  %_lhs1883 = load i32* %elt_ptr1882
  %bop1884 = add i32 %_lhs1877, %_lhs1883
  store i32 %bop1884, i32* %s1873
  %_lhs1885 = load i32* %i1874
  %bop1886 = add i32 %_lhs1885, 1
  store i32 %bop1886, i32* %i1874
  br label %__cond293

__fresh296:
  br label %__post291

__post291:
  %_lhs1887 = load i32* %s1873
  ret i32 %_lhs1887
}


define void @str1864.init (){

__fresh290:
  %strval1863 = load i8** @_oat_string1862
  store i8* %strval1863, i8** @str1864
  ret void
}


