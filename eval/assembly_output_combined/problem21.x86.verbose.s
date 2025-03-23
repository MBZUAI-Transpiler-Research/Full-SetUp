	.file	"problem21.c"
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
	movq	%rdi, -40(%rbp)	# numbers, numbers
	movl	%esi, -44(%rbp)	# size, size
	movq	%rdx, -56(%rbp)	# out, out
# problem21.c:6:     float min_diff = FLT_MAX;
	movss	.LC0(%rip), %xmm0	#, tmp108
	movss	%xmm0, -20(%rbp)	# tmp108, min_diff
# problem21.c:9:     out[0] = numbers[0];
	movq	-40(%rbp), %rax	# numbers, tmp109
	movss	(%rax), %xmm0	# *numbers_38(D), _1
# problem21.c:9:     out[0] = numbers[0];
	movq	-56(%rbp), %rax	# out, tmp110
	movss	%xmm0, (%rax)	# _1, *out_39(D)
# problem21.c:10:     out[1] = numbers[1];
	movq	-56(%rbp), %rax	# out, tmp111
	leaq	4(%rax), %rdx	#, _2
# problem21.c:10:     out[1] = numbers[1];
	movq	-40(%rbp), %rax	# numbers, tmp112
	movss	4(%rax), %xmm0	# MEM[(float *)numbers_38(D) + 4B], _3
	movss	%xmm0, (%rdx)	# _3, *_2
# problem21.c:12:     for (i = 0; i < size; i++) {
	movl	$0, -16(%rbp)	#, i
# problem21.c:12:     for (i = 0; i < size; i++) {
	jmp	.L2	#
.L7:
# problem21.c:13:         for (j = i + 1; j < size; j++) {
	movl	-16(%rbp), %eax	# i, tmp116
	addl	$1, %eax	#, tmp115
	movl	%eax, -12(%rbp)	# tmp115, j
# problem21.c:13:         for (j = i + 1; j < size; j++) {
	jmp	.L3	#
.L6:
# problem21.c:14:             float diff = fabs(numbers[i] - numbers[j]);
	movl	-16(%rbp), %eax	# i, tmp117
	cltq
	leaq	0(,%rax,4), %rdx	#, _5
	movq	-40(%rbp), %rax	# numbers, tmp118
	addq	%rdx, %rax	# _5, _6
	movss	(%rax), %xmm0	# *_6, _7
# problem21.c:14:             float diff = fabs(numbers[i] - numbers[j]);
	movl	-12(%rbp), %eax	# j, tmp119
	cltq
	leaq	0(,%rax,4), %rdx	#, _9
	movq	-40(%rbp), %rax	# numbers, tmp120
	addq	%rdx, %rax	# _9, _10
	movss	(%rax), %xmm1	# *_10, _11
# problem21.c:14:             float diff = fabs(numbers[i] - numbers[j]);
	subss	%xmm1, %xmm0	# _11, _12
# problem21.c:14:             float diff = fabs(numbers[i] - numbers[j]);
	movss	.LC1(%rip), %xmm1	#, tmp122
	andps	%xmm1, %xmm0	# tmp122, tmp121
	movss	%xmm0, -4(%rbp)	# tmp121, diff
# problem21.c:15:             if (diff < min_diff) {
	movss	-20(%rbp), %xmm0	# min_diff, tmp123
	comiss	-4(%rbp), %xmm0	# diff, tmp123
	jbe	.L4	#,
# problem21.c:16:                 min_diff = diff;
	movss	-4(%rbp), %xmm0	# diff, tmp124
	movss	%xmm0, -20(%rbp)	# tmp124, min_diff
# problem21.c:17:                 out[0] = numbers[i];
	movl	-16(%rbp), %eax	# i, tmp125
	cltq
	leaq	0(,%rax,4), %rdx	#, _14
	movq	-40(%rbp), %rax	# numbers, tmp126
	addq	%rdx, %rax	# _14, _15
	movss	(%rax), %xmm0	# *_15, _16
# problem21.c:17:                 out[0] = numbers[i];
	movq	-56(%rbp), %rax	# out, tmp127
	movss	%xmm0, (%rax)	# _16, *out_39(D)
# problem21.c:18:                 out[1] = numbers[j];
	movl	-12(%rbp), %eax	# j, tmp128
	cltq
	leaq	0(,%rax,4), %rdx	#, _18
	movq	-40(%rbp), %rax	# numbers, tmp129
	addq	%rax, %rdx	# tmp129, _19
# problem21.c:18:                 out[1] = numbers[j];
	movq	-56(%rbp), %rax	# out, tmp130
	addq	$4, %rax	#, _20
# problem21.c:18:                 out[1] = numbers[j];
	movss	(%rdx), %xmm0	# *_19, _21
# problem21.c:18:                 out[1] = numbers[j];
	movss	%xmm0, (%rax)	# _21, *_20
.L4:
# problem21.c:13:         for (j = i + 1; j < size; j++) {
	addl	$1, -12(%rbp)	#, j
.L3:
# problem21.c:13:         for (j = i + 1; j < size; j++) {
	movl	-12(%rbp), %eax	# j, tmp131
	cmpl	-44(%rbp), %eax	# size, tmp131
	jl	.L6	#,
# problem21.c:12:     for (i = 0; i < size; i++) {
	addl	$1, -16(%rbp)	#, i
.L2:
# problem21.c:12:     for (i = 0; i < size; i++) {
	movl	-16(%rbp), %eax	# i, tmp132
	cmpl	-44(%rbp), %eax	# size, tmp132
	jl	.L7	#,
# problem21.c:23:     if (out[0] > out[1]) {
	movq	-56(%rbp), %rax	# out, tmp133
	movss	(%rax), %xmm0	# *out_39(D), _22
# problem21.c:23:     if (out[0] > out[1]) {
	movq	-56(%rbp), %rax	# out, tmp134
	addq	$4, %rax	#, _23
	movss	(%rax), %xmm1	# *_23, _24
# problem21.c:23:     if (out[0] > out[1]) {
	comiss	%xmm1, %xmm0	# _24, _22
	ja	.L11	#,
# problem21.c:28: }
	jmp	.L12	#
.L11:
# problem21.c:24:         float temp = out[0];
	movq	-56(%rbp), %rax	# out, tmp135
	movss	(%rax), %xmm0	# *out_39(D), tmp136
	movss	%xmm0, -8(%rbp)	# tmp136, temp
# problem21.c:25:         out[0] = out[1];
	movq	-56(%rbp), %rax	# out, tmp137
	movss	4(%rax), %xmm0	# MEM[(float *)out_39(D) + 4B], _25
	movq	-56(%rbp), %rax	# out, tmp138
	movss	%xmm0, (%rax)	# _25, *out_39(D)
# problem21.c:26:         out[1] = temp;
	movq	-56(%rbp), %rax	# out, tmp139
	addq	$4, %rax	#, _26
# problem21.c:26:         out[1] = temp;
	movss	-8(%rbp), %xmm0	# temp, tmp140
	movss	%xmm0, (%rax)	# tmp140, *_26
.L12:
# problem21.c:28: }
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
# problem21.c:36:     const float EPSILON = 1e-4;
	movss	.LC2(%rip), %xmm0	#, tmp94
	movss	%xmm0, -4(%rbp)	# tmp94, EPSILON
# problem21.c:37:     for (int i = 0; i < size; i++) {
	movl	$0, -8(%rbp)	#, i
# problem21.c:37:     for (int i = 0; i < size; i++) {
	jmp	.L14	#
.L18:
# problem21.c:38:         if (fabs(a[i] - b[i]) > EPSILON) return 0;
	movl	-8(%rbp), %eax	# i, tmp95
	cltq
	leaq	0(,%rax,4), %rdx	#, _2
	movq	-24(%rbp), %rax	# a, tmp96
	addq	%rdx, %rax	# _2, _3
	movss	(%rax), %xmm0	# *_3, _4
# problem21.c:38:         if (fabs(a[i] - b[i]) > EPSILON) return 0;
	movl	-8(%rbp), %eax	# i, tmp97
	cltq
	leaq	0(,%rax,4), %rdx	#, _6
	movq	-32(%rbp), %rax	# b, tmp98
	addq	%rdx, %rax	# _6, _7
	movss	(%rax), %xmm1	# *_7, _8
# problem21.c:38:         if (fabs(a[i] - b[i]) > EPSILON) return 0;
	subss	%xmm1, %xmm0	# _8, _9
# problem21.c:38:         if (fabs(a[i] - b[i]) > EPSILON) return 0;
	movss	.LC1(%rip), %xmm1	#, tmp99
	andps	%xmm1, %xmm0	# tmp99, _10
# problem21.c:38:         if (fabs(a[i] - b[i]) > EPSILON) return 0;
	comiss	-4(%rbp), %xmm0	# EPSILON, _10
	jbe	.L20	#,
# problem21.c:38:         if (fabs(a[i] - b[i]) > EPSILON) return 0;
	movl	$0, %eax	#, _12
	jmp	.L17	#
.L20:
# problem21.c:37:     for (int i = 0; i < size; i++) {
	addl	$1, -8(%rbp)	#, i
.L14:
# problem21.c:37:     for (int i = 0; i < size; i++) {
	movl	-8(%rbp), %eax	# i, tmp100
	cmpl	-36(%rbp), %eax	# size, tmp100
	jl	.L18	#,
# problem21.c:40:     return 1;
	movl	$1, %eax	#, _12
.L17:
# problem21.c:41: }
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE1:
	.size	issame, .-issame
	.section	.rodata
.LC9:
	.string	"problem21.c"
.LC10:
	.string	"issame(result, expected1, 2)"
.LC12:
	.string	"issame(result, expected2, 2)"
.LC14:
	.string	"issame(result, expected3, 2)"
.LC15:
	.string	"issame(result, expected4, 2)"
.LC20:
	.string	"issame(result, expected5, 2)"
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
	subq	$208, %rsp	#,
# problem21.c:43: int main() {
	movq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp163
	movq	%rax, -8(%rbp)	# tmp163, D.3491
	xorl	%eax, %eax	# tmp163
# problem21.c:46:     float test1[] = {1.0, 2.0, 3.9, 4.0, 5.0, 2.2};
	movss	.LC3(%rip), %xmm0	#, tmp89
	movss	%xmm0, -96(%rbp)	# tmp89, test1[0]
	movss	.LC4(%rip), %xmm0	#, tmp90
	movss	%xmm0, -92(%rbp)	# tmp90, test1[1]
	movss	.LC5(%rip), %xmm0	#, tmp91
	movss	%xmm0, -88(%rbp)	# tmp91, test1[2]
	movss	.LC6(%rip), %xmm0	#, tmp92
	movss	%xmm0, -84(%rbp)	# tmp92, test1[3]
	movss	.LC7(%rip), %xmm0	#, tmp93
	movss	%xmm0, -80(%rbp)	# tmp93, test1[4]
	movss	.LC8(%rip), %xmm0	#, tmp94
	movss	%xmm0, -76(%rbp)	# tmp94, test1[5]
# problem21.c:47:     float expected1[] = {3.9, 4.0};
	movss	.LC5(%rip), %xmm0	#, tmp95
	movss	%xmm0, -200(%rbp)	# tmp95, expected1[0]
	movss	.LC6(%rip), %xmm0	#, tmp96
	movss	%xmm0, -196(%rbp)	# tmp96, expected1[1]
# problem21.c:48:     func0(test1, 6, result);
	leaq	-208(%rbp), %rdx	#, tmp97
	leaq	-96(%rbp), %rax	#, tmp98
	movl	$6, %esi	#,
	movq	%rax, %rdi	# tmp98,
	call	func0	#
# problem21.c:49:     assert(issame(result, expected1, 2));
	leaq	-200(%rbp), %rcx	#, tmp99
	leaq	-208(%rbp), %rax	#, tmp100
	movl	$2, %edx	#,
	movq	%rcx, %rsi	# tmp99,
	movq	%rax, %rdi	# tmp100,
	call	issame	#
	testl	%eax, %eax	# _1
	jne	.L22	#,
# problem21.c:49:     assert(issame(result, expected1, 2));
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp101
	movq	%rax, %rcx	# tmp101,
	movl	$49, %edx	#,
	leaq	.LC9(%rip), %rax	#, tmp102
	movq	%rax, %rsi	# tmp102,
	leaq	.LC10(%rip), %rax	#, tmp103
	movq	%rax, %rdi	# tmp103,
	call	__assert_fail@PLT	#
.L22:
# problem21.c:51:     float test2[] = {1.0, 2.0, 5.9, 4.0, 5.0};
	movss	.LC3(%rip), %xmm0	#, tmp104
	movss	%xmm0, -160(%rbp)	# tmp104, test2[0]
	movss	.LC4(%rip), %xmm0	#, tmp105
	movss	%xmm0, -156(%rbp)	# tmp105, test2[1]
	movss	.LC11(%rip), %xmm0	#, tmp106
	movss	%xmm0, -152(%rbp)	# tmp106, test2[2]
	movss	.LC6(%rip), %xmm0	#, tmp107
	movss	%xmm0, -148(%rbp)	# tmp107, test2[3]
	movss	.LC7(%rip), %xmm0	#, tmp108
	movss	%xmm0, -144(%rbp)	# tmp108, test2[4]
# problem21.c:52:     float expected2[] = {5.0, 5.9};
	movss	.LC7(%rip), %xmm0	#, tmp109
	movss	%xmm0, -192(%rbp)	# tmp109, expected2[0]
	movss	.LC11(%rip), %xmm0	#, tmp110
	movss	%xmm0, -188(%rbp)	# tmp110, expected2[1]
# problem21.c:53:     func0(test2, 5, result);
	leaq	-208(%rbp), %rdx	#, tmp111
	leaq	-160(%rbp), %rax	#, tmp112
	movl	$5, %esi	#,
	movq	%rax, %rdi	# tmp112,
	call	func0	#
# problem21.c:54:     assert(issame(result, expected2, 2));
	leaq	-192(%rbp), %rcx	#, tmp113
	leaq	-208(%rbp), %rax	#, tmp114
	movl	$2, %edx	#,
	movq	%rcx, %rsi	# tmp113,
	movq	%rax, %rdi	# tmp114,
	call	issame	#
	testl	%eax, %eax	# _2
	jne	.L23	#,
# problem21.c:54:     assert(issame(result, expected2, 2));
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp115
	movq	%rax, %rcx	# tmp115,
	movl	$54, %edx	#,
	leaq	.LC9(%rip), %rax	#, tmp116
	movq	%rax, %rsi	# tmp116,
	leaq	.LC12(%rip), %rax	#, tmp117
	movq	%rax, %rdi	# tmp117,
	call	__assert_fail@PLT	#
.L23:
# problem21.c:56:     float test3[] = {1.0, 2.0, 3.0, 4.0, 5.0, 2.2};
	movss	.LC3(%rip), %xmm0	#, tmp118
	movss	%xmm0, -64(%rbp)	# tmp118, test3[0]
	movss	.LC4(%rip), %xmm0	#, tmp119
	movss	%xmm0, -60(%rbp)	# tmp119, test3[1]
	movss	.LC13(%rip), %xmm0	#, tmp120
	movss	%xmm0, -56(%rbp)	# tmp120, test3[2]
	movss	.LC6(%rip), %xmm0	#, tmp121
	movss	%xmm0, -52(%rbp)	# tmp121, test3[3]
	movss	.LC7(%rip), %xmm0	#, tmp122
	movss	%xmm0, -48(%rbp)	# tmp122, test3[4]
	movss	.LC8(%rip), %xmm0	#, tmp123
	movss	%xmm0, -44(%rbp)	# tmp123, test3[5]
# problem21.c:57:     float expected3[] = {2.0, 2.2};
	movss	.LC4(%rip), %xmm0	#, tmp124
	movss	%xmm0, -184(%rbp)	# tmp124, expected3[0]
	movss	.LC8(%rip), %xmm0	#, tmp125
	movss	%xmm0, -180(%rbp)	# tmp125, expected3[1]
# problem21.c:58:     func0(test3, 6, result);
	leaq	-208(%rbp), %rdx	#, tmp126
	leaq	-64(%rbp), %rax	#, tmp127
	movl	$6, %esi	#,
	movq	%rax, %rdi	# tmp127,
	call	func0	#
# problem21.c:59:     assert(issame(result, expected3, 2));
	leaq	-184(%rbp), %rcx	#, tmp128
	leaq	-208(%rbp), %rax	#, tmp129
	movl	$2, %edx	#,
	movq	%rcx, %rsi	# tmp128,
	movq	%rax, %rdi	# tmp129,
	call	issame	#
	testl	%eax, %eax	# _3
	jne	.L24	#,
# problem21.c:59:     assert(issame(result, expected3, 2));
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp130
	movq	%rax, %rcx	# tmp130,
	movl	$59, %edx	#,
	leaq	.LC9(%rip), %rax	#, tmp131
	movq	%rax, %rsi	# tmp131,
	leaq	.LC14(%rip), %rax	#, tmp132
	movq	%rax, %rdi	# tmp132,
	call	__assert_fail@PLT	#
.L24:
# problem21.c:61:     float test4[] = {1.0, 2.0, 3.0, 4.0, 5.0, 2.0};
	movss	.LC3(%rip), %xmm0	#, tmp133
	movss	%xmm0, -32(%rbp)	# tmp133, test4[0]
	movss	.LC4(%rip), %xmm0	#, tmp134
	movss	%xmm0, -28(%rbp)	# tmp134, test4[1]
	movss	.LC13(%rip), %xmm0	#, tmp135
	movss	%xmm0, -24(%rbp)	# tmp135, test4[2]
	movss	.LC6(%rip), %xmm0	#, tmp136
	movss	%xmm0, -20(%rbp)	# tmp136, test4[3]
	movss	.LC7(%rip), %xmm0	#, tmp137
	movss	%xmm0, -16(%rbp)	# tmp137, test4[4]
	movss	.LC4(%rip), %xmm0	#, tmp138
	movss	%xmm0, -12(%rbp)	# tmp138, test4[5]
# problem21.c:62:     float expected4[] = {2.0, 2.0};
	movss	.LC4(%rip), %xmm0	#, tmp139
	movss	%xmm0, -176(%rbp)	# tmp139, expected4[0]
	movss	.LC4(%rip), %xmm0	#, tmp140
	movss	%xmm0, -172(%rbp)	# tmp140, expected4[1]
# problem21.c:63:     func0(test4, 6, result);
	leaq	-208(%rbp), %rdx	#, tmp141
	leaq	-32(%rbp), %rax	#, tmp142
	movl	$6, %esi	#,
	movq	%rax, %rdi	# tmp142,
	call	func0	#
# problem21.c:64:     assert(issame(result, expected4, 2));
	leaq	-176(%rbp), %rcx	#, tmp143
	leaq	-208(%rbp), %rax	#, tmp144
	movl	$2, %edx	#,
	movq	%rcx, %rsi	# tmp143,
	movq	%rax, %rdi	# tmp144,
	call	issame	#
	testl	%eax, %eax	# _4
	jne	.L25	#,
# problem21.c:64:     assert(issame(result, expected4, 2));
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp145
	movq	%rax, %rcx	# tmp145,
	movl	$64, %edx	#,
	leaq	.LC9(%rip), %rax	#, tmp146
	movq	%rax, %rsi	# tmp146,
	leaq	.LC15(%rip), %rax	#, tmp147
	movq	%rax, %rdi	# tmp147,
	call	__assert_fail@PLT	#
.L25:
# problem21.c:66:     float test5[] = {1.1, 2.2, 3.1, 4.1, 5.1};
	movss	.LC16(%rip), %xmm0	#, tmp148
	movss	%xmm0, -128(%rbp)	# tmp148, test5[0]
	movss	.LC8(%rip), %xmm0	#, tmp149
	movss	%xmm0, -124(%rbp)	# tmp149, test5[1]
	movss	.LC17(%rip), %xmm0	#, tmp150
	movss	%xmm0, -120(%rbp)	# tmp150, test5[2]
	movss	.LC18(%rip), %xmm0	#, tmp151
	movss	%xmm0, -116(%rbp)	# tmp151, test5[3]
	movss	.LC19(%rip), %xmm0	#, tmp152
	movss	%xmm0, -112(%rbp)	# tmp152, test5[4]
# problem21.c:67:     float expected5[] = {2.2, 3.1};
	movss	.LC8(%rip), %xmm0	#, tmp153
	movss	%xmm0, -168(%rbp)	# tmp153, expected5[0]
	movss	.LC17(%rip), %xmm0	#, tmp154
	movss	%xmm0, -164(%rbp)	# tmp154, expected5[1]
# problem21.c:68:     func0(test5, 5, result);
	leaq	-208(%rbp), %rdx	#, tmp155
	leaq	-128(%rbp), %rax	#, tmp156
	movl	$5, %esi	#,
	movq	%rax, %rdi	# tmp156,
	call	func0	#
# problem21.c:69:     assert(issame(result, expected5, 2));
	leaq	-168(%rbp), %rcx	#, tmp157
	leaq	-208(%rbp), %rax	#, tmp158
	movl	$2, %edx	#,
	movq	%rcx, %rsi	# tmp157,
	movq	%rax, %rdi	# tmp158,
	call	issame	#
	testl	%eax, %eax	# _5
	jne	.L26	#,
# problem21.c:69:     assert(issame(result, expected5, 2));
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp159
	movq	%rax, %rcx	# tmp159,
	movl	$69, %edx	#,
	leaq	.LC9(%rip), %rax	#, tmp160
	movq	%rax, %rsi	# tmp160,
	leaq	.LC20(%rip), %rax	#, tmp161
	movq	%rax, %rdi	# tmp161,
	call	__assert_fail@PLT	#
.L26:
# problem21.c:71:     return 0;
	movl	$0, %eax	#, _60
# problem21.c:72: }
	movq	-8(%rbp), %rdx	# D.3491, tmp164
	subq	%fs:40, %rdx	# MEM[(<address-space-1> long unsigned int *)40B], tmp164
	je	.L28	#,
	call	__stack_chk_fail@PLT	#
.L28:
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
	.long	2139095039
	.align 16
.LC1:
	.long	2147483647
	.long	0
	.long	0
	.long	0
	.align 4
.LC2:
	.long	953267991
	.align 4
.LC3:
	.long	1065353216
	.align 4
.LC4:
	.long	1073741824
	.align 4
.LC5:
	.long	1081711002
	.align 4
.LC6:
	.long	1082130432
	.align 4
.LC7:
	.long	1084227584
	.align 4
.LC8:
	.long	1074580685
	.align 4
.LC11:
	.long	1086115021
	.align 4
.LC13:
	.long	1077936128
	.align 4
.LC16:
	.long	1066192077
	.align 4
.LC17:
	.long	1078355558
	.align 4
.LC18:
	.long	1082340147
	.align 4
.LC19:
	.long	1084437299
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
