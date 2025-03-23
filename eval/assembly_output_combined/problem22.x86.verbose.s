	.file	"problem22.c"
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
	movq	%rdi, -24(%rbp)	# numbers, numbers
	movl	%esi, -28(%rbp)	# size, size
# problem22.c:5:     float min = numbers[0], max = numbers[0];
	movq	-24(%rbp), %rax	# numbers, tmp106
	movss	(%rax), %xmm0	# *numbers_33(D), tmp107
	movss	%xmm0, -16(%rbp)	# tmp107, min
# problem22.c:5:     float min = numbers[0], max = numbers[0];
	movq	-24(%rbp), %rax	# numbers, tmp108
	movss	(%rax), %xmm0	# *numbers_33(D), tmp109
	movss	%xmm0, -12(%rbp)	# tmp109, max
# problem22.c:6:     for (int i = 1; i < size; i++) {
	movl	$1, -8(%rbp)	#, i
# problem22.c:6:     for (int i = 1; i < size; i++) {
	jmp	.L2	#
.L7:
# problem22.c:7:         if (numbers[i] < min) min = numbers[i];
	movl	-8(%rbp), %eax	# i, tmp110
	cltq
	leaq	0(,%rax,4), %rdx	#, _2
	movq	-24(%rbp), %rax	# numbers, tmp111
	addq	%rdx, %rax	# _2, _3
	movss	(%rax), %xmm1	# *_3, _4
# problem22.c:7:         if (numbers[i] < min) min = numbers[i];
	movss	-16(%rbp), %xmm0	# min, tmp112
	comiss	%xmm1, %xmm0	# _4, tmp112
	jbe	.L3	#,
# problem22.c:7:         if (numbers[i] < min) min = numbers[i];
	movl	-8(%rbp), %eax	# i, tmp113
	cltq
	leaq	0(,%rax,4), %rdx	#, _6
	movq	-24(%rbp), %rax	# numbers, tmp114
	addq	%rdx, %rax	# _6, _7
# problem22.c:7:         if (numbers[i] < min) min = numbers[i];
	movss	(%rax), %xmm0	# *_7, tmp115
	movss	%xmm0, -16(%rbp)	# tmp115, min
.L3:
# problem22.c:8:         if (numbers[i] > max) max = numbers[i];
	movl	-8(%rbp), %eax	# i, tmp116
	cltq
	leaq	0(,%rax,4), %rdx	#, _9
	movq	-24(%rbp), %rax	# numbers, tmp117
	addq	%rdx, %rax	# _9, _10
	movss	(%rax), %xmm0	# *_10, _11
# problem22.c:8:         if (numbers[i] > max) max = numbers[i];
	comiss	-12(%rbp), %xmm0	# max, _11
	jbe	.L5	#,
# problem22.c:8:         if (numbers[i] > max) max = numbers[i];
	movl	-8(%rbp), %eax	# i, tmp118
	cltq
	leaq	0(,%rax,4), %rdx	#, _13
	movq	-24(%rbp), %rax	# numbers, tmp119
	addq	%rdx, %rax	# _13, _14
# problem22.c:8:         if (numbers[i] > max) max = numbers[i];
	movss	(%rax), %xmm0	# *_14, tmp120
	movss	%xmm0, -12(%rbp)	# tmp120, max
.L5:
# problem22.c:6:     for (int i = 1; i < size; i++) {
	addl	$1, -8(%rbp)	#, i
.L2:
# problem22.c:6:     for (int i = 1; i < size; i++) {
	movl	-8(%rbp), %eax	# i, tmp121
	cmpl	-28(%rbp), %eax	# size, tmp121
	jl	.L7	#,
# problem22.c:10:     for (int i = 0; i < size; i++) {
	movl	$0, -4(%rbp)	#, i
# problem22.c:10:     for (int i = 0; i < size; i++) {
	jmp	.L8	#
.L9:
# problem22.c:11:         numbers[i] = (numbers[i] - min) / (max - min);
	movl	-4(%rbp), %eax	# i, tmp122
	cltq
	leaq	0(,%rax,4), %rdx	#, _16
	movq	-24(%rbp), %rax	# numbers, tmp123
	addq	%rdx, %rax	# _16, _17
	movss	(%rax), %xmm0	# *_17, _18
# problem22.c:11:         numbers[i] = (numbers[i] - min) / (max - min);
	subss	-16(%rbp), %xmm0	# min, _19
# problem22.c:11:         numbers[i] = (numbers[i] - min) / (max - min);
	movss	-12(%rbp), %xmm1	# max, tmp124
	subss	-16(%rbp), %xmm1	# min, _20
# problem22.c:11:         numbers[i] = (numbers[i] - min) / (max - min);
	movl	-4(%rbp), %eax	# i, tmp125
	cltq
	leaq	0(,%rax,4), %rdx	#, _22
	movq	-24(%rbp), %rax	# numbers, tmp126
	addq	%rdx, %rax	# _22, _23
# problem22.c:11:         numbers[i] = (numbers[i] - min) / (max - min);
	divss	%xmm1, %xmm0	# _20, _24
# problem22.c:11:         numbers[i] = (numbers[i] - min) / (max - min);
	movss	%xmm0, (%rax)	# _24, *_23
# problem22.c:10:     for (int i = 0; i < size; i++) {
	addl	$1, -4(%rbp)	#, i
.L8:
# problem22.c:10:     for (int i = 0; i < size; i++) {
	movl	-4(%rbp), %eax	# i, tmp127
	cmpl	-28(%rbp), %eax	# size, tmp127
	jl	.L9	#,
# problem22.c:13: }
	nop	
	nop	
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE0:
	.size	func0, .-func0
	.globl	issame
	.type	issame, @function
issame:
.LFB1:
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)	# a, a
	movq	%rsi, -32(%rbp)	# b, b
	movl	%edx, -36(%rbp)	# size, size
# problem22.c:21:     const float EPSILON = 1e-4;
	movss	.LC0(%rip), %xmm0	#, tmp94
	movss	%xmm0, -4(%rbp)	# tmp94, EPSILON
# problem22.c:22:     for (int i = 0; i < size; i++) {
	movl	$0, -8(%rbp)	#, i
# problem22.c:22:     for (int i = 0; i < size; i++) {
	jmp	.L13	#
.L17:
# problem22.c:23:         if (fabs(a[i] - b[i]) > EPSILON) return 0;
	movl	-8(%rbp), %eax	# i, tmp95
	cltq
	leaq	0(,%rax,4), %rdx	#, _2
	movq	-24(%rbp), %rax	# a, tmp96
	addq	%rdx, %rax	# _2, _3
	movss	(%rax), %xmm0	# *_3, _4
# problem22.c:23:         if (fabs(a[i] - b[i]) > EPSILON) return 0;
	movl	-8(%rbp), %eax	# i, tmp97
	cltq
	leaq	0(,%rax,4), %rdx	#, _6
	movq	-32(%rbp), %rax	# b, tmp98
	addq	%rdx, %rax	# _6, _7
	movss	(%rax), %xmm1	# *_7, _8
# problem22.c:23:         if (fabs(a[i] - b[i]) > EPSILON) return 0;
	subss	%xmm1, %xmm0	# _8, _9
# problem22.c:23:         if (fabs(a[i] - b[i]) > EPSILON) return 0;
	movss	.LC1(%rip), %xmm1	#, tmp99
	andps	%xmm1, %xmm0	# tmp99, _10
# problem22.c:23:         if (fabs(a[i] - b[i]) > EPSILON) return 0;
	comiss	-4(%rbp), %xmm0	# EPSILON, _10
	jbe	.L19	#,
# problem22.c:23:         if (fabs(a[i] - b[i]) > EPSILON) return 0;
	movl	$0, %eax	#, _12
	jmp	.L16	#
.L19:
# problem22.c:22:     for (int i = 0; i < size; i++) {
	addl	$1, -8(%rbp)	#, i
.L13:
# problem22.c:22:     for (int i = 0; i < size; i++) {
	movl	-8(%rbp), %eax	# i, tmp100
	cmpl	-36(%rbp), %eax	# size, tmp100
	jl	.L17	#,
# problem22.c:25:     return 1;
	movl	$1, %eax	#, _12
.L16:
# problem22.c:26: }
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE1:
	.size	issame, .-issame
	.section	.rodata
.LC6:
	.string	"problem22.c"
.LC7:
	.string	"issame(test1, expected1, 2)"
.LC9:
	.string	"issame(test2, expected2, 2)"
.LC16:
	.string	"issame(test3, expected3, 5)"
.LC17:
	.string	"issame(test4, expected4, 5)"
.LC23:
	.string	"issame(test5, expected5, 5)"
	.text
	.globl	main
	.type	main, @function
main:
.LFB2:
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$224, %rsp	#,
# problem22.c:28: int main() {
	movq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp158
	movq	%rax, -8(%rbp)	# tmp158, D.3486
	xorl	%eax, %eax	# tmp158
# problem22.c:29:     float test1[] = {2.0, 49.9};
	movss	.LC2(%rip), %xmm0	#, tmp89
	movss	%xmm0, -224(%rbp)	# tmp89, test1[0]
	movss	.LC3(%rip), %xmm0	#, tmp90
	movss	%xmm0, -220(%rbp)	# tmp90, test1[1]
# problem22.c:30:     float expected1[] = {0.0, 1.0};
	pxor	%xmm0, %xmm0	# tmp91
	movss	%xmm0, -216(%rbp)	# tmp91, expected1[0]
	movss	.LC5(%rip), %xmm0	#, tmp92
	movss	%xmm0, -212(%rbp)	# tmp92, expected1[1]
# problem22.c:31:     func0(test1, 2);
	leaq	-224(%rbp), %rax	#, tmp93
	movl	$2, %esi	#,
	movq	%rax, %rdi	# tmp93,
	call	func0	#
# problem22.c:32:     assert(issame(test1, expected1, 2));
	leaq	-216(%rbp), %rcx	#, tmp94
	leaq	-224(%rbp), %rax	#, tmp95
	movl	$2, %edx	#,
	movq	%rcx, %rsi	# tmp94,
	movq	%rax, %rdi	# tmp95,
	call	issame	#
	testl	%eax, %eax	# _1
	jne	.L21	#,
# problem22.c:32:     assert(issame(test1, expected1, 2));
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp96
	movq	%rax, %rcx	# tmp96,
	movl	$32, %edx	#,
	leaq	.LC6(%rip), %rax	#, tmp97
	movq	%rax, %rsi	# tmp97,
	leaq	.LC7(%rip), %rax	#, tmp98
	movq	%rax, %rdi	# tmp98,
	call	__assert_fail@PLT	#
.L21:
# problem22.c:34:     float test2[] = {100.0, 49.9};
	movss	.LC8(%rip), %xmm0	#, tmp99
	movss	%xmm0, -208(%rbp)	# tmp99, test2[0]
	movss	.LC3(%rip), %xmm0	#, tmp100
	movss	%xmm0, -204(%rbp)	# tmp100, test2[1]
# problem22.c:35:     float expected2[] = {1.0, 0.0};
	movss	.LC5(%rip), %xmm0	#, tmp101
	movss	%xmm0, -200(%rbp)	# tmp101, expected2[0]
	pxor	%xmm0, %xmm0	# tmp102
	movss	%xmm0, -196(%rbp)	# tmp102, expected2[1]
# problem22.c:36:     func0(test2, 2);
	leaq	-208(%rbp), %rax	#, tmp103
	movl	$2, %esi	#,
	movq	%rax, %rdi	# tmp103,
	call	func0	#
# problem22.c:37:     assert(issame(test2, expected2, 2));
	leaq	-200(%rbp), %rcx	#, tmp104
	leaq	-208(%rbp), %rax	#, tmp105
	movl	$2, %edx	#,
	movq	%rcx, %rsi	# tmp104,
	movq	%rax, %rdi	# tmp105,
	call	issame	#
	testl	%eax, %eax	# _2
	jne	.L22	#,
# problem22.c:37:     assert(issame(test2, expected2, 2));
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp106
	movq	%rax, %rcx	# tmp106,
	movl	$37, %edx	#,
	leaq	.LC6(%rip), %rax	#, tmp107
	movq	%rax, %rsi	# tmp107,
	leaq	.LC9(%rip), %rax	#, tmp108
	movq	%rax, %rdi	# tmp108,
	call	__assert_fail@PLT	#
.L22:
# problem22.c:39:     float test3[] = {1.0, 2.0, 3.0, 4.0, 5.0};
	movss	.LC5(%rip), %xmm0	#, tmp109
	movss	%xmm0, -192(%rbp)	# tmp109, test3[0]
	movss	.LC2(%rip), %xmm0	#, tmp110
	movss	%xmm0, -188(%rbp)	# tmp110, test3[1]
	movss	.LC10(%rip), %xmm0	#, tmp111
	movss	%xmm0, -184(%rbp)	# tmp111, test3[2]
	movss	.LC11(%rip), %xmm0	#, tmp112
	movss	%xmm0, -180(%rbp)	# tmp112, test3[3]
	movss	.LC12(%rip), %xmm0	#, tmp113
	movss	%xmm0, -176(%rbp)	# tmp113, test3[4]
# problem22.c:40:     float expected3[] = {0.0, 0.25, 0.5, 0.75, 1.0};
	pxor	%xmm0, %xmm0	# tmp114
	movss	%xmm0, -160(%rbp)	# tmp114, expected3[0]
	movss	.LC13(%rip), %xmm0	#, tmp115
	movss	%xmm0, -156(%rbp)	# tmp115, expected3[1]
	movss	.LC14(%rip), %xmm0	#, tmp116
	movss	%xmm0, -152(%rbp)	# tmp116, expected3[2]
	movss	.LC15(%rip), %xmm0	#, tmp117
	movss	%xmm0, -148(%rbp)	# tmp117, expected3[3]
	movss	.LC5(%rip), %xmm0	#, tmp118
	movss	%xmm0, -144(%rbp)	# tmp118, expected3[4]
# problem22.c:41:     func0(test3, 5);
	leaq	-192(%rbp), %rax	#, tmp119
	movl	$5, %esi	#,
	movq	%rax, %rdi	# tmp119,
	call	func0	#
# problem22.c:42:     assert(issame(test3, expected3, 5));
	leaq	-160(%rbp), %rcx	#, tmp120
	leaq	-192(%rbp), %rax	#, tmp121
	movl	$5, %edx	#,
	movq	%rcx, %rsi	# tmp120,
	movq	%rax, %rdi	# tmp121,
	call	issame	#
	testl	%eax, %eax	# _3
	jne	.L23	#,
# problem22.c:42:     assert(issame(test3, expected3, 5));
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp122
	movq	%rax, %rcx	# tmp122,
	movl	$42, %edx	#,
	leaq	.LC6(%rip), %rax	#, tmp123
	movq	%rax, %rsi	# tmp123,
	leaq	.LC16(%rip), %rax	#, tmp124
	movq	%rax, %rdi	# tmp124,
	call	__assert_fail@PLT	#
.L23:
# problem22.c:44:     float test4[] = {2.0, 1.0, 5.0, 3.0, 4.0};
	movss	.LC2(%rip), %xmm0	#, tmp125
	movss	%xmm0, -128(%rbp)	# tmp125, test4[0]
	movss	.LC5(%rip), %xmm0	#, tmp126
	movss	%xmm0, -124(%rbp)	# tmp126, test4[1]
	movss	.LC12(%rip), %xmm0	#, tmp127
	movss	%xmm0, -120(%rbp)	# tmp127, test4[2]
	movss	.LC10(%rip), %xmm0	#, tmp128
	movss	%xmm0, -116(%rbp)	# tmp128, test4[3]
	movss	.LC11(%rip), %xmm0	#, tmp129
	movss	%xmm0, -112(%rbp)	# tmp129, test4[4]
# problem22.c:45:     float expected4[] = {0.25, 0.0, 1.0, 0.5, 0.75};
	movss	.LC13(%rip), %xmm0	#, tmp130
	movss	%xmm0, -96(%rbp)	# tmp130, expected4[0]
	pxor	%xmm0, %xmm0	# tmp131
	movss	%xmm0, -92(%rbp)	# tmp131, expected4[1]
	movss	.LC5(%rip), %xmm0	#, tmp132
	movss	%xmm0, -88(%rbp)	# tmp132, expected4[2]
	movss	.LC14(%rip), %xmm0	#, tmp133
	movss	%xmm0, -84(%rbp)	# tmp133, expected4[3]
	movss	.LC15(%rip), %xmm0	#, tmp134
	movss	%xmm0, -80(%rbp)	# tmp134, expected4[4]
# problem22.c:46:     func0(test4, 5);
	leaq	-128(%rbp), %rax	#, tmp135
	movl	$5, %esi	#,
	movq	%rax, %rdi	# tmp135,
	call	func0	#
# problem22.c:47:     assert(issame(test4, expected4, 5));
	leaq	-96(%rbp), %rcx	#, tmp136
	leaq	-128(%rbp), %rax	#, tmp137
	movl	$5, %edx	#,
	movq	%rcx, %rsi	# tmp136,
	movq	%rax, %rdi	# tmp137,
	call	issame	#
	testl	%eax, %eax	# _4
	jne	.L24	#,
# problem22.c:47:     assert(issame(test4, expected4, 5));
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp138
	movq	%rax, %rcx	# tmp138,
	movl	$47, %edx	#,
	leaq	.LC6(%rip), %rax	#, tmp139
	movq	%rax, %rsi	# tmp139,
	leaq	.LC17(%rip), %rax	#, tmp140
	movq	%rax, %rdi	# tmp140,
	call	__assert_fail@PLT	#
.L24:
# problem22.c:49:     float test5[] = {12.0, 11.0, 15.0, 13.0, 14.0};
	movss	.LC18(%rip), %xmm0	#, tmp141
	movss	%xmm0, -64(%rbp)	# tmp141, test5[0]
	movss	.LC19(%rip), %xmm0	#, tmp142
	movss	%xmm0, -60(%rbp)	# tmp142, test5[1]
	movss	.LC20(%rip), %xmm0	#, tmp143
	movss	%xmm0, -56(%rbp)	# tmp143, test5[2]
	movss	.LC21(%rip), %xmm0	#, tmp144
	movss	%xmm0, -52(%rbp)	# tmp144, test5[3]
	movss	.LC22(%rip), %xmm0	#, tmp145
	movss	%xmm0, -48(%rbp)	# tmp145, test5[4]
# problem22.c:50:     float expected5[] = {0.25, 0.0, 1.0, 0.5, 0.75};
	movss	.LC13(%rip), %xmm0	#, tmp146
	movss	%xmm0, -32(%rbp)	# tmp146, expected5[0]
	pxor	%xmm0, %xmm0	# tmp147
	movss	%xmm0, -28(%rbp)	# tmp147, expected5[1]
	movss	.LC5(%rip), %xmm0	#, tmp148
	movss	%xmm0, -24(%rbp)	# tmp148, expected5[2]
	movss	.LC14(%rip), %xmm0	#, tmp149
	movss	%xmm0, -20(%rbp)	# tmp149, expected5[3]
	movss	.LC15(%rip), %xmm0	#, tmp150
	movss	%xmm0, -16(%rbp)	# tmp150, expected5[4]
# problem22.c:51:     func0(test5, 5);
	leaq	-64(%rbp), %rax	#, tmp151
	movl	$5, %esi	#,
	movq	%rax, %rdi	# tmp151,
	call	func0	#
# problem22.c:52:     assert(issame(test5, expected5, 5));
	leaq	-32(%rbp), %rcx	#, tmp152
	leaq	-64(%rbp), %rax	#, tmp153
	movl	$5, %edx	#,
	movq	%rcx, %rsi	# tmp152,
	movq	%rax, %rdi	# tmp153,
	call	issame	#
	testl	%eax, %eax	# _5
	jne	.L25	#,
# problem22.c:52:     assert(issame(test5, expected5, 5));
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp154
	movq	%rax, %rcx	# tmp154,
	movl	$52, %edx	#,
	leaq	.LC6(%rip), %rax	#, tmp155
	movq	%rax, %rsi	# tmp155,
	leaq	.LC23(%rip), %rax	#, tmp156
	movq	%rax, %rdi	# tmp156,
	call	__assert_fail@PLT	#
.L25:
# problem22.c:54:     return 0;
	movl	$0, %eax	#, _60
# problem22.c:55: }
	movq	-8(%rbp), %rdx	# D.3486, tmp159
	subq	%fs:40, %rdx	# MEM[(<address-space-1> long unsigned int *)40B], tmp159
	je	.L27	#,
	call	__stack_chk_fail@PLT	#
.L27:
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE2:
	.size	main, .-main
	.section	.rodata
	.type	__PRETTY_FUNCTION__.0, @object
	.size	__PRETTY_FUNCTION__.0, 5
__PRETTY_FUNCTION__.0:
	.string	"main"
	.align 4
.LC0:
	.long	953267991
	.align 16
.LC1:
	.long	2147483647
	.long	0
	.long	0
	.long	0
	.align 4
.LC2:
	.long	1073741824
	.align 4
.LC3:
	.long	1111988634
	.align 4
.LC5:
	.long	1065353216
	.align 4
.LC8:
	.long	1120403456
	.align 4
.LC10:
	.long	1077936128
	.align 4
.LC11:
	.long	1082130432
	.align 4
.LC12:
	.long	1084227584
	.align 4
.LC13:
	.long	1048576000
	.align 4
.LC14:
	.long	1056964608
	.align 4
.LC15:
	.long	1061158912
	.align 4
.LC18:
	.long	1094713344
	.align 4
.LC19:
	.long	1093664768
	.align 4
.LC20:
	.long	1097859072
	.align 4
.LC21:
	.long	1095761920
	.align 4
.LC22:
	.long	1096810496
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
