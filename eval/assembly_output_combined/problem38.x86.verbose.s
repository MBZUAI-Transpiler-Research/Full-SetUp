	.file	"problem38.c"
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
	movq	%rdi, -40(%rbp)	# l, l
	movl	%esi, -44(%rbp)	# size, size
	movq	%rdx, -56(%rbp)	# out, out
# problem38.c:6:     float *even = malloc((size / 2 + 1) * sizeof(float));
	movl	-44(%rbp), %eax	# size, tmp138
	movl	%eax, %edx	# tmp138, tmp139
	shrl	$31, %edx	#, tmp139
	addl	%edx, %eax	# tmp139, tmp140
	sarl	%eax	# tmp141
# problem38.c:6:     float *even = malloc((size / 2 + 1) * sizeof(float));
	addl	$1, %eax	#, _2
	cltq
# problem38.c:6:     float *even = malloc((size / 2 + 1) * sizeof(float));
	salq	$2, %rax	#, _4
	movq	%rax, %rdi	# _4,
	call	malloc@PLT	#
	movq	%rax, -8(%rbp)	# tmp142, even
# problem38.c:7:     int i, j, even_count = 0;
	movl	$0, -16(%rbp)	#, even_count
# problem38.c:9:     for (i = 0; i < size; i += 2) {
	movl	$0, -24(%rbp)	#, i
# problem38.c:9:     for (i = 0; i < size; i += 2) {
	jmp	.L2	#
.L3:
# problem38.c:10:         even[even_count++] = l[i];
	movl	-24(%rbp), %eax	# i, tmp143
	cltq
	leaq	0(,%rax,4), %rdx	#, _6
	movq	-40(%rbp), %rax	# l, tmp144
	leaq	(%rdx,%rax), %rcx	#, _7
# problem38.c:10:         even[even_count++] = l[i];
	movl	-16(%rbp), %eax	# even_count, even_count.0_8
	leal	1(%rax), %edx	#, tmp145
	movl	%edx, -16(%rbp)	# tmp145, even_count
	cltq
# problem38.c:10:         even[even_count++] = l[i];
	leaq	0(,%rax,4), %rdx	#, _10
	movq	-8(%rbp), %rax	# even, tmp146
	addq	%rdx, %rax	# _10, _11
# problem38.c:10:         even[even_count++] = l[i];
	movss	(%rcx), %xmm0	# *_7, _12
# problem38.c:10:         even[even_count++] = l[i];
	movss	%xmm0, (%rax)	# _12, *_11
# problem38.c:9:     for (i = 0; i < size; i += 2) {
	addl	$2, -24(%rbp)	#, i
.L2:
# problem38.c:9:     for (i = 0; i < size; i += 2) {
	movl	-24(%rbp), %eax	# i, tmp147
	cmpl	-44(%rbp), %eax	# size, tmp147
	jl	.L3	#,
# problem38.c:13:     for (i = 0; i < even_count - 1; i++) {
	movl	$0, -24(%rbp)	#, i
# problem38.c:13:     for (i = 0; i < even_count - 1; i++) {
	jmp	.L4	#
.L9:
# problem38.c:14:         for (j = 0; j < even_count - i - 1; j++) {
	movl	$0, -20(%rbp)	#, j
# problem38.c:14:         for (j = 0; j < even_count - i - 1; j++) {
	jmp	.L5	#
.L8:
# problem38.c:15:             if (even[j] > even[j + 1]) {
	movl	-20(%rbp), %eax	# j, tmp148
	cltq
	leaq	0(,%rax,4), %rdx	#, _14
	movq	-8(%rbp), %rax	# even, tmp149
	addq	%rdx, %rax	# _14, _15
	movss	(%rax), %xmm0	# *_15, _16
# problem38.c:15:             if (even[j] > even[j + 1]) {
	movl	-20(%rbp), %eax	# j, tmp150
	cltq
	addq	$1, %rax	#, _18
	leaq	0(,%rax,4), %rdx	#, _19
	movq	-8(%rbp), %rax	# even, tmp151
	addq	%rdx, %rax	# _19, _20
	movss	(%rax), %xmm1	# *_20, _21
# problem38.c:15:             if (even[j] > even[j + 1]) {
	comiss	%xmm1, %xmm0	# _21, _16
	jbe	.L6	#,
# problem38.c:16:                 float temp = even[j];
	movl	-20(%rbp), %eax	# j, tmp152
	cltq
	leaq	0(,%rax,4), %rdx	#, _23
	movq	-8(%rbp), %rax	# even, tmp153
	addq	%rdx, %rax	# _23, _24
# problem38.c:16:                 float temp = even[j];
	movss	(%rax), %xmm0	# *_24, tmp154
	movss	%xmm0, -12(%rbp)	# tmp154, temp
# problem38.c:17:                 even[j] = even[j + 1];
	movl	-20(%rbp), %eax	# j, tmp155
	cltq
	addq	$1, %rax	#, _26
	leaq	0(,%rax,4), %rdx	#, _27
	movq	-8(%rbp), %rax	# even, tmp156
	addq	%rax, %rdx	# tmp156, _28
# problem38.c:17:                 even[j] = even[j + 1];
	movl	-20(%rbp), %eax	# j, tmp157
	cltq
	leaq	0(,%rax,4), %rcx	#, _30
	movq	-8(%rbp), %rax	# even, tmp158
	addq	%rcx, %rax	# _30, _31
# problem38.c:17:                 even[j] = even[j + 1];
	movss	(%rdx), %xmm0	# *_28, _32
# problem38.c:17:                 even[j] = even[j + 1];
	movss	%xmm0, (%rax)	# _32, *_31
# problem38.c:18:                 even[j + 1] = temp;
	movl	-20(%rbp), %eax	# j, tmp159
	cltq
	addq	$1, %rax	#, _34
	leaq	0(,%rax,4), %rdx	#, _35
	movq	-8(%rbp), %rax	# even, tmp160
	addq	%rdx, %rax	# _35, _36
# problem38.c:18:                 even[j + 1] = temp;
	movss	-12(%rbp), %xmm0	# temp, tmp161
	movss	%xmm0, (%rax)	# tmp161, *_36
.L6:
# problem38.c:14:         for (j = 0; j < even_count - i - 1; j++) {
	addl	$1, -20(%rbp)	#, j
.L5:
# problem38.c:14:         for (j = 0; j < even_count - i - 1; j++) {
	movl	-16(%rbp), %eax	# even_count, tmp162
	subl	-24(%rbp), %eax	# i, _37
# problem38.c:14:         for (j = 0; j < even_count - i - 1; j++) {
	subl	$1, %eax	#, _38
# problem38.c:14:         for (j = 0; j < even_count - i - 1; j++) {
	cmpl	%eax, -20(%rbp)	# _38, j
	jl	.L8	#,
# problem38.c:13:     for (i = 0; i < even_count - 1; i++) {
	addl	$1, -24(%rbp)	#, i
.L4:
# problem38.c:13:     for (i = 0; i < even_count - 1; i++) {
	movl	-16(%rbp), %eax	# even_count, tmp163
	subl	$1, %eax	#, _39
# problem38.c:13:     for (i = 0; i < even_count - 1; i++) {
	cmpl	%eax, -24(%rbp)	# _39, i
	jl	.L9	#,
# problem38.c:24:     for (i = 0; i < size; i++) {
	movl	$0, -24(%rbp)	#, i
# problem38.c:24:     for (i = 0; i < size; i++) {
	jmp	.L10	#
.L13:
# problem38.c:25:         if (i % 2 == 0) {
	movl	-24(%rbp), %eax	# i, i.1_40
	andl	$1, %eax	#, _41
# problem38.c:25:         if (i % 2 == 0) {
	testl	%eax, %eax	# _41
	jne	.L11	#,
# problem38.c:26:             out[i] = even[i / 2];
	movl	-24(%rbp), %eax	# i, tmp164
	movl	%eax, %edx	# tmp164, tmp165
	shrl	$31, %edx	#, tmp165
	addl	%edx, %eax	# tmp165, tmp166
	sarl	%eax	# tmp167
	cltq
# problem38.c:26:             out[i] = even[i / 2];
	leaq	0(,%rax,4), %rdx	#, _44
	movq	-8(%rbp), %rax	# even, tmp168
	addq	%rax, %rdx	# tmp168, _45
# problem38.c:26:             out[i] = even[i / 2];
	movl	-24(%rbp), %eax	# i, tmp169
	cltq
	leaq	0(,%rax,4), %rcx	#, _47
	movq	-56(%rbp), %rax	# out, tmp170
	addq	%rcx, %rax	# _47, _48
# problem38.c:26:             out[i] = even[i / 2];
	movss	(%rdx), %xmm0	# *_45, _49
# problem38.c:26:             out[i] = even[i / 2];
	movss	%xmm0, (%rax)	# _49, *_48
	jmp	.L12	#
.L11:
# problem38.c:28:             out[i] = l[i];
	movl	-24(%rbp), %eax	# i, tmp171
	cltq
	leaq	0(,%rax,4), %rdx	#, _51
	movq	-40(%rbp), %rax	# l, tmp172
	addq	%rax, %rdx	# tmp172, _52
# problem38.c:28:             out[i] = l[i];
	movl	-24(%rbp), %eax	# i, tmp173
	cltq
	leaq	0(,%rax,4), %rcx	#, _54
	movq	-56(%rbp), %rax	# out, tmp174
	addq	%rcx, %rax	# _54, _55
# problem38.c:28:             out[i] = l[i];
	movss	(%rdx), %xmm0	# *_52, _56
# problem38.c:28:             out[i] = l[i];
	movss	%xmm0, (%rax)	# _56, *_55
.L12:
# problem38.c:24:     for (i = 0; i < size; i++) {
	addl	$1, -24(%rbp)	#, i
.L10:
# problem38.c:24:     for (i = 0; i < size; i++) {
	movl	-24(%rbp), %eax	# i, tmp175
	cmpl	-44(%rbp), %eax	# size, tmp175
	jl	.L13	#,
# problem38.c:32:     free(even);
	movq	-8(%rbp), %rax	# even, tmp176
	movq	%rax, %rdi	# tmp176,
	call	free@PLT	#
# problem38.c:33: }
	nop	
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE6:
	.size	func0, .-func0
	.globl	issame
	.type	issame, @function
issame:
.LFB7:
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
# problem38.c:42:     for (int i = 0; i < size; i++) {
	movl	$0, -4(%rbp)	#, i
# problem38.c:42:     for (int i = 0; i < size; i++) {
	jmp	.L16	#
.L20:
# problem38.c:43:         if (fabs(a[i] - b[i]) > 1e-4) {
	movl	-4(%rbp), %eax	# i, tmp95
	cltq
	leaq	0(,%rax,4), %rdx	#, _2
	movq	-24(%rbp), %rax	# a, tmp96
	addq	%rdx, %rax	# _2, _3
	movss	(%rax), %xmm0	# *_3, _4
# problem38.c:43:         if (fabs(a[i] - b[i]) > 1e-4) {
	movl	-4(%rbp), %eax	# i, tmp97
	cltq
	leaq	0(,%rax,4), %rdx	#, _6
	movq	-32(%rbp), %rax	# b, tmp98
	addq	%rdx, %rax	# _6, _7
	movss	(%rax), %xmm1	# *_7, _8
# problem38.c:43:         if (fabs(a[i] - b[i]) > 1e-4) {
	subss	%xmm1, %xmm0	# _8, _9
# problem38.c:43:         if (fabs(a[i] - b[i]) > 1e-4) {
	movss	.LC0(%rip), %xmm1	#, tmp99
	andps	%xmm1, %xmm0	# tmp99, _10
	cvtss2sd	%xmm0, %xmm0	# _10, _11
# problem38.c:43:         if (fabs(a[i] - b[i]) > 1e-4) {
	comisd	.LC1(%rip), %xmm0	#, _11
	jbe	.L22	#,
# problem38.c:44:             return 0;
	movl	$0, %eax	#, _13
	jmp	.L19	#
.L22:
# problem38.c:42:     for (int i = 0; i < size; i++) {
	addl	$1, -4(%rbp)	#, i
.L16:
# problem38.c:42:     for (int i = 0; i < size; i++) {
	movl	-4(%rbp), %eax	# i, tmp100
	cmpl	-36(%rbp), %eax	# size, tmp100
	jl	.L20	#,
# problem38.c:47:     return 1;
	movl	$1, %eax	#, _13
.L19:
# problem38.c:48: }
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE7:
	.size	issame, .-issame
	.section	.rodata
.LC5:
	.string	"problem38.c"
.LC6:
	.string	"issame(result1, expected1, 3)"
	.align 8
.LC14:
	.string	"issame(result2, expected2, 11)"
	.align 8
.LC21:
	.string	"issame(result3, expected3, 10)"
	.text
	.globl	main
	.type	main, @function
main:
.LFB8:
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$352, %rsp	#,
# problem38.c:50: int main() {
	movq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp157
	movq	%rax, -8(%rbp)	# tmp157, D.4847
	xorl	%eax, %eax	# tmp157
# problem38.c:51:     float test1[] = {1, 2, 3};
	movss	.LC2(%rip), %xmm0	#, tmp87
	movss	%xmm0, -340(%rbp)	# tmp87, test1[0]
	movss	.LC3(%rip), %xmm0	#, tmp88
	movss	%xmm0, -336(%rbp)	# tmp88, test1[1]
	movss	.LC4(%rip), %xmm0	#, tmp89
	movss	%xmm0, -332(%rbp)	# tmp89, test1[2]
# problem38.c:53:     func0(test1, 3, result1);
	leaq	-328(%rbp), %rdx	#, tmp90
	leaq	-340(%rbp), %rax	#, tmp91
	movl	$3, %esi	#,
	movq	%rax, %rdi	# tmp91,
	call	func0	#
# problem38.c:54:     float expected1[] = {1, 2, 3};
	movss	.LC2(%rip), %xmm0	#, tmp92
	movss	%xmm0, -316(%rbp)	# tmp92, expected1[0]
	movss	.LC3(%rip), %xmm0	#, tmp93
	movss	%xmm0, -312(%rbp)	# tmp93, expected1[1]
	movss	.LC4(%rip), %xmm0	#, tmp94
	movss	%xmm0, -308(%rbp)	# tmp94, expected1[2]
# problem38.c:55:     assert(issame(result1, expected1, 3));
	leaq	-316(%rbp), %rcx	#, tmp95
	leaq	-328(%rbp), %rax	#, tmp96
	movl	$3, %edx	#,
	movq	%rcx, %rsi	# tmp95,
	movq	%rax, %rdi	# tmp96,
	call	issame	#
# problem38.c:55:     assert(issame(result1, expected1, 3));
	testl	%eax, %eax	# _1
	jne	.L24	#,
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp97
	movq	%rax, %rcx	# tmp97,
	movl	$55, %edx	#,
	leaq	.LC5(%rip), %rax	#, tmp98
	movq	%rax, %rsi	# tmp98,
	leaq	.LC6(%rip), %rax	#, tmp99
	movq	%rax, %rdi	# tmp99,
	call	__assert_fail@PLT	#
.L24:
# problem38.c:57:     float test2[] = {5, 3, -5, 2, -3, 3, 9, 0, 123, 1, -10};
	movss	.LC7(%rip), %xmm0	#, tmp100
	movss	%xmm0, -160(%rbp)	# tmp100, test2[0]
	movss	.LC4(%rip), %xmm0	#, tmp101
	movss	%xmm0, -156(%rbp)	# tmp101, test2[1]
	movss	.LC8(%rip), %xmm0	#, tmp102
	movss	%xmm0, -152(%rbp)	# tmp102, test2[2]
	movss	.LC3(%rip), %xmm0	#, tmp103
	movss	%xmm0, -148(%rbp)	# tmp103, test2[3]
	movss	.LC9(%rip), %xmm0	#, tmp104
	movss	%xmm0, -144(%rbp)	# tmp104, test2[4]
	movss	.LC4(%rip), %xmm0	#, tmp105
	movss	%xmm0, -140(%rbp)	# tmp105, test2[5]
	movss	.LC10(%rip), %xmm0	#, tmp106
	movss	%xmm0, -136(%rbp)	# tmp106, test2[6]
	pxor	%xmm0, %xmm0	# tmp107
	movss	%xmm0, -132(%rbp)	# tmp107, test2[7]
	movss	.LC12(%rip), %xmm0	#, tmp108
	movss	%xmm0, -128(%rbp)	# tmp108, test2[8]
	movss	.LC2(%rip), %xmm0	#, tmp109
	movss	%xmm0, -124(%rbp)	# tmp109, test2[9]
	movss	.LC13(%rip), %xmm0	#, tmp110
	movss	%xmm0, -120(%rbp)	# tmp110, test2[10]
# problem38.c:59:     func0(test2, 11, result2);
	leaq	-112(%rbp), %rdx	#, tmp111
	leaq	-160(%rbp), %rax	#, tmp112
	movl	$11, %esi	#,
	movq	%rax, %rdi	# tmp112,
	call	func0	#
# problem38.c:60:     float expected2[] = {-10, 3, -5, 2, -3, 3, 5, 0, 9, 1, 123};
	movss	.LC13(%rip), %xmm0	#, tmp113
	movss	%xmm0, -64(%rbp)	# tmp113, expected2[0]
	movss	.LC4(%rip), %xmm0	#, tmp114
	movss	%xmm0, -60(%rbp)	# tmp114, expected2[1]
	movss	.LC8(%rip), %xmm0	#, tmp115
	movss	%xmm0, -56(%rbp)	# tmp115, expected2[2]
	movss	.LC3(%rip), %xmm0	#, tmp116
	movss	%xmm0, -52(%rbp)	# tmp116, expected2[3]
	movss	.LC9(%rip), %xmm0	#, tmp117
	movss	%xmm0, -48(%rbp)	# tmp117, expected2[4]
	movss	.LC4(%rip), %xmm0	#, tmp118
	movss	%xmm0, -44(%rbp)	# tmp118, expected2[5]
	movss	.LC7(%rip), %xmm0	#, tmp119
	movss	%xmm0, -40(%rbp)	# tmp119, expected2[6]
	pxor	%xmm0, %xmm0	# tmp120
	movss	%xmm0, -36(%rbp)	# tmp120, expected2[7]
	movss	.LC10(%rip), %xmm0	#, tmp121
	movss	%xmm0, -32(%rbp)	# tmp121, expected2[8]
	movss	.LC2(%rip), %xmm0	#, tmp122
	movss	%xmm0, -28(%rbp)	# tmp122, expected2[9]
	movss	.LC12(%rip), %xmm0	#, tmp123
	movss	%xmm0, -24(%rbp)	# tmp123, expected2[10]
# problem38.c:61:     assert(issame(result2, expected2, 11));
	leaq	-64(%rbp), %rcx	#, tmp124
	leaq	-112(%rbp), %rax	#, tmp125
	movl	$11, %edx	#,
	movq	%rcx, %rsi	# tmp124,
	movq	%rax, %rdi	# tmp125,
	call	issame	#
# problem38.c:61:     assert(issame(result2, expected2, 11));
	testl	%eax, %eax	# _2
	jne	.L25	#,
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp126
	movq	%rax, %rcx	# tmp126,
	movl	$61, %edx	#,
	leaq	.LC5(%rip), %rax	#, tmp127
	movq	%rax, %rsi	# tmp127,
	leaq	.LC14(%rip), %rax	#, tmp128
	movq	%rax, %rdi	# tmp128,
	call	__assert_fail@PLT	#
.L25:
# problem38.c:63:     float test3[] = {5, 8, -12, 4, 23, 2, 3, 11, 12, -10};
	movss	.LC7(%rip), %xmm0	#, tmp129
	movss	%xmm0, -304(%rbp)	# tmp129, test3[0]
	movss	.LC15(%rip), %xmm0	#, tmp130
	movss	%xmm0, -300(%rbp)	# tmp130, test3[1]
	movss	.LC16(%rip), %xmm0	#, tmp131
	movss	%xmm0, -296(%rbp)	# tmp131, test3[2]
	movss	.LC17(%rip), %xmm0	#, tmp132
	movss	%xmm0, -292(%rbp)	# tmp132, test3[3]
	movss	.LC18(%rip), %xmm0	#, tmp133
	movss	%xmm0, -288(%rbp)	# tmp133, test3[4]
	movss	.LC3(%rip), %xmm0	#, tmp134
	movss	%xmm0, -284(%rbp)	# tmp134, test3[5]
	movss	.LC4(%rip), %xmm0	#, tmp135
	movss	%xmm0, -280(%rbp)	# tmp135, test3[6]
	movss	.LC19(%rip), %xmm0	#, tmp136
	movss	%xmm0, -276(%rbp)	# tmp136, test3[7]
	movss	.LC20(%rip), %xmm0	#, tmp137
	movss	%xmm0, -272(%rbp)	# tmp137, test3[8]
	movss	.LC13(%rip), %xmm0	#, tmp138
	movss	%xmm0, -268(%rbp)	# tmp138, test3[9]
# problem38.c:65:     func0(test3, 10, result3);
	leaq	-256(%rbp), %rdx	#, tmp139
	leaq	-304(%rbp), %rax	#, tmp140
	movl	$10, %esi	#,
	movq	%rax, %rdi	# tmp140,
	call	func0	#
# problem38.c:66:     float expected3[] = {-12, 8, 3, 4, 5, 2, 12, 11, 23, -10};
	movss	.LC16(%rip), %xmm0	#, tmp141
	movss	%xmm0, -208(%rbp)	# tmp141, expected3[0]
	movss	.LC15(%rip), %xmm0	#, tmp142
	movss	%xmm0, -204(%rbp)	# tmp142, expected3[1]
	movss	.LC4(%rip), %xmm0	#, tmp143
	movss	%xmm0, -200(%rbp)	# tmp143, expected3[2]
	movss	.LC17(%rip), %xmm0	#, tmp144
	movss	%xmm0, -196(%rbp)	# tmp144, expected3[3]
	movss	.LC7(%rip), %xmm0	#, tmp145
	movss	%xmm0, -192(%rbp)	# tmp145, expected3[4]
	movss	.LC3(%rip), %xmm0	#, tmp146
	movss	%xmm0, -188(%rbp)	# tmp146, expected3[5]
	movss	.LC20(%rip), %xmm0	#, tmp147
	movss	%xmm0, -184(%rbp)	# tmp147, expected3[6]
	movss	.LC19(%rip), %xmm0	#, tmp148
	movss	%xmm0, -180(%rbp)	# tmp148, expected3[7]
	movss	.LC18(%rip), %xmm0	#, tmp149
	movss	%xmm0, -176(%rbp)	# tmp149, expected3[8]
	movss	.LC13(%rip), %xmm0	#, tmp150
	movss	%xmm0, -172(%rbp)	# tmp150, expected3[9]
# problem38.c:67:     assert(issame(result3, expected3, 10));
	leaq	-208(%rbp), %rcx	#, tmp151
	leaq	-256(%rbp), %rax	#, tmp152
	movl	$10, %edx	#,
	movq	%rcx, %rsi	# tmp151,
	movq	%rax, %rdi	# tmp152,
	call	issame	#
# problem38.c:67:     assert(issame(result3, expected3, 10));
	testl	%eax, %eax	# _3
	jne	.L26	#,
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp153
	movq	%rax, %rcx	# tmp153,
	movl	$67, %edx	#,
	leaq	.LC5(%rip), %rax	#, tmp154
	movq	%rax, %rsi	# tmp154,
	leaq	.LC21(%rip), %rax	#, tmp155
	movq	%rax, %rdi	# tmp155,
	call	__assert_fail@PLT	#
.L26:
# problem38.c:69:     return 0;
	movl	$0, %eax	#, _62
# problem38.c:70: }
	movq	-8(%rbp), %rdx	# D.4847, tmp158
	subq	%fs:40, %rdx	# MEM[(<address-space-1> long unsigned int *)40B], tmp158
	je	.L28	#,
	call	__stack_chk_fail@PLT	#
.L28:
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE8:
	.size	main, .-main
	.section	.rodata
	.type	__PRETTY_FUNCTION__.0, @object
	.size	__PRETTY_FUNCTION__.0, 5
__PRETTY_FUNCTION__.0:
	.string	"main"
	.align 16
.LC0:
	.long	2147483647
	.long	0
	.long	0
	.long	0
	.align 8
.LC1:
	.long	-350469331
	.long	1058682594
	.align 4
.LC2:
	.long	1065353216
	.align 4
.LC3:
	.long	1073741824
	.align 4
.LC4:
	.long	1077936128
	.align 4
.LC7:
	.long	1084227584
	.align 4
.LC8:
	.long	-1063256064
	.align 4
.LC9:
	.long	-1069547520
	.align 4
.LC10:
	.long	1091567616
	.align 4
.LC12:
	.long	1123418112
	.align 4
.LC13:
	.long	-1054867456
	.align 4
.LC15:
	.long	1090519040
	.align 4
.LC16:
	.long	-1052770304
	.align 4
.LC17:
	.long	1082130432
	.align 4
.LC18:
	.long	1102577664
	.align 4
.LC19:
	.long	1093664768
	.align 4
.LC20:
	.long	1094713344
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
