	.file	"code.c"
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
	subq	$48, %rsp	#,
	movq	%rdi, -40(%rbp)	# a, a
	movq	%rsi, -48(%rbp)	# b, b
# eval/problem12//code.c:6:     int len_a = strlen(a);
	movq	-40(%rbp), %rax	# a, tmp99
	movq	%rax, %rdi	# tmp99,
	call	strlen@PLT	#
# eval/problem12//code.c:6:     int len_a = strlen(a);
	movl	%eax, -20(%rbp)	# _1, len_a
# eval/problem12//code.c:7:     int len_b = strlen(b);
	movq	-48(%rbp), %rax	# b, tmp100
	movq	%rax, %rdi	# tmp100,
	call	strlen@PLT	#
# eval/problem12//code.c:7:     int len_b = strlen(b);
	movl	%eax, -16(%rbp)	# _2, len_b
# eval/problem12//code.c:8:     int min_len = len_a < len_b ? len_a : len_b;
	movl	-16(%rbp), %edx	# len_b, tmp102
	movl	-20(%rbp), %eax	# len_a, tmp115
	cmpl	%eax, %edx	# tmp115, tmp102
	cmovle	%edx, %eax	# tmp102,, tmp101
	movl	%eax, -12(%rbp)	# tmp101, min_len
# eval/problem12//code.c:9:     char *output = malloc((min_len + 1) * sizeof(char));
	movl	-12(%rbp), %eax	# min_len, tmp103
	addl	$1, %eax	#, _3
# eval/problem12//code.c:9:     char *output = malloc((min_len + 1) * sizeof(char));
	cltq
	movq	%rax, %rdi	# _4,
	call	malloc@PLT	#
	movq	%rax, -8(%rbp)	# tmp104, output
# eval/problem12//code.c:10:     if (!output) return NULL;
	cmpq	$0, -8(%rbp)	#, output
	jne	.L2	#,
# eval/problem12//code.c:10:     if (!output) return NULL;
	movl	$0, %eax	#, _16
# eval/problem12//code.c:10:     if (!output) return NULL;
	jmp	.L3	#
.L2:
# eval/problem12//code.c:12:     for (int i = 0; i < min_len; i++) {
	movl	$0, -24(%rbp)	#, i
# eval/problem12//code.c:12:     for (int i = 0; i < min_len; i++) {
	jmp	.L4	#
.L7:
# eval/problem12//code.c:13:         output[i] = (a[i] == b[i]) ? '0' : '1';
	movl	-24(%rbp), %eax	# i, tmp105
	movslq	%eax, %rdx	# tmp105, _5
	movq	-40(%rbp), %rax	# a, tmp106
	addq	%rdx, %rax	# _5, _6
	movzbl	(%rax), %edx	# *_6, _7
# eval/problem12//code.c:13:         output[i] = (a[i] == b[i]) ? '0' : '1';
	movl	-24(%rbp), %eax	# i, tmp107
	movslq	%eax, %rcx	# tmp107, _8
	movq	-48(%rbp), %rax	# b, tmp108
	addq	%rcx, %rax	# _8, _9
	movzbl	(%rax), %eax	# *_9, _10
# eval/problem12//code.c:13:         output[i] = (a[i] == b[i]) ? '0' : '1';
	cmpb	%al, %dl	# _10, _7
	jne	.L5	#,
# eval/problem12//code.c:13:         output[i] = (a[i] == b[i]) ? '0' : '1';
	movl	$48, %ecx	#, iftmp.0_17
	jmp	.L6	#
.L5:
# eval/problem12//code.c:13:         output[i] = (a[i] == b[i]) ? '0' : '1';
	movl	$49, %ecx	#, iftmp.0_17
.L6:
# eval/problem12//code.c:13:         output[i] = (a[i] == b[i]) ? '0' : '1';
	movl	-24(%rbp), %eax	# i, tmp109
	movslq	%eax, %rdx	# tmp109, _11
	movq	-8(%rbp), %rax	# output, tmp110
	addq	%rdx, %rax	# _11, _12
# eval/problem12//code.c:13:         output[i] = (a[i] == b[i]) ? '0' : '1';
	movb	%cl, (%rax)	# iftmp.0_17, *_12
# eval/problem12//code.c:12:     for (int i = 0; i < min_len; i++) {
	addl	$1, -24(%rbp)	#, i
.L4:
# eval/problem12//code.c:12:     for (int i = 0; i < min_len; i++) {
	movl	-24(%rbp), %eax	# i, tmp111
	cmpl	-12(%rbp), %eax	# min_len, tmp111
	jl	.L7	#,
# eval/problem12//code.c:15:     output[min_len] = '\0';
	movl	-12(%rbp), %eax	# min_len, tmp112
	movslq	%eax, %rdx	# tmp112, _13
	movq	-8(%rbp), %rax	# output, tmp113
	addq	%rdx, %rax	# _13, _14
# eval/problem12//code.c:15:     output[min_len] = '\0';
	movb	$0, (%rax)	#, *_14
# eval/problem12//code.c:16:     return output;
	movq	-8(%rbp), %rax	# output, _16
.L3:
# eval/problem12//code.c:17: }
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE6:
	.size	func0, .-func0
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
