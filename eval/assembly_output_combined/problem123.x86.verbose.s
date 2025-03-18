	.file	"problem123.c"
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
	movq	%rdi, -24(%rbp)	# arr, arr
	movl	%esi, -28(%rbp)	# k, k
# problem123.c:4:     int sum = 0;
	movl	$0, -8(%rbp)	#, sum
# problem123.c:5:     for (int i = 0; i < k; i++)
	movl	$0, -4(%rbp)	#, i
# problem123.c:5:     for (int i = 0; i < k; i++)
	jmp	.L2	#
.L4:
# problem123.c:6:         if (arr[i] >= -99 && arr[i] <= 99)
	movl	-4(%rbp), %eax	# i, tmp96
	cltq
	leaq	0(,%rax,4), %rdx	#, _2
	movq	-24(%rbp), %rax	# arr, tmp97
	addq	%rdx, %rax	# _2, _3
	movl	(%rax), %eax	# *_3, _4
# problem123.c:6:         if (arr[i] >= -99 && arr[i] <= 99)
	cmpl	$-99, %eax	#, _4
	jl	.L3	#,
# problem123.c:6:         if (arr[i] >= -99 && arr[i] <= 99)
	movl	-4(%rbp), %eax	# i, tmp98
	cltq
	leaq	0(,%rax,4), %rdx	#, _6
	movq	-24(%rbp), %rax	# arr, tmp99
	addq	%rdx, %rax	# _6, _7
	movl	(%rax), %eax	# *_7, _8
# problem123.c:6:         if (arr[i] >= -99 && arr[i] <= 99)
	cmpl	$99, %eax	#, _8
	jg	.L3	#,
# problem123.c:7:             sum += arr[i];
	movl	-4(%rbp), %eax	# i, tmp100
	cltq
	leaq	0(,%rax,4), %rdx	#, _10
	movq	-24(%rbp), %rax	# arr, tmp101
	addq	%rdx, %rax	# _10, _11
	movl	(%rax), %eax	# *_11, _12
# problem123.c:7:             sum += arr[i];
	addl	%eax, -8(%rbp)	# _12, sum
.L3:
# problem123.c:5:     for (int i = 0; i < k; i++)
	addl	$1, -4(%rbp)	#, i
.L2:
# problem123.c:5:     for (int i = 0; i < k; i++)
	movl	-4(%rbp), %eax	# i, tmp102
	cmpl	-28(%rbp), %eax	# k, tmp102
	jl	.L4	#,
# problem123.c:8:     return sum;
	movl	-8(%rbp), %eax	# sum, _19
# problem123.c:9: }
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE0:
	.size	func0, .-func0
	.section	.rodata
.LC0:
	.string	"problem123.c"
.LC1:
	.string	"func0(test1, 3) == -4"
.LC2:
	.string	"func0(test2, 2) == 0"
.LC3:
	.string	"func0(test3, 4) == 125"
.LC4:
	.string	"func0(test4, 4) == 24"
.LC5:
	.string	"func0(test5, 1) == 1"
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
	subq	$192, %rsp	#,
# problem123.c:15: int main() {
	movq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp110
	movq	%rax, -8(%rbp)	# tmp110, D.3238
	xorl	%eax, %eax	# tmp110
# problem123.c:16:     int test1[] = {1, -2, -3, 41, 57, 76, 87, 88, 99};
	movl	$1, -144(%rbp)	#, test1[0]
	movl	$-2, -140(%rbp)	#, test1[1]
	movl	$-3, -136(%rbp)	#, test1[2]
	movl	$41, -132(%rbp)	#, test1[3]
	movl	$57, -128(%rbp)	#, test1[4]
	movl	$76, -124(%rbp)	#, test1[5]
	movl	$87, -120(%rbp)	#, test1[6]
	movl	$88, -116(%rbp)	#, test1[7]
	movl	$99, -112(%rbp)	#, test1[8]
# problem123.c:17:     assert(func0(test1, 3) == -4);
	leaq	-144(%rbp), %rax	#, tmp89
	movl	$3, %esi	#,
	movq	%rax, %rdi	# tmp89,
	call	func0	#
# problem123.c:17:     assert(func0(test1, 3) == -4);
	cmpl	$-4, %eax	#, _1
	je	.L7	#,
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp90
	movq	%rax, %rcx	# tmp90,
	movl	$17, %edx	#,
	leaq	.LC0(%rip), %rax	#, tmp91
	movq	%rax, %rsi	# tmp91,
	leaq	.LC1(%rip), %rax	#, tmp92
	movq	%rax, %rdi	# tmp92,
	call	__assert_fail@PLT	#
.L7:
# problem123.c:19:     int test2[] = {111, 121, 3, 4000, 5, 6};
	movl	$111, -176(%rbp)	#, test2[0]
	movl	$121, -172(%rbp)	#, test2[1]
	movl	$3, -168(%rbp)	#, test2[2]
	movl	$4000, -164(%rbp)	#, test2[3]
	movl	$5, -160(%rbp)	#, test2[4]
	movl	$6, -156(%rbp)	#, test2[5]
# problem123.c:20:     assert(func0(test2, 2) == 0);
	leaq	-176(%rbp), %rax	#, tmp93
	movl	$2, %esi	#,
	movq	%rax, %rdi	# tmp93,
	call	func0	#
# problem123.c:20:     assert(func0(test2, 2) == 0);
	testl	%eax, %eax	# _2
	je	.L8	#,
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp94
	movq	%rax, %rcx	# tmp94,
	movl	$20, %edx	#,
	leaq	.LC0(%rip), %rax	#, tmp95
	movq	%rax, %rsi	# tmp95,
	leaq	.LC2(%rip), %rax	#, tmp96
	movq	%rax, %rdi	# tmp96,
	call	__assert_fail@PLT	#
.L8:
# problem123.c:22:     int test3[] = {11, 21, 3, 90, 5, 6, 7, 8, 9};
	movl	$11, -96(%rbp)	#, test3[0]
	movl	$21, -92(%rbp)	#, test3[1]
	movl	$3, -88(%rbp)	#, test3[2]
	movl	$90, -84(%rbp)	#, test3[3]
	movl	$5, -80(%rbp)	#, test3[4]
	movl	$6, -76(%rbp)	#, test3[5]
	movl	$7, -72(%rbp)	#, test3[6]
	movl	$8, -68(%rbp)	#, test3[7]
	movl	$9, -64(%rbp)	#, test3[8]
# problem123.c:23:     assert(func0(test3, 4) == 125);
	leaq	-96(%rbp), %rax	#, tmp97
	movl	$4, %esi	#,
	movq	%rax, %rdi	# tmp97,
	call	func0	#
# problem123.c:23:     assert(func0(test3, 4) == 125);
	cmpl	$125, %eax	#, _3
	je	.L9	#,
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp98
	movq	%rax, %rcx	# tmp98,
	movl	$23, %edx	#,
	leaq	.LC0(%rip), %rax	#, tmp99
	movq	%rax, %rsi	# tmp99,
	leaq	.LC3(%rip), %rax	#, tmp100
	movq	%rax, %rdi	# tmp100,
	call	__assert_fail@PLT	#
.L9:
# problem123.c:25:     int test4[] = {111, 21, 3, 4000, 5, 6, 7, 8, 9};
	movl	$111, -48(%rbp)	#, test4[0]
	movl	$21, -44(%rbp)	#, test4[1]
	movl	$3, -40(%rbp)	#, test4[2]
	movl	$4000, -36(%rbp)	#, test4[3]
	movl	$5, -32(%rbp)	#, test4[4]
	movl	$6, -28(%rbp)	#, test4[5]
	movl	$7, -24(%rbp)	#, test4[6]
	movl	$8, -20(%rbp)	#, test4[7]
	movl	$9, -16(%rbp)	#, test4[8]
# problem123.c:26:     assert(func0(test4, 4) == 24);
	leaq	-48(%rbp), %rax	#, tmp101
	movl	$4, %esi	#,
	movq	%rax, %rdi	# tmp101,
	call	func0	#
# problem123.c:26:     assert(func0(test4, 4) == 24);
	cmpl	$24, %eax	#, _4
	je	.L10	#,
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp102
	movq	%rax, %rcx	# tmp102,
	movl	$26, %edx	#,
	leaq	.LC0(%rip), %rax	#, tmp103
	movq	%rax, %rsi	# tmp103,
	leaq	.LC4(%rip), %rax	#, tmp104
	movq	%rax, %rdi	# tmp104,
	call	__assert_fail@PLT	#
.L10:
# problem123.c:28:     int test5[] = {1};
	movl	$1, -180(%rbp)	#, test5[0]
# problem123.c:29:     assert(func0(test5, 1) == 1);
	leaq	-180(%rbp), %rax	#, tmp105
	movl	$1, %esi	#,
	movq	%rax, %rdi	# tmp105,
	call	func0	#
# problem123.c:29:     assert(func0(test5, 1) == 1);
	cmpl	$1, %eax	#, _5
	je	.L11	#,
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp106
	movq	%rax, %rcx	# tmp106,
	movl	$29, %edx	#,
	leaq	.LC0(%rip), %rax	#, tmp107
	movq	%rax, %rsi	# tmp107,
	leaq	.LC5(%rip), %rax	#, tmp108
	movq	%rax, %rdi	# tmp108,
	call	__assert_fail@PLT	#
.L11:
# problem123.c:31:     return 0;
	movl	$0, %eax	#, _51
# problem123.c:32: }
	movq	-8(%rbp), %rdx	# D.3238, tmp111
	subq	%fs:40, %rdx	# MEM[(<address-space-1> long unsigned int *)40B], tmp111
	je	.L13	#,
	call	__stack_chk_fail@PLT	#
.L13:
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
