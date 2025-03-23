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
# eval/problem91//code.c:5:     if (size < 2) return -1;
	cmpl	$1, -28(%rbp)	#, size
	jg	.L2	#,
# eval/problem91//code.c:5:     if (size < 2) return -1;
	movl	$-1, %eax	#, _24
	jmp	.L3	#
.L2:
# eval/problem91//code.c:7:     int first = INT_MAX, second = INT_MAX;
	movl	$2147483647, -12(%rbp)	#, first
# eval/problem91//code.c:7:     int first = INT_MAX, second = INT_MAX;
	movl	$2147483647, -8(%rbp)	#, second
# eval/problem91//code.c:8:     for (int i = 0; i < size; ++i) {
	movl	$0, -4(%rbp)	#, i
# eval/problem91//code.c:8:     for (int i = 0; i < size; ++i) {
	jmp	.L4	#
.L7:
# eval/problem91//code.c:9:         if (lst[i] < first) {
	movl	-4(%rbp), %eax	# i, tmp102
	cltq
	leaq	0(,%rax,4), %rdx	#, _2
	movq	-24(%rbp), %rax	# lst, tmp103
	addq	%rdx, %rax	# _2, _3
	movl	(%rax), %eax	# *_3, _4
# eval/problem91//code.c:9:         if (lst[i] < first) {
	cmpl	%eax, -12(%rbp)	# _4, first
	jle	.L5	#,
# eval/problem91//code.c:10:             second = first;
	movl	-12(%rbp), %eax	# first, tmp104
	movl	%eax, -8(%rbp)	# tmp104, second
# eval/problem91//code.c:11:             first = lst[i];
	movl	-4(%rbp), %eax	# i, tmp105
	cltq
	leaq	0(,%rax,4), %rdx	#, _6
	movq	-24(%rbp), %rax	# lst, tmp106
	addq	%rdx, %rax	# _6, _7
# eval/problem91//code.c:11:             first = lst[i];
	movl	(%rax), %eax	# *_7, tmp107
	movl	%eax, -12(%rbp)	# tmp107, first
	jmp	.L6	#
.L5:
# eval/problem91//code.c:12:         } else if (lst[i] < second && lst[i] != first) {
	movl	-4(%rbp), %eax	# i, tmp108
	cltq
	leaq	0(,%rax,4), %rdx	#, _9
	movq	-24(%rbp), %rax	# lst, tmp109
	addq	%rdx, %rax	# _9, _10
	movl	(%rax), %eax	# *_10, _11
# eval/problem91//code.c:12:         } else if (lst[i] < second && lst[i] != first) {
	cmpl	%eax, -8(%rbp)	# _11, second
	jle	.L6	#,
# eval/problem91//code.c:12:         } else if (lst[i] < second && lst[i] != first) {
	movl	-4(%rbp), %eax	# i, tmp110
	cltq
	leaq	0(,%rax,4), %rdx	#, _13
	movq	-24(%rbp), %rax	# lst, tmp111
	addq	%rdx, %rax	# _13, _14
	movl	(%rax), %eax	# *_14, _15
# eval/problem91//code.c:12:         } else if (lst[i] < second && lst[i] != first) {
	cmpl	%eax, -12(%rbp)	# _15, first
	je	.L6	#,
# eval/problem91//code.c:13:             second = lst[i];
	movl	-4(%rbp), %eax	# i, tmp112
	cltq
	leaq	0(,%rax,4), %rdx	#, _17
	movq	-24(%rbp), %rax	# lst, tmp113
	addq	%rdx, %rax	# _17, _18
# eval/problem91//code.c:13:             second = lst[i];
	movl	(%rax), %eax	# *_18, tmp114
	movl	%eax, -8(%rbp)	# tmp114, second
.L6:
# eval/problem91//code.c:8:     for (int i = 0; i < size; ++i) {
	addl	$1, -4(%rbp)	#, i
.L4:
# eval/problem91//code.c:8:     for (int i = 0; i < size; ++i) {
	movl	-4(%rbp), %eax	# i, tmp115
	cmpl	-28(%rbp), %eax	# size, tmp115
	jl	.L7	#,
# eval/problem91//code.c:17:     if (second == INT_MAX) return -1;
	cmpl	$2147483647, -8(%rbp)	#, second
	jne	.L8	#,
# eval/problem91//code.c:17:     if (second == INT_MAX) return -1;
	movl	$-1, %eax	#, _24
	jmp	.L3	#
.L8:
# eval/problem91//code.c:18:     return second;
	movl	-8(%rbp), %eax	# second, _24
.L3:
# eval/problem91//code.c:19: }
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
