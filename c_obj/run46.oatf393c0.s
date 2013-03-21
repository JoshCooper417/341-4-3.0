	.align 4
	.data
_oat_string1444.str.:
	.ascii "42\0"
_oat_string1444:
	.long _oat_string1444.str.

	.text
.globl _oat_init
_oat_init:
	pushl %ebp
	movl %esp, %ebp
	subl $0, %esp
__fresh545:
	movl %ebp, %esp
	popl %ebp
	ret
.globl _program
_program:
	pushl %ebp
	movl %esp, %ebp
	subl $872, %esp
__fresh544:
	leal -872(%ebp), %eax
	movl %eax, -860(%ebp)
	movl 8(%ebp), %eax
	movl %eax, %ecx
	movl -860(%ebp), %eax
	movl %ecx, (%eax)
	leal -868(%ebp), %eax
	movl %eax, -856(%ebp)
	movl 12(%ebp), %eax
	movl %eax, %ecx
	movl -856(%ebp), %eax
	movl %ecx, (%eax)
	pushl %edx
	pushl %ecx
	pushl %eax
	movl $1, %eax
	pushl %eax
	call _oat_alloc_array
	movl %eax, -852(%ebp)
	addl $4, %esp
	popl %eax
	popl %ecx
	popl %edx
	movl -852(%ebp), %eax
	movl %eax, -848(%ebp)
	pushl %edx
	pushl %ecx
	pushl %eax
	movl $1, %eax
	pushl %eax
	call _oat_alloc_array
	movl %eax, -844(%ebp)
	addl $4, %esp
	popl %eax
	popl %ecx
	popl %edx
	movl -844(%ebp), %eax
	movl %eax, -840(%ebp)
	pushl %edx
	pushl %ecx
	pushl %eax
	movl $1, %eax
	pushl %eax
	call _oat_alloc_array
	movl %eax, -836(%ebp)
	addl $4, %esp
	popl %eax
	popl %ecx
	popl %edx
	movl -836(%ebp), %eax
	movl %eax, -832(%ebp)
	pushl %edx
	pushl %ecx
	pushl %eax
	movl $1, %eax
	pushl %eax
	call _oat_alloc_array
	movl %eax, -828(%ebp)
	addl $4, %esp
	popl %eax
	popl %ecx
	popl %edx
	movl -828(%ebp), %eax
	movl %eax, -824(%ebp)
	pushl %edx
	pushl %ecx
	pushl %eax
	movl $1, %eax
	pushl %eax
	call _oat_alloc_array
	movl %eax, -820(%ebp)
	addl $4, %esp
	popl %eax
	popl %ecx
	popl %edx
	movl -820(%ebp), %eax
	movl %eax, -816(%ebp)
	pushl %edx
	pushl %ecx
	pushl %eax
	movl $1, %eax
	pushl %eax
	call _oat_alloc_array
	movl %eax, -812(%ebp)
	addl $4, %esp
	popl %eax
	popl %ecx
	popl %edx
	movl -812(%ebp), %eax
	movl %eax, -808(%ebp)
	pushl %edx
	pushl %ecx
	pushl %eax
	movl $1, %eax
	pushl %eax
	call _oat_alloc_array
	movl %eax, -804(%ebp)
	addl $4, %esp
	popl %eax
	popl %ecx
	popl %edx
	movl -804(%ebp), %eax
	movl %eax, -800(%ebp)
	pushl %edx
	pushl %ecx
	pushl %eax
	movl $1, %eax
	pushl %eax
	call _oat_alloc_array
	movl %eax, -796(%ebp)
	addl $4, %esp
	popl %eax
	popl %ecx
	popl %edx
	movl -796(%ebp), %eax
	movl %eax, -792(%ebp)
	pushl %edx
	pushl %ecx
	pushl %eax
	movl $1, %eax
	pushl %eax
	call _oat_alloc_array
	movl %eax, -788(%ebp)
	addl $4, %esp
	popl %eax
	popl %ecx
	popl %edx
	movl -788(%ebp), %eax
	movl %eax, -784(%ebp)
	pushl %edx
	pushl %ecx
	pushl %eax
	movl $1, %eax
	pushl %eax
	call _oat_alloc_array
	movl %eax, -780(%ebp)
	addl $4, %esp
	popl %eax
	popl %ecx
	popl %edx
	movl -780(%ebp), %eax
	movl %eax, -776(%ebp)
	pushl %edx
	pushl %ecx
	pushl %eax
	movl $1, %eax
	pushl %eax
	call _oat_alloc_array
	movl %eax, -772(%ebp)
	addl $4, %esp
	popl %eax
	popl %ecx
	popl %edx
	movl -772(%ebp), %eax
	movl %eax, -768(%ebp)
	pushl %edx
	pushl %ecx
	pushl %eax
	movl $1, %eax
	pushl %eax
	call _oat_alloc_array
	movl %eax, -764(%ebp)
	addl $4, %esp
	popl %eax
	popl %ecx
	popl %edx
	movl -764(%ebp), %eax
	movl %eax, -760(%ebp)
	pushl %edx
	pushl %ecx
	pushl %eax
	movl $1, %eax
	pushl %eax
	call _oat_alloc_array
	movl %eax, -756(%ebp)
	addl $4, %esp
	popl %eax
	popl %ecx
	popl %edx
	movl -756(%ebp), %eax
	movl %eax, -752(%ebp)
	pushl %edx
	pushl %ecx
	pushl %eax
	movl $1, %eax
	pushl %eax
	call _oat_alloc_array
	movl %eax, -748(%ebp)
	addl $4, %esp
	popl %eax
	popl %ecx
	popl %edx
	movl -748(%ebp), %eax
	movl %eax, -744(%ebp)
	pushl %edx
	pushl %ecx
	pushl %eax
	movl $1, %eax
	pushl %eax
	call _oat_alloc_array
	movl %eax, -740(%ebp)
	addl $4, %esp
	popl %eax
	popl %ecx
	popl %edx
	movl -740(%ebp), %eax
	movl %eax, -736(%ebp)
	pushl %edx
	pushl %ecx
	pushl %eax
	movl $1, %eax
	pushl %eax
	call _oat_alloc_array
	movl %eax, -732(%ebp)
	addl $4, %esp
	popl %eax
	popl %ecx
	popl %edx
	movl -732(%ebp), %eax
	movl %eax, -728(%ebp)
	pushl %edx
	pushl %ecx
	pushl %eax
	movl $1, %eax
	pushl %eax
	call _oat_alloc_array
	movl %eax, -724(%ebp)
	addl $4, %esp
	popl %eax
	popl %ecx
	popl %edx
	movl -724(%ebp), %eax
	movl %eax, -720(%ebp)
	pushl %edx
	pushl %ecx
	pushl %eax
	movl $1, %eax
	pushl %eax
	call _oat_alloc_array
	movl %eax, -716(%ebp)
	addl $4, %esp
	popl %eax
	popl %ecx
	popl %edx
	movl -716(%ebp), %eax
	movl %eax, -712(%ebp)
	pushl %edx
	pushl %ecx
	pushl %eax
	movl $1, %eax
	pushl %eax
	call _oat_alloc_array
	movl %eax, -708(%ebp)
	addl $4, %esp
	popl %eax
	popl %ecx
	popl %edx
	movl -708(%ebp), %eax
	movl %eax, -704(%ebp)
	pushl %edx
	pushl %ecx
	pushl %eax
	movl $1, %eax
	pushl %eax
	call _oat_alloc_array
	movl %eax, -700(%ebp)
	addl $4, %esp
	popl %eax
	popl %ecx
	popl %edx
	movl -700(%ebp), %eax
	movl %eax, -696(%ebp)
	pushl %edx
	pushl %ecx
	pushl %eax
	movl $1, %eax
	pushl %eax
	call _oat_alloc_array
	movl %eax, -692(%ebp)
	addl $4, %esp
	popl %eax
	popl %ecx
	popl %edx
	movl -692(%ebp), %eax
	movl %eax, -688(%ebp)
	pushl %edx
	pushl %ecx
	pushl %eax
	movl $1, %eax
	pushl %eax
	call _oat_alloc_array
	movl %eax, -684(%ebp)
	addl $4, %esp
	popl %eax
	popl %ecx
	popl %edx
	movl -684(%ebp), %eax
	movl %eax, -680(%ebp)
	pushl %edx
	pushl %ecx
	pushl %eax
	movl $1, %eax
	pushl %eax
	call _oat_alloc_array
	movl %eax, -676(%ebp)
	addl $4, %esp
	popl %eax
	popl %ecx
	popl %edx
	movl -676(%ebp), %eax
	movl %eax, -672(%ebp)
	pushl %edx
	pushl %ecx
	pushl %eax
	movl $1, %eax
	pushl %eax
	call _oat_alloc_array
	movl %eax, -668(%ebp)
	addl $4, %esp
	popl %eax
	popl %ecx
	popl %edx
	movl -668(%ebp), %eax
	movl %eax, -664(%ebp)
	pushl %edx
	pushl %ecx
	pushl %eax
	movl $1, %eax
	pushl %eax
	call _oat_alloc_array
	movl %eax, -660(%ebp)
	addl $4, %esp
	popl %eax
	popl %ecx
	popl %edx
	movl -660(%ebp), %eax
	movl %eax, -656(%ebp)
	pushl %edx
	pushl %ecx
	pushl %eax
	movl $1, %eax
	pushl %eax
	call _oat_alloc_array
	movl %eax, -652(%ebp)
	addl $4, %esp
	popl %eax
	popl %ecx
	popl %edx
	movl -652(%ebp), %eax
	movl %eax, -648(%ebp)
	pushl %edx
	pushl %ecx
	pushl %eax
	movl $1, %eax
	pushl %eax
	call _oat_alloc_array
	movl %eax, -644(%ebp)
	addl $4, %esp
	popl %eax
	popl %ecx
	popl %edx
	movl -644(%ebp), %eax
	movl %eax, -640(%ebp)
	pushl %edx
	pushl %ecx
	pushl %eax
	movl $1, %eax
	pushl %eax
	call _oat_alloc_array
	movl %eax, -636(%ebp)
	addl $4, %esp
	popl %eax
	popl %ecx
	popl %edx
	movl -636(%ebp), %eax
	movl %eax, -632(%ebp)
	pushl %edx
	pushl %ecx
	pushl %eax
	movl $1, %eax
	pushl %eax
	call _oat_alloc_array
	movl %eax, -628(%ebp)
	addl $4, %esp
	popl %eax
	popl %ecx
	popl %edx
	movl -628(%ebp), %eax
	movl %eax, -624(%ebp)
	pushl %edx
	pushl %ecx
	pushl %eax
	movl $1, %eax
	pushl %eax
	call _oat_alloc_array
	movl %eax, -620(%ebp)
	addl $4, %esp
	popl %eax
	popl %ecx
	popl %edx
	movl -620(%ebp), %eax
	movl %eax, -616(%ebp)
	movl _oat_string1444, %eax
	movl %eax, -612(%ebp)
	movl -616(%ebp), %eax
	addl $4, %eax
	addl $0, %eax
	movl %eax, -608(%ebp)
	movl -612(%ebp), %eax
	movl %eax, %ecx
	movl -608(%ebp), %eax
	movl %ecx, (%eax)
	movl -624(%ebp), %eax
	addl $4, %eax
	addl $0, %eax
	movl %eax, -604(%ebp)
	movl -616(%ebp), %eax
	movl %eax, %ecx
	movl -604(%ebp), %eax
	movl %ecx, (%eax)
	movl -632(%ebp), %eax
	addl $4, %eax
	addl $0, %eax
	movl %eax, -600(%ebp)
	movl -624(%ebp), %eax
	movl %eax, %ecx
	movl -600(%ebp), %eax
	movl %ecx, (%eax)
	movl -640(%ebp), %eax
	addl $4, %eax
	addl $0, %eax
	movl %eax, -596(%ebp)
	movl -632(%ebp), %eax
	movl %eax, %ecx
	movl -596(%ebp), %eax
	movl %ecx, (%eax)
	movl -648(%ebp), %eax
	addl $4, %eax
	addl $0, %eax
	movl %eax, -592(%ebp)
	movl -640(%ebp), %eax
	movl %eax, %ecx
	movl -592(%ebp), %eax
	movl %ecx, (%eax)
	movl -656(%ebp), %eax
	addl $4, %eax
	addl $0, %eax
	movl %eax, -588(%ebp)
	movl -648(%ebp), %eax
	movl %eax, %ecx
	movl -588(%ebp), %eax
	movl %ecx, (%eax)
	movl -664(%ebp), %eax
	addl $4, %eax
	addl $0, %eax
	movl %eax, -584(%ebp)
	movl -656(%ebp), %eax
	movl %eax, %ecx
	movl -584(%ebp), %eax
	movl %ecx, (%eax)
	movl -672(%ebp), %eax
	addl $4, %eax
	addl $0, %eax
	movl %eax, -580(%ebp)
	movl -664(%ebp), %eax
	movl %eax, %ecx
	movl -580(%ebp), %eax
	movl %ecx, (%eax)
	movl -680(%ebp), %eax
	addl $4, %eax
	addl $0, %eax
	movl %eax, -576(%ebp)
	movl -672(%ebp), %eax
	movl %eax, %ecx
	movl -576(%ebp), %eax
	movl %ecx, (%eax)
	movl -688(%ebp), %eax
	addl $4, %eax
	addl $0, %eax
	movl %eax, -572(%ebp)
	movl -680(%ebp), %eax
	movl %eax, %ecx
	movl -572(%ebp), %eax
	movl %ecx, (%eax)
	movl -696(%ebp), %eax
	addl $4, %eax
	addl $0, %eax
	movl %eax, -568(%ebp)
	movl -688(%ebp), %eax
	movl %eax, %ecx
	movl -568(%ebp), %eax
	movl %ecx, (%eax)
	movl -704(%ebp), %eax
	addl $4, %eax
	addl $0, %eax
	movl %eax, -564(%ebp)
	movl -696(%ebp), %eax
	movl %eax, %ecx
	movl -564(%ebp), %eax
	movl %ecx, (%eax)
	movl -712(%ebp), %eax
	addl $4, %eax
	addl $0, %eax
	movl %eax, -560(%ebp)
	movl -704(%ebp), %eax
	movl %eax, %ecx
	movl -560(%ebp), %eax
	movl %ecx, (%eax)
	movl -720(%ebp), %eax
	addl $4, %eax
	addl $0, %eax
	movl %eax, -556(%ebp)
	movl -712(%ebp), %eax
	movl %eax, %ecx
	movl -556(%ebp), %eax
	movl %ecx, (%eax)
	movl -728(%ebp), %eax
	addl $4, %eax
	addl $0, %eax
	movl %eax, -552(%ebp)
	movl -720(%ebp), %eax
	movl %eax, %ecx
	movl -552(%ebp), %eax
	movl %ecx, (%eax)
	movl -736(%ebp), %eax
	addl $4, %eax
	addl $0, %eax
	movl %eax, -548(%ebp)
	movl -728(%ebp), %eax
	movl %eax, %ecx
	movl -548(%ebp), %eax
	movl %ecx, (%eax)
	movl -744(%ebp), %eax
	addl $4, %eax
	addl $0, %eax
	movl %eax, -544(%ebp)
	movl -736(%ebp), %eax
	movl %eax, %ecx
	movl -544(%ebp), %eax
	movl %ecx, (%eax)
	movl -752(%ebp), %eax
	addl $4, %eax
	addl $0, %eax
	movl %eax, -540(%ebp)
	movl -744(%ebp), %eax
	movl %eax, %ecx
	movl -540(%ebp), %eax
	movl %ecx, (%eax)
	movl -760(%ebp), %eax
	addl $4, %eax
	addl $0, %eax
	movl %eax, -536(%ebp)
	movl -752(%ebp), %eax
	movl %eax, %ecx
	movl -536(%ebp), %eax
	movl %ecx, (%eax)
	movl -768(%ebp), %eax
	addl $4, %eax
	addl $0, %eax
	movl %eax, -532(%ebp)
	movl -760(%ebp), %eax
	movl %eax, %ecx
	movl -532(%ebp), %eax
	movl %ecx, (%eax)
	movl -776(%ebp), %eax
	addl $4, %eax
	addl $0, %eax
	movl %eax, -528(%ebp)
	movl -768(%ebp), %eax
	movl %eax, %ecx
	movl -528(%ebp), %eax
	movl %ecx, (%eax)
	movl -784(%ebp), %eax
	addl $4, %eax
	addl $0, %eax
	movl %eax, -524(%ebp)
	movl -776(%ebp), %eax
	movl %eax, %ecx
	movl -524(%ebp), %eax
	movl %ecx, (%eax)
	movl -792(%ebp), %eax
	addl $4, %eax
	addl $0, %eax
	movl %eax, -520(%ebp)
	movl -784(%ebp), %eax
	movl %eax, %ecx
	movl -520(%ebp), %eax
	movl %ecx, (%eax)
	movl -800(%ebp), %eax
	addl $4, %eax
	addl $0, %eax
	movl %eax, -516(%ebp)
	movl -792(%ebp), %eax
	movl %eax, %ecx
	movl -516(%ebp), %eax
	movl %ecx, (%eax)
	movl -808(%ebp), %eax
	addl $4, %eax
	addl $0, %eax
	movl %eax, -512(%ebp)
	movl -800(%ebp), %eax
	movl %eax, %ecx
	movl -512(%ebp), %eax
	movl %ecx, (%eax)
	movl -816(%ebp), %eax
	addl $4, %eax
	addl $0, %eax
	movl %eax, -508(%ebp)
	movl -808(%ebp), %eax
	movl %eax, %ecx
	movl -508(%ebp), %eax
	movl %ecx, (%eax)
	movl -824(%ebp), %eax
	addl $4, %eax
	addl $0, %eax
	movl %eax, -504(%ebp)
	movl -816(%ebp), %eax
	movl %eax, %ecx
	movl -504(%ebp), %eax
	movl %ecx, (%eax)
	movl -832(%ebp), %eax
	addl $4, %eax
	addl $0, %eax
	movl %eax, -500(%ebp)
	movl -824(%ebp), %eax
	movl %eax, %ecx
	movl -500(%ebp), %eax
	movl %ecx, (%eax)
	movl -840(%ebp), %eax
	addl $4, %eax
	addl $0, %eax
	movl %eax, -496(%ebp)
	movl -832(%ebp), %eax
	movl %eax, %ecx
	movl -496(%ebp), %eax
	movl %ecx, (%eax)
	movl -848(%ebp), %eax
	addl $4, %eax
	addl $0, %eax
	movl %eax, -492(%ebp)
	movl -840(%ebp), %eax
	movl %eax, %ecx
	movl -492(%ebp), %eax
	movl %ecx, (%eax)
	leal -864(%ebp), %eax
	movl %eax, -488(%ebp)
	movl -848(%ebp), %eax
	movl %eax, %ecx
	movl -488(%ebp), %eax
	movl %ecx, (%eax)
	movl -488(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -484(%ebp)
	movl -484(%ebp), %eax
	addl $0, %eax
	movl %eax, -480(%ebp)
	movl -480(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -476(%ebp)
	pushl %edx
	pushl %ecx
	pushl %eax
	movl $0, %eax
	pushl %eax
	movl -476(%ebp), %eax
	pushl %eax
	call _oat_array_bounds_check
	addl $8, %esp
	popl %eax
	popl %ecx
	popl %edx
	movl -484(%ebp), %eax
	addl $4, %eax
	addl $0, %eax
	movl %eax, -472(%ebp)
	movl -472(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -468(%ebp)
	movl -468(%ebp), %eax
	addl $0, %eax
	movl %eax, -464(%ebp)
	movl -464(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -460(%ebp)
	pushl %edx
	pushl %ecx
	pushl %eax
	movl $0, %eax
	pushl %eax
	movl -460(%ebp), %eax
	pushl %eax
	call _oat_array_bounds_check
	addl $8, %esp
	popl %eax
	popl %ecx
	popl %edx
	movl -468(%ebp), %eax
	addl $4, %eax
	addl $0, %eax
	movl %eax, -456(%ebp)
	movl -456(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -452(%ebp)
	movl -452(%ebp), %eax
	addl $0, %eax
	movl %eax, -448(%ebp)
	movl -448(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -444(%ebp)
	pushl %edx
	pushl %ecx
	pushl %eax
	movl $0, %eax
	pushl %eax
	movl -444(%ebp), %eax
	pushl %eax
	call _oat_array_bounds_check
	addl $8, %esp
	popl %eax
	popl %ecx
	popl %edx
	movl -452(%ebp), %eax
	addl $4, %eax
	addl $0, %eax
	movl %eax, -440(%ebp)
	movl -440(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -436(%ebp)
	movl -436(%ebp), %eax
	addl $0, %eax
	movl %eax, -432(%ebp)
	movl -432(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -428(%ebp)
	pushl %edx
	pushl %ecx
	pushl %eax
	movl $0, %eax
	pushl %eax
	movl -428(%ebp), %eax
	pushl %eax
	call _oat_array_bounds_check
	addl $8, %esp
	popl %eax
	popl %ecx
	popl %edx
	movl -436(%ebp), %eax
	addl $4, %eax
	addl $0, %eax
	movl %eax, -424(%ebp)
	movl -424(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -420(%ebp)
	movl -420(%ebp), %eax
	addl $0, %eax
	movl %eax, -416(%ebp)
	movl -416(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -412(%ebp)
	pushl %edx
	pushl %ecx
	pushl %eax
	movl $0, %eax
	pushl %eax
	movl -412(%ebp), %eax
	pushl %eax
	call _oat_array_bounds_check
	addl $8, %esp
	popl %eax
	popl %ecx
	popl %edx
	movl -420(%ebp), %eax
	addl $4, %eax
	addl $0, %eax
	movl %eax, -408(%ebp)
	movl -408(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -404(%ebp)
	movl -404(%ebp), %eax
	addl $0, %eax
	movl %eax, -400(%ebp)
	movl -400(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -396(%ebp)
	pushl %edx
	pushl %ecx
	pushl %eax
	movl $0, %eax
	pushl %eax
	movl -396(%ebp), %eax
	pushl %eax
	call _oat_array_bounds_check
	addl $8, %esp
	popl %eax
	popl %ecx
	popl %edx
	movl -404(%ebp), %eax
	addl $4, %eax
	addl $0, %eax
	movl %eax, -392(%ebp)
	movl -392(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -388(%ebp)
	movl -388(%ebp), %eax
	addl $0, %eax
	movl %eax, -384(%ebp)
	movl -384(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -380(%ebp)
	pushl %edx
	pushl %ecx
	pushl %eax
	movl $0, %eax
	pushl %eax
	movl -380(%ebp), %eax
	pushl %eax
	call _oat_array_bounds_check
	addl $8, %esp
	popl %eax
	popl %ecx
	popl %edx
	movl -388(%ebp), %eax
	addl $4, %eax
	addl $0, %eax
	movl %eax, -376(%ebp)
	movl -376(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -372(%ebp)
	movl -372(%ebp), %eax
	addl $0, %eax
	movl %eax, -368(%ebp)
	movl -368(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -364(%ebp)
	pushl %edx
	pushl %ecx
	pushl %eax
	movl $0, %eax
	pushl %eax
	movl -364(%ebp), %eax
	pushl %eax
	call _oat_array_bounds_check
	addl $8, %esp
	popl %eax
	popl %ecx
	popl %edx
	movl -372(%ebp), %eax
	addl $4, %eax
	addl $0, %eax
	movl %eax, -360(%ebp)
	movl -360(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -356(%ebp)
	movl -356(%ebp), %eax
	addl $0, %eax
	movl %eax, -352(%ebp)
	movl -352(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -348(%ebp)
	pushl %edx
	pushl %ecx
	pushl %eax
	movl $0, %eax
	pushl %eax
	movl -348(%ebp), %eax
	pushl %eax
	call _oat_array_bounds_check
	addl $8, %esp
	popl %eax
	popl %ecx
	popl %edx
	movl -356(%ebp), %eax
	addl $4, %eax
	addl $0, %eax
	movl %eax, -344(%ebp)
	movl -344(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -340(%ebp)
	movl -340(%ebp), %eax
	addl $0, %eax
	movl %eax, -336(%ebp)
	movl -336(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -332(%ebp)
	pushl %edx
	pushl %ecx
	pushl %eax
	movl $0, %eax
	pushl %eax
	movl -332(%ebp), %eax
	pushl %eax
	call _oat_array_bounds_check
	addl $8, %esp
	popl %eax
	popl %ecx
	popl %edx
	movl -340(%ebp), %eax
	addl $4, %eax
	addl $0, %eax
	movl %eax, -328(%ebp)
	movl -328(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -324(%ebp)
	movl -324(%ebp), %eax
	addl $0, %eax
	movl %eax, -320(%ebp)
	movl -320(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -316(%ebp)
	pushl %edx
	pushl %ecx
	pushl %eax
	movl $0, %eax
	pushl %eax
	movl -316(%ebp), %eax
	pushl %eax
	call _oat_array_bounds_check
	addl $8, %esp
	popl %eax
	popl %ecx
	popl %edx
	movl -324(%ebp), %eax
	addl $4, %eax
	addl $0, %eax
	movl %eax, -312(%ebp)
	movl -312(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -308(%ebp)
	movl -308(%ebp), %eax
	addl $0, %eax
	movl %eax, -304(%ebp)
	movl -304(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -300(%ebp)
	pushl %edx
	pushl %ecx
	pushl %eax
	movl $0, %eax
	pushl %eax
	movl -300(%ebp), %eax
	pushl %eax
	call _oat_array_bounds_check
	addl $8, %esp
	popl %eax
	popl %ecx
	popl %edx
	movl -308(%ebp), %eax
	addl $4, %eax
	addl $0, %eax
	movl %eax, -296(%ebp)
	movl -296(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -292(%ebp)
	movl -292(%ebp), %eax
	addl $0, %eax
	movl %eax, -288(%ebp)
	movl -288(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -284(%ebp)
	pushl %edx
	pushl %ecx
	pushl %eax
	movl $0, %eax
	pushl %eax
	movl -284(%ebp), %eax
	pushl %eax
	call _oat_array_bounds_check
	addl $8, %esp
	popl %eax
	popl %ecx
	popl %edx
	movl -292(%ebp), %eax
	addl $4, %eax
	addl $0, %eax
	movl %eax, -280(%ebp)
	movl -280(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -276(%ebp)
	movl -276(%ebp), %eax
	addl $0, %eax
	movl %eax, -272(%ebp)
	movl -272(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -268(%ebp)
	pushl %edx
	pushl %ecx
	pushl %eax
	movl $0, %eax
	pushl %eax
	movl -268(%ebp), %eax
	pushl %eax
	call _oat_array_bounds_check
	addl $8, %esp
	popl %eax
	popl %ecx
	popl %edx
	movl -276(%ebp), %eax
	addl $4, %eax
	addl $0, %eax
	movl %eax, -264(%ebp)
	movl -264(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -260(%ebp)
	movl -260(%ebp), %eax
	addl $0, %eax
	movl %eax, -256(%ebp)
	movl -256(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -252(%ebp)
	pushl %edx
	pushl %ecx
	pushl %eax
	movl $0, %eax
	pushl %eax
	movl -252(%ebp), %eax
	pushl %eax
	call _oat_array_bounds_check
	addl $8, %esp
	popl %eax
	popl %ecx
	popl %edx
	movl -260(%ebp), %eax
	addl $4, %eax
	addl $0, %eax
	movl %eax, -248(%ebp)
	movl -248(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -244(%ebp)
	movl -244(%ebp), %eax
	addl $0, %eax
	movl %eax, -240(%ebp)
	movl -240(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -236(%ebp)
	pushl %edx
	pushl %ecx
	pushl %eax
	movl $0, %eax
	pushl %eax
	movl -236(%ebp), %eax
	pushl %eax
	call _oat_array_bounds_check
	addl $8, %esp
	popl %eax
	popl %ecx
	popl %edx
	movl -244(%ebp), %eax
	addl $4, %eax
	addl $0, %eax
	movl %eax, -232(%ebp)
	movl -232(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -228(%ebp)
	movl -228(%ebp), %eax
	addl $0, %eax
	movl %eax, -224(%ebp)
	movl -224(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -220(%ebp)
	pushl %edx
	pushl %ecx
	pushl %eax
	movl $0, %eax
	pushl %eax
	movl -220(%ebp), %eax
	pushl %eax
	call _oat_array_bounds_check
	addl $8, %esp
	popl %eax
	popl %ecx
	popl %edx
	movl -228(%ebp), %eax
	addl $4, %eax
	addl $0, %eax
	movl %eax, -216(%ebp)
	movl -216(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -212(%ebp)
	movl -212(%ebp), %eax
	addl $0, %eax
	movl %eax, -208(%ebp)
	movl -208(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -204(%ebp)
	pushl %edx
	pushl %ecx
	pushl %eax
	movl $0, %eax
	pushl %eax
	movl -204(%ebp), %eax
	pushl %eax
	call _oat_array_bounds_check
	addl $8, %esp
	popl %eax
	popl %ecx
	popl %edx
	movl -212(%ebp), %eax
	addl $4, %eax
	addl $0, %eax
	movl %eax, -200(%ebp)
	movl -200(%ebp), %eax
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
	movl $0, %eax
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
	addl $0, %eax
	movl %eax, -184(%ebp)
	movl -184(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -180(%ebp)
	movl -180(%ebp), %eax
	addl $0, %eax
	movl %eax, -176(%ebp)
	movl -176(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -172(%ebp)
	pushl %edx
	pushl %ecx
	pushl %eax
	movl $0, %eax
	pushl %eax
	movl -172(%ebp), %eax
	pushl %eax
	call _oat_array_bounds_check
	addl $8, %esp
	popl %eax
	popl %ecx
	popl %edx
	movl -180(%ebp), %eax
	addl $4, %eax
	addl $0, %eax
	movl %eax, -168(%ebp)
	movl -168(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -164(%ebp)
	movl -164(%ebp), %eax
	addl $0, %eax
	movl %eax, -160(%ebp)
	movl -160(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -156(%ebp)
	pushl %edx
	pushl %ecx
	pushl %eax
	movl $0, %eax
	pushl %eax
	movl -156(%ebp), %eax
	pushl %eax
	call _oat_array_bounds_check
	addl $8, %esp
	popl %eax
	popl %ecx
	popl %edx
	movl -164(%ebp), %eax
	addl $4, %eax
	addl $0, %eax
	movl %eax, -152(%ebp)
	movl -152(%ebp), %eax
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
	movl $0, %eax
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
	addl $0, %eax
	movl %eax, -136(%ebp)
	movl -136(%ebp), %eax
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
	movl $0, %eax
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
	addl $0, %eax
	movl %eax, -120(%ebp)
	movl -120(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -116(%ebp)
	movl -116(%ebp), %eax
	addl $0, %eax
	movl %eax, -112(%ebp)
	movl -112(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -108(%ebp)
	pushl %edx
	pushl %ecx
	pushl %eax
	movl $0, %eax
	pushl %eax
	movl -108(%ebp), %eax
	pushl %eax
	call _oat_array_bounds_check
	addl $8, %esp
	popl %eax
	popl %ecx
	popl %edx
	movl -116(%ebp), %eax
	addl $4, %eax
	addl $0, %eax
	movl %eax, -104(%ebp)
	movl -104(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -100(%ebp)
	movl -100(%ebp), %eax
	addl $0, %eax
	movl %eax, -96(%ebp)
	movl -96(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -92(%ebp)
	pushl %edx
	pushl %ecx
	pushl %eax
	movl $0, %eax
	pushl %eax
	movl -92(%ebp), %eax
	pushl %eax
	call _oat_array_bounds_check
	addl $8, %esp
	popl %eax
	popl %ecx
	popl %edx
	movl -100(%ebp), %eax
	addl $4, %eax
	addl $0, %eax
	movl %eax, -88(%ebp)
	movl -88(%ebp), %eax
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
	movl $0, %eax
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
	addl $0, %eax
	movl %eax, -72(%ebp)
	movl -72(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -68(%ebp)
	movl -68(%ebp), %eax
	addl $0, %eax
	movl %eax, -64(%ebp)
	movl -64(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -60(%ebp)
	pushl %edx
	pushl %ecx
	pushl %eax
	movl $0, %eax
	pushl %eax
	movl -60(%ebp), %eax
	pushl %eax
	call _oat_array_bounds_check
	addl $8, %esp
	popl %eax
	popl %ecx
	popl %edx
	movl -68(%ebp), %eax
	addl $4, %eax
	addl $0, %eax
	movl %eax, -56(%ebp)
	movl -56(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -52(%ebp)
	movl -52(%ebp), %eax
	addl $0, %eax
	movl %eax, -48(%ebp)
	movl -48(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -44(%ebp)
	pushl %edx
	pushl %ecx
	pushl %eax
	movl $0, %eax
	pushl %eax
	movl -44(%ebp), %eax
	pushl %eax
	call _oat_array_bounds_check
	addl $8, %esp
	popl %eax
	popl %ecx
	popl %edx
	movl -52(%ebp), %eax
	addl $4, %eax
	addl $0, %eax
	movl %eax, -40(%ebp)
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
	movl $0, %eax
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
	addl $0, %eax
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
	movl -20(%ebp), %eax
	addl $4, %eax
	addl $0, %eax
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
