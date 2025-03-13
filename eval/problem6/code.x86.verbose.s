	.file	"code.c"
# GNU C17 (Ubuntu 13.3.0-6ubuntu2~24.04) version 13.3.0 (x86_64-linux-gnu)
#	compiled by GNU C version 13.3.0, GMP version 6.3.0, MPFR version 4.2.1, MPC version 1.3.1, isl version isl-0.26-GMP

# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed: -mtune=generic -march=x86-64 -O0 -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection -fcf-protection
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
	movq	%rdi, -24(%rbp)	# numbers, numbers
	movl	%esi, -28(%rbp)	# size, size
	movl	%edx, -32(%rbp)	# delimiter, delimiter
	movq	%rcx, -40(%rbp)	# out_size, out_size
# code.c:5:     *out_size = size > 0 ? (size * 2) - 1 : 0;
	cmpl	$0, -28(%rbp)	#, size
	jle	.L2	#,
# code.c:5:     *out_size = size > 0 ? (size * 2) - 1 : 0;
	movl	-28(%rbp), %eax	# size, tmp102
	addl	%eax, %eax	# _1
# code.c:5:     *out_size = size > 0 ? (size * 2) - 1 : 0;
	leal	-1(%rax), %edx	#, iftmp.0_20
	jmp	.L3	#
.L2:
# code.c:5:     *out_size = size > 0 ? (size * 2) - 1 : 0;
	movl	$0, %edx	#, iftmp.0_20
.L3:
# code.c:5:     *out_size = size > 0 ? (size * 2) - 1 : 0;
	movq	-40(%rbp), %rax	# out_size, tmp103
	movl	%edx, (%rax)	# iftmp.0_20, *out_size_27(D)
# code.c:6:     int *out = (int *)malloc(*out_size * sizeof(int));
	movq	-40(%rbp), %rax	# out_size, tmp104
	movl	(%rax), %eax	# *out_size_27(D), _2
	cltq
# code.c:6:     int *out = (int *)malloc(*out_size * sizeof(int));
	salq	$2, %rax	#, _4
	movq	%rax, %rdi	# _4,
	call	malloc@PLT	#
	movq	%rax, -8(%rbp)	# tmp105, out
# code.c:7:     if (size > 0) out[0] = numbers[0];
	cmpl	$0, -28(%rbp)	#, size
	jle	.L4	#,
# code.c:7:     if (size > 0) out[0] = numbers[0];
	movq	-24(%rbp), %rax	# numbers, tmp106
	movl	(%rax), %edx	# *numbers_31(D), _5
# code.c:7:     if (size > 0) out[0] = numbers[0];
	movq	-8(%rbp), %rax	# out, tmp107
	movl	%edx, (%rax)	# _5, *out_30
.L4:
# code.c:8:     for (int i = 1, j = 1; i < size; ++i) {
	movl	$1, -16(%rbp)	#, i
# code.c:8:     for (int i = 1, j = 1; i < size; ++i) {
	movl	$1, -12(%rbp)	#, j
# code.c:8:     for (int i = 1, j = 1; i < size; ++i) {
	jmp	.L5	#
.L6:
# code.c:9:         out[j++] = delimiter;
	movl	-12(%rbp), %eax	# j, j.1_6
	leal	1(%rax), %edx	#, tmp108
	movl	%edx, -12(%rbp)	# tmp108, j
	cltq
# code.c:9:         out[j++] = delimiter;
	leaq	0(,%rax,4), %rdx	#, _8
	movq	-8(%rbp), %rax	# out, tmp109
	addq	%rax, %rdx	# tmp109, _9
# code.c:9:         out[j++] = delimiter;
	movl	-32(%rbp), %eax	# delimiter, tmp110
	movl	%eax, (%rdx)	# tmp110, *_9
# code.c:10:         out[j++] = numbers[i];
	movl	-16(%rbp), %eax	# i, tmp111
	cltq
	leaq	0(,%rax,4), %rdx	#, _11
	movq	-24(%rbp), %rax	# numbers, tmp112
	leaq	(%rdx,%rax), %rcx	#, _12
# code.c:10:         out[j++] = numbers[i];
	movl	-12(%rbp), %eax	# j, j.2_13
	leal	1(%rax), %edx	#, tmp113
	movl	%edx, -12(%rbp)	# tmp113, j
	cltq
# code.c:10:         out[j++] = numbers[i];
	leaq	0(,%rax,4), %rdx	#, _15
	movq	-8(%rbp), %rax	# out, tmp114
	addq	%rax, %rdx	# tmp114, _16
# code.c:10:         out[j++] = numbers[i];
	movl	(%rcx), %eax	# *_12, _17
# code.c:10:         out[j++] = numbers[i];
	movl	%eax, (%rdx)	# _17, *_16
# code.c:8:     for (int i = 1, j = 1; i < size; ++i) {
	addl	$1, -16(%rbp)	#, i
.L5:
# code.c:8:     for (int i = 1, j = 1; i < size; ++i) {
	movl	-16(%rbp), %eax	# i, tmp115
	cmpl	-28(%rbp), %eax	# size, tmp115
	jl	.L6	#,
# code.c:12:     return out;
	movq	-8(%rbp), %rax	# out, _35
# code.c:13: }
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
