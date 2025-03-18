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
	movq	%rdi, -24(%rbp)	# numbers, numbers
	movl	%esi, -28(%rbp)	# size, size
# eval/problem5//code.c:5:     float sum = 0;
	pxor	%xmm0, %xmm0	# tmp96
	movss	%xmm0, -16(%rbp)	# tmp96, sum
# eval/problem5//code.c:7:     int i = 0;
	movl	$0, -8(%rbp)	#, i
# eval/problem5//code.c:9:     for (i = 0; i < size; i++)
	movl	$0, -8(%rbp)	#, i
# eval/problem5//code.c:9:     for (i = 0; i < size; i++)
	jmp	.L2	#
.L3:
# eval/problem5//code.c:10:         sum += numbers[i];
	movl	-8(%rbp), %eax	# i, tmp97
	cltq
	leaq	0(,%rax,4), %rdx	#, _2
	movq	-24(%rbp), %rax	# numbers, tmp98
	addq	%rdx, %rax	# _2, _3
	movss	(%rax), %xmm0	# *_3, _4
# eval/problem5//code.c:10:         sum += numbers[i];
	movss	-16(%rbp), %xmm1	# sum, tmp100
	addss	%xmm1, %xmm0	# tmp100, tmp99
	movss	%xmm0, -16(%rbp)	# tmp99, sum
# eval/problem5//code.c:9:     for (i = 0; i < size; i++)
	addl	$1, -8(%rbp)	#, i
.L2:
# eval/problem5//code.c:9:     for (i = 0; i < size; i++)
	movl	-8(%rbp), %eax	# i, tmp101
	cmpl	-28(%rbp), %eax	# size, tmp101
	jl	.L3	#,
# eval/problem5//code.c:12:     avg = sum / size;
	pxor	%xmm1, %xmm1	# _5
	cvtsi2ssl	-28(%rbp), %xmm1	# size, _5
# eval/problem5//code.c:12:     avg = sum / size;
	movss	-16(%rbp), %xmm0	# sum, tmp103
	divss	%xmm1, %xmm0	# _5, tmp102
	movss	%xmm0, -4(%rbp)	# tmp102, avg
# eval/problem5//code.c:13:     msum = 0;
	pxor	%xmm0, %xmm0	# tmp104
	movss	%xmm0, -12(%rbp)	# tmp104, msum
# eval/problem5//code.c:15:     for (i = 0; i < size; i++)
	movl	$0, -8(%rbp)	#, i
# eval/problem5//code.c:15:     for (i = 0; i < size; i++)
	jmp	.L4	#
.L5:
# eval/problem5//code.c:16:         msum += fabs(numbers[i] - avg);
	movl	-8(%rbp), %eax	# i, tmp105
	cltq
	leaq	0(,%rax,4), %rdx	#, _7
	movq	-24(%rbp), %rax	# numbers, tmp106
	addq	%rdx, %rax	# _7, _8
	movss	(%rax), %xmm0	# *_8, _9
# eval/problem5//code.c:16:         msum += fabs(numbers[i] - avg);
	subss	-4(%rbp), %xmm0	# avg, _10
# eval/problem5//code.c:16:         msum += fabs(numbers[i] - avg);
	movss	.LC1(%rip), %xmm1	#, tmp107
	andps	%xmm1, %xmm0	# tmp107, _11
# eval/problem5//code.c:16:         msum += fabs(numbers[i] - avg);
	movss	-12(%rbp), %xmm1	# msum, tmp109
	addss	%xmm1, %xmm0	# tmp109, tmp108
	movss	%xmm0, -12(%rbp)	# tmp108, msum
# eval/problem5//code.c:15:     for (i = 0; i < size; i++)
	addl	$1, -8(%rbp)	#, i
.L4:
# eval/problem5//code.c:15:     for (i = 0; i < size; i++)
	movl	-8(%rbp), %eax	# i, tmp110
	cmpl	-28(%rbp), %eax	# size, tmp110
	jl	.L5	#,
# eval/problem5//code.c:18:     return msum / size;
	pxor	%xmm1, %xmm1	# _12
	cvtsi2ssl	-28(%rbp), %xmm1	# size, _12
	movss	-12(%rbp), %xmm0	# msum, tmp111
	divss	%xmm1, %xmm0	# _12, _24
# eval/problem5//code.c:19: }
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE0:
	.size	func0, .-func0
	.section	.rodata
	.align 16
.LC1:
	.long	2147483647
	.long	0
	.long	0
	.long	0
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
