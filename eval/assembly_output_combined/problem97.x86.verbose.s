	.file	"problem97.c"
# GNU C17 (Ubuntu 11.4.0-1ubuntu1~22.04) version 11.4.0 (x86_64-linux-gnu)
#	compiled by GNU C version 11.4.0, GMP version 6.2.1, MPFR version 4.1.0, MPC version 1.2.1, isl version isl-0.24-GMP

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
	subq	$48, %rsp	#,
	movl	%edi, -36(%rbp)	# n, n
	movq	%rsi, -48(%rbp)	# count, count
# problem97.c:5:     int *out = malloc(n * sizeof(int));
	movl	-36(%rbp), %eax	# n, tmp98
	cltq
	salq	$2, %rax	#, _2
	movq	%rax, %rdi	# _2,
	call	malloc@PLT	#
	movq	%rax, -8(%rbp)	# tmp99, out
# problem97.c:6:     *count = 0;
	movq	-48(%rbp), %rax	# count, tmp100
	movl	$0, (%rax)	#, *count_24(D)
# problem97.c:9:     for (i = 2; i < n; i++) {
	movl	$2, -24(%rbp)	#, i
# problem97.c:9:     for (i = 2; i < n; i++) {
	jmp	.L2	#
.L9:
# problem97.c:10:         isp = 1;
	movl	$1, -16(%rbp)	#, isp
# problem97.c:11:         for (j = 0; j < *count; j++) {
	movl	$0, -20(%rbp)	#, j
# problem97.c:11:         for (j = 0; j < *count; j++) {
	jmp	.L3	#
.L7:
# problem97.c:12:             k = out[j];
	movl	-20(%rbp), %eax	# j, tmp101
	cltq
	leaq	0(,%rax,4), %rdx	#, _4
	movq	-8(%rbp), %rax	# out, tmp102
	addq	%rdx, %rax	# _4, _5
# problem97.c:12:             k = out[j];
	movl	(%rax), %eax	# *_5, tmp103
	movl	%eax, -12(%rbp)	# tmp103, k
# problem97.c:13:             if (k * k > i) break;
	movl	-12(%rbp), %eax	# k, tmp104
	imull	%eax, %eax	# tmp104, _6
# problem97.c:13:             if (k * k > i) break;
	cmpl	%eax, -24(%rbp)	# _6, i
	jl	.L11	#,
# problem97.c:14:             if (i % k == 0) {
	movl	-24(%rbp), %eax	# i, tmp105
	cltd
	idivl	-12(%rbp)	# k
	movl	%edx, %eax	# tmp106, _7
# problem97.c:14:             if (i % k == 0) {
	testl	%eax, %eax	# _7
	jne	.L6	#,
# problem97.c:15:                 isp = 0;
	movl	$0, -16(%rbp)	#, isp
# problem97.c:16:                 break;
	jmp	.L5	#
.L6:
# problem97.c:11:         for (j = 0; j < *count; j++) {
	addl	$1, -20(%rbp)	#, j
.L3:
# problem97.c:11:         for (j = 0; j < *count; j++) {
	movq	-48(%rbp), %rax	# count, tmp108
	movl	(%rax), %eax	# *count_24(D), _8
# problem97.c:11:         for (j = 0; j < *count; j++) {
	cmpl	%eax, -20(%rbp)	# _8, j
	jl	.L7	#,
	jmp	.L5	#
.L11:
# problem97.c:13:             if (k * k > i) break;
	nop	
.L5:
# problem97.c:19:         if (isp) {
	cmpl	$0, -16(%rbp)	#, isp
	je	.L8	#,
# problem97.c:20:             out[*count] = i;
	movq	-48(%rbp), %rax	# count, tmp109
	movl	(%rax), %eax	# *count_24(D), _9
	cltq
# problem97.c:20:             out[*count] = i;
	leaq	0(,%rax,4), %rdx	#, _11
	movq	-8(%rbp), %rax	# out, tmp110
	addq	%rax, %rdx	# tmp110, _12
# problem97.c:20:             out[*count] = i;
	movl	-24(%rbp), %eax	# i, tmp111
	movl	%eax, (%rdx)	# tmp111, *_12
# problem97.c:21:             (*count)++;
	movq	-48(%rbp), %rax	# count, tmp112
	movl	(%rax), %eax	# *count_24(D), _13
# problem97.c:21:             (*count)++;
	leal	1(%rax), %edx	#, _14
	movq	-48(%rbp), %rax	# count, tmp113
	movl	%edx, (%rax)	# _14, *count_24(D)
.L8:
# problem97.c:9:     for (i = 2; i < n; i++) {
	addl	$1, -24(%rbp)	#, i
.L2:
# problem97.c:9:     for (i = 2; i < n; i++) {
	movl	-24(%rbp), %eax	# i, tmp114
	cmpl	-36(%rbp), %eax	# n, tmp114
	jl	.L9	#,
# problem97.c:24:     return out;
	movq	-8(%rbp), %rax	# out, _27
# problem97.c:25: }
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
	movl	%esi, -28(%rbp)	# a_count, a_count
	movq	%rdx, -40(%rbp)	# b, b
	movl	%ecx, -32(%rbp)	# b_count, b_count
# problem97.c:34:     if (a_count != b_count) return 0;
	movl	-28(%rbp), %eax	# a_count, tmp92
	cmpl	-32(%rbp), %eax	# b_count, tmp92
	je	.L13	#,
# problem97.c:34:     if (a_count != b_count) return 0;
	movl	$0, %eax	#, _10
	jmp	.L14	#
.L13:
# problem97.c:35:     for (int i = 0; i < a_count; i++) {
	movl	$0, -4(%rbp)	#, i
# problem97.c:35:     for (int i = 0; i < a_count; i++) {
	jmp	.L15	#
.L17:
# problem97.c:36:         if (a[i] != b[i]) return 0;
	movl	-4(%rbp), %eax	# i, tmp93
	cltq
	leaq	0(,%rax,4), %rdx	#, _2
	movq	-24(%rbp), %rax	# a, tmp94
	addq	%rdx, %rax	# _2, _3
	movl	(%rax), %edx	# *_3, _4
# problem97.c:36:         if (a[i] != b[i]) return 0;
	movl	-4(%rbp), %eax	# i, tmp95
	cltq
	leaq	0(,%rax,4), %rcx	#, _6
	movq	-40(%rbp), %rax	# b, tmp96
	addq	%rcx, %rax	# _6, _7
	movl	(%rax), %eax	# *_7, _8
# problem97.c:36:         if (a[i] != b[i]) return 0;
	cmpl	%eax, %edx	# _8, _4
	je	.L16	#,
# problem97.c:36:         if (a[i] != b[i]) return 0;
	movl	$0, %eax	#, _10
	jmp	.L14	#
.L16:
# problem97.c:35:     for (int i = 0; i < a_count; i++) {
	addl	$1, -4(%rbp)	#, i
.L15:
# problem97.c:35:     for (int i = 0; i < a_count; i++) {
	movl	-4(%rbp), %eax	# i, tmp97
	cmpl	-28(%rbp), %eax	# a_count, tmp97
	jl	.L17	#,
# problem97.c:38:     return 1;
	movl	$1, %eax	#, _10
.L14:
# problem97.c:39: }
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE7:
	.size	issame, .-issame
	.section	.rodata
.LC0:
	.string	"problem97.c"
	.align 8
.LC1:
	.string	"issame(result, count, (int[]){2, 3}, 2)"
	.align 8
.LC2:
	.string	"issame(result, count, (int[]){2, 3, 5}, 3)"
	.align 8
.LC3:
	.string	"issame(result, count, (int[]){2, 3, 5, 7}, 4)"
.LC4:
	.string	"count == 0"
	.align 8
.LC5:
	.string	"issame(result, count, (int[]){2, 3, 5, 7, 11, 13, 17, 19}, 8)"
	.align 8
.LC6:
	.string	"issame(result, count, (int[]){2, 3, 5, 7, 11, 13, 17}, 7)"
	.align 8
.LC7:
	.string	"issame(result, count, (int[]){2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37, 41, 43}, 14)"
	.align 8
.LC8:
	.string	"issame(result, count, expected, 25)"
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
	subq	$192, %rsp	#,
# problem97.c:41: int main() {
	movq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp179
	movq	%rax, -8(%rbp)	# tmp179, D.3166
	xorl	%eax, %eax	# tmp179
# problem97.c:43:     int expected[] = {2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37, 41, 43, 47, 53, 59, 61, 67, 71, 73, 79, 83, 89, 97};
	movl	$2, -112(%rbp)	#, MEM[(int[25] *)_152][0]
	movl	$3, -108(%rbp)	#, MEM[(int[25] *)_152][1]
	movl	$5, -104(%rbp)	#, MEM[(int[25] *)_152][2]
	movl	$7, -100(%rbp)	#, MEM[(int[25] *)_152][3]
	movl	$11, -96(%rbp)	#, MEM[(int[25] *)_152][4]
	movl	$13, -92(%rbp)	#, MEM[(int[25] *)_152][5]
	movl	$17, -88(%rbp)	#, MEM[(int[25] *)_152][6]
	movl	$19, -84(%rbp)	#, MEM[(int[25] *)_152][7]
	movl	$23, -80(%rbp)	#, MEM[(int[25] *)_152][8]
	movl	$29, -76(%rbp)	#, MEM[(int[25] *)_152][9]
	movl	$31, -72(%rbp)	#, MEM[(int[25] *)_152][10]
	movl	$37, -68(%rbp)	#, MEM[(int[25] *)_152][11]
	movl	$41, -64(%rbp)	#, MEM[(int[25] *)_152][12]
	movl	$43, -60(%rbp)	#, MEM[(int[25] *)_152][13]
	movl	$47, -56(%rbp)	#, MEM[(int[25] *)_152][14]
	movl	$53, -52(%rbp)	#, MEM[(int[25] *)_152][15]
	movl	$59, -48(%rbp)	#, MEM[(int[25] *)_152][16]
	movl	$61, -44(%rbp)	#, MEM[(int[25] *)_152][17]
	movl	$67, -40(%rbp)	#, MEM[(int[25] *)_152][18]
	movl	$71, -36(%rbp)	#, MEM[(int[25] *)_152][19]
	movl	$73, -32(%rbp)	#, MEM[(int[25] *)_152][20]
	movl	$79, -28(%rbp)	#, MEM[(int[25] *)_152][21]
	movl	$83, -24(%rbp)	#, MEM[(int[25] *)_152][22]
	movl	$89, -20(%rbp)	#, MEM[(int[25] *)_152][23]
	movl	$97, -16(%rbp)	#, MEM[(int[25] *)_152][24]
# problem97.c:45:     int *result = func0(5, &count);
	leaq	-188(%rbp), %rax	#, tmp102
	movq	%rax, %rsi	# tmp102,
	movl	$5, %edi	#,
	call	func0	#
	movq	%rax, -184(%rbp)	# tmp103, result
# problem97.c:46:     assert(issame(result, count, (int[]){2, 3}, 2));
	movl	$2, -176(%rbp)	#, MEM[(int[2] *)_153][0]
	movl	$3, -172(%rbp)	#, MEM[(int[2] *)_153][1]
	movl	-188(%rbp), %esi	# count, count.0_1
	leaq	-176(%rbp), %rdx	#, tmp104
	movq	-184(%rbp), %rax	# result, tmp105
	movl	$2, %ecx	#,
	movq	%rax, %rdi	# tmp105,
	call	issame	#
	testl	%eax, %eax	# _2
	jne	.L19	#,
# problem97.c:46:     assert(issame(result, count, (int[]){2, 3}, 2));
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp106
	movq	%rax, %rcx	# tmp106,
	movl	$46, %edx	#,
	leaq	.LC0(%rip), %rax	#, tmp107
	movq	%rax, %rsi	# tmp107,
	leaq	.LC1(%rip), %rax	#, tmp108
	movq	%rax, %rdi	# tmp108,
	call	__assert_fail@PLT	#
.L19:
# problem97.c:47:     free(result);
	movq	-184(%rbp), %rax	# result, tmp109
	movq	%rax, %rdi	# tmp109,
	call	free@PLT	#
# problem97.c:49:     result = func0(6, &count);
	leaq	-188(%rbp), %rax	#, tmp110
	movq	%rax, %rsi	# tmp110,
	movl	$6, %edi	#,
	call	func0	#
	movq	%rax, -184(%rbp)	# tmp111, result
# problem97.c:50:     assert(issame(result, count, (int[]){2, 3, 5}, 3));
	movl	$2, -176(%rbp)	#, MEM[(int[3] *)_153][0]
	movl	$3, -172(%rbp)	#, MEM[(int[3] *)_153][1]
	movl	$5, -168(%rbp)	#, MEM[(int[3] *)_153][2]
	movl	-188(%rbp), %esi	# count, count.1_3
	leaq	-176(%rbp), %rdx	#, tmp112
	movq	-184(%rbp), %rax	# result, tmp113
	movl	$3, %ecx	#,
	movq	%rax, %rdi	# tmp113,
	call	issame	#
	testl	%eax, %eax	# _4
	jne	.L20	#,
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp114
	movq	%rax, %rcx	# tmp114,
	movl	$50, %edx	#,
	leaq	.LC0(%rip), %rax	#, tmp115
	movq	%rax, %rsi	# tmp115,
	leaq	.LC2(%rip), %rax	#, tmp116
	movq	%rax, %rdi	# tmp116,
	call	__assert_fail@PLT	#
.L20:
# problem97.c:51:     free(result);
	movq	-184(%rbp), %rax	# result, tmp117
	movq	%rax, %rdi	# tmp117,
	call	free@PLT	#
# problem97.c:53:     result = func0(7, &count);
	leaq	-188(%rbp), %rax	#, tmp118
	movq	%rax, %rsi	# tmp118,
	movl	$7, %edi	#,
	call	func0	#
	movq	%rax, -184(%rbp)	# tmp119, result
# problem97.c:54:     assert(issame(result, count, (int[]){2, 3, 5}, 3));
	movl	$2, -176(%rbp)	#, MEM[(int[3] *)_153][0]
	movl	$3, -172(%rbp)	#, MEM[(int[3] *)_153][1]
	movl	$5, -168(%rbp)	#, MEM[(int[3] *)_153][2]
	movl	-188(%rbp), %esi	# count, count.2_5
	leaq	-176(%rbp), %rdx	#, tmp120
	movq	-184(%rbp), %rax	# result, tmp121
	movl	$3, %ecx	#,
	movq	%rax, %rdi	# tmp121,
	call	issame	#
	testl	%eax, %eax	# _6
	jne	.L21	#,
# problem97.c:54:     assert(issame(result, count, (int[]){2, 3, 5}, 3));
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp122
	movq	%rax, %rcx	# tmp122,
	movl	$54, %edx	#,
	leaq	.LC0(%rip), %rax	#, tmp123
	movq	%rax, %rsi	# tmp123,
	leaq	.LC2(%rip), %rax	#, tmp124
	movq	%rax, %rdi	# tmp124,
	call	__assert_fail@PLT	#
.L21:
# problem97.c:55:     free(result);
	movq	-184(%rbp), %rax	# result, tmp125
	movq	%rax, %rdi	# tmp125,
	call	free@PLT	#
# problem97.c:57:     result = func0(10, &count);
	leaq	-188(%rbp), %rax	#, tmp126
	movq	%rax, %rsi	# tmp126,
	movl	$10, %edi	#,
	call	func0	#
	movq	%rax, -184(%rbp)	# tmp127, result
# problem97.c:58:     assert(issame(result, count, (int[]){2, 3, 5, 7}, 4));
	movl	$2, -176(%rbp)	#, MEM[(int[4] *)_153][0]
	movl	$3, -172(%rbp)	#, MEM[(int[4] *)_153][1]
	movl	$5, -168(%rbp)	#, MEM[(int[4] *)_153][2]
	movl	$7, -164(%rbp)	#, MEM[(int[4] *)_153][3]
	movl	-188(%rbp), %esi	# count, count.3_7
	leaq	-176(%rbp), %rdx	#, tmp128
	movq	-184(%rbp), %rax	# result, tmp129
	movl	$4, %ecx	#,
	movq	%rax, %rdi	# tmp129,
	call	issame	#
	testl	%eax, %eax	# _8
	jne	.L22	#,
# problem97.c:58:     assert(issame(result, count, (int[]){2, 3, 5, 7}, 4));
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp130
	movq	%rax, %rcx	# tmp130,
	movl	$58, %edx	#,
	leaq	.LC0(%rip), %rax	#, tmp131
	movq	%rax, %rsi	# tmp131,
	leaq	.LC3(%rip), %rax	#, tmp132
	movq	%rax, %rdi	# tmp132,
	call	__assert_fail@PLT	#
.L22:
# problem97.c:59:     free(result);
	movq	-184(%rbp), %rax	# result, tmp133
	movq	%rax, %rdi	# tmp133,
	call	free@PLT	#
# problem97.c:61:     result = func0(0, &count);
	leaq	-188(%rbp), %rax	#, tmp134
	movq	%rax, %rsi	# tmp134,
	movl	$0, %edi	#,
	call	func0	#
	movq	%rax, -184(%rbp)	# tmp135, result
# problem97.c:62:     assert(count == 0);
	movl	-188(%rbp), %eax	# count, count.4_9
	testl	%eax, %eax	# count.4_9
	je	.L23	#,
# problem97.c:62:     assert(count == 0);
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp136
	movq	%rax, %rcx	# tmp136,
	movl	$62, %edx	#,
	leaq	.LC0(%rip), %rax	#, tmp137
	movq	%rax, %rsi	# tmp137,
	leaq	.LC4(%rip), %rax	#, tmp138
	movq	%rax, %rdi	# tmp138,
	call	__assert_fail@PLT	#
.L23:
# problem97.c:63:     free(result);
	movq	-184(%rbp), %rax	# result, tmp139
	movq	%rax, %rdi	# tmp139,
	call	free@PLT	#
# problem97.c:65:     result = func0(22, &count);
	leaq	-188(%rbp), %rax	#, tmp140
	movq	%rax, %rsi	# tmp140,
	movl	$22, %edi	#,
	call	func0	#
	movq	%rax, -184(%rbp)	# tmp141, result
# problem97.c:66:     assert(issame(result, count, (int[]){2, 3, 5, 7, 11, 13, 17, 19}, 8));
	movl	$2, -176(%rbp)	#, MEM[(int[8] *)_153][0]
	movl	$3, -172(%rbp)	#, MEM[(int[8] *)_153][1]
	movl	$5, -168(%rbp)	#, MEM[(int[8] *)_153][2]
	movl	$7, -164(%rbp)	#, MEM[(int[8] *)_153][3]
	movl	$11, -160(%rbp)	#, MEM[(int[8] *)_153][4]
	movl	$13, -156(%rbp)	#, MEM[(int[8] *)_153][5]
	movl	$17, -152(%rbp)	#, MEM[(int[8] *)_153][6]
	movl	$19, -148(%rbp)	#, MEM[(int[8] *)_153][7]
	movl	-188(%rbp), %esi	# count, count.5_10
	leaq	-176(%rbp), %rdx	#, tmp142
	movq	-184(%rbp), %rax	# result, tmp143
	movl	$8, %ecx	#,
	movq	%rax, %rdi	# tmp143,
	call	issame	#
	testl	%eax, %eax	# _11
	jne	.L24	#,
# problem97.c:66:     assert(issame(result, count, (int[]){2, 3, 5, 7, 11, 13, 17, 19}, 8));
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp144
	movq	%rax, %rcx	# tmp144,
	movl	$66, %edx	#,
	leaq	.LC0(%rip), %rax	#, tmp145
	movq	%rax, %rsi	# tmp145,
	leaq	.LC5(%rip), %rax	#, tmp146
	movq	%rax, %rdi	# tmp146,
	call	__assert_fail@PLT	#
.L24:
# problem97.c:67:     free(result);
	movq	-184(%rbp), %rax	# result, tmp147
	movq	%rax, %rdi	# tmp147,
	call	free@PLT	#
# problem97.c:69:     result = func0(1, &count);
	leaq	-188(%rbp), %rax	#, tmp148
	movq	%rax, %rsi	# tmp148,
	movl	$1, %edi	#,
	call	func0	#
	movq	%rax, -184(%rbp)	# tmp149, result
# problem97.c:70:     assert(count == 0);
	movl	-188(%rbp), %eax	# count, count.6_12
	testl	%eax, %eax	# count.6_12
	je	.L25	#,
# problem97.c:70:     assert(count == 0);
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp150
	movq	%rax, %rcx	# tmp150,
	movl	$70, %edx	#,
	leaq	.LC0(%rip), %rax	#, tmp151
	movq	%rax, %rsi	# tmp151,
	leaq	.LC4(%rip), %rax	#, tmp152
	movq	%rax, %rdi	# tmp152,
	call	__assert_fail@PLT	#
.L25:
# problem97.c:71:     free(result);
	movq	-184(%rbp), %rax	# result, tmp153
	movq	%rax, %rdi	# tmp153,
	call	free@PLT	#
# problem97.c:73:     result = func0(18, &count);
	leaq	-188(%rbp), %rax	#, tmp154
	movq	%rax, %rsi	# tmp154,
	movl	$18, %edi	#,
	call	func0	#
	movq	%rax, -184(%rbp)	# tmp155, result
# problem97.c:74:     assert(issame(result, count, (int[]){2, 3, 5, 7, 11, 13, 17}, 7));
	movl	$2, -176(%rbp)	#, MEM[(int[7] *)_153][0]
	movl	$3, -172(%rbp)	#, MEM[(int[7] *)_153][1]
	movl	$5, -168(%rbp)	#, MEM[(int[7] *)_153][2]
	movl	$7, -164(%rbp)	#, MEM[(int[7] *)_153][3]
	movl	$11, -160(%rbp)	#, MEM[(int[7] *)_153][4]
	movl	$13, -156(%rbp)	#, MEM[(int[7] *)_153][5]
	movl	$17, -152(%rbp)	#, MEM[(int[7] *)_153][6]
	movl	-188(%rbp), %esi	# count, count.7_13
	leaq	-176(%rbp), %rdx	#, tmp156
	movq	-184(%rbp), %rax	# result, tmp157
	movl	$7, %ecx	#,
	movq	%rax, %rdi	# tmp157,
	call	issame	#
	testl	%eax, %eax	# _14
	jne	.L26	#,
# problem97.c:74:     assert(issame(result, count, (int[]){2, 3, 5, 7, 11, 13, 17}, 7));
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp158
	movq	%rax, %rcx	# tmp158,
	movl	$74, %edx	#,
	leaq	.LC0(%rip), %rax	#, tmp159
	movq	%rax, %rsi	# tmp159,
	leaq	.LC6(%rip), %rax	#, tmp160
	movq	%rax, %rdi	# tmp160,
	call	__assert_fail@PLT	#
.L26:
# problem97.c:75:     free(result);
	movq	-184(%rbp), %rax	# result, tmp161
	movq	%rax, %rdi	# tmp161,
	call	free@PLT	#
# problem97.c:77:     result = func0(47, &count);
	leaq	-188(%rbp), %rax	#, tmp162
	movq	%rax, %rsi	# tmp162,
	movl	$47, %edi	#,
	call	func0	#
	movq	%rax, -184(%rbp)	# tmp163, result
# problem97.c:78:     assert(issame(result, count, (int[]){2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37, 41, 43}, 14));
	movl	$2, -176(%rbp)	#, MEM[(int[14] *)_153][0]
	movl	$3, -172(%rbp)	#, MEM[(int[14] *)_153][1]
	movl	$5, -168(%rbp)	#, MEM[(int[14] *)_153][2]
	movl	$7, -164(%rbp)	#, MEM[(int[14] *)_153][3]
	movl	$11, -160(%rbp)	#, MEM[(int[14] *)_153][4]
	movl	$13, -156(%rbp)	#, MEM[(int[14] *)_153][5]
	movl	$17, -152(%rbp)	#, MEM[(int[14] *)_153][6]
	movl	$19, -148(%rbp)	#, MEM[(int[14] *)_153][7]
	movl	$23, -144(%rbp)	#, MEM[(int[14] *)_153][8]
	movl	$29, -140(%rbp)	#, MEM[(int[14] *)_153][9]
	movl	$31, -136(%rbp)	#, MEM[(int[14] *)_153][10]
	movl	$37, -132(%rbp)	#, MEM[(int[14] *)_153][11]
	movl	$41, -128(%rbp)	#, MEM[(int[14] *)_153][12]
	movl	$43, -124(%rbp)	#, MEM[(int[14] *)_153][13]
	movl	-188(%rbp), %esi	# count, count.8_15
	leaq	-176(%rbp), %rdx	#, tmp164
	movq	-184(%rbp), %rax	# result, tmp165
	movl	$14, %ecx	#,
	movq	%rax, %rdi	# tmp165,
	call	issame	#
	testl	%eax, %eax	# _16
	jne	.L27	#,
# problem97.c:78:     assert(issame(result, count, (int[]){2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37, 41, 43}, 14));
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp166
	movq	%rax, %rcx	# tmp166,
	movl	$78, %edx	#,
	leaq	.LC0(%rip), %rax	#, tmp167
	movq	%rax, %rsi	# tmp167,
	leaq	.LC7(%rip), %rax	#, tmp168
	movq	%rax, %rdi	# tmp168,
	call	__assert_fail@PLT	#
.L27:
# problem97.c:79:     free(result);
	movq	-184(%rbp), %rax	# result, tmp169
	movq	%rax, %rdi	# tmp169,
	call	free@PLT	#
# problem97.c:81:     result = func0(101, &count);
	leaq	-188(%rbp), %rax	#, tmp170
	movq	%rax, %rsi	# tmp170,
	movl	$101, %edi	#,
	call	func0	#
	movq	%rax, -184(%rbp)	# tmp171, result
# problem97.c:82:     assert(issame(result, count, expected, 25));
	movl	-188(%rbp), %esi	# count, count.9_17
	leaq	-112(%rbp), %rdx	#, tmp172
	movq	-184(%rbp), %rax	# result, tmp173
	movl	$25, %ecx	#,
	movq	%rax, %rdi	# tmp173,
	call	issame	#
	testl	%eax, %eax	# _18
	jne	.L28	#,
# problem97.c:82:     assert(issame(result, count, expected, 25));
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp174
	movq	%rax, %rcx	# tmp174,
	movl	$82, %edx	#,
	leaq	.LC0(%rip), %rax	#, tmp175
	movq	%rax, %rsi	# tmp175,
	leaq	.LC8(%rip), %rax	#, tmp176
	movq	%rax, %rdi	# tmp176,
	call	__assert_fail@PLT	#
.L28:
# problem97.c:83:     free(result);
	movq	-184(%rbp), %rax	# result, tmp177
	movq	%rax, %rdi	# tmp177,
	call	free@PLT	#
# problem97.c:85:     return 0;
	movl	$0, %eax	#, _141
# problem97.c:86: }
	movq	-8(%rbp), %rdx	# D.3166, tmp180
	subq	%fs:40, %rdx	# MEM[(<address-space-1> long unsigned int *)40B], tmp180
	je	.L30	#,
	call	__stack_chk_fail@PLT	#
.L30:
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
