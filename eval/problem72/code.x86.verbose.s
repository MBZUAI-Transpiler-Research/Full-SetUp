	.file	"code.c"
# GNU C17 (Ubuntu 13.3.0-6ubuntu2~24.04) version 13.3.0 (x86_64-linux-gnu)
#	compiled by GNU C version 13.3.0, GMP version 6.3.0, MPFR version 4.2.1, MPC version 1.3.1, isl version isl-0.26-GMP

# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed: -mtune=generic -march=x86-64 -O0 -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection -fcf-protection
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
	subq	$32, %rsp	#,
	movss	%xmm0, -20(%rbp)	# a, a
	movss	%xmm1, -24(%rbp)	# b, b
	movss	%xmm2, -28(%rbp)	# c, c
# code.c:5: if (a + b <= c || a + c <= b || b + c <= a) return -1;
	movss	-20(%rbp), %xmm0	# a, tmp97
	movaps	%xmm0, %xmm1	# tmp97, tmp97
	addss	-24(%rbp), %xmm1	# b, tmp97
# code.c:5: if (a + b <= c || a + c <= b || b + c <= a) return -1;
	movss	-28(%rbp), %xmm0	# c, tmp98
	comiss	%xmm1, %xmm0	# _1, tmp98
	jnb	.L2	#,
# code.c:5: if (a + b <= c || a + c <= b || b + c <= a) return -1;
	movss	-20(%rbp), %xmm0	# a, tmp99
	movaps	%xmm0, %xmm1	# tmp99, tmp99
	addss	-28(%rbp), %xmm1	# c, tmp99
# code.c:5: if (a + b <= c || a + c <= b || b + c <= a) return -1;
	movss	-24(%rbp), %xmm0	# b, tmp100
	comiss	%xmm1, %xmm0	# _2, tmp100
	jnb	.L2	#,
# code.c:5: if (a + b <= c || a + c <= b || b + c <= a) return -1;
	movss	-24(%rbp), %xmm0	# b, tmp101
	movaps	%xmm0, %xmm1	# tmp101, tmp101
	addss	-28(%rbp), %xmm1	# c, tmp101
# code.c:5: if (a + b <= c || a + c <= b || b + c <= a) return -1;
	movss	-20(%rbp), %xmm0	# a, tmp102
	comiss	%xmm1, %xmm0	# _3, tmp102
	jb	.L6	#,
.L2:
# code.c:5: if (a + b <= c || a + c <= b || b + c <= a) return -1;
	movss	.LC0(%rip), %xmm0	#, _14
# code.c:5: if (a + b <= c || a + c <= b || b + c <= a) return -1;
	jmp	.L5	#
.L6:
# code.c:6: float s = (a + b + c) / 2;
	movss	-20(%rbp), %xmm0	# a, tmp103
	addss	-24(%rbp), %xmm0	# b, _4
# code.c:6: float s = (a + b + c) / 2;
	addss	-28(%rbp), %xmm0	# c, _5
# code.c:6: float s = (a + b + c) / 2;
	movss	.LC1(%rip), %xmm1	#, tmp105
	divss	%xmm1, %xmm0	# tmp105, tmp104
	movss	%xmm0, -8(%rbp)	# tmp104, s
# code.c:7: float area = sqrtf(s * (s - a) * (s - b) * (s - c));
	movss	-8(%rbp), %xmm0	# s, tmp106
	subss	-20(%rbp), %xmm0	# a, _6
# code.c:7: float area = sqrtf(s * (s - a) * (s - b) * (s - c));
	movaps	%xmm0, %xmm1	# _6, _6
	mulss	-8(%rbp), %xmm1	# s, _6
# code.c:7: float area = sqrtf(s * (s - a) * (s - b) * (s - c));
	movss	-8(%rbp), %xmm0	# s, tmp107
	subss	-24(%rbp), %xmm0	# b, _8
# code.c:7: float area = sqrtf(s * (s - a) * (s - b) * (s - c));
	mulss	%xmm0, %xmm1	# _8, _9
# code.c:7: float area = sqrtf(s * (s - a) * (s - b) * (s - c));
	movss	-8(%rbp), %xmm0	# s, tmp108
	subss	-28(%rbp), %xmm0	# c, _10
# code.c:7: float area = sqrtf(s * (s - a) * (s - b) * (s - c));
	mulss	%xmm0, %xmm1	# _10, _9
	movd	%xmm1, %eax	# _9, _11
	movd	%eax, %xmm0	# _11,
	call	sqrtf@PLT	#
	movd	%xmm0, %eax	#, tmp109
	movl	%eax, -4(%rbp)	# tmp109, area
# code.c:8: return roundf(area * 100) / 100;
	movss	-4(%rbp), %xmm1	# area, tmp110
	movss	.LC2(%rip), %xmm0	#, tmp111
	mulss	%xmm0, %xmm1	# tmp111, tmp110
	movd	%xmm1, %eax	# tmp110, _12
	movd	%eax, %xmm0	# _12,
	call	roundf@PLT	#
	movd	%xmm0, %eax	#, _13
# code.c:8: return roundf(area * 100) / 100;
	movss	.LC2(%rip), %xmm1	#, tmp112
	movd	%eax, %xmm0	# _13, _13
	divss	%xmm1, %xmm0	# tmp112, _13
.L5:
# code.c:9: }
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE0:
	.size	func0, .-func0
	.section	.rodata
	.align 4
.LC0:
	.long	-1082130432
	.align 4
.LC1:
	.long	1073741824
	.align 4
.LC2:
	.long	1120403456
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
