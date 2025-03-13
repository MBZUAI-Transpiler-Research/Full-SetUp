	.file	"code.c"
# GNU C17 (Ubuntu 13.3.0-6ubuntu2~24.04) version 13.3.0 (x86_64-linux-gnu)
#	compiled by GNU C version 13.3.0, GMP version 6.3.0, MPFR version 4.2.1, MPC version 1.3.1, isl version isl-0.26-GMP

# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed: -mtune=generic -march=x86-64 -O0 -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection -fcf-protection
	.text
	.section	.rodata
.LC0:
	.string	"YES"
.LC1:
	.string	"NO"
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
	movq	%rdi, -24(%rbp)	# lst1, lst1
	movl	%esi, -28(%rbp)	# size1, size1
	movq	%rdx, -40(%rbp)	# lst2, lst2
	movl	%ecx, -32(%rbp)	# size2, size2
# code.c:4:     int num = 0;
	movl	$0, -12(%rbp)	#, num
# code.c:5:     for (int i = 0; i < size1; i++)
	movl	$0, -8(%rbp)	#, i
# code.c:5:     for (int i = 0; i < size1; i++)
	jmp	.L2	#
.L4:
# code.c:6:         if (lst1[i] % 2 == 0) num += 1;
	movl	-8(%rbp), %eax	# i, tmp96
	cltq
	leaq	0(,%rax,4), %rdx	#, _2
	movq	-24(%rbp), %rax	# lst1, tmp97
	addq	%rdx, %rax	# _2, _3
	movl	(%rax), %eax	# *_3, _4
# code.c:6:         if (lst1[i] % 2 == 0) num += 1;
	andl	$1, %eax	#, _6
# code.c:6:         if (lst1[i] % 2 == 0) num += 1;
	testl	%eax, %eax	# _6
	jne	.L3	#,
# code.c:6:         if (lst1[i] % 2 == 0) num += 1;
	addl	$1, -12(%rbp)	#, num
.L3:
# code.c:5:     for (int i = 0; i < size1; i++)
	addl	$1, -8(%rbp)	#, i
.L2:
# code.c:5:     for (int i = 0; i < size1; i++)
	movl	-8(%rbp), %eax	# i, tmp98
	cmpl	-28(%rbp), %eax	# size1, tmp98
	jl	.L4	#,
# code.c:7:     for (int i = 0; i < size2; i++)
	movl	$0, -4(%rbp)	#, i
# code.c:7:     for (int i = 0; i < size2; i++)
	jmp	.L5	#
.L7:
# code.c:8:         if (lst2[i] % 2 == 0) num += 1;
	movl	-4(%rbp), %eax	# i, tmp99
	cltq
	leaq	0(,%rax,4), %rdx	#, _8
	movq	-40(%rbp), %rax	# lst2, tmp100
	addq	%rdx, %rax	# _8, _9
	movl	(%rax), %eax	# *_9, _10
# code.c:8:         if (lst2[i] % 2 == 0) num += 1;
	andl	$1, %eax	#, _12
# code.c:8:         if (lst2[i] % 2 == 0) num += 1;
	testl	%eax, %eax	# _12
	jne	.L6	#,
# code.c:8:         if (lst2[i] % 2 == 0) num += 1;
	addl	$1, -12(%rbp)	#, num
.L6:
# code.c:7:     for (int i = 0; i < size2; i++)
	addl	$1, -4(%rbp)	#, i
.L5:
# code.c:7:     for (int i = 0; i < size2; i++)
	movl	-4(%rbp), %eax	# i, tmp101
	cmpl	-32(%rbp), %eax	# size2, tmp101
	jl	.L7	#,
# code.c:9:     if (num >= size1) return "YES";
	movl	-12(%rbp), %eax	# num, tmp102
	cmpl	-28(%rbp), %eax	# size1, tmp102
	jl	.L8	#,
# code.c:9:     if (num >= size1) return "YES";
	leaq	.LC0(%rip), %rax	#, _19
# code.c:9:     if (num >= size1) return "YES";
	jmp	.L9	#
.L8:
# code.c:10:     return "NO";
	leaq	.LC1(%rip), %rax	#, _19
.L9:
# code.c:11: }
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
