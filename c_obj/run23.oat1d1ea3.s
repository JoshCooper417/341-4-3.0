	.align 4
	.data
strs874:
	.long 0
_oat_string870.str.:
	.ascii "123\0"
_oat_string870:
	.long _oat_string870.str.

_oat_string867.str.:
	.ascii "789\0"
_oat_string867:
	.long _oat_string867.str.

_oat_string861.str.:
	.ascii "def\0"
_oat_string861:
	.long _oat_string861.str.

_oat_string858.str.:
	.ascii "abc\0"
_oat_string858:
	.long _oat_string858.str.

	.text
.globl _oat_init
_oat_init:
	pushl %ebp
	movl %esp, %ebp
	subl $0, %esp
__fresh304:
	pushl %edx
	pushl %ecx
	pushl %eax
	call _strs874.init
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
__fresh303:
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
	movl strs874, %eax
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
	movl $1, %eax
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
	addl $4, %eax
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
	movl $1, %eax
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
	addl $4, %eax
	movl %eax, -8(%ebp)
	movl -8(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -4(%ebp)
	pushl %edx
	pushl %ecx
	pushl %eax
	movl -4(%ebp), %eax
	pushl %eax
	call _print_string
	addl $4, %esp
	popl %eax
	popl %ecx
	popl %edx
	movl $0, %eax
	movl %ebp, %esp
	popl %ebp
	ret
.globl _strs874.init
_strs874.init:
	pushl %ebp
	movl %esp, %ebp
	subl $64, %esp
__fresh302:
	pushl %edx
	pushl %ecx
	pushl %eax
	movl $2, %eax
	pushl %eax
	call _oat_alloc_array
	movl %eax, -64(%ebp)
	addl $4, %esp
	popl %eax
	popl %ecx
	popl %edx
	movl -64(%ebp), %eax
	movl %eax, -60(%ebp)
	pushl %edx
	pushl %ecx
	pushl %eax
	movl $2, %eax
	pushl %eax
	call _oat_alloc_array
	movl %eax, -56(%ebp)
	addl $4, %esp
	popl %eax
	popl %ecx
	popl %edx
	movl -56(%ebp), %eax
	movl %eax, -52(%ebp)
	movl _oat_string858, %eax
	movl %eax, -48(%ebp)
	movl -52(%ebp), %eax
	addl $4, %eax
	addl $0, %eax
	movl %eax, -44(%ebp)
	movl -48(%ebp), %eax
	movl %eax, %ecx
	movl -44(%ebp), %eax
	movl %ecx, (%eax)
	movl _oat_string861, %eax
	movl %eax, -40(%ebp)
	movl -52(%ebp), %eax
	addl $4, %eax
	addl $4, %eax
	movl %eax, -36(%ebp)
	movl -40(%ebp), %eax
	movl %eax, %ecx
	movl -36(%ebp), %eax
	movl %ecx, (%eax)
	movl -60(%ebp), %eax
	addl $4, %eax
	addl $0, %eax
	movl %eax, -32(%ebp)
	movl -52(%ebp), %eax
	movl %eax, %ecx
	movl -32(%ebp), %eax
	movl %ecx, (%eax)
	pushl %edx
	pushl %ecx
	pushl %eax
	movl $2, %eax
	pushl %eax
	call _oat_alloc_array
	movl %eax, -28(%ebp)
	addl $4, %esp
	popl %eax
	popl %ecx
	popl %edx
	movl -28(%ebp), %eax
	movl %eax, -24(%ebp)
	movl _oat_string867, %eax
	movl %eax, -20(%ebp)
	movl -24(%ebp), %eax
	addl $4, %eax
	addl $0, %eax
	movl %eax, -16(%ebp)
	movl -20(%ebp), %eax
	movl %eax, %ecx
	movl -16(%ebp), %eax
	movl %ecx, (%eax)
	movl _oat_string870, %eax
	movl %eax, -12(%ebp)
	movl -24(%ebp), %eax
	addl $4, %eax
	addl $4, %eax
	movl %eax, -8(%ebp)
	movl -12(%ebp), %eax
	movl %eax, %ecx
	movl -8(%ebp), %eax
	movl %ecx, (%eax)
	movl -60(%ebp), %eax
	addl $4, %eax
	addl $4, %eax
	movl %eax, -4(%ebp)
	movl -24(%ebp), %eax
	movl %eax, %ecx
	movl -4(%ebp), %eax
	movl %ecx, (%eax)
	movl -60(%ebp), %eax
	movl %eax, strs874
	movl %ebp, %esp
	popl %ebp
	ret
