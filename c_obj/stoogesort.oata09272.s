	.align 4
	.text
.globl _oat_init
_oat_init:
	pushl %ebp
	movl %esp, %ebp
	subl $0, %esp
__fresh1073:
	movl %ebp, %esp
	popl %ebp
	ret
.globl _program
_program:
	pushl %ebp
	movl %esp, %ebp
	subl $196, %esp
__fresh1070:
	leal -196(%ebp), %eax
	movl %eax, -128(%ebp)
	movl 8(%ebp), %eax
	movl %eax, %ecx
	movl -128(%ebp), %eax
	movl %ecx, (%eax)
	leal -192(%ebp), %eax
	movl %eax, -124(%ebp)
	movl 12(%ebp), %eax
	movl %eax, %ecx
	movl -124(%ebp), %eax
	movl %ecx, (%eax)
	pushl %edx
	pushl %ecx
	pushl %eax
	movl $15, %eax
	pushl %eax
	call _oat_alloc_array
	movl %eax, -120(%ebp)
	addl $4, %esp
	popl %eax
	popl %ecx
	popl %edx
	movl -120(%ebp), %eax
	movl %eax, -116(%ebp)
	movl -116(%ebp), %eax
	addl $4, %eax
	addl $0, %eax
	movl %eax, -112(%ebp)
	movl $1, %eax
	movl %eax, %ecx
	movl -112(%ebp), %eax
	movl %ecx, (%eax)
	movl -116(%ebp), %eax
	addl $4, %eax
	addl $4, %eax
	movl %eax, -108(%ebp)
	movl $4, %eax
	movl %eax, %ecx
	movl -108(%ebp), %eax
	movl %ecx, (%eax)
	movl -116(%ebp), %eax
	addl $4, %eax
	addl $8, %eax
	movl %eax, -104(%ebp)
	movl $5, %eax
	movl %eax, %ecx
	movl -104(%ebp), %eax
	movl %ecx, (%eax)
	movl -116(%ebp), %eax
	addl $4, %eax
	addl $12, %eax
	movl %eax, -100(%ebp)
	movl $3, %eax
	movl %eax, %ecx
	movl -100(%ebp), %eax
	movl %ecx, (%eax)
	movl $0, %eax
	movl %eax, -96(%ebp)
	movl $6, %eax
	movl %eax, %ecx
	subl %ecx, -96(%ebp)
	movl -116(%ebp), %eax
	addl $4, %eax
	addl $16, %eax
	movl %eax, -92(%ebp)
	movl -96(%ebp), %eax
	movl %eax, %ecx
	movl -92(%ebp), %eax
	movl %ecx, (%eax)
	movl -116(%ebp), %eax
	addl $4, %eax
	addl $20, %eax
	movl %eax, -88(%ebp)
	movl $3, %eax
	movl %eax, %ecx
	movl -88(%ebp), %eax
	movl %ecx, (%eax)
	movl -116(%ebp), %eax
	addl $4, %eax
	addl $24, %eax
	movl %eax, -84(%ebp)
	movl $7, %eax
	movl %eax, %ecx
	movl -84(%ebp), %eax
	movl %ecx, (%eax)
	movl -116(%ebp), %eax
	addl $4, %eax
	addl $28, %eax
	movl %eax, -80(%ebp)
	movl $10, %eax
	movl %eax, %ecx
	movl -80(%ebp), %eax
	movl %ecx, (%eax)
	movl $0, %eax
	movl %eax, -76(%ebp)
	movl $2, %eax
	movl %eax, %ecx
	subl %ecx, -76(%ebp)
	movl -116(%ebp), %eax
	addl $4, %eax
	addl $32, %eax
	movl %eax, -72(%ebp)
	movl -76(%ebp), %eax
	movl %eax, %ecx
	movl -72(%ebp), %eax
	movl %ecx, (%eax)
	movl $0, %eax
	movl %eax, -68(%ebp)
	movl $5, %eax
	movl %eax, %ecx
	subl %ecx, -68(%ebp)
	movl -116(%ebp), %eax
	addl $4, %eax
	addl $36, %eax
	movl %eax, -64(%ebp)
	movl -68(%ebp), %eax
	movl %eax, %ecx
	movl -64(%ebp), %eax
	movl %ecx, (%eax)
	movl -116(%ebp), %eax
	addl $4, %eax
	addl $40, %eax
	movl %eax, -60(%ebp)
	movl $7, %eax
	movl %eax, %ecx
	movl -60(%ebp), %eax
	movl %ecx, (%eax)
	movl -116(%ebp), %eax
	addl $4, %eax
	addl $44, %eax
	movl %eax, -56(%ebp)
	movl $5, %eax
	movl %eax, %ecx
	movl -56(%ebp), %eax
	movl %ecx, (%eax)
	movl -116(%ebp), %eax
	addl $4, %eax
	addl $48, %eax
	movl %eax, -52(%ebp)
	movl $9, %eax
	movl %eax, %ecx
	movl -52(%ebp), %eax
	movl %ecx, (%eax)
	movl $0, %eax
	movl %eax, -48(%ebp)
	movl $3, %eax
	movl %eax, %ecx
	subl %ecx, -48(%ebp)
	movl -116(%ebp), %eax
	addl $4, %eax
	addl $52, %eax
	movl %eax, -44(%ebp)
	movl -48(%ebp), %eax
	movl %eax, %ecx
	movl -44(%ebp), %eax
	movl %ecx, (%eax)
	movl -116(%ebp), %eax
	addl $4, %eax
	addl $56, %eax
	movl %eax, -40(%ebp)
	movl $7, %eax
	movl %eax, %ecx
	movl -40(%ebp), %eax
	movl %ecx, (%eax)
	leal -188(%ebp), %eax
	movl %eax, -36(%ebp)
	movl -116(%ebp), %eax
	movl %eax, %ecx
	movl -36(%ebp), %eax
	movl %ecx, (%eax)
	leal -184(%ebp), %eax
	movl %eax, -32(%ebp)
	movl $0, %eax
	movl %eax, %ecx
	movl -32(%ebp), %eax
	movl %ecx, (%eax)
	movl -36(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -28(%ebp)
	movl -28(%ebp), %eax
	addl $0, %eax
	movl %eax, -24(%ebp)
	movl -24(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -20(%ebp)
	leal -180(%ebp), %eax
	movl %eax, -16(%ebp)
	movl -20(%ebp), %eax
	movl %eax, %ecx
	movl -16(%ebp), %eax
	movl %ecx, (%eax)
	movl -16(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -12(%ebp)
	movl -12(%ebp), %eax
	movl %eax, -8(%ebp)
	movl $1, %eax
	movl %eax, %ecx
	subl %ecx, -8(%ebp)
	movl -36(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -4(%ebp)
	pushl %edx
	pushl %ecx
	pushl %eax
	movl -8(%ebp), %eax
	pushl %eax
	movl $0, %eax
	pushl %eax
	movl -4(%ebp), %eax
	pushl %eax
	call _stoogeSort
	addl $12, %esp
	popl %eax
	popl %ecx
	popl %edx
	movl $0, %eax
	movl %eax, %ecx
	movl -32(%ebp), %eax
	movl %ecx, (%eax)
	jmp __cond1069
__cond1069:
	movl -32(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -144(%ebp)
	movl -16(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -140(%ebp)
	movl -140(%ebp), %eax
	movl %eax, -136(%ebp)
	movl $1, %eax
	movl %eax, %ecx
	subl %ecx, -136(%ebp)
	movl -144(%ebp), %eax
	movl %eax, %ecx
	movl -136(%ebp), %eax
	cmpl %eax, %ecx
	setLE -132(%ebp)
	andl $1, -132(%ebp)
	movl -132(%ebp), %eax
	cmpl $0, %eax
	jNE __body1068
	jmp __post1067
__fresh1071:
	jmp __body1068
__body1068:
	movl -32(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -176(%ebp)
	movl -36(%ebp), %eax
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
	pushl %edx
	pushl %ecx
	pushl %eax
	movl -156(%ebp), %eax
	pushl %eax
	call _print_int
	addl $4, %esp
	popl %eax
	popl %ecx
	popl %edx
	movl -32(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -152(%ebp)
	movl -152(%ebp), %eax
	movl %eax, -148(%ebp)
	movl $1, %eax
	movl %eax, %ecx
	addl %ecx, -148(%ebp)
	movl -148(%ebp), %eax
	movl %eax, %ecx
	movl -32(%ebp), %eax
	movl %ecx, (%eax)
	jmp __cond1069
__fresh1072:
	jmp __post1067
__post1067:
	movl $0, %eax
	movl %ebp, %esp
	popl %ebp
	ret
.globl _stoogeSort
_stoogeSort:
	pushl %ebp
	movl %esp, %ebp
	subl $272, %esp
__fresh1062:
	leal -272(%ebp), %eax
	movl %eax, -68(%ebp)
	movl 8(%ebp), %eax
	movl %eax, %ecx
	movl -68(%ebp), %eax
	movl %ecx, (%eax)
	leal -268(%ebp), %eax
	movl %eax, -64(%ebp)
	movl 12(%ebp), %eax
	movl %eax, %ecx
	movl -64(%ebp), %eax
	movl %ecx, (%eax)
	leal -264(%ebp), %eax
	movl %eax, -60(%ebp)
	movl 16(%ebp), %eax
	movl %eax, %ecx
	movl -60(%ebp), %eax
	movl %ecx, (%eax)
	leal -260(%ebp), %eax
	movl %eax, -56(%ebp)
	movl $0, %eax
	movl %eax, %ecx
	movl -56(%ebp), %eax
	movl %ecx, (%eax)
	movl -60(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -52(%ebp)
	movl -68(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -48(%ebp)
	movl -48(%ebp), %eax
	addl $0, %eax
	movl %eax, -44(%ebp)
	movl -44(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -40(%ebp)
	pushl %edx
	pushl %ecx
	pushl %eax
	movl -52(%ebp), %eax
	pushl %eax
	movl -40(%ebp), %eax
	pushl %eax
	call _oat_array_bounds_check
	addl $8, %esp
	popl %eax
	popl %ecx
	popl %edx
	movl -48(%ebp), %eax
	addl $4, %eax
	movl %eax, %ecx
	movl -52(%ebp), %eax
	imull $4, %eax
	addl %ecx, %eax
	movl %eax, -36(%ebp)
	movl -36(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -32(%ebp)
	movl -64(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -28(%ebp)
	movl -68(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -24(%ebp)
	movl -24(%ebp), %eax
	addl $0, %eax
	movl %eax, -20(%ebp)
	movl -20(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -16(%ebp)
	pushl %edx
	pushl %ecx
	pushl %eax
	movl -28(%ebp), %eax
	pushl %eax
	movl -16(%ebp), %eax
	pushl %eax
	call _oat_array_bounds_check
	addl $8, %esp
	popl %eax
	popl %ecx
	popl %edx
	movl -24(%ebp), %eax
	addl $4, %eax
	movl %eax, %ecx
	movl -28(%ebp), %eax
	imull $4, %eax
	addl %ecx, %eax
	movl %eax, -12(%ebp)
	movl -12(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -8(%ebp)
	movl -32(%ebp), %eax
	movl %eax, %ecx
	movl -8(%ebp), %eax
	cmpl %eax, %ecx
	setL -4(%ebp)
	andl $1, -4(%ebp)
	movl -4(%ebp), %eax
	cmpl $0, %eax
	jNE __then1058
	jmp __else1057
__fresh1063:
	jmp __then1058
__then1058:
	movl -64(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -160(%ebp)
	movl -68(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -156(%ebp)
	movl -156(%ebp), %eax
	addl $0, %eax
	movl %eax, -152(%ebp)
	movl -152(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -148(%ebp)
	pushl %edx
	pushl %ecx
	pushl %eax
	movl -160(%ebp), %eax
	pushl %eax
	movl -148(%ebp), %eax
	pushl %eax
	call _oat_array_bounds_check
	addl $8, %esp
	popl %eax
	popl %ecx
	popl %edx
	movl -156(%ebp), %eax
	addl $4, %eax
	movl %eax, %ecx
	movl -160(%ebp), %eax
	imull $4, %eax
	addl %ecx, %eax
	movl %eax, -144(%ebp)
	movl -144(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -140(%ebp)
	movl -140(%ebp), %eax
	movl %eax, %ecx
	movl -56(%ebp), %eax
	movl %ecx, (%eax)
	movl -64(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -136(%ebp)
	movl -68(%ebp), %eax
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
	movl -60(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -116(%ebp)
	movl -68(%ebp), %eax
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
	movl -96(%ebp), %eax
	movl %eax, %ecx
	movl -120(%ebp), %eax
	movl %ecx, (%eax)
	movl -60(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -92(%ebp)
	movl -68(%ebp), %eax
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
	movl -56(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -72(%ebp)
	movl -72(%ebp), %eax
	movl %eax, %ecx
	movl -76(%ebp), %eax
	movl %ecx, (%eax)
	jmp __merge1056
__fresh1064:
	jmp __else1057
__else1057:
	jmp __merge1056
__merge1056:
	movl -60(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -176(%ebp)
	movl -64(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -172(%ebp)
	movl -176(%ebp), %eax
	movl %eax, -168(%ebp)
	movl -172(%ebp), %eax
	movl %eax, %ecx
	subl %ecx, -168(%ebp)
	movl -168(%ebp), %eax
	movl %eax, %ecx
	movl $1, %eax
	cmpl %eax, %ecx
	setG -164(%ebp)
	andl $1, -164(%ebp)
	movl -164(%ebp), %eax
	cmpl $0, %eax
	jNE __then1061
	jmp __else1060
__fresh1065:
	jmp __then1061
__then1061:
	movl -60(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -256(%ebp)
	movl -64(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -252(%ebp)
	movl -256(%ebp), %eax
	movl %eax, -248(%ebp)
	movl -252(%ebp), %eax
	movl %eax, %ecx
	subl %ecx, -248(%ebp)
	movl -248(%ebp), %eax
	movl %eax, -244(%ebp)
	movl $1, %eax
	movl %eax, %ecx
	addl %ecx, -244(%ebp)
	movl -244(%ebp), %eax
	movl %eax, -240(%ebp)
	movl $1, %eax
	movl %eax, %ecx
	sarl %cl, -240(%ebp)
	movl -240(%ebp), %eax
	movl %eax, %ecx
	movl -56(%ebp), %eax
	movl %ecx, (%eax)
	movl -60(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -236(%ebp)
	movl -56(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -232(%ebp)
	movl -236(%ebp), %eax
	movl %eax, -228(%ebp)
	movl -232(%ebp), %eax
	movl %eax, %ecx
	subl %ecx, -228(%ebp)
	movl -64(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -224(%ebp)
	movl -68(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -220(%ebp)
	pushl %edx
	pushl %ecx
	pushl %eax
	movl -228(%ebp), %eax
	pushl %eax
	movl -224(%ebp), %eax
	pushl %eax
	movl -220(%ebp), %eax
	pushl %eax
	call _stoogeSort
	addl $12, %esp
	popl %eax
	popl %ecx
	popl %edx
	movl -60(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -216(%ebp)
	movl -64(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -212(%ebp)
	movl -56(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -208(%ebp)
	movl -212(%ebp), %eax
	movl %eax, -204(%ebp)
	movl -208(%ebp), %eax
	movl %eax, %ecx
	addl %ecx, -204(%ebp)
	movl -68(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -200(%ebp)
	pushl %edx
	pushl %ecx
	pushl %eax
	movl -216(%ebp), %eax
	pushl %eax
	movl -204(%ebp), %eax
	pushl %eax
	movl -200(%ebp), %eax
	pushl %eax
	call _stoogeSort
	addl $12, %esp
	popl %eax
	popl %ecx
	popl %edx
	movl -60(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -196(%ebp)
	movl -56(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -192(%ebp)
	movl -196(%ebp), %eax
	movl %eax, -188(%ebp)
	movl -192(%ebp), %eax
	movl %eax, %ecx
	subl %ecx, -188(%ebp)
	movl -64(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -184(%ebp)
	movl -68(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -180(%ebp)
	pushl %edx
	pushl %ecx
	pushl %eax
	movl -188(%ebp), %eax
	pushl %eax
	movl -184(%ebp), %eax
	pushl %eax
	movl -180(%ebp), %eax
	pushl %eax
	call _stoogeSort
	addl $12, %esp
	popl %eax
	popl %ecx
	popl %edx
	jmp __merge1059
__fresh1066:
	jmp __else1060
__else1060:
	jmp __merge1059
__merge1059:
	movl %ebp, %esp
	popl %ebp
	ret
