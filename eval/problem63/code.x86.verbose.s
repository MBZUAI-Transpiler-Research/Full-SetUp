	.file	"code.c"
# GNU C17 (Ubuntu 13.3.0-6ubuntu2~24.04) version 13.3.0 (x86_64-linux-gnu)
#	compiled by GNU C version 13.3.0, GMP version 6.3.0, MPFR version 4.2.1, MPC version 1.3.1, isl version isl-0.26-GMP

# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed: -mtune=generic -march=x86-64 -O0 -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection -fcf-protection
	.text
	.globl	func0
	.type	func0, @function
func0:
.LFB0:
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)	# xs, xs
	movl	%esi, -28(%rbp)	# xs_size, xs_size
	movq	%rdx, -40(%rbp)	# out, out
# code.c:4:     for (int i = 1; i < xs_size; i++) {
	movl	$1, -4(%rbp)	#, i
# code.c:4:     for (int i = 1; i < xs_size; i++) {
	jmp	.L2	#
.L3:
# code.c:5:         out[i - 1] = i * xs[i];
	pxor	%xmm1, %xmm1	# _1
	cvtsi2ssl	-4(%rbp), %xmm1	# i, _1
# code.c:5:         out[i - 1] = i * xs[i];
	movl	-4(%rbp), %eax	# i, tmp92
	cltq
	leaq	0(,%rax,4), %rdx	#, _3
	movq	-24(%rbp), %rax	# xs, tmp93
	addq	%rdx, %rax	# _3, _4
	movss	(%rax), %xmm0	# *_4, _5
# code.c:5:         out[i - 1] = i * xs[i];
	movl	-4(%rbp), %eax	# i, tmp94
	cltq
	salq	$2, %rax	#, _7
	leaq	-4(%rax), %rdx	#, _8
	movq	-40(%rbp), %rax	# out, tmp95
	addq	%rdx, %rax	# _8, _9
# code.c:5:         out[i - 1] = i * xs[i];
	mulss	%xmm1, %xmm0	# _1, _10
# code.c:5:         out[i - 1] = i * xs[i];
	movss	%xmm0, (%rax)	# _10, *_9
# code.c:4:     for (int i = 1; i < xs_size; i++) {
	addl	$1, -4(%rbp)	#, i
.L2:
# code.c:4:     for (int i = 1; i < xs_size; i++) {
	movl	-4(%rbp), %eax	# i, tmp96
	cmpl	-28(%rbp), %eax	# xs_size, tmp96
	jl	.L3	#,
# code.c:7: }
	nop	
	nop	
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE0:
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
