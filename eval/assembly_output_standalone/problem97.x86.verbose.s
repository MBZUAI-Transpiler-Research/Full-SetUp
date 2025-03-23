	.file	"code.c"
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
# eval/problem97//code.c:5:     int *out = malloc(n * sizeof(int));
	movl	-36(%rbp), %eax	# n, tmp98
	cltq
	salq	$2, %rax	#, _2
	movq	%rax, %rdi	# _2,
	call	malloc@PLT	#
	movq	%rax, -8(%rbp)	# tmp99, out
# eval/problem97//code.c:6:     *count = 0;
	movq	-48(%rbp), %rax	# count, tmp100
	movl	$0, (%rax)	#, *count_24(D)
# eval/problem97//code.c:9:     for (i = 2; i < n; i++) {
	movl	$2, -24(%rbp)	#, i
# eval/problem97//code.c:9:     for (i = 2; i < n; i++) {
	jmp	.L2	#
.L9:
# eval/problem97//code.c:10:         isp = 1;
	movl	$1, -16(%rbp)	#, isp
# eval/problem97//code.c:11:         for (j = 0; j < *count; j++) {
	movl	$0, -20(%rbp)	#, j
# eval/problem97//code.c:11:         for (j = 0; j < *count; j++) {
	jmp	.L3	#
.L7:
# eval/problem97//code.c:12:             k = out[j];
	movl	-20(%rbp), %eax	# j, tmp101
	cltq
	leaq	0(,%rax,4), %rdx	#, _4
	movq	-8(%rbp), %rax	# out, tmp102
	addq	%rdx, %rax	# _4, _5
# eval/problem97//code.c:12:             k = out[j];
	movl	(%rax), %eax	# *_5, tmp103
	movl	%eax, -12(%rbp)	# tmp103, k
# eval/problem97//code.c:13:             if (k * k > i) break;
	movl	-12(%rbp), %eax	# k, tmp104
	imull	%eax, %eax	# tmp104, _6
# eval/problem97//code.c:13:             if (k * k > i) break;
	cmpl	%eax, -24(%rbp)	# _6, i
	jl	.L11	#,
# eval/problem97//code.c:14:             if (i % k == 0) {
	movl	-24(%rbp), %eax	# i, tmp105
	cltd
	idivl	-12(%rbp)	# k
	movl	%edx, %eax	# tmp106, _7
# eval/problem97//code.c:14:             if (i % k == 0) {
	testl	%eax, %eax	# _7
	jne	.L6	#,
# eval/problem97//code.c:15:                 isp = 0;
	movl	$0, -16(%rbp)	#, isp
# eval/problem97//code.c:16:                 break;
	jmp	.L5	#
.L6:
# eval/problem97//code.c:11:         for (j = 0; j < *count; j++) {
	addl	$1, -20(%rbp)	#, j
.L3:
# eval/problem97//code.c:11:         for (j = 0; j < *count; j++) {
	movq	-48(%rbp), %rax	# count, tmp108
	movl	(%rax), %eax	# *count_24(D), _8
# eval/problem97//code.c:11:         for (j = 0; j < *count; j++) {
	cmpl	%eax, -20(%rbp)	# _8, j
	jl	.L7	#,
	jmp	.L5	#
.L11:
# eval/problem97//code.c:13:             if (k * k > i) break;
	nop	
.L5:
# eval/problem97//code.c:19:         if (isp) {
	cmpl	$0, -16(%rbp)	#, isp
	je	.L8	#,
# eval/problem97//code.c:20:             out[*count] = i;
	movq	-48(%rbp), %rax	# count, tmp109
	movl	(%rax), %eax	# *count_24(D), _9
	cltq
# eval/problem97//code.c:20:             out[*count] = i;
	leaq	0(,%rax,4), %rdx	#, _11
	movq	-8(%rbp), %rax	# out, tmp110
	addq	%rax, %rdx	# tmp110, _12
# eval/problem97//code.c:20:             out[*count] = i;
	movl	-24(%rbp), %eax	# i, tmp111
	movl	%eax, (%rdx)	# tmp111, *_12
# eval/problem97//code.c:21:             (*count)++;
	movq	-48(%rbp), %rax	# count, tmp112
	movl	(%rax), %eax	# *count_24(D), _13
# eval/problem97//code.c:21:             (*count)++;
	leal	1(%rax), %edx	#, _14
	movq	-48(%rbp), %rax	# count, tmp113
	movl	%edx, (%rax)	# _14, *count_24(D)
.L8:
# eval/problem97//code.c:9:     for (i = 2; i < n; i++) {
	addl	$1, -24(%rbp)	#, i
.L2:
# eval/problem97//code.c:9:     for (i = 2; i < n; i++) {
	movl	-24(%rbp), %eax	# i, tmp114
	cmpl	-36(%rbp), %eax	# n, tmp114
	jl	.L9	#,
# eval/problem97//code.c:24:     return out;
	movq	-8(%rbp), %rax	# out, _27
# eval/problem97//code.c:25: }
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE6:
	.size	func0, .-func0
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
