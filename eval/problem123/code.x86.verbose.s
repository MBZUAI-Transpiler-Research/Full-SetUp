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
	movq	%rdi, -24(%rbp)	# arr, arr
	movl	%esi, -28(%rbp)	# k, k
# code.c:4:     int sum = 0;
	movl	$0, -8(%rbp)	#, sum
# code.c:5:     for (int i = 0; i < k; i++)
	movl	$0, -4(%rbp)	#, i
# code.c:5:     for (int i = 0; i < k; i++)
	jmp	.L2	#
.L4:
# code.c:6:         if (arr[i] >= -99 && arr[i] <= 99)
	movl	-4(%rbp), %eax	# i, tmp96
	cltq
	leaq	0(,%rax,4), %rdx	#, _2
	movq	-24(%rbp), %rax	# arr, tmp97
	addq	%rdx, %rax	# _2, _3
	movl	(%rax), %eax	# *_3, _4
# code.c:6:         if (arr[i] >= -99 && arr[i] <= 99)
	cmpl	$-99, %eax	#, _4
	jl	.L3	#,
# code.c:6:         if (arr[i] >= -99 && arr[i] <= 99)
	movl	-4(%rbp), %eax	# i, tmp98
	cltq
	leaq	0(,%rax,4), %rdx	#, _6
	movq	-24(%rbp), %rax	# arr, tmp99
	addq	%rdx, %rax	# _6, _7
	movl	(%rax), %eax	# *_7, _8
# code.c:6:         if (arr[i] >= -99 && arr[i] <= 99)
	cmpl	$99, %eax	#, _8
	jg	.L3	#,
# code.c:7:             sum += arr[i];
	movl	-4(%rbp), %eax	# i, tmp100
	cltq
	leaq	0(,%rax,4), %rdx	#, _10
	movq	-24(%rbp), %rax	# arr, tmp101
	addq	%rdx, %rax	# _10, _11
	movl	(%rax), %eax	# *_11, _12
# code.c:7:             sum += arr[i];
	addl	%eax, -8(%rbp)	# _12, sum
.L3:
# code.c:5:     for (int i = 0; i < k; i++)
	addl	$1, -4(%rbp)	#, i
.L2:
# code.c:5:     for (int i = 0; i < k; i++)
	movl	-4(%rbp), %eax	# i, tmp102
	cmpl	-28(%rbp), %eax	# k, tmp102
	jl	.L4	#,
# code.c:8:     return sum;
	movl	-8(%rbp), %eax	# sum, _19
# code.c:9: }
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
