	.align 4
	.data
_oat_string2197.str.:
	.ascii " \0"
_oat_string2197:
	.long _oat_string2197.str.

	.text
.globl _oat_init
_oat_init:
	pushl %ebp
	movl %esp, %ebp
	subl $0, %esp
__fresh809:
	movl %ebp, %esp
	popl %ebp
	ret
.globl _program
_program:
	pushl %ebp
	movl %esp, %ebp
	subl $224, %esp
__fresh804:
	leal -220(%ebp), %eax
	movl %eax, -24(%ebp)
	movl 8(%ebp), %eax
	movl %eax, %ecx
	movl -24(%ebp), %eax
	movl %ecx, (%eax)
	leal -216(%ebp), %eax
	movl %eax, -20(%ebp)
	movl 12(%ebp), %eax
	movl %eax, %ecx
	movl -20(%ebp), %eax
	movl %ecx, (%eax)
	pushl %edx
	pushl %ecx
	pushl %eax
	movl $8, %eax
	pushl %eax
	call _oat_alloc_array
	movl %eax, -16(%ebp)
	addl $4, %esp
	popl %eax
	popl %ecx
	popl %edx
	movl -16(%ebp), %eax
	movl %eax, -12(%ebp)
	leal -212(%ebp), %eax
	movl %eax, -8(%ebp)
	movl $1, %eax
	movl %eax, %ecx
	movl -8(%ebp), %eax
	movl %ecx, (%eax)
	movl -8(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -4(%ebp)
	jmp __check802
__fresh805:
	jmp __check802
__check802:
	jmp __end801
__fresh806:
	movl -4(%ebp), %eax
	movl %eax, %ecx
	movl $8, %eax
	cmpl %eax, %ecx
	setL -28(%ebp)
	andl $1, -28(%ebp)
	movl -28(%ebp), %eax
	cmpl $0, %eax
	jNE __body803
	jmp __end801
__fresh807:
	jmp __body803
__body803:
	movl -12(%ebp), %eax
	addl $4, %eax
	movl %eax, %ecx
	movl -4(%ebp), %eax
	imull $4, %eax
	addl %ecx, %eax
	movl %eax, -36(%ebp)
	movl $0, %eax
	movl %eax, %ecx
	movl -36(%ebp), %eax
	movl %ecx, (%eax)
	movl -4(%ebp), %eax
	movl %eax, -32(%ebp)
	movl $1, %eax
	movl %eax, %ecx
	addl %ecx, -32(%ebp)
	jmp __check802
__fresh808:
	jmp __end801
__end801:
	leal -224(%ebp), %eax
	movl %eax, -208(%ebp)
	movl -12(%ebp), %eax
	movl %eax, %ecx
	movl -208(%ebp), %eax
	movl %ecx, (%eax)
	movl -208(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -204(%ebp)
	movl -204(%ebp), %eax
	addl $0, %eax
	movl %eax, -200(%ebp)
	movl -200(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -196(%ebp)
	pushl %edx
	pushl %ecx
	pushl %eax
	movl $0, %eax
	pushl %eax
	movl -196(%ebp), %eax
	pushl %eax
	call _oat_array_bounds_check
	addl $8, %esp
	popl %eax
	popl %ecx
	popl %edx
	movl -204(%ebp), %eax
	addl $4, %eax
	addl $0, %eax
	movl %eax, -192(%ebp)
	movl $121, %eax
	movl %eax, %ecx
	movl -192(%ebp), %eax
	movl %ecx, (%eax)
	movl -208(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -188(%ebp)
	movl -188(%ebp), %eax
	addl $0, %eax
	movl %eax, -184(%ebp)
	movl -184(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -180(%ebp)
	pushl %edx
	pushl %ecx
	pushl %eax
	movl $1, %eax
	pushl %eax
	movl -180(%ebp), %eax
	pushl %eax
	call _oat_array_bounds_check
	addl $8, %esp
	popl %eax
	popl %ecx
	popl %edx
	movl -188(%ebp), %eax
	addl $4, %eax
	addl $4, %eax
	movl %eax, -176(%ebp)
	movl $125, %eax
	movl %eax, %ecx
	movl -176(%ebp), %eax
	movl %ecx, (%eax)
	movl -208(%ebp), %eax
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
	movl $2, %eax
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
	addl $8, %eax
	movl %eax, -160(%ebp)
	movl $120, %eax
	movl %eax, %ecx
	movl -160(%ebp), %eax
	movl %ecx, (%eax)
	movl -208(%ebp), %eax
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
	movl $3, %eax
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
	addl $12, %eax
	movl %eax, -144(%ebp)
	movl $111, %eax
	movl %eax, %ecx
	movl -144(%ebp), %eax
	movl %ecx, (%eax)
	movl -208(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -140(%ebp)
	movl -140(%ebp), %eax
	addl $0, %eax
	movl %eax, -136(%ebp)
	movl -136(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -132(%ebp)
	pushl %edx
	pushl %ecx
	pushl %eax
	movl $4, %eax
	pushl %eax
	movl -132(%ebp), %eax
	pushl %eax
	call _oat_array_bounds_check
	addl $8, %esp
	popl %eax
	popl %ecx
	popl %edx
	movl -140(%ebp), %eax
	addl $4, %eax
	addl $16, %eax
	movl %eax, -128(%ebp)
	movl $116, %eax
	movl %eax, %ecx
	movl -128(%ebp), %eax
	movl %ecx, (%eax)
	movl -208(%ebp), %eax
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
	movl $5, %eax
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
	addl $20, %eax
	movl %eax, -112(%ebp)
	movl $110, %eax
	movl %eax, %ecx
	movl -112(%ebp), %eax
	movl %ecx, (%eax)
	movl -208(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -108(%ebp)
	movl -108(%ebp), %eax
	addl $0, %eax
	movl %eax, -104(%ebp)
	movl -104(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -100(%ebp)
	pushl %edx
	pushl %ecx
	pushl %eax
	movl $6, %eax
	pushl %eax
	movl -100(%ebp), %eax
	pushl %eax
	call _oat_array_bounds_check
	addl $8, %esp
	popl %eax
	popl %ecx
	popl %edx
	movl -108(%ebp), %eax
	addl $4, %eax
	addl $24, %eax
	movl %eax, -96(%ebp)
	movl $117, %eax
	movl %eax, %ecx
	movl -96(%ebp), %eax
	movl %ecx, (%eax)
	movl -208(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -92(%ebp)
	movl -92(%ebp), %eax
	addl $0, %eax
	movl %eax, -88(%ebp)
	movl -88(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -84(%ebp)
	pushl %edx
	pushl %ecx
	pushl %eax
	movl $7, %eax
	pushl %eax
	movl -84(%ebp), %eax
	pushl %eax
	call _oat_array_bounds_check
	addl $8, %esp
	popl %eax
	popl %ecx
	popl %edx
	movl -92(%ebp), %eax
	addl $4, %eax
	addl $28, %eax
	movl %eax, -80(%ebp)
	movl $119, %eax
	movl %eax, %ecx
	movl -80(%ebp), %eax
	movl %ecx, (%eax)
	movl -208(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -76(%ebp)
	pushl %edx
	pushl %ecx
	pushl %eax
	movl -76(%ebp), %eax
	pushl %eax
	call _string_of_array
	movl %eax, -72(%ebp)
	addl $4, %esp
	popl %eax
	popl %ecx
	popl %edx
	pushl %edx
	pushl %ecx
	pushl %eax
	movl -72(%ebp), %eax
	pushl %eax
	call _print_string
	addl $4, %esp
	popl %eax
	popl %ecx
	popl %edx
	movl _oat_string2197, %eax
	movl %eax, -68(%ebp)
	pushl %edx
	pushl %ecx
	pushl %eax
	movl -68(%ebp), %eax
	pushl %eax
	call _print_string
	addl $4, %esp
	popl %eax
	popl %ecx
	popl %edx
	movl -208(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -64(%ebp)
	movl -64(%ebp), %eax
	addl $0, %eax
	movl %eax, -60(%ebp)
	movl -60(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -56(%ebp)
	movl -208(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -52(%ebp)
	pushl %edx
	pushl %ecx
	pushl %eax
	movl -56(%ebp), %eax
	pushl %eax
	movl -52(%ebp), %eax
	pushl %eax
	call _bubble_sort
	addl $8, %esp
	popl %eax
	popl %ecx
	popl %edx
	movl -208(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -48(%ebp)
	pushl %edx
	pushl %ecx
	pushl %eax
	movl -48(%ebp), %eax
	pushl %eax
	call _string_of_array
	movl %eax, -44(%ebp)
	addl $4, %esp
	popl %eax
	popl %ecx
	popl %edx
	pushl %edx
	pushl %ecx
	pushl %eax
	movl -44(%ebp), %eax
	pushl %eax
	call _print_string
	addl $4, %esp
	popl %eax
	popl %ecx
	popl %edx
	movl $0, %eax
	movl %eax, -40(%ebp)
	movl $1, %eax
	movl %eax, %ecx
	subl %ecx, -40(%ebp)
	movl -40(%ebp), %eax
	movl %ebp, %esp
	popl %ebp
	ret
.globl _bubble_sort
_bubble_sort:
	pushl %ebp
	movl %esp, %ebp
	subl $240, %esp
__fresh794:
	leal -236(%ebp), %eax
	movl %eax, -24(%ebp)
	movl 8(%ebp), %eax
	movl %eax, %ecx
	movl -24(%ebp), %eax
	movl %ecx, (%eax)
	leal -232(%ebp), %eax
	movl %eax, -20(%ebp)
	movl 12(%ebp), %eax
	movl %eax, %ecx
	movl -20(%ebp), %eax
	movl %ecx, (%eax)
	leal -228(%ebp), %eax
	movl %eax, -16(%ebp)
	movl $0, %eax
	movl %eax, %ecx
	movl -16(%ebp), %eax
	movl %ecx, (%eax)
	movl -20(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -12(%ebp)
	movl -12(%ebp), %eax
	movl %eax, -8(%ebp)
	movl $1, %eax
	movl %eax, %ecx
	subl %ecx, -8(%ebp)
	leal -224(%ebp), %eax
	movl %eax, -4(%ebp)
	movl -8(%ebp), %eax
	movl %eax, %ecx
	movl -4(%ebp), %eax
	movl %ecx, (%eax)
	jmp __cond787
__cond787:
	movl -4(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -32(%ebp)
	movl -32(%ebp), %eax
	movl %eax, %ecx
	movl $0, %eax
	cmpl %eax, %ecx
	setG -28(%ebp)
	andl $1, -28(%ebp)
	movl -28(%ebp), %eax
	cmpl $0, %eax
	jNE __body786
	jmp __post785
__fresh795:
	jmp __body786
__body786:
	leal -240(%ebp), %eax
	movl %eax, -36(%ebp)
	movl $1, %eax
	movl %eax, %ecx
	movl -36(%ebp), %eax
	movl %ecx, (%eax)
	jmp __cond790
__cond790:
	movl -36(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -48(%ebp)
	movl -4(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -44(%ebp)
	movl -48(%ebp), %eax
	movl %eax, %ecx
	movl -44(%ebp), %eax
	cmpl %eax, %ecx
	setLE -40(%ebp)
	andl $1, -40(%ebp)
	movl -40(%ebp), %eax
	cmpl $0, %eax
	jNE __body789
	jmp __post788
__fresh796:
	jmp __body789
__body789:
	movl -36(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -104(%ebp)
	movl -104(%ebp), %eax
	movl %eax, -100(%ebp)
	movl $1, %eax
	movl %eax, %ecx
	subl %ecx, -100(%ebp)
	movl -24(%ebp), %eax
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
	movl -36(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -76(%ebp)
	movl -24(%ebp), %eax
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
	movl -76(%ebp), %eax
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
	movl %eax, %ecx
	movl -76(%ebp), %eax
	imull $4, %eax
	addl %ecx, %eax
	movl %eax, -60(%ebp)
	movl -60(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -56(%ebp)
	movl -80(%ebp), %eax
	movl %eax, %ecx
	movl -56(%ebp), %eax
	cmpl %eax, %ecx
	setG -52(%ebp)
	andl $1, -52(%ebp)
	movl -52(%ebp), %eax
	cmpl $0, %eax
	jNE __then793
	jmp __else792
__fresh797:
	jmp __then793
__then793:
	movl -36(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -204(%ebp)
	movl -204(%ebp), %eax
	movl %eax, -200(%ebp)
	movl $1, %eax
	movl %eax, %ecx
	subl %ecx, -200(%ebp)
	movl -24(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -196(%ebp)
	movl -196(%ebp), %eax
	addl $0, %eax
	movl %eax, -192(%ebp)
	movl -192(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -188(%ebp)
	pushl %edx
	pushl %ecx
	pushl %eax
	movl -200(%ebp), %eax
	pushl %eax
	movl -188(%ebp), %eax
	pushl %eax
	call _oat_array_bounds_check
	addl $8, %esp
	popl %eax
	popl %ecx
	popl %edx
	movl -196(%ebp), %eax
	addl $4, %eax
	movl %eax, %ecx
	movl -200(%ebp), %eax
	imull $4, %eax
	addl %ecx, %eax
	movl %eax, -184(%ebp)
	movl -184(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -180(%ebp)
	movl -180(%ebp), %eax
	movl %eax, %ecx
	movl -16(%ebp), %eax
	movl %ecx, (%eax)
	movl -36(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -176(%ebp)
	movl -176(%ebp), %eax
	movl %eax, -172(%ebp)
	movl $1, %eax
	movl %eax, %ecx
	subl %ecx, -172(%ebp)
	movl -24(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -168(%ebp)
	movl -168(%ebp), %eax
	addl $0, %eax
	movl %eax, -164(%ebp)
	movl -164(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -160(%ebp)
	pushl %edx
	pushl %ecx
	pushl %eax
	movl -172(%ebp), %eax
	pushl %eax
	movl -160(%ebp), %eax
	pushl %eax
	call _oat_array_bounds_check
	addl $8, %esp
	popl %eax
	popl %ecx
	popl %edx
	movl -168(%ebp), %eax
	addl $4, %eax
	movl %eax, %ecx
	movl -172(%ebp), %eax
	imull $4, %eax
	addl %ecx, %eax
	movl %eax, -156(%ebp)
	movl -36(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -152(%ebp)
	movl -24(%ebp), %eax
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
	movl -136(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -132(%ebp)
	movl -132(%ebp), %eax
	movl %eax, %ecx
	movl -156(%ebp), %eax
	movl %ecx, (%eax)
	movl -36(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -128(%ebp)
	movl -24(%ebp), %eax
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
	movl -16(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -108(%ebp)
	movl -108(%ebp), %eax
	movl %eax, %ecx
	movl -112(%ebp), %eax
	movl %ecx, (%eax)
	jmp __merge791
__fresh798:
	jmp __else792
__else792:
	jmp __merge791
__merge791:
	movl -36(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -212(%ebp)
	movl -212(%ebp), %eax
	movl %eax, -208(%ebp)
	movl $1, %eax
	movl %eax, %ecx
	addl %ecx, -208(%ebp)
	movl -208(%ebp), %eax
	movl %eax, %ecx
	movl -36(%ebp), %eax
	movl %ecx, (%eax)
	jmp __cond790
__fresh799:
	jmp __post788
__post788:
	movl -4(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -220(%ebp)
	movl -220(%ebp), %eax
	movl %eax, -216(%ebp)
	movl $1, %eax
	movl %eax, %ecx
	subl %ecx, -216(%ebp)
	movl -216(%ebp), %eax
	movl %eax, %ecx
	movl -4(%ebp), %eax
	movl %ecx, (%eax)
	jmp __cond787
__fresh800:
	jmp __post785
__post785:
	movl %ebp, %esp
	popl %ebp
	ret
