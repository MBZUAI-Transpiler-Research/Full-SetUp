	.file	"problem5.c"
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
# problem5.c:5:     float sum = 0;
	pxor	%xmm0, %xmm0	# tmp96
	movss	%xmm0, -16(%rbp)	# tmp96, sum
# problem5.c:7:     int i = 0;
	movl	$0, -8(%rbp)	#, i
# problem5.c:9:     for (i = 0; i < size; i++)
	movl	$0, -8(%rbp)	#, i
# problem5.c:9:     for (i = 0; i < size; i++)
	jmp	.L2	#
.L3:
# problem5.c:10:         sum += numbers[i];
	movl	-8(%rbp), %eax	# i, tmp97
	cltq
	leaq	0(,%rax,4), %rdx	#, _2
	movq	-24(%rbp), %rax	# numbers, tmp98
	addq	%rdx, %rax	# _2, _3
	movss	(%rax), %xmm0	# *_3, _4
# problem5.c:10:         sum += numbers[i];
	movss	-16(%rbp), %xmm1	# sum, tmp100
	addss	%xmm1, %xmm0	# tmp100, tmp99
	movss	%xmm0, -16(%rbp)	# tmp99, sum
# problem5.c:9:     for (i = 0; i < size; i++)
	addl	$1, -8(%rbp)	#, i
.L2:
# problem5.c:9:     for (i = 0; i < size; i++)
	movl	-8(%rbp), %eax	# i, tmp101
	cmpl	-28(%rbp), %eax	# size, tmp101
	jl	.L3	#,
# problem5.c:12:     avg = sum / size;
	pxor	%xmm1, %xmm1	# _5
	cvtsi2ssl	-28(%rbp), %xmm1	# size, _5
# problem5.c:12:     avg = sum / size;
	movss	-16(%rbp), %xmm0	# sum, tmp103
	divss	%xmm1, %xmm0	# _5, tmp102
	movss	%xmm0, -4(%rbp)	# tmp102, avg
# problem5.c:13:     msum = 0;
	pxor	%xmm0, %xmm0	# tmp104
	movss	%xmm0, -12(%rbp)	# tmp104, msum
# problem5.c:15:     for (i = 0; i < size; i++)
	movl	$0, -8(%rbp)	#, i
# problem5.c:15:     for (i = 0; i < size; i++)
	jmp	.L4	#
.L5:
# problem5.c:16:         msum += fabs(numbers[i] - avg);
	movl	-8(%rbp), %eax	# i, tmp105
	cltq
	leaq	0(,%rax,4), %rdx	#, _7
	movq	-24(%rbp), %rax	# numbers, tmp106
	addq	%rdx, %rax	# _7, _8
	movss	(%rax), %xmm0	# *_8, _9
# problem5.c:16:         msum += fabs(numbers[i] - avg);
	subss	-4(%rbp), %xmm0	# avg, _10
# problem5.c:16:         msum += fabs(numbers[i] - avg);
	movss	.LC1(%rip), %xmm1	#, tmp107
	andps	%xmm1, %xmm0	# tmp107, _11
# problem5.c:16:         msum += fabs(numbers[i] - avg);
	movss	-12(%rbp), %xmm1	# msum, tmp109
	addss	%xmm1, %xmm0	# tmp109, tmp108
	movss	%xmm0, -12(%rbp)	# tmp108, msum
# problem5.c:15:     for (i = 0; i < size; i++)
	addl	$1, -8(%rbp)	#, i
.L4:
# problem5.c:15:     for (i = 0; i < size; i++)
	movl	-8(%rbp), %eax	# i, tmp110
	cmpl	-28(%rbp), %eax	# size, tmp110
	jl	.L5	#,
# problem5.c:18:     return msum / size;
	pxor	%xmm1, %xmm1	# _12
	cvtsi2ssl	-28(%rbp), %xmm1	# size, _12
	movss	-12(%rbp), %xmm0	# msum, tmp111
	divss	%xmm1, %xmm0	# _12, _24
# problem5.c:19: }
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE0:
	.size	func0, .-func0
	.section	.rodata
.LC8:
	.string	"problem5.c"
	.align 8
.LC9:
	.string	"fabs(func0(case1, 3) - 2.0/3.0) < 1e-4"
	.align 8
.LC12:
	.string	"fabs(func0(case2, 4) - 1.0) < 1e-4"
	.align 8
.LC15:
	.string	"fabs(func0(case3, 5) - 6.0/5.0) < 1e-4"
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
	subq	$64, %rsp	#,
# problem5.c:26: int main() {
	movq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp130
	movq	%rax, -8(%rbp)	# tmp130, D.4286
	xorl	%eax, %eax	# tmp130
# problem5.c:27:     float case1[] = {1.0, 2.0, 3.0};
	movss	.LC2(%rip), %xmm0	#, tmp96
	movss	%xmm0, -60(%rbp)	# tmp96, case1[0]
	movss	.LC3(%rip), %xmm0	#, tmp97
	movss	%xmm0, -56(%rbp)	# tmp97, case1[1]
	movss	.LC4(%rip), %xmm0	#, tmp98
	movss	%xmm0, -52(%rbp)	# tmp98, case1[2]
# problem5.c:28:     assert(fabs(func0(case1, 3) - 2.0/3.0) < 1e-4);
	leaq	-60(%rbp), %rax	#, tmp99
	movl	$3, %esi	#,
	movq	%rax, %rdi	# tmp99,
	call	func0	#
# problem5.c:28:     assert(fabs(func0(case1, 3) - 2.0/3.0) < 1e-4);
	cvtss2sd	%xmm0, %xmm0	# _1, _2
	movsd	.LC5(%rip), %xmm1	#, tmp100
	subsd	%xmm1, %xmm0	# tmp100, _3
	movq	.LC6(%rip), %xmm1	#, tmp101
	andpd	%xmm0, %xmm1	# _3, _4
	movsd	.LC7(%rip), %xmm0	#, tmp102
	comisd	%xmm1, %xmm0	# _4, tmp102
	ja	.L8	#,
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp103
	movq	%rax, %rcx	# tmp103,
	movl	$28, %edx	#,
	leaq	.LC8(%rip), %rax	#, tmp104
	movq	%rax, %rsi	# tmp104,
	leaq	.LC9(%rip), %rax	#, tmp105
	movq	%rax, %rdi	# tmp105,
	call	__assert_fail@PLT	#
.L8:
# problem5.c:30:     float case2[] = {1.0, 2.0, 3.0, 4.0};
	movss	.LC2(%rip), %xmm0	#, tmp106
	movss	%xmm0, -48(%rbp)	# tmp106, case2[0]
	movss	.LC3(%rip), %xmm0	#, tmp107
	movss	%xmm0, -44(%rbp)	# tmp107, case2[1]
	movss	.LC4(%rip), %xmm0	#, tmp108
	movss	%xmm0, -40(%rbp)	# tmp108, case2[2]
	movss	.LC10(%rip), %xmm0	#, tmp109
	movss	%xmm0, -36(%rbp)	# tmp109, case2[3]
# problem5.c:31:     assert(fabs(func0(case2, 4) - 1.0) < 1e-4);
	leaq	-48(%rbp), %rax	#, tmp110
	movl	$4, %esi	#,
	movq	%rax, %rdi	# tmp110,
	call	func0	#
# problem5.c:31:     assert(fabs(func0(case2, 4) - 1.0) < 1e-4);
	cvtss2sd	%xmm0, %xmm0	# _5, _6
	movsd	.LC11(%rip), %xmm1	#, tmp111
	subsd	%xmm1, %xmm0	# tmp111, _7
	movq	.LC6(%rip), %xmm1	#, tmp112
	andpd	%xmm0, %xmm1	# _7, _8
	movsd	.LC7(%rip), %xmm0	#, tmp113
	comisd	%xmm1, %xmm0	# _8, tmp113
	ja	.L9	#,
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp114
	movq	%rax, %rcx	# tmp114,
	movl	$31, %edx	#,
	leaq	.LC8(%rip), %rax	#, tmp115
	movq	%rax, %rsi	# tmp115,
	leaq	.LC12(%rip), %rax	#, tmp116
	movq	%rax, %rdi	# tmp116,
	call	__assert_fail@PLT	#
.L9:
# problem5.c:33:     float case3[] = {1.0, 2.0, 3.0, 4.0, 5.0};
	movss	.LC2(%rip), %xmm0	#, tmp117
	movss	%xmm0, -32(%rbp)	# tmp117, case3[0]
	movss	.LC3(%rip), %xmm0	#, tmp118
	movss	%xmm0, -28(%rbp)	# tmp118, case3[1]
	movss	.LC4(%rip), %xmm0	#, tmp119
	movss	%xmm0, -24(%rbp)	# tmp119, case3[2]
	movss	.LC10(%rip), %xmm0	#, tmp120
	movss	%xmm0, -20(%rbp)	# tmp120, case3[3]
	movss	.LC13(%rip), %xmm0	#, tmp121
	movss	%xmm0, -16(%rbp)	# tmp121, case3[4]
# problem5.c:34:     assert(fabs(func0(case3, 5) - 6.0/5.0) < 1e-4);
	leaq	-32(%rbp), %rax	#, tmp122
	movl	$5, %esi	#,
	movq	%rax, %rdi	# tmp122,
	call	func0	#
# problem5.c:34:     assert(fabs(func0(case3, 5) - 6.0/5.0) < 1e-4);
	cvtss2sd	%xmm0, %xmm0	# _9, _10
	movsd	.LC14(%rip), %xmm1	#, tmp123
	subsd	%xmm1, %xmm0	# tmp123, _11
	movq	.LC6(%rip), %xmm1	#, tmp124
	andpd	%xmm0, %xmm1	# _11, _12
	movsd	.LC7(%rip), %xmm0	#, tmp125
	comisd	%xmm1, %xmm0	# _12, tmp125
	ja	.L10	#,
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp126
	movq	%rax, %rcx	# tmp126,
	movl	$34, %edx	#,
	leaq	.LC8(%rip), %rax	#, tmp127
	movq	%rax, %rsi	# tmp127,
	leaq	.LC15(%rip), %rax	#, tmp128
	movq	%rax, %rdi	# tmp128,
	call	__assert_fail@PLT	#
.L10:
# problem5.c:36:     return 0;
	movl	$0, %eax	#, _32
# problem5.c:37: }
	movq	-8(%rbp), %rdx	# D.4286, tmp131
	subq	%fs:40, %rdx	# MEM[(<address-space-1> long unsigned int *)40B], tmp131
	je	.L12	#,
	call	__stack_chk_fail@PLT	#
.L12:
	leave	
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
.LC1:
	.long	2147483647
	.long	0
	.long	0
	.long	0
	.align 4
.LC2:
	.long	1065353216
	.align 4
.LC3:
	.long	1073741824
	.align 4
.LC4:
	.long	1077936128
	.align 8
.LC5:
	.long	1431655765
	.long	1071994197
	.align 16
.LC6:
	.long	-1
	.long	2147483647
	.long	0
	.long	0
	.align 8
.LC7:
	.long	-350469331
	.long	1058682594
	.align 4
.LC10:
	.long	1082130432
	.align 8
.LC11:
	.long	0
	.long	1072693248
	.align 4
.LC13:
	.long	1084227584
	.align 8
.LC14:
	.long	858993459
	.long	1072902963
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
