	.align 4
	.text
.globl _oat_init
_oat_init:
	pushl %ebp
	movl %esp, %ebp
	subl $0, %esp
__fresh620:
	movl %ebp, %esp
	popl %ebp
	ret
.globl _program
_program:
	pushl %ebp
	movl %esp, %ebp
	subl $152, %esp
__fresh619:
	leal -152(%ebp), %eax
	movl %eax, -136(%ebp)
	movl 8(%ebp), %eax
	movl %eax, %ecx
	movl -136(%ebp), %eax
	movl %ecx, (%eax)
	leal -148(%ebp), %eax
	movl %eax, -132(%ebp)
	movl 12(%ebp), %eax
	movl %eax, %ecx
	movl -132(%ebp), %eax
	movl %ecx, (%eax)
	pushl %edx
	pushl %ecx
	pushl %eax
	movl $4, %eax
	pushl %eax
	call _oat_alloc_array
	movl %eax, -128(%ebp)
	addl $4, %esp
	popl %eax
	popl %ecx
	popl %edx
	movl -128(%ebp), %eax
	movl %eax, -124(%ebp)
	pushl %edx
	pushl %ecx
	pushl %eax
	movl $2, %eax
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
	movl $0, %eax
	movl %eax, %ecx
	movl -112(%ebp), %eax
	movl %ecx, (%eax)
	movl -116(%ebp), %eax
	addl $4, %eax
	addl $4, %eax
	movl %eax, -108(%ebp)
	movl $0, %eax
	movl %eax, %ecx
	movl -108(%ebp), %eax
	movl %ecx, (%eax)
	movl -124(%ebp), %eax
	addl $4, %eax
	addl $0, %eax
	movl %eax, -104(%ebp)
	movl -116(%ebp), %eax
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
	movl -96(%ebp), %eax
	addl $4, %eax
	addl $0, %eax
	movl %eax, -92(%ebp)
	movl $1, %eax
	movl %eax, %ecx
	movl -92(%ebp), %eax
	movl %ecx, (%eax)
	movl -96(%ebp), %eax
	addl $4, %eax
	addl $4, %eax
	movl %eax, -88(%ebp)
	movl $1, %eax
	movl %eax, %ecx
	movl -88(%ebp), %eax
	movl %ecx, (%eax)
	movl -124(%ebp), %eax
	addl $4, %eax
	addl $4, %eax
	movl %eax, -84(%ebp)
	movl -96(%ebp), %eax
	movl %eax, %ecx
	movl -84(%ebp), %eax
	movl %ecx, (%eax)
	pushl %edx
	pushl %ecx
	pushl %eax
	movl $2, %eax
	pushl %eax
	call _oat_alloc_array
	movl %eax, -80(%ebp)
	addl $4, %esp
	popl %eax
	popl %ecx
	popl %edx
	movl -80(%ebp), %eax
	movl %eax, -76(%ebp)
	movl -76(%ebp), %eax
	addl $4, %eax
	addl $0, %eax
	movl %eax, -72(%ebp)
	movl $2, %eax
	movl %eax, %ecx
	movl -72(%ebp), %eax
	movl %ecx, (%eax)
	movl -76(%ebp), %eax
	addl $4, %eax
	addl $4, %eax
	movl %eax, -68(%ebp)
	movl $2, %eax
	movl %eax, %ecx
	movl -68(%ebp), %eax
	movl %ecx, (%eax)
	movl -124(%ebp), %eax
	addl $4, %eax
	addl $8, %eax
	movl %eax, -64(%ebp)
	movl -76(%ebp), %eax
	movl %eax, %ecx
	movl -64(%ebp), %eax
	movl %ecx, (%eax)
	pushl %edx
	pushl %ecx
	pushl %eax
	movl $2, %eax
	pushl %eax
	call _oat_alloc_array
	movl %eax, -60(%ebp)
	addl $4, %esp
	popl %eax
	popl %ecx
	popl %edx
	movl -60(%ebp), %eax
	movl %eax, -56(%ebp)
	movl -56(%ebp), %eax
	addl $4, %eax
	addl $0, %eax
	movl %eax, -52(%ebp)
	movl $3, %eax
	movl %eax, %ecx
	movl -52(%ebp), %eax
	movl %ecx, (%eax)
	movl -56(%ebp), %eax
	addl $4, %eax
	addl $4, %eax
	movl %eax, -48(%ebp)
	movl $3, %eax
	movl %eax, %ecx
	movl -48(%ebp), %eax
	movl %ecx, (%eax)
	movl -124(%ebp), %eax
	addl $4, %eax
	addl $12, %eax
	movl %eax, -44(%ebp)
	movl -56(%ebp), %eax
	movl %eax, %ecx
	movl -44(%ebp), %eax
	movl %ecx, (%eax)
	leal -144(%ebp), %eax
	movl %eax, -40(%ebp)
	movl -124(%ebp), %eax
	movl %eax, %ecx
	movl -40(%ebp), %eax
	movl %ecx, (%eax)
	movl -40(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -36(%ebp)
	movl -36(%ebp), %eax
	addl $0, %eax
	movl %eax, -32(%ebp)
	movl -32(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -28(%ebp)
	pushl %edx
	pushl %ecx
	pushl %eax
	movl $2, %eax
	pushl %eax
	movl -28(%ebp), %eax
	pushl %eax
	call _oat_array_bounds_check
	addl $8, %esp
	popl %eax
	popl %ecx
	popl %edx
	movl -36(%ebp), %eax
	addl $4, %eax
	addl $8, %eax
	movl %eax, -24(%ebp)
	movl -24(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -20(%ebp)
	movl -20(%ebp), %eax
	addl $0, %eax
	movl %eax, -16(%ebp)
	movl -16(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -12(%ebp)
	leal -140(%ebp), %eax
	movl %eax, -8(%ebp)
	movl -12(%ebp), %eax
	movl %eax, %ecx
	movl -8(%ebp), %eax
	movl %ecx, (%eax)
	movl -8(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -4(%ebp)
	movl -4(%ebp), %eax
	movl %ebp, %esp
	popl %ebp
	ret
