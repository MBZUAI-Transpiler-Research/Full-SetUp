	.file	"problem86.c"
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
	movq	%rdi, -24(%rbp)	# lst, lst
	movl	%esi, -28(%rbp)	# size, size
# problem86.c:4:     int sum = 0;
	movl	$0, -8(%rbp)	#, sum
# problem86.c:5:     for (int i = 0; i * 2 + 1 < size; i++)
	movl	$0, -4(%rbp)	#, i
# problem86.c:5:     for (int i = 0; i * 2 + 1 < size; i++)
	jmp	.L2	#
.L4:
# problem86.c:6:         if (lst[i * 2 + 1] % 2 == 0) sum += lst[i * 2 + 1];
	movl	-4(%rbp), %eax	# i, tmp100
	addl	%eax, %eax	# _1
# problem86.c:6:         if (lst[i * 2 + 1] % 2 == 0) sum += lst[i * 2 + 1];
	cltq
	addq	$1, %rax	#, _3
	leaq	0(,%rax,4), %rdx	#, _4
	movq	-24(%rbp), %rax	# lst, tmp101
	addq	%rdx, %rax	# _4, _5
	movl	(%rax), %eax	# *_5, _6
# problem86.c:6:         if (lst[i * 2 + 1] % 2 == 0) sum += lst[i * 2 + 1];
	andl	$1, %eax	#, _8
# problem86.c:6:         if (lst[i * 2 + 1] % 2 == 0) sum += lst[i * 2 + 1];
	testl	%eax, %eax	# _8
	jne	.L3	#,
# problem86.c:6:         if (lst[i * 2 + 1] % 2 == 0) sum += lst[i * 2 + 1];
	movl	-4(%rbp), %eax	# i, tmp102
	addl	%eax, %eax	# _9
# problem86.c:6:         if (lst[i * 2 + 1] % 2 == 0) sum += lst[i * 2 + 1];
	cltq
	addq	$1, %rax	#, _11
	leaq	0(,%rax,4), %rdx	#, _12
	movq	-24(%rbp), %rax	# lst, tmp103
	addq	%rdx, %rax	# _12, _13
	movl	(%rax), %eax	# *_13, _14
# problem86.c:6:         if (lst[i * 2 + 1] % 2 == 0) sum += lst[i * 2 + 1];
	addl	%eax, -8(%rbp)	# _14, sum
.L3:
# problem86.c:5:     for (int i = 0; i * 2 + 1 < size; i++)
	addl	$1, -4(%rbp)	#, i
.L2:
# problem86.c:5:     for (int i = 0; i * 2 + 1 < size; i++)
	movl	-4(%rbp), %eax	# i, tmp104
	addl	%eax, %eax	# _15
# problem86.c:5:     for (int i = 0; i * 2 + 1 < size; i++)
	addl	$1, %eax	#, _16
# problem86.c:5:     for (int i = 0; i * 2 + 1 < size; i++)
	cmpl	%eax, -28(%rbp)	# _16, size
	jg	.L4	#,
# problem86.c:7:     return sum;
	movl	-8(%rbp), %eax	# sum, _23
# problem86.c:8: }
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE0:
	.size	func0, .-func0
	.section	.rodata
.LC0:
	.string	"problem86.c"
	.align 8
.LC1:
	.string	"func0(array1, sizeof(array1) / sizeof(array1[0])) == 88"
	.align 8
.LC2:
	.string	"func0(array2, sizeof(array2) / sizeof(array2[0])) == 122"
	.align 8
.LC3:
	.string	"func0(array3, sizeof(array3) / sizeof(array3[0])) == 0"
	.align 8
.LC4:
	.string	"func0(array4, sizeof(array4) / sizeof(array4[0])) == 12"
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
# problem86.c:14: int main() {
	movq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp105
	movq	%rax, -8(%rbp)	# tmp105, D.3232
	xorl	%eax, %eax	# tmp105
# problem86.c:15:     int array1[] = {4, 88};
	movl	$4, -72(%rbp)	#, array1[0]
	movl	$88, -68(%rbp)	#, array1[1]
# problem86.c:16:     assert(func0(array1, sizeof(array1) / sizeof(array1[0])) == 88);
	leaq	-72(%rbp), %rax	#, tmp88
	movl	$2, %esi	#,
	movq	%rax, %rdi	# tmp88,
	call	func0	#
# problem86.c:16:     assert(func0(array1, sizeof(array1) / sizeof(array1[0])) == 88);
	cmpl	$88, %eax	#, _1
	je	.L7	#,
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp89
	movq	%rax, %rcx	# tmp89,
	movl	$16, %edx	#,
	leaq	.LC0(%rip), %rax	#, tmp90
	movq	%rax, %rsi	# tmp90,
	leaq	.LC1(%rip), %rax	#, tmp91
	movq	%rax, %rdi	# tmp91,
	call	__assert_fail@PLT	#
.L7:
# problem86.c:18:     int array2[] = {4, 5, 6, 7, 2, 122};
	movl	$4, -32(%rbp)	#, array2[0]
	movl	$5, -28(%rbp)	#, array2[1]
	movl	$6, -24(%rbp)	#, array2[2]
	movl	$7, -20(%rbp)	#, array2[3]
	movl	$2, -16(%rbp)	#, array2[4]
	movl	$122, -12(%rbp)	#, array2[5]
# problem86.c:19:     assert(func0(array2, sizeof(array2) / sizeof(array2[0])) == 122);
	leaq	-32(%rbp), %rax	#, tmp92
	movl	$6, %esi	#,
	movq	%rax, %rdi	# tmp92,
	call	func0	#
# problem86.c:19:     assert(func0(array2, sizeof(array2) / sizeof(array2[0])) == 122);
	cmpl	$122, %eax	#, _2
	je	.L8	#,
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp93
	movq	%rax, %rcx	# tmp93,
	movl	$19, %edx	#,
	leaq	.LC0(%rip), %rax	#, tmp94
	movq	%rax, %rsi	# tmp94,
	leaq	.LC2(%rip), %rax	#, tmp95
	movq	%rax, %rdi	# tmp95,
	call	__assert_fail@PLT	#
.L8:
# problem86.c:21:     int array3[] = {4, 0, 6, 7};
	movl	$4, -64(%rbp)	#, array3[0]
	movl	$0, -60(%rbp)	#, array3[1]
	movl	$6, -56(%rbp)	#, array3[2]
	movl	$7, -52(%rbp)	#, array3[3]
# problem86.c:22:     assert(func0(array3, sizeof(array3) / sizeof(array3[0])) == 0);
	leaq	-64(%rbp), %rax	#, tmp96
	movl	$4, %esi	#,
	movq	%rax, %rdi	# tmp96,
	call	func0	#
# problem86.c:22:     assert(func0(array3, sizeof(array3) / sizeof(array3[0])) == 0);
	testl	%eax, %eax	# _3
	je	.L9	#,
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp97
	movq	%rax, %rcx	# tmp97,
	movl	$22, %edx	#,
	leaq	.LC0(%rip), %rax	#, tmp98
	movq	%rax, %rsi	# tmp98,
	leaq	.LC3(%rip), %rax	#, tmp99
	movq	%rax, %rdi	# tmp99,
	call	__assert_fail@PLT	#
.L9:
# problem86.c:24:     int array4[] = {4, 4, 6, 8};
	movl	$4, -48(%rbp)	#, array4[0]
	movl	$4, -44(%rbp)	#, array4[1]
	movl	$6, -40(%rbp)	#, array4[2]
	movl	$8, -36(%rbp)	#, array4[3]
# problem86.c:25:     assert(func0(array4, sizeof(array4) / sizeof(array4[0])) == 12);
	leaq	-48(%rbp), %rax	#, tmp100
	movl	$4, %esi	#,
	movq	%rax, %rdi	# tmp100,
	call	func0	#
# problem86.c:25:     assert(func0(array4, sizeof(array4) / sizeof(array4[0])) == 12);
	cmpl	$12, %eax	#, _4
	je	.L10	#,
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp101
	movq	%rax, %rcx	# tmp101,
	movl	$25, %edx	#,
	leaq	.LC0(%rip), %rax	#, tmp102
	movq	%rax, %rsi	# tmp102,
	leaq	.LC4(%rip), %rax	#, tmp103
	movq	%rax, %rdi	# tmp103,
	call	__assert_fail@PLT	#
.L10:
# problem86.c:27:     return 0;
	movl	$0, %eax	#, _30
# problem86.c:28: }
	movq	-8(%rbp), %rdx	# D.3232, tmp106
	subq	%fs:40, %rdx	# MEM[(<address-space-1> long unsigned int *)40B], tmp106
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
