	.file	"problem41.c"
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
	movq	%rdi, -24(%rbp)	# l, l
	movl	%esi, -28(%rbp)	# size, size
# problem41.c:5:     for (int i = 0; i < size; i++)
	movl	$0, -12(%rbp)	#, i
# problem41.c:5:     for (int i = 0; i < size; i++)
	jmp	.L2	#
.L9:
# problem41.c:6:         for (int j = i + 1; j < size; j++)
	movl	-12(%rbp), %eax	# i, tmp101
	addl	$1, %eax	#, tmp100
	movl	%eax, -8(%rbp)	# tmp100, j
# problem41.c:6:         for (int j = i + 1; j < size; j++)
	jmp	.L3	#
.L8:
# problem41.c:7:             for (int k = j + 1; k < size; k++)
	movl	-8(%rbp), %eax	# j, tmp105
	addl	$1, %eax	#, tmp104
	movl	%eax, -4(%rbp)	# tmp104, k
# problem41.c:7:             for (int k = j + 1; k < size; k++)
	jmp	.L4	#
.L7:
# problem41.c:8:                 if (l[i] + l[j] + l[k] == 0) return true;
	movl	-12(%rbp), %eax	# i, tmp106
	cltq
	leaq	0(,%rax,4), %rdx	#, _2
	movq	-24(%rbp), %rax	# l, tmp107
	addq	%rdx, %rax	# _2, _3
	movl	(%rax), %edx	# *_3, _4
# problem41.c:8:                 if (l[i] + l[j] + l[k] == 0) return true;
	movl	-8(%rbp), %eax	# j, tmp108
	cltq
	leaq	0(,%rax,4), %rcx	#, _6
	movq	-24(%rbp), %rax	# l, tmp109
	addq	%rcx, %rax	# _6, _7
	movl	(%rax), %eax	# *_7, _8
# problem41.c:8:                 if (l[i] + l[j] + l[k] == 0) return true;
	addl	%eax, %edx	# _8, _9
# problem41.c:8:                 if (l[i] + l[j] + l[k] == 0) return true;
	movl	-4(%rbp), %eax	# k, tmp110
	cltq
	leaq	0(,%rax,4), %rcx	#, _11
	movq	-24(%rbp), %rax	# l, tmp111
	addq	%rcx, %rax	# _11, _12
	movl	(%rax), %eax	# *_12, _13
# problem41.c:8:                 if (l[i] + l[j] + l[k] == 0) return true;
	addl	%edx, %eax	# _9, _14
# problem41.c:8:                 if (l[i] + l[j] + l[k] == 0) return true;
	testl	%eax, %eax	# _14
	jne	.L5	#,
# problem41.c:8:                 if (l[i] + l[j] + l[k] == 0) return true;
	movl	$1, %eax	#, _18
# problem41.c:8:                 if (l[i] + l[j] + l[k] == 0) return true;
	jmp	.L6	#
.L5:
# problem41.c:7:             for (int k = j + 1; k < size; k++)
	addl	$1, -4(%rbp)	#, k
.L4:
# problem41.c:7:             for (int k = j + 1; k < size; k++)
	movl	-4(%rbp), %eax	# k, tmp112
	cmpl	-28(%rbp), %eax	# size, tmp112
	jl	.L7	#,
# problem41.c:6:         for (int j = i + 1; j < size; j++)
	addl	$1, -8(%rbp)	#, j
.L3:
# problem41.c:6:         for (int j = i + 1; j < size; j++)
	movl	-8(%rbp), %eax	# j, tmp113
	cmpl	-28(%rbp), %eax	# size, tmp113
	jl	.L8	#,
# problem41.c:5:     for (int i = 0; i < size; i++)
	addl	$1, -12(%rbp)	#, i
.L2:
# problem41.c:5:     for (int i = 0; i < size; i++)
	movl	-12(%rbp), %eax	# i, tmp114
	cmpl	-28(%rbp), %eax	# size, tmp114
	jl	.L9	#,
# problem41.c:9:     return false;
	movl	$0, %eax	#, _18
.L6:
# problem41.c:10: }
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE0:
	.size	func0, .-func0
	.section	.rodata
.LC0:
	.string	"problem41.c"
.LC1:
	.string	"func0(test1, 4) == false"
.LC2:
	.string	"func0(test2, 4) == false"
.LC3:
	.string	"func0(test3, 4) == true"
.LC4:
	.string	"func0(test4, 4) == false"
.LC5:
	.string	"func0(test5, 4) == false"
.LC6:
	.string	"func0(test6, 6) == true"
.LC7:
	.string	"func0(test7, 1) == false"
.LC8:
	.string	"func0(test8, 4) == false"
.LC9:
	.string	"func0(test9, 4) == false"
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
	subq	$160, %rsp	#,
# problem41.c:18: int main() {
	movq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp137
	movq	%rax, -8(%rbp)	# tmp137, D.3261
	xorl	%eax, %eax	# tmp137
# problem41.c:19:     int test1[] = {1, 3, 5, 0};
	movl	$1, -144(%rbp)	#, test1[0]
	movl	$3, -140(%rbp)	#, test1[1]
	movl	$5, -136(%rbp)	#, test1[2]
	movl	$0, -132(%rbp)	#, test1[3]
# problem41.c:20:     assert(func0(test1, 4) == false);
	leaq	-144(%rbp), %rax	#, tmp100
	movl	$4, %esi	#,
	movq	%rax, %rdi	# tmp100,
	call	func0	#
# problem41.c:20:     assert(func0(test1, 4) == false);
	xorl	$1, %eax	#, _2
	testb	%al, %al	# _2
	jne	.L11	#,
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp101
	movq	%rax, %rcx	# tmp101,
	movl	$20, %edx	#,
	leaq	.LC0(%rip), %rax	#, tmp102
	movq	%rax, %rsi	# tmp102,
	leaq	.LC1(%rip), %rax	#, tmp103
	movq	%rax, %rdi	# tmp103,
	call	__assert_fail@PLT	#
.L11:
# problem41.c:22:     int test2[] = {1, 3, 5, -1};
	movl	$1, -128(%rbp)	#, test2[0]
	movl	$3, -124(%rbp)	#, test2[1]
	movl	$5, -120(%rbp)	#, test2[2]
	movl	$-1, -116(%rbp)	#, test2[3]
# problem41.c:23:     assert(func0(test2, 4) == false);
	leaq	-128(%rbp), %rax	#, tmp104
	movl	$4, %esi	#,
	movq	%rax, %rdi	# tmp104,
	call	func0	#
# problem41.c:23:     assert(func0(test2, 4) == false);
	xorl	$1, %eax	#, _4
	testb	%al, %al	# _4
	jne	.L12	#,
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp105
	movq	%rax, %rcx	# tmp105,
	movl	$23, %edx	#,
	leaq	.LC0(%rip), %rax	#, tmp106
	movq	%rax, %rsi	# tmp106,
	leaq	.LC2(%rip), %rax	#, tmp107
	movq	%rax, %rdi	# tmp107,
	call	__assert_fail@PLT	#
.L12:
# problem41.c:25:     int test3[] = {1, 3, -2, 1};
	movl	$1, -112(%rbp)	#, test3[0]
	movl	$3, -108(%rbp)	#, test3[1]
	movl	$-2, -104(%rbp)	#, test3[2]
	movl	$1, -100(%rbp)	#, test3[3]
# problem41.c:26:     assert(func0(test3, 4) == true);
	leaq	-112(%rbp), %rax	#, tmp108
	movl	$4, %esi	#,
	movq	%rax, %rdi	# tmp108,
	call	func0	#
# problem41.c:26:     assert(func0(test3, 4) == true);
	testb	%al, %al	# _5
	jne	.L13	#,
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp109
	movq	%rax, %rcx	# tmp109,
	movl	$26, %edx	#,
	leaq	.LC0(%rip), %rax	#, tmp110
	movq	%rax, %rsi	# tmp110,
	leaq	.LC3(%rip), %rax	#, tmp111
	movq	%rax, %rdi	# tmp111,
	call	__assert_fail@PLT	#
.L13:
# problem41.c:28:     int test4[] = {1, 2, 3, 7};
	movl	$1, -96(%rbp)	#, test4[0]
	movl	$2, -92(%rbp)	#, test4[1]
	movl	$3, -88(%rbp)	#, test4[2]
	movl	$7, -84(%rbp)	#, test4[3]
# problem41.c:29:     assert(func0(test4, 4) == false);
	leaq	-96(%rbp), %rax	#, tmp112
	movl	$4, %esi	#,
	movq	%rax, %rdi	# tmp112,
	call	func0	#
# problem41.c:29:     assert(func0(test4, 4) == false);
	xorl	$1, %eax	#, _7
	testb	%al, %al	# _7
	jne	.L14	#,
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp113
	movq	%rax, %rcx	# tmp113,
	movl	$29, %edx	#,
	leaq	.LC0(%rip), %rax	#, tmp114
	movq	%rax, %rsi	# tmp114,
	leaq	.LC4(%rip), %rax	#, tmp115
	movq	%rax, %rdi	# tmp115,
	call	__assert_fail@PLT	#
.L14:
# problem41.c:31:     int test5[] = {1, 2, 5, 7};
	movl	$1, -80(%rbp)	#, test5[0]
	movl	$2, -76(%rbp)	#, test5[1]
	movl	$5, -72(%rbp)	#, test5[2]
	movl	$7, -68(%rbp)	#, test5[3]
# problem41.c:32:     assert(func0(test5, 4) == false);
	leaq	-80(%rbp), %rax	#, tmp116
	movl	$4, %esi	#,
	movq	%rax, %rdi	# tmp116,
	call	func0	#
# problem41.c:32:     assert(func0(test5, 4) == false);
	xorl	$1, %eax	#, _9
	testb	%al, %al	# _9
	jne	.L15	#,
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp117
	movq	%rax, %rcx	# tmp117,
	movl	$32, %edx	#,
	leaq	.LC0(%rip), %rax	#, tmp118
	movq	%rax, %rsi	# tmp118,
	leaq	.LC5(%rip), %rax	#, tmp119
	movq	%rax, %rdi	# tmp119,
	call	__assert_fail@PLT	#
.L15:
# problem41.c:34:     int test6[] = {2, 4, -5, 3, 9, 7};
	movl	$2, -32(%rbp)	#, test6[0]
	movl	$4, -28(%rbp)	#, test6[1]
	movl	$-5, -24(%rbp)	#, test6[2]
	movl	$3, -20(%rbp)	#, test6[3]
	movl	$9, -16(%rbp)	#, test6[4]
	movl	$7, -12(%rbp)	#, test6[5]
# problem41.c:35:     assert(func0(test6, 6) == true);
	leaq	-32(%rbp), %rax	#, tmp120
	movl	$6, %esi	#,
	movq	%rax, %rdi	# tmp120,
	call	func0	#
# problem41.c:35:     assert(func0(test6, 6) == true);
	testb	%al, %al	# _10
	jne	.L16	#,
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp121
	movq	%rax, %rcx	# tmp121,
	movl	$35, %edx	#,
	leaq	.LC0(%rip), %rax	#, tmp122
	movq	%rax, %rsi	# tmp122,
	leaq	.LC6(%rip), %rax	#, tmp123
	movq	%rax, %rdi	# tmp123,
	call	__assert_fail@PLT	#
.L16:
# problem41.c:37:     int test7[] = {1};
	movl	$1, -148(%rbp)	#, test7[0]
# problem41.c:38:     assert(func0(test7, 1) == false);
	leaq	-148(%rbp), %rax	#, tmp124
	movl	$1, %esi	#,
	movq	%rax, %rdi	# tmp124,
	call	func0	#
# problem41.c:38:     assert(func0(test7, 1) == false);
	xorl	$1, %eax	#, _12
	testb	%al, %al	# _12
	jne	.L17	#,
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp125
	movq	%rax, %rcx	# tmp125,
	movl	$38, %edx	#,
	leaq	.LC0(%rip), %rax	#, tmp126
	movq	%rax, %rsi	# tmp126,
	leaq	.LC7(%rip), %rax	#, tmp127
	movq	%rax, %rdi	# tmp127,
	call	__assert_fail@PLT	#
.L17:
# problem41.c:40:     int test8[] = {1, 3, 5, -100};
	movl	$1, -64(%rbp)	#, test8[0]
	movl	$3, -60(%rbp)	#, test8[1]
	movl	$5, -56(%rbp)	#, test8[2]
	movl	$-100, -52(%rbp)	#, test8[3]
# problem41.c:41:     assert(func0(test8, 4) == false);
	leaq	-64(%rbp), %rax	#, tmp128
	movl	$4, %esi	#,
	movq	%rax, %rdi	# tmp128,
	call	func0	#
# problem41.c:41:     assert(func0(test8, 4) == false);
	xorl	$1, %eax	#, _14
	testb	%al, %al	# _14
	jne	.L18	#,
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp129
	movq	%rax, %rcx	# tmp129,
	movl	$41, %edx	#,
	leaq	.LC0(%rip), %rax	#, tmp130
	movq	%rax, %rsi	# tmp130,
	leaq	.LC8(%rip), %rax	#, tmp131
	movq	%rax, %rdi	# tmp131,
	call	__assert_fail@PLT	#
.L18:
# problem41.c:43:     int test9[] = {100, 3, 5, -100};
	movl	$100, -48(%rbp)	#, test9[0]
	movl	$3, -44(%rbp)	#, test9[1]
	movl	$5, -40(%rbp)	#, test9[2]
	movl	$-100, -36(%rbp)	#, test9[3]
# problem41.c:44:     assert(func0(test9, 4) == false);
	leaq	-48(%rbp), %rax	#, tmp132
	movl	$4, %esi	#,
	movq	%rax, %rdi	# tmp132,
	call	func0	#
# problem41.c:44:     assert(func0(test9, 4) == false);
	xorl	$1, %eax	#, _16
	testb	%al, %al	# _16
	jne	.L19	#,
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp133
	movq	%rax, %rcx	# tmp133,
	movl	$44, %edx	#,
	leaq	.LC0(%rip), %rax	#, tmp134
	movq	%rax, %rsi	# tmp134,
	leaq	.LC9(%rip), %rax	#, tmp135
	movq	%rax, %rdi	# tmp135,
	call	__assert_fail@PLT	#
.L19:
# problem41.c:46:     return 0;
	movl	$0, %eax	#, _71
# problem41.c:47: }
	movq	-8(%rbp), %rdx	# D.3261, tmp138
	subq	%fs:40, %rdx	# MEM[(<address-space-1> long unsigned int *)40B], tmp138
	je	.L21	#,
	call	__stack_chk_fail@PLT	#
.L21:
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
