	.file	"problem117.c"
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
	movq	%rdi, -40(%rbp)	# arr, arr
	movl	%esi, -44(%rbp)	# size, size
# problem117.c:6:     for (int i = 0; i < size; i++) {
	movl	$0, -12(%rbp)	#, i
# problem117.c:6:     for (int i = 0; i < size; i++) {
	jmp	.L2	#
.L11:
# problem117.c:7:         for (int j = i + 1; j < size; j++) {
	movl	-12(%rbp), %eax	# i, tmp114
	addl	$1, %eax	#, tmp113
	movl	%eax, -8(%rbp)	# tmp113, j
# problem117.c:7:         for (int j = i + 1; j < size; j++) {
	jmp	.L3	#
.L10:
# problem117.c:8:             count_ones = 0;
	movl	$0, -24(%rbp)	#, count_ones
# problem117.c:9:             x = arr[i];
	movl	-12(%rbp), %eax	# i, tmp115
	cltq
	leaq	0(,%rax,4), %rdx	#, _2
	movq	-40(%rbp), %rax	# arr, tmp116
	addq	%rdx, %rax	# _2, _3
# problem117.c:9:             x = arr[i];
	movl	(%rax), %eax	# *_3, tmp117
	movl	%eax, -20(%rbp)	# tmp117, x
# problem117.c:10:             y = arr[j];
	movl	-8(%rbp), %eax	# j, tmp118
	cltq
	leaq	0(,%rax,4), %rdx	#, _5
	movq	-40(%rbp), %rax	# arr, tmp119
	addq	%rdx, %rax	# _5, _6
# problem117.c:10:             y = arr[j];
	movl	(%rax), %eax	# *_6, tmp120
	movl	%eax, -16(%rbp)	# tmp120, y
# problem117.c:11:             while (x > 0) {
	jmp	.L4	#
.L5:
# problem117.c:12:                 count_ones += x & 1;
	movl	-20(%rbp), %eax	# x, tmp121
	andl	$1, %eax	#, _7
# problem117.c:12:                 count_ones += x & 1;
	addl	%eax, -24(%rbp)	# _7, count_ones
# problem117.c:13:                 x >>= 1;
	sarl	-20(%rbp)	# x
.L4:
# problem117.c:11:             while (x > 0) {
	cmpl	$0, -20(%rbp)	#, x
	jg	.L5	#,
# problem117.c:15:             x = count_ones;
	movl	-24(%rbp), %eax	# count_ones, tmp122
	movl	%eax, -20(%rbp)	# tmp122, x
# problem117.c:16:             count_ones = 0;
	movl	$0, -24(%rbp)	#, count_ones
# problem117.c:17:             while (y > 0) {
	jmp	.L6	#
.L7:
# problem117.c:18:                 count_ones += y & 1;
	movl	-16(%rbp), %eax	# y, tmp123
	andl	$1, %eax	#, _8
# problem117.c:18:                 count_ones += y & 1;
	addl	%eax, -24(%rbp)	# _8, count_ones
# problem117.c:19:                 y >>= 1;
	sarl	-16(%rbp)	# y
.L6:
# problem117.c:17:             while (y > 0) {
	cmpl	$0, -16(%rbp)	#, y
	jg	.L7	#,
# problem117.c:21:             y = count_ones;
	movl	-24(%rbp), %eax	# count_ones, tmp124
	movl	%eax, -16(%rbp)	# tmp124, y
# problem117.c:22:             if (y < x || (y == x && arr[j] < arr[i])) {
	movl	-16(%rbp), %eax	# y, tmp125
	cmpl	-20(%rbp), %eax	# x, tmp125
	jl	.L8	#,
# problem117.c:22:             if (y < x || (y == x && arr[j] < arr[i])) {
	movl	-16(%rbp), %eax	# y, tmp126
	cmpl	-20(%rbp), %eax	# x, tmp126
	jne	.L9	#,
# problem117.c:22:             if (y < x || (y == x && arr[j] < arr[i])) {
	movl	-8(%rbp), %eax	# j, tmp127
	cltq
	leaq	0(,%rax,4), %rdx	#, _10
	movq	-40(%rbp), %rax	# arr, tmp128
	addq	%rdx, %rax	# _10, _11
	movl	(%rax), %edx	# *_11, _12
# problem117.c:22:             if (y < x || (y == x && arr[j] < arr[i])) {
	movl	-12(%rbp), %eax	# i, tmp129
	cltq
	leaq	0(,%rax,4), %rcx	#, _14
	movq	-40(%rbp), %rax	# arr, tmp130
	addq	%rcx, %rax	# _14, _15
	movl	(%rax), %eax	# *_15, _16
# problem117.c:22:             if (y < x || (y == x && arr[j] < arr[i])) {
	cmpl	%eax, %edx	# _16, _12
	jge	.L9	#,
.L8:
# problem117.c:23:                 temp = arr[i];
	movl	-12(%rbp), %eax	# i, tmp131
	cltq
	leaq	0(,%rax,4), %rdx	#, _18
	movq	-40(%rbp), %rax	# arr, tmp132
	addq	%rdx, %rax	# _18, _19
# problem117.c:23:                 temp = arr[i];
	movl	(%rax), %eax	# *_19, tmp133
	movl	%eax, -4(%rbp)	# tmp133, temp
# problem117.c:24:                 arr[i] = arr[j];
	movl	-8(%rbp), %eax	# j, tmp134
	cltq
	leaq	0(,%rax,4), %rdx	#, _21
	movq	-40(%rbp), %rax	# arr, tmp135
	addq	%rdx, %rax	# _21, _22
# problem117.c:24:                 arr[i] = arr[j];
	movl	-12(%rbp), %edx	# i, tmp136
	movslq	%edx, %rdx	# tmp136, _23
	leaq	0(,%rdx,4), %rcx	#, _24
	movq	-40(%rbp), %rdx	# arr, tmp137
	addq	%rcx, %rdx	# _24, _25
# problem117.c:24:                 arr[i] = arr[j];
	movl	(%rax), %eax	# *_22, _26
# problem117.c:24:                 arr[i] = arr[j];
	movl	%eax, (%rdx)	# _26, *_25
# problem117.c:25:                 arr[j] = temp;
	movl	-8(%rbp), %eax	# j, tmp138
	cltq
	leaq	0(,%rax,4), %rdx	#, _28
	movq	-40(%rbp), %rax	# arr, tmp139
	addq	%rax, %rdx	# tmp139, _29
# problem117.c:25:                 arr[j] = temp;
	movl	-4(%rbp), %eax	# temp, tmp140
	movl	%eax, (%rdx)	# tmp140, *_29
.L9:
# problem117.c:7:         for (int j = i + 1; j < size; j++) {
	addl	$1, -8(%rbp)	#, j
.L3:
# problem117.c:7:         for (int j = i + 1; j < size; j++) {
	movl	-8(%rbp), %eax	# j, tmp141
	cmpl	-44(%rbp), %eax	# size, tmp141
	jl	.L10	#,
# problem117.c:6:     for (int i = 0; i < size; i++) {
	addl	$1, -12(%rbp)	#, i
.L2:
# problem117.c:6:     for (int i = 0; i < size; i++) {
	movl	-12(%rbp), %eax	# i, tmp142
	cmpl	-44(%rbp), %eax	# size, tmp142
	jl	.L11	#,
# problem117.c:29: }
	nop	
	nop	
	popq	%rbp	#
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
	movl	%esi, -28(%rbp)	# size_a, size_a
	movq	%rdx, -40(%rbp)	# b, b
	movl	%ecx, -32(%rbp)	# size_b, size_b
# problem117.c:37:     if (size_a != size_b) return 0;
	movl	-28(%rbp), %eax	# size_a, tmp92
	cmpl	-32(%rbp), %eax	# size_b, tmp92
	je	.L13	#,
# problem117.c:37:     if (size_a != size_b) return 0;
	movl	$0, %eax	#, _10
# problem117.c:37:     if (size_a != size_b) return 0;
	jmp	.L14	#
.L13:
# problem117.c:38:     for (int i = 0; i < size_a; i++) {
	movl	$0, -4(%rbp)	#, i
# problem117.c:38:     for (int i = 0; i < size_a; i++) {
	jmp	.L15	#
.L17:
# problem117.c:39:         if (a[i] != b[i]) return 0;
	movl	-4(%rbp), %eax	# i, tmp93
	cltq
	leaq	0(,%rax,4), %rdx	#, _2
	movq	-24(%rbp), %rax	# a, tmp94
	addq	%rdx, %rax	# _2, _3
	movl	(%rax), %edx	# *_3, _4
# problem117.c:39:         if (a[i] != b[i]) return 0;
	movl	-4(%rbp), %eax	# i, tmp95
	cltq
	leaq	0(,%rax,4), %rcx	#, _6
	movq	-40(%rbp), %rax	# b, tmp96
	addq	%rcx, %rax	# _6, _7
	movl	(%rax), %eax	# *_7, _8
# problem117.c:39:         if (a[i] != b[i]) return 0;
	cmpl	%eax, %edx	# _8, _4
	je	.L16	#,
# problem117.c:39:         if (a[i] != b[i]) return 0;
	movl	$0, %eax	#, _10
# problem117.c:39:         if (a[i] != b[i]) return 0;
	jmp	.L14	#
.L16:
# problem117.c:38:     for (int i = 0; i < size_a; i++) {
	addl	$1, -4(%rbp)	#, i
.L15:
# problem117.c:38:     for (int i = 0; i < size_a; i++) {
	movl	-4(%rbp), %eax	# i, tmp97
	cmpl	-28(%rbp), %eax	# size_a, tmp97
	jl	.L17	#,
# problem117.c:41:     return 1;
	movl	$1, %eax	#, _10
.L14:
# problem117.c:42: }
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE7:
	.size	issame, .-issame
	.section	.rodata
.LC0:
	.string	"problem117.c"
	.align 8
.LC1:
	.string	"issame(test1, 5, expected1, 5)"
	.align 8
.LC2:
	.string	"issame(test3, 5, expected3, 5)"
	.align 8
.LC3:
	.string	"issame(test4, 11, expected4, 11)"
	.align 8
.LC4:
	.string	"issame(test5, 6, expected5, 6)"
	.align 8
.LC5:
	.string	"issame(test6, 5, expected6, 5)"
.LC6:
	.string	"All tests passed!"
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
	subq	$368, %rsp	#,
# problem117.c:44: int main() {
	movq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp121
	movq	%rax, -8(%rbp)	# tmp121, D.3799
	xorl	%eax, %eax	# tmp121
# problem117.c:45:     int test1[] = {1, 5, 2, 3, 4};
	movl	$1, -368(%rbp)	#, test1[0]
	movl	$5, -364(%rbp)	#, test1[1]
	movl	$2, -360(%rbp)	#, test1[2]
	movl	$3, -356(%rbp)	#, test1[3]
	movl	$4, -352(%rbp)	#, test1[4]
# problem117.c:46:     int expected1[] = {1, 2, 4, 3, 5};
	movl	$1, -336(%rbp)	#, expected1[0]
	movl	$2, -332(%rbp)	#, expected1[1]
	movl	$4, -328(%rbp)	#, expected1[2]
	movl	$3, -324(%rbp)	#, expected1[3]
	movl	$5, -320(%rbp)	#, expected1[4]
# problem117.c:47:     func0(test1, 5);
	leaq	-368(%rbp), %rax	#, tmp89
	movl	$5, %esi	#,
	movq	%rax, %rdi	# tmp89,
	call	func0	#
# problem117.c:48:     assert(issame(test1, 5, expected1, 5));
	leaq	-336(%rbp), %rdx	#, tmp90
	leaq	-368(%rbp), %rax	#, tmp91
	movl	$5, %ecx	#,
	movl	$5, %esi	#,
	movq	%rax, %rdi	# tmp91,
	call	issame	#
# problem117.c:48:     assert(issame(test1, 5, expected1, 5));
	testl	%eax, %eax	# _1
	jne	.L19	#,
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp92
	movq	%rax, %rcx	# tmp92,
	movl	$48, %edx	#,
	leaq	.LC0(%rip), %rax	#, tmp93
	movq	%rax, %rsi	# tmp93,
	leaq	.LC1(%rip), %rax	#, tmp94
	movq	%rax, %rdi	# tmp94,
	call	__assert_fail@PLT	#
.L19:
# problem117.c:50:     int test3[] = {1, 0, 2, 3, 4};
	movl	$1, -304(%rbp)	#, test3[0]
	movl	$0, -300(%rbp)	#, test3[1]
	movl	$2, -296(%rbp)	#, test3[2]
	movl	$3, -292(%rbp)	#, test3[3]
	movl	$4, -288(%rbp)	#, test3[4]
# problem117.c:51:     int expected3[] = {0, 1, 2, 4, 3};
	movl	$0, -272(%rbp)	#, expected3[0]
	movl	$1, -268(%rbp)	#, expected3[1]
	movl	$2, -264(%rbp)	#, expected3[2]
	movl	$4, -260(%rbp)	#, expected3[3]
	movl	$3, -256(%rbp)	#, expected3[4]
# problem117.c:52:     func0(test3, 5);
	leaq	-304(%rbp), %rax	#, tmp95
	movl	$5, %esi	#,
	movq	%rax, %rdi	# tmp95,
	call	func0	#
# problem117.c:53:     assert(issame(test3, 5, expected3, 5));
	leaq	-272(%rbp), %rdx	#, tmp96
	leaq	-304(%rbp), %rax	#, tmp97
	movl	$5, %ecx	#,
	movl	$5, %esi	#,
	movq	%rax, %rdi	# tmp97,
	call	issame	#
# problem117.c:53:     assert(issame(test3, 5, expected3, 5));
	testl	%eax, %eax	# _2
	jne	.L20	#,
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp98
	movq	%rax, %rcx	# tmp98,
	movl	$53, %edx	#,
	leaq	.LC0(%rip), %rax	#, tmp99
	movq	%rax, %rsi	# tmp99,
	leaq	.LC2(%rip), %rax	#, tmp100
	movq	%rax, %rdi	# tmp100,
	call	__assert_fail@PLT	#
.L20:
# problem117.c:55:     int test4[] = {2, 5, 77, 4, 5, 3, 5, 7, 2, 3, 4};
	movl	$2, -112(%rbp)	#, test4[0]
	movl	$5, -108(%rbp)	#, test4[1]
	movl	$77, -104(%rbp)	#, test4[2]
	movl	$4, -100(%rbp)	#, test4[3]
	movl	$5, -96(%rbp)	#, test4[4]
	movl	$3, -92(%rbp)	#, test4[5]
	movl	$5, -88(%rbp)	#, test4[6]
	movl	$7, -84(%rbp)	#, test4[7]
	movl	$2, -80(%rbp)	#, test4[8]
	movl	$3, -76(%rbp)	#, test4[9]
	movl	$4, -72(%rbp)	#, test4[10]
# problem117.c:56:     int expected4[] = {2, 2, 4, 4, 3, 3, 5, 5, 5, 7, 77};
	movl	$2, -64(%rbp)	#, expected4[0]
	movl	$2, -60(%rbp)	#, expected4[1]
	movl	$4, -56(%rbp)	#, expected4[2]
	movl	$4, -52(%rbp)	#, expected4[3]
	movl	$3, -48(%rbp)	#, expected4[4]
	movl	$3, -44(%rbp)	#, expected4[5]
	movl	$5, -40(%rbp)	#, expected4[6]
	movl	$5, -36(%rbp)	#, expected4[7]
	movl	$5, -32(%rbp)	#, expected4[8]
	movl	$7, -28(%rbp)	#, expected4[9]
	movl	$77, -24(%rbp)	#, expected4[10]
# problem117.c:57:     func0(test4, 11);
	leaq	-112(%rbp), %rax	#, tmp101
	movl	$11, %esi	#,
	movq	%rax, %rdi	# tmp101,
	call	func0	#
# problem117.c:58:     assert(issame(test4, 11, expected4, 11));
	leaq	-64(%rbp), %rdx	#, tmp102
	leaq	-112(%rbp), %rax	#, tmp103
	movl	$11, %ecx	#,
	movl	$11, %esi	#,
	movq	%rax, %rdi	# tmp103,
	call	issame	#
# problem117.c:58:     assert(issame(test4, 11, expected4, 11));
	testl	%eax, %eax	# _3
	jne	.L21	#,
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp104
	movq	%rax, %rcx	# tmp104,
	movl	$58, %edx	#,
	leaq	.LC0(%rip), %rax	#, tmp105
	movq	%rax, %rsi	# tmp105,
	leaq	.LC3(%rip), %rax	#, tmp106
	movq	%rax, %rdi	# tmp106,
	call	__assert_fail@PLT	#
.L21:
# problem117.c:60:     int test5[] = {3, 6, 44, 12, 32, 5};
	movl	$3, -176(%rbp)	#, test5[0]
	movl	$6, -172(%rbp)	#, test5[1]
	movl	$44, -168(%rbp)	#, test5[2]
	movl	$12, -164(%rbp)	#, test5[3]
	movl	$32, -160(%rbp)	#, test5[4]
	movl	$5, -156(%rbp)	#, test5[5]
# problem117.c:61:     int expected5[] = {32, 3, 5, 6, 12, 44};
	movl	$32, -144(%rbp)	#, expected5[0]
	movl	$3, -140(%rbp)	#, expected5[1]
	movl	$5, -136(%rbp)	#, expected5[2]
	movl	$6, -132(%rbp)	#, expected5[3]
	movl	$12, -128(%rbp)	#, expected5[4]
	movl	$44, -124(%rbp)	#, expected5[5]
# problem117.c:62:     func0(test5, 6);
	leaq	-176(%rbp), %rax	#, tmp107
	movl	$6, %esi	#,
	movq	%rax, %rdi	# tmp107,
	call	func0	#
# problem117.c:63:     assert(issame(test5, 6, expected5, 6));
	leaq	-144(%rbp), %rdx	#, tmp108
	leaq	-176(%rbp), %rax	#, tmp109
	movl	$6, %ecx	#,
	movl	$6, %esi	#,
	movq	%rax, %rdi	# tmp109,
	call	issame	#
# problem117.c:63:     assert(issame(test5, 6, expected5, 6));
	testl	%eax, %eax	# _4
	jne	.L22	#,
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp110
	movq	%rax, %rcx	# tmp110,
	movl	$63, %edx	#,
	leaq	.LC0(%rip), %rax	#, tmp111
	movq	%rax, %rsi	# tmp111,
	leaq	.LC4(%rip), %rax	#, tmp112
	movq	%rax, %rdi	# tmp112,
	call	__assert_fail@PLT	#
.L22:
# problem117.c:65:     int test6[] = {2, 4, 8, 16, 32};
	movl	$2, -240(%rbp)	#, test6[0]
	movl	$4, -236(%rbp)	#, test6[1]
	movl	$8, -232(%rbp)	#, test6[2]
	movl	$16, -228(%rbp)	#, test6[3]
	movl	$32, -224(%rbp)	#, test6[4]
# problem117.c:66:     int expected6[] = {2, 4, 8, 16, 32};
	movl	$2, -208(%rbp)	#, expected6[0]
	movl	$4, -204(%rbp)	#, expected6[1]
	movl	$8, -200(%rbp)	#, expected6[2]
	movl	$16, -196(%rbp)	#, expected6[3]
	movl	$32, -192(%rbp)	#, expected6[4]
# problem117.c:67:     func0(test6, 5);
	leaq	-240(%rbp), %rax	#, tmp113
	movl	$5, %esi	#,
	movq	%rax, %rdi	# tmp113,
	call	func0	#
# problem117.c:68:     assert(issame(test6, 5, expected6, 5));
	leaq	-208(%rbp), %rdx	#, tmp114
	leaq	-240(%rbp), %rax	#, tmp115
	movl	$5, %ecx	#,
	movl	$5, %esi	#,
	movq	%rax, %rdi	# tmp115,
	call	issame	#
# problem117.c:68:     assert(issame(test6, 5, expected6, 5));
	testl	%eax, %eax	# _5
	jne	.L23	#,
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp116
	movq	%rax, %rcx	# tmp116,
	movl	$68, %edx	#,
	leaq	.LC0(%rip), %rax	#, tmp117
	movq	%rax, %rsi	# tmp117,
	leaq	.LC5(%rip), %rax	#, tmp118
	movq	%rax, %rdi	# tmp118,
	call	__assert_fail@PLT	#
.L23:
# problem117.c:70:     printf("All tests passed!\n");
	leaq	.LC6(%rip), %rax	#, tmp119
	movq	%rax, %rdi	# tmp119,
	call	puts@PLT	#
# problem117.c:71:     return 0;
	movl	$0, %eax	#, _87
# problem117.c:72: }
	movq	-8(%rbp), %rdx	# D.3799, tmp122
	subq	%fs:40, %rdx	# MEM[(<address-space-1> long unsigned int *)40B], tmp122
	je	.L25	#,
	call	__stack_chk_fail@PLT	#
.L25:
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
