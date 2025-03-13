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
	movq	%rdi, -24(%rbp)	# lst, lst
	movl	%esi, -28(%rbp)	# size, size
# code.c:4:     int sum = 0;
	movl	$0, -8(%rbp)	#, sum
# code.c:5:     for (int i = 0; i * 2 < size; i++)
	movl	$0, -4(%rbp)	#, i
# code.c:5:     for (int i = 0; i * 2 < size; i++)
	jmp	.L2	#
.L4:
# code.c:6:         if (lst[i * 2] % 2 == 1) sum += lst[i * 2];
	movl	-4(%rbp), %eax	# i, tmp96
	addl	%eax, %eax	# _1
	cltq
# code.c:6:         if (lst[i * 2] % 2 == 1) sum += lst[i * 2];
	leaq	0(,%rax,4), %rdx	#, _3
	movq	-24(%rbp), %rax	# lst, tmp97
	addq	%rdx, %rax	# _3, _4
	movl	(%rax), %edx	# *_4, _5
# code.c:6:         if (lst[i * 2] % 2 == 1) sum += lst[i * 2];
	movl	%edx, %eax	# _5, tmp98
	sarl	$31, %eax	#, tmp98
	shrl	$31, %eax	#, tmp99
	addl	%eax, %edx	# tmp99, tmp100
	andl	$1, %edx	#, tmp101
	subl	%eax, %edx	# tmp99, tmp102
	movl	%edx, %eax	# tmp102, _6
# code.c:6:         if (lst[i * 2] % 2 == 1) sum += lst[i * 2];
	cmpl	$1, %eax	#, _6
	jne	.L3	#,
# code.c:6:         if (lst[i * 2] % 2 == 1) sum += lst[i * 2];
	movl	-4(%rbp), %eax	# i, tmp103
	addl	%eax, %eax	# _7
	cltq
# code.c:6:         if (lst[i * 2] % 2 == 1) sum += lst[i * 2];
	leaq	0(,%rax,4), %rdx	#, _9
	movq	-24(%rbp), %rax	# lst, tmp104
	addq	%rdx, %rax	# _9, _10
	movl	(%rax), %eax	# *_10, _11
# code.c:6:         if (lst[i * 2] % 2 == 1) sum += lst[i * 2];
	addl	%eax, -8(%rbp)	# _11, sum
.L3:
# code.c:5:     for (int i = 0; i * 2 < size; i++)
	addl	$1, -4(%rbp)	#, i
.L2:
# code.c:5:     for (int i = 0; i * 2 < size; i++)
	movl	-4(%rbp), %eax	# i, tmp105
	addl	%eax, %eax	# _12
# code.c:5:     for (int i = 0; i * 2 < size; i++)
	cmpl	%eax, -28(%rbp)	# _12, size
	jg	.L4	#,
# code.c:7:     return sum;
	movl	-8(%rbp), %eax	# sum, _19
# code.c:8: }
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
