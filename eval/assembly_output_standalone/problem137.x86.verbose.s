	.file	"code.c"
# GNU C17 (Ubuntu 11.4.0-1ubuntu1~22.04) version 11.4.0 (x86_64-linux-gnu)
#	compiled by GNU C version 11.4.0, GMP version 6.2.1, MPFR version 4.1.0, MPC version 1.2.1, isl version isl-0.24-GMP

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
	movq	%rdx, -40(%rbp)	# result, result
# eval/problem137//code.c:4:     int maxneg = 0;
	movl	$0, -12(%rbp)	#, maxneg
# eval/problem137//code.c:5:     int minpos = 0;
	movl	$0, -8(%rbp)	#, minpos
# eval/problem137//code.c:6:     for (int i = 0; i < size; i++) {
	movl	$0, -4(%rbp)	#, i
# eval/problem137//code.c:6:     for (int i = 0; i < size; i++) {
	jmp	.L2	#
.L7:
# eval/problem137//code.c:7:         if (lst[i] < 0 && (maxneg == 0 || lst[i] > maxneg)) maxneg = lst[i];
	movl	-4(%rbp), %eax	# i, tmp105
	cltq
	leaq	0(,%rax,4), %rdx	#, _2
	movq	-24(%rbp), %rax	# lst, tmp106
	addq	%rdx, %rax	# _2, _3
	movl	(%rax), %eax	# *_3, _4
# eval/problem137//code.c:7:         if (lst[i] < 0 && (maxneg == 0 || lst[i] > maxneg)) maxneg = lst[i];
	testl	%eax, %eax	# _4
	jns	.L3	#,
# eval/problem137//code.c:7:         if (lst[i] < 0 && (maxneg == 0 || lst[i] > maxneg)) maxneg = lst[i];
	cmpl	$0, -12(%rbp)	#, maxneg
	je	.L4	#,
# eval/problem137//code.c:7:         if (lst[i] < 0 && (maxneg == 0 || lst[i] > maxneg)) maxneg = lst[i];
	movl	-4(%rbp), %eax	# i, tmp107
	cltq
	leaq	0(,%rax,4), %rdx	#, _6
	movq	-24(%rbp), %rax	# lst, tmp108
	addq	%rdx, %rax	# _6, _7
	movl	(%rax), %eax	# *_7, _8
# eval/problem137//code.c:7:         if (lst[i] < 0 && (maxneg == 0 || lst[i] > maxneg)) maxneg = lst[i];
	cmpl	%eax, -12(%rbp)	# _8, maxneg
	jge	.L3	#,
.L4:
# eval/problem137//code.c:7:         if (lst[i] < 0 && (maxneg == 0 || lst[i] > maxneg)) maxneg = lst[i];
	movl	-4(%rbp), %eax	# i, tmp109
	cltq
	leaq	0(,%rax,4), %rdx	#, _10
	movq	-24(%rbp), %rax	# lst, tmp110
	addq	%rdx, %rax	# _10, _11
# eval/problem137//code.c:7:         if (lst[i] < 0 && (maxneg == 0 || lst[i] > maxneg)) maxneg = lst[i];
	movl	(%rax), %eax	# *_11, tmp111
	movl	%eax, -12(%rbp)	# tmp111, maxneg
.L3:
# eval/problem137//code.c:8:         if (lst[i] > 0 && (minpos == 0 || lst[i] < minpos)) minpos = lst[i];
	movl	-4(%rbp), %eax	# i, tmp112
	cltq
	leaq	0(,%rax,4), %rdx	#, _13
	movq	-24(%rbp), %rax	# lst, tmp113
	addq	%rdx, %rax	# _13, _14
	movl	(%rax), %eax	# *_14, _15
# eval/problem137//code.c:8:         if (lst[i] > 0 && (minpos == 0 || lst[i] < minpos)) minpos = lst[i];
	testl	%eax, %eax	# _15
	jle	.L5	#,
# eval/problem137//code.c:8:         if (lst[i] > 0 && (minpos == 0 || lst[i] < minpos)) minpos = lst[i];
	cmpl	$0, -8(%rbp)	#, minpos
	je	.L6	#,
# eval/problem137//code.c:8:         if (lst[i] > 0 && (minpos == 0 || lst[i] < minpos)) minpos = lst[i];
	movl	-4(%rbp), %eax	# i, tmp114
	cltq
	leaq	0(,%rax,4), %rdx	#, _17
	movq	-24(%rbp), %rax	# lst, tmp115
	addq	%rdx, %rax	# _17, _18
	movl	(%rax), %eax	# *_18, _19
# eval/problem137//code.c:8:         if (lst[i] > 0 && (minpos == 0 || lst[i] < minpos)) minpos = lst[i];
	cmpl	%eax, -8(%rbp)	# _19, minpos
	jle	.L5	#,
.L6:
# eval/problem137//code.c:8:         if (lst[i] > 0 && (minpos == 0 || lst[i] < minpos)) minpos = lst[i];
	movl	-4(%rbp), %eax	# i, tmp116
	cltq
	leaq	0(,%rax,4), %rdx	#, _21
	movq	-24(%rbp), %rax	# lst, tmp117
	addq	%rdx, %rax	# _21, _22
# eval/problem137//code.c:8:         if (lst[i] > 0 && (minpos == 0 || lst[i] < minpos)) minpos = lst[i];
	movl	(%rax), %eax	# *_22, tmp118
	movl	%eax, -8(%rbp)	# tmp118, minpos
.L5:
# eval/problem137//code.c:6:     for (int i = 0; i < size; i++) {
	addl	$1, -4(%rbp)	#, i
.L2:
# eval/problem137//code.c:6:     for (int i = 0; i < size; i++) {
	movl	-4(%rbp), %eax	# i, tmp119
	cmpl	-28(%rbp), %eax	# size, tmp119
	jl	.L7	#,
# eval/problem137//code.c:10:     result[0] = maxneg;
	movq	-40(%rbp), %rax	# result, tmp120
	movl	-12(%rbp), %edx	# maxneg, tmp121
	movl	%edx, (%rax)	# tmp121, *result_34(D)
# eval/problem137//code.c:11:     result[1] = minpos;
	movq	-40(%rbp), %rax	# result, tmp122
	leaq	4(%rax), %rdx	#, _23
# eval/problem137//code.c:11:     result[1] = minpos;
	movl	-8(%rbp), %eax	# minpos, tmp123
	movl	%eax, (%rdx)	# tmp123, *_23
# eval/problem137//code.c:12: }
	nop	
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE0:
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
