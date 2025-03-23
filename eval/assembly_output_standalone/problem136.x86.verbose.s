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
	movq	%rdi, -24(%rbp)	# arr, arr
	movl	%esi, -28(%rbp)	# size, size
# eval/problem136//code.c:4:     int max = -1;
	movl	$-1, -8(%rbp)	#, max
# eval/problem136//code.c:5:     for (int i = 1; i < size; ++i) {
	movl	$1, -4(%rbp)	#, i
# eval/problem136//code.c:5:     for (int i = 1; i < size; ++i) {
	jmp	.L2	#
.L4:
# eval/problem136//code.c:6:         if (arr[i] < arr[i - 1]) max = i;
	movl	-4(%rbp), %eax	# i, tmp93
	cltq
	leaq	0(,%rax,4), %rdx	#, _2
	movq	-24(%rbp), %rax	# arr, tmp94
	addq	%rdx, %rax	# _2, _3
	movl	(%rax), %edx	# *_3, _4
# eval/problem136//code.c:6:         if (arr[i] < arr[i - 1]) max = i;
	movl	-4(%rbp), %eax	# i, tmp95
	cltq
	salq	$2, %rax	#, _6
	leaq	-4(%rax), %rcx	#, _7
	movq	-24(%rbp), %rax	# arr, tmp96
	addq	%rcx, %rax	# _7, _8
	movl	(%rax), %eax	# *_8, _9
# eval/problem136//code.c:6:         if (arr[i] < arr[i - 1]) max = i;
	cmpl	%eax, %edx	# _9, _4
	jge	.L3	#,
# eval/problem136//code.c:6:         if (arr[i] < arr[i - 1]) max = i;
	movl	-4(%rbp), %eax	# i, tmp97
	movl	%eax, -8(%rbp)	# tmp97, max
.L3:
# eval/problem136//code.c:5:     for (int i = 1; i < size; ++i) {
	addl	$1, -4(%rbp)	#, i
.L2:
# eval/problem136//code.c:5:     for (int i = 1; i < size; ++i) {
	movl	-4(%rbp), %eax	# i, tmp98
	cmpl	-28(%rbp), %eax	# size, tmp98
	jl	.L4	#,
# eval/problem136//code.c:8:     return max;
	movl	-8(%rbp), %eax	# max, _16
# eval/problem136//code.c:9: }
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
