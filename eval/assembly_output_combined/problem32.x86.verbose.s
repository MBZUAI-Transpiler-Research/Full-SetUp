	.file	"problem32.c"
# GNU C17 (Ubuntu 13.3.0-6ubuntu2~24.04) version 13.3.0 (x86_64-linux-gnu)
#	compiled by GNU C version 13.3.0, GMP version 6.3.0, MPFR version 4.2.1, MPC version 1.3.1, isl version isl-0.26-GMP

# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed: -mtune=generic -march=x86-64 -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection -fcf-protection
	.text
	.globl	func0
	.type	func0, @function
func0:
.LFB0:
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)	# n, n
# problem32.c:4:     if (n < 2) return false;
	cmpq	$1, -24(%rbp)	#, n
	jg	.L2	#,
# problem32.c:4:     if (n < 2) return false;
	movl	$0, %eax	#, _4
# problem32.c:4:     if (n < 2) return false;
	jmp	.L3	#
.L2:
# problem32.c:5:     for (long long i = 2; i * i <= n; i++)
	movq	$2, -8(%rbp)	#, i
# problem32.c:5:     for (long long i = 2; i * i <= n; i++)
	jmp	.L4	#
.L6:
# problem32.c:6:         if (n % i == 0) return false;
	movq	-24(%rbp), %rax	# n, tmp86
	cqto
	idivq	-8(%rbp)	# i
	movq	%rdx, %rax	# tmp87, _1
# problem32.c:6:         if (n % i == 0) return false;
	testq	%rax, %rax	# _1
	jne	.L5	#,
# problem32.c:6:         if (n % i == 0) return false;
	movl	$0, %eax	#, _4
# problem32.c:6:         if (n % i == 0) return false;
	jmp	.L3	#
.L5:
# problem32.c:5:     for (long long i = 2; i * i <= n; i++)
	addq	$1, -8(%rbp)	#, i
.L4:
# problem32.c:5:     for (long long i = 2; i * i <= n; i++)
	movq	-8(%rbp), %rax	# i, tmp89
	imulq	%rax, %rax	# tmp89, _2
# problem32.c:5:     for (long long i = 2; i * i <= n; i++)
	cmpq	%rax, -24(%rbp)	# _2, n
	jge	.L6	#,
# problem32.c:7:     return true;
	movl	$1, %eax	#, _4
.L3:
# problem32.c:8: }
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE0:
	.size	func0, .-func0
	.section	.rodata
.LC0:
	.string	"problem32.c"
.LC1:
	.string	"func0(6) == false"
.LC2:
	.string	"func0(101) == true"
.LC3:
	.string	"func0(11) == true"
.LC4:
	.string	"func0(13441) == true"
.LC5:
	.string	"func0(61) == true"
.LC6:
	.string	"func0(4) == false"
.LC7:
	.string	"func0(1) == false"
.LC8:
	.string	"func0(5) == true"
.LC9:
	.string	"func0(17) == true"
.LC10:
	.string	"func0(5 * 17) == false"
.LC11:
	.string	"func0(11 * 7) == false"
.LC12:
	.string	"func0(13441 * 19) == false"
	.text
	.globl	main
	.type	main, @function
main:
.LFB1:
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
# problem32.c:16:     assert(func0(6) == false);
	movl	$6, %edi	#,
	call	func0	#
# problem32.c:16:     assert(func0(6) == false);
	xorl	$1, %eax	#, _2
	testb	%al, %al	# _2
	jne	.L8	#,
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp103
	movq	%rax, %rcx	# tmp103,
	movl	$16, %edx	#,
	leaq	.LC0(%rip), %rax	#, tmp104
	movq	%rax, %rsi	# tmp104,
	leaq	.LC1(%rip), %rax	#, tmp105
	movq	%rax, %rdi	# tmp105,
	call	__assert_fail@PLT	#
.L8:
# problem32.c:17:     assert(func0(101) == true);
	movl	$101, %edi	#,
	call	func0	#
# problem32.c:17:     assert(func0(101) == true);
	testb	%al, %al	# _3
	jne	.L9	#,
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp106
	movq	%rax, %rcx	# tmp106,
	movl	$17, %edx	#,
	leaq	.LC0(%rip), %rax	#, tmp107
	movq	%rax, %rsi	# tmp107,
	leaq	.LC2(%rip), %rax	#, tmp108
	movq	%rax, %rdi	# tmp108,
	call	__assert_fail@PLT	#
.L9:
# problem32.c:18:     assert(func0(11) == true);
	movl	$11, %edi	#,
	call	func0	#
# problem32.c:18:     assert(func0(11) == true);
	testb	%al, %al	# _4
	jne	.L10	#,
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp109
	movq	%rax, %rcx	# tmp109,
	movl	$18, %edx	#,
	leaq	.LC0(%rip), %rax	#, tmp110
	movq	%rax, %rsi	# tmp110,
	leaq	.LC3(%rip), %rax	#, tmp111
	movq	%rax, %rdi	# tmp111,
	call	__assert_fail@PLT	#
.L10:
# problem32.c:19:     assert(func0(13441) == true);
	movl	$13441, %edi	#,
	call	func0	#
# problem32.c:19:     assert(func0(13441) == true);
	testb	%al, %al	# _5
	jne	.L11	#,
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp112
	movq	%rax, %rcx	# tmp112,
	movl	$19, %edx	#,
	leaq	.LC0(%rip), %rax	#, tmp113
	movq	%rax, %rsi	# tmp113,
	leaq	.LC4(%rip), %rax	#, tmp114
	movq	%rax, %rdi	# tmp114,
	call	__assert_fail@PLT	#
.L11:
# problem32.c:20:     assert(func0(61) == true);
	movl	$61, %edi	#,
	call	func0	#
# problem32.c:20:     assert(func0(61) == true);
	testb	%al, %al	# _6
	jne	.L12	#,
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp115
	movq	%rax, %rcx	# tmp115,
	movl	$20, %edx	#,
	leaq	.LC0(%rip), %rax	#, tmp116
	movq	%rax, %rsi	# tmp116,
	leaq	.LC5(%rip), %rax	#, tmp117
	movq	%rax, %rdi	# tmp117,
	call	__assert_fail@PLT	#
.L12:
# problem32.c:21:     assert(func0(4) == false);
	movl	$4, %edi	#,
	call	func0	#
# problem32.c:21:     assert(func0(4) == false);
	xorl	$1, %eax	#, _8
	testb	%al, %al	# _8
	jne	.L13	#,
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp118
	movq	%rax, %rcx	# tmp118,
	movl	$21, %edx	#,
	leaq	.LC0(%rip), %rax	#, tmp119
	movq	%rax, %rsi	# tmp119,
	leaq	.LC6(%rip), %rax	#, tmp120
	movq	%rax, %rdi	# tmp120,
	call	__assert_fail@PLT	#
.L13:
# problem32.c:22:     assert(func0(1) == false);
	movl	$1, %edi	#,
	call	func0	#
# problem32.c:22:     assert(func0(1) == false);
	xorl	$1, %eax	#, _10
	testb	%al, %al	# _10
	jne	.L14	#,
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp121
	movq	%rax, %rcx	# tmp121,
	movl	$22, %edx	#,
	leaq	.LC0(%rip), %rax	#, tmp122
	movq	%rax, %rsi	# tmp122,
	leaq	.LC7(%rip), %rax	#, tmp123
	movq	%rax, %rdi	# tmp123,
	call	__assert_fail@PLT	#
.L14:
# problem32.c:23:     assert(func0(5) == true);
	movl	$5, %edi	#,
	call	func0	#
# problem32.c:23:     assert(func0(5) == true);
	testb	%al, %al	# _11
	jne	.L15	#,
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp124
	movq	%rax, %rcx	# tmp124,
	movl	$23, %edx	#,
	leaq	.LC0(%rip), %rax	#, tmp125
	movq	%rax, %rsi	# tmp125,
	leaq	.LC8(%rip), %rax	#, tmp126
	movq	%rax, %rdi	# tmp126,
	call	__assert_fail@PLT	#
.L15:
# problem32.c:24:     assert(func0(11) == true);
	movl	$11, %edi	#,
	call	func0	#
# problem32.c:24:     assert(func0(11) == true);
	testb	%al, %al	# _12
	jne	.L16	#,
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp127
	movq	%rax, %rcx	# tmp127,
	movl	$24, %edx	#,
	leaq	.LC0(%rip), %rax	#, tmp128
	movq	%rax, %rsi	# tmp128,
	leaq	.LC3(%rip), %rax	#, tmp129
	movq	%rax, %rdi	# tmp129,
	call	__assert_fail@PLT	#
.L16:
# problem32.c:25:     assert(func0(17) == true);
	movl	$17, %edi	#,
	call	func0	#
# problem32.c:25:     assert(func0(17) == true);
	testb	%al, %al	# _13
	jne	.L17	#,
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp130
	movq	%rax, %rcx	# tmp130,
	movl	$25, %edx	#,
	leaq	.LC0(%rip), %rax	#, tmp131
	movq	%rax, %rsi	# tmp131,
	leaq	.LC9(%rip), %rax	#, tmp132
	movq	%rax, %rdi	# tmp132,
	call	__assert_fail@PLT	#
.L17:
# problem32.c:26:     assert(func0(5 * 17) == false);
	movl	$85, %edi	#,
	call	func0	#
# problem32.c:26:     assert(func0(5 * 17) == false);
	xorl	$1, %eax	#, _15
	testb	%al, %al	# _15
	jne	.L18	#,
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp133
	movq	%rax, %rcx	# tmp133,
	movl	$26, %edx	#,
	leaq	.LC0(%rip), %rax	#, tmp134
	movq	%rax, %rsi	# tmp134,
	leaq	.LC10(%rip), %rax	#, tmp135
	movq	%rax, %rdi	# tmp135,
	call	__assert_fail@PLT	#
.L18:
# problem32.c:27:     assert(func0(11 * 7) == false);
	movl	$77, %edi	#,
	call	func0	#
# problem32.c:27:     assert(func0(11 * 7) == false);
	xorl	$1, %eax	#, _17
	testb	%al, %al	# _17
	jne	.L19	#,
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp136
	movq	%rax, %rcx	# tmp136,
	movl	$27, %edx	#,
	leaq	.LC0(%rip), %rax	#, tmp137
	movq	%rax, %rsi	# tmp137,
	leaq	.LC11(%rip), %rax	#, tmp138
	movq	%rax, %rdi	# tmp138,
	call	__assert_fail@PLT	#
.L19:
# problem32.c:28:     assert(func0(13441 * 19) == false);
	movl	$255379, %edi	#,
	call	func0	#
# problem32.c:28:     assert(func0(13441 * 19) == false);
	xorl	$1, %eax	#, _19
	testb	%al, %al	# _19
	jne	.L20	#,
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp139
	movq	%rax, %rcx	# tmp139,
	movl	$28, %edx	#,
	leaq	.LC0(%rip), %rax	#, tmp140
	movq	%rax, %rsi	# tmp140,
	leaq	.LC12(%rip), %rax	#, tmp141
	movq	%rax, %rdi	# tmp141,
	call	__assert_fail@PLT	#
.L20:
# problem32.c:30:     return 0;
	movl	$0, %eax	#, _47
# problem32.c:31: }
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE1:
	.size	main, .-main
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
