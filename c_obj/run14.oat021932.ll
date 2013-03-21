declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
define void @oat_init (){

__fresh212:
  ret void
}


define i32 @program (i32 %argc845, { i32, [ 0 x i8* ] }* %argv843){

__fresh205:
  %argc_slot846 = alloca i32
  store i32 %argc845, i32* %argc_slot846
  %argv_slot844 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv843, { i32, [ 0 x i8* ] }** %argv_slot844
  store i32 1, i32 %index_op853
  br label %__check197

__check197:
  %cmp_op852 = icmp slt i32 %index_op853, 3
  br i32 %cmp_op852, label %__body198, label %__end196

__fresh206:
  br label %__body198

__body198:
  %index_op853 = load i32* %i847
  %_lhs848 = load i32* %i847
  %elem_ptr851 = getelementptr { i32, [ 0 x i32 ] }* %array850, i32 0, i32 1, i32 %index_op853
  %elem_ptr851 = load i32* %i847
  %incr_op854 = add i32 %index_op853, 1
  store i32 %index_op853, i32 %incr_op854
  br label %__check197

__fresh207:
  br label %__end196

__end196:
  %a855 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %array850, { i32, [ 0 x i32 ] }** %a855
  store i32 1, i32 %index_op864
  br label %__check200

__check200:
  %cmp_op863 = icmp slt i32 %index_op864, 4
  br i32 %cmp_op863, label %__body201, label %__end199

__fresh208:
  br label %__body201

__body201:
  %index_op864 = load i32* %i856
  %_lhs857 = load i32* %i856
  %_lhs858 = load i32* %i856
  %bop859 = mul i32 %_lhs857, %_lhs858
  %elem_ptr862 = getelementptr { i32, [ 0 x i32 ] }* %array861, i32 0, i32 1, i32 %index_op864
  %elem_ptr862 = load i32* %i856
  %incr_op865 = add i32 %index_op864, 1
  store i32 %index_op864, i32 %incr_op865
  br label %__check200

__fresh209:
  br label %__end199

__end199:
  %arr866 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %array861, { i32, [ 0 x i32 ] }** %arr866
  %len_ptr867 = getelementptr { i32, [ 0 x i32 ] }** %arr866, i32 0, i32 0
  %len868 = load i32* %len_ptr867
  call void @oat_array_bounds_check( i32 %len868, i32 3 )
  %array_dereferenced869 = load { i32, [ 0 x i32 ] }** %arr866
  %elt_ptr870 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced869, i32 0, i32 1, i32 3
  %_lhs871 = load i32* %elt_ptr870
  %len_ptr872 = getelementptr { i32, [ 0 x i32 ] }** %a855, i32 0, i32 0
  %len873 = load i32* %len_ptr872
  call void @oat_array_bounds_check( i32 %len873, i32 1 )
  %array_dereferenced874 = load { i32, [ 0 x i32 ] }** %a855
  %elt_ptr875 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced874, i32 0, i32 1, i32 1
  %_lhs876 = load i32* %elt_ptr875
  %bop877 = add i32 %_lhs871, %_lhs876
  store i32 1, i32 %index_op885
  br label %__check203

__check203:
  %cmp_op884 = icmp slt i32 %index_op885, 3
  br i32 %cmp_op884, label %__body204, label %__end202

__fresh210:
  br label %__body204

__body204:
  %index_op885 = load i32* %i878
  %_lhs879 = load i32* %i878
  %bop880 = mul i32 2, %_lhs879
  %elem_ptr883 = getelementptr { i32, [ 0 x i32 ] }* %array882, i32 0, i32 1, i32 %index_op885
  %elem_ptr883 = load i32* %i878
  %incr_op886 = add i32 %index_op885, 1
  store i32 %index_op885, i32 %incr_op886
  br label %__check203

__fresh211:
  br label %__end202

__end202:
  %ret887 = call i32 @f ( { i32, [ 0 x i32 ] }* %array882 )
  %bop888 = add i32 %bop877, %ret887
  %ret889 = call i32 @g ( i32 4 )
  %bop890 = add i32 %bop888, %ret889
  ret i32 %bop890
}


define i32 @g (i32 %x827){

__fresh193:
  %x_slot828 = alloca i32
  store i32 %x827, i32* %x_slot828
  store i32 1, i32 %index_op835
  br label %__check191

__check191:
  %cmp_op834 = icmp slt i32 %index_op835, 3
  br i32 %cmp_op834, label %__body192, label %__end190

__fresh194:
  br label %__body192

__body192:
  %index_op835 = load i32* %i829
  %_lhs830 = load i32* %x_slot828
  %elem_ptr833 = getelementptr { i32, [ 0 x i32 ] }* %array832, i32 0, i32 1, i32 %index_op835
  %elem_ptr833 = load i32* %i829
  %incr_op836 = add i32 %index_op835, 1
  store i32 %index_op835, i32 %incr_op836
  br label %__check191

__fresh195:
  br label %__end190

__end190:
  %arr837 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %array832, { i32, [ 0 x i32 ] }** %arr837
  %len_ptr838 = getelementptr { i32, [ 0 x i32 ] }** %arr837, i32 0, i32 0
  %len839 = load i32* %len_ptr838
  call void @oat_array_bounds_check( i32 %len839, i32 1 )
  %array_dereferenced840 = load { i32, [ 0 x i32 ] }** %arr837
  %elt_ptr841 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced840, i32 0, i32 1, i32 1
  %_lhs842 = load i32* %elt_ptr841
  ret i32 %_lhs842
}


define i32 @f ({ i32, [ 0 x i32 ] }* %a820){

__fresh189:
  %a_slot821 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %a820, { i32, [ 0 x i32 ] }** %a_slot821
  %len_ptr822 = getelementptr { i32, [ 0 x i32 ] }** %a_slot821, i32 0, i32 0
  %len823 = load i32* %len_ptr822
  call void @oat_array_bounds_check( i32 %len823, i32 1 )
  %array_dereferenced824 = load { i32, [ 0 x i32 ] }** %a_slot821
  %elt_ptr825 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced824, i32 0, i32 1, i32 1
  %_lhs826 = load i32* %elt_ptr825
  ret i32 %_lhs826
}


