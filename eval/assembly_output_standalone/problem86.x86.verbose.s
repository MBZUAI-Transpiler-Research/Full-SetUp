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
	movq	%rdi, -24(%rbp)	# lst, lst
	movl	%esi, -28(%rbp)	# size, size
# eval/problem86//code.c:4:     int sum = 0;
	movl	$0, -8(%rbp)	#, sum
# eval/problem86//code.c:5:     for (int i = 0; i * 2 + 1 < size; i++)
	movl	$0, -4(%rbp)	#, i
# eval/problem86//code.c:5:     for (int i = 0; i * 2 + 1 < size; i++)
	jmp	.L2	#
.L4:
# eval/problem86//code.c:6:         if (lst[i * 2 + 1] % 2 == 0) sum += lst[i * 2 + 1];
	movl	-4(%rbp), %eax	# i, tmp100
	addl	%eax, %eax	# _1
# eval/problem86//code.c:6:         if (lst[i * 2 + 1] % 2 == 0) sum += lst[i * 2 + 1];
	cltq
	addq	$1, %rax	#, _3
	leaq	0(,%rax,4), %rdx	#, _4
	movq	-24(%rbp), %rax	# lst, tmp101
	addq	%rdx, %rax	# _4, _5
	movl	(%rax), %eax	# *_5, _6
# eval/problem86//code.c:6:         if (lst[i * 2 + 1] % 2 == 0) sum += lst[i * 2 + 1];
	andl	$1, %eax	#, _8
# eval/problem86//code.c:6:         if (lst[i * 2 + 1] % 2 == 0) sum += lst[i * 2 + 1];
	testl	%eax, %eax	# _8
	jne	.L3	#,
# eval/problem86//code.c:6:         if (lst[i * 2 + 1] % 2 == 0) sum += lst[i * 2 + 1];
	movl	-4(%rbp), %eax	# i, tmp102
	addl	%eax, %eax	# _9
# eval/problem86//code.c:6:         if (lst[i * 2 + 1] % 2 == 0) sum += lst[i * 2 + 1];
	cltq
	addq	$1, %rax	#, _11
	leaq	0(,%rax,4), %rdx	#, _12
	movq	-24(%rbp), %rax	# lst, tmp103
	addq	%rdx, %rax	# _12, _13
	movl	(%rax), %eax	# *_13, _14
# eval/problem86//code.c:6:         if (lst[i * 2 + 1] % 2 == 0) sum += lst[i * 2 + 1];
	addl	%eax, -8(%rbp)	# _14, sum
.L3:
# eval/problem86//code.c:5:     for (int i = 0; i * 2 + 1 < size; i++)
	addl	$1, -4(%rbp)	#, i
.L2:
# eval/problem86//code.c:5:     for (int i = 0; i * 2 + 1 < size; i++)
	movl	-4(%rbp), %eax	# i, tmp104
	addl	%eax, %eax	# _15
# eval/problem86//code.c:5:     for (int i = 0; i * 2 + 1 < size; i++)
	addl	$1, %eax	#, _16
# eval/problem86//code.c:5:     for (int i = 0; i * 2 + 1 < size; i++)
	cmpl	%eax, -28(%rbp)	# _16, size
	jg	.L4	#,
# eval/problem86//code.c:7:     return sum;
	movl	-8(%rbp), %eax	# sum, _23
# eval/problem86//code.c:8: }
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
