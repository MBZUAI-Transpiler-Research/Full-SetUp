	.file	"problem101.c"
# GNU C17 (Ubuntu 13.3.0-6ubuntu2~24.04) version 13.3.0 (x86_64-linux-gnu)
#	compiled by GNU C version 13.3.0, GMP version 6.3.0, MPFR version 4.2.1, MPC version 1.3.1, isl version isl-0.26-GMP

# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed: -mtune=generic -march=x86-64 -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection -fcf-protection
	.text
	.globl	func0
	.type	func0, @function
func0:
.LFB6:
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movl	%edi, -20(%rbp)	# n, n
# problem101.c:5:     int* out = (int*)malloc(n * sizeof(int));
	movl	-20(%rbp), %eax	# n, tmp95
	cltq
	salq	$2, %rax	#, _2
	movq	%rax, %rdi	# _2,
	call	malloc@PLT	#
	movq	%rax, -8(%rbp)	# tmp96, out
# problem101.c:6:     *out = n;
	movq	-8(%rbp), %rax	# out, tmp97
	movl	-20(%rbp), %edx	# n, tmp98
	movl	%edx, (%rax)	# tmp98, *out_17
# problem101.c:7:     for (int i = 1; i < n; i++)
	movl	$1, -12(%rbp)	#, i
# problem101.c:7:     for (int i = 1; i < n; i++)
	jmp	.L2	#
.L3:
# problem101.c:8:         *(out + i) = *(out + i - 1) + 2;
	movl	-12(%rbp), %eax	# i, tmp99
	cltq
	salq	$2, %rax	#, _4
# problem101.c:8:         *(out + i) = *(out + i - 1) + 2;
	leaq	-4(%rax), %rdx	#, _5
	movq	-8(%rbp), %rax	# out, tmp100
	addq	%rdx, %rax	# _5, _6
# problem101.c:8:         *(out + i) = *(out + i - 1) + 2;
	movl	(%rax), %edx	# *_6, _7
# problem101.c:8:         *(out + i) = *(out + i - 1) + 2;
	movl	-12(%rbp), %eax	# i, tmp101
	cltq
	leaq	0(,%rax,4), %rcx	#, _9
	movq	-8(%rbp), %rax	# out, tmp102
	addq	%rcx, %rax	# _9, _10
# problem101.c:8:         *(out + i) = *(out + i - 1) + 2;
	addl	$2, %edx	#, _11
# problem101.c:8:         *(out + i) = *(out + i - 1) + 2;
	movl	%edx, (%rax)	# _11, *_10
# problem101.c:7:     for (int i = 1; i < n; i++)
	addl	$1, -12(%rbp)	#, i
.L2:
# problem101.c:7:     for (int i = 1; i < n; i++)
	movl	-12(%rbp), %eax	# i, tmp103
	cmpl	-20(%rbp), %eax	# n, tmp103
	jl	.L3	#,
# problem101.c:9:     return out;
	movq	-8(%rbp), %rax	# out, _20
# problem101.c:10: }
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE6:
	.size	func0, .-func0
	.section	.rodata
.LC0:
	.string	"problem101.c"
.LC1:
	.string	"result[i] == test1[i]"
.LC2:
	.string	"result[i] == test2[i]"
.LC3:
	.string	"result[i] == test3[i]"
.LC4:
	.string	"result[i] == test4[i]"
.LC5:
	.string	"result[i] == test5[i]"
	.text
	.globl	main
	.type	main, @function
main:
.LFB7:
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$176, %rsp	#,
# problem101.c:18: int main() {
	movq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp155
	movq	%rax, -8(%rbp)	# tmp155, D.3783
	xorl	%eax, %eax	# tmp155
# problem101.c:20:     int test1[] = {3, 5, 7};
	movl	$3, -140(%rbp)	#, test1[0]
	movl	$5, -136(%rbp)	#, test1[1]
	movl	$7, -132(%rbp)	#, test1[2]
# problem101.c:21:     int test2[] = {4, 6, 8, 10};
	movl	$4, -128(%rbp)	#, test2[0]
	movl	$6, -124(%rbp)	#, test2[1]
	movl	$8, -120(%rbp)	#, test2[2]
	movl	$10, -116(%rbp)	#, test2[3]
# problem101.c:22:     int test3[] = {5, 7, 9, 11, 13};
	movl	$5, -112(%rbp)	#, test3[0]
	movl	$7, -108(%rbp)	#, test3[1]
	movl	$9, -104(%rbp)	#, test3[2]
	movl	$11, -100(%rbp)	#, test3[3]
	movl	$13, -96(%rbp)	#, test3[4]
# problem101.c:23:     int test4[] = {6, 8, 10, 12, 14, 16};
	movl	$6, -80(%rbp)	#, test4[0]
	movl	$8, -76(%rbp)	#, test4[1]
	movl	$10, -72(%rbp)	#, test4[2]
	movl	$12, -68(%rbp)	#, test4[3]
	movl	$14, -64(%rbp)	#, test4[4]
	movl	$16, -60(%rbp)	#, test4[5]
# problem101.c:24:     int test5[] = {8, 10, 12, 14, 16, 18, 20, 22};
	movl	$8, -48(%rbp)	#, test5[0]
	movl	$10, -44(%rbp)	#, test5[1]
	movl	$12, -40(%rbp)	#, test5[2]
	movl	$14, -36(%rbp)	#, test5[3]
	movl	$16, -32(%rbp)	#, test5[4]
	movl	$18, -28(%rbp)	#, test5[5]
	movl	$20, -24(%rbp)	#, test5[6]
	movl	$22, -20(%rbp)	#, test5[7]
# problem101.c:26:     result = func0(3);
	movl	$3, %edi	#,
	call	func0	#
	movq	%rax, -152(%rbp)	# tmp109, result
# problem101.c:27:     for (int i = 0; i < 3; i++) assert(result[i] == test1[i]);
	movl	$0, -172(%rbp)	#, i
# problem101.c:27:     for (int i = 0; i < 3; i++) assert(result[i] == test1[i]);
	jmp	.L6	#
.L8:
# problem101.c:27:     for (int i = 0; i < 3; i++) assert(result[i] == test1[i]);
	movl	-172(%rbp), %eax	# i, tmp110
	cltq
	leaq	0(,%rax,4), %rdx	#, _2
	movq	-152(%rbp), %rax	# result, tmp111
	addq	%rdx, %rax	# _2, _3
	movl	(%rax), %edx	# *_3, _4
	movl	-172(%rbp), %eax	# i, tmp113
	cltq
	movl	-140(%rbp,%rax,4), %eax	# test1[i_26], _5
	cmpl	%eax, %edx	# _5, _4
	je	.L7	#,
# problem101.c:27:     for (int i = 0; i < 3; i++) assert(result[i] == test1[i]);
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp114
	movq	%rax, %rcx	# tmp114,
	movl	$27, %edx	#,
	leaq	.LC0(%rip), %rax	#, tmp115
	movq	%rax, %rsi	# tmp115,
	leaq	.LC1(%rip), %rax	#, tmp116
	movq	%rax, %rdi	# tmp116,
	call	__assert_fail@PLT	#
.L7:
# problem101.c:27:     for (int i = 0; i < 3; i++) assert(result[i] == test1[i]);
	addl	$1, -172(%rbp)	#, i
.L6:
# problem101.c:27:     for (int i = 0; i < 3; i++) assert(result[i] == test1[i]);
	cmpl	$2, -172(%rbp)	#, i
	jle	.L8	#,
# problem101.c:28:     free(result);
	movq	-152(%rbp), %rax	# result, tmp117
	movq	%rax, %rdi	# tmp117,
	call	free@PLT	#
# problem101.c:30:     result = func0(4);
	movl	$4, %edi	#,
	call	func0	#
	movq	%rax, -152(%rbp)	# tmp118, result
# problem101.c:31:     for (int i = 0; i < 4; i++) assert(result[i] == test2[i]);
	movl	$0, -168(%rbp)	#, i
# problem101.c:31:     for (int i = 0; i < 4; i++) assert(result[i] == test2[i]);
	jmp	.L9	#
.L11:
# problem101.c:31:     for (int i = 0; i < 4; i++) assert(result[i] == test2[i]);
	movl	-168(%rbp), %eax	# i, tmp119
	cltq
	leaq	0(,%rax,4), %rdx	#, _7
	movq	-152(%rbp), %rax	# result, tmp120
	addq	%rdx, %rax	# _7, _8
	movl	(%rax), %edx	# *_8, _9
	movl	-168(%rbp), %eax	# i, tmp122
	cltq
	movl	-128(%rbp,%rax,4), %eax	# test2[i_27], _10
	cmpl	%eax, %edx	# _10, _9
	je	.L10	#,
# problem101.c:31:     for (int i = 0; i < 4; i++) assert(result[i] == test2[i]);
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp123
	movq	%rax, %rcx	# tmp123,
	movl	$31, %edx	#,
	leaq	.LC0(%rip), %rax	#, tmp124
	movq	%rax, %rsi	# tmp124,
	leaq	.LC2(%rip), %rax	#, tmp125
	movq	%rax, %rdi	# tmp125,
	call	__assert_fail@PLT	#
.L10:
# problem101.c:31:     for (int i = 0; i < 4; i++) assert(result[i] == test2[i]);
	addl	$1, -168(%rbp)	#, i
.L9:
# problem101.c:31:     for (int i = 0; i < 4; i++) assert(result[i] == test2[i]);
	cmpl	$3, -168(%rbp)	#, i
	jle	.L11	#,
# problem101.c:32:     free(result);
	movq	-152(%rbp), %rax	# result, tmp126
	movq	%rax, %rdi	# tmp126,
	call	free@PLT	#
# problem101.c:34:     result = func0(5);
	movl	$5, %edi	#,
	call	func0	#
	movq	%rax, -152(%rbp)	# tmp127, result
# problem101.c:35:     for (int i = 0; i < 5; i++) assert(result[i] == test3[i]);
	movl	$0, -164(%rbp)	#, i
# problem101.c:35:     for (int i = 0; i < 5; i++) assert(result[i] == test3[i]);
	jmp	.L12	#
.L14:
# problem101.c:35:     for (int i = 0; i < 5; i++) assert(result[i] == test3[i]);
	movl	-164(%rbp), %eax	# i, tmp128
	cltq
	leaq	0(,%rax,4), %rdx	#, _12
	movq	-152(%rbp), %rax	# result, tmp129
	addq	%rdx, %rax	# _12, _13
	movl	(%rax), %edx	# *_13, _14
	movl	-164(%rbp), %eax	# i, tmp131
	cltq
	movl	-112(%rbp,%rax,4), %eax	# test3[i_28], _15
	cmpl	%eax, %edx	# _15, _14
	je	.L13	#,
# problem101.c:35:     for (int i = 0; i < 5; i++) assert(result[i] == test3[i]);
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp132
	movq	%rax, %rcx	# tmp132,
	movl	$35, %edx	#,
	leaq	.LC0(%rip), %rax	#, tmp133
	movq	%rax, %rsi	# tmp133,
	leaq	.LC3(%rip), %rax	#, tmp134
	movq	%rax, %rdi	# tmp134,
	call	__assert_fail@PLT	#
.L13:
# problem101.c:35:     for (int i = 0; i < 5; i++) assert(result[i] == test3[i]);
	addl	$1, -164(%rbp)	#, i
.L12:
# problem101.c:35:     for (int i = 0; i < 5; i++) assert(result[i] == test3[i]);
	cmpl	$4, -164(%rbp)	#, i
	jle	.L14	#,
# problem101.c:36:     free(result);
	movq	-152(%rbp), %rax	# result, tmp135
	movq	%rax, %rdi	# tmp135,
	call	free@PLT	#
# problem101.c:38:     result = func0(6);
	movl	$6, %edi	#,
	call	func0	#
	movq	%rax, -152(%rbp)	# tmp136, result
# problem101.c:39:     for (int i = 0; i < 6; i++) assert(result[i] == test4[i]);
	movl	$0, -160(%rbp)	#, i
# problem101.c:39:     for (int i = 0; i < 6; i++) assert(result[i] == test4[i]);
	jmp	.L15	#
.L17:
# problem101.c:39:     for (int i = 0; i < 6; i++) assert(result[i] == test4[i]);
	movl	-160(%rbp), %eax	# i, tmp137
	cltq
	leaq	0(,%rax,4), %rdx	#, _17
	movq	-152(%rbp), %rax	# result, tmp138
	addq	%rdx, %rax	# _17, _18
	movl	(%rax), %edx	# *_18, _19
	movl	-160(%rbp), %eax	# i, tmp140
	cltq
	movl	-80(%rbp,%rax,4), %eax	# test4[i_29], _20
	cmpl	%eax, %edx	# _20, _19
	je	.L16	#,
# problem101.c:39:     for (int i = 0; i < 6; i++) assert(result[i] == test4[i]);
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp141
	movq	%rax, %rcx	# tmp141,
	movl	$39, %edx	#,
	leaq	.LC0(%rip), %rax	#, tmp142
	movq	%rax, %rsi	# tmp142,
	leaq	.LC4(%rip), %rax	#, tmp143
	movq	%rax, %rdi	# tmp143,
	call	__assert_fail@PLT	#
.L16:
# problem101.c:39:     for (int i = 0; i < 6; i++) assert(result[i] == test4[i]);
	addl	$1, -160(%rbp)	#, i
.L15:
# problem101.c:39:     for (int i = 0; i < 6; i++) assert(result[i] == test4[i]);
	cmpl	$5, -160(%rbp)	#, i
	jle	.L17	#,
# problem101.c:40:     free(result);
	movq	-152(%rbp), %rax	# result, tmp144
	movq	%rax, %rdi	# tmp144,
	call	free@PLT	#
# problem101.c:42:     result = func0(8);
	movl	$8, %edi	#,
	call	func0	#
	movq	%rax, -152(%rbp)	# tmp145, result
# problem101.c:43:     for (int i = 0; i < 8; i++) assert(result[i] == test5[i]);
	movl	$0, -156(%rbp)	#, i
# problem101.c:43:     for (int i = 0; i < 8; i++) assert(result[i] == test5[i]);
	jmp	.L18	#
.L20:
# problem101.c:43:     for (int i = 0; i < 8; i++) assert(result[i] == test5[i]);
	movl	-156(%rbp), %eax	# i, tmp146
	cltq
	leaq	0(,%rax,4), %rdx	#, _22
	movq	-152(%rbp), %rax	# result, tmp147
	addq	%rdx, %rax	# _22, _23
	movl	(%rax), %edx	# *_23, _24
	movl	-156(%rbp), %eax	# i, tmp149
	cltq
	movl	-48(%rbp,%rax,4), %eax	# test5[i_30], _25
	cmpl	%eax, %edx	# _25, _24
	je	.L19	#,
# problem101.c:43:     for (int i = 0; i < 8; i++) assert(result[i] == test5[i]);
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp150
	movq	%rax, %rcx	# tmp150,
	movl	$43, %edx	#,
	leaq	.LC0(%rip), %rax	#, tmp151
	movq	%rax, %rsi	# tmp151,
	leaq	.LC5(%rip), %rax	#, tmp152
	movq	%rax, %rdi	# tmp152,
	call	__assert_fail@PLT	#
.L19:
# problem101.c:43:     for (int i = 0; i < 8; i++) assert(result[i] == test5[i]);
	addl	$1, -156(%rbp)	#, i
.L18:
# problem101.c:43:     for (int i = 0; i < 8; i++) assert(result[i] == test5[i]);
	cmpl	$7, -156(%rbp)	#, i
	jle	.L20	#,
# problem101.c:44:     free(result);
	movq	-152(%rbp), %rax	# result, tmp153
	movq	%rax, %rdi	# tmp153,
	call	free@PLT	#
# problem101.c:46:     return 0;
	movl	$0, %eax	#, _78
# problem101.c:47: }
	movq	-8(%rbp), %rdx	# D.3783, tmp156
	subq	%fs:40, %rdx	# MEM[(<address-space-1> long unsigned int *)40B], tmp156
	je	.L22	#,
	call	__stack_chk_fail@PLT	#
.L22:
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE7:
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
