	.align 4
	.text
.globl _oat_init
_oat_init:
	pushl %ebp
	movl %esp, %ebp
	subl $0, %esp
__fresh1105:
	movl %ebp, %esp
	popl %ebp
	ret
.globl _program
_program:
	pushl %ebp
	movl %esp, %ebp
	subl $116, %esp
__fresh1102:
	leal -116(%ebp), %eax
	movl %eax, -60(%ebp)
	movl 8(%ebp), %eax
	movl %eax, %ecx
	movl -60(%ebp), %eax
	movl %ecx, (%eax)
	leal -112(%ebp), %eax
	movl %eax, -56(%ebp)
	movl 12(%ebp), %eax
	movl %eax, %ecx
	movl -56(%ebp), %eax
	movl %ecx, (%eax)
	pushl %edx
	pushl %ecx
	pushl %eax
	movl $8, %eax
	pushl %eax
	call _oat_alloc_array
	movl %eax, -52(%ebp)
	addl $4, %esp
	popl %eax
	popl %ecx
	popl %edx
	movl %eax, -48(%ebp)
	movl -52(%ebp), %eax
	movl -48(%ebp), %eax
	addl $4, %eax
	addl $0, %eax
	movl %eax, -44(%ebp)
	movl $5, %eax
	movl %eax, %ecx
	movl -44(%ebp), %eax
	movl %ecx, (%eax)
	movl -48(%ebp), %eax
	addl $4, %eax
	addl $4, %eax
	movl %eax, -40(%ebp)
	movl $200, %eax
	movl %eax, %ecx
	movl -40(%ebp), %eax
	movl %ecx, (%eax)
	movl -48(%ebp), %eax
	addl $4, %eax
	addl $8, %eax
	movl %eax, -36(%ebp)
	movl $1, %eax
	movl %eax, %ecx
	movl -36(%ebp), %eax
	movl %ecx, (%eax)
	movl -48(%ebp), %eax
	addl $4, %eax
	addl $12, %eax
	movl %eax, -32(%ebp)
	movl $65, %eax
	movl %eax, %ecx
	movl -32(%ebp), %eax
	movl %ecx, (%eax)
	movl -48(%ebp), %eax
	addl $4, %eax
	addl $16, %eax
	movl %eax, -28(%ebp)
	movl $30, %eax
	movl %eax, %ecx
	movl -28(%ebp), %eax
	movl %ecx, (%eax)
	movl -48(%ebp), %eax
	addl $4, %eax
	addl $20, %eax
	movl %eax, -24(%ebp)
	movl $99, %eax
	movl %eax, %ecx
	movl -24(%ebp), %eax
	movl %ecx, (%eax)
	movl -48(%ebp), %eax
	addl $4, %eax
	addl $24, %eax
	movl %eax, -20(%ebp)
	movl $2, %eax
	movl %eax, %ecx
	movl -20(%ebp), %eax
	movl %ecx, (%eax)
	movl -48(%ebp), %eax
	addl $4, %eax
	addl $28, %eax
	movl %eax, -16(%ebp)
	movl $0, %eax
	movl %eax, %ecx
	movl -16(%ebp), %eax
	movl %ecx, (%eax)
	leal -108(%ebp), %eax
	movl %eax, -12(%ebp)
	movl -48(%ebp), %eax
	movl %eax, %ecx
	movl -12(%ebp), %eax
	movl %ecx, (%eax)
	movl -12(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -8(%ebp)
	pushl %edx
	pushl %ecx
	pushl %eax
	movl $8, %eax
	pushl %eax
	movl -8(%ebp), %eax
	pushl %eax
	call _selectionsort
	addl $8, %esp
	popl %eax
	popl %ecx
	popl %edx
	leal -104(%ebp), %eax
	movl %eax, -4(%ebp)
	movl $0, %eax
	movl %eax, %ecx
	movl -4(%ebp), %eax
	movl %ecx, (%eax)
	jmp __cond1101
__cond1101:
	movl -4(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -68(%ebp)
	movl -68(%ebp), %eax
	movl %eax, %ecx
	movl $8, %eax
	cmpl %eax, %ecx
	setL -64(%ebp)
	andl $1, -64(%ebp)
	movl -64(%ebp), %eax
	cmpl $0, %eax
	jNE __body1100
	jmp __post1099
__fresh1103:
	jmp __body1100
__body1100:
	movl -4(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -100(%ebp)
	movl -12(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -96(%ebp)
	movl -96(%ebp), %eax
	addl $0, %eax
	movl %eax, -92(%ebp)
	movl -92(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -88(%ebp)
	pushl %edx
	pushl %ecx
	pushl %eax
	movl -100(%ebp), %eax
	pushl %eax
	movl -88(%ebp), %eax
	pushl %eax
	call _oat_array_bounds_check
	addl $8, %esp
	popl %eax
	popl %ecx
	popl %edx
	movl -96(%ebp), %eax
	addl $4, %eax
	movl %eax, %ecx
	movl -100(%ebp), %eax
	imull $4, %eax
	addl %ecx, %eax
	movl %eax, -84(%ebp)
	movl -84(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -80(%ebp)
	pushl %edx
	pushl %ecx
	pushl %eax
	movl -80(%ebp), %eax
	pushl %eax
	call _print_int
	addl $4, %esp
	popl %eax
	popl %ecx
	popl %edx
	movl -4(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -76(%ebp)
	movl -76(%ebp), %eax
	movl %eax, -72(%ebp)
	movl $1, %eax
	movl %eax, %ecx
	addl %ecx, -72(%ebp)
	movl -72(%ebp), %eax
	movl %eax, %ecx
	movl -4(%ebp), %eax
	movl %ecx, (%eax)
	jmp __cond1101
__fresh1104:
	jmp __post1099
__post1099:
	movl $0, %eax
	movl %ebp, %esp
	popl %ebp
	ret
.globl _selectionsort
_selectionsort:
	pushl %ebp
	movl %esp, %ebp
	subl $168, %esp
__fresh1096:
	leal -168(%ebp), %eax
	movl %eax, -20(%ebp)
	movl 8(%ebp), %eax
	movl %eax, %ecx
	movl -20(%ebp), %eax
	movl %ecx, (%eax)
	leal -164(%ebp), %eax
	movl %eax, -16(%ebp)
	movl 12(%ebp), %eax
	movl %eax, %ecx
	movl -16(%ebp), %eax
	movl %ecx, (%eax)
	leal -160(%ebp), %eax
	movl %eax, -12(%ebp)
	movl $0, %eax
	movl %eax, %ecx
	movl -12(%ebp), %eax
	movl %ecx, (%eax)
	leal -156(%ebp), %eax
	movl %eax, -8(%ebp)
	movl $0, %eax
	movl %eax, %ecx
	movl -8(%ebp), %eax
	movl %ecx, (%eax)
	leal -152(%ebp), %eax
	movl %eax, -4(%ebp)
	movl $0, %eax
	movl %eax, %ecx
	movl -4(%ebp), %eax
	movl %ecx, (%eax)
	jmp __cond1095
__cond1095:
	movl -4(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -32(%ebp)
	movl -16(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -28(%ebp)
	movl -32(%ebp), %eax
	movl %eax, %ecx
	movl -28(%ebp), %eax
	cmpl %eax, %ecx
	setL -24(%ebp)
	andl $1, -24(%ebp)
	movl -24(%ebp), %eax
	cmpl $0, %eax
	jNE __body1094
	jmp __post1093
__fresh1097:
	jmp __body1094
__body1094:
	movl -16(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -148(%ebp)
	movl -4(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -144(%ebp)
	movl -20(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -140(%ebp)
	pushl %edx
	pushl %ecx
	pushl %eax
	movl -148(%ebp), %eax
	pushl %eax
	movl -144(%ebp), %eax
	pushl %eax
	movl -140(%ebp), %eax
	pushl %eax
	call _getminindex
	movl %eax, -136(%ebp)
	addl $12, %esp
	popl %eax
	popl %ecx
	popl %edx
	movl -136(%ebp), %eax
	movl %eax, %ecx
	movl -8(%ebp), %eax
	movl %ecx, (%eax)
	movl -4(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -132(%ebp)
	movl -20(%ebp), %eax
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
	movl -112(%ebp), %eax
	movl %eax, %ecx
	movl -12(%ebp), %eax
	movl %ecx, (%eax)
	movl -4(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -108(%ebp)
	movl -20(%ebp), %eax
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
	movl -8(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -88(%ebp)
	movl -20(%ebp), %eax
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
	movl -68(%ebp), %eax
	movl %eax, %ecx
	movl -92(%ebp), %eax
	movl %ecx, (%eax)
	movl -8(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -64(%ebp)
	movl -20(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -60(%ebp)
	movl -60(%ebp), %eax
	addl $0, %eax
	movl %eax, -56(%ebp)
	movl -56(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -52(%ebp)
	pushl %edx
	pushl %ecx
	pushl %eax
	movl -64(%ebp), %eax
	pushl %eax
	movl -52(%ebp), %eax
	pushl %eax
	call _oat_array_bounds_check
	addl $8, %esp
	popl %eax
	popl %ecx
	popl %edx
	movl -60(%ebp), %eax
	addl $4, %eax
	movl %eax, %ecx
	movl -64(%ebp), %eax
	imull $4, %eax
	addl %ecx, %eax
	movl %eax, -48(%ebp)
	movl -12(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -44(%ebp)
	movl -44(%ebp), %eax
	movl %eax, %ecx
	movl -48(%ebp), %eax
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
	jmp __cond1095
__fresh1098:
	jmp __post1093
__post1093:
	movl %ebp, %esp
	popl %ebp
	ret
.globl _getminindex
_getminindex:
	pushl %ebp
	movl %esp, %ebp
	subl $164, %esp
__fresh1088:
	leal -164(%ebp), %eax
	movl %eax, -56(%ebp)
	movl 8(%ebp), %eax
	movl %eax, %ecx
	movl -56(%ebp), %eax
	movl %ecx, (%eax)
	leal -160(%ebp), %eax
	movl %eax, -52(%ebp)
	movl 12(%ebp), %eax
	movl %eax, %ecx
	movl -52(%ebp), %eax
	movl %ecx, (%eax)
	leal -156(%ebp), %eax
	movl %eax, -48(%ebp)
	movl 16(%ebp), %eax
	movl %eax, %ecx
	movl -48(%ebp), %eax
	movl %ecx, (%eax)
	movl -52(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -44(%ebp)
	leal -152(%ebp), %eax
	movl %eax, -40(%ebp)
	movl -44(%ebp), %eax
	movl %eax, %ecx
	movl -40(%ebp), %eax
	movl %ecx, (%eax)
	movl -52(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -36(%ebp)
	movl -56(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -32(%ebp)
	movl -32(%ebp), %eax
	addl $0, %eax
	movl %eax, -28(%ebp)
	movl -28(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -24(%ebp)
	pushl %edx
	pushl %ecx
	pushl %eax
	movl -36(%ebp), %eax
	pushl %eax
	movl -24(%ebp), %eax
	pushl %eax
	call _oat_array_bounds_check
	addl $8, %esp
	popl %eax
	popl %ecx
	popl %edx
	movl -32(%ebp), %eax
	addl $4, %eax
	movl %eax, %ecx
	movl -36(%ebp), %eax
	imull $4, %eax
	addl %ecx, %eax
	movl %eax, -20(%ebp)
	movl -20(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -16(%ebp)
	leal -148(%ebp), %eax
	movl %eax, -12(%ebp)
	movl -16(%ebp), %eax
	movl %eax, %ecx
	movl -12(%ebp), %eax
	movl %ecx, (%eax)
	movl -52(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -8(%ebp)
	leal -144(%ebp), %eax
	movl %eax, -4(%ebp)
	movl -8(%ebp), %eax
	movl %eax, %ecx
	movl -4(%ebp), %eax
	movl %ecx, (%eax)
	jmp __cond1084
__cond1084:
	movl -40(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -68(%ebp)
	movl -48(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -64(%ebp)
	movl -68(%ebp), %eax
	movl %eax, %ecx
	movl -64(%ebp), %eax
	cmpl %eax, %ecx
	setL -60(%ebp)
	andl $1, -60(%ebp)
	movl -60(%ebp), %eax
	cmpl $0, %eax
	jNE __body1083
	jmp __post1082
__fresh1089:
	jmp __body1083
__body1083:
	movl -40(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -100(%ebp)
	movl -56(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -96(%ebp)
	movl -96(%ebp), %eax
	addl $0, %eax
	movl %eax, -92(%ebp)
	movl -92(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -88(%ebp)
	pushl %edx
	pushl %ecx
	pushl %eax
	movl -100(%ebp), %eax
	pushl %eax
	movl -88(%ebp), %eax
	pushl %eax
	call _oat_array_bounds_check
	addl $8, %esp
	popl %eax
	popl %ecx
	popl %edx
	movl -96(%ebp), %eax
	addl $4, %eax
	movl %eax, %ecx
	movl -100(%ebp), %eax
	imull $4, %eax
	addl %ecx, %eax
	movl %eax, -84(%ebp)
	movl -84(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -80(%ebp)
	movl -12(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -76(%ebp)
	movl -80(%ebp), %eax
	movl %eax, %ecx
	movl -76(%ebp), %eax
	cmpl %eax, %ecx
	setL -72(%ebp)
	andl $1, -72(%ebp)
	movl -72(%ebp), %eax
	cmpl $0, %eax
	jNE __then1087
	jmp __else1086
__fresh1090:
	jmp __then1087
__then1087:
	movl -40(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -128(%ebp)
	movl -56(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -124(%ebp)
	movl -124(%ebp), %eax
	addl $0, %eax
	movl %eax, -120(%ebp)
	movl -120(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -116(%ebp)
	pushl %edx
	pushl %ecx
	pushl %eax
	movl -128(%ebp), %eax
	pushl %eax
	movl -116(%ebp), %eax
	pushl %eax
	call _oat_array_bounds_check
	addl $8, %esp
	popl %eax
	popl %ecx
	popl %edx
	movl -124(%ebp), %eax
	addl $4, %eax
	movl %eax, %ecx
	movl -128(%ebp), %eax
	imull $4, %eax
	addl %ecx, %eax
	movl %eax, -112(%ebp)
	movl -112(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -108(%ebp)
	movl -108(%ebp), %eax
	movl %eax, %ecx
	movl -12(%ebp), %eax
	movl %ecx, (%eax)
	movl -40(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -104(%ebp)
	movl -104(%ebp), %eax
	movl %eax, %ecx
	movl -4(%ebp), %eax
	movl %ecx, (%eax)
	jmp __merge1085
__fresh1091:
	jmp __else1086
__else1086:
	jmp __merge1085
__merge1085:
	movl -40(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -136(%ebp)
	movl -136(%ebp), %eax
	movl %eax, -132(%ebp)
	movl $1, %eax
	movl %eax, %ecx
	addl %ecx, -132(%ebp)
	movl -132(%ebp), %eax
	movl %eax, %ecx
	movl -40(%ebp), %eax
	movl %ecx, (%eax)
	jmp __cond1084
__fresh1092:
	jmp __post1082
__post1082:
	movl -4(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -140(%ebp)
	movl -140(%ebp), %eax
	movl %ebp, %esp
	popl %ebp
	ret
