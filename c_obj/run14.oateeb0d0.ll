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


define i32 @program (i32 %argc836, { i32, [ 0 x i8* ] }* %argv834){

__fresh205:
  %argc_slot837 = alloca i32
  store i32 %argc836, i32* %argc_slot837
  %argv_slot835 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv834, { i32, [ 0 x i8* ] }** %argv_slot835
  br label %__check197

__check197:
  %cmp_op843 = icmp slt i32 1, 3
  br i32 %cmp_op843, label %__body198, label %__end196

__fresh206:
  br label %__body198

__body198:
  store i32 1, i32* %i838
  %_lhs839 = load i32* %i838
  %elem_ptr842 = getelementptr { i32, [ 0 x i32 ] }* %array841, i32 0, i32 1, i32 1
  %elem_ptr842 = load i32* %i838
  %incr_op844 = add i32 1, 1
  store i32 1, i32 %incr_op844
  br label %__check197

__fresh207:
  br label %__end196

__end196:
  %a845 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %array841, { i32, [ 0 x i32 ] }** %a845
  br label %__check200

__check200:
  %cmp_op853 = icmp slt i32 1, 4
  br i32 %cmp_op853, label %__body201, label %__end199

__fresh208:
  br label %__body201

__body201:
  store i32 1, i32* %i846
  %_lhs847 = load i32* %i846
  %_lhs848 = load i32* %i846
  %bop849 = mul i32 %_lhs847, %_lhs848
  %elem_ptr852 = getelementptr { i32, [ 0 x i32 ] }* %array851, i32 0, i32 1, i32 1
  %elem_ptr852 = load i32* %i846
  %incr_op854 = add i32 1, 1
  store i32 1, i32 %incr_op854
  br label %__check200

__fresh209:
  br label %__end199

__end199:
  %arr855 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %array851, { i32, [ 0 x i32 ] }** %arr855
  %len_ptr856 = getelementptr { i32, [ 0 x i32 ] }** %arr855, i32 0, i32 0
  %len857 = load i32* %len_ptr856
  call void @oat_array_bounds_check( i32 %len857, i32 3 )
  %array_dereferenced858 = load { i32, [ 0 x i32 ] }** %arr855
  %elt_ptr859 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced858, i32 0, i32 1, i32 3
  %_lhs860 = load i32* %elt_ptr859
  %len_ptr861 = getelementptr { i32, [ 0 x i32 ] }** %a845, i32 0, i32 0
  %len862 = load i32* %len_ptr861
  call void @oat_array_bounds_check( i32 %len862, i32 1 )
  %array_dereferenced863 = load { i32, [ 0 x i32 ] }** %a845
  %elt_ptr864 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced863, i32 0, i32 1, i32 1
  %_lhs865 = load i32* %elt_ptr864
  %bop866 = add i32 %_lhs860, %_lhs865
  br label %__check203

__check203:
  %cmp_op873 = icmp slt i32 1, 3
  br i32 %cmp_op873, label %__body204, label %__end202

__fresh210:
  br label %__body204

__body204:
  store i32 1, i32* %i867
  %_lhs868 = load i32* %i867
  %bop869 = mul i32 2, %_lhs868
  %elem_ptr872 = getelementptr { i32, [ 0 x i32 ] }* %array871, i32 0, i32 1, i32 1
  %elem_ptr872 = load i32* %i867
  %incr_op874 = add i32 1, 1
  store i32 1, i32 %incr_op874
  br label %__check203

__fresh211:
  br label %__end202

__end202:
  %ret875 = call i32 @f ( { i32, [ 0 x i32 ] }* %array871 )
  %bop876 = add i32 %bop866, %ret875
  %ret877 = call i32 @g ( i32 4 )
  %bop878 = add i32 %bop876, %ret877
  ret i32 %bop878
}


define i32 @g (i32 %x819){

__fresh193:
  %x_slot820 = alloca i32
  store i32 %x819, i32* %x_slot820
  br label %__check191

__check191:
  %cmp_op826 = icmp slt i32 1, 3
  br i32 %cmp_op826, label %__body192, label %__end190

__fresh194:
  br label %__body192

__body192:
  store i32 1, i32* %i821
  %_lhs822 = load i32* %x_slot820
  %elem_ptr825 = getelementptr { i32, [ 0 x i32 ] }* %array824, i32 0, i32 1, i32 1
  %elem_ptr825 = load i32* %i821
  %incr_op827 = add i32 1, 1
  store i32 1, i32 %incr_op827
  br label %__check191

__fresh195:
  br label %__end190

__end190:
  %arr828 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %array824, { i32, [ 0 x i32 ] }** %arr828
  %len_ptr829 = getelementptr { i32, [ 0 x i32 ] }** %arr828, i32 0, i32 0
  %len830 = load i32* %len_ptr829
  call void @oat_array_bounds_check( i32 %len830, i32 1 )
  %array_dereferenced831 = load { i32, [ 0 x i32 ] }** %arr828
  %elt_ptr832 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced831, i32 0, i32 1, i32 1
  %_lhs833 = load i32* %elt_ptr832
  ret i32 %_lhs833
}


define i32 @f ({ i32, [ 0 x i32 ] }* %a812){

__fresh189:
  %a_slot813 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %a812, { i32, [ 0 x i32 ] }** %a_slot813
  %len_ptr814 = getelementptr { i32, [ 0 x i32 ] }** %a_slot813, i32 0, i32 0
  %len815 = load i32* %len_ptr814
  call void @oat_array_bounds_check( i32 %len815, i32 1 )
  %array_dereferenced816 = load { i32, [ 0 x i32 ] }** %a_slot813
  %elt_ptr817 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced816, i32 0, i32 1, i32 1
  %_lhs818 = load i32* %elt_ptr817
  ret i32 %_lhs818
}


