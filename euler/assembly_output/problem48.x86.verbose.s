	.file	"problem48.c"
# GNU C17 (Ubuntu 11.4.0-1ubuntu1~22.04) version 11.4.0 (x86_64-linux-gnu)
#	compiled by GNU C version 11.4.0, GMP version 6.2.1, MPFR version 4.1.0, MPC version 1.2.1, isl version isl-0.24-GMP

# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed: -mtune=generic -march=x86-64 -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection -fcf-protection
	.text
	.section	.rodata
.LC0:
	.string	"%llu\n"
	.text
	.globl	main
	.type	main, @function
main:
.LFB0:
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
# problem48.c:13:   unsigned long long rem = 0;
	movq	$0, -16(%rbp)	#, rem
# problem48.c:15:   for (i = 1; i < N; i++) {
	movl	$1, -24(%rbp)	#, i
# problem48.c:15:   for (i = 1; i < N; i++) {
	jmp	.L2	#
.L5:
# problem48.c:16:     unsigned long long r = 1;
	movq	$1, -8(%rbp)	#, r
# problem48.c:18:     for (j = 0; j < i; j++) {
	movl	$0, -20(%rbp)	#, j
# problem48.c:18:     for (j = 0; j < i; j++) {
	jmp	.L3	#
.L4:
# problem48.c:19:       r = (r * i) % Q;
	movl	-24(%rbp), %eax	# i, _1
	imulq	-8(%rbp), %rax	# r, _1
	movq	%rax, %rcx	# _1, _2
# problem48.c:19:       r = (r * i) % Q;
	movabsq	$-2601111570856684097, %rdx	#, tmp88
	movq	%rcx, %rax	# _2, tmp107
	mulq	%rdx	# tmp88
	movq	%rdx, %rax	# tmp87, tmp87
	shrq	$33, %rax	#, tmp87
	movq	%rax, -8(%rbp)	# tmp89, r
	movq	-8(%rbp), %rax	# r, tmp91
	movabsq	$10000000000, %rdx	#, tmp92
	imulq	%rax, %rdx	# tmp91, tmp90
	movq	%rcx, %rax	# _2, _2
	subq	%rdx, %rax	# tmp90, _2
	movq	%rax, -8(%rbp)	# tmp93, r
# problem48.c:18:     for (j = 0; j < i; j++) {
	addl	$1, -20(%rbp)	#, j
.L3:
# problem48.c:18:     for (j = 0; j < i; j++) {
	movl	-20(%rbp), %eax	# j, tmp94
	cmpl	-24(%rbp), %eax	# i, tmp94
	jb	.L4	#,
# problem48.c:21:     rem = (rem + r) % Q;
	movq	-16(%rbp), %rdx	# rem, tmp95
	movq	-8(%rbp), %rax	# r, tmp96
	leaq	(%rdx,%rax), %rcx	#, _3
# problem48.c:21:     rem = (rem + r) % Q;
	movabsq	$-2601111570856684097, %rdx	#, tmp98
	movq	%rcx, %rax	# _3, tmp108
	mulq	%rdx	# tmp98
	movq	%rdx, %rax	# tmp97, tmp97
	shrq	$33, %rax	#, tmp97
	movq	%rax, -16(%rbp)	# tmp99, rem
	movq	-16(%rbp), %rax	# rem, tmp101
	movabsq	$10000000000, %rdx	#, tmp102
	imulq	%rax, %rdx	# tmp101, tmp100
	movq	%rcx, %rax	# _3, _3
	subq	%rdx, %rax	# tmp100, _3
	movq	%rax, -16(%rbp)	# tmp103, rem
# problem48.c:15:   for (i = 1; i < N; i++) {
	addl	$1, -24(%rbp)	#, i
.L2:
# problem48.c:15:   for (i = 1; i < N; i++) {
	cmpl	$999, -24(%rbp)	#, i
	jbe	.L5	#,
# problem48.c:23:   printf("%llu\n", rem);
	movq	-16(%rbp), %rax	# rem, tmp104
	movq	%rax, %rsi	# tmp104,
	leaq	.LC0(%rip), %rax	#, tmp105
	movq	%rax, %rdi	# tmp105,
	movl	$0, %eax	#,
	call	printf@PLT	#
# problem48.c:25:   return 0;
	movl	$0, %eax	#, _12
# problem48.c:26: }
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE0:
	.size	main, .-main
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
