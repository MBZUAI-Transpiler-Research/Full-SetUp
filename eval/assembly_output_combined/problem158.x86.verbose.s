	.file	"problem158.c"
# GNU C17 (Ubuntu 11.4.0-1ubuntu1~22.04) version 11.4.0 (x86_64-linux-gnu)
#	compiled by GNU C version 11.4.0, GMP version 6.2.1, MPFR version 4.1.0, MPC version 1.2.1, isl version isl-0.24-GMP

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
	movss	%xmm0, -4(%rbp)	# a, a
	movss	%xmm1, -8(%rbp)	# b, b
	movss	%xmm2, -12(%rbp)	# c, c
# problem158.c:5:     if (fabs(a*a + b*b - c*c) < 1e-4 || fabs(a*a + c*c - b*b) < 1e-4 || fabs(b*b + c*c - a*a) < 1e-4) return 1;
	movss	-4(%rbp), %xmm0	# a, tmp105
	movaps	%xmm0, %xmm1	# tmp105, tmp105
	mulss	%xmm0, %xmm1	# tmp105, tmp105
# problem158.c:5:     if (fabs(a*a + b*b - c*c) < 1e-4 || fabs(a*a + c*c - b*b) < 1e-4 || fabs(b*b + c*c - a*a) < 1e-4) return 1;
	movss	-8(%rbp), %xmm0	# b, tmp106
	mulss	%xmm0, %xmm0	# tmp106, _2
# problem158.c:5:     if (fabs(a*a + b*b - c*c) < 1e-4 || fabs(a*a + c*c - b*b) < 1e-4 || fabs(b*b + c*c - a*a) < 1e-4) return 1;
	addss	%xmm0, %xmm1	# _2, _3
# problem158.c:5:     if (fabs(a*a + b*b - c*c) < 1e-4 || fabs(a*a + c*c - b*b) < 1e-4 || fabs(b*b + c*c - a*a) < 1e-4) return 1;
	movss	-12(%rbp), %xmm0	# c, tmp107
	movaps	%xmm0, %xmm2	# tmp107, tmp107
	mulss	%xmm0, %xmm2	# tmp107, tmp107
# problem158.c:5:     if (fabs(a*a + b*b - c*c) < 1e-4 || fabs(a*a + c*c - b*b) < 1e-4 || fabs(b*b + c*c - a*a) < 1e-4) return 1;
	subss	%xmm2, %xmm1	# _4, _3
	movaps	%xmm1, %xmm0	# _3, _5
# problem158.c:5:     if (fabs(a*a + b*b - c*c) < 1e-4 || fabs(a*a + c*c - b*b) < 1e-4 || fabs(b*b + c*c - a*a) < 1e-4) return 1;
	movss	.LC0(%rip), %xmm1	#, tmp108
	andps	%xmm1, %xmm0	# tmp108, _6
	pxor	%xmm1, %xmm1	# _7
	cvtss2sd	%xmm0, %xmm1	# _6, _7
# problem158.c:5:     if (fabs(a*a + b*b - c*c) < 1e-4 || fabs(a*a + c*c - b*b) < 1e-4 || fabs(b*b + c*c - a*a) < 1e-4) return 1;
	movsd	.LC1(%rip), %xmm0	#, tmp109
	comisd	%xmm1, %xmm0	# _7, tmp109
	ja	.L2	#,
# problem158.c:5:     if (fabs(a*a + b*b - c*c) < 1e-4 || fabs(a*a + c*c - b*b) < 1e-4 || fabs(b*b + c*c - a*a) < 1e-4) return 1;
	movss	-4(%rbp), %xmm0	# a, tmp110
	movaps	%xmm0, %xmm1	# tmp110, tmp110
	mulss	%xmm0, %xmm1	# tmp110, tmp110
# problem158.c:5:     if (fabs(a*a + b*b - c*c) < 1e-4 || fabs(a*a + c*c - b*b) < 1e-4 || fabs(b*b + c*c - a*a) < 1e-4) return 1;
	movss	-12(%rbp), %xmm0	# c, tmp111
	mulss	%xmm0, %xmm0	# tmp111, _9
# problem158.c:5:     if (fabs(a*a + b*b - c*c) < 1e-4 || fabs(a*a + c*c - b*b) < 1e-4 || fabs(b*b + c*c - a*a) < 1e-4) return 1;
	addss	%xmm0, %xmm1	# _9, _10
# problem158.c:5:     if (fabs(a*a + b*b - c*c) < 1e-4 || fabs(a*a + c*c - b*b) < 1e-4 || fabs(b*b + c*c - a*a) < 1e-4) return 1;
	movss	-8(%rbp), %xmm0	# b, tmp112
	movaps	%xmm0, %xmm2	# tmp112, tmp112
	mulss	%xmm0, %xmm2	# tmp112, tmp112
# problem158.c:5:     if (fabs(a*a + b*b - c*c) < 1e-4 || fabs(a*a + c*c - b*b) < 1e-4 || fabs(b*b + c*c - a*a) < 1e-4) return 1;
	subss	%xmm2, %xmm1	# _11, _10
	movaps	%xmm1, %xmm0	# _10, _12
# problem158.c:5:     if (fabs(a*a + b*b - c*c) < 1e-4 || fabs(a*a + c*c - b*b) < 1e-4 || fabs(b*b + c*c - a*a) < 1e-4) return 1;
	movss	.LC0(%rip), %xmm1	#, tmp113
	andps	%xmm1, %xmm0	# tmp113, _13
	pxor	%xmm1, %xmm1	# _14
	cvtss2sd	%xmm0, %xmm1	# _13, _14
# problem158.c:5:     if (fabs(a*a + b*b - c*c) < 1e-4 || fabs(a*a + c*c - b*b) < 1e-4 || fabs(b*b + c*c - a*a) < 1e-4) return 1;
	movsd	.LC1(%rip), %xmm0	#, tmp114
	comisd	%xmm1, %xmm0	# _14, tmp114
	ja	.L2	#,
# problem158.c:5:     if (fabs(a*a + b*b - c*c) < 1e-4 || fabs(a*a + c*c - b*b) < 1e-4 || fabs(b*b + c*c - a*a) < 1e-4) return 1;
	movss	-8(%rbp), %xmm0	# b, tmp115
	movaps	%xmm0, %xmm1	# tmp115, tmp115
	mulss	%xmm0, %xmm1	# tmp115, tmp115
# problem158.c:5:     if (fabs(a*a + b*b - c*c) < 1e-4 || fabs(a*a + c*c - b*b) < 1e-4 || fabs(b*b + c*c - a*a) < 1e-4) return 1;
	movss	-12(%rbp), %xmm0	# c, tmp116
	mulss	%xmm0, %xmm0	# tmp116, _16
# problem158.c:5:     if (fabs(a*a + b*b - c*c) < 1e-4 || fabs(a*a + c*c - b*b) < 1e-4 || fabs(b*b + c*c - a*a) < 1e-4) return 1;
	addss	%xmm0, %xmm1	# _16, _17
# problem158.c:5:     if (fabs(a*a + b*b - c*c) < 1e-4 || fabs(a*a + c*c - b*b) < 1e-4 || fabs(b*b + c*c - a*a) < 1e-4) return 1;
	movss	-4(%rbp), %xmm0	# a, tmp117
	movaps	%xmm0, %xmm2	# tmp117, tmp117
	mulss	%xmm0, %xmm2	# tmp117, tmp117
# problem158.c:5:     if (fabs(a*a + b*b - c*c) < 1e-4 || fabs(a*a + c*c - b*b) < 1e-4 || fabs(b*b + c*c - a*a) < 1e-4) return 1;
	subss	%xmm2, %xmm1	# _18, _17
	movaps	%xmm1, %xmm0	# _17, _19
# problem158.c:5:     if (fabs(a*a + b*b - c*c) < 1e-4 || fabs(a*a + c*c - b*b) < 1e-4 || fabs(b*b + c*c - a*a) < 1e-4) return 1;
	movss	.LC0(%rip), %xmm1	#, tmp118
	andps	%xmm1, %xmm0	# tmp118, _20
	pxor	%xmm1, %xmm1	# _21
	cvtss2sd	%xmm0, %xmm1	# _20, _21
# problem158.c:5:     if (fabs(a*a + b*b - c*c) < 1e-4 || fabs(a*a + c*c - b*b) < 1e-4 || fabs(b*b + c*c - a*a) < 1e-4) return 1;
	movsd	.LC1(%rip), %xmm0	#, tmp119
	comisd	%xmm1, %xmm0	# _21, tmp119
	jbe	.L6	#,
.L2:
# problem158.c:5:     if (fabs(a*a + b*b - c*c) < 1e-4 || fabs(a*a + c*c - b*b) < 1e-4 || fabs(b*b + c*c - a*a) < 1e-4) return 1;
	movl	$1, %eax	#, _22
	jmp	.L5	#
.L6:
# problem158.c:6:     return 0;
	movl	$0, %eax	#, _22
.L5:
# problem158.c:7: }
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE0:
	.size	func0, .-func0
	.section	.rodata
.LC5:
	.string	"problem158.c"
.LC6:
	.string	"func0(3, 4, 5) == 1"
.LC9:
	.string	"func0(1, 2, 3) == 0"
.LC13:
	.string	"func0(10, 6, 8) == 1"
.LC14:
	.string	"func0(2, 2, 2) == 0"
.LC18:
	.string	"func0(7, 24, 25) == 1"
.LC19:
	.string	"func0(10, 5, 7) == 0"
.LC22:
	.string	"func0(5, 12, 13) == 1"
.LC25:
	.string	"func0(15, 8, 17) == 1"
.LC29:
	.string	"func0(48, 55, 73) == 1"
.LC30:
	.string	"func0(1, 1, 1) == 0"
.LC31:
	.string	"func0(2, 2, 10) == 0"
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
# problem158.c:14:     assert(func0(3, 4, 5) == 1);
	movss	.LC2(%rip), %xmm2	#,
	movss	.LC3(%rip), %xmm1	#,
	movl	.LC4(%rip), %eax	#, tmp95
	movd	%eax, %xmm0	# tmp95,
	call	func0	#
	cmpl	$1, %eax	#, _1
	je	.L8	#,
# problem158.c:14:     assert(func0(3, 4, 5) == 1);
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp96
	movq	%rax, %rcx	# tmp96,
	movl	$14, %edx	#,
	leaq	.LC5(%rip), %rax	#, tmp97
	movq	%rax, %rsi	# tmp97,
	leaq	.LC6(%rip), %rax	#, tmp98
	movq	%rax, %rdi	# tmp98,
	call	__assert_fail@PLT	#
.L8:
# problem158.c:15:     assert(func0(1, 2, 3) == 0);
	movss	.LC4(%rip), %xmm2	#,
	movss	.LC7(%rip), %xmm1	#,
	movl	.LC8(%rip), %eax	#, tmp99
	movd	%eax, %xmm0	# tmp99,
	call	func0	#
	testl	%eax, %eax	# _2
	je	.L9	#,
# problem158.c:15:     assert(func0(1, 2, 3) == 0);
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp100
	movq	%rax, %rcx	# tmp100,
	movl	$15, %edx	#,
	leaq	.LC5(%rip), %rax	#, tmp101
	movq	%rax, %rsi	# tmp101,
	leaq	.LC9(%rip), %rax	#, tmp102
	movq	%rax, %rdi	# tmp102,
	call	__assert_fail@PLT	#
.L9:
# problem158.c:16:     assert(func0(10, 6, 8) == 1);
	movss	.LC10(%rip), %xmm2	#,
	movss	.LC11(%rip), %xmm1	#,
	movl	.LC12(%rip), %eax	#, tmp103
	movd	%eax, %xmm0	# tmp103,
	call	func0	#
	cmpl	$1, %eax	#, _3
	je	.L10	#,
# problem158.c:16:     assert(func0(10, 6, 8) == 1);
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp104
	movq	%rax, %rcx	# tmp104,
	movl	$16, %edx	#,
	leaq	.LC5(%rip), %rax	#, tmp105
	movq	%rax, %rsi	# tmp105,
	leaq	.LC13(%rip), %rax	#, tmp106
	movq	%rax, %rdi	# tmp106,
	call	__assert_fail@PLT	#
.L10:
# problem158.c:17:     assert(func0(2, 2, 2) == 0);
	movss	.LC7(%rip), %xmm2	#,
	movss	.LC7(%rip), %xmm1	#,
	movl	.LC7(%rip), %eax	#, tmp107
	movd	%eax, %xmm0	# tmp107,
	call	func0	#
	testl	%eax, %eax	# _4
	je	.L11	#,
# problem158.c:17:     assert(func0(2, 2, 2) == 0);
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp108
	movq	%rax, %rcx	# tmp108,
	movl	$17, %edx	#,
	leaq	.LC5(%rip), %rax	#, tmp109
	movq	%rax, %rsi	# tmp109,
	leaq	.LC14(%rip), %rax	#, tmp110
	movq	%rax, %rdi	# tmp110,
	call	__assert_fail@PLT	#
.L11:
# problem158.c:18:     assert(func0(7, 24, 25) == 1);
	movss	.LC15(%rip), %xmm2	#,
	movss	.LC16(%rip), %xmm1	#,
	movl	.LC17(%rip), %eax	#, tmp111
	movd	%eax, %xmm0	# tmp111,
	call	func0	#
	cmpl	$1, %eax	#, _5
	je	.L12	#,
# problem158.c:18:     assert(func0(7, 24, 25) == 1);
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp112
	movq	%rax, %rcx	# tmp112,
	movl	$18, %edx	#,
	leaq	.LC5(%rip), %rax	#, tmp113
	movq	%rax, %rsi	# tmp113,
	leaq	.LC18(%rip), %rax	#, tmp114
	movq	%rax, %rdi	# tmp114,
	call	__assert_fail@PLT	#
.L12:
# problem158.c:19:     assert(func0(10, 5, 7) == 0);
	movss	.LC17(%rip), %xmm2	#,
	movss	.LC2(%rip), %xmm1	#,
	movl	.LC12(%rip), %eax	#, tmp115
	movd	%eax, %xmm0	# tmp115,
	call	func0	#
	testl	%eax, %eax	# _6
	je	.L13	#,
# problem158.c:19:     assert(func0(10, 5, 7) == 0);
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp116
	movq	%rax, %rcx	# tmp116,
	movl	$19, %edx	#,
	leaq	.LC5(%rip), %rax	#, tmp117
	movq	%rax, %rsi	# tmp117,
	leaq	.LC19(%rip), %rax	#, tmp118
	movq	%rax, %rdi	# tmp118,
	call	__assert_fail@PLT	#
.L13:
# problem158.c:20:     assert(func0(5, 12, 13) == 1);
	movss	.LC20(%rip), %xmm2	#,
	movss	.LC21(%rip), %xmm1	#,
	movl	.LC2(%rip), %eax	#, tmp119
	movd	%eax, %xmm0	# tmp119,
	call	func0	#
	cmpl	$1, %eax	#, _7
	je	.L14	#,
# problem158.c:20:     assert(func0(5, 12, 13) == 1);
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp120
	movq	%rax, %rcx	# tmp120,
	movl	$20, %edx	#,
	leaq	.LC5(%rip), %rax	#, tmp121
	movq	%rax, %rsi	# tmp121,
	leaq	.LC22(%rip), %rax	#, tmp122
	movq	%rax, %rdi	# tmp122,
	call	__assert_fail@PLT	#
.L14:
# problem158.c:21:     assert(func0(15, 8, 17) == 1);
	movss	.LC23(%rip), %xmm2	#,
	movss	.LC10(%rip), %xmm1	#,
	movl	.LC24(%rip), %eax	#, tmp123
	movd	%eax, %xmm0	# tmp123,
	call	func0	#
	cmpl	$1, %eax	#, _8
	je	.L15	#,
# problem158.c:21:     assert(func0(15, 8, 17) == 1);
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp124
	movq	%rax, %rcx	# tmp124,
	movl	$21, %edx	#,
	leaq	.LC5(%rip), %rax	#, tmp125
	movq	%rax, %rsi	# tmp125,
	leaq	.LC25(%rip), %rax	#, tmp126
	movq	%rax, %rdi	# tmp126,
	call	__assert_fail@PLT	#
.L15:
# problem158.c:22:     assert(func0(48, 55, 73) == 1);
	movss	.LC26(%rip), %xmm2	#,
	movss	.LC27(%rip), %xmm1	#,
	movl	.LC28(%rip), %eax	#, tmp127
	movd	%eax, %xmm0	# tmp127,
	call	func0	#
	cmpl	$1, %eax	#, _9
	je	.L16	#,
# problem158.c:22:     assert(func0(48, 55, 73) == 1);
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp128
	movq	%rax, %rcx	# tmp128,
	movl	$22, %edx	#,
	leaq	.LC5(%rip), %rax	#, tmp129
	movq	%rax, %rsi	# tmp129,
	leaq	.LC29(%rip), %rax	#, tmp130
	movq	%rax, %rdi	# tmp130,
	call	__assert_fail@PLT	#
.L16:
# problem158.c:23:     assert(func0(1, 1, 1) == 0);
	movss	.LC8(%rip), %xmm2	#,
	movss	.LC8(%rip), %xmm1	#,
	movl	.LC8(%rip), %eax	#, tmp131
	movd	%eax, %xmm0	# tmp131,
	call	func0	#
	testl	%eax, %eax	# _10
	je	.L17	#,
# problem158.c:23:     assert(func0(1, 1, 1) == 0);
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp132
	movq	%rax, %rcx	# tmp132,
	movl	$23, %edx	#,
	leaq	.LC5(%rip), %rax	#, tmp133
	movq	%rax, %rsi	# tmp133,
	leaq	.LC30(%rip), %rax	#, tmp134
	movq	%rax, %rdi	# tmp134,
	call	__assert_fail@PLT	#
.L17:
# problem158.c:24:     assert(func0(2, 2, 10) == 0);
	movss	.LC12(%rip), %xmm2	#,
	movss	.LC7(%rip), %xmm1	#,
	movl	.LC7(%rip), %eax	#, tmp135
	movd	%eax, %xmm0	# tmp135,
	call	func0	#
	testl	%eax, %eax	# _11
	je	.L18	#,
# problem158.c:24:     assert(func0(2, 2, 10) == 0);
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp136
	movq	%rax, %rcx	# tmp136,
	movl	$24, %edx	#,
	leaq	.LC5(%rip), %rax	#, tmp137
	movq	%rax, %rsi	# tmp137,
	leaq	.LC31(%rip), %rax	#, tmp138
	movq	%rax, %rdi	# tmp138,
	call	__assert_fail@PLT	#
.L18:
# problem158.c:26:     return 0;
	movl	$0, %eax	#, _35
# problem158.c:27: }
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
	.align 16
.LC0:
	.long	2147483647
	.long	0
	.long	0
	.long	0
	.align 8
.LC1:
	.long	-350469331
	.long	1058682594
	.align 4
.LC2:
	.long	1084227584
	.align 4
.LC3:
	.long	1082130432
	.align 4
.LC4:
	.long	1077936128
	.align 4
.LC7:
	.long	1073741824
	.align 4
.LC8:
	.long	1065353216
	.align 4
.LC10:
	.long	1090519040
	.align 4
.LC11:
	.long	1086324736
	.align 4
.LC12:
	.long	1092616192
	.align 4
.LC15:
	.long	1103626240
	.align 4
.LC16:
	.long	1103101952
	.align 4
.LC17:
	.long	1088421888
	.align 4
.LC20:
	.long	1095761920
	.align 4
.LC21:
	.long	1094713344
	.align 4
.LC23:
	.long	1099431936
	.align 4
.LC24:
	.long	1097859072
	.align 4
.LC26:
	.long	1116864512
	.align 4
.LC27:
	.long	1113325568
	.align 4
.LC28:
	.long	1111490560
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
