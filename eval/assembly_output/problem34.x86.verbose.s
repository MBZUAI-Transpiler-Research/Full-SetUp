	.file	"problem34.c"
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
# problem34.c:5:     int *third = malloc((size / 3 + 1) * sizeof(int));
	movl	-44(%rbp), %eax	# size, tmp133
	movslq	%eax, %rdx	# tmp133, tmp134
	imulq	$1431655766, %rdx, %rdx	#, tmp134, tmp135
	shrq	$32, %rdx	#, tmp136
	sarl	$31, %eax	#, tmp137
	subl	%eax, %edx	# tmp137, _1
# problem34.c:5:     int *third = malloc((size / 3 + 1) * sizeof(int));
	leal	1(%rdx), %eax	#, _2
	cltq
# problem34.c:5:     int *third = malloc((size / 3 + 1) * sizeof(int));
	salq	$2, %rax	#, _4
	movq	%rax, %rdi	# _4,
	call	malloc@PLT	#
	movq	%rax, -8(%rbp)	# tmp138, third
# problem34.c:6:     int i, k = 0, third_size = 0;
	movl	$0, -24(%rbp)	#, k
# problem34.c:6:     int i, k = 0, third_size = 0;
	movl	$0, -20(%rbp)	#, third_size
# problem34.c:8:     for (i = 0; i * 3 < size; i++) {
	movl	$0, -28(%rbp)	#, i
# problem34.c:8:     for (i = 0; i * 3 < size; i++) {
	jmp	.L2	#
.L3:
# problem34.c:9:         third[i] = l[i * 3];
	movl	-28(%rbp), %edx	# i, tmp139
	movl	%edx, %eax	# tmp139, tmp140
	addl	%eax, %eax	# tmp140
	addl	%edx, %eax	# tmp139, _5
	cltq
# problem34.c:9:         third[i] = l[i * 3];
	leaq	0(,%rax,4), %rdx	#, _7
	movq	-40(%rbp), %rax	# l, tmp141
	addq	%rdx, %rax	# _7, _8
# problem34.c:9:         third[i] = l[i * 3];
	movl	-28(%rbp), %edx	# i, tmp142
	movslq	%edx, %rdx	# tmp142, _9
	leaq	0(,%rdx,4), %rcx	#, _10
	movq	-8(%rbp), %rdx	# third, tmp143
	addq	%rcx, %rdx	# _10, _11
# problem34.c:9:         third[i] = l[i * 3];
	movl	(%rax), %eax	# *_8, _12
# problem34.c:9:         third[i] = l[i * 3];
	movl	%eax, (%rdx)	# _12, *_11
# problem34.c:10:         third_size++;
	addl	$1, -20(%rbp)	#, third_size
# problem34.c:8:     for (i = 0; i * 3 < size; i++) {
	addl	$1, -28(%rbp)	#, i
.L2:
# problem34.c:8:     for (i = 0; i * 3 < size; i++) {
	movl	-28(%rbp), %edx	# i, tmp144
	movl	%edx, %eax	# tmp144, tmp145
	addl	%eax, %eax	# tmp145
	addl	%edx, %eax	# tmp144, _13
# problem34.c:8:     for (i = 0; i * 3 < size; i++) {
	cmpl	%eax, -44(%rbp)	# _13, size
	jg	.L3	#,
# problem34.c:13:     for (i = 0; i < third_size - 1; i++) {
	movl	$0, -28(%rbp)	#, i
# problem34.c:13:     for (i = 0; i < third_size - 1; i++) {
	jmp	.L4	#
.L9:
# problem34.c:14:         int min_idx = i;
	movl	-28(%rbp), %eax	# i, tmp146
	movl	%eax, -16(%rbp)	# tmp146, min_idx
# problem34.c:15:         for (k = i + 1; k < third_size; k++) {
	movl	-28(%rbp), %eax	# i, tmp150
	addl	$1, %eax	#, tmp149
	movl	%eax, -24(%rbp)	# tmp149, k
# problem34.c:15:         for (k = i + 1; k < third_size; k++) {
	jmp	.L5	#
.L7:
# problem34.c:16:             if (third[k] < third[min_idx])
	movl	-24(%rbp), %eax	# k, tmp151
	cltq
	leaq	0(,%rax,4), %rdx	#, _15
	movq	-8(%rbp), %rax	# third, tmp152
	addq	%rdx, %rax	# _15, _16
	movl	(%rax), %edx	# *_16, _17
# problem34.c:16:             if (third[k] < third[min_idx])
	movl	-16(%rbp), %eax	# min_idx, tmp153
	cltq
	leaq	0(,%rax,4), %rcx	#, _19
	movq	-8(%rbp), %rax	# third, tmp154
	addq	%rcx, %rax	# _19, _20
	movl	(%rax), %eax	# *_20, _21
# problem34.c:16:             if (third[k] < third[min_idx])
	cmpl	%eax, %edx	# _21, _17
	jge	.L6	#,
# problem34.c:17:                 min_idx = k;
	movl	-24(%rbp), %eax	# k, tmp155
	movl	%eax, -16(%rbp)	# tmp155, min_idx
.L6:
# problem34.c:15:         for (k = i + 1; k < third_size; k++) {
	addl	$1, -24(%rbp)	#, k
.L5:
# problem34.c:15:         for (k = i + 1; k < third_size; k++) {
	movl	-24(%rbp), %eax	# k, tmp156
	cmpl	-20(%rbp), %eax	# third_size, tmp156
	jl	.L7	#,
# problem34.c:19:         if (min_idx != i) {
	movl	-16(%rbp), %eax	# min_idx, tmp157
	cmpl	-28(%rbp), %eax	# i, tmp157
	je	.L8	#,
# problem34.c:20:             int temp = third[i];
	movl	-28(%rbp), %eax	# i, tmp158
	cltq
	leaq	0(,%rax,4), %rdx	#, _23
	movq	-8(%rbp), %rax	# third, tmp159
	addq	%rdx, %rax	# _23, _24
# problem34.c:20:             int temp = third[i];
	movl	(%rax), %eax	# *_24, tmp160
	movl	%eax, -12(%rbp)	# tmp160, temp
# problem34.c:21:             third[i] = third[min_idx];
	movl	-16(%rbp), %eax	# min_idx, tmp161
	cltq
	leaq	0(,%rax,4), %rdx	#, _26
	movq	-8(%rbp), %rax	# third, tmp162
	addq	%rdx, %rax	# _26, _27
# problem34.c:21:             third[i] = third[min_idx];
	movl	-28(%rbp), %edx	# i, tmp163
	movslq	%edx, %rdx	# tmp163, _28
	leaq	0(,%rdx,4), %rcx	#, _29
	movq	-8(%rbp), %rdx	# third, tmp164
	addq	%rcx, %rdx	# _29, _30
# problem34.c:21:             third[i] = third[min_idx];
	movl	(%rax), %eax	# *_27, _31
# problem34.c:21:             third[i] = third[min_idx];
	movl	%eax, (%rdx)	# _31, *_30
# problem34.c:22:             third[min_idx] = temp;
	movl	-16(%rbp), %eax	# min_idx, tmp165
	cltq
	leaq	0(,%rax,4), %rdx	#, _33
	movq	-8(%rbp), %rax	# third, tmp166
	addq	%rax, %rdx	# tmp166, _34
# problem34.c:22:             third[min_idx] = temp;
	movl	-12(%rbp), %eax	# temp, tmp167
	movl	%eax, (%rdx)	# tmp167, *_34
.L8:
# problem34.c:13:     for (i = 0; i < third_size - 1; i++) {
	addl	$1, -28(%rbp)	#, i
.L4:
# problem34.c:13:     for (i = 0; i < third_size - 1; i++) {
	movl	-20(%rbp), %eax	# third_size, tmp168
	subl	$1, %eax	#, _35
# problem34.c:13:     for (i = 0; i < third_size - 1; i++) {
	cmpl	%eax, -28(%rbp)	# _35, i
	jl	.L9	#,
# problem34.c:26:     for (i = 0; i < size; i++) {
	movl	$0, -28(%rbp)	#, i
# problem34.c:26:     for (i = 0; i < size; i++) {
	jmp	.L10	#
.L13:
# problem34.c:27:         if (i % 3 == 0) {
	movl	-28(%rbp), %ecx	# i, tmp169
	movslq	%ecx, %rax	# tmp169, tmp170
	imulq	$1431655766, %rax, %rax	#, tmp170, tmp171
	shrq	$32, %rax	#, tmp171
	movq	%rax, %rdx	# tmp171, tmp172
	movl	%ecx, %eax	# tmp169, tmp173
	sarl	$31, %eax	#, tmp173
	subl	%eax, %edx	# tmp173, _36
	movl	%edx, %eax	# _36, tmp174
	addl	%eax, %eax	# tmp174
	addl	%edx, %eax	# _36, tmp174
	subl	%eax, %ecx	# tmp174, tmp169
	movl	%ecx, %edx	# tmp169, _36
# problem34.c:27:         if (i % 3 == 0) {
	testl	%edx, %edx	# _36
	jne	.L11	#,
# problem34.c:28:             out[i] = third[i / 3];
	movl	-28(%rbp), %eax	# i, tmp175
	movslq	%eax, %rdx	# tmp175, tmp176
	imulq	$1431655766, %rdx, %rdx	#, tmp176, tmp177
	shrq	$32, %rdx	#, tmp178
	sarl	$31, %eax	#, tmp179
	subl	%eax, %edx	# tmp179, _37
	movslq	%edx, %rax	# _37, _38
# problem34.c:28:             out[i] = third[i / 3];
	leaq	0(,%rax,4), %rdx	#, _39
	movq	-8(%rbp), %rax	# third, tmp180
	addq	%rdx, %rax	# _39, _40
# problem34.c:28:             out[i] = third[i / 3];
	movl	-28(%rbp), %edx	# i, tmp181
	movslq	%edx, %rdx	# tmp181, _41
	leaq	0(,%rdx,4), %rcx	#, _42
	movq	-56(%rbp), %rdx	# out, tmp182
	addq	%rcx, %rdx	# _42, _43
# problem34.c:28:             out[i] = third[i / 3];
	movl	(%rax), %eax	# *_40, _44
# problem34.c:28:             out[i] = third[i / 3];
	movl	%eax, (%rdx)	# _44, *_43
	jmp	.L12	#
.L11:
# problem34.c:30:             out[i] = l[i];
	movl	-28(%rbp), %eax	# i, tmp183
	cltq
	leaq	0(,%rax,4), %rdx	#, _46
	movq	-40(%rbp), %rax	# l, tmp184
	addq	%rdx, %rax	# _46, _47
# problem34.c:30:             out[i] = l[i];
	movl	-28(%rbp), %edx	# i, tmp185
	movslq	%edx, %rdx	# tmp185, _48
	leaq	0(,%rdx,4), %rcx	#, _49
	movq	-56(%rbp), %rdx	# out, tmp186
	addq	%rcx, %rdx	# _49, _50
# problem34.c:30:             out[i] = l[i];
	movl	(%rax), %eax	# *_47, _51
# problem34.c:30:             out[i] = l[i];
	movl	%eax, (%rdx)	# _51, *_50
.L12:
# problem34.c:26:     for (i = 0; i < size; i++) {
	addl	$1, -28(%rbp)	#, i
.L10:
# problem34.c:26:     for (i = 0; i < size; i++) {
	movl	-28(%rbp), %eax	# i, tmp187
	cmpl	-44(%rbp), %eax	# size, tmp187
	jl	.L13	#,
# problem34.c:34:     free(third);
	movq	-8(%rbp), %rax	# third, tmp188
	movq	%rax, %rdi	# tmp188,
	call	free@PLT	#
# problem34.c:35: }
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
# problem34.c:43:     for (int i = 0; i < size; i++) {
	movl	$0, -4(%rbp)	#, i
# problem34.c:43:     for (int i = 0; i < size; i++) {
	jmp	.L15	#
.L18:
# problem34.c:44:         if (a[i] != b[i]) return 0;
	movl	-4(%rbp), %eax	# i, tmp92
	cltq
	leaq	0(,%rax,4), %rdx	#, _2
	movq	-24(%rbp), %rax	# a, tmp93
	addq	%rdx, %rax	# _2, _3
	movl	(%rax), %edx	# *_3, _4
# problem34.c:44:         if (a[i] != b[i]) return 0;
	movl	-4(%rbp), %eax	# i, tmp94
	cltq
	leaq	0(,%rax,4), %rcx	#, _6
	movq	-32(%rbp), %rax	# b, tmp95
	addq	%rcx, %rax	# _6, _7
	movl	(%rax), %eax	# *_7, _8
# problem34.c:44:         if (a[i] != b[i]) return 0;
	cmpl	%eax, %edx	# _8, _4
	je	.L16	#,
# problem34.c:44:         if (a[i] != b[i]) return 0;
	movl	$0, %eax	#, _10
# problem34.c:44:         if (a[i] != b[i]) return 0;
	jmp	.L17	#
.L16:
# problem34.c:43:     for (int i = 0; i < size; i++) {
	addl	$1, -4(%rbp)	#, i
.L15:
# problem34.c:43:     for (int i = 0; i < size; i++) {
	movl	-4(%rbp), %eax	# i, tmp96
	cmpl	-36(%rbp), %eax	# size, tmp96
	jl	.L18	#,
# problem34.c:46:     return 1;
	movl	$1, %eax	#, _10
.L17:
# problem34.c:47: }
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE7:
	.size	issame, .-issame
	.section	.rodata
.LC0:
	.string	"problem34.c"
.LC1:
	.string	"issame(result1, result1, 3)"
.LC2:
	.string	"issame(result2, result2, 11)"
.LC3:
	.string	"issame(result3, result3, 10)"
.LC4:
	.string	"issame(result4, correct4, 7)"
.LC5:
	.string	"issame(result5, correct5, 7)"
.LC6:
	.string	"issame(result6, correct6, 7)"
.LC7:
	.string	"issame(result7, correct7, 8)"
.LC8:
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
	subq	$624, %rsp	#,
# problem34.c:49: int main() {
	movq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp142
	movq	%rax, -8(%rbp)	# tmp142, D.3818
	xorl	%eax, %eax	# tmp142
# problem34.c:50:     int test1[] = {1, 2, 3};
	movl	$1, -616(%rbp)	#, test1[0]
	movl	$2, -612(%rbp)	#, test1[1]
	movl	$3, -608(%rbp)	#, test1[2]
# problem34.c:52:     func0(test1, 3, result1);
	leaq	-604(%rbp), %rdx	#, tmp91
	leaq	-616(%rbp), %rax	#, tmp92
	movl	$3, %esi	#,
	movq	%rax, %rdi	# tmp92,
	call	func0	#
# problem34.c:53:     assert(issame(result1, result1, 3));
	leaq	-604(%rbp), %rcx	#, tmp93
	leaq	-604(%rbp), %rax	#, tmp94
	movl	$3, %edx	#,
	movq	%rcx, %rsi	# tmp93,
	movq	%rax, %rdi	# tmp94,
	call	issame	#
# problem34.c:53:     assert(issame(result1, result1, 3));
	testl	%eax, %eax	# _1
	jne	.L20	#,
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp95
	movq	%rax, %rcx	# tmp95,
	movl	$53, %edx	#,
	leaq	.LC0(%rip), %rax	#, tmp96
	movq	%rax, %rsi	# tmp96,
	leaq	.LC1(%rip), %rax	#, tmp97
	movq	%rax, %rdi	# tmp97,
	call	__assert_fail@PLT	#
.L20:
# problem34.c:55:     int test2[] = {5, 3, -5, 2, -3, 3, 9, 0, 123, 1, -10};
	movl	$5, -112(%rbp)	#, test2[0]
	movl	$3, -108(%rbp)	#, test2[1]
	movl	$-5, -104(%rbp)	#, test2[2]
	movl	$2, -100(%rbp)	#, test2[3]
	movl	$-3, -96(%rbp)	#, test2[4]
	movl	$3, -92(%rbp)	#, test2[5]
	movl	$9, -88(%rbp)	#, test2[6]
	movl	$0, -84(%rbp)	#, test2[7]
	movl	$123, -80(%rbp)	#, test2[8]
	movl	$1, -76(%rbp)	#, test2[9]
	movl	$-10, -72(%rbp)	#, test2[10]
# problem34.c:57:     func0(test2, 11, result2);
	leaq	-64(%rbp), %rdx	#, tmp98
	leaq	-112(%rbp), %rax	#, tmp99
	movl	$11, %esi	#,
	movq	%rax, %rdi	# tmp99,
	call	func0	#
# problem34.c:58:     assert(issame(result2, result2, 11));
	leaq	-64(%rbp), %rcx	#, tmp100
	leaq	-64(%rbp), %rax	#, tmp101
	movl	$11, %edx	#,
	movq	%rcx, %rsi	# tmp100,
	movq	%rax, %rdi	# tmp101,
	call	issame	#
# problem34.c:58:     assert(issame(result2, result2, 11));
	testl	%eax, %eax	# _2
	jne	.L21	#,
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp102
	movq	%rax, %rcx	# tmp102,
	movl	$58, %edx	#,
	leaq	.LC0(%rip), %rax	#, tmp103
	movq	%rax, %rsi	# tmp103,
	leaq	.LC2(%rip), %rax	#, tmp104
	movq	%rax, %rdi	# tmp104,
	call	__assert_fail@PLT	#
.L21:
# problem34.c:60:     int test3[] = {5, 8, -12, 4, 23, 2, 3, 11, 12, -10};
	movl	$5, -208(%rbp)	#, test3[0]
	movl	$8, -204(%rbp)	#, test3[1]
	movl	$-12, -200(%rbp)	#, test3[2]
	movl	$4, -196(%rbp)	#, test3[3]
	movl	$23, -192(%rbp)	#, test3[4]
	movl	$2, -188(%rbp)	#, test3[5]
	movl	$3, -184(%rbp)	#, test3[6]
	movl	$11, -180(%rbp)	#, test3[7]
	movl	$12, -176(%rbp)	#, test3[8]
	movl	$-10, -172(%rbp)	#, test3[9]
# problem34.c:62:     func0(test3, 10, result3);
	leaq	-160(%rbp), %rdx	#, tmp105
	leaq	-208(%rbp), %rax	#, tmp106
	movl	$10, %esi	#,
	movq	%rax, %rdi	# tmp106,
	call	func0	#
# problem34.c:63:     assert(issame(result3, result3, 10));
	leaq	-160(%rbp), %rcx	#, tmp107
	leaq	-160(%rbp), %rax	#, tmp108
	movl	$10, %edx	#,
	movq	%rcx, %rsi	# tmp107,
	movq	%rax, %rdi	# tmp108,
	call	issame	#
# problem34.c:63:     assert(issame(result3, result3, 10));
	testl	%eax, %eax	# _3
	jne	.L22	#,
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp109
	movq	%rax, %rcx	# tmp109,
	movl	$63, %edx	#,
	leaq	.LC0(%rip), %rax	#, tmp110
	movq	%rax, %rsi	# tmp110,
	leaq	.LC3(%rip), %rax	#, tmp111
	movq	%rax, %rdi	# tmp111,
	call	__assert_fail@PLT	#
.L22:
# problem34.c:65:     int test4[] = {5, 6, 3, 4, 8, 9, 2};
	movl	$5, -592(%rbp)	#, test4[0]
	movl	$6, -588(%rbp)	#, test4[1]
	movl	$3, -584(%rbp)	#, test4[2]
	movl	$4, -580(%rbp)	#, test4[3]
	movl	$8, -576(%rbp)	#, test4[4]
	movl	$9, -572(%rbp)	#, test4[5]
	movl	$2, -568(%rbp)	#, test4[6]
# problem34.c:66:     int correct4[] = {2, 6, 3, 4, 8, 9, 5};
	movl	$2, -560(%rbp)	#, correct4[0]
	movl	$6, -556(%rbp)	#, correct4[1]
	movl	$3, -552(%rbp)	#, correct4[2]
	movl	$4, -548(%rbp)	#, correct4[3]
	movl	$8, -544(%rbp)	#, correct4[4]
	movl	$9, -540(%rbp)	#, correct4[5]
	movl	$5, -536(%rbp)	#, correct4[6]
# problem34.c:68:     func0(test4, 7, result4);
	leaq	-528(%rbp), %rdx	#, tmp112
	leaq	-592(%rbp), %rax	#, tmp113
	movl	$7, %esi	#,
	movq	%rax, %rdi	# tmp113,
	call	func0	#
# problem34.c:69:     assert(issame(result4, correct4, 7));
	leaq	-560(%rbp), %rcx	#, tmp114
	leaq	-528(%rbp), %rax	#, tmp115
	movl	$7, %edx	#,
	movq	%rcx, %rsi	# tmp114,
	movq	%rax, %rdi	# tmp115,
	call	issame	#
# problem34.c:69:     assert(issame(result4, correct4, 7));
	testl	%eax, %eax	# _4
	jne	.L23	#,
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp116
	movq	%rax, %rcx	# tmp116,
	movl	$69, %edx	#,
	leaq	.LC0(%rip), %rax	#, tmp117
	movq	%rax, %rsi	# tmp117,
	leaq	.LC4(%rip), %rax	#, tmp118
	movq	%rax, %rdi	# tmp118,
	call	__assert_fail@PLT	#
.L23:
# problem34.c:71:     int test5[] = {5, 8, 3, 4, 6, 9, 2};
	movl	$5, -496(%rbp)	#, test5[0]
	movl	$8, -492(%rbp)	#, test5[1]
	movl	$3, -488(%rbp)	#, test5[2]
	movl	$4, -484(%rbp)	#, test5[3]
	movl	$6, -480(%rbp)	#, test5[4]
	movl	$9, -476(%rbp)	#, test5[5]
	movl	$2, -472(%rbp)	#, test5[6]
# problem34.c:72:     int correct5[] = {2, 8, 3, 4, 6, 9, 5};
	movl	$2, -464(%rbp)	#, correct5[0]
	movl	$8, -460(%rbp)	#, correct5[1]
	movl	$3, -456(%rbp)	#, correct5[2]
	movl	$4, -452(%rbp)	#, correct5[3]
	movl	$6, -448(%rbp)	#, correct5[4]
	movl	$9, -444(%rbp)	#, correct5[5]
	movl	$5, -440(%rbp)	#, correct5[6]
# problem34.c:74:     func0(test5, 7, result5);
	leaq	-432(%rbp), %rdx	#, tmp119
	leaq	-496(%rbp), %rax	#, tmp120
	movl	$7, %esi	#,
	movq	%rax, %rdi	# tmp120,
	call	func0	#
# problem34.c:75:     assert(issame(result5, correct5, 7));
	leaq	-464(%rbp), %rcx	#, tmp121
	leaq	-432(%rbp), %rax	#, tmp122
	movl	$7, %edx	#,
	movq	%rcx, %rsi	# tmp121,
	movq	%rax, %rdi	# tmp122,
	call	issame	#
# problem34.c:75:     assert(issame(result5, correct5, 7));
	testl	%eax, %eax	# _5
	jne	.L24	#,
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp123
	movq	%rax, %rcx	# tmp123,
	movl	$75, %edx	#,
	leaq	.LC0(%rip), %rax	#, tmp124
	movq	%rax, %rsi	# tmp124,
	leaq	.LC5(%rip), %rax	#, tmp125
	movq	%rax, %rdi	# tmp125,
	call	__assert_fail@PLT	#
.L24:
# problem34.c:77:     int test6[] = {5, 6, 9, 4, 8, 3, 2};
	movl	$5, -400(%rbp)	#, test6[0]
	movl	$6, -396(%rbp)	#, test6[1]
	movl	$9, -392(%rbp)	#, test6[2]
	movl	$4, -388(%rbp)	#, test6[3]
	movl	$8, -384(%rbp)	#, test6[4]
	movl	$3, -380(%rbp)	#, test6[5]
	movl	$2, -376(%rbp)	#, test6[6]
# problem34.c:78:     int correct6[] = {2, 6, 9, 4, 8, 3, 5};
	movl	$2, -368(%rbp)	#, correct6[0]
	movl	$6, -364(%rbp)	#, correct6[1]
	movl	$9, -360(%rbp)	#, correct6[2]
	movl	$4, -356(%rbp)	#, correct6[3]
	movl	$8, -352(%rbp)	#, correct6[4]
	movl	$3, -348(%rbp)	#, correct6[5]
	movl	$5, -344(%rbp)	#, correct6[6]
# problem34.c:80:     func0(test6, 7, result6);
	leaq	-336(%rbp), %rdx	#, tmp126
	leaq	-400(%rbp), %rax	#, tmp127
	movl	$7, %esi	#,
	movq	%rax, %rdi	# tmp127,
	call	func0	#
# problem34.c:81:     assert(issame(result6, correct6, 7));
	leaq	-368(%rbp), %rcx	#, tmp128
	leaq	-336(%rbp), %rax	#, tmp129
	movl	$7, %edx	#,
	movq	%rcx, %rsi	# tmp128,
	movq	%rax, %rdi	# tmp129,
	call	issame	#
# problem34.c:81:     assert(issame(result6, correct6, 7));
	testl	%eax, %eax	# _6
	jne	.L25	#,
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp130
	movq	%rax, %rcx	# tmp130,
	movl	$81, %edx	#,
	leaq	.LC0(%rip), %rax	#, tmp131
	movq	%rax, %rsi	# tmp131,
	leaq	.LC6(%rip), %rax	#, tmp132
	movq	%rax, %rdi	# tmp132,
	call	__assert_fail@PLT	#
.L25:
# problem34.c:83:     int test7[] = {5, 6, 3, 4, 8, 9, 2, 1};
	movl	$5, -304(%rbp)	#, test7[0]
	movl	$6, -300(%rbp)	#, test7[1]
	movl	$3, -296(%rbp)	#, test7[2]
	movl	$4, -292(%rbp)	#, test7[3]
	movl	$8, -288(%rbp)	#, test7[4]
	movl	$9, -284(%rbp)	#, test7[5]
	movl	$2, -280(%rbp)	#, test7[6]
	movl	$1, -276(%rbp)	#, test7[7]
# problem34.c:84:     int correct7[] = {2, 6, 3, 4, 8, 9, 5, 1};
	movl	$2, -272(%rbp)	#, correct7[0]
	movl	$6, -268(%rbp)	#, correct7[1]
	movl	$3, -264(%rbp)	#, correct7[2]
	movl	$4, -260(%rbp)	#, correct7[3]
	movl	$8, -256(%rbp)	#, correct7[4]
	movl	$9, -252(%rbp)	#, correct7[5]
	movl	$5, -248(%rbp)	#, correct7[6]
	movl	$1, -244(%rbp)	#, correct7[7]
# problem34.c:86:     func0(test7, 8, result7);
	leaq	-240(%rbp), %rdx	#, tmp133
	leaq	-304(%rbp), %rax	#, tmp134
	movl	$8, %esi	#,
	movq	%rax, %rdi	# tmp134,
	call	func0	#
# problem34.c:87:     assert(issame(result7, correct7, 8));
	leaq	-272(%rbp), %rcx	#, tmp135
	leaq	-240(%rbp), %rax	#, tmp136
	movl	$8, %edx	#,
	movq	%rcx, %rsi	# tmp135,
	movq	%rax, %rdi	# tmp136,
	call	issame	#
# problem34.c:87:     assert(issame(result7, correct7, 8));
	testl	%eax, %eax	# _7
	jne	.L26	#,
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp137
	movq	%rax, %rcx	# tmp137,
	movl	$87, %edx	#,
	leaq	.LC0(%rip), %rax	#, tmp138
	movq	%rax, %rsi	# tmp138,
	leaq	.LC7(%rip), %rax	#, tmp139
	movq	%rax, %rdi	# tmp139,
	call	__assert_fail@PLT	#
.L26:
# problem34.c:89:     printf("All tests passed!\n");
	leaq	.LC8(%rip), %rax	#, tmp140
	movq	%rax, %rdi	# tmp140,
	call	puts@PLT	#
# problem34.c:90:     return 0;
	movl	$0, %eax	#, _113
# problem34.c:91: }
	movq	-8(%rbp), %rdx	# D.3818, tmp143
	subq	%fs:40, %rdx	# MEM[(<address-space-1> long unsigned int *)40B], tmp143
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
