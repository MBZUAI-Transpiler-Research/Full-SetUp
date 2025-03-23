	.file	"problem44.c"
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
# problem44.c:5:     for (int i = 0; i < size; i++)
	movl	$0, -8(%rbp)	#, i
# problem44.c:5:     for (int i = 0; i < size; i++)
	jmp	.L2	#
.L7:
# problem44.c:6:         for (int j = i + 1; j < size; j++)
	movl	-8(%rbp), %eax	# i, tmp96
	addl	$1, %eax	#, tmp95
	movl	%eax, -4(%rbp)	# tmp95, j
# problem44.c:6:         for (int j = i + 1; j < size; j++)
	jmp	.L3	#
.L6:
# problem44.c:7:             if (l[i] + l[j] == 0) return true;
	movl	-8(%rbp), %eax	# i, tmp97
	cltq
	leaq	0(,%rax,4), %rdx	#, _2
	movq	-24(%rbp), %rax	# l, tmp98
	addq	%rdx, %rax	# _2, _3
	movl	(%rax), %edx	# *_3, _4
# problem44.c:7:             if (l[i] + l[j] == 0) return true;
	movl	-4(%rbp), %eax	# j, tmp99
	cltq
	leaq	0(,%rax,4), %rcx	#, _6
	movq	-24(%rbp), %rax	# l, tmp100
	addq	%rcx, %rax	# _6, _7
	movl	(%rax), %eax	# *_7, _8
# problem44.c:7:             if (l[i] + l[j] == 0) return true;
	addl	%edx, %eax	# _4, _9
# problem44.c:7:             if (l[i] + l[j] == 0) return true;
	testl	%eax, %eax	# _9
	jne	.L4	#,
# problem44.c:7:             if (l[i] + l[j] == 0) return true;
	movl	$1, %eax	#, _12
	jmp	.L5	#
.L4:
# problem44.c:6:         for (int j = i + 1; j < size; j++)
	addl	$1, -4(%rbp)	#, j
.L3:
# problem44.c:6:         for (int j = i + 1; j < size; j++)
	movl	-4(%rbp), %eax	# j, tmp101
	cmpl	-28(%rbp), %eax	# size, tmp101
	jl	.L6	#,
# problem44.c:5:     for (int i = 0; i < size; i++)
	addl	$1, -8(%rbp)	#, i
.L2:
# problem44.c:5:     for (int i = 0; i < size; i++)
	movl	-8(%rbp), %eax	# i, tmp102
	cmpl	-28(%rbp), %eax	# size, tmp102
	jl	.L7	#,
# problem44.c:8:     return false;
	movl	$0, %eax	#, _12
.L5:
# problem44.c:9: }
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE0:
	.size	func0, .-func0
	.section	.rodata
.LC0:
	.string	"problem44.c"
.LC1:
	.string	"func0(test1, 4) == false"
.LC2:
	.string	"func0(test2, 4) == false"
.LC3:
	.string	"func0(test3, 4) == false"
.LC4:
	.string	"func0(test4, 6) == true"
.LC5:
	.string	"func0(test5, 1) == false"
.LC6:
	.string	"func0(test6, 6) == true"
.LC7:
	.string	"func0(test7, 6) == true"
.LC8:
	.string	"func0(test8, 6) == false"
.LC9:
	.string	"func0(test9, 6) == false"
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
	subq	$224, %rsp	#,
# problem44.c:17: int main() {
	movq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp136
	movq	%rax, -8(%rbp)	# tmp136, D.2426
	xorl	%eax, %eax	# tmp136
# problem44.c:18:     int test1[] = {1, 3, 5, 0};
	movl	$1, -208(%rbp)	#, test1[0]
	movl	$3, -204(%rbp)	#, test1[1]
	movl	$5, -200(%rbp)	#, test1[2]
	movl	$0, -196(%rbp)	#, test1[3]
# problem44.c:19:     assert(func0(test1, 4) == false);
	leaq	-208(%rbp), %rax	#, tmp99
	movl	$4, %esi	#,
	movq	%rax, %rdi	# tmp99,
	call	func0	#
	xorl	$1, %eax	#, _2
	testb	%al, %al	# _2
	jne	.L9	#,
# problem44.c:19:     assert(func0(test1, 4) == false);
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp100
	movq	%rax, %rcx	# tmp100,
	movl	$19, %edx	#,
	leaq	.LC0(%rip), %rax	#, tmp101
	movq	%rax, %rsi	# tmp101,
	leaq	.LC1(%rip), %rax	#, tmp102
	movq	%rax, %rdi	# tmp102,
	call	__assert_fail@PLT	#
.L9:
# problem44.c:21:     int test2[] = {1, 3, -2, 1};
	movl	$1, -192(%rbp)	#, test2[0]
	movl	$3, -188(%rbp)	#, test2[1]
	movl	$-2, -184(%rbp)	#, test2[2]
	movl	$1, -180(%rbp)	#, test2[3]
# problem44.c:22:     assert(func0(test2, 4) == false);
	leaq	-192(%rbp), %rax	#, tmp103
	movl	$4, %esi	#,
	movq	%rax, %rdi	# tmp103,
	call	func0	#
	xorl	$1, %eax	#, _4
	testb	%al, %al	# _4
	jne	.L10	#,
# problem44.c:22:     assert(func0(test2, 4) == false);
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp104
	movq	%rax, %rcx	# tmp104,
	movl	$22, %edx	#,
	leaq	.LC0(%rip), %rax	#, tmp105
	movq	%rax, %rsi	# tmp105,
	leaq	.LC2(%rip), %rax	#, tmp106
	movq	%rax, %rdi	# tmp106,
	call	__assert_fail@PLT	#
.L10:
# problem44.c:24:     int test3[] = {1, 2, 3, 7};
	movl	$1, -176(%rbp)	#, test3[0]
	movl	$2, -172(%rbp)	#, test3[1]
	movl	$3, -168(%rbp)	#, test3[2]
	movl	$7, -164(%rbp)	#, test3[3]
# problem44.c:25:     assert(func0(test3, 4) == false);
	leaq	-176(%rbp), %rax	#, tmp107
	movl	$4, %esi	#,
	movq	%rax, %rdi	# tmp107,
	call	func0	#
	xorl	$1, %eax	#, _6
	testb	%al, %al	# _6
	jne	.L11	#,
# problem44.c:25:     assert(func0(test3, 4) == false);
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp108
	movq	%rax, %rcx	# tmp108,
	movl	$25, %edx	#,
	leaq	.LC0(%rip), %rax	#, tmp109
	movq	%rax, %rsi	# tmp109,
	leaq	.LC3(%rip), %rax	#, tmp110
	movq	%rax, %rdi	# tmp110,
	call	__assert_fail@PLT	#
.L11:
# problem44.c:27:     int test4[] = {2, 4, -5, 3, 5, 7};
	movl	$2, -160(%rbp)	#, test4[0]
	movl	$4, -156(%rbp)	#, test4[1]
	movl	$-5, -152(%rbp)	#, test4[2]
	movl	$3, -148(%rbp)	#, test4[3]
	movl	$5, -144(%rbp)	#, test4[4]
	movl	$7, -140(%rbp)	#, test4[5]
# problem44.c:28:     assert(func0(test4, 6) == true);
	leaq	-160(%rbp), %rax	#, tmp111
	movl	$6, %esi	#,
	movq	%rax, %rdi	# tmp111,
	call	func0	#
	testb	%al, %al	# _7
	jne	.L12	#,
# problem44.c:28:     assert(func0(test4, 6) == true);
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp112
	movq	%rax, %rcx	# tmp112,
	movl	$28, %edx	#,
	leaq	.LC0(%rip), %rax	#, tmp113
	movq	%rax, %rsi	# tmp113,
	leaq	.LC4(%rip), %rax	#, tmp114
	movq	%rax, %rdi	# tmp114,
	call	__assert_fail@PLT	#
.L12:
# problem44.c:30:     int test5[] = {1};
	movl	$1, -212(%rbp)	#, test5[0]
# problem44.c:31:     assert(func0(test5, 1) == false);
	leaq	-212(%rbp), %rax	#, tmp115
	movl	$1, %esi	#,
	movq	%rax, %rdi	# tmp115,
	call	func0	#
	xorl	$1, %eax	#, _9
	testb	%al, %al	# _9
	jne	.L13	#,
# problem44.c:31:     assert(func0(test5, 1) == false);
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp116
	movq	%rax, %rcx	# tmp116,
	movl	$31, %edx	#,
	leaq	.LC0(%rip), %rax	#, tmp117
	movq	%rax, %rsi	# tmp117,
	leaq	.LC5(%rip), %rax	#, tmp118
	movq	%rax, %rdi	# tmp118,
	call	__assert_fail@PLT	#
.L13:
# problem44.c:33:     int test6[] = {-3, 9, -1, 3, 2, 30};
	movl	$-3, -128(%rbp)	#, test6[0]
	movl	$9, -124(%rbp)	#, test6[1]
	movl	$-1, -120(%rbp)	#, test6[2]
	movl	$3, -116(%rbp)	#, test6[3]
	movl	$2, -112(%rbp)	#, test6[4]
	movl	$30, -108(%rbp)	#, test6[5]
# problem44.c:34:     assert(func0(test6, 6) == true);
	leaq	-128(%rbp), %rax	#, tmp119
	movl	$6, %esi	#,
	movq	%rax, %rdi	# tmp119,
	call	func0	#
	testb	%al, %al	# _10
	jne	.L14	#,
# problem44.c:34:     assert(func0(test6, 6) == true);
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp120
	movq	%rax, %rcx	# tmp120,
	movl	$34, %edx	#,
	leaq	.LC0(%rip), %rax	#, tmp121
	movq	%rax, %rsi	# tmp121,
	leaq	.LC6(%rip), %rax	#, tmp122
	movq	%rax, %rdi	# tmp122,
	call	__assert_fail@PLT	#
.L14:
# problem44.c:36:     int test7[] = {-3, 9, -1, 3, 2, 31};
	movl	$-3, -96(%rbp)	#, test7[0]
	movl	$9, -92(%rbp)	#, test7[1]
	movl	$-1, -88(%rbp)	#, test7[2]
	movl	$3, -84(%rbp)	#, test7[3]
	movl	$2, -80(%rbp)	#, test7[4]
	movl	$31, -76(%rbp)	#, test7[5]
# problem44.c:37:     assert(func0(test7, 6) == true);
	leaq	-96(%rbp), %rax	#, tmp123
	movl	$6, %esi	#,
	movq	%rax, %rdi	# tmp123,
	call	func0	#
	testb	%al, %al	# _11
	jne	.L15	#,
# problem44.c:37:     assert(func0(test7, 6) == true);
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp124
	movq	%rax, %rcx	# tmp124,
	movl	$37, %edx	#,
	leaq	.LC0(%rip), %rax	#, tmp125
	movq	%rax, %rsi	# tmp125,
	leaq	.LC7(%rip), %rax	#, tmp126
	movq	%rax, %rdi	# tmp126,
	call	__assert_fail@PLT	#
.L15:
# problem44.c:39:     int test8[] = {-3, 9, -1, 4, 2, 30};
	movl	$-3, -64(%rbp)	#, test8[0]
	movl	$9, -60(%rbp)	#, test8[1]
	movl	$-1, -56(%rbp)	#, test8[2]
	movl	$4, -52(%rbp)	#, test8[3]
	movl	$2, -48(%rbp)	#, test8[4]
	movl	$30, -44(%rbp)	#, test8[5]
# problem44.c:40:     assert(func0(test8, 6) == false);
	leaq	-64(%rbp), %rax	#, tmp127
	movl	$6, %esi	#,
	movq	%rax, %rdi	# tmp127,
	call	func0	#
	xorl	$1, %eax	#, _13
	testb	%al, %al	# _13
	jne	.L16	#,
# problem44.c:40:     assert(func0(test8, 6) == false);
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp128
	movq	%rax, %rcx	# tmp128,
	movl	$40, %edx	#,
	leaq	.LC0(%rip), %rax	#, tmp129
	movq	%rax, %rsi	# tmp129,
	leaq	.LC8(%rip), %rax	#, tmp130
	movq	%rax, %rdi	# tmp130,
	call	__assert_fail@PLT	#
.L16:
# problem44.c:42:     int test9[] = {-3, 9, -1, 4, 2, 31};
	movl	$-3, -32(%rbp)	#, test9[0]
	movl	$9, -28(%rbp)	#, test9[1]
	movl	$-1, -24(%rbp)	#, test9[2]
	movl	$4, -20(%rbp)	#, test9[3]
	movl	$2, -16(%rbp)	#, test9[4]
	movl	$31, -12(%rbp)	#, test9[5]
# problem44.c:43:     assert(func0(test9, 6) == false);
	leaq	-32(%rbp), %rax	#, tmp131
	movl	$6, %esi	#,
	movq	%rax, %rdi	# tmp131,
	call	func0	#
	xorl	$1, %eax	#, _15
	testb	%al, %al	# _15
	jne	.L17	#,
# problem44.c:43:     assert(func0(test9, 6) == false);
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp132
	movq	%rax, %rcx	# tmp132,
	movl	$43, %edx	#,
	leaq	.LC0(%rip), %rax	#, tmp133
	movq	%rax, %rsi	# tmp133,
	leaq	.LC9(%rip), %rax	#, tmp134
	movq	%rax, %rdi	# tmp134,
	call	__assert_fail@PLT	#
.L17:
# problem44.c:45:     return 0;
	movl	$0, %eax	#, _78
# problem44.c:46: }
	movq	-8(%rbp), %rdx	# D.2426, tmp137
	subq	%fs:40, %rdx	# MEM[(<address-space-1> long unsigned int *)40B], tmp137
	je	.L19	#,
	call	__stack_chk_fail@PLT	#
.L19:
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
