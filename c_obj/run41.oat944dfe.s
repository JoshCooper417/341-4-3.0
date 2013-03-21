	.align 4
	.text
.globl _oat_init
_oat_init:
	pushl %ebp
	movl %esp, %ebp
	subl $0, %esp
__fresh148:
	movl %ebp, %esp
	popl %ebp
	ret
.globl _program
_program:
	pushl %ebp
	movl %esp, %ebp
	subl $32, %esp
__fresh147:
	leal -32(%ebp), %eax
	movl %eax, -24(%ebp)
	movl 8(%ebp), %eax
	movl %eax, %ecx
	movl -24(%ebp), %eax
	movl %ecx, (%eax)
	leal -28(%ebp), %eax
	movl %eax, -20(%ebp)
	movl 12(%ebp), %eax
	movl %eax, %ecx
	movl -20(%ebp), %eax
	movl %ecx, (%eax)
	movl $0, %eax
	movl %eax, -16(%ebp)
	movl $3, %eax
	movl %eax, %ecx
	subl %ecx, -16(%ebp)
	movl $0, %eax
	movl %eax, -12(%ebp)
	movl $4, %eax
	movl %eax, %ecx
	subl %ecx, -12(%ebp)
	movl $0, %eax
	movl %eax, -8(%ebp)
	movl $5, %eax
	movl %eax, %ecx
	subl %ecx, -8(%ebp)
	pushl %edx
	pushl %ecx
	pushl %eax
	movl -16(%ebp), %eax
	pushl %eax
	movl -12(%ebp), %eax
	pushl %eax
	movl -8(%ebp), %eax
	pushl %eax
	movl $5, %eax
	pushl %eax
	movl $4, %eax
	pushl %eax
	movl $3, %eax
	pushl %eax
	movl $2, %eax
	pushl %eax
	movl $1, %eax
	pushl %eax
	call _f
	movl %eax, -4(%ebp)
	addl $32, %esp
	popl %eax
	popl %ecx
	popl %edx
	movl -4(%ebp), %eax
	movl %ebp, %esp
	popl %ebp
	ret
.globl _f
_f:
	pushl %ebp
	movl %esp, %ebp
	subl $124, %esp
__fresh146:
	leal -124(%ebp), %eax
	movl %eax, -92(%ebp)
	movl 8(%ebp), %eax
	movl %eax, %ecx
	movl -92(%ebp), %eax
	movl %ecx, (%eax)
	leal -120(%ebp), %eax
	movl %eax, -88(%ebp)
	movl 12(%ebp), %eax
	movl %eax, %ecx
	movl -88(%ebp), %eax
	movl %ecx, (%eax)
	leal -116(%ebp), %eax
	movl %eax, -84(%ebp)
	movl 16(%ebp), %eax
	movl %eax, %ecx
	movl -84(%ebp), %eax
	movl %ecx, (%eax)
	leal -112(%ebp), %eax
	movl %eax, -80(%ebp)
	movl 20(%ebp), %eax
	movl %eax, %ecx
	movl -80(%ebp), %eax
	movl %ecx, (%eax)
	leal -108(%ebp), %eax
	movl %eax, -76(%ebp)
	movl 24(%ebp), %eax
	movl %eax, %ecx
	movl -76(%ebp), %eax
	movl %ecx, (%eax)
	leal -104(%ebp), %eax
	movl %eax, -72(%ebp)
	movl 28(%ebp), %eax
	movl %eax, %ecx
	movl -72(%ebp), %eax
	movl %ecx, (%eax)
	leal -100(%ebp), %eax
	movl %eax, -68(%ebp)
	movl 32(%ebp), %eax
	movl %eax, %ecx
	movl -68(%ebp), %eax
	movl %ecx, (%eax)
	leal -96(%ebp), %eax
	movl %eax, -64(%ebp)
	movl 36(%ebp), %eax
	movl %eax, %ecx
	movl -64(%ebp), %eax
	movl %ecx, (%eax)
	movl -92(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -60(%ebp)
	movl -88(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -56(%ebp)
	movl -60(%ebp), %eax
	movl %eax, -52(%ebp)
	movl -56(%ebp), %eax
	movl %eax, %ecx
	addl %ecx, -52(%ebp)
	movl -84(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -48(%ebp)
	movl -52(%ebp), %eax
	movl %eax, -44(%ebp)
	movl -48(%ebp), %eax
	movl %eax, %ecx
	addl %ecx, -44(%ebp)
	movl -80(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -40(%ebp)
	movl -44(%ebp), %eax
	movl %eax, -36(%ebp)
	movl -40(%ebp), %eax
	movl %eax, %ecx
	addl %ecx, -36(%ebp)
	movl -76(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -32(%ebp)
	movl -36(%ebp), %eax
	movl %eax, -28(%ebp)
	movl -32(%ebp), %eax
	movl %eax, %ecx
	addl %ecx, -28(%ebp)
	movl -72(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -24(%ebp)
	movl -28(%ebp), %eax
	movl %eax, -20(%ebp)
	movl -24(%ebp), %eax
	movl %eax, %ecx
	addl %ecx, -20(%ebp)
	movl -68(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -16(%ebp)
	movl -20(%ebp), %eax
	movl %eax, -12(%ebp)
	movl -16(%ebp), %eax
	movl %eax, %ecx
	addl %ecx, -12(%ebp)
	movl -64(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -8(%ebp)
	movl -12(%ebp), %eax
	movl %eax, -4(%ebp)
	movl -8(%ebp), %eax
	movl %eax, %ecx
	addl %ecx, -4(%ebp)
	movl -4(%ebp), %eax
	movl %ebp, %esp
	popl %ebp
	ret
