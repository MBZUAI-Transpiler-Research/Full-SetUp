	.file	"code.c"
# GNU C17 (Ubuntu 13.3.0-6ubuntu2~24.04) version 13.3.0 (x86_64-linux-gnu)
#	compiled by GNU C version 13.3.0, GMP version 6.3.0, MPFR version 4.2.1, MPC version 1.3.1, isl version isl-0.26-GMP

# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed: -mtune=generic -march=x86-64 -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection -fcf-protection
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
	movl	%edi, -36(%rbp)	# n, n
# eval/problem140//code.c:4:     long long fact = 1, bfact = 1;
	movq	$1, -16(%rbp)	#, fact
# eval/problem140//code.c:4:     long long fact = 1, bfact = 1;
	movq	$1, -8(%rbp)	#, bfact
# eval/problem140//code.c:5:     for (int i = 1; i <= n; i++) {
	movl	$1, -20(%rbp)	#, i
# eval/problem140//code.c:5:     for (int i = 1; i <= n; i++) {
	jmp	.L2	#
.L3:
# eval/problem140//code.c:6:         fact = fact * i;
	movl	-20(%rbp), %eax	# i, tmp85
	cltq
# eval/problem140//code.c:6:         fact = fact * i;
	movq	-16(%rbp), %rdx	# fact, tmp87
	imulq	%rdx, %rax	# tmp87, tmp86
	movq	%rax, -16(%rbp)	# tmp86, fact
# eval/problem140//code.c:7:         bfact = bfact * fact;
	movq	-8(%rbp), %rax	# bfact, tmp89
	imulq	-16(%rbp), %rax	# fact, tmp88
	movq	%rax, -8(%rbp)	# tmp88, bfact
# eval/problem140//code.c:5:     for (int i = 1; i <= n; i++) {
	addl	$1, -20(%rbp)	#, i
.L2:
# eval/problem140//code.c:5:     for (int i = 1; i <= n; i++) {
	movl	-20(%rbp), %eax	# i, tmp90
	cmpl	-36(%rbp), %eax	# n, tmp90
	jle	.L3	#,
# eval/problem140//code.c:9:     return bfact;
	movq	-8(%rbp), %rax	# bfact, _9
# eval/problem140//code.c:10: }
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
