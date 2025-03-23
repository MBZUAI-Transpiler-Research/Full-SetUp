	.file	"problem36.c"
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
	movq	%rdi, -24(%rbp)	# l, l
	movl	%esi, -28(%rbp)	# size, size
# problem36.c:4:     float max = -10000;
	movss	.LC0(%rip), %xmm0	#, tmp91
	movss	%xmm0, -8(%rbp)	# tmp91, max
# problem36.c:5:     for (int i = 0; i < size; i++)
	movl	$0, -4(%rbp)	#, i
# problem36.c:5:     for (int i = 0; i < size; i++)
	jmp	.L2	#
.L5:
# problem36.c:6:         if (max < l[i]) max = l[i];
	movl	-4(%rbp), %eax	# i, tmp92
	cltq
	leaq	0(,%rax,4), %rdx	#, _2
	movq	-24(%rbp), %rax	# l, tmp93
	addq	%rdx, %rax	# _2, _3
	movss	(%rax), %xmm0	# *_3, _4
# problem36.c:6:         if (max < l[i]) max = l[i];
	comiss	-8(%rbp), %xmm0	# max, _4
	jbe	.L3	#,
# problem36.c:6:         if (max < l[i]) max = l[i];
	movl	-4(%rbp), %eax	# i, tmp94
	cltq
	leaq	0(,%rax,4), %rdx	#, _6
	movq	-24(%rbp), %rax	# l, tmp95
	addq	%rdx, %rax	# _6, _7
# problem36.c:6:         if (max < l[i]) max = l[i];
	movss	(%rax), %xmm0	# *_7, tmp96
	movss	%xmm0, -8(%rbp)	# tmp96, max
.L3:
# problem36.c:5:     for (int i = 0; i < size; i++)
	addl	$1, -4(%rbp)	#, i
.L2:
# problem36.c:5:     for (int i = 0; i < size; i++)
	movl	-4(%rbp), %eax	# i, tmp97
	cmpl	-28(%rbp), %eax	# size, tmp97
	jl	.L5	#,
# problem36.c:7:     return max;
	movss	-8(%rbp), %xmm0	# max, _14
# problem36.c:8: }
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE0:
	.size	func0, .-func0
	.section	.rodata
.LC6:
	.string	"problem36.c"
	.align 8
.LC7:
	.string	"fabs(func0(list1, 3) - 3) < 1e-4"
	.align 8
.LC15:
	.string	"fabs(func0(list2, 11) - 124) < 1e-4"
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
	subq	$80, %rsp	#,
# problem36.c:16: int main() {
	movq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp121
	movq	%rax, -8(%rbp)	# tmp121, D.3446
	xorl	%eax, %eax	# tmp121
# problem36.c:17:     float list1[] = {1, 2, 3};
	movss	.LC1(%rip), %xmm0	#, tmp92
	movss	%xmm0, -76(%rbp)	# tmp92, list1[0]
	movss	.LC2(%rip), %xmm0	#, tmp93
	movss	%xmm0, -72(%rbp)	# tmp93, list1[1]
	movss	.LC3(%rip), %xmm0	#, tmp94
	movss	%xmm0, -68(%rbp)	# tmp94, list1[2]
# problem36.c:18:     assert(fabs(func0(list1, 3) - 3) < 1e-4);
	leaq	-76(%rbp), %rax	#, tmp95
	movl	$3, %esi	#,
	movq	%rax, %rdi	# tmp95,
	call	func0	#
	movd	%xmm0, %eax	#, _1
	movss	.LC3(%rip), %xmm1	#, tmp96
	movd	%eax, %xmm0	# _1, _1
	subss	%xmm1, %xmm0	# tmp96, _1
	movss	.LC4(%rip), %xmm1	#, tmp97
	andps	%xmm1, %xmm0	# tmp97, _3
	pxor	%xmm1, %xmm1	# _4
	cvtss2sd	%xmm0, %xmm1	# _3, _4
	movsd	.LC5(%rip), %xmm0	#, tmp98
	comisd	%xmm1, %xmm0	# _4, tmp98
	ja	.L9	#,
# problem36.c:18:     assert(fabs(func0(list1, 3) - 3) < 1e-4);
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp99
	movq	%rax, %rcx	# tmp99,
	movl	$18, %edx	#,
	leaq	.LC6(%rip), %rax	#, tmp100
	movq	%rax, %rsi	# tmp100,
	leaq	.LC7(%rip), %rax	#, tmp101
	movq	%rax, %rdi	# tmp101,
	call	__assert_fail@PLT	#
.L9:
# problem36.c:20:     float list2[] = {5, 3, -5, 2, -3, 3, 9, 0, 124, 1, -10};
	movss	.LC8(%rip), %xmm0	#, tmp102
	movss	%xmm0, -64(%rbp)	# tmp102, list2[0]
	movss	.LC3(%rip), %xmm0	#, tmp103
	movss	%xmm0, -60(%rbp)	# tmp103, list2[1]
	movss	.LC9(%rip), %xmm0	#, tmp104
	movss	%xmm0, -56(%rbp)	# tmp104, list2[2]
	movss	.LC2(%rip), %xmm0	#, tmp105
	movss	%xmm0, -52(%rbp)	# tmp105, list2[3]
	movss	.LC10(%rip), %xmm0	#, tmp106
	movss	%xmm0, -48(%rbp)	# tmp106, list2[4]
	movss	.LC3(%rip), %xmm0	#, tmp107
	movss	%xmm0, -44(%rbp)	# tmp107, list2[5]
	movss	.LC11(%rip), %xmm0	#, tmp108
	movss	%xmm0, -40(%rbp)	# tmp108, list2[6]
	pxor	%xmm0, %xmm0	# tmp109
	movss	%xmm0, -36(%rbp)	# tmp109, list2[7]
	movss	.LC13(%rip), %xmm0	#, tmp110
	movss	%xmm0, -32(%rbp)	# tmp110, list2[8]
	movss	.LC1(%rip), %xmm0	#, tmp111
	movss	%xmm0, -28(%rbp)	# tmp111, list2[9]
	movss	.LC14(%rip), %xmm0	#, tmp112
	movss	%xmm0, -24(%rbp)	# tmp112, list2[10]
# problem36.c:21:     assert(fabs(func0(list2, 11) - 124) < 1e-4);
	leaq	-64(%rbp), %rax	#, tmp113
	movl	$11, %esi	#,
	movq	%rax, %rdi	# tmp113,
	call	func0	#
	movd	%xmm0, %eax	#, _5
	movss	.LC13(%rip), %xmm1	#, tmp114
	movd	%eax, %xmm0	# _5, _5
	subss	%xmm1, %xmm0	# tmp114, _5
	movss	.LC4(%rip), %xmm1	#, tmp115
	andps	%xmm1, %xmm0	# tmp115, _7
	pxor	%xmm1, %xmm1	# _8
	cvtss2sd	%xmm0, %xmm1	# _7, _8
	movsd	.LC5(%rip), %xmm0	#, tmp116
	comisd	%xmm1, %xmm0	# _8, tmp116
	ja	.L10	#,
# problem36.c:21:     assert(fabs(func0(list2, 11) - 124) < 1e-4);
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp117
	movq	%rax, %rcx	# tmp117,
	movl	$21, %edx	#,
	leaq	.LC6(%rip), %rax	#, tmp118
	movq	%rax, %rsi	# tmp118,
	leaq	.LC15(%rip), %rax	#, tmp119
	movq	%rax, %rdi	# tmp119,
	call	__assert_fail@PLT	#
.L10:
	movl	$0, %eax	#, _30
# problem36.c:22: }
	movq	-8(%rbp), %rdx	# D.3446, tmp122
	subq	%fs:40, %rdx	# MEM[(<address-space-1> long unsigned int *)40B], tmp122
	je	.L12	#,
# problem36.c:22: }
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
	.align 4
.LC0:
	.long	-971227136
	.align 4
.LC1:
	.long	1065353216
	.align 4
.LC2:
	.long	1073741824
	.align 4
.LC3:
	.long	1077936128
	.align 16
.LC4:
	.long	2147483647
	.long	0
	.long	0
	.long	0
	.align 8
.LC5:
	.long	-350469331
	.long	1058682594
	.align 4
.LC8:
	.long	1084227584
	.align 4
.LC9:
	.long	-1063256064
	.align 4
.LC10:
	.long	-1069547520
	.align 4
.LC11:
	.long	1091567616
	.align 4
.LC13:
	.long	1123549184
	.align 4
.LC14:
	.long	-1054867456
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
