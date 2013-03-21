	.align 4
	.data
arr3325:
	.long 0
	.text
.globl _oat_init
_oat_init:
	pushl %ebp
	movl %esp, %ebp
	subl $0, %esp
__fresh1213:
	pushl %edx
	pushl %ecx
	pushl %eax
	call _arr3325.init
	addl $0, %esp
	popl %eax
	popl %ecx
	popl %edx
	movl %ebp, %esp
	popl %ebp
	ret
.globl _program
_program:
	pushl %ebp
	movl %esp, %ebp
	subl $52, %esp
__fresh1212:
	leal -52(%ebp), %eax
	movl %eax, -44(%ebp)
	movl 8(%ebp), %eax
	movl %eax, %ecx
	movl -44(%ebp), %eax
	movl %ecx, (%eax)
	leal -48(%ebp), %eax
	movl %eax, -40(%ebp)
	movl 12(%ebp), %eax
	movl %eax, %ecx
	movl -40(%ebp), %eax
	movl %ecx, (%eax)
	movl -20(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -36(%ebp)
	movl arr3325, %eax
	movl %eax, -32(%ebp)
	movl -32(%ebp), %eax
	addl $0, %eax
	movl %eax, -28(%ebp)
	movl -28(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -24(%ebp)
	pushl %edx
	pushl %ecx
	pushl %eax
	movl $3, %eax
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
	addl $12, %eax
	movl %eax, -20(%ebp)
	movl -36(%ebp), %eax
	addl $0, %eax
	movl %eax, -16(%ebp)
	movl -16(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -12(%ebp)
	pushl %edx
	pushl %ecx
	pushl %eax
	movl $0, %eax
	pushl %eax
	movl -12(%ebp), %eax
	pushl %eax
	call _oat_array_bounds_check
	addl $8, %esp
	popl %eax
	popl %ecx
	popl %edx
	movl -36(%ebp), %eax
	addl $4, %eax
	addl $0, %eax
	movl %eax, -8(%ebp)
	movl -8(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -4(%ebp)
	movl -4(%ebp), %eax
	movl %ebp, %esp
	popl %ebp
	ret
.globl _arr3325.init
_arr3325.init:
	pushl %ebp
	movl %esp, %ebp
	subl $48, %esp
__fresh1211:
	pushl %edx
	pushl %ecx
	pushl %eax
	movl $2, %eax
	pushl %eax
	call _oat_alloc_array
	movl %eax, -48(%ebp)
	addl $4, %esp
	popl %eax
	popl %ecx
	popl %edx
	movl -48(%ebp), %eax
	movl %eax, -44(%ebp)
	pushl %edx
	pushl %ecx
	pushl %eax
	movl $2, %eax
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
	movl $1, %eax
	movl %eax, %ecx
	movl -32(%ebp), %eax
	movl %ecx, (%eax)
	movl -36(%ebp), %eax
	addl $4, %eax
	addl $4, %eax
	movl %eax, -28(%ebp)
	movl $2, %eax
	movl %eax, %ecx
	movl -28(%ebp), %eax
	movl %ecx, (%eax)
	movl -44(%ebp), %eax
	addl $4, %eax
	addl $0, %eax
	movl %eax, -24(%ebp)
	movl -36(%ebp), %eax
	movl %eax, %ecx
	movl -24(%ebp), %eax
	movl %ecx, (%eax)
	pushl %edx
	pushl %ecx
	pushl %eax
	movl $2, %eax
	pushl %eax
	call _oat_alloc_array
	movl %eax, -20(%ebp)
	addl $4, %esp
	popl %eax
	popl %ecx
	popl %edx
	movl -20(%ebp), %eax
	movl %eax, -16(%ebp)
	movl -16(%ebp), %eax
	addl $4, %eax
	addl $0, %eax
	movl %eax, -12(%ebp)
	movl $3, %eax
	movl %eax, %ecx
	movl -12(%ebp), %eax
	movl %ecx, (%eax)
	movl -16(%ebp), %eax
	addl $4, %eax
	addl $4, %eax
	movl %eax, -8(%ebp)
	movl $4, %eax
	movl %eax, %ecx
	movl -8(%ebp), %eax
	movl %ecx, (%eax)
	movl -44(%ebp), %eax
	addl $4, %eax
	addl $4, %eax
	movl %eax, -4(%ebp)
	movl -16(%ebp), %eax
	movl %eax, %ecx
	movl -4(%ebp), %eax
	movl %ecx, (%eax)
	movl -44(%ebp), %eax
	movl %eax, arr3325
	movl %ebp, %esp
	popl %ebp
	ret
