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
	movq	%rdi, -24(%rbp)	# game, game
	movq	%rsi, -32(%rbp)	# guess, guess
	movq	%rdx, -40(%rbp)	# out, out
	movl	%ecx, -44(%rbp)	# length, length
# eval/problem153//code.c:5:     for (int i = 0; i < length; i++) {
	movl	$0, -4(%rbp)	#, i
# eval/problem153//code.c:5:     for (int i = 0; i < length; i++) {
	jmp	.L2	#
.L3:
# eval/problem153//code.c:6:         out[i] = abs(game[i] - guess[i]);
	movl	-4(%rbp), %eax	# i, tmp95
	cltq
	leaq	0(,%rax,4), %rdx	#, _2
	movq	-24(%rbp), %rax	# game, tmp96
	addq	%rdx, %rax	# _2, _3
	movl	(%rax), %eax	# *_3, _4
# eval/problem153//code.c:6:         out[i] = abs(game[i] - guess[i]);
	movl	-4(%rbp), %edx	# i, tmp97
	movslq	%edx, %rdx	# tmp97, _5
	leaq	0(,%rdx,4), %rcx	#, _6
	movq	-32(%rbp), %rdx	# guess, tmp98
	addq	%rcx, %rdx	# _6, _7
	movl	(%rdx), %edx	# *_7, _8
# eval/problem153//code.c:6:         out[i] = abs(game[i] - guess[i]);
	subl	%edx, %eax	# _8, _9
# eval/problem153//code.c:6:         out[i] = abs(game[i] - guess[i]);
	movl	-4(%rbp), %edx	# i, tmp99
	movslq	%edx, %rdx	# tmp99, _10
	leaq	0(,%rdx,4), %rcx	#, _11
	movq	-40(%rbp), %rdx	# out, tmp100
	addq	%rcx, %rdx	# _11, _12
# eval/problem153//code.c:6:         out[i] = abs(game[i] - guess[i]);
	movl	%eax, %ecx	# _9, tmp102
	negl	%ecx	# tmp102
	cmovns	%ecx, %eax	# tmp102,, _13
# eval/problem153//code.c:6:         out[i] = abs(game[i] - guess[i]);
	movl	%eax, (%rdx)	# _13, *_12
# eval/problem153//code.c:5:     for (int i = 0; i < length; i++) {
	addl	$1, -4(%rbp)	#, i
.L2:
# eval/problem153//code.c:5:     for (int i = 0; i < length; i++) {
	movl	-4(%rbp), %eax	# i, tmp101
	cmpl	-44(%rbp), %eax	# length, tmp101
	jl	.L3	#,
# eval/problem153//code.c:8: }
	nop	
	nop	
	popq	%rbp	#
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
