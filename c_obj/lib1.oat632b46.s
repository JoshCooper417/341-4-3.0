	.align 4
	.text
.globl _oat_init
_oat_init:
	pushl %ebp
	movl %esp, %ebp
	subl $0, %esp
__fresh617:
	movl %ebp, %esp
	popl %ebp
	ret
.globl _program
_program:
	pushl %ebp
	movl %esp, %ebp
	subl $68, %esp
__fresh616:
	leal -68(%ebp), %eax
	movl %eax, -52(%ebp)
	movl 8(%ebp), %eax
	movl %eax, %ecx
	movl -52(%ebp), %eax
	movl %ecx, (%eax)
	leal -64(%ebp), %eax
	movl %eax, -48(%ebp)
	movl 12(%ebp), %eax
	movl %eax, %ecx
	movl -48(%ebp), %eax
	movl %ecx, (%eax)
	pushl %edx
	pushl %ecx
	pushl %eax
	movl $3, %eax
	pushl %eax
	call _oat_alloc_array
	movl %eax, -44(%ebp)
	addl $4, %esp
	popl %eax
	popl %ecx
	popl %edx
	movl -44(%ebp), %eax
	movl %eax, -40(%ebp)
	movl -40(%ebp), %eax
	addl $4, %eax
	addl $0, %eax
	movl %eax, -36(%ebp)
	movl $0, %eax
	movl %eax, %ecx
	movl -36(%ebp), %eax
	movl %ecx, (%eax)
	movl -40(%ebp), %eax
	addl $4, %eax
	addl $4, %eax
	movl %eax, -32(%ebp)
	movl $1, %eax
	movl %eax, %ecx
	movl -32(%ebp), %eax
	movl %ecx, (%eax)
	movl -40(%ebp), %eax
	addl $4, %eax
	addl $8, %eax
	movl %eax, -28(%ebp)
	movl $2, %eax
	movl %eax, %ecx
	movl -28(%ebp), %eax
	movl %ecx, (%eax)
	leal -60(%ebp), %eax
	movl %eax, -24(%ebp)
	movl -40(%ebp), %eax
	movl %eax, %ecx
	movl -24(%ebp), %eax
	movl %ecx, (%eax)
	movl -24(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -20(%ebp)
	movl -20(%ebp), %eax
	addl $0, %eax
	movl %eax, -16(%ebp)
	movl -16(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -12(%ebp)
	leal -56(%ebp), %eax
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
