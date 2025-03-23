	.file	"problem26.c"
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
	subq	$32, %rsp	#,
	movl	%edi, -20(%rbp)	# n, n
	movq	%rsi, -32(%rbp)	# size, size
# problem26.c:5:     int* out = malloc(sizeof(int) * 64);
	movl	$256, %edi	#,
	call	malloc@PLT	#
	movq	%rax, -8(%rbp)	# tmp96, out
# problem26.c:6:     *size = 0;
	movq	-32(%rbp), %rax	# size, tmp97
	movl	$0, (%rax)	#, *size_24(D)
# problem26.c:7:     for (int i = 2; i * i <= n; i++) {
	movl	$2, -12(%rbp)	#, i
# problem26.c:7:     for (int i = 2; i * i <= n; i++) {
	jmp	.L2	#
.L4:
# problem26.c:9:             n = n / i;
	movl	-20(%rbp), %eax	# n, tmp101
	cltd
	idivl	-12(%rbp)	# i
	movl	%eax, -20(%rbp)	# tmp99, n
# problem26.c:10:             out[(*size)++] = i;
	movq	-32(%rbp), %rax	# size, tmp102
	movl	(%rax), %eax	# *size_24(D), _1
# problem26.c:10:             out[(*size)++] = i;
	leal	1(%rax), %ecx	#, _3
	movq	-32(%rbp), %rdx	# size, tmp103
	movl	%ecx, (%rdx)	# _3, *size_24(D)
	cltq
# problem26.c:10:             out[(*size)++] = i;
	leaq	0(,%rax,4), %rdx	#, _5
	movq	-8(%rbp), %rax	# out, tmp104
	addq	%rax, %rdx	# tmp104, _6
# problem26.c:10:             out[(*size)++] = i;
	movl	-12(%rbp), %eax	# i, tmp105
	movl	%eax, (%rdx)	# tmp105, *_6
.L3:
# problem26.c:8:         while (n % i == 0) {
	movl	-20(%rbp), %eax	# n, tmp106
	cltd
	idivl	-12(%rbp)	# i
	movl	%edx, %eax	# tmp107, _7
# problem26.c:8:         while (n % i == 0) {
	testl	%eax, %eax	# _7
	je	.L4	#,
# problem26.c:7:     for (int i = 2; i * i <= n; i++) {
	addl	$1, -12(%rbp)	#, i
.L2:
# problem26.c:7:     for (int i = 2; i * i <= n; i++) {
	movl	-12(%rbp), %eax	# i, tmp109
	imull	%eax, %eax	# tmp109, _8
# problem26.c:7:     for (int i = 2; i * i <= n; i++) {
	cmpl	%eax, -20(%rbp)	# _8, n
	jge	.L3	#,
# problem26.c:13:     if (n > 1) {
	cmpl	$1, -20(%rbp)	#, n
	jle	.L6	#,
# problem26.c:14:         out[(*size)++] = n;
	movq	-32(%rbp), %rax	# size, tmp110
	movl	(%rax), %eax	# *size_24(D), _9
# problem26.c:14:         out[(*size)++] = n;
	leal	1(%rax), %ecx	#, _11
	movq	-32(%rbp), %rdx	# size, tmp111
	movl	%ecx, (%rdx)	# _11, *size_24(D)
	cltq
# problem26.c:14:         out[(*size)++] = n;
	leaq	0(,%rax,4), %rdx	#, _13
	movq	-8(%rbp), %rax	# out, tmp112
	addq	%rax, %rdx	# tmp112, _14
# problem26.c:14:         out[(*size)++] = n;
	movl	-20(%rbp), %eax	# n, tmp113
	movl	%eax, (%rdx)	# tmp113, *_14
.L6:
# problem26.c:16:     return out;
	movq	-8(%rbp), %rax	# out, _30
# problem26.c:17: }
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
	movl	%esi, -28(%rbp)	# a_size, a_size
	movq	%rdx, -40(%rbp)	# b, b
	movl	%ecx, -32(%rbp)	# b_size, b_size
# problem26.c:26:     if (a_size != b_size) return 0;
	movl	-28(%rbp), %eax	# a_size, tmp92
	cmpl	-32(%rbp), %eax	# b_size, tmp92
	je	.L9	#,
# problem26.c:26:     if (a_size != b_size) return 0;
	movl	$0, %eax	#, _10
	jmp	.L10	#
.L9:
# problem26.c:27:     for (int i = 0; i < a_size; i++) {
	movl	$0, -4(%rbp)	#, i
# problem26.c:27:     for (int i = 0; i < a_size; i++) {
	jmp	.L11	#
.L13:
# problem26.c:28:         if (a[i] != b[i]) return 0;
	movl	-4(%rbp), %eax	# i, tmp93
	cltq
	leaq	0(,%rax,4), %rdx	#, _2
	movq	-24(%rbp), %rax	# a, tmp94
	addq	%rdx, %rax	# _2, _3
	movl	(%rax), %edx	# *_3, _4
# problem26.c:28:         if (a[i] != b[i]) return 0;
	movl	-4(%rbp), %eax	# i, tmp95
	cltq
	leaq	0(,%rax,4), %rcx	#, _6
	movq	-40(%rbp), %rax	# b, tmp96
	addq	%rcx, %rax	# _6, _7
	movl	(%rax), %eax	# *_7, _8
# problem26.c:28:         if (a[i] != b[i]) return 0;
	cmpl	%eax, %edx	# _8, _4
	je	.L12	#,
# problem26.c:28:         if (a[i] != b[i]) return 0;
	movl	$0, %eax	#, _10
	jmp	.L10	#
.L12:
# problem26.c:27:     for (int i = 0; i < a_size; i++) {
	addl	$1, -4(%rbp)	#, i
.L11:
# problem26.c:27:     for (int i = 0; i < a_size; i++) {
	movl	-4(%rbp), %eax	# i, tmp97
	cmpl	-28(%rbp), %eax	# a_size, tmp97
	jl	.L13	#,
# problem26.c:30:     return 1;
	movl	$1, %eax	#, _10
.L10:
# problem26.c:31: }
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE7:
	.size	issame, .-issame
	.section	.rodata
.LC0:
	.string	"problem26.c"
	.align 8
.LC1:
	.string	"issame(result, size, (int[]){2}, 1)"
	.align 8
.LC2:
	.string	"issame(result, size, (int[]){2, 2}, 2)"
	.align 8
.LC3:
	.string	"issame(result, size, (int[]){2, 2, 2}, 3)"
	.align 8
.LC4:
	.string	"issame(result, size, (int[]){3, 19}, 2)"
	.align 8
.LC5:
	.string	"issame(result, size, (int[]){3, 3, 19, 19}, 4)"
	.align 8
.LC6:
	.string	"issame(result, size, (int[]){3, 3, 3, 19, 19, 19}, 6)"
	.align 8
.LC7:
	.string	"issame(result, size, (int[]){3, 19, 19, 19}, 4)"
	.align 8
.LC8:
	.string	"issame(result, size, (int[]){2, 3, 3}, 3)"
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
	subq	$48, %rsp	#,
# problem26.c:33: int main() {
	movq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp165
	movq	%rax, -8(%rbp)	# tmp165, D.3153
	xorl	%eax, %eax	# tmp165
# problem26.c:37:     result = func0(2, &size);
	leaq	-44(%rbp), %rax	#, tmp100
	movq	%rax, %rsi	# tmp100,
	movl	$2, %edi	#,
	call	func0	#
	movq	%rax, -40(%rbp)	# tmp101, result
# problem26.c:38:     assert(issame(result, size, (int[]){2}, 1));
	movl	$2, -32(%rbp)	#, MEM[(int[1] *)_102][0]
	movl	-44(%rbp), %esi	# size, size.0_1
	leaq	-32(%rbp), %rdx	#, tmp102
	movq	-40(%rbp), %rax	# result, tmp103
	movl	$1, %ecx	#,
	movq	%rax, %rdi	# tmp103,
	call	issame	#
	testl	%eax, %eax	# _2
	jne	.L15	#,
# problem26.c:38:     assert(issame(result, size, (int[]){2}, 1));
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp104
	movq	%rax, %rcx	# tmp104,
	movl	$38, %edx	#,
	leaq	.LC0(%rip), %rax	#, tmp105
	movq	%rax, %rsi	# tmp105,
	leaq	.LC1(%rip), %rax	#, tmp106
	movq	%rax, %rdi	# tmp106,
	call	__assert_fail@PLT	#
.L15:
# problem26.c:39:     free(result);
	movq	-40(%rbp), %rax	# result, tmp107
	movq	%rax, %rdi	# tmp107,
	call	free@PLT	#
# problem26.c:41:     result = func0(4, &size);
	leaq	-44(%rbp), %rax	#, tmp108
	movq	%rax, %rsi	# tmp108,
	movl	$4, %edi	#,
	call	func0	#
	movq	%rax, -40(%rbp)	# tmp109, result
# problem26.c:42:     assert(issame(result, size, (int[]){2, 2}, 2));
	movl	$2, -32(%rbp)	#, MEM[(int[2] *)_102][0]
	movl	$2, -28(%rbp)	#, MEM[(int[2] *)_102][1]
	movl	-44(%rbp), %esi	# size, size.1_3
	leaq	-32(%rbp), %rdx	#, tmp110
	movq	-40(%rbp), %rax	# result, tmp111
	movl	$2, %ecx	#,
	movq	%rax, %rdi	# tmp111,
	call	issame	#
	testl	%eax, %eax	# _4
	jne	.L16	#,
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp112
	movq	%rax, %rcx	# tmp112,
	movl	$42, %edx	#,
	leaq	.LC0(%rip), %rax	#, tmp113
	movq	%rax, %rsi	# tmp113,
	leaq	.LC2(%rip), %rax	#, tmp114
	movq	%rax, %rdi	# tmp114,
	call	__assert_fail@PLT	#
.L16:
# problem26.c:43:     free(result);
	movq	-40(%rbp), %rax	# result, tmp115
	movq	%rax, %rdi	# tmp115,
	call	free@PLT	#
# problem26.c:45:     result = func0(8, &size);
	leaq	-44(%rbp), %rax	#, tmp116
	movq	%rax, %rsi	# tmp116,
	movl	$8, %edi	#,
	call	func0	#
	movq	%rax, -40(%rbp)	# tmp117, result
# problem26.c:46:     assert(issame(result, size, (int[]){2, 2, 2}, 3));
	movl	$2, -32(%rbp)	#, MEM[(int[3] *)_102][0]
	movl	$2, -28(%rbp)	#, MEM[(int[3] *)_102][1]
	movl	$2, -24(%rbp)	#, MEM[(int[3] *)_102][2]
	movl	-44(%rbp), %esi	# size, size.2_5
	leaq	-32(%rbp), %rdx	#, tmp118
	movq	-40(%rbp), %rax	# result, tmp119
	movl	$3, %ecx	#,
	movq	%rax, %rdi	# tmp119,
	call	issame	#
	testl	%eax, %eax	# _6
	jne	.L17	#,
# problem26.c:46:     assert(issame(result, size, (int[]){2, 2, 2}, 3));
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp120
	movq	%rax, %rcx	# tmp120,
	movl	$46, %edx	#,
	leaq	.LC0(%rip), %rax	#, tmp121
	movq	%rax, %rsi	# tmp121,
	leaq	.LC3(%rip), %rax	#, tmp122
	movq	%rax, %rdi	# tmp122,
	call	__assert_fail@PLT	#
.L17:
# problem26.c:47:     free(result);
	movq	-40(%rbp), %rax	# result, tmp123
	movq	%rax, %rdi	# tmp123,
	call	free@PLT	#
# problem26.c:49:     result = func0(3 * 19, &size);
	leaq	-44(%rbp), %rax	#, tmp124
	movq	%rax, %rsi	# tmp124,
	movl	$57, %edi	#,
	call	func0	#
	movq	%rax, -40(%rbp)	# tmp125, result
# problem26.c:50:     assert(issame(result, size, (int[]){3, 19}, 2));
	movl	$3, -32(%rbp)	#, MEM[(int[2] *)_102][0]
	movl	$19, -28(%rbp)	#, MEM[(int[2] *)_102][1]
	movl	-44(%rbp), %esi	# size, size.3_7
	leaq	-32(%rbp), %rdx	#, tmp126
	movq	-40(%rbp), %rax	# result, tmp127
	movl	$2, %ecx	#,
	movq	%rax, %rdi	# tmp127,
	call	issame	#
	testl	%eax, %eax	# _8
	jne	.L18	#,
# problem26.c:50:     assert(issame(result, size, (int[]){3, 19}, 2));
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp128
	movq	%rax, %rcx	# tmp128,
	movl	$50, %edx	#,
	leaq	.LC0(%rip), %rax	#, tmp129
	movq	%rax, %rsi	# tmp129,
	leaq	.LC4(%rip), %rax	#, tmp130
	movq	%rax, %rdi	# tmp130,
	call	__assert_fail@PLT	#
.L18:
# problem26.c:51:     free(result);
	movq	-40(%rbp), %rax	# result, tmp131
	movq	%rax, %rdi	# tmp131,
	call	free@PLT	#
# problem26.c:53:     result = func0(3 * 19 * 3 * 19, &size);
	leaq	-44(%rbp), %rax	#, tmp132
	movq	%rax, %rsi	# tmp132,
	movl	$3249, %edi	#,
	call	func0	#
	movq	%rax, -40(%rbp)	# tmp133, result
# problem26.c:54:     assert(issame(result, size, (int[]){3, 3, 19, 19}, 4));
	movl	$3, -32(%rbp)	#, MEM[(int[4] *)_102][0]
	movl	$3, -28(%rbp)	#, MEM[(int[4] *)_102][1]
	movl	$19, -24(%rbp)	#, MEM[(int[4] *)_102][2]
	movl	$19, -20(%rbp)	#, MEM[(int[4] *)_102][3]
	movl	-44(%rbp), %esi	# size, size.4_9
	leaq	-32(%rbp), %rdx	#, tmp134
	movq	-40(%rbp), %rax	# result, tmp135
	movl	$4, %ecx	#,
	movq	%rax, %rdi	# tmp135,
	call	issame	#
	testl	%eax, %eax	# _10
	jne	.L19	#,
# problem26.c:54:     assert(issame(result, size, (int[]){3, 3, 19, 19}, 4));
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp136
	movq	%rax, %rcx	# tmp136,
	movl	$54, %edx	#,
	leaq	.LC0(%rip), %rax	#, tmp137
	movq	%rax, %rsi	# tmp137,
	leaq	.LC5(%rip), %rax	#, tmp138
	movq	%rax, %rdi	# tmp138,
	call	__assert_fail@PLT	#
.L19:
# problem26.c:55:     free(result);
	movq	-40(%rbp), %rax	# result, tmp139
	movq	%rax, %rdi	# tmp139,
	call	free@PLT	#
# problem26.c:57:     result = func0(3 * 19 * 3 * 19 * 3 * 19, &size);
	leaq	-44(%rbp), %rax	#, tmp140
	movq	%rax, %rsi	# tmp140,
	movl	$185193, %edi	#,
	call	func0	#
	movq	%rax, -40(%rbp)	# tmp141, result
# problem26.c:58:     assert(issame(result, size, (int[]){3, 3, 3, 19, 19, 19}, 6));
	movl	$3, -32(%rbp)	#, MEM[(int[6] *)_102][0]
	movl	$3, -28(%rbp)	#, MEM[(int[6] *)_102][1]
	movl	$3, -24(%rbp)	#, MEM[(int[6] *)_102][2]
	movl	$19, -20(%rbp)	#, MEM[(int[6] *)_102][3]
	movl	$19, -16(%rbp)	#, MEM[(int[6] *)_102][4]
	movl	$19, -12(%rbp)	#, MEM[(int[6] *)_102][5]
	movl	-44(%rbp), %esi	# size, size.5_11
	leaq	-32(%rbp), %rdx	#, tmp142
	movq	-40(%rbp), %rax	# result, tmp143
	movl	$6, %ecx	#,
	movq	%rax, %rdi	# tmp143,
	call	issame	#
	testl	%eax, %eax	# _12
	jne	.L20	#,
# problem26.c:58:     assert(issame(result, size, (int[]){3, 3, 3, 19, 19, 19}, 6));
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp144
	movq	%rax, %rcx	# tmp144,
	movl	$58, %edx	#,
	leaq	.LC0(%rip), %rax	#, tmp145
	movq	%rax, %rsi	# tmp145,
	leaq	.LC6(%rip), %rax	#, tmp146
	movq	%rax, %rdi	# tmp146,
	call	__assert_fail@PLT	#
.L20:
# problem26.c:59:     free(result);
	movq	-40(%rbp), %rax	# result, tmp147
	movq	%rax, %rdi	# tmp147,
	call	free@PLT	#
# problem26.c:61:     result = func0(3 * 19 * 19 * 19, &size);
	leaq	-44(%rbp), %rax	#, tmp148
	movq	%rax, %rsi	# tmp148,
	movl	$20577, %edi	#,
	call	func0	#
	movq	%rax, -40(%rbp)	# tmp149, result
# problem26.c:62:     assert(issame(result, size, (int[]){3, 19, 19, 19}, 4));
	movl	$3, -32(%rbp)	#, MEM[(int[4] *)_102][0]
	movl	$19, -28(%rbp)	#, MEM[(int[4] *)_102][1]
	movl	$19, -24(%rbp)	#, MEM[(int[4] *)_102][2]
	movl	$19, -20(%rbp)	#, MEM[(int[4] *)_102][3]
	movl	-44(%rbp), %esi	# size, size.6_13
	leaq	-32(%rbp), %rdx	#, tmp150
	movq	-40(%rbp), %rax	# result, tmp151
	movl	$4, %ecx	#,
	movq	%rax, %rdi	# tmp151,
	call	issame	#
	testl	%eax, %eax	# _14
	jne	.L21	#,
# problem26.c:62:     assert(issame(result, size, (int[]){3, 19, 19, 19}, 4));
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp152
	movq	%rax, %rcx	# tmp152,
	movl	$62, %edx	#,
	leaq	.LC0(%rip), %rax	#, tmp153
	movq	%rax, %rsi	# tmp153,
	leaq	.LC7(%rip), %rax	#, tmp154
	movq	%rax, %rdi	# tmp154,
	call	__assert_fail@PLT	#
.L21:
# problem26.c:63:     free(result);
	movq	-40(%rbp), %rax	# result, tmp155
	movq	%rax, %rdi	# tmp155,
	call	free@PLT	#
# problem26.c:65:     result = func0(3 * 2 * 3, &size);
	leaq	-44(%rbp), %rax	#, tmp156
	movq	%rax, %rsi	# tmp156,
	movl	$18, %edi	#,
	call	func0	#
	movq	%rax, -40(%rbp)	# tmp157, result
# problem26.c:66:     assert(issame(result, size, (int[]){2, 3, 3}, 3));
	movl	$2, -32(%rbp)	#, MEM[(int[3] *)_102][0]
	movl	$3, -28(%rbp)	#, MEM[(int[3] *)_102][1]
	movl	$3, -24(%rbp)	#, MEM[(int[3] *)_102][2]
	movl	-44(%rbp), %esi	# size, size.7_15
	leaq	-32(%rbp), %rdx	#, tmp158
	movq	-40(%rbp), %rax	# result, tmp159
	movl	$3, %ecx	#,
	movq	%rax, %rdi	# tmp159,
	call	issame	#
	testl	%eax, %eax	# _16
	jne	.L22	#,
# problem26.c:66:     assert(issame(result, size, (int[]){2, 3, 3}, 3));
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp160
	movq	%rax, %rcx	# tmp160,
	movl	$66, %edx	#,
	leaq	.LC0(%rip), %rax	#, tmp161
	movq	%rax, %rsi	# tmp161,
	leaq	.LC8(%rip), %rax	#, tmp162
	movq	%rax, %rdi	# tmp162,
	call	__assert_fail@PLT	#
.L22:
# problem26.c:67:     free(result);
	movq	-40(%rbp), %rax	# result, tmp163
	movq	%rax, %rdi	# tmp163,
	call	free@PLT	#
# problem26.c:69:     return 0;
	movl	$0, %eax	#, _91
# problem26.c:70: }
	movq	-8(%rbp), %rdx	# D.3153, tmp166
	subq	%fs:40, %rdx	# MEM[(<address-space-1> long unsigned int *)40B], tmp166
	je	.L24	#,
# problem26.c:70: }
	call	__stack_chk_fail@PLT	#
.L24:
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
