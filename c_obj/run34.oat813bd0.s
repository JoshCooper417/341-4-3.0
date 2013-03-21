	.align 4
	.text
.globl _oat_init
_oat_init:
	pushl %ebp
	movl %esp, %ebp
	subl $0, %esp
__fresh71:
	movl %ebp, %esp
	popl %ebp
	ret
.globl _program
_program:
	pushl %ebp
	movl %esp, %ebp
	subl $228, %esp
__fresh66:
	leal -224(%ebp), %eax
	movl %eax, -112(%ebp)
	movl 8(%ebp), %eax
	movl %eax, %ecx
	movl -112(%ebp), %eax
	movl %ecx, (%eax)
	leal -220(%ebp), %eax
	movl %eax, -108(%ebp)
	movl 12(%ebp), %eax
	movl %eax, %ecx
	movl -108(%ebp), %eax
	movl %ecx, (%eax)
	pushl %edx
	pushl %ecx
	pushl %eax
	movl $3, %eax
	pushl %eax
	call _oat_alloc_array
	movl %eax, -104(%ebp)
	addl $4, %esp
	popl %eax
	popl %ecx
	popl %edx
	movl -104(%ebp), %eax
	movl %eax, -100(%ebp)
	pushl %edx
	pushl %ecx
	pushl %eax
	movl $4, %eax
	pushl %eax
	call _oat_alloc_array
	movl %eax, -96(%ebp)
	addl $4, %esp
	popl %eax
	popl %ecx
	popl %edx
	movl -96(%ebp), %eax
	movl %eax, -92(%ebp)
	movl -92(%ebp), %eax
	addl $4, %eax
	addl $0, %eax
	movl %eax, -88(%ebp)
	movl $0, %eax
	movl %eax, %ecx
	movl -88(%ebp), %eax
	movl %ecx, (%eax)
	movl -92(%ebp), %eax
	addl $4, %eax
	addl $4, %eax
	movl %eax, -84(%ebp)
	movl $1, %eax
	movl %eax, %ecx
	movl -84(%ebp), %eax
	movl %ecx, (%eax)
	movl -92(%ebp), %eax
	addl $4, %eax
	addl $8, %eax
	movl %eax, -80(%ebp)
	movl $2, %eax
	movl %eax, %ecx
	movl -80(%ebp), %eax
	movl %ecx, (%eax)
	movl -92(%ebp), %eax
	addl $4, %eax
	addl $12, %eax
	movl %eax, -76(%ebp)
	movl $3, %eax
	movl %eax, %ecx
	movl -76(%ebp), %eax
	movl %ecx, (%eax)
	movl -100(%ebp), %eax
	addl $4, %eax
	addl $0, %eax
	movl %eax, -72(%ebp)
	movl -92(%ebp), %eax
	movl %eax, %ecx
	movl -72(%ebp), %eax
	movl %ecx, (%eax)
	pushl %edx
	pushl %ecx
	pushl %eax
	movl $4, %eax
	pushl %eax
	call _oat_alloc_array
	movl %eax, -68(%ebp)
	addl $4, %esp
	popl %eax
	popl %ecx
	popl %edx
	movl -68(%ebp), %eax
	movl %eax, -64(%ebp)
	movl -64(%ebp), %eax
	addl $4, %eax
	addl $0, %eax
	movl %eax, -60(%ebp)
	movl $4, %eax
	movl %eax, %ecx
	movl -60(%ebp), %eax
	movl %ecx, (%eax)
	movl -64(%ebp), %eax
	addl $4, %eax
	addl $4, %eax
	movl %eax, -56(%ebp)
	movl $5, %eax
	movl %eax, %ecx
	movl -56(%ebp), %eax
	movl %ecx, (%eax)
	movl -64(%ebp), %eax
	addl $4, %eax
	addl $8, %eax
	movl %eax, -52(%ebp)
	movl $6, %eax
	movl %eax, %ecx
	movl -52(%ebp), %eax
	movl %ecx, (%eax)
	movl -64(%ebp), %eax
	addl $4, %eax
	addl $12, %eax
	movl %eax, -48(%ebp)
	movl $7, %eax
	movl %eax, %ecx
	movl -48(%ebp), %eax
	movl %ecx, (%eax)
	movl -100(%ebp), %eax
	addl $4, %eax
	addl $4, %eax
	movl %eax, -44(%ebp)
	movl -64(%ebp), %eax
	movl %eax, %ecx
	movl -44(%ebp), %eax
	movl %ecx, (%eax)
	pushl %edx
	pushl %ecx
	pushl %eax
	movl $4, %eax
	pushl %eax
	call _oat_alloc_array
	movl %eax, -40(%ebp)
	addl $4, %esp
	popl %eax
	popl %ecx
	popl %edx
	movl -40(%ebp), %eax
	movl %eax, -36(%ebp)
	movl -36(%ebp), %eax
	addl $4, %eax
	addl $0, %eax
	movl %eax, -32(%ebp)
	movl $8, %eax
	movl %eax, %ecx
	movl -32(%ebp), %eax
	movl %ecx, (%eax)
	movl -36(%ebp), %eax
	addl $4, %eax
	addl $4, %eax
	movl %eax, -28(%ebp)
	movl $9, %eax
	movl %eax, %ecx
	movl -28(%ebp), %eax
	movl %ecx, (%eax)
	movl -36(%ebp), %eax
	addl $4, %eax
	addl $8, %eax
	movl %eax, -24(%ebp)
	movl $10, %eax
	movl %eax, %ecx
	movl -24(%ebp), %eax
	movl %ecx, (%eax)
	movl -36(%ebp), %eax
	addl $4, %eax
	addl $12, %eax
	movl %eax, -20(%ebp)
	movl $11, %eax
	movl %eax, %ecx
	movl -20(%ebp), %eax
	movl %ecx, (%eax)
	movl -100(%ebp), %eax
	addl $4, %eax
	addl $8, %eax
	movl %eax, -16(%ebp)
	movl -36(%ebp), %eax
	movl %eax, %ecx
	movl -16(%ebp), %eax
	movl %ecx, (%eax)
	leal -216(%ebp), %eax
	movl %eax, -12(%ebp)
	movl -100(%ebp), %eax
	movl %eax, %ecx
	movl -12(%ebp), %eax
	movl %ecx, (%eax)
	leal -212(%ebp), %eax
	movl %eax, -8(%ebp)
	movl $0, %eax
	movl %eax, %ecx
	movl -8(%ebp), %eax
	movl %ecx, (%eax)
	leal -208(%ebp), %eax
	movl %eax, -4(%ebp)
	movl $0, %eax
	movl %eax, %ecx
	movl -4(%ebp), %eax
	movl %ecx, (%eax)
	jmp __cond62
__cond62:
	movl -4(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -120(%ebp)
	movl -120(%ebp), %eax
	movl %eax, %ecx
	movl $3, %eax
	cmpl %eax, %ecx
	setL -116(%ebp)
	andl $1, -116(%ebp)
	movl -116(%ebp), %eax
	cmpl $0, %eax
	jNE __body61
	jmp __post60
__fresh67:
	jmp __body61
__body61:
	leal -228(%ebp), %eax
	movl %eax, -124(%ebp)
	movl $0, %eax
	movl %eax, %ecx
	movl -124(%ebp), %eax
	movl %ecx, (%eax)
	jmp __cond65
__cond65:
	movl -124(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -132(%ebp)
	movl -132(%ebp), %eax
	movl %eax, %ecx
	movl $4, %eax
	cmpl %eax, %ecx
	setL -128(%ebp)
	andl $1, -128(%ebp)
	movl -128(%ebp), %eax
	cmpl $0, %eax
	jNE __body64
	jmp __post63
__fresh68:
	jmp __body64
__body64:
	movl -8(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -192(%ebp)
	movl -124(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -188(%ebp)
	movl -164(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -184(%ebp)
	movl -4(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -180(%ebp)
	movl -12(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -176(%ebp)
	movl -176(%ebp), %eax
	addl $0, %eax
	movl %eax, -172(%ebp)
	movl -172(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -168(%ebp)
	pushl %edx
	pushl %ecx
	pushl %eax
	movl -180(%ebp), %eax
	pushl %eax
	movl -168(%ebp), %eax
	pushl %eax
	call _oat_array_bounds_check
	addl $8, %esp
	popl %eax
	popl %ecx
	popl %edx
	movl -176(%ebp), %eax
	addl $4, %eax
	movl %eax, %ecx
	movl -180(%ebp), %eax
	imull $4, %eax
	addl %ecx, %eax
	movl %eax, -164(%ebp)
	movl -184(%ebp), %eax
	addl $0, %eax
	movl %eax, -160(%ebp)
	movl -160(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -156(%ebp)
	pushl %edx
	pushl %ecx
	pushl %eax
	movl -188(%ebp), %eax
	pushl %eax
	movl -156(%ebp), %eax
	pushl %eax
	call _oat_array_bounds_check
	addl $8, %esp
	popl %eax
	popl %ecx
	popl %edx
	movl -184(%ebp), %eax
	addl $4, %eax
	movl %eax, %ecx
	movl -188(%ebp), %eax
	imull $4, %eax
	addl %ecx, %eax
	movl %eax, -152(%ebp)
	movl -152(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -148(%ebp)
	movl -192(%ebp), %eax
	movl %eax, -144(%ebp)
	movl -148(%ebp), %eax
	movl %eax, %ecx
	addl %ecx, -144(%ebp)
	movl -144(%ebp), %eax
	movl %eax, %ecx
	movl -8(%ebp), %eax
	movl %ecx, (%eax)
	movl -124(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -140(%ebp)
	movl -140(%ebp), %eax
	movl %eax, -136(%ebp)
	movl $1, %eax
	movl %eax, %ecx
	addl %ecx, -136(%ebp)
	movl -136(%ebp), %eax
	movl %eax, %ecx
	movl -124(%ebp), %eax
	movl %ecx, (%eax)
	jmp __cond65
__fresh69:
	jmp __post63
__post63:
	movl -4(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -200(%ebp)
	movl -200(%ebp), %eax
	movl %eax, -196(%ebp)
	movl $1, %eax
	movl %eax, %ecx
	addl %ecx, -196(%ebp)
	movl -196(%ebp), %eax
	movl %eax, %ecx
	movl -4(%ebp), %eax
	movl %ecx, (%eax)
	jmp __cond62
__fresh70:
	jmp __post60
__post60:
	movl -8(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -204(%ebp)
	movl -204(%ebp), %eax
	movl %ebp, %esp
	popl %ebp
	ret
