	.file	"code.c"
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
	movss	%xmm0, -4(%rbp)	# a, a
	movss	%xmm1, -8(%rbp)	# b, b
	movss	%xmm2, -12(%rbp)	# c, c
# eval/problem158//code.c:5:     if (fabs(a*a + b*b - c*c) < 1e-4 || fabs(a*a + c*c - b*b) < 1e-4 || fabs(b*b + c*c - a*a) < 1e-4) return 1;
	movss	-4(%rbp), %xmm0	# a, tmp105
	movaps	%xmm0, %xmm1	# tmp105, tmp105
	mulss	%xmm0, %xmm1	# tmp105, tmp105
# eval/problem158//code.c:5:     if (fabs(a*a + b*b - c*c) < 1e-4 || fabs(a*a + c*c - b*b) < 1e-4 || fabs(b*b + c*c - a*a) < 1e-4) return 1;
	movss	-8(%rbp), %xmm0	# b, tmp106
	mulss	%xmm0, %xmm0	# tmp106, _2
# eval/problem158//code.c:5:     if (fabs(a*a + b*b - c*c) < 1e-4 || fabs(a*a + c*c - b*b) < 1e-4 || fabs(b*b + c*c - a*a) < 1e-4) return 1;
	addss	%xmm0, %xmm1	# _2, _3
# eval/problem158//code.c:5:     if (fabs(a*a + b*b - c*c) < 1e-4 || fabs(a*a + c*c - b*b) < 1e-4 || fabs(b*b + c*c - a*a) < 1e-4) return 1;
	movss	-12(%rbp), %xmm0	# c, tmp107
	movaps	%xmm0, %xmm2	# tmp107, tmp107
	mulss	%xmm0, %xmm2	# tmp107, tmp107
# eval/problem158//code.c:5:     if (fabs(a*a + b*b - c*c) < 1e-4 || fabs(a*a + c*c - b*b) < 1e-4 || fabs(b*b + c*c - a*a) < 1e-4) return 1;
	subss	%xmm2, %xmm1	# _4, _3
	movaps	%xmm1, %xmm0	# _3, _5
# eval/problem158//code.c:5:     if (fabs(a*a + b*b - c*c) < 1e-4 || fabs(a*a + c*c - b*b) < 1e-4 || fabs(b*b + c*c - a*a) < 1e-4) return 1;
	movss	.LC0(%rip), %xmm1	#, tmp108
	andps	%xmm1, %xmm0	# tmp108, _6
	pxor	%xmm1, %xmm1	# _7
	cvtss2sd	%xmm0, %xmm1	# _6, _7
# eval/problem158//code.c:5:     if (fabs(a*a + b*b - c*c) < 1e-4 || fabs(a*a + c*c - b*b) < 1e-4 || fabs(b*b + c*c - a*a) < 1e-4) return 1;
	movsd	.LC1(%rip), %xmm0	#, tmp109
	comisd	%xmm1, %xmm0	# _7, tmp109
	ja	.L2	#,
# eval/problem158//code.c:5:     if (fabs(a*a + b*b - c*c) < 1e-4 || fabs(a*a + c*c - b*b) < 1e-4 || fabs(b*b + c*c - a*a) < 1e-4) return 1;
	movss	-4(%rbp), %xmm0	# a, tmp110
	movaps	%xmm0, %xmm1	# tmp110, tmp110
	mulss	%xmm0, %xmm1	# tmp110, tmp110
# eval/problem158//code.c:5:     if (fabs(a*a + b*b - c*c) < 1e-4 || fabs(a*a + c*c - b*b) < 1e-4 || fabs(b*b + c*c - a*a) < 1e-4) return 1;
	movss	-12(%rbp), %xmm0	# c, tmp111
	mulss	%xmm0, %xmm0	# tmp111, _9
# eval/problem158//code.c:5:     if (fabs(a*a + b*b - c*c) < 1e-4 || fabs(a*a + c*c - b*b) < 1e-4 || fabs(b*b + c*c - a*a) < 1e-4) return 1;
	addss	%xmm0, %xmm1	# _9, _10
# eval/problem158//code.c:5:     if (fabs(a*a + b*b - c*c) < 1e-4 || fabs(a*a + c*c - b*b) < 1e-4 || fabs(b*b + c*c - a*a) < 1e-4) return 1;
	movss	-8(%rbp), %xmm0	# b, tmp112
	movaps	%xmm0, %xmm2	# tmp112, tmp112
	mulss	%xmm0, %xmm2	# tmp112, tmp112
# eval/problem158//code.c:5:     if (fabs(a*a + b*b - c*c) < 1e-4 || fabs(a*a + c*c - b*b) < 1e-4 || fabs(b*b + c*c - a*a) < 1e-4) return 1;
	subss	%xmm2, %xmm1	# _11, _10
	movaps	%xmm1, %xmm0	# _10, _12
# eval/problem158//code.c:5:     if (fabs(a*a + b*b - c*c) < 1e-4 || fabs(a*a + c*c - b*b) < 1e-4 || fabs(b*b + c*c - a*a) < 1e-4) return 1;
	movss	.LC0(%rip), %xmm1	#, tmp113
	andps	%xmm1, %xmm0	# tmp113, _13
	pxor	%xmm1, %xmm1	# _14
	cvtss2sd	%xmm0, %xmm1	# _13, _14
# eval/problem158//code.c:5:     if (fabs(a*a + b*b - c*c) < 1e-4 || fabs(a*a + c*c - b*b) < 1e-4 || fabs(b*b + c*c - a*a) < 1e-4) return 1;
	movsd	.LC1(%rip), %xmm0	#, tmp114
	comisd	%xmm1, %xmm0	# _14, tmp114
	ja	.L2	#,
# eval/problem158//code.c:5:     if (fabs(a*a + b*b - c*c) < 1e-4 || fabs(a*a + c*c - b*b) < 1e-4 || fabs(b*b + c*c - a*a) < 1e-4) return 1;
	movss	-8(%rbp), %xmm0	# b, tmp115
	movaps	%xmm0, %xmm1	# tmp115, tmp115
	mulss	%xmm0, %xmm1	# tmp115, tmp115
# eval/problem158//code.c:5:     if (fabs(a*a + b*b - c*c) < 1e-4 || fabs(a*a + c*c - b*b) < 1e-4 || fabs(b*b + c*c - a*a) < 1e-4) return 1;
	movss	-12(%rbp), %xmm0	# c, tmp116
	mulss	%xmm0, %xmm0	# tmp116, _16
# eval/problem158//code.c:5:     if (fabs(a*a + b*b - c*c) < 1e-4 || fabs(a*a + c*c - b*b) < 1e-4 || fabs(b*b + c*c - a*a) < 1e-4) return 1;
	addss	%xmm0, %xmm1	# _16, _17
# eval/problem158//code.c:5:     if (fabs(a*a + b*b - c*c) < 1e-4 || fabs(a*a + c*c - b*b) < 1e-4 || fabs(b*b + c*c - a*a) < 1e-4) return 1;
	movss	-4(%rbp), %xmm0	# a, tmp117
	movaps	%xmm0, %xmm2	# tmp117, tmp117
	mulss	%xmm0, %xmm2	# tmp117, tmp117
# eval/problem158//code.c:5:     if (fabs(a*a + b*b - c*c) < 1e-4 || fabs(a*a + c*c - b*b) < 1e-4 || fabs(b*b + c*c - a*a) < 1e-4) return 1;
	subss	%xmm2, %xmm1	# _18, _17
	movaps	%xmm1, %xmm0	# _17, _19
# eval/problem158//code.c:5:     if (fabs(a*a + b*b - c*c) < 1e-4 || fabs(a*a + c*c - b*b) < 1e-4 || fabs(b*b + c*c - a*a) < 1e-4) return 1;
	movss	.LC0(%rip), %xmm1	#, tmp118
	andps	%xmm1, %xmm0	# tmp118, _20
	pxor	%xmm1, %xmm1	# _21
	cvtss2sd	%xmm0, %xmm1	# _20, _21
# eval/problem158//code.c:5:     if (fabs(a*a + b*b - c*c) < 1e-4 || fabs(a*a + c*c - b*b) < 1e-4 || fabs(b*b + c*c - a*a) < 1e-4) return 1;
	movsd	.LC1(%rip), %xmm0	#, tmp119
	comisd	%xmm1, %xmm0	# _21, tmp119
	jbe	.L6	#,
.L2:
# eval/problem158//code.c:5:     if (fabs(a*a + b*b - c*c) < 1e-4 || fabs(a*a + c*c - b*b) < 1e-4 || fabs(b*b + c*c - a*a) < 1e-4) return 1;
	movl	$1, %eax	#, _22
# eval/problem158//code.c:5:     if (fabs(a*a + b*b - c*c) < 1e-4 || fabs(a*a + c*c - b*b) < 1e-4 || fabs(b*b + c*c - a*a) < 1e-4) return 1;
	jmp	.L5	#
.L6:
# eval/problem158//code.c:6:     return 0;
	movl	$0, %eax	#, _22
.L5:
# eval/problem158//code.c:7: }
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE0:
	.size	func0, .-func0
	.section	.rodata
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
