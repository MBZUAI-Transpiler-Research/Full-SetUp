	.file	"problem66.c"
# GNU C17 (Ubuntu 13.3.0-6ubuntu2~24.04) version 13.3.0 (x86_64-linux-gnu)
#	compiled by GNU C version 13.3.0, GMP version 6.3.0, MPFR version 4.2.1, MPC version 1.3.1, isl version isl-0.26-GMP

# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed: -mtune=generic -march=x86-64 -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection -fcf-protection
	.text
	.section	.rodata
.LC0:
	.string	"%d"
	.text
	.globl	func0
	.type	func0, @function
func0:
.LFB6:
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$96, %rsp	#,
	movl	%edi, -84(%rbp)	# x, x
	movl	%esi, -88(%rbp)	# shift, shift
# problem66.c:5: char* func0(int x, int shift) {
	movq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp132
	movq	%rax, -8(%rbp)	# tmp132, D.3971
	xorl	%eax, %eax	# tmp132
# problem66.c:7:     sprintf(xs, "%d", x);
	movl	-84(%rbp), %eax	# x, tmp97
	movl	%eax, %edx	# tmp97,
	leaq	.LC0(%rip), %rax	#, tmp98
	movq	%rax, %rsi	# tmp98,
	leaq	xs.1(%rip), %rax	#, tmp99
	movq	%rax, %rdi	# tmp99,
	movl	$0, %eax	#,
	call	sprintf@PLT	#
# problem66.c:8:     int len = strlen(xs);
	leaq	xs.1(%rip), %rax	#, tmp100
	movq	%rax, %rdi	# tmp100,
	call	strlen@PLT	#
# problem66.c:8:     int len = strlen(xs);
	movl	%eax, -68(%rbp)	# _1, len
# problem66.c:10:     if (len < shift) {
	movl	-68(%rbp), %eax	# len, tmp101
	cmpl	-88(%rbp), %eax	# shift, tmp101
	jge	.L2	#,
# problem66.c:11:         for (int i = 0; i < len / 2; i++) {
	movl	$0, -72(%rbp)	#, i
# problem66.c:11:         for (int i = 0; i < len / 2; i++) {
	jmp	.L3	#
.L4:
# problem66.c:12:             char temp = xs[i];
	movl	-72(%rbp), %eax	# i, tmp103
	cltq
	leaq	xs.1(%rip), %rdx	#, tmp104
	movzbl	(%rax,%rdx), %eax	# xs[i_14], tmp105
	movb	%al, -73(%rbp)	# tmp105, temp
# problem66.c:13:             xs[i] = xs[len - 1 - i];
	movl	-68(%rbp), %eax	# len, tmp106
	subl	$1, %eax	#, _2
# problem66.c:13:             xs[i] = xs[len - 1 - i];
	subl	-72(%rbp), %eax	# i, _3
# problem66.c:13:             xs[i] = xs[len - 1 - i];
	cltq
	leaq	xs.1(%rip), %rdx	#, tmp108
	movzbl	(%rax,%rdx), %edx	# xs[_3], _4
# problem66.c:13:             xs[i] = xs[len - 1 - i];
	movl	-72(%rbp), %eax	# i, tmp110
	cltq
	leaq	xs.1(%rip), %rcx	#, tmp111
	movb	%dl, (%rax,%rcx)	# _4, xs[i_14]
# problem66.c:14:             xs[len - 1 - i] = temp;
	movl	-68(%rbp), %eax	# len, tmp112
	subl	$1, %eax	#, _5
# problem66.c:14:             xs[len - 1 - i] = temp;
	subl	-72(%rbp), %eax	# i, _6
# problem66.c:14:             xs[len - 1 - i] = temp;
	cltq
	leaq	xs.1(%rip), %rcx	#, tmp114
	movzbl	-73(%rbp), %edx	# temp, tmp115
	movb	%dl, (%rax,%rcx)	# tmp115, xs[_6]
# problem66.c:11:         for (int i = 0; i < len / 2; i++) {
	addl	$1, -72(%rbp)	#, i
.L3:
# problem66.c:11:         for (int i = 0; i < len / 2; i++) {
	movl	-68(%rbp), %eax	# len, tmp116
	movl	%eax, %edx	# tmp116, tmp117
	shrl	$31, %edx	#, tmp117
	addl	%edx, %eax	# tmp117, tmp118
	sarl	%eax	# tmp119
# problem66.c:11:         for (int i = 0; i < len / 2; i++) {
	cmpl	%eax, -72(%rbp)	# _7, i
	jl	.L4	#,
	jmp	.L5	#
.L2:
# problem66.c:18:         strcpy(temp, xs + len - shift);
	movl	-68(%rbp), %eax	# len, tmp120
	movslq	%eax, %rdx	# tmp120, _8
	movl	-88(%rbp), %eax	# shift, tmp121
	cltq
	subq	%rax, %rdx	# _9, _10
# problem66.c:18:         strcpy(temp, xs + len - shift);
	leaq	xs.1(%rip), %rax	#, tmp122
	addq	%rax, %rdx	# tmp122, _11
	leaq	-64(%rbp), %rax	#, tmp123
	movq	%rdx, %rsi	# _11,
	movq	%rax, %rdi	# tmp123,
	call	strcpy@PLT	#
# problem66.c:19:         temp[shift] = '\0';
	movl	-88(%rbp), %eax	# shift, tmp125
	cltq
	movb	$0, -64(%rbp,%rax)	#, temp[shift_21(D)]
# problem66.c:20:         strncat(temp, xs, len - shift);
	movl	-68(%rbp), %eax	# len, tmp126
	subl	-88(%rbp), %eax	# shift, _12
# problem66.c:20:         strncat(temp, xs, len - shift);
	movslq	%eax, %rdx	# _12, _13
	leaq	-64(%rbp), %rax	#, tmp127
	leaq	xs.1(%rip), %rcx	#, tmp128
	movq	%rcx, %rsi	# tmp128,
	movq	%rax, %rdi	# tmp127,
	call	strncat@PLT	#
# problem66.c:21:         strcpy(xs, temp);
	leaq	-64(%rbp), %rax	#, tmp129
	movq	%rax, %rsi	# tmp129,
	leaq	xs.1(%rip), %rax	#, tmp130
	movq	%rax, %rdi	# tmp130,
	call	strcpy@PLT	#
.L5:
# problem66.c:24:     return xs;
	leaq	xs.1(%rip), %rax	#, _32
# problem66.c:25: }
	movq	-8(%rbp), %rdx	# D.3971, tmp133
	subq	%fs:40, %rdx	# MEM[(<address-space-1> long unsigned int *)40B], tmp133
	je	.L7	#,
	call	__stack_chk_fail@PLT	#
.L7:
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE6:
	.size	func0, .-func0
	.section	.rodata
.LC1:
	.string	"001"
.LC2:
	.string	"problem66.c"
	.align 8
.LC3:
	.string	"strcmp(func0(100, 2), \"001\") == 0"
.LC4:
	.string	"12"
	.align 8
.LC5:
	.string	"strcmp(func0(12, 2), \"12\") == 0"
.LC6:
	.string	"79"
	.align 8
.LC7:
	.string	"strcmp(func0(97, 8), \"79\") == 0"
.LC8:
	.string	"21"
	.align 8
.LC9:
	.string	"strcmp(func0(12, 1), \"21\") == 0"
.LC10:
	.string	"11"
	.align 8
.LC11:
	.string	"strcmp(func0(11, 101), \"11\") == 0"
	.text
	.globl	main
	.type	main, @function
main:
.LFB7:
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
# problem66.c:33:     assert(strcmp(func0(100, 2), "001") == 0);
	movl	$2, %esi	#,
	movl	$100, %edi	#,
	call	func0	#
	movq	%rax, %rdx	#, _1
# problem66.c:33:     assert(strcmp(func0(100, 2), "001") == 0);
	leaq	.LC1(%rip), %rax	#, tmp94
	movq	%rax, %rsi	# tmp94,
	movq	%rdx, %rdi	# _1,
	call	strcmp@PLT	#
# problem66.c:33:     assert(strcmp(func0(100, 2), "001") == 0);
	testl	%eax, %eax	# _2
	je	.L9	#,
# problem66.c:33:     assert(strcmp(func0(100, 2), "001") == 0);
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp95
	movq	%rax, %rcx	# tmp95,
	movl	$33, %edx	#,
	leaq	.LC2(%rip), %rax	#, tmp96
	movq	%rax, %rsi	# tmp96,
	leaq	.LC3(%rip), %rax	#, tmp97
	movq	%rax, %rdi	# tmp97,
	call	__assert_fail@PLT	#
.L9:
# problem66.c:34:     assert(strcmp(func0(12, 2), "12") == 0);
	movl	$2, %esi	#,
	movl	$12, %edi	#,
	call	func0	#
	movq	%rax, %rdx	#, _3
# problem66.c:34:     assert(strcmp(func0(12, 2), "12") == 0);
	leaq	.LC4(%rip), %rax	#, tmp98
	movq	%rax, %rsi	# tmp98,
	movq	%rdx, %rdi	# _3,
	call	strcmp@PLT	#
# problem66.c:34:     assert(strcmp(func0(12, 2), "12") == 0);
	testl	%eax, %eax	# _4
	je	.L10	#,
# problem66.c:34:     assert(strcmp(func0(12, 2), "12") == 0);
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp99
	movq	%rax, %rcx	# tmp99,
	movl	$34, %edx	#,
	leaq	.LC2(%rip), %rax	#, tmp100
	movq	%rax, %rsi	# tmp100,
	leaq	.LC5(%rip), %rax	#, tmp101
	movq	%rax, %rdi	# tmp101,
	call	__assert_fail@PLT	#
.L10:
# problem66.c:35:     assert(strcmp(func0(97, 8), "79") == 0);
	movl	$8, %esi	#,
	movl	$97, %edi	#,
	call	func0	#
	movq	%rax, %rdx	#, _5
# problem66.c:35:     assert(strcmp(func0(97, 8), "79") == 0);
	leaq	.LC6(%rip), %rax	#, tmp102
	movq	%rax, %rsi	# tmp102,
	movq	%rdx, %rdi	# _5,
	call	strcmp@PLT	#
# problem66.c:35:     assert(strcmp(func0(97, 8), "79") == 0);
	testl	%eax, %eax	# _6
	je	.L11	#,
# problem66.c:35:     assert(strcmp(func0(97, 8), "79") == 0);
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp103
	movq	%rax, %rcx	# tmp103,
	movl	$35, %edx	#,
	leaq	.LC2(%rip), %rax	#, tmp104
	movq	%rax, %rsi	# tmp104,
	leaq	.LC7(%rip), %rax	#, tmp105
	movq	%rax, %rdi	# tmp105,
	call	__assert_fail@PLT	#
.L11:
# problem66.c:36:     assert(strcmp(func0(12, 1), "21") == 0);
	movl	$1, %esi	#,
	movl	$12, %edi	#,
	call	func0	#
	movq	%rax, %rdx	#, _7
# problem66.c:36:     assert(strcmp(func0(12, 1), "21") == 0);
	leaq	.LC8(%rip), %rax	#, tmp106
	movq	%rax, %rsi	# tmp106,
	movq	%rdx, %rdi	# _7,
	call	strcmp@PLT	#
# problem66.c:36:     assert(strcmp(func0(12, 1), "21") == 0);
	testl	%eax, %eax	# _8
	je	.L12	#,
# problem66.c:36:     assert(strcmp(func0(12, 1), "21") == 0);
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp107
	movq	%rax, %rcx	# tmp107,
	movl	$36, %edx	#,
	leaq	.LC2(%rip), %rax	#, tmp108
	movq	%rax, %rsi	# tmp108,
	leaq	.LC9(%rip), %rax	#, tmp109
	movq	%rax, %rdi	# tmp109,
	call	__assert_fail@PLT	#
.L12:
# problem66.c:37:     assert(strcmp(func0(11, 101), "11") == 0);
	movl	$101, %esi	#,
	movl	$11, %edi	#,
	call	func0	#
	movq	%rax, %rdx	#, _9
# problem66.c:37:     assert(strcmp(func0(11, 101), "11") == 0);
	leaq	.LC10(%rip), %rax	#, tmp110
	movq	%rax, %rsi	# tmp110,
	movq	%rdx, %rdi	# _9,
	call	strcmp@PLT	#
# problem66.c:37:     assert(strcmp(func0(11, 101), "11") == 0);
	testl	%eax, %eax	# _10
	je	.L13	#,
# problem66.c:37:     assert(strcmp(func0(11, 101), "11") == 0);
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp111
	movq	%rax, %rcx	# tmp111,
	movl	$37, %edx	#,
	leaq	.LC2(%rip), %rax	#, tmp112
	movq	%rax, %rsi	# tmp112,
	leaq	.LC11(%rip), %rax	#, tmp113
	movq	%rax, %rdi	# tmp113,
	call	__assert_fail@PLT	#
.L13:
# problem66.c:39:     return 0;
	movl	$0, %eax	#, _22
# problem66.c:40: }
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE7:
	.size	main, .-main
	.local	xs.1
	.comm	xs.1,50,32
	.section	.rodata
	.type	__PRETTY_FUNCTION__.0, @object
	.size	__PRETTY_FUNCTION__.0, 5
__PRETTY_FUNCTION__.0:
	.string	"main"
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
	.section	.note.gnu.property,"a"
	.align 8
	.long	1f - 0f
	.long	4f - 1f
	.long	5
0:
	.string	"GNU"
1:
	.align 8
	.long	0xc0000002
	.long	3f - 2f
2:
	.long	0x3
3:
	.align 8
4:
