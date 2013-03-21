declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
define void @oat_init (){

__fresh170:
  ret void
}


define i32 @program (i32 %argc794, { i32, [ 0 x i8* ] }* %argv792){

__fresh169:
  %argc_slot795 = alloca i32
  store i32 %argc794, i32* %argc_slot795
  %argv_slot793 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv792, { i32, [ 0 x i8* ] }** %argv_slot793
  store i32 1, i32* %i796
  %a804 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %array799, { i32, [ 0 x i32 ] }** %a804
  store i32 1, i32* %i805
  %arr815 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %array810, { i32, [ 0 x i32 ] }** %arr815
  %len_ptr816 = getelementptr { i32, [ 0 x i32 ] }** %arr815, i32 0, i32 0
  %len817 = load i32* %len_ptr816
  call void @oat_array_bounds_check( i32 %len817, i32 3 )
  %array_dereferenced818 = load { i32, [ 0 x i32 ] }** %arr815
  %elt_ptr819 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced818, i32 0, i32 1, i32 3
  %_lhs820 = load i32* %elt_ptr819
  %len_ptr821 = getelementptr { i32, [ 0 x i32 ] }** %a804, i32 0, i32 0
  %len822 = load i32* %len_ptr821
  call void @oat_array_bounds_check( i32 %len822, i32 1 )
  %array_dereferenced823 = load { i32, [ 0 x i32 ] }** %a804
  %elt_ptr824 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced823, i32 0, i32 1, i32 1
  %_lhs825 = load i32* %elt_ptr824
  %bop826 = add i32 %_lhs820, %_lhs825
  store i32 1, i32* %i827
  %ret836 = call i32 @f ( { i32, [ 0 x i32 ] }* %array831 )
  %bop837 = add i32 %bop826, %ret836
  %ret838 = call i32 @g ( i32 4 )
  %bop839 = add i32 %bop837, %ret838
  ret i32 %bop839
}


define i32 @g (i32 %x776){

__fresh159:
  %x_slot777 = alloca i32
  store i32 %x776, i32* %x_slot777
  store i32 1, i32* %i778
  %arr786 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %array781, { i32, [ 0 x i32 ] }** %arr786
  %len_ptr787 = getelementptr { i32, [ 0 x i32 ] }** %arr786, i32 0, i32 0
  %len788 = load i32* %len_ptr787
  call void @oat_array_bounds_check( i32 %len788, i32 1 )
  %array_dereferenced789 = load { i32, [ 0 x i32 ] }** %arr786
  %elt_ptr790 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced789, i32 0, i32 1, i32 1
  %_lhs791 = load i32* %elt_ptr790
  ret i32 %_lhs791
}


define i32 @f ({ i32, [ 0 x i32 ] }* %a769){

__fresh155:
  %a_slot770 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %a769, { i32, [ 0 x i32 ] }** %a_slot770
  %len_ptr771 = getelementptr { i32, [ 0 x i32 ] }** %a_slot770, i32 0, i32 0
  %len772 = load i32* %len_ptr771
  call void @oat_array_bounds_check( i32 %len772, i32 1 )
  %array_dereferenced773 = load { i32, [ 0 x i32 ] }** %a_slot770
  %elt_ptr774 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced773, i32 0, i32 1, i32 1
  %_lhs775 = load i32* %elt_ptr774
  ret i32 %_lhs775
}


