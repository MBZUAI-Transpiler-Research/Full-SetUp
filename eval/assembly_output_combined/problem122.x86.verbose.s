	.file	"problem122.c"
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
# problem122.c:4:     int sum = 0;
	movl	$0, -8(%rbp)	#, sum
# problem122.c:5:     for (int i = 0; i * 2 < size; i++)
	movl	$0, -4(%rbp)	#, i
# problem122.c:5:     for (int i = 0; i * 2 < size; i++)
	jmp	.L2	#
.L4:
# problem122.c:6:         if (lst[i * 2] % 2 == 1) sum += lst[i * 2];
	movl	-4(%rbp), %eax	# i, tmp96
	addl	%eax, %eax	# _1
	cltq
# problem122.c:6:         if (lst[i * 2] % 2 == 1) sum += lst[i * 2];
	leaq	0(,%rax,4), %rdx	#, _3
	movq	-24(%rbp), %rax	# lst, tmp97
	addq	%rdx, %rax	# _3, _4
	movl	(%rax), %edx	# *_4, _5
# problem122.c:6:         if (lst[i * 2] % 2 == 1) sum += lst[i * 2];
	movl	%edx, %eax	# _5, tmp98
	sarl	$31, %eax	#, tmp98
	shrl	$31, %eax	#, tmp99
	addl	%eax, %edx	# tmp99, tmp100
	andl	$1, %edx	#, tmp101
	subl	%eax, %edx	# tmp99, tmp102
	movl	%edx, %eax	# tmp102, _6
# problem122.c:6:         if (lst[i * 2] % 2 == 1) sum += lst[i * 2];
	cmpl	$1, %eax	#, _6
	jne	.L3	#,
# problem122.c:6:         if (lst[i * 2] % 2 == 1) sum += lst[i * 2];
	movl	-4(%rbp), %eax	# i, tmp103
	addl	%eax, %eax	# _7
	cltq
# problem122.c:6:         if (lst[i * 2] % 2 == 1) sum += lst[i * 2];
	leaq	0(,%rax,4), %rdx	#, _9
	movq	-24(%rbp), %rax	# lst, tmp104
	addq	%rdx, %rax	# _9, _10
	movl	(%rax), %eax	# *_10, _11
# problem122.c:6:         if (lst[i * 2] % 2 == 1) sum += lst[i * 2];
	addl	%eax, -8(%rbp)	# _11, sum
.L3:
# problem122.c:5:     for (int i = 0; i * 2 < size; i++)
	addl	$1, -4(%rbp)	#, i
.L2:
# problem122.c:5:     for (int i = 0; i * 2 < size; i++)
	movl	-4(%rbp), %eax	# i, tmp105
	addl	%eax, %eax	# _12
# problem122.c:5:     for (int i = 0; i * 2 < size; i++)
	cmpl	%eax, -28(%rbp)	# _12, size
	jg	.L4	#,
# problem122.c:7:     return sum;
	movl	-8(%rbp), %eax	# sum, _19
# problem122.c:8: }
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE0:
	.size	func0, .-func0
	.section	.rodata
.LC0:
	.string	"problem122.c"
.LC1:
	.string	"func0(test1, 4) == 12"
.LC2:
	.string	"func0(test2, 5) == 9"
.LC3:
	.string	"func0(test3, 4) == 0"
.LC4:
	.string	"func0(test4, 2) == 5"
.LC5:
	.string	"func0(test5, 3) == 0"
.LC6:
	.string	"func0(test6, 4) == 23"
.LC7:
	.string	"func0(test7, 4) == 3"
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
	addq	$-128, %rsp	#,
# problem122.c:14: int main() {
	movq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp120
	movq	%rax, -8(%rbp)	# tmp120, D.3244
	xorl	%eax, %eax	# tmp120
# problem122.c:15:     int test1[] = {5, 8, 7, 1};
	movl	$5, -96(%rbp)	#, test1[0]
	movl	$8, -92(%rbp)	#, test1[1]
	movl	$7, -88(%rbp)	#, test1[2]
	movl	$1, -84(%rbp)	#, test1[3]
# problem122.c:16:     assert(func0(test1, 4) == 12);
	leaq	-96(%rbp), %rax	#, tmp91
	movl	$4, %esi	#,
	movq	%rax, %rdi	# tmp91,
	call	func0	#
# problem122.c:16:     assert(func0(test1, 4) == 12);
	cmpl	$12, %eax	#, _1
	je	.L7	#,
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp92
	movq	%rax, %rcx	# tmp92,
	movl	$16, %edx	#,
	leaq	.LC0(%rip), %rax	#, tmp93
	movq	%rax, %rsi	# tmp93,
	leaq	.LC1(%rip), %rax	#, tmp94
	movq	%rax, %rdi	# tmp94,
	call	__assert_fail@PLT	#
.L7:
# problem122.c:18:     int test2[] = {3, 3, 3, 3, 3};
	movl	$3, -32(%rbp)	#, test2[0]
	movl	$3, -28(%rbp)	#, test2[1]
	movl	$3, -24(%rbp)	#, test2[2]
	movl	$3, -20(%rbp)	#, test2[3]
	movl	$3, -16(%rbp)	#, test2[4]
# problem122.c:19:     assert(func0(test2, 5) == 9);
	leaq	-32(%rbp), %rax	#, tmp95
	movl	$5, %esi	#,
	movq	%rax, %rdi	# tmp95,
	call	func0	#
# problem122.c:19:     assert(func0(test2, 5) == 9);
	cmpl	$9, %eax	#, _2
	je	.L8	#,
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp96
	movq	%rax, %rcx	# tmp96,
	movl	$19, %edx	#,
	leaq	.LC0(%rip), %rax	#, tmp97
	movq	%rax, %rsi	# tmp97,
	leaq	.LC2(%rip), %rax	#, tmp98
	movq	%rax, %rdi	# tmp98,
	call	__assert_fail@PLT	#
.L8:
# problem122.c:21:     int test3[] = {30, 13, 24, 321};
	movl	$30, -80(%rbp)	#, test3[0]
	movl	$13, -76(%rbp)	#, test3[1]
	movl	$24, -72(%rbp)	#, test3[2]
	movl	$321, -68(%rbp)	#, test3[3]
# problem122.c:22:     assert(func0(test3, 4) == 0);
	leaq	-80(%rbp), %rax	#, tmp99
	movl	$4, %esi	#,
	movq	%rax, %rdi	# tmp99,
	call	func0	#
# problem122.c:22:     assert(func0(test3, 4) == 0);
	testl	%eax, %eax	# _3
	je	.L9	#,
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp100
	movq	%rax, %rcx	# tmp100,
	movl	$22, %edx	#,
	leaq	.LC0(%rip), %rax	#, tmp101
	movq	%rax, %rsi	# tmp101,
	leaq	.LC3(%rip), %rax	#, tmp102
	movq	%rax, %rdi	# tmp102,
	call	__assert_fail@PLT	#
.L9:
# problem122.c:24:     int test4[] = {5, 9};
	movl	$5, -116(%rbp)	#, test4[0]
	movl	$9, -112(%rbp)	#, test4[1]
# problem122.c:25:     assert(func0(test4, 2) == 5);
	leaq	-116(%rbp), %rax	#, tmp103
	movl	$2, %esi	#,
	movq	%rax, %rdi	# tmp103,
	call	func0	#
# problem122.c:25:     assert(func0(test4, 2) == 5);
	cmpl	$5, %eax	#, _4
	je	.L10	#,
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp104
	movq	%rax, %rcx	# tmp104,
	movl	$25, %edx	#,
	leaq	.LC0(%rip), %rax	#, tmp105
	movq	%rax, %rsi	# tmp105,
	leaq	.LC4(%rip), %rax	#, tmp106
	movq	%rax, %rdi	# tmp106,
	call	__assert_fail@PLT	#
.L10:
# problem122.c:27:     int test5[] = {2, 4, 8};
	movl	$2, -108(%rbp)	#, test5[0]
	movl	$4, -104(%rbp)	#, test5[1]
	movl	$8, -100(%rbp)	#, test5[2]
# problem122.c:28:     assert(func0(test5, 3) == 0);
	leaq	-108(%rbp), %rax	#, tmp107
	movl	$3, %esi	#,
	movq	%rax, %rdi	# tmp107,
	call	func0	#
# problem122.c:28:     assert(func0(test5, 3) == 0);
	testl	%eax, %eax	# _5
	je	.L11	#,
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp108
	movq	%rax, %rcx	# tmp108,
	movl	$28, %edx	#,
	leaq	.LC0(%rip), %rax	#, tmp109
	movq	%rax, %rsi	# tmp109,
	leaq	.LC5(%rip), %rax	#, tmp110
	movq	%rax, %rdi	# tmp110,
	call	__assert_fail@PLT	#
.L11:
# problem122.c:30:     int test6[] = {30, 13, 23, 32};
	movl	$30, -64(%rbp)	#, test6[0]
	movl	$13, -60(%rbp)	#, test6[1]
	movl	$23, -56(%rbp)	#, test6[2]
	movl	$32, -52(%rbp)	#, test6[3]
# problem122.c:31:     assert(func0(test6, 4) == 23);
	leaq	-64(%rbp), %rax	#, tmp111
	movl	$4, %esi	#,
	movq	%rax, %rdi	# tmp111,
	call	func0	#
# problem122.c:31:     assert(func0(test6, 4) == 23);
	cmpl	$23, %eax	#, _6
	je	.L12	#,
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp112
	movq	%rax, %rcx	# tmp112,
	movl	$31, %edx	#,
	leaq	.LC0(%rip), %rax	#, tmp113
	movq	%rax, %rsi	# tmp113,
	leaq	.LC6(%rip), %rax	#, tmp114
	movq	%rax, %rdi	# tmp114,
	call	__assert_fail@PLT	#
.L12:
# problem122.c:33:     int test7[] = {3, 13, 2, 9};
	movl	$3, -48(%rbp)	#, test7[0]
	movl	$13, -44(%rbp)	#, test7[1]
	movl	$2, -40(%rbp)	#, test7[2]
	movl	$9, -36(%rbp)	#, test7[3]
# problem122.c:34:     assert(func0(test7, 4) == 3);
	leaq	-48(%rbp), %rax	#, tmp115
	movl	$4, %esi	#,
	movq	%rax, %rdi	# tmp115,
	call	func0	#
# problem122.c:34:     assert(func0(test7, 4) == 3);
	cmpl	$3, %eax	#, _7
	je	.L13	#,
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp116
	movq	%rax, %rcx	# tmp116,
	movl	$34, %edx	#,
	leaq	.LC0(%rip), %rax	#, tmp117
	movq	%rax, %rsi	# tmp117,
	leaq	.LC7(%rip), %rax	#, tmp118
	movq	%rax, %rdi	# tmp118,
	call	__assert_fail@PLT	#
.L13:
# problem122.c:36:     return 0;
	movl	$0, %eax	#, _49
# problem122.c:37: }
	movq	-8(%rbp), %rdx	# D.3244, tmp121
	subq	%fs:40, %rdx	# MEM[(<address-space-1> long unsigned int *)40B], tmp121
	je	.L15	#,
	call	__stack_chk_fail@PLT	#
.L15:
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
