declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
define void @oat_init (){

__fresh55:
  ret void
}


define i32 @program (i32 %argc162, { i32, [ 0 x i8* ] }* %argv160){

__fresh50:
  %argc_slot163 = alloca i32
  store i32 %argc162, i32* %argc_slot163
  %argv_slot161 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv160, { i32, [ 0 x i8* ] }** %argv_slot161
  %array_ptr164 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 3 )
  %array165 = bitcast { i32, [ 0 x i32 ] }* %array_ptr164 to { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* 
  %array_ptr166 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 4 )
  %array167 = bitcast { i32, [ 0 x i32 ] }* %array_ptr166 to { i32, [ 0 x i32 ] }* 
  %index_ptr168 = getelementptr { i32, [ 0 x i32 ] }* %array167, i32 0, i32 1, i32 0
  store i32 0, i32* %index_ptr168
  %index_ptr169 = getelementptr { i32, [ 0 x i32 ] }* %array167, i32 0, i32 1, i32 1
  store i32 1, i32* %index_ptr169
  %index_ptr170 = getelementptr { i32, [ 0 x i32 ] }* %array167, i32 0, i32 1, i32 2
  store i32 2, i32* %index_ptr170
  %index_ptr171 = getelementptr { i32, [ 0 x i32 ] }* %array167, i32 0, i32 1, i32 3
  store i32 3, i32* %index_ptr171
  %index_ptr172 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array165, i32 0, i32 1, i32 0
  store { i32, [ 0 x i32 ] }* %array167, { i32, [ 0 x i32 ] }** %index_ptr172
  %array_ptr173 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 4 )
  %array174 = bitcast { i32, [ 0 x i32 ] }* %array_ptr173 to { i32, [ 0 x i32 ] }* 
  %index_ptr175 = getelementptr { i32, [ 0 x i32 ] }* %array174, i32 0, i32 1, i32 0
  store i32 4, i32* %index_ptr175
  %index_ptr176 = getelementptr { i32, [ 0 x i32 ] }* %array174, i32 0, i32 1, i32 1
  store i32 5, i32* %index_ptr176
  %index_ptr177 = getelementptr { i32, [ 0 x i32 ] }* %array174, i32 0, i32 1, i32 2
  store i32 6, i32* %index_ptr177
  %index_ptr178 = getelementptr { i32, [ 0 x i32 ] }* %array174, i32 0, i32 1, i32 3
  store i32 7, i32* %index_ptr178
  %index_ptr179 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array165, i32 0, i32 1, i32 1
  store { i32, [ 0 x i32 ] }* %array174, { i32, [ 0 x i32 ] }** %index_ptr179
  %array_ptr180 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 4 )
  %array181 = bitcast { i32, [ 0 x i32 ] }* %array_ptr180 to { i32, [ 0 x i32 ] }* 
  %index_ptr182 = getelementptr { i32, [ 0 x i32 ] }* %array181, i32 0, i32 1, i32 0
  store i32 8, i32* %index_ptr182
  %index_ptr183 = getelementptr { i32, [ 0 x i32 ] }* %array181, i32 0, i32 1, i32 1
  store i32 9, i32* %index_ptr183
  %index_ptr184 = getelementptr { i32, [ 0 x i32 ] }* %array181, i32 0, i32 1, i32 2
  store i32 10, i32* %index_ptr184
  %index_ptr185 = getelementptr { i32, [ 0 x i32 ] }* %array181, i32 0, i32 1, i32 3
  store i32 11, i32* %index_ptr185
  %index_ptr186 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array165, i32 0, i32 1, i32 2
  store { i32, [ 0 x i32 ] }* %array181, { i32, [ 0 x i32 ] }** %index_ptr186
  %a187 = alloca { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }*
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array165, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a187
  %s188 = alloca i32
  store i32 0, i32* %s188
  %i189 = alloca i32
  store i32 0, i32* %i189
  br label %__cond46

__cond46:
  %_lhs190 = load i32* %i189
  %bop191 = icmp slt i32 %_lhs190, 3
  br i1 %bop191, label %__body45, label %__post44

__fresh51:
  br label %__body45

__body45:
  %j192 = alloca i32
  store i32 0, i32* %j192
  br label %__cond49

__cond49:
  %_lhs193 = load i32* %j192
  %bop194 = icmp slt i32 %_lhs193, 4
  br i1 %bop194, label %__body48, label %__post47

__fresh52:
  br label %__body48

__body48:
  %_lhs195 = load i32* %s188
  %_lhs198 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a187
  %bop199 = add i32 %_lhs195, %_lhs198
  store i32 %bop199, i32* %s188
  %_lhs200 = load i32* %j192
  %bop201 = add i32 %_lhs200, 1
  store i32 %bop201, i32* %j192
  br label %__cond49

__fresh53:
  br label %__post47

__post47:
  %_lhs202 = load i32* %i189
  %bop203 = add i32 %_lhs202, 1
  store i32 %bop203, i32* %i189
  br label %__cond46

__fresh54:
  br label %__post44

__post44:
  %_lhs204 = load i32* %s188
  ret i32 %_lhs204
}


