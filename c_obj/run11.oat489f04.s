	.align 4
	.data
arr2701:
	.long 0
arr1680:
	.long 0
i674:
	.long 1
	.text
.globl _oat_init
_oat_init:
	pushl %ebp
	movl %esp, %ebp
	subl $0, %esp
__fresh261:
	pushl %edx
	pushl %ecx
	pushl %eax
	call _arr1680.init
	addl $0, %esp
	popl %eax
	popl %ecx
	popl %edx
	pushl %edx
	pushl %ecx
	pushl %eax
	call _arr2701.init
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
	subl $228, %esp
__fresh260:
	leal -228(%ebp), %eax
	movl %eax, -208(%ebp)
	movl 8(%ebp), %eax
	movl %eax, %ecx
	movl -208(%ebp), %eax
	movl %ecx, (%eax)
	leal -224(%ebp), %eax
	movl %eax, -204(%ebp)
	movl 12(%ebp), %eax
	movl %eax, %ecx
	movl -204(%ebp), %eax
	movl %ecx, (%eax)
	leal -220(%ebp), %eax
	movl %eax, -200(%ebp)
	movl $1, %eax
	movl %eax, %ecx
	movl -200(%ebp), %eax
	movl %ecx, (%eax)
	pushl %edx
	pushl %ecx
	pushl %eax
	call _g
	movl %eax, -196(%ebp)
	addl $0, %esp
	popl %eax
	popl %ecx
	popl %edx
	leal -216(%ebp), %eax
	movl %eax, -192(%ebp)
	movl -196(%ebp), %eax
	movl %eax, %ecx
	movl -192(%ebp), %eax
	movl %ecx, (%eax)
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
	movl %eax, -184(%ebp)
	movl -188(%ebp), %eax
	movl -184(%ebp), %eax
	addl $4, %eax
	addl $0, %eax
	movl %eax, -180(%ebp)
	movl $99, %eax
	movl %eax, %ecx
	movl -180(%ebp), %eax
	movl %ecx, (%eax)
	movl -184(%ebp), %eax
	addl $4, %eax
	addl $4, %eax
	movl %eax, -176(%ebp)
	movl $99, %eax
	movl %eax, %ecx
	movl -176(%ebp), %eax
	movl %ecx, (%eax)
	movl -184(%ebp), %eax
	addl $4, %eax
	addl $8, %eax
	movl %eax, -172(%ebp)
	movl $99, %eax
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
	leal -212(%ebp), %eax
	movl %eax, -164(%ebp)
	movl -184(%ebp), %eax
	movl %eax, %ecx
	movl -164(%ebp), %eax
	movl %ecx, (%eax)
	movl -200(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -160(%ebp)
	movl i674, %eax
	movl %eax, -156(%ebp)
	movl -160(%ebp), %eax
	movl %eax, -152(%ebp)
	movl -156(%ebp), %eax
	movl %eax, %ecx
	addl %ecx, -152(%ebp)
	movl -152(%ebp), %eax
	movl %eax, %ecx
	movl -200(%ebp), %eax
	movl %ecx, (%eax)
	movl -200(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -148(%ebp)
	movl arr1680, %eax
	movl %eax, -144(%ebp)
	movl -144(%ebp), %eax
	addl $0, %eax
	movl %eax, -140(%ebp)
	movl -140(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -136(%ebp)
	pushl %edx
	pushl %ecx
	pushl %eax
	movl $1, %eax
	pushl %eax
	movl -136(%ebp), %eax
	pushl %eax
	call _oat_array_bounds_check
	addl $8, %esp
	popl %eax
	popl %ecx
	popl %edx
	movl -144(%ebp), %eax
	addl $4, %eax
	addl $4, %eax
	movl %eax, -132(%ebp)
	movl -132(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -128(%ebp)
	movl -148(%ebp), %eax
	movl %eax, -124(%ebp)
	movl -128(%ebp), %eax
	movl %eax, %ecx
	addl %ecx, -124(%ebp)
	movl -124(%ebp), %eax
	movl %eax, %ecx
	movl -200(%ebp), %eax
	movl %ecx, (%eax)
	movl -200(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -120(%ebp)
	movl -100(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -116(%ebp)
	movl arr2701, %eax
	movl %eax, -112(%ebp)
	movl -112(%ebp), %eax
	addl $0, %eax
	movl %eax, -108(%ebp)
	movl -108(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -104(%ebp)
	pushl %edx
	pushl %ecx
	pushl %eax
	movl $1, %eax
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
	addl $4, %eax
	movl %eax, -100(%ebp)
	movl -116(%ebp), %eax
	addl $0, %eax
	movl %eax, -96(%ebp)
	movl -96(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -92(%ebp)
	pushl %edx
	pushl %ecx
	pushl %eax
	movl $1, %eax
	pushl %eax
	movl -92(%ebp), %eax
	pushl %eax
	call _oat_array_bounds_check
	addl $8, %esp
	popl %eax
	popl %ecx
	popl %edx
	movl -116(%ebp), %eax
	addl $4, %eax
	addl $4, %eax
	movl %eax, -88(%ebp)
	movl -88(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -84(%ebp)
	movl -120(%ebp), %eax
	movl %eax, -80(%ebp)
	movl -84(%ebp), %eax
	movl %eax, %ecx
	addl %ecx, -80(%ebp)
	movl -80(%ebp), %eax
	movl %eax, %ecx
	movl -200(%ebp), %eax
	movl %ecx, (%eax)
	movl -200(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -76(%ebp)
	movl -164(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -72(%ebp)
	movl -72(%ebp), %eax
	addl $0, %eax
	movl %eax, -68(%ebp)
	movl -68(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -64(%ebp)
	pushl %edx
	pushl %ecx
	pushl %eax
	movl $3, %eax
	pushl %eax
	movl -64(%ebp), %eax
	pushl %eax
	call _oat_array_bounds_check
	addl $8, %esp
	popl %eax
	popl %ecx
	popl %edx
	movl -72(%ebp), %eax
	addl $4, %eax
	addl $12, %eax
	movl %eax, -60(%ebp)
	movl -60(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -56(%ebp)
	movl -76(%ebp), %eax
	movl %eax, -52(%ebp)
	movl -56(%ebp), %eax
	movl %eax, %ecx
	addl %ecx, -52(%ebp)
	movl -52(%ebp), %eax
	movl %eax, %ecx
	movl -200(%ebp), %eax
	movl %ecx, (%eax)
	movl -200(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -48(%ebp)
	movl -164(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -44(%ebp)
	pushl %edx
	pushl %ecx
	pushl %eax
	movl -44(%ebp), %eax
	pushl %eax
	call _f
	movl %eax, -40(%ebp)
	addl $4, %esp
	popl %eax
	popl %ecx
	popl %edx
	movl -48(%ebp), %eax
	movl %eax, -36(%ebp)
	movl -40(%ebp), %eax
	movl %eax, %ecx
	addl %ecx, -36(%ebp)
	movl -36(%ebp), %eax
	movl %eax, %ecx
	movl -200(%ebp), %eax
	movl %ecx, (%eax)
	movl -200(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -32(%ebp)
	movl -192(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -28(%ebp)
	movl -28(%ebp), %eax
	addl $0, %eax
	movl %eax, -24(%ebp)
	movl -24(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -20(%ebp)
	pushl %edx
	pushl %ecx
	pushl %eax
	movl $1, %eax
	pushl %eax
	movl -20(%ebp), %eax
	pushl %eax
	call _oat_array_bounds_check
	addl $8, %esp
	popl %eax
	popl %ecx
	popl %edx
	movl -28(%ebp), %eax
	addl $4, %eax
	addl $4, %eax
	movl %eax, -16(%ebp)
	movl -16(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -12(%ebp)
	movl -32(%ebp), %eax
	movl %eax, -8(%ebp)
	movl -12(%ebp), %eax
	movl %eax, %ecx
	addl %ecx, -8(%ebp)
	movl -8(%ebp), %eax
	movl %eax, %ecx
	movl -200(%ebp), %eax
	movl %ecx, (%eax)
	movl -200(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -4(%ebp)
	movl -4(%ebp), %eax
	movl %ebp, %esp
	popl %ebp
	ret
.globl _g
_g:
	pushl %ebp
	movl %esp, %ebp
	subl $36, %esp
__fresh259:
	pushl %edx
	pushl %ecx
	pushl %eax
	movl $4, %eax
	pushl %eax
	call _oat_alloc_array
	movl %eax, -32(%ebp)
	addl $4, %esp
	popl %eax
	popl %ecx
	popl %edx
	movl %eax, -28(%ebp)
	movl -32(%ebp), %eax
	movl -28(%ebp), %eax
	addl $4, %eax
	addl $0, %eax
	movl %eax, -24(%ebp)
	movl $99, %eax
	movl %eax, %ecx
	movl -24(%ebp), %eax
	movl %ecx, (%eax)
	movl -28(%ebp), %eax
	addl $4, %eax
	addl $4, %eax
	movl %eax, -20(%ebp)
	movl $1, %eax
	movl %eax, %ecx
	movl -20(%ebp), %eax
	movl %ecx, (%eax)
	movl -28(%ebp), %eax
	addl $4, %eax
	addl $8, %eax
	movl %eax, -16(%ebp)
	movl $99, %eax
	movl %eax, %ecx
	movl -16(%ebp), %eax
	movl %ecx, (%eax)
	movl -28(%ebp), %eax
	addl $4, %eax
	addl $12, %eax
	movl %eax, -12(%ebp)
	movl $99, %eax
	movl %eax, %ecx
	movl -12(%ebp), %eax
	movl %ecx, (%eax)
	leal -36(%ebp), %eax
	movl %eax, -8(%ebp)
	movl -28(%ebp), %eax
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
.globl _f
_f:
	pushl %ebp
	movl %esp, %ebp
	subl $28, %esp
__fresh258:
	leal -28(%ebp), %eax
	movl %eax, -24(%ebp)
	movl 8(%ebp), %eax
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
	pushl %edx
	pushl %ecx
	pushl %eax
	movl $3, %eax
	pushl %eax
	movl -12(%ebp), %eax
	pushl %eax
	call _oat_array_bounds_check
	addl $8, %esp
	popl %eax
	popl %ecx
	popl %edx
	movl -20(%ebp), %eax
	addl $4, %eax
	addl $12, %eax
	movl %eax, -8(%ebp)
	movl -8(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -4(%ebp)
	movl -4(%ebp), %eax
	movl %ebp, %esp
	popl %ebp
	ret
.globl _arr2701.init
_arr2701.init:
	pushl %ebp
	movl %esp, %ebp
	subl $80, %esp
__fresh257:
	pushl %edx
	pushl %ecx
	pushl %eax
	movl $3, %eax
	pushl %eax
	call _oat_alloc_array
	movl %eax, -80(%ebp)
	addl $4, %esp
	popl %eax
	popl %ecx
	popl %edx
	movl %eax, -76(%ebp)
	movl -80(%ebp), %eax
	pushl %edx
	pushl %ecx
	pushl %eax
	movl $3, %eax
	pushl %eax
	call _oat_alloc_array
	movl %eax, -72(%ebp)
	addl $4, %esp
	popl %eax
	popl %ecx
	popl %edx
	movl %eax, -68(%ebp)
	movl -72(%ebp), %eax
	movl -68(%ebp), %eax
	addl $4, %eax
	addl $0, %eax
	movl %eax, -64(%ebp)
	movl $99, %eax
	movl %eax, %ecx
	movl -64(%ebp), %eax
	movl %ecx, (%eax)
	movl -68(%ebp), %eax
	addl $4, %eax
	addl $4, %eax
	movl %eax, -60(%ebp)
	movl $99, %eax
	movl %eax, %ecx
	movl -60(%ebp), %eax
	movl %ecx, (%eax)
	movl -68(%ebp), %eax
	addl $4, %eax
	addl $8, %eax
	movl %eax, -56(%ebp)
	movl $99, %eax
	movl %eax, %ecx
	movl -56(%ebp), %eax
	movl %ecx, (%eax)
	movl -76(%ebp), %eax
	addl $4, %eax
	addl $0, %eax
	movl %eax, -52(%ebp)
	movl -68(%ebp), %eax
	movl %eax, %ecx
	movl -52(%ebp), %eax
	movl %ecx, (%eax)
	pushl %edx
	pushl %ecx
	pushl %eax
	movl $3, %eax
	pushl %eax
	call _oat_alloc_array
	movl %eax, -48(%ebp)
	addl $4, %esp
	popl %eax
	popl %ecx
	popl %edx
	movl %eax, -44(%ebp)
	movl -48(%ebp), %eax
	movl -44(%ebp), %eax
	addl $4, %eax
	addl $0, %eax
	movl %eax, -40(%ebp)
	movl $99, %eax
	movl %eax, %ecx
	movl -40(%ebp), %eax
	movl %ecx, (%eax)
	movl -44(%ebp), %eax
	addl $4, %eax
	addl $4, %eax
	movl %eax, -36(%ebp)
	movl $1, %eax
	movl %eax, %ecx
	movl -36(%ebp), %eax
	movl %ecx, (%eax)
	movl -44(%ebp), %eax
	addl $4, %eax
	addl $8, %eax
	movl %eax, -32(%ebp)
	movl $99, %eax
	movl %eax, %ecx
	movl -32(%ebp), %eax
	movl %ecx, (%eax)
	movl -76(%ebp), %eax
	addl $4, %eax
	addl $4, %eax
	movl %eax, -28(%ebp)
	movl -44(%ebp), %eax
	movl %eax, %ecx
	movl -28(%ebp), %eax
	movl %ecx, (%eax)
	pushl %edx
	pushl %ecx
	pushl %eax
	movl $3, %eax
	pushl %eax
	call _oat_alloc_array
	movl %eax, -24(%ebp)
	addl $4, %esp
	popl %eax
	popl %ecx
	popl %edx
	movl %eax, -20(%ebp)
	movl -24(%ebp), %eax
	movl -20(%ebp), %eax
	addl $4, %eax
	addl $0, %eax
	movl %eax, -16(%ebp)
	movl $99, %eax
	movl %eax, %ecx
	movl -16(%ebp), %eax
	movl %ecx, (%eax)
	movl -20(%ebp), %eax
	addl $4, %eax
	addl $4, %eax
	movl %eax, -12(%ebp)
	movl $99, %eax
	movl %eax, %ecx
	movl -12(%ebp), %eax
	movl %ecx, (%eax)
	movl -20(%ebp), %eax
	addl $4, %eax
	addl $8, %eax
	movl %eax, -8(%ebp)
	movl $99, %eax
	movl %eax, %ecx
	movl -8(%ebp), %eax
	movl %ecx, (%eax)
	movl -76(%ebp), %eax
	addl $4, %eax
	addl $8, %eax
	movl %eax, -4(%ebp)
	movl -20(%ebp), %eax
	movl %eax, %ecx
	movl -4(%ebp), %eax
	movl %ecx, (%eax)
	movl -76(%ebp), %eax
	movl %eax, arr2701
	movl %ebp, %esp
	popl %ebp
	ret
.globl _arr1680.init
_arr1680.init:
	pushl %ebp
	movl %esp, %ebp
	subl $20, %esp
__fresh256:
	pushl %edx
	pushl %ecx
	pushl %eax
	movl $3, %eax
	pushl %eax
	call _oat_alloc_array
	movl %eax, -20(%ebp)
	addl $4, %esp
	popl %eax
	popl %ecx
	popl %edx
	movl %eax, -16(%ebp)
	movl -20(%ebp), %eax
	movl -16(%ebp), %eax
	addl $4, %eax
	addl $0, %eax
	movl %eax, -12(%ebp)
	movl $99, %eax
	movl %eax, %ecx
	movl -12(%ebp), %eax
	movl %ecx, (%eax)
	movl -16(%ebp), %eax
	addl $4, %eax
	addl $4, %eax
	movl %eax, -8(%ebp)
	movl $1, %eax
	movl %eax, %ecx
	movl -8(%ebp), %eax
	movl %ecx, (%eax)
	movl -16(%ebp), %eax
	addl $4, %eax
	addl $8, %eax
	movl %eax, -4(%ebp)
	movl $99, %eax
	movl %eax, %ecx
	movl -4(%ebp), %eax
	movl %ecx, (%eax)
	movl -16(%ebp), %eax
	movl %eax, arr1680
	movl %ebp, %esp
	popl %ebp
	ret
