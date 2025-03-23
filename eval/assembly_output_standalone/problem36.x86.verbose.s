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
# eval/problem36//code.c:4:     float max = -10000;
	movss	.LC0(%rip), %xmm0	#, tmp91
	movss	%xmm0, -8(%rbp)	# tmp91, max
# eval/problem36//code.c:5:     for (int i = 0; i < size; i++)
	movl	$0, -4(%rbp)	#, i
# eval/problem36//code.c:5:     for (int i = 0; i < size; i++)
	jmp	.L2	#
.L5:
# eval/problem36//code.c:6:         if (max < l[i]) max = l[i];
	movl	-4(%rbp), %eax	# i, tmp92
	cltq
	leaq	0(,%rax,4), %rdx	#, _2
	movq	-24(%rbp), %rax	# l, tmp93
	addq	%rdx, %rax	# _2, _3
	movss	(%rax), %xmm0	# *_3, _4
# eval/problem36//code.c:6:         if (max < l[i]) max = l[i];
	comiss	-8(%rbp), %xmm0	# max, _4
	jbe	.L3	#,
# eval/problem36//code.c:6:         if (max < l[i]) max = l[i];
	movl	-4(%rbp), %eax	# i, tmp94
	cltq
	leaq	0(,%rax,4), %rdx	#, _6
	movq	-24(%rbp), %rax	# l, tmp95
	addq	%rdx, %rax	# _6, _7
# eval/problem36//code.c:6:         if (max < l[i]) max = l[i];
	movss	(%rax), %xmm0	# *_7, tmp96
	movss	%xmm0, -8(%rbp)	# tmp96, max
.L3:
# eval/problem36//code.c:5:     for (int i = 0; i < size; i++)
	addl	$1, -4(%rbp)	#, i
.L2:
# eval/problem36//code.c:5:     for (int i = 0; i < size; i++)
	movl	-4(%rbp), %eax	# i, tmp97
	cmpl	-28(%rbp), %eax	# size, tmp97
	jl	.L5	#,
# eval/problem36//code.c:7:     return max;
	movss	-8(%rbp), %xmm0	# max, _14
# eval/problem36//code.c:8: }
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE0:
	.size	func0, .-func0
	.section	.rodata
	.align 4
.LC0:
	.long	-971227136
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
