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
	movq	%rdi, -24(%rbp)	# l, l
	movl	%esi, -28(%rbp)	# size, size
# code.c:5:     for (int i = 0; i < size; i++)
	movl	$0, -12(%rbp)	#, i
# code.c:5:     for (int i = 0; i < size; i++)
	jmp	.L2	#
.L9:
# code.c:6:         for (int j = i + 1; j < size; j++)
	movl	-12(%rbp), %eax	# i, tmp101
	addl	$1, %eax	#, tmp100
	movl	%eax, -8(%rbp)	# tmp100, j
# code.c:6:         for (int j = i + 1; j < size; j++)
	jmp	.L3	#
.L8:
# code.c:7:             for (int k = j + 1; k < size; k++)
	movl	-8(%rbp), %eax	# j, tmp105
	addl	$1, %eax	#, tmp104
	movl	%eax, -4(%rbp)	# tmp104, k
# code.c:7:             for (int k = j + 1; k < size; k++)
	jmp	.L4	#
.L7:
# code.c:8:                 if (l[i] + l[j] + l[k] == 0) return true;
	movl	-12(%rbp), %eax	# i, tmp106
	cltq
	leaq	0(,%rax,4), %rdx	#, _2
	movq	-24(%rbp), %rax	# l, tmp107
	addq	%rdx, %rax	# _2, _3
	movl	(%rax), %edx	# *_3, _4
# code.c:8:                 if (l[i] + l[j] + l[k] == 0) return true;
	movl	-8(%rbp), %eax	# j, tmp108
	cltq
	leaq	0(,%rax,4), %rcx	#, _6
	movq	-24(%rbp), %rax	# l, tmp109
	addq	%rcx, %rax	# _6, _7
	movl	(%rax), %eax	# *_7, _8
# code.c:8:                 if (l[i] + l[j] + l[k] == 0) return true;
	addl	%eax, %edx	# _8, _9
# code.c:8:                 if (l[i] + l[j] + l[k] == 0) return true;
	movl	-4(%rbp), %eax	# k, tmp110
	cltq
	leaq	0(,%rax,4), %rcx	#, _11
	movq	-24(%rbp), %rax	# l, tmp111
	addq	%rcx, %rax	# _11, _12
	movl	(%rax), %eax	# *_12, _13
# code.c:8:                 if (l[i] + l[j] + l[k] == 0) return true;
	addl	%edx, %eax	# _9, _14
# code.c:8:                 if (l[i] + l[j] + l[k] == 0) return true;
	testl	%eax, %eax	# _14
	jne	.L5	#,
# code.c:8:                 if (l[i] + l[j] + l[k] == 0) return true;
	movl	$1, %eax	#, _18
# code.c:8:                 if (l[i] + l[j] + l[k] == 0) return true;
	jmp	.L6	#
.L5:
# code.c:7:             for (int k = j + 1; k < size; k++)
	addl	$1, -4(%rbp)	#, k
.L4:
# code.c:7:             for (int k = j + 1; k < size; k++)
	movl	-4(%rbp), %eax	# k, tmp112
	cmpl	-28(%rbp), %eax	# size, tmp112
	jl	.L7	#,
# code.c:6:         for (int j = i + 1; j < size; j++)
	addl	$1, -8(%rbp)	#, j
.L3:
# code.c:6:         for (int j = i + 1; j < size; j++)
	movl	-8(%rbp), %eax	# j, tmp113
	cmpl	-28(%rbp), %eax	# size, tmp113
	jl	.L8	#,
# code.c:5:     for (int i = 0; i < size; i++)
	addl	$1, -12(%rbp)	#, i
.L2:
# code.c:5:     for (int i = 0; i < size; i++)
	movl	-12(%rbp), %eax	# i, tmp114
	cmpl	-28(%rbp), %eax	# size, tmp114
	jl	.L9	#,
# code.c:9:     return false;
	movl	$0, %eax	#, _18
.L6:
# code.c:10: }
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
