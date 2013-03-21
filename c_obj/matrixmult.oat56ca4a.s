	.align 4
	.data
_oat_string3277.str.:
	.ascii "\n\0"
_oat_string3277:
	.long _oat_string3277.str.

_oat_string3273.str.:
	.ascii " \0"
_oat_string3273:
	.long _oat_string3273.str.

	.text
.globl _oat_init
_oat_init:
	pushl %ebp
	movl %esp, %ebp
	subl $0, %esp
__fresh1168:
	movl %ebp, %esp
	popl %ebp
	ret
.globl _prnNx4
_prnNx4:
	pushl %ebp
	movl %esp, %ebp
	subl $120, %esp
__fresh1163:
	leal -116(%ebp), %eax
	movl %eax, -12(%ebp)
	movl 8(%ebp), %eax
	movl %eax, %ecx
	movl -12(%ebp), %eax
	movl %ecx, (%eax)
	leal -112(%ebp), %eax
	movl %eax, -8(%ebp)
	movl 12(%ebp), %eax
	movl %eax, %ecx
	movl -8(%ebp), %eax
	movl %ecx, (%eax)
	leal -108(%ebp), %eax
	movl %eax, -4(%ebp)
	movl $0, %eax
	movl %eax, %ecx
	movl -4(%ebp), %eax
	movl %ecx, (%eax)
	jmp __cond1159
__cond1159:
	movl -4(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -24(%ebp)
	movl -8(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -20(%ebp)
	movl -24(%ebp), %eax
	movl %eax, %ecx
	movl -20(%ebp), %eax
	cmpl %eax, %ecx
	setL -16(%ebp)
	andl $1, -16(%ebp)
	movl -16(%ebp), %eax
	cmpl $0, %eax
	jNE __body1158
	jmp __post1157
__fresh1164:
	jmp __body1158
__body1158:
	leal -120(%ebp), %eax
	movl %eax, -28(%ebp)
	movl $0, %eax
	movl %eax, %ecx
	movl -28(%ebp), %eax
	movl %ecx, (%eax)
	jmp __cond1162
__cond1162:
	movl -28(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -36(%ebp)
	movl -36(%ebp), %eax
	movl %eax, %ecx
	movl $4, %eax
	cmpl %eax, %ecx
	setL -32(%ebp)
	andl $1, -32(%ebp)
	movl -32(%ebp), %eax
	cmpl $0, %eax
	jNE __body1161
	jmp __post1160
__fresh1165:
	jmp __body1161
__body1161:
	movl -4(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -92(%ebp)
	movl -12(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -88(%ebp)
	movl -88(%ebp), %eax
	addl $0, %eax
	movl %eax, -84(%ebp)
	movl -84(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -80(%ebp)
	pushl %edx
	pushl %ecx
	pushl %eax
	movl -92(%ebp), %eax
	pushl %eax
	movl -80(%ebp), %eax
	pushl %eax
	call _oat_array_bounds_check
	addl $8, %esp
	popl %eax
	popl %ecx
	popl %edx
	movl -88(%ebp), %eax
	addl $4, %eax
	movl %eax, %ecx
	movl -92(%ebp), %eax
	imull $4, %eax
	addl %ecx, %eax
	movl %eax, -76(%ebp)
	movl -28(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -72(%ebp)
	movl -76(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -68(%ebp)
	movl -68(%ebp), %eax
	addl $0, %eax
	movl %eax, -64(%ebp)
	movl -64(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -60(%ebp)
	pushl %edx
	pushl %ecx
	pushl %eax
	movl -72(%ebp), %eax
	pushl %eax
	movl -60(%ebp), %eax
	pushl %eax
	call _oat_array_bounds_check
	addl $8, %esp
	popl %eax
	popl %ecx
	popl %edx
	movl -68(%ebp), %eax
	addl $4, %eax
	movl %eax, %ecx
	movl -72(%ebp), %eax
	imull $4, %eax
	addl %ecx, %eax
	movl %eax, -56(%ebp)
	movl -56(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -52(%ebp)
	pushl %edx
	pushl %ecx
	pushl %eax
	movl -52(%ebp), %eax
	pushl %eax
	call _print_int
	addl $4, %esp
	popl %eax
	popl %ecx
	popl %edx
	movl _oat_string3273, %eax
	movl %eax, -48(%ebp)
	pushl %edx
	pushl %ecx
	pushl %eax
	movl -48(%ebp), %eax
	pushl %eax
	call _print_string
	addl $4, %esp
	popl %eax
	popl %ecx
	popl %edx
	movl -28(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -44(%ebp)
	movl -44(%ebp), %eax
	movl %eax, -40(%ebp)
	movl $1, %eax
	movl %eax, %ecx
	addl %ecx, -40(%ebp)
	movl -40(%ebp), %eax
	movl %eax, %ecx
	movl -28(%ebp), %eax
	movl %ecx, (%eax)
	jmp __cond1162
__fresh1166:
	jmp __post1160
__post1160:
	movl _oat_string3277, %eax
	movl %eax, -104(%ebp)
	pushl %edx
	pushl %ecx
	pushl %eax
	movl -104(%ebp), %eax
	pushl %eax
	call _print_string
	addl $4, %esp
	popl %eax
	popl %ecx
	popl %edx
	movl -4(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -100(%ebp)
	movl -100(%ebp), %eax
	movl %eax, -96(%ebp)
	movl $1, %eax
	movl %eax, %ecx
	addl %ecx, -96(%ebp)
	movl -96(%ebp), %eax
	movl %eax, %ecx
	movl -4(%ebp), %eax
	movl %ecx, (%eax)
	jmp __cond1159
__fresh1167:
	jmp __post1157
__post1157:
	movl %ebp, %esp
	popl %ebp
	ret
.globl _dot3
_dot3:
	pushl %ebp
	movl %esp, %ebp
	subl $168, %esp
__fresh1154:
	leal -168(%ebp), %eax
	movl %eax, -24(%ebp)
	movl 8(%ebp), %eax
	movl %eax, %ecx
	movl -24(%ebp), %eax
	movl %ecx, (%eax)
	leal -164(%ebp), %eax
	movl %eax, -20(%ebp)
	movl 12(%ebp), %eax
	movl %eax, %ecx
	movl -20(%ebp), %eax
	movl %ecx, (%eax)
	leal -160(%ebp), %eax
	movl %eax, -16(%ebp)
	movl 16(%ebp), %eax
	movl %eax, %ecx
	movl -16(%ebp), %eax
	movl %ecx, (%eax)
	leal -156(%ebp), %eax
	movl %eax, -12(%ebp)
	movl 20(%ebp), %eax
	movl %eax, %ecx
	movl -12(%ebp), %eax
	movl %ecx, (%eax)
	leal -152(%ebp), %eax
	movl %eax, -8(%ebp)
	movl $0, %eax
	movl %eax, %ecx
	movl -8(%ebp), %eax
	movl %ecx, (%eax)
	leal -148(%ebp), %eax
	movl %eax, -4(%ebp)
	movl $0, %eax
	movl %eax, %ecx
	movl -4(%ebp), %eax
	movl %ecx, (%eax)
	jmp __cond1153
__cond1153:
	movl -4(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -32(%ebp)
	movl -32(%ebp), %eax
	movl %eax, %ecx
	movl $3, %eax
	cmpl %eax, %ecx
	setL -28(%ebp)
	andl $1, -28(%ebp)
	movl -28(%ebp), %eax
	cmpl $0, %eax
	jNE __body1152
	jmp __post1151
__fresh1155:
	jmp __body1152
__body1152:
	movl -8(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -140(%ebp)
	movl -16(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -136(%ebp)
	movl -24(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -132(%ebp)
	movl -132(%ebp), %eax
	addl $0, %eax
	movl %eax, -128(%ebp)
	movl -128(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -124(%ebp)
	pushl %edx
	pushl %ecx
	pushl %eax
	movl -136(%ebp), %eax
	pushl %eax
	movl -124(%ebp), %eax
	pushl %eax
	call _oat_array_bounds_check
	addl $8, %esp
	popl %eax
	popl %ecx
	popl %edx
	movl -132(%ebp), %eax
	addl $4, %eax
	movl %eax, %ecx
	movl -136(%ebp), %eax
	imull $4, %eax
	addl %ecx, %eax
	movl %eax, -120(%ebp)
	movl -4(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -116(%ebp)
	movl -120(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -112(%ebp)
	movl -112(%ebp), %eax
	addl $0, %eax
	movl %eax, -108(%ebp)
	movl -108(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -104(%ebp)
	pushl %edx
	pushl %ecx
	pushl %eax
	movl -116(%ebp), %eax
	pushl %eax
	movl -104(%ebp), %eax
	pushl %eax
	call _oat_array_bounds_check
	addl $8, %esp
	popl %eax
	popl %ecx
	popl %edx
	movl -112(%ebp), %eax
	addl $4, %eax
	movl %eax, %ecx
	movl -116(%ebp), %eax
	imull $4, %eax
	addl %ecx, %eax
	movl %eax, -100(%ebp)
	movl -100(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -96(%ebp)
	movl -4(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -92(%ebp)
	movl -20(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -88(%ebp)
	movl -88(%ebp), %eax
	addl $0, %eax
	movl %eax, -84(%ebp)
	movl -84(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -80(%ebp)
	pushl %edx
	pushl %ecx
	pushl %eax
	movl -92(%ebp), %eax
	pushl %eax
	movl -80(%ebp), %eax
	pushl %eax
	call _oat_array_bounds_check
	addl $8, %esp
	popl %eax
	popl %ecx
	popl %edx
	movl -88(%ebp), %eax
	addl $4, %eax
	movl %eax, %ecx
	movl -92(%ebp), %eax
	imull $4, %eax
	addl %ecx, %eax
	movl %eax, -76(%ebp)
	movl -12(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -72(%ebp)
	movl -76(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -68(%ebp)
	movl -68(%ebp), %eax
	addl $0, %eax
	movl %eax, -64(%ebp)
	movl -64(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -60(%ebp)
	pushl %edx
	pushl %ecx
	pushl %eax
	movl -72(%ebp), %eax
	pushl %eax
	movl -60(%ebp), %eax
	pushl %eax
	call _oat_array_bounds_check
	addl $8, %esp
	popl %eax
	popl %ecx
	popl %edx
	movl -68(%ebp), %eax
	addl $4, %eax
	movl %eax, %ecx
	movl -72(%ebp), %eax
	imull $4, %eax
	addl %ecx, %eax
	movl %eax, -56(%ebp)
	movl -56(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -52(%ebp)
	movl -96(%ebp), %eax
	movl %eax, -48(%ebp)
	movl -52(%ebp), %eax
	movl %eax, %ecx
	movl -48(%ebp), %eax
	imull %ecx, %eax
	movl %eax, -48(%ebp)
	movl -140(%ebp), %eax
	movl %eax, -44(%ebp)
	movl -48(%ebp), %eax
	movl %eax, %ecx
	addl %ecx, -44(%ebp)
	movl -44(%ebp), %eax
	movl %eax, %ecx
	movl -8(%ebp), %eax
	movl %ecx, (%eax)
	movl -4(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -40(%ebp)
	movl -40(%ebp), %eax
	movl %eax, -36(%ebp)
	movl $1, %eax
	movl %eax, %ecx
	addl %ecx, -36(%ebp)
	movl -36(%ebp), %eax
	movl %eax, %ecx
	movl -4(%ebp), %eax
	movl %ecx, (%eax)
	jmp __cond1153
__fresh1156:
	jmp __post1151
__post1151:
	movl -8(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -144(%ebp)
	movl -144(%ebp), %eax
	movl %ebp, %esp
	popl %ebp
	ret
.globl _matrix_MultAlt
_matrix_MultAlt:
	pushl %ebp
	movl %esp, %ebp
	subl $132, %esp
__fresh1146:
	leal -128(%ebp), %eax
	movl %eax, -16(%ebp)
	movl 8(%ebp), %eax
	movl %eax, %ecx
	movl -16(%ebp), %eax
	movl %ecx, (%eax)
	leal -124(%ebp), %eax
	movl %eax, -12(%ebp)
	movl 12(%ebp), %eax
	movl %eax, %ecx
	movl -12(%ebp), %eax
	movl %ecx, (%eax)
	leal -120(%ebp), %eax
	movl %eax, -8(%ebp)
	movl 16(%ebp), %eax
	movl %eax, %ecx
	movl -8(%ebp), %eax
	movl %ecx, (%eax)
	leal -116(%ebp), %eax
	movl %eax, -4(%ebp)
	movl $0, %eax
	movl %eax, %ecx
	movl -4(%ebp), %eax
	movl %ecx, (%eax)
	jmp __cond1142
__cond1142:
	movl -4(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -24(%ebp)
	movl -24(%ebp), %eax
	movl %eax, %ecx
	movl $2, %eax
	cmpl %eax, %ecx
	setL -20(%ebp)
	andl $1, -20(%ebp)
	movl -20(%ebp), %eax
	cmpl $0, %eax
	jNE __body1141
	jmp __post1140
__fresh1147:
	jmp __body1141
__body1141:
	leal -132(%ebp), %eax
	movl %eax, -28(%ebp)
	movl $0, %eax
	movl %eax, %ecx
	movl -28(%ebp), %eax
	movl %ecx, (%eax)
	jmp __cond1145
__cond1145:
	movl -28(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -36(%ebp)
	movl -36(%ebp), %eax
	movl %eax, %ecx
	movl $4, %eax
	cmpl %eax, %ecx
	setL -32(%ebp)
	andl $1, -32(%ebp)
	movl -32(%ebp), %eax
	cmpl $0, %eax
	jNE __body1144
	jmp __post1143
__fresh1148:
	jmp __body1144
__body1144:
	movl -4(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -104(%ebp)
	movl -8(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -100(%ebp)
	movl -100(%ebp), %eax
	addl $0, %eax
	movl %eax, -96(%ebp)
	movl -96(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -92(%ebp)
	pushl %edx
	pushl %ecx
	pushl %eax
	movl -104(%ebp), %eax
	pushl %eax
	movl -92(%ebp), %eax
	pushl %eax
	call _oat_array_bounds_check
	addl $8, %esp
	popl %eax
	popl %ecx
	popl %edx
	movl -100(%ebp), %eax
	addl $4, %eax
	movl %eax, %ecx
	movl -104(%ebp), %eax
	imull $4, %eax
	addl %ecx, %eax
	movl %eax, -88(%ebp)
	movl -28(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -84(%ebp)
	movl -88(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -80(%ebp)
	movl -80(%ebp), %eax
	addl $0, %eax
	movl %eax, -76(%ebp)
	movl -76(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -72(%ebp)
	pushl %edx
	pushl %ecx
	pushl %eax
	movl -84(%ebp), %eax
	pushl %eax
	movl -72(%ebp), %eax
	pushl %eax
	call _oat_array_bounds_check
	addl $8, %esp
	popl %eax
	popl %ecx
	popl %edx
	movl -80(%ebp), %eax
	addl $4, %eax
	movl %eax, %ecx
	movl -84(%ebp), %eax
	imull $4, %eax
	addl %ecx, %eax
	movl %eax, -68(%ebp)
	movl -28(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -64(%ebp)
	movl -4(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -60(%ebp)
	movl -12(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -56(%ebp)
	movl -16(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -52(%ebp)
	pushl %edx
	pushl %ecx
	pushl %eax
	movl -64(%ebp), %eax
	pushl %eax
	movl -60(%ebp), %eax
	pushl %eax
	movl -56(%ebp), %eax
	pushl %eax
	movl -52(%ebp), %eax
	pushl %eax
	call _dot3
	movl %eax, -48(%ebp)
	addl $16, %esp
	popl %eax
	popl %ecx
	popl %edx
	movl -48(%ebp), %eax
	movl %eax, %ecx
	movl -68(%ebp), %eax
	movl %ecx, (%eax)
	movl -28(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -44(%ebp)
	movl -44(%ebp), %eax
	movl %eax, -40(%ebp)
	movl $1, %eax
	movl %eax, %ecx
	addl %ecx, -40(%ebp)
	movl -40(%ebp), %eax
	movl %eax, %ecx
	movl -28(%ebp), %eax
	movl %ecx, (%eax)
	jmp __cond1145
__fresh1149:
	jmp __post1143
__post1143:
	movl -4(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -112(%ebp)
	movl -112(%ebp), %eax
	movl %eax, -108(%ebp)
	movl $1, %eax
	movl %eax, %ecx
	addl %ecx, -108(%ebp)
	movl -108(%ebp), %eax
	movl %eax, %ecx
	movl -4(%ebp), %eax
	movl %ecx, (%eax)
	jmp __cond1142
__fresh1150:
	jmp __post1140
__post1140:
	movl %ebp, %esp
	popl %ebp
	ret
.globl _matrix_Mult
_matrix_Mult:
	pushl %ebp
	movl %esp, %ebp
	subl $276, %esp
__fresh1133:
	leal -268(%ebp), %eax
	movl %eax, -16(%ebp)
	movl 8(%ebp), %eax
	movl %eax, %ecx
	movl -16(%ebp), %eax
	movl %ecx, (%eax)
	leal -264(%ebp), %eax
	movl %eax, -12(%ebp)
	movl 12(%ebp), %eax
	movl %eax, %ecx
	movl -12(%ebp), %eax
	movl %ecx, (%eax)
	leal -260(%ebp), %eax
	movl %eax, -8(%ebp)
	movl 16(%ebp), %eax
	movl %eax, %ecx
	movl -8(%ebp), %eax
	movl %ecx, (%eax)
	leal -256(%ebp), %eax
	movl %eax, -4(%ebp)
	movl $0, %eax
	movl %eax, %ecx
	movl -4(%ebp), %eax
	movl %ecx, (%eax)
	jmp __cond1126
__cond1126:
	movl -4(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -24(%ebp)
	movl -24(%ebp), %eax
	movl %eax, %ecx
	movl $2, %eax
	cmpl %eax, %ecx
	setL -20(%ebp)
	andl $1, -20(%ebp)
	movl -20(%ebp), %eax
	cmpl $0, %eax
	jNE __body1125
	jmp __post1124
__fresh1134:
	jmp __body1125
__body1125:
	leal -272(%ebp), %eax
	movl %eax, -28(%ebp)
	movl $0, %eax
	movl %eax, %ecx
	movl -28(%ebp), %eax
	movl %ecx, (%eax)
	jmp __cond1129
__cond1129:
	movl -28(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -36(%ebp)
	movl -36(%ebp), %eax
	movl %eax, %ecx
	movl $4, %eax
	cmpl %eax, %ecx
	setL -32(%ebp)
	andl $1, -32(%ebp)
	movl -32(%ebp), %eax
	cmpl $0, %eax
	jNE __body1128
	jmp __post1127
__fresh1135:
	jmp __body1128
__body1128:
	leal -276(%ebp), %eax
	movl %eax, -40(%ebp)
	movl $0, %eax
	movl %eax, %ecx
	movl -40(%ebp), %eax
	movl %ecx, (%eax)
	jmp __cond1132
__cond1132:
	movl -40(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -48(%ebp)
	movl -48(%ebp), %eax
	movl %eax, %ecx
	movl $3, %eax
	cmpl %eax, %ecx
	setL -44(%ebp)
	andl $1, -44(%ebp)
	movl -44(%ebp), %eax
	cmpl $0, %eax
	jNE __body1131
	jmp __post1130
__fresh1136:
	jmp __body1131
__body1131:
	movl -4(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -236(%ebp)
	movl -8(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -232(%ebp)
	movl -232(%ebp), %eax
	addl $0, %eax
	movl %eax, -228(%ebp)
	movl -228(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -224(%ebp)
	pushl %edx
	pushl %ecx
	pushl %eax
	movl -236(%ebp), %eax
	pushl %eax
	movl -224(%ebp), %eax
	pushl %eax
	call _oat_array_bounds_check
	addl $8, %esp
	popl %eax
	popl %ecx
	popl %edx
	movl -232(%ebp), %eax
	addl $4, %eax
	movl %eax, %ecx
	movl -236(%ebp), %eax
	imull $4, %eax
	addl %ecx, %eax
	movl %eax, -220(%ebp)
	movl -28(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -216(%ebp)
	movl -220(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -212(%ebp)
	movl -212(%ebp), %eax
	addl $0, %eax
	movl %eax, -208(%ebp)
	movl -208(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -204(%ebp)
	pushl %edx
	pushl %ecx
	pushl %eax
	movl -216(%ebp), %eax
	pushl %eax
	movl -204(%ebp), %eax
	pushl %eax
	call _oat_array_bounds_check
	addl $8, %esp
	popl %eax
	popl %ecx
	popl %edx
	movl -212(%ebp), %eax
	addl $4, %eax
	movl %eax, %ecx
	movl -216(%ebp), %eax
	imull $4, %eax
	addl %ecx, %eax
	movl %eax, -200(%ebp)
	movl -4(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -196(%ebp)
	movl -8(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -192(%ebp)
	movl -192(%ebp), %eax
	addl $0, %eax
	movl %eax, -188(%ebp)
	movl -188(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -184(%ebp)
	pushl %edx
	pushl %ecx
	pushl %eax
	movl -196(%ebp), %eax
	pushl %eax
	movl -184(%ebp), %eax
	pushl %eax
	call _oat_array_bounds_check
	addl $8, %esp
	popl %eax
	popl %ecx
	popl %edx
	movl -192(%ebp), %eax
	addl $4, %eax
	movl %eax, %ecx
	movl -196(%ebp), %eax
	imull $4, %eax
	addl %ecx, %eax
	movl %eax, -180(%ebp)
	movl -28(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -176(%ebp)
	movl -180(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -172(%ebp)
	movl -172(%ebp), %eax
	addl $0, %eax
	movl %eax, -168(%ebp)
	movl -168(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -164(%ebp)
	pushl %edx
	pushl %ecx
	pushl %eax
	movl -176(%ebp), %eax
	pushl %eax
	movl -164(%ebp), %eax
	pushl %eax
	call _oat_array_bounds_check
	addl $8, %esp
	popl %eax
	popl %ecx
	popl %edx
	movl -172(%ebp), %eax
	addl $4, %eax
	movl %eax, %ecx
	movl -176(%ebp), %eax
	imull $4, %eax
	addl %ecx, %eax
	movl %eax, -160(%ebp)
	movl -160(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -156(%ebp)
	movl -4(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -152(%ebp)
	movl -16(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -148(%ebp)
	movl -148(%ebp), %eax
	addl $0, %eax
	movl %eax, -144(%ebp)
	movl -144(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -140(%ebp)
	pushl %edx
	pushl %ecx
	pushl %eax
	movl -152(%ebp), %eax
	pushl %eax
	movl -140(%ebp), %eax
	pushl %eax
	call _oat_array_bounds_check
	addl $8, %esp
	popl %eax
	popl %ecx
	popl %edx
	movl -148(%ebp), %eax
	addl $4, %eax
	movl %eax, %ecx
	movl -152(%ebp), %eax
	imull $4, %eax
	addl %ecx, %eax
	movl %eax, -136(%ebp)
	movl -40(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -132(%ebp)
	movl -136(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -128(%ebp)
	movl -128(%ebp), %eax
	addl $0, %eax
	movl %eax, -124(%ebp)
	movl -124(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -120(%ebp)
	pushl %edx
	pushl %ecx
	pushl %eax
	movl -132(%ebp), %eax
	pushl %eax
	movl -120(%ebp), %eax
	pushl %eax
	call _oat_array_bounds_check
	addl $8, %esp
	popl %eax
	popl %ecx
	popl %edx
	movl -128(%ebp), %eax
	addl $4, %eax
	movl %eax, %ecx
	movl -132(%ebp), %eax
	imull $4, %eax
	addl %ecx, %eax
	movl %eax, -116(%ebp)
	movl -116(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -112(%ebp)
	movl -40(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -108(%ebp)
	movl -12(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -104(%ebp)
	movl -104(%ebp), %eax
	addl $0, %eax
	movl %eax, -100(%ebp)
	movl -100(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -96(%ebp)
	pushl %edx
	pushl %ecx
	pushl %eax
	movl -108(%ebp), %eax
	pushl %eax
	movl -96(%ebp), %eax
	pushl %eax
	call _oat_array_bounds_check
	addl $8, %esp
	popl %eax
	popl %ecx
	popl %edx
	movl -104(%ebp), %eax
	addl $4, %eax
	movl %eax, %ecx
	movl -108(%ebp), %eax
	imull $4, %eax
	addl %ecx, %eax
	movl %eax, -92(%ebp)
	movl -28(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -88(%ebp)
	movl -92(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -84(%ebp)
	movl -84(%ebp), %eax
	addl $0, %eax
	movl %eax, -80(%ebp)
	movl -80(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -76(%ebp)
	pushl %edx
	pushl %ecx
	pushl %eax
	movl -88(%ebp), %eax
	pushl %eax
	movl -76(%ebp), %eax
	pushl %eax
	call _oat_array_bounds_check
	addl $8, %esp
	popl %eax
	popl %ecx
	popl %edx
	movl -84(%ebp), %eax
	addl $4, %eax
	movl %eax, %ecx
	movl -88(%ebp), %eax
	imull $4, %eax
	addl %ecx, %eax
	movl %eax, -72(%ebp)
	movl -72(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -68(%ebp)
	movl -112(%ebp), %eax
	movl %eax, -64(%ebp)
	movl -68(%ebp), %eax
	movl %eax, %ecx
	movl -64(%ebp), %eax
	imull %ecx, %eax
	movl %eax, -64(%ebp)
	movl -156(%ebp), %eax
	movl %eax, -60(%ebp)
	movl -64(%ebp), %eax
	movl %eax, %ecx
	addl %ecx, -60(%ebp)
	movl -60(%ebp), %eax
	movl %eax, %ecx
	movl -200(%ebp), %eax
	movl %ecx, (%eax)
	movl -40(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -56(%ebp)
	movl -56(%ebp), %eax
	movl %eax, -52(%ebp)
	movl $1, %eax
	movl %eax, %ecx
	addl %ecx, -52(%ebp)
	movl -52(%ebp), %eax
	movl %eax, %ecx
	movl -40(%ebp), %eax
	movl %ecx, (%eax)
	jmp __cond1132
__fresh1137:
	jmp __post1130
__post1130:
	movl -28(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -244(%ebp)
	movl -244(%ebp), %eax
	movl %eax, -240(%ebp)
	movl $1, %eax
	movl %eax, %ecx
	addl %ecx, -240(%ebp)
	movl -240(%ebp), %eax
	movl %eax, %ecx
	movl -28(%ebp), %eax
	movl %ecx, (%eax)
	jmp __cond1129
__fresh1138:
	jmp __post1127
__post1127:
	movl -4(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -252(%ebp)
	movl -252(%ebp), %eax
	movl %eax, -248(%ebp)
	movl $1, %eax
	movl %eax, %ecx
	addl %ecx, -248(%ebp)
	movl -248(%ebp), %eax
	movl %eax, %ecx
	movl -4(%ebp), %eax
	movl %ecx, (%eax)
	jmp __cond1126
__fresh1139:
	jmp __post1124
__post1124:
	movl %ebp, %esp
	popl %ebp
	ret
.globl _program
_program:
	pushl %ebp
	movl %esp, %ebp
	subl $284, %esp
__fresh1123:
	leal -284(%ebp), %eax
	movl %eax, -264(%ebp)
	movl 8(%ebp), %eax
	movl %eax, %ecx
	movl -264(%ebp), %eax
	movl %ecx, (%eax)
	leal -280(%ebp), %eax
	movl %eax, -260(%ebp)
	movl 12(%ebp), %eax
	movl %eax, %ecx
	movl -260(%ebp), %eax
	movl %ecx, (%eax)
	pushl %edx
	pushl %ecx
	pushl %eax
	movl $2, %eax
	pushl %eax
	call _oat_alloc_array
	movl %eax, -256(%ebp)
	addl $4, %esp
	popl %eax
	popl %ecx
	popl %edx
	movl -256(%ebp), %eax
	movl %eax, -252(%ebp)
	pushl %edx
	pushl %ecx
	pushl %eax
	movl $3, %eax
	pushl %eax
	call _oat_alloc_array
	movl %eax, -248(%ebp)
	addl $4, %esp
	popl %eax
	popl %ecx
	popl %edx
	movl -248(%ebp), %eax
	movl %eax, -244(%ebp)
	movl -244(%ebp), %eax
	addl $4, %eax
	addl $0, %eax
	movl %eax, -240(%ebp)
	movl $1, %eax
	movl %eax, %ecx
	movl -240(%ebp), %eax
	movl %ecx, (%eax)
	movl -244(%ebp), %eax
	addl $4, %eax
	addl $4, %eax
	movl %eax, -236(%ebp)
	movl $3, %eax
	movl %eax, %ecx
	movl -236(%ebp), %eax
	movl %ecx, (%eax)
	movl -244(%ebp), %eax
	addl $4, %eax
	addl $8, %eax
	movl %eax, -232(%ebp)
	movl $4, %eax
	movl %eax, %ecx
	movl -232(%ebp), %eax
	movl %ecx, (%eax)
	movl -252(%ebp), %eax
	addl $4, %eax
	addl $0, %eax
	movl %eax, -228(%ebp)
	movl -244(%ebp), %eax
	movl %eax, %ecx
	movl -228(%ebp), %eax
	movl %ecx, (%eax)
	pushl %edx
	pushl %ecx
	pushl %eax
	movl $3, %eax
	pushl %eax
	call _oat_alloc_array
	movl %eax, -224(%ebp)
	addl $4, %esp
	popl %eax
	popl %ecx
	popl %edx
	movl -224(%ebp), %eax
	movl %eax, -220(%ebp)
	movl -220(%ebp), %eax
	addl $4, %eax
	addl $0, %eax
	movl %eax, -216(%ebp)
	movl $2, %eax
	movl %eax, %ecx
	movl -216(%ebp), %eax
	movl %ecx, (%eax)
	movl -220(%ebp), %eax
	addl $4, %eax
	addl $4, %eax
	movl %eax, -212(%ebp)
	movl $0, %eax
	movl %eax, %ecx
	movl -212(%ebp), %eax
	movl %ecx, (%eax)
	movl -220(%ebp), %eax
	addl $4, %eax
	addl $8, %eax
	movl %eax, -208(%ebp)
	movl $1, %eax
	movl %eax, %ecx
	movl -208(%ebp), %eax
	movl %ecx, (%eax)
	movl -252(%ebp), %eax
	addl $4, %eax
	addl $4, %eax
	movl %eax, -204(%ebp)
	movl -220(%ebp), %eax
	movl %eax, %ecx
	movl -204(%ebp), %eax
	movl %ecx, (%eax)
	leal -276(%ebp), %eax
	movl %eax, -200(%ebp)
	movl -252(%ebp), %eax
	movl %eax, %ecx
	movl -200(%ebp), %eax
	movl %ecx, (%eax)
	pushl %edx
	pushl %ecx
	pushl %eax
	movl $3, %eax
	pushl %eax
	call _oat_alloc_array
	movl %eax, -196(%ebp)
	addl $4, %esp
	popl %eax
	popl %ecx
	popl %edx
	movl -196(%ebp), %eax
	movl %eax, -192(%ebp)
	pushl %edx
	pushl %ecx
	pushl %eax
	movl $4, %eax
	pushl %eax
	call _oat_alloc_array
	movl %eax, -188(%ebp)
	addl $4, %esp
	popl %eax
	popl %ecx
	popl %edx
	movl -188(%ebp), %eax
	movl %eax, -184(%ebp)
	movl -184(%ebp), %eax
	addl $4, %eax
	addl $0, %eax
	movl %eax, -180(%ebp)
	movl $1, %eax
	movl %eax, %ecx
	movl -180(%ebp), %eax
	movl %ecx, (%eax)
	movl -184(%ebp), %eax
	addl $4, %eax
	addl $4, %eax
	movl %eax, -176(%ebp)
	movl $2, %eax
	movl %eax, %ecx
	movl -176(%ebp), %eax
	movl %ecx, (%eax)
	movl -184(%ebp), %eax
	addl $4, %eax
	addl $8, %eax
	movl %eax, -172(%ebp)
	movl $3, %eax
	movl %eax, %ecx
	movl -172(%ebp), %eax
	movl %ecx, (%eax)
	movl -184(%ebp), %eax
	addl $4, %eax
	addl $12, %eax
	movl %eax, -168(%ebp)
	movl $1, %eax
	movl %eax, %ecx
	movl -168(%ebp), %eax
	movl %ecx, (%eax)
	movl -192(%ebp), %eax
	addl $4, %eax
	addl $0, %eax
	movl %eax, -164(%ebp)
	movl -184(%ebp), %eax
	movl %eax, %ecx
	movl -164(%ebp), %eax
	movl %ecx, (%eax)
	pushl %edx
	pushl %ecx
	pushl %eax
	movl $4, %eax
	pushl %eax
	call _oat_alloc_array
	movl %eax, -160(%ebp)
	addl $4, %esp
	popl %eax
	popl %ecx
	popl %edx
	movl -160(%ebp), %eax
	movl %eax, -156(%ebp)
	movl -156(%ebp), %eax
	addl $4, %eax
	addl $0, %eax
	movl %eax, -152(%ebp)
	movl $2, %eax
	movl %eax, %ecx
	movl -152(%ebp), %eax
	movl %ecx, (%eax)
	movl -156(%ebp), %eax
	addl $4, %eax
	addl $4, %eax
	movl %eax, -148(%ebp)
	movl $2, %eax
	movl %eax, %ecx
	movl -148(%ebp), %eax
	movl %ecx, (%eax)
	movl -156(%ebp), %eax
	addl $4, %eax
	addl $8, %eax
	movl %eax, -144(%ebp)
	movl $2, %eax
	movl %eax, %ecx
	movl -144(%ebp), %eax
	movl %ecx, (%eax)
	movl -156(%ebp), %eax
	addl $4, %eax
	addl $12, %eax
	movl %eax, -140(%ebp)
	movl $2, %eax
	movl %eax, %ecx
	movl -140(%ebp), %eax
	movl %ecx, (%eax)
	movl -192(%ebp), %eax
	addl $4, %eax
	addl $4, %eax
	movl %eax, -136(%ebp)
	movl -156(%ebp), %eax
	movl %eax, %ecx
	movl -136(%ebp), %eax
	movl %ecx, (%eax)
	pushl %edx
	pushl %ecx
	pushl %eax
	movl $4, %eax
	pushl %eax
	call _oat_alloc_array
	movl %eax, -132(%ebp)
	addl $4, %esp
	popl %eax
	popl %ecx
	popl %edx
	movl -132(%ebp), %eax
	movl %eax, -128(%ebp)
	movl -128(%ebp), %eax
	addl $4, %eax
	addl $0, %eax
	movl %eax, -124(%ebp)
	movl $3, %eax
	movl %eax, %ecx
	movl -124(%ebp), %eax
	movl %ecx, (%eax)
	movl -128(%ebp), %eax
	addl $4, %eax
	addl $4, %eax
	movl %eax, -120(%ebp)
	movl $2, %eax
	movl %eax, %ecx
	movl -120(%ebp), %eax
	movl %ecx, (%eax)
	movl -128(%ebp), %eax
	addl $4, %eax
	addl $8, %eax
	movl %eax, -116(%ebp)
	movl $1, %eax
	movl %eax, %ecx
	movl -116(%ebp), %eax
	movl %ecx, (%eax)
	movl -128(%ebp), %eax
	addl $4, %eax
	addl $12, %eax
	movl %eax, -112(%ebp)
	movl $4, %eax
	movl %eax, %ecx
	movl -112(%ebp), %eax
	movl %ecx, (%eax)
	movl -192(%ebp), %eax
	addl $4, %eax
	addl $8, %eax
	movl %eax, -108(%ebp)
	movl -128(%ebp), %eax
	movl %eax, %ecx
	movl -108(%ebp), %eax
	movl %ecx, (%eax)
	leal -272(%ebp), %eax
	movl %eax, -104(%ebp)
	movl -192(%ebp), %eax
	movl %eax, %ecx
	movl -104(%ebp), %eax
	movl %ecx, (%eax)
	pushl %edx
	pushl %ecx
	pushl %eax
	movl $2, %eax
	pushl %eax
	call _oat_alloc_array
	movl %eax, -100(%ebp)
	addl $4, %esp
	popl %eax
	popl %ecx
	popl %edx
	movl -100(%ebp), %eax
	movl %eax, -96(%ebp)
	pushl %edx
	pushl %ecx
	pushl %eax
	movl $4, %eax
	pushl %eax
	call _oat_alloc_array
	movl %eax, -92(%ebp)
	addl $4, %esp
	popl %eax
	popl %ecx
	popl %edx
	movl -92(%ebp), %eax
	movl %eax, -88(%ebp)
	movl -88(%ebp), %eax
	addl $4, %eax
	addl $0, %eax
	movl %eax, -84(%ebp)
	movl $0, %eax
	movl %eax, %ecx
	movl -84(%ebp), %eax
	movl %ecx, (%eax)
	movl -88(%ebp), %eax
	addl $4, %eax
	addl $4, %eax
	movl %eax, -80(%ebp)
	movl $0, %eax
	movl %eax, %ecx
	movl -80(%ebp), %eax
	movl %ecx, (%eax)
	movl -88(%ebp), %eax
	addl $4, %eax
	addl $8, %eax
	movl %eax, -76(%ebp)
	movl $0, %eax
	movl %eax, %ecx
	movl -76(%ebp), %eax
	movl %ecx, (%eax)
	movl -88(%ebp), %eax
	addl $4, %eax
	addl $12, %eax
	movl %eax, -72(%ebp)
	movl $0, %eax
	movl %eax, %ecx
	movl -72(%ebp), %eax
	movl %ecx, (%eax)
	movl -96(%ebp), %eax
	addl $4, %eax
	addl $0, %eax
	movl %eax, -68(%ebp)
	movl -88(%ebp), %eax
	movl %eax, %ecx
	movl -68(%ebp), %eax
	movl %ecx, (%eax)
	pushl %edx
	pushl %ecx
	pushl %eax
	movl $4, %eax
	pushl %eax
	call _oat_alloc_array
	movl %eax, -64(%ebp)
	addl $4, %esp
	popl %eax
	popl %ecx
	popl %edx
	movl -64(%ebp), %eax
	movl %eax, -60(%ebp)
	movl -60(%ebp), %eax
	addl $4, %eax
	addl $0, %eax
	movl %eax, -56(%ebp)
	movl $0, %eax
	movl %eax, %ecx
	movl -56(%ebp), %eax
	movl %ecx, (%eax)
	movl -60(%ebp), %eax
	addl $4, %eax
	addl $4, %eax
	movl %eax, -52(%ebp)
	movl $0, %eax
	movl %eax, %ecx
	movl -52(%ebp), %eax
	movl %ecx, (%eax)
	movl -60(%ebp), %eax
	addl $4, %eax
	addl $8, %eax
	movl %eax, -48(%ebp)
	movl $0, %eax
	movl %eax, %ecx
	movl -48(%ebp), %eax
	movl %ecx, (%eax)
	movl -60(%ebp), %eax
	addl $4, %eax
	addl $12, %eax
	movl %eax, -44(%ebp)
	movl $0, %eax
	movl %eax, %ecx
	movl -44(%ebp), %eax
	movl %ecx, (%eax)
	movl -96(%ebp), %eax
	addl $4, %eax
	addl $4, %eax
	movl %eax, -40(%ebp)
	movl -60(%ebp), %eax
	movl %eax, %ecx
	movl -40(%ebp), %eax
	movl %ecx, (%eax)
	leal -268(%ebp), %eax
	movl %eax, -36(%ebp)
	movl -96(%ebp), %eax
	movl %eax, %ecx
	movl -36(%ebp), %eax
	movl %ecx, (%eax)
	movl -36(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -32(%ebp)
	movl -104(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -28(%ebp)
	movl -200(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -24(%ebp)
	pushl %edx
	pushl %ecx
	pushl %eax
	movl -32(%ebp), %eax
	pushl %eax
	movl -28(%ebp), %eax
	pushl %eax
	movl -24(%ebp), %eax
	pushl %eax
	call _matrix_Mult
	addl $12, %esp
	popl %eax
	popl %ecx
	popl %edx
	movl -36(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -20(%ebp)
	pushl %edx
	pushl %ecx
	pushl %eax
	movl $2, %eax
	pushl %eax
	movl -20(%ebp), %eax
	pushl %eax
	call _prnNx4
	addl $8, %esp
	popl %eax
	popl %ecx
	popl %edx
	movl -36(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -16(%ebp)
	movl -104(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -12(%ebp)
	movl -200(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -8(%ebp)
	pushl %edx
	pushl %ecx
	pushl %eax
	movl -16(%ebp), %eax
	pushl %eax
	movl -12(%ebp), %eax
	pushl %eax
	movl -8(%ebp), %eax
	pushl %eax
	call _matrix_MultAlt
	addl $12, %esp
	popl %eax
	popl %ecx
	popl %edx
	movl -36(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -4(%ebp)
	pushl %edx
	pushl %ecx
	pushl %eax
	movl $2, %eax
	pushl %eax
	movl -4(%ebp), %eax
	pushl %eax
	call _prnNx4
	addl $8, %esp
	popl %eax
	popl %ecx
	popl %edx
	movl $0, %eax
	movl %ebp, %esp
	popl %ebp
	ret
