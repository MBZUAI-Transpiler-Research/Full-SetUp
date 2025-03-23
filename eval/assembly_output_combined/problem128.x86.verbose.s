	.file	"problem128.c"
# GNU C17 (Ubuntu 11.4.0-1ubuntu1~22.04) version 11.4.0 (x86_64-linux-gnu)
#	compiled by GNU C version 11.4.0, GMP version 6.2.1, MPFR version 4.1.0, MPC version 1.2.1, isl version isl-0.24-GMP

# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed: -mtune=generic -march=x86-64 -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection -fcf-protection
	.text
	.section	.rodata
.LC0:
	.string	"NO"
.LC1:
	.string	"YES"
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
	movl	%edi, -20(%rbp)	# interval1_start, interval1_start
	movl	%esi, -24(%rbp)	# interval1_end, interval1_end
	movl	%edx, -28(%rbp)	# interval2_start, interval2_start
	movl	%ecx, -32(%rbp)	# interval2_end, interval2_end
# problem128.c:5:     inter1 = interval1_start > interval2_start ? interval1_start : interval2_start;
	movl	-28(%rbp), %edx	# interval2_start, tmp87
	movl	-20(%rbp), %eax	# interval1_start, tmp99
	cmpl	%eax, %edx	# tmp99, tmp87
	cmovge	%edx, %eax	# tmp87,, tmp86
	movl	%eax, -12(%rbp)	# tmp86, inter1
# problem128.c:6:     inter2 = interval1_end < interval2_end ? interval1_end : interval2_end;
	movl	-32(%rbp), %edx	# interval2_end, tmp89
	movl	-24(%rbp), %eax	# interval1_end, tmp100
	cmpl	%eax, %edx	# tmp100, tmp89
	cmovle	%edx, %eax	# tmp89,, tmp88
	movl	%eax, -8(%rbp)	# tmp88, inter2
# problem128.c:7:     l = inter2 - inter1;
	movl	-8(%rbp), %eax	# inter2, tmp93
	subl	-12(%rbp), %eax	# inter1, tmp92
	movl	%eax, -4(%rbp)	# tmp92, l
# problem128.c:9:     if (l < 2) return "NO";
	cmpl	$1, -4(%rbp)	#, l
	jg	.L2	#,
# problem128.c:9:     if (l < 2) return "NO";
	leaq	.LC0(%rip), %rax	#, _4
	jmp	.L3	#
.L2:
# problem128.c:11:     for (i = 2; i * i <= l; i++)
	movl	$2, -16(%rbp)	#, i
# problem128.c:11:     for (i = 2; i * i <= l; i++)
	jmp	.L4	#
.L6:
# problem128.c:12:         if (l % i == 0) return "NO";
	movl	-4(%rbp), %eax	# l, tmp94
	cltd
	idivl	-16(%rbp)	# i
	movl	%edx, %eax	# tmp95, _1
# problem128.c:12:         if (l % i == 0) return "NO";
	testl	%eax, %eax	# _1
	jne	.L5	#,
# problem128.c:12:         if (l % i == 0) return "NO";
	leaq	.LC0(%rip), %rax	#, _4
	jmp	.L3	#
.L5:
# problem128.c:11:     for (i = 2; i * i <= l; i++)
	addl	$1, -16(%rbp)	#, i
.L4:
# problem128.c:11:     for (i = 2; i * i <= l; i++)
	movl	-16(%rbp), %eax	# i, tmp97
	imull	%eax, %eax	# tmp97, _2
# problem128.c:11:     for (i = 2; i * i <= l; i++)
	cmpl	%eax, -4(%rbp)	# _2, l
	jge	.L6	#,
# problem128.c:14:     return "YES";
	leaq	.LC1(%rip), %rax	#, _4
.L3:
# problem128.c:15: }
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE0:
	.size	func0, .-func0
	.section	.rodata
.LC2:
	.string	"problem128.c"
	.align 8
.LC3:
	.string	"strcmp(func0(1, 2, 2, 3), \"NO\") == 0"
	.align 8
.LC4:
	.string	"strcmp(func0(-1, 1, 0, 4), \"NO\") == 0"
	.align 8
.LC5:
	.string	"strcmp(func0(-3, -1, -5, 5), \"YES\") == 0"
	.align 8
.LC6:
	.string	"strcmp(func0(-2, 2, -4, 0), \"YES\") == 0"
	.align 8
.LC7:
	.string	"strcmp(func0(-11, 2, -1, -1), \"NO\") == 0"
	.align 8
.LC8:
	.string	"strcmp(func0(1, 2, 3, 5), \"NO\") == 0"
	.align 8
.LC9:
	.string	"strcmp(func0(1, 2, 1, 2), \"NO\") == 0"
	.align 8
.LC10:
	.string	"strcmp(func0(-2, -2, -3, -2), \"NO\") == 0"
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
# problem128.c:24:     assert(strcmp(func0(1, 2, 2, 3), "NO") == 0);
	movl	$3, %ecx	#,
	movl	$2, %edx	#,
	movl	$2, %esi	#,
	movl	$1, %edi	#,
	call	func0	#
	movq	%rax, %rdx	#, _1
	leaq	.LC0(%rip), %rax	#, tmp100
	movq	%rax, %rsi	# tmp100,
	movq	%rdx, %rdi	# _1,
	call	strcmp@PLT	#
	testl	%eax, %eax	# _2
	je	.L8	#,
# problem128.c:24:     assert(strcmp(func0(1, 2, 2, 3), "NO") == 0);
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp101
	movq	%rax, %rcx	# tmp101,
	movl	$24, %edx	#,
	leaq	.LC2(%rip), %rax	#, tmp102
	movq	%rax, %rsi	# tmp102,
	leaq	.LC3(%rip), %rax	#, tmp103
	movq	%rax, %rdi	# tmp103,
	call	__assert_fail@PLT	#
.L8:
# problem128.c:25:     assert(strcmp(func0(-1, 1, 0, 4), "NO") == 0);
	movl	$4, %ecx	#,
	movl	$0, %edx	#,
	movl	$1, %esi	#,
	movl	$-1, %edi	#,
	call	func0	#
	movq	%rax, %rdx	#, _3
	leaq	.LC0(%rip), %rax	#, tmp104
	movq	%rax, %rsi	# tmp104,
	movq	%rdx, %rdi	# _3,
	call	strcmp@PLT	#
	testl	%eax, %eax	# _4
	je	.L9	#,
# problem128.c:25:     assert(strcmp(func0(-1, 1, 0, 4), "NO") == 0);
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp105
	movq	%rax, %rcx	# tmp105,
	movl	$25, %edx	#,
	leaq	.LC2(%rip), %rax	#, tmp106
	movq	%rax, %rsi	# tmp106,
	leaq	.LC4(%rip), %rax	#, tmp107
	movq	%rax, %rdi	# tmp107,
	call	__assert_fail@PLT	#
.L9:
# problem128.c:26:     assert(strcmp(func0(-3, -1, -5, 5), "YES") == 0);
	movl	$5, %ecx	#,
	movl	$-5, %edx	#,
	movl	$-1, %esi	#,
	movl	$-3, %edi	#,
	call	func0	#
	movq	%rax, %rdx	#, _5
	leaq	.LC1(%rip), %rax	#, tmp108
	movq	%rax, %rsi	# tmp108,
	movq	%rdx, %rdi	# _5,
	call	strcmp@PLT	#
	testl	%eax, %eax	# _6
	je	.L10	#,
# problem128.c:26:     assert(strcmp(func0(-3, -1, -5, 5), "YES") == 0);
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp109
	movq	%rax, %rcx	# tmp109,
	movl	$26, %edx	#,
	leaq	.LC2(%rip), %rax	#, tmp110
	movq	%rax, %rsi	# tmp110,
	leaq	.LC5(%rip), %rax	#, tmp111
	movq	%rax, %rdi	# tmp111,
	call	__assert_fail@PLT	#
.L10:
# problem128.c:27:     assert(strcmp(func0(-2, 2, -4, 0), "YES") == 0);
	movl	$0, %ecx	#,
	movl	$-4, %edx	#,
	movl	$2, %esi	#,
	movl	$-2, %edi	#,
	call	func0	#
	movq	%rax, %rdx	#, _7
	leaq	.LC1(%rip), %rax	#, tmp112
	movq	%rax, %rsi	# tmp112,
	movq	%rdx, %rdi	# _7,
	call	strcmp@PLT	#
	testl	%eax, %eax	# _8
	je	.L11	#,
# problem128.c:27:     assert(strcmp(func0(-2, 2, -4, 0), "YES") == 0);
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp113
	movq	%rax, %rcx	# tmp113,
	movl	$27, %edx	#,
	leaq	.LC2(%rip), %rax	#, tmp114
	movq	%rax, %rsi	# tmp114,
	leaq	.LC6(%rip), %rax	#, tmp115
	movq	%rax, %rdi	# tmp115,
	call	__assert_fail@PLT	#
.L11:
# problem128.c:28:     assert(strcmp(func0(-11, 2, -1, -1), "NO") == 0);
	movl	$-1, %ecx	#,
	movl	$-1, %edx	#,
	movl	$2, %esi	#,
	movl	$-11, %edi	#,
	call	func0	#
	movq	%rax, %rdx	#, _9
	leaq	.LC0(%rip), %rax	#, tmp116
	movq	%rax, %rsi	# tmp116,
	movq	%rdx, %rdi	# _9,
	call	strcmp@PLT	#
	testl	%eax, %eax	# _10
	je	.L12	#,
# problem128.c:28:     assert(strcmp(func0(-11, 2, -1, -1), "NO") == 0);
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp117
	movq	%rax, %rcx	# tmp117,
	movl	$28, %edx	#,
	leaq	.LC2(%rip), %rax	#, tmp118
	movq	%rax, %rsi	# tmp118,
	leaq	.LC7(%rip), %rax	#, tmp119
	movq	%rax, %rdi	# tmp119,
	call	__assert_fail@PLT	#
.L12:
# problem128.c:29:     assert(strcmp(func0(1, 2, 3, 5), "NO") == 0);
	movl	$5, %ecx	#,
	movl	$3, %edx	#,
	movl	$2, %esi	#,
	movl	$1, %edi	#,
	call	func0	#
	movq	%rax, %rdx	#, _11
	leaq	.LC0(%rip), %rax	#, tmp120
	movq	%rax, %rsi	# tmp120,
	movq	%rdx, %rdi	# _11,
	call	strcmp@PLT	#
	testl	%eax, %eax	# _12
	je	.L13	#,
# problem128.c:29:     assert(strcmp(func0(1, 2, 3, 5), "NO") == 0);
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp121
	movq	%rax, %rcx	# tmp121,
	movl	$29, %edx	#,
	leaq	.LC2(%rip), %rax	#, tmp122
	movq	%rax, %rsi	# tmp122,
	leaq	.LC8(%rip), %rax	#, tmp123
	movq	%rax, %rdi	# tmp123,
	call	__assert_fail@PLT	#
.L13:
# problem128.c:30:     assert(strcmp(func0(1, 2, 1, 2), "NO") == 0);
	movl	$2, %ecx	#,
	movl	$1, %edx	#,
	movl	$2, %esi	#,
	movl	$1, %edi	#,
	call	func0	#
	movq	%rax, %rdx	#, _13
	leaq	.LC0(%rip), %rax	#, tmp124
	movq	%rax, %rsi	# tmp124,
	movq	%rdx, %rdi	# _13,
	call	strcmp@PLT	#
	testl	%eax, %eax	# _14
	je	.L14	#,
# problem128.c:30:     assert(strcmp(func0(1, 2, 1, 2), "NO") == 0);
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp125
	movq	%rax, %rcx	# tmp125,
	movl	$30, %edx	#,
	leaq	.LC2(%rip), %rax	#, tmp126
	movq	%rax, %rsi	# tmp126,
	leaq	.LC9(%rip), %rax	#, tmp127
	movq	%rax, %rdi	# tmp127,
	call	__assert_fail@PLT	#
.L14:
# problem128.c:31:     assert(strcmp(func0(-2, -2, -3, -2), "NO") == 0);
	movl	$-2, %ecx	#,
	movl	$-3, %edx	#,
	movl	$-2, %esi	#,
	movl	$-2, %edi	#,
	call	func0	#
	movq	%rax, %rdx	#, _15
	leaq	.LC0(%rip), %rax	#, tmp128
	movq	%rax, %rsi	# tmp128,
	movq	%rdx, %rdi	# _15,
	call	strcmp@PLT	#
	testl	%eax, %eax	# _16
	je	.L15	#,
# problem128.c:31:     assert(strcmp(func0(-2, -2, -3, -2), "NO") == 0);
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp129
	movq	%rax, %rcx	# tmp129,
	movl	$31, %edx	#,
	leaq	.LC2(%rip), %rax	#, tmp130
	movq	%rax, %rsi	# tmp130,
	leaq	.LC10(%rip), %rax	#, tmp131
	movq	%rax, %rdi	# tmp131,
	call	__assert_fail@PLT	#
.L15:
# problem128.c:33:     return 0;
	movl	$0, %eax	#, _34
# problem128.c:34: }
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
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
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
