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
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# numbers, numbers
	movl	%esi, -28(%rbp)	# size, size
# eval/problem10//code.c:5:     if (size <= 0) {
	cmpl	$0, -28(%rbp)	#, size
	jg	.L2	#,
# eval/problem10//code.c:6:         return NULL;
	movl	$0, %eax	#, _16
	jmp	.L3	#
.L2:
# eval/problem10//code.c:9:     int *out = malloc(size * sizeof(int));
	movl	-28(%rbp), %eax	# size, tmp96
	cltq
	salq	$2, %rax	#, _2
	movq	%rax, %rdi	# _2,
	call	malloc@PLT	#
	movq	%rax, -8(%rbp)	# tmp97, out
# eval/problem10//code.c:10:     if (!out) {
	cmpq	$0, -8(%rbp)	#, out
	jne	.L4	#,
# eval/problem10//code.c:11:         return NULL;
	movl	$0, %eax	#, _16
	jmp	.L3	#
.L4:
# eval/problem10//code.c:14:     int max = numbers[0];
	movq	-24(%rbp), %rax	# numbers, tmp98
	movl	(%rax), %eax	# *numbers_23(D), tmp99
	movl	%eax, -16(%rbp)	# tmp99, max
# eval/problem10//code.c:15:     for (int i = 0; i < size; i++) {
	movl	$0, -12(%rbp)	#, i
# eval/problem10//code.c:15:     for (int i = 0; i < size; i++) {
	jmp	.L5	#
.L7:
# eval/problem10//code.c:16:         if (numbers[i] > max) max = numbers[i];
	movl	-12(%rbp), %eax	# i, tmp100
	cltq
	leaq	0(,%rax,4), %rdx	#, _4
	movq	-24(%rbp), %rax	# numbers, tmp101
	addq	%rdx, %rax	# _4, _5
	movl	(%rax), %eax	# *_5, _6
# eval/problem10//code.c:16:         if (numbers[i] > max) max = numbers[i];
	cmpl	%eax, -16(%rbp)	# _6, max
	jge	.L6	#,
# eval/problem10//code.c:16:         if (numbers[i] > max) max = numbers[i];
	movl	-12(%rbp), %eax	# i, tmp102
	cltq
	leaq	0(,%rax,4), %rdx	#, _8
	movq	-24(%rbp), %rax	# numbers, tmp103
	addq	%rdx, %rax	# _8, _9
# eval/problem10//code.c:16:         if (numbers[i] > max) max = numbers[i];
	movl	(%rax), %eax	# *_9, tmp104
	movl	%eax, -16(%rbp)	# tmp104, max
.L6:
# eval/problem10//code.c:17:         out[i] = max;
	movl	-12(%rbp), %eax	# i, tmp105
	cltq
	leaq	0(,%rax,4), %rdx	#, _11
	movq	-8(%rbp), %rax	# out, tmp106
	addq	%rax, %rdx	# tmp106, _12
# eval/problem10//code.c:17:         out[i] = max;
	movl	-16(%rbp), %eax	# max, tmp107
	movl	%eax, (%rdx)	# tmp107, *_12
# eval/problem10//code.c:15:     for (int i = 0; i < size; i++) {
	addl	$1, -12(%rbp)	#, i
.L5:
# eval/problem10//code.c:15:     for (int i = 0; i < size; i++) {
	movl	-12(%rbp), %eax	# i, tmp108
	cmpl	-28(%rbp), %eax	# size, tmp108
	jl	.L7	#,
# eval/problem10//code.c:19:     return out;
	movq	-8(%rbp), %rax	# out, _16
.L3:
# eval/problem10//code.c:20: }
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
