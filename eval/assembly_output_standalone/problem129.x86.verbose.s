	.file	"code.c"
# GNU C17 (Ubuntu 13.3.0-6ubuntu2~24.04) version 13.3.0 (x86_64-linux-gnu)
#	compiled by GNU C version 13.3.0, GMP version 6.3.0, MPFR version 4.2.1, MPC version 1.3.1, isl version isl-0.26-GMP

# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed: -mtune=generic -march=x86-64 -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection -fcf-protection
	.text
	.globl	func0
	.type	func0, @function
func0:
.LFB6:
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)	# arr, arr
	movl	%esi, -28(%rbp)	# arr_size, arr_size
# eval/problem129//code.c:5:     if (arr_size == 0) return -32768;
	cmpl	$0, -28(%rbp)	#, arr_size
	jne	.L2	#,
# eval/problem129//code.c:5:     if (arr_size == 0) return -32768;
	movl	$-32768, %eax	#, _19
# eval/problem129//code.c:5:     if (arr_size == 0) return -32768;
	jmp	.L3	#
.L2:
# eval/problem129//code.c:6:     int sum = 0, prods = 1, i;
	movl	$0, -12(%rbp)	#, sum
# eval/problem129//code.c:6:     int sum = 0, prods = 1, i;
	movl	$1, -8(%rbp)	#, prods
# eval/problem129//code.c:7:     for (i = 0; i < arr_size; i++) {
	movl	$0, -4(%rbp)	#, i
# eval/problem129//code.c:7:     for (i = 0; i < arr_size; i++) {
	jmp	.L4	#
.L7:
# eval/problem129//code.c:8:         sum += abs(arr[i]);
	movl	-4(%rbp), %eax	# i, tmp97
	cltq
	leaq	0(,%rax,4), %rdx	#, _2
	movq	-24(%rbp), %rax	# arr, tmp98
	addq	%rdx, %rax	# _2, _3
	movl	(%rax), %eax	# *_3, _4
# eval/problem129//code.c:8:         sum += abs(arr[i]);
	movl	%eax, %edx	# _4, tmp106
	negl	%edx	# tmp106
	cmovns	%edx, %eax	# tmp106,, _5
# eval/problem129//code.c:8:         sum += abs(arr[i]);
	addl	%eax, -12(%rbp)	# _5, sum
# eval/problem129//code.c:9:         if (arr[i] == 0) prods = 0;
	movl	-4(%rbp), %eax	# i, tmp99
	cltq
	leaq	0(,%rax,4), %rdx	#, _7
	movq	-24(%rbp), %rax	# arr, tmp100
	addq	%rdx, %rax	# _7, _8
	movl	(%rax), %eax	# *_8, _9
# eval/problem129//code.c:9:         if (arr[i] == 0) prods = 0;
	testl	%eax, %eax	# _9
	jne	.L5	#,
# eval/problem129//code.c:9:         if (arr[i] == 0) prods = 0;
	movl	$0, -8(%rbp)	#, prods
.L5:
# eval/problem129//code.c:10:         if (arr[i] < 0) prods = -prods;
	movl	-4(%rbp), %eax	# i, tmp101
	cltq
	leaq	0(,%rax,4), %rdx	#, _11
	movq	-24(%rbp), %rax	# arr, tmp102
	addq	%rdx, %rax	# _11, _12
	movl	(%rax), %eax	# *_12, _13
# eval/problem129//code.c:10:         if (arr[i] < 0) prods = -prods;
	testl	%eax, %eax	# _13
	jns	.L6	#,
# eval/problem129//code.c:10:         if (arr[i] < 0) prods = -prods;
	negl	-8(%rbp)	# prods
.L6:
# eval/problem129//code.c:7:     for (i = 0; i < arr_size; i++) {
	addl	$1, -4(%rbp)	#, i
.L4:
# eval/problem129//code.c:7:     for (i = 0; i < arr_size; i++) {
	movl	-4(%rbp), %eax	# i, tmp103
	cmpl	-28(%rbp), %eax	# arr_size, tmp103
	jl	.L7	#,
# eval/problem129//code.c:12:     return sum * prods;
	movl	-12(%rbp), %eax	# sum, tmp104
	imull	-8(%rbp), %eax	# prods, _19
.L3:
# eval/problem129//code.c:13: }
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE6:
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
