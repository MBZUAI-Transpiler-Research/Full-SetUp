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
	movq	%rdi, -24(%rbp)	# l, l
	movl	%esi, -28(%rbp)	# count, count
	movq	%rdx, -40(%rbp)	# out_count, out_count
# eval/problem31//code.c:5:     float* out = (float*)malloc(count * sizeof(float));
	movl	-28(%rbp), %eax	# count, tmp99
	cltq
	salq	$2, %rax	#, _2
	movq	%rax, %rdi	# _2,
	call	malloc@PLT	#
	movq	%rax, -8(%rbp)	# tmp100, out
# eval/problem31//code.c:6:     *out_count = 0;
	movq	-40(%rbp), %rax	# out_count, tmp101
	movl	$0, (%rax)	#, *out_count_24(D)
# eval/problem31//code.c:8:     for (int i = 0; i < count; i++) {
	movl	$0, -12(%rbp)	#, i
# eval/problem31//code.c:8:     for (int i = 0; i < count; i++) {
	jmp	.L2	#
.L5:
# eval/problem31//code.c:9:         if (l[i] > 0) {
	movl	-12(%rbp), %eax	# i, tmp102
	cltq
	leaq	0(,%rax,4), %rdx	#, _4
	movq	-24(%rbp), %rax	# l, tmp103
	addq	%rdx, %rax	# _4, _5
	movss	(%rax), %xmm0	# *_5, _6
# eval/problem31//code.c:9:         if (l[i] > 0) {
	pxor	%xmm1, %xmm1	# tmp104
	comiss	%xmm1, %xmm0	# tmp104, _6
	jbe	.L3	#,
# eval/problem31//code.c:10:             out[(*out_count)++] = l[i];
	movl	-12(%rbp), %eax	# i, tmp105
	cltq
	leaq	0(,%rax,4), %rdx	#, _8
	movq	-24(%rbp), %rax	# l, tmp106
	leaq	(%rdx,%rax), %rsi	#, _9
# eval/problem31//code.c:10:             out[(*out_count)++] = l[i];
	movq	-40(%rbp), %rax	# out_count, tmp107
	movl	(%rax), %eax	# *out_count_24(D), _10
# eval/problem31//code.c:10:             out[(*out_count)++] = l[i];
	leal	1(%rax), %ecx	#, _12
	movq	-40(%rbp), %rdx	# out_count, tmp108
	movl	%ecx, (%rdx)	# _12, *out_count_24(D)
	cltq
# eval/problem31//code.c:10:             out[(*out_count)++] = l[i];
	leaq	0(,%rax,4), %rdx	#, _14
	movq	-8(%rbp), %rax	# out, tmp109
	addq	%rdx, %rax	# _14, _15
# eval/problem31//code.c:10:             out[(*out_count)++] = l[i];
	movss	(%rsi), %xmm0	# *_9, _16
# eval/problem31//code.c:10:             out[(*out_count)++] = l[i];
	movss	%xmm0, (%rax)	# _16, *_15
.L3:
# eval/problem31//code.c:8:     for (int i = 0; i < count; i++) {
	addl	$1, -12(%rbp)	#, i
.L2:
# eval/problem31//code.c:8:     for (int i = 0; i < count; i++) {
	movl	-12(%rbp), %eax	# i, tmp110
	cmpl	-28(%rbp), %eax	# count, tmp110
	jl	.L5	#,
# eval/problem31//code.c:14:     return out;
	movq	-8(%rbp), %rax	# out, _27
# eval/problem31//code.c:15: }
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
