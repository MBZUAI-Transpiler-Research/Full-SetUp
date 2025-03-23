	.file	"problem59.c"
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
	subq	$64, %rsp	#,
	movq	%rdi, -40(%rbp)	# l1, l1
	movl	%esi, -44(%rbp)	# size1, size1
	movq	%rdx, -56(%rbp)	# l2, l2
	movl	%ecx, -48(%rbp)	# size2, size2
	movq	%r8, -64(%rbp)	# out_size, out_size
# problem59.c:5:     int *out = malloc(size1 * sizeof(int));
	movl	-44(%rbp), %eax	# size1, tmp137
	cltq
	salq	$2, %rax	#, _2
	movq	%rax, %rdi	# _2,
	call	malloc@PLT	#
	movq	%rax, -8(%rbp)	# tmp138, out
# problem59.c:6:     int k = 0, i, j, m;
	movl	$0, -32(%rbp)	#, k
# problem59.c:8:     for (i = 0; i < size1; i++) {
	movl	$0, -28(%rbp)	#, i
# problem59.c:8:     for (i = 0; i < size1; i++) {
	jmp	.L2	#
.L11:
# problem59.c:9:         int exists_in_out = 0;
	movl	$0, -16(%rbp)	#, exists_in_out
# problem59.c:10:         for (m = 0; m < k; m++) {
	movl	$0, -20(%rbp)	#, m
# problem59.c:10:         for (m = 0; m < k; m++) {
	jmp	.L3	#
.L6:
# problem59.c:11:             if (out[m] == l1[i]) {
	movl	-20(%rbp), %eax	# m, tmp139
	cltq
	leaq	0(,%rax,4), %rdx	#, _4
	movq	-8(%rbp), %rax	# out, tmp140
	addq	%rdx, %rax	# _4, _5
	movl	(%rax), %edx	# *_5, _6
# problem59.c:11:             if (out[m] == l1[i]) {
	movl	-28(%rbp), %eax	# i, tmp141
	cltq
	leaq	0(,%rax,4), %rcx	#, _8
	movq	-40(%rbp), %rax	# l1, tmp142
	addq	%rcx, %rax	# _8, _9
	movl	(%rax), %eax	# *_9, _10
# problem59.c:11:             if (out[m] == l1[i]) {
	cmpl	%eax, %edx	# _10, _6
	jne	.L4	#,
# problem59.c:12:                 exists_in_out = 1;
	movl	$1, -16(%rbp)	#, exists_in_out
# problem59.c:13:                 break;
	jmp	.L5	#
.L4:
# problem59.c:10:         for (m = 0; m < k; m++) {
	addl	$1, -20(%rbp)	#, m
.L3:
# problem59.c:10:         for (m = 0; m < k; m++) {
	movl	-20(%rbp), %eax	# m, tmp143
	cmpl	-32(%rbp), %eax	# k, tmp143
	jl	.L6	#,
.L5:
# problem59.c:16:         if (!exists_in_out) {
	cmpl	$0, -16(%rbp)	#, exists_in_out
	jne	.L7	#,
# problem59.c:17:             for (j = 0; j < size2; j++) {
	movl	$0, -24(%rbp)	#, j
# problem59.c:17:             for (j = 0; j < size2; j++) {
	jmp	.L8	#
.L10:
# problem59.c:18:                 if (l1[i] == l2[j]) {
	movl	-28(%rbp), %eax	# i, tmp144
	cltq
	leaq	0(,%rax,4), %rdx	#, _12
	movq	-40(%rbp), %rax	# l1, tmp145
	addq	%rdx, %rax	# _12, _13
	movl	(%rax), %edx	# *_13, _14
# problem59.c:18:                 if (l1[i] == l2[j]) {
	movl	-24(%rbp), %eax	# j, tmp146
	cltq
	leaq	0(,%rax,4), %rcx	#, _16
	movq	-56(%rbp), %rax	# l2, tmp147
	addq	%rcx, %rax	# _16, _17
	movl	(%rax), %eax	# *_17, _18
# problem59.c:18:                 if (l1[i] == l2[j]) {
	cmpl	%eax, %edx	# _18, _14
	jne	.L9	#,
# problem59.c:19:                     out[k++] = l1[i];
	movl	-28(%rbp), %eax	# i, tmp148
	cltq
	leaq	0(,%rax,4), %rdx	#, _20
	movq	-40(%rbp), %rax	# l1, tmp149
	leaq	(%rdx,%rax), %rcx	#, _21
# problem59.c:19:                     out[k++] = l1[i];
	movl	-32(%rbp), %eax	# k, k.0_22
	leal	1(%rax), %edx	#, tmp150
	movl	%edx, -32(%rbp)	# tmp150, k
	cltq
# problem59.c:19:                     out[k++] = l1[i];
	leaq	0(,%rax,4), %rdx	#, _24
	movq	-8(%rbp), %rax	# out, tmp151
	addq	%rax, %rdx	# tmp151, _25
# problem59.c:19:                     out[k++] = l1[i];
	movl	(%rcx), %eax	# *_21, _26
# problem59.c:19:                     out[k++] = l1[i];
	movl	%eax, (%rdx)	# _26, *_25
# problem59.c:20:                     break;
	jmp	.L7	#
.L9:
# problem59.c:17:             for (j = 0; j < size2; j++) {
	addl	$1, -24(%rbp)	#, j
.L8:
# problem59.c:17:             for (j = 0; j < size2; j++) {
	movl	-24(%rbp), %eax	# j, tmp152
	cmpl	-48(%rbp), %eax	# size2, tmp152
	jl	.L10	#,
.L7:
# problem59.c:8:     for (i = 0; i < size1; i++) {
	addl	$1, -28(%rbp)	#, i
.L2:
# problem59.c:8:     for (i = 0; i < size1; i++) {
	movl	-28(%rbp), %eax	# i, tmp153
	cmpl	-44(%rbp), %eax	# size1, tmp153
	jl	.L11	#,
# problem59.c:26:     for (i = 0; i < k - 1; i++) {
	movl	$0, -28(%rbp)	#, i
# problem59.c:26:     for (i = 0; i < k - 1; i++) {
	jmp	.L12	#
.L16:
# problem59.c:27:         for (j = 0; j < k - i - 1; j++) {
	movl	$0, -24(%rbp)	#, j
# problem59.c:27:         for (j = 0; j < k - i - 1; j++) {
	jmp	.L13	#
.L15:
# problem59.c:28:             if (out[j] > out[j + 1]) {
	movl	-24(%rbp), %eax	# j, tmp154
	cltq
	leaq	0(,%rax,4), %rdx	#, _28
	movq	-8(%rbp), %rax	# out, tmp155
	addq	%rdx, %rax	# _28, _29
	movl	(%rax), %edx	# *_29, _30
# problem59.c:28:             if (out[j] > out[j + 1]) {
	movl	-24(%rbp), %eax	# j, tmp156
	cltq
	addq	$1, %rax	#, _32
	leaq	0(,%rax,4), %rcx	#, _33
	movq	-8(%rbp), %rax	# out, tmp157
	addq	%rcx, %rax	# _33, _34
	movl	(%rax), %eax	# *_34, _35
# problem59.c:28:             if (out[j] > out[j + 1]) {
	cmpl	%eax, %edx	# _35, _30
	jle	.L14	#,
# problem59.c:29:                 int temp = out[j];
	movl	-24(%rbp), %eax	# j, tmp158
	cltq
	leaq	0(,%rax,4), %rdx	#, _37
	movq	-8(%rbp), %rax	# out, tmp159
	addq	%rdx, %rax	# _37, _38
# problem59.c:29:                 int temp = out[j];
	movl	(%rax), %eax	# *_38, tmp160
	movl	%eax, -12(%rbp)	# tmp160, temp
# problem59.c:30:                 out[j] = out[j + 1];
	movl	-24(%rbp), %eax	# j, tmp161
	cltq
	addq	$1, %rax	#, _40
	leaq	0(,%rax,4), %rdx	#, _41
	movq	-8(%rbp), %rax	# out, tmp162
	addq	%rdx, %rax	# _41, _42
# problem59.c:30:                 out[j] = out[j + 1];
	movl	-24(%rbp), %edx	# j, tmp163
	movslq	%edx, %rdx	# tmp163, _43
	leaq	0(,%rdx,4), %rcx	#, _44
	movq	-8(%rbp), %rdx	# out, tmp164
	addq	%rcx, %rdx	# _44, _45
# problem59.c:30:                 out[j] = out[j + 1];
	movl	(%rax), %eax	# *_42, _46
# problem59.c:30:                 out[j] = out[j + 1];
	movl	%eax, (%rdx)	# _46, *_45
# problem59.c:31:                 out[j + 1] = temp;
	movl	-24(%rbp), %eax	# j, tmp165
	cltq
	addq	$1, %rax	#, _48
	leaq	0(,%rax,4), %rdx	#, _49
	movq	-8(%rbp), %rax	# out, tmp166
	addq	%rax, %rdx	# tmp166, _50
# problem59.c:31:                 out[j + 1] = temp;
	movl	-12(%rbp), %eax	# temp, tmp167
	movl	%eax, (%rdx)	# tmp167, *_50
.L14:
# problem59.c:27:         for (j = 0; j < k - i - 1; j++) {
	addl	$1, -24(%rbp)	#, j
.L13:
# problem59.c:27:         for (j = 0; j < k - i - 1; j++) {
	movl	-32(%rbp), %eax	# k, tmp168
	subl	-28(%rbp), %eax	# i, _51
# problem59.c:27:         for (j = 0; j < k - i - 1; j++) {
	subl	$1, %eax	#, _52
# problem59.c:27:         for (j = 0; j < k - i - 1; j++) {
	cmpl	%eax, -24(%rbp)	# _52, j
	jl	.L15	#,
# problem59.c:26:     for (i = 0; i < k - 1; i++) {
	addl	$1, -28(%rbp)	#, i
.L12:
# problem59.c:26:     for (i = 0; i < k - 1; i++) {
	movl	-32(%rbp), %eax	# k, tmp169
	subl	$1, %eax	#, _53
# problem59.c:26:     for (i = 0; i < k - 1; i++) {
	cmpl	%eax, -28(%rbp)	# _53, i
	jl	.L16	#,
# problem59.c:36:     *out_size = k;
	movq	-64(%rbp), %rax	# out_size, tmp170
	movl	-32(%rbp), %edx	# k, tmp171
	movl	%edx, (%rax)	# tmp171, *out_size_74(D)
# problem59.c:37:     return out;
	movq	-8(%rbp), %rax	# out, _76
# problem59.c:38: }
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE6:
	.size	func0, .-func0
	.section	.rodata
.LC0:
	.string	"problem59.c"
.LC1:
	.string	"result1[i] == expected1[i]"
.LC2:
	.string	"result2[i] == expected2[i]"
.LC3:
	.string	"result3[i] == expected3[i]"
.LC4:
	.string	"size == 0"
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
	subq	$240, %rsp	#,
# problem59.c:46: int main() {
	movq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp148
	movq	%rax, -8(%rbp)	# tmp148, D.4032
	xorl	%eax, %eax	# tmp148
# problem59.c:49:     int l1[] = {1, 4, 3, 34, 653, 2, 5};
	movl	$1, -80(%rbp)	#, l1[0]
	movl	$4, -76(%rbp)	#, l1[1]
	movl	$3, -72(%rbp)	#, l1[2]
	movl	$34, -68(%rbp)	#, l1[3]
	movl	$653, -64(%rbp)	#, l1[4]
	movl	$2, -60(%rbp)	#, l1[5]
	movl	$5, -56(%rbp)	#, l1[6]
# problem59.c:50:     int l2[] = {5, 7, 1, 5, 9, 653, 121};
	movl	$5, -48(%rbp)	#, l2[0]
	movl	$7, -44(%rbp)	#, l2[1]
	movl	$1, -40(%rbp)	#, l2[2]
	movl	$5, -36(%rbp)	#, l2[3]
	movl	$9, -32(%rbp)	#, l2[4]
	movl	$653, -28(%rbp)	#, l2[5]
	movl	$121, -24(%rbp)	#, l2[6]
# problem59.c:51:     int expected1[] = {1, 5, 653};
	movl	$1, -164(%rbp)	#, expected1[0]
	movl	$5, -160(%rbp)	#, expected1[1]
	movl	$653, -156(%rbp)	#, expected1[2]
# problem59.c:52:     int *result1 = func0(l1, 7, l2, 7, &size);
	leaq	-232(%rbp), %rcx	#, tmp103
	leaq	-48(%rbp), %rdx	#, tmp104
	leaq	-80(%rbp), %rax	#, tmp105
	movq	%rcx, %r8	# tmp103,
	movl	$7, %ecx	#,
	movl	$7, %esi	#,
	movq	%rax, %rdi	# tmp105,
	call	func0	#
	movq	%rax, -216(%rbp)	# tmp106, result1
# problem59.c:53:     for (int i = 0; i < size; i++) {
	movl	$0, -228(%rbp)	#, i
# problem59.c:53:     for (int i = 0; i < size; i++) {
	jmp	.L19	#
.L21:
# problem59.c:54:         assert(result1[i] == expected1[i]);
	movl	-228(%rbp), %eax	# i, tmp107
	cltq
	leaq	0(,%rax,4), %rdx	#, _2
	movq	-216(%rbp), %rax	# result1, tmp108
	addq	%rdx, %rax	# _2, _3
	movl	(%rax), %edx	# *_3, _4
	movl	-228(%rbp), %eax	# i, tmp110
	cltq
	movl	-164(%rbp,%rax,4), %eax	# expected1[i_20], _5
	cmpl	%eax, %edx	# _5, _4
	je	.L20	#,
# problem59.c:54:         assert(result1[i] == expected1[i]);
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp111
	movq	%rax, %rcx	# tmp111,
	movl	$54, %edx	#,
	leaq	.LC0(%rip), %rax	#, tmp112
	movq	%rax, %rsi	# tmp112,
	leaq	.LC1(%rip), %rax	#, tmp113
	movq	%rax, %rdi	# tmp113,
	call	__assert_fail@PLT	#
.L20:
# problem59.c:53:     for (int i = 0; i < size; i++) {
	addl	$1, -228(%rbp)	#, i
.L19:
# problem59.c:53:     for (int i = 0; i < size; i++) {
	movl	-232(%rbp), %eax	# size, size.1_6
	cmpl	%eax, -228(%rbp)	# size.1_6, i
	jl	.L21	#,
# problem59.c:56:     free(result1);
	movq	-216(%rbp), %rax	# result1, tmp114
	movq	%rax, %rdi	# tmp114,
	call	free@PLT	#
# problem59.c:58:     int l3[] = {5, 3, 2, 8};
	movl	$5, -128(%rbp)	#, l3[0]
	movl	$3, -124(%rbp)	#, l3[1]
	movl	$2, -120(%rbp)	#, l3[2]
	movl	$8, -116(%rbp)	#, l3[3]
# problem59.c:59:     int l4[] = {3, 2};
	movl	$3, -180(%rbp)	#, l4[0]
	movl	$2, -176(%rbp)	#, l4[1]
# problem59.c:60:     int expected2[] = {2, 3};
	movl	$2, -172(%rbp)	#, expected2[0]
	movl	$3, -168(%rbp)	#, expected2[1]
# problem59.c:61:     int *result2 = func0(l3, 4, l4, 2, &size);
	leaq	-232(%rbp), %rcx	#, tmp115
	leaq	-180(%rbp), %rdx	#, tmp116
	leaq	-128(%rbp), %rax	#, tmp117
	movq	%rcx, %r8	# tmp115,
	movl	$2, %ecx	#,
	movl	$4, %esi	#,
	movq	%rax, %rdi	# tmp117,
	call	func0	#
	movq	%rax, -208(%rbp)	# tmp118, result2
# problem59.c:62:     for (int i = 0; i < size; i++) {
	movl	$0, -224(%rbp)	#, i
# problem59.c:62:     for (int i = 0; i < size; i++) {
	jmp	.L22	#
.L24:
# problem59.c:63:         assert(result2[i] == expected2[i]);
	movl	-224(%rbp), %eax	# i, tmp119
	cltq
	leaq	0(,%rax,4), %rdx	#, _8
	movq	-208(%rbp), %rax	# result2, tmp120
	addq	%rdx, %rax	# _8, _9
	movl	(%rax), %edx	# *_9, _10
	movl	-224(%rbp), %eax	# i, tmp122
	cltq
	movl	-172(%rbp,%rax,4), %eax	# expected2[i_21], _11
	cmpl	%eax, %edx	# _11, _10
	je	.L23	#,
# problem59.c:63:         assert(result2[i] == expected2[i]);
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp123
	movq	%rax, %rcx	# tmp123,
	movl	$63, %edx	#,
	leaq	.LC0(%rip), %rax	#, tmp124
	movq	%rax, %rsi	# tmp124,
	leaq	.LC2(%rip), %rax	#, tmp125
	movq	%rax, %rdi	# tmp125,
	call	__assert_fail@PLT	#
.L23:
# problem59.c:62:     for (int i = 0; i < size; i++) {
	addl	$1, -224(%rbp)	#, i
.L22:
# problem59.c:62:     for (int i = 0; i < size; i++) {
	movl	-232(%rbp), %eax	# size, size.2_12
	cmpl	%eax, -224(%rbp)	# size.2_12, i
	jl	.L24	#,
# problem59.c:65:     free(result2);
	movq	-208(%rbp), %rax	# result2, tmp126
	movq	%rax, %rdi	# tmp126,
	call	free@PLT	#
# problem59.c:67:     int l5[] = {4, 3, 2, 8};
	movl	$4, -112(%rbp)	#, l5[0]
	movl	$3, -108(%rbp)	#, l5[1]
	movl	$2, -104(%rbp)	#, l5[2]
	movl	$8, -100(%rbp)	#, l5[3]
# problem59.c:68:     int l6[] = {3, 2, 4};
	movl	$3, -152(%rbp)	#, l6[0]
	movl	$2, -148(%rbp)	#, l6[1]
	movl	$4, -144(%rbp)	#, l6[2]
# problem59.c:69:     int expected3[] = {2, 3, 4};
	movl	$2, -140(%rbp)	#, expected3[0]
	movl	$3, -136(%rbp)	#, expected3[1]
	movl	$4, -132(%rbp)	#, expected3[2]
# problem59.c:70:     int *result3 = func0(l5, 4, l6, 3, &size);
	leaq	-232(%rbp), %rcx	#, tmp127
	leaq	-152(%rbp), %rdx	#, tmp128
	leaq	-112(%rbp), %rax	#, tmp129
	movq	%rcx, %r8	# tmp127,
	movl	$3, %ecx	#,
	movl	$4, %esi	#,
	movq	%rax, %rdi	# tmp129,
	call	func0	#
	movq	%rax, -200(%rbp)	# tmp130, result3
# problem59.c:71:     for (int i = 0; i < size; i++) {
	movl	$0, -220(%rbp)	#, i
# problem59.c:71:     for (int i = 0; i < size; i++) {
	jmp	.L25	#
.L27:
# problem59.c:72:         assert(result3[i] == expected3[i]);
	movl	-220(%rbp), %eax	# i, tmp131
	cltq
	leaq	0(,%rax,4), %rdx	#, _14
	movq	-200(%rbp), %rax	# result3, tmp132
	addq	%rdx, %rax	# _14, _15
	movl	(%rax), %edx	# *_15, _16
	movl	-220(%rbp), %eax	# i, tmp134
	cltq
	movl	-140(%rbp,%rax,4), %eax	# expected3[i_22], _17
	cmpl	%eax, %edx	# _17, _16
	je	.L26	#,
# problem59.c:72:         assert(result3[i] == expected3[i]);
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp135
	movq	%rax, %rcx	# tmp135,
	movl	$72, %edx	#,
	leaq	.LC0(%rip), %rax	#, tmp136
	movq	%rax, %rsi	# tmp136,
	leaq	.LC3(%rip), %rax	#, tmp137
	movq	%rax, %rdi	# tmp137,
	call	__assert_fail@PLT	#
.L26:
# problem59.c:71:     for (int i = 0; i < size; i++) {
	addl	$1, -220(%rbp)	#, i
.L25:
# problem59.c:71:     for (int i = 0; i < size; i++) {
	movl	-232(%rbp), %eax	# size, size.3_18
	cmpl	%eax, -220(%rbp)	# size.3_18, i
	jl	.L27	#,
# problem59.c:74:     free(result3);
	movq	-200(%rbp), %rax	# result3, tmp138
	movq	%rax, %rdi	# tmp138,
	call	free@PLT	#
# problem59.c:76:     int l7[] = {4, 3, 2, 8};
	movl	$4, -96(%rbp)	#, l7[0]
	movl	$3, -92(%rbp)	#, l7[1]
	movl	$2, -88(%rbp)	#, l7[2]
	movl	$8, -84(%rbp)	#, l7[3]
# problem59.c:78:     int *result4 = func0(l7, 4, l8, 0, &size);
	leaq	-232(%rbp), %rcx	#, tmp139
	leaq	-184(%rbp), %rdx	#, tmp140
	leaq	-96(%rbp), %rax	#, tmp141
	movq	%rcx, %r8	# tmp139,
	movl	$0, %ecx	#,
	movl	$4, %esi	#,
	movq	%rax, %rdi	# tmp141,
	call	func0	#
	movq	%rax, -192(%rbp)	# tmp142, result4
# problem59.c:79:     assert(size == 0); // Since l8 is empty, result4 should be empty as well
	movl	-232(%rbp), %eax	# size, size.4_19
	testl	%eax, %eax	# size.4_19
	je	.L28	#,
# problem59.c:79:     assert(size == 0); // Since l8 is empty, result4 should be empty as well
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp143
	movq	%rax, %rcx	# tmp143,
	movl	$79, %edx	#,
	leaq	.LC0(%rip), %rax	#, tmp144
	movq	%rax, %rsi	# tmp144,
	leaq	.LC4(%rip), %rax	#, tmp145
	movq	%rax, %rdi	# tmp145,
	call	__assert_fail@PLT	#
.L28:
# problem59.c:80:     free(result4);
	movq	-192(%rbp), %rax	# result4, tmp146
	movq	%rax, %rdi	# tmp146,
	call	free@PLT	#
# problem59.c:82:     return 0;
	movl	$0, %eax	#, _79
# problem59.c:83: }
	movq	-8(%rbp), %rdx	# D.4032, tmp149
	subq	%fs:40, %rdx	# MEM[(<address-space-1> long unsigned int *)40B], tmp149
	je	.L30	#,
	call	__stack_chk_fail@PLT	#
.L30:
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
