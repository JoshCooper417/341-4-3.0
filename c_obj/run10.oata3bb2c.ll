declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@garr656 = global { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* zeroinitializer, align 4		; initialized by garr656.init
define void @oat_init (){

__fresh246:
  call void @garr656.init(  )
  ret void
}


define i32 @program (i32 %argc662, { i32, [ 0 x i8* ] }* %argv660){

__fresh245:
  %argc_slot663 = alloca i32
  store i32 %argc662, i32* %argc_slot663
  %argv_slot661 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv660, { i32, [ 0 x i8* ] }** %argv_slot661
  %array_dereferenced664 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** @garr656
  %len_ptr665 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array_dereferenced664, i32 0, i32 0
  %len666 = load i32* %len_ptr665
  call void @oat_array_bounds_check( i32 %len666, i32 1 )
  %elt_ptr667 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array_dereferenced664, i32 0, i32 1, i32 1
  %_lhs668 = load { i32, [ 0 x i32 ] }** %elt_ptr667
  %ret669 = call { i32, [ 0 x i32 ] }* @f ( { i32, [ 0 x i32 ] }* %_lhs668 )
  %arr670 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %ret669, { i32, [ 0 x i32 ] }** %arr670
  %array_dereferenced671 = load { i32, [ 0 x i32 ] }** %arr670
  %len_ptr672 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced671, i32 0, i32 0
  %len673 = load i32* %len_ptr672
  call void @oat_array_bounds_check( i32 %len673, i32 1 )
  %elt_ptr674 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced671, i32 0, i32 1, i32 1
  %_lhs675 = load i32* %elt_ptr674
  ret i32 %_lhs675
}


define { i32, [ 0 x i32 ] }* @f ({ i32, [ 0 x i32 ] }* %arr657){

__fresh244:
  %arr_slot658 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %arr657, { i32, [ 0 x i32 ] }** %arr_slot658
  %_lhs659 = load { i32, [ 0 x i32 ] }** %arr_slot658
  ret { i32, [ 0 x i32 ] }* %_lhs659
}


define void @garr656.init (){

__fresh243:
  %array_ptr642 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array643 = bitcast { i32, [ 0 x i32 ] }* %array_ptr642 to { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* 
  %array_ptr644 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 3 )
  %array645 = bitcast { i32, [ 0 x i32 ] }* %array_ptr644 to { i32, [ 0 x i32 ] }* 
  %index_ptr646 = getelementptr { i32, [ 0 x i32 ] }* %array645, i32 0, i32 1, i32 0
  store i32 1, i32* %index_ptr646
  %index_ptr647 = getelementptr { i32, [ 0 x i32 ] }* %array645, i32 0, i32 1, i32 1
  store i32 2, i32* %index_ptr647
  %index_ptr648 = getelementptr { i32, [ 0 x i32 ] }* %array645, i32 0, i32 1, i32 2
  store i32 3, i32* %index_ptr648
  %index_ptr649 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array643, i32 0, i32 1, i32 0
  store { i32, [ 0 x i32 ] }* %array645, { i32, [ 0 x i32 ] }** %index_ptr649
  %array_ptr650 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 3 )
  %array651 = bitcast { i32, [ 0 x i32 ] }* %array_ptr650 to { i32, [ 0 x i32 ] }* 
  %index_ptr652 = getelementptr { i32, [ 0 x i32 ] }* %array651, i32 0, i32 1, i32 0
  store i32 4, i32* %index_ptr652
  %index_ptr653 = getelementptr { i32, [ 0 x i32 ] }* %array651, i32 0, i32 1, i32 1
  store i32 5, i32* %index_ptr653
  %index_ptr654 = getelementptr { i32, [ 0 x i32 ] }* %array651, i32 0, i32 1, i32 2
  store i32 6, i32* %index_ptr654
  %index_ptr655 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array643, i32 0, i32 1, i32 1
  store { i32, [ 0 x i32 ] }* %array651, { i32, [ 0 x i32 ] }** %index_ptr655
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array643, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** @garr656
  ret void
}


