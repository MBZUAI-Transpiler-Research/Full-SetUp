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
	movq	%rdi, -24(%rbp)	# l, l
	movl	%esi, -28(%rbp)	# size, size
# eval/problem43//code.c:4:     for (int i = 0; i < size; i++)
	movl	$0, -4(%rbp)	#, i
# eval/problem43//code.c:4:     for (int i = 0; i < size; i++)
	jmp	.L2	#
.L3:
# eval/problem43//code.c:5:         l[i] += 1;
	movl	-4(%rbp), %eax	# i, tmp90
	cltq
	leaq	0(,%rax,4), %rdx	#, _2
	movq	-24(%rbp), %rax	# l, tmp91
	addq	%rdx, %rax	# _2, _3
	movl	(%rax), %edx	# *_3, _4
	movl	-4(%rbp), %eax	# i, tmp92
	cltq
	leaq	0(,%rax,4), %rcx	#, _6
	movq	-24(%rbp), %rax	# l, tmp93
	addq	%rcx, %rax	# _6, _7
# eval/problem43//code.c:5:         l[i] += 1;
	addl	$1, %edx	#, _8
	movl	%edx, (%rax)	# _8, *_7
# eval/problem43//code.c:4:     for (int i = 0; i < size; i++)
	addl	$1, -4(%rbp)	#, i
.L2:
# eval/problem43//code.c:4:     for (int i = 0; i < size; i++)
	movl	-4(%rbp), %eax	# i, tmp94
	cmpl	-28(%rbp), %eax	# size, tmp94
	jl	.L3	#,
# eval/problem43//code.c:6: }
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
