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
	movq	%rdi, -24(%rbp)	# numbers, numbers
	movl	%esi, -28(%rbp)	# size, size
	movq	%rdx, -40(%rbp)	# result, result
# eval/problem9//code.c:4:     int sum = 0, product = 1;
	movl	$0, -12(%rbp)	#, sum
# eval/problem9//code.c:4:     int sum = 0, product = 1;
	movl	$1, -8(%rbp)	#, product
# eval/problem9//code.c:5:     for (int i = 0; i < size; i++) {
	movl	$0, -4(%rbp)	#, i
# eval/problem9//code.c:5:     for (int i = 0; i < size; i++) {
	jmp	.L2	#
.L3:
# eval/problem9//code.c:6:         sum += numbers[i];
	movl	-4(%rbp), %eax	# i, tmp91
	cltq
	leaq	0(,%rax,4), %rdx	#, _2
	movq	-24(%rbp), %rax	# numbers, tmp92
	addq	%rdx, %rax	# _2, _3
	movl	(%rax), %eax	# *_3, _4
# eval/problem9//code.c:6:         sum += numbers[i];
	addl	%eax, -12(%rbp)	# _4, sum
# eval/problem9//code.c:7:         product *= numbers[i];
	movl	-4(%rbp), %eax	# i, tmp93
	cltq
	leaq	0(,%rax,4), %rdx	#, _6
	movq	-24(%rbp), %rax	# numbers, tmp94
	addq	%rdx, %rax	# _6, _7
	movl	(%rax), %eax	# *_7, _8
# eval/problem9//code.c:7:         product *= numbers[i];
	movl	-8(%rbp), %edx	# product, tmp96
	imull	%edx, %eax	# tmp96, tmp95
	movl	%eax, -8(%rbp)	# tmp95, product
# eval/problem9//code.c:5:     for (int i = 0; i < size; i++) {
	addl	$1, -4(%rbp)	#, i
.L2:
# eval/problem9//code.c:5:     for (int i = 0; i < size; i++) {
	movl	-4(%rbp), %eax	# i, tmp97
	cmpl	-28(%rbp), %eax	# size, tmp97
	jl	.L3	#,
# eval/problem9//code.c:9:     result[0] = sum;
	movq	-40(%rbp), %rax	# result, tmp98
	movl	-12(%rbp), %edx	# sum, tmp99
	movl	%edx, (%rax)	# tmp99, *result_18(D)
# eval/problem9//code.c:10:     result[1] = product;
	movq	-40(%rbp), %rax	# result, tmp100
	leaq	4(%rax), %rdx	#, _9
# eval/problem9//code.c:10:     result[1] = product;
	movl	-8(%rbp), %eax	# product, tmp101
	movl	%eax, (%rdx)	# tmp101, *_9
# eval/problem9//code.c:11: }
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
