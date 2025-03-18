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
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# lst, lst
	movl	%esi, -28(%rbp)	# size, size
# eval/problem70//code.c:5:     int *freq = (int *)calloc(size + 1, sizeof(int));
	movl	-28(%rbp), %eax	# size, tmp114
	addl	$1, %eax	#, _1
# eval/problem70//code.c:5:     int *freq = (int *)calloc(size + 1, sizeof(int));
	cltq
	movl	$4, %esi	#,
	movq	%rax, %rdi	# _2,
	call	calloc@PLT	#
	movq	%rax, -8(%rbp)	# tmp115, freq
# eval/problem70//code.c:6:     int max = -1;
	movl	$-1, -16(%rbp)	#, max
# eval/problem70//code.c:8:     for (int i = 0; i < size; i++) {
	movl	$0, -12(%rbp)	#, i
# eval/problem70//code.c:8:     for (int i = 0; i < size; i++) {
	jmp	.L2	#
.L4:
# eval/problem70//code.c:9:         freq[lst[i]]++;
	movl	-12(%rbp), %eax	# i, tmp116
	cltq
	leaq	0(,%rax,4), %rdx	#, _4
	movq	-24(%rbp), %rax	# lst, tmp117
	addq	%rdx, %rax	# _4, _5
	movl	(%rax), %eax	# *_5, _6
	cltq
# eval/problem70//code.c:9:         freq[lst[i]]++;
	leaq	0(,%rax,4), %rdx	#, _8
	movq	-8(%rbp), %rax	# freq, tmp118
	addq	%rdx, %rax	# _8, _9
	movl	(%rax), %edx	# *_9, _10
# eval/problem70//code.c:9:         freq[lst[i]]++;
	addl	$1, %edx	#, _11
	movl	%edx, (%rax)	# _11, *_9
# eval/problem70//code.c:10:         if ((freq[lst[i]] >= lst[i]) && (lst[i] > max)) {
	movl	-12(%rbp), %eax	# i, tmp119
	cltq
	leaq	0(,%rax,4), %rdx	#, _13
	movq	-24(%rbp), %rax	# lst, tmp120
	addq	%rdx, %rax	# _13, _14
	movl	(%rax), %eax	# *_14, _15
	cltq
# eval/problem70//code.c:10:         if ((freq[lst[i]] >= lst[i]) && (lst[i] > max)) {
	leaq	0(,%rax,4), %rdx	#, _17
	movq	-8(%rbp), %rax	# freq, tmp121
	addq	%rdx, %rax	# _17, _18
	movl	(%rax), %edx	# *_18, _19
# eval/problem70//code.c:10:         if ((freq[lst[i]] >= lst[i]) && (lst[i] > max)) {
	movl	-12(%rbp), %eax	# i, tmp122
	cltq
	leaq	0(,%rax,4), %rcx	#, _21
	movq	-24(%rbp), %rax	# lst, tmp123
	addq	%rcx, %rax	# _21, _22
	movl	(%rax), %eax	# *_22, _23
# eval/problem70//code.c:10:         if ((freq[lst[i]] >= lst[i]) && (lst[i] > max)) {
	cmpl	%eax, %edx	# _23, _19
	jl	.L3	#,
# eval/problem70//code.c:10:         if ((freq[lst[i]] >= lst[i]) && (lst[i] > max)) {
	movl	-12(%rbp), %eax	# i, tmp124
	cltq
	leaq	0(,%rax,4), %rdx	#, _25
	movq	-24(%rbp), %rax	# lst, tmp125
	addq	%rdx, %rax	# _25, _26
	movl	(%rax), %eax	# *_26, _27
# eval/problem70//code.c:10:         if ((freq[lst[i]] >= lst[i]) && (lst[i] > max)) {
	cmpl	%eax, -16(%rbp)	# _27, max
	jge	.L3	#,
# eval/problem70//code.c:11:             max = lst[i];
	movl	-12(%rbp), %eax	# i, tmp126
	cltq
	leaq	0(,%rax,4), %rdx	#, _29
	movq	-24(%rbp), %rax	# lst, tmp127
	addq	%rdx, %rax	# _29, _30
# eval/problem70//code.c:11:             max = lst[i];
	movl	(%rax), %eax	# *_30, tmp128
	movl	%eax, -16(%rbp)	# tmp128, max
.L3:
# eval/problem70//code.c:8:     for (int i = 0; i < size; i++) {
	addl	$1, -12(%rbp)	#, i
.L2:
# eval/problem70//code.c:8:     for (int i = 0; i < size; i++) {
	movl	-12(%rbp), %eax	# i, tmp129
	cmpl	-28(%rbp), %eax	# size, tmp129
	jl	.L4	#,
# eval/problem70//code.c:15:     free(freq);
	movq	-8(%rbp), %rax	# freq, tmp130
	movq	%rax, %rdi	# tmp130,
	call	free@PLT	#
# eval/problem70//code.c:16:     return max;
	movl	-16(%rbp), %eax	# max, _42
# eval/problem70//code.c:17: }
	leave	
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
