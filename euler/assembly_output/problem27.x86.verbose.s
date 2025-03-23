	.file	"problem27.c"
# GNU C17 (Ubuntu 11.4.0-1ubuntu1~22.04) version 11.4.0 (x86_64-linux-gnu)
#	compiled by GNU C version 11.4.0, GMP version 6.2.1, MPFR version 4.1.0, MPC version 1.2.1, isl version isl-0.24-GMP

# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed: -mtune=generic -march=x86-64 -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection -fcf-protection
	.text
	.section	.rodata
.LC0:
	.string	"%d\n"
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
# problem27.c:14:   int nmax = 0, amax = 0, bmax = 0;
	movl	$0, -12(%rbp)	#, nmax
# problem27.c:14:   int nmax = 0, amax = 0, bmax = 0;
	movl	$0, -8(%rbp)	#, amax
# problem27.c:14:   int nmax = 0, amax = 0, bmax = 0;
	movl	$0, -4(%rbp)	#, bmax
# problem27.c:16:   for (a = -999; a < 1000; a++) {
	movl	$-999, -24(%rbp)	#, a
# problem27.c:16:   for (a = -999; a < 1000; a++) {
	jmp	.L2	#
.L8:
# problem27.c:17:     for (b = -999; b < 1000; b++) {
	movl	$-999, -20(%rbp)	#, b
# problem27.c:17:     for (b = -999; b < 1000; b++) {
	jmp	.L3	#
.L7:
# problem27.c:18:       for (n = 0; is_prime(n*n + a*n + b); n++);
	movl	$0, -16(%rbp)	#, n
# problem27.c:18:       for (n = 0; is_prime(n*n + a*n + b); n++);
	jmp	.L4	#
.L5:
# problem27.c:18:       for (n = 0; is_prime(n*n + a*n + b); n++);
	addl	$1, -16(%rbp)	#, n
.L4:
# problem27.c:18:       for (n = 0; is_prime(n*n + a*n + b); n++);
	movl	-16(%rbp), %eax	# n, tmp90
	imull	%eax, %eax	# tmp90, tmp90
	movl	%eax, %edx	# tmp90, _1
# problem27.c:18:       for (n = 0; is_prime(n*n + a*n + b); n++);
	movl	-24(%rbp), %eax	# a, tmp91
	imull	-16(%rbp), %eax	# n, _2
# problem27.c:18:       for (n = 0; is_prime(n*n + a*n + b); n++);
	addl	%eax, %edx	# _2, _3
# problem27.c:18:       for (n = 0; is_prime(n*n + a*n + b); n++);
	movl	-20(%rbp), %eax	# b, tmp92
	addl	%edx, %eax	# _3, _4
	movl	%eax, %edi	# _4,
	call	is_prime	#
	testl	%eax, %eax	# _5
	jne	.L5	#,
# problem27.c:19:       if (n > nmax) {
	movl	-16(%rbp), %eax	# n, tmp93
	cmpl	-12(%rbp), %eax	# nmax, tmp93
	jle	.L6	#,
# problem27.c:20:         nmax = n;
	movl	-16(%rbp), %eax	# n, tmp94
	movl	%eax, -12(%rbp)	# tmp94, nmax
# problem27.c:21:         amax = a;
	movl	-24(%rbp), %eax	# a, tmp95
	movl	%eax, -8(%rbp)	# tmp95, amax
# problem27.c:22:         bmax = b;
	movl	-20(%rbp), %eax	# b, tmp96
	movl	%eax, -4(%rbp)	# tmp96, bmax
.L6:
# problem27.c:17:     for (b = -999; b < 1000; b++) {
	addl	$1, -20(%rbp)	#, b
.L3:
# problem27.c:17:     for (b = -999; b < 1000; b++) {
	cmpl	$999, -20(%rbp)	#, b
	jle	.L7	#,
# problem27.c:16:   for (a = -999; a < 1000; a++) {
	addl	$1, -24(%rbp)	#, a
.L2:
# problem27.c:16:   for (a = -999; a < 1000; a++) {
	cmpl	$999, -24(%rbp)	#, a
	jle	.L8	#,
# problem27.c:26:   printf("%d\n", amax * bmax);
	movl	-8(%rbp), %eax	# amax, tmp97
	imull	-4(%rbp), %eax	# bmax, _6
	movl	%eax, %esi	# _6,
	leaq	.LC0(%rip), %rax	#, tmp98
	movq	%rax, %rdi	# tmp98,
	movl	$0, %eax	#,
	call	printf@PLT	#
# problem27.c:28:   return 0;
	movl	$0, %eax	#, _28
# problem27.c:29: }
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.type	is_prime, @function
is_prime:
.LFB1:
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movl	%edi, -20(%rbp)	# n, n
# problem27.c:35:   if (n <= 1) {
	cmpl	$1, -20(%rbp)	#, n
	jg	.L11	#,
# problem27.c:36:     return 0;
	movl	$0, %eax	#, _6
	jmp	.L12	#
.L11:
# problem27.c:38:   if (n == 2) {
	cmpl	$2, -20(%rbp)	#, n
	jne	.L13	#,
# problem27.c:39:     return 1;
	movl	$1, %eax	#, _6
	jmp	.L12	#
.L13:
# problem27.c:42:   for (i = 2; i < sqrt((double)n); i++) {
	movl	$2, -4(%rbp)	#, i
# problem27.c:42:   for (i = 2; i < sqrt((double)n); i++) {
	jmp	.L14	#
.L16:
# problem27.c:43:     if (n % i == 0) {
	movl	-20(%rbp), %eax	# n, tmp88
	cltd
	idivl	-4(%rbp)	# i
	movl	%edx, %eax	# tmp89, _1
# problem27.c:43:     if (n % i == 0) {
	testl	%eax, %eax	# _1
	jne	.L15	#,
# problem27.c:44:       return 0;
	movl	$0, %eax	#, _6
	jmp	.L12	#
.L15:
# problem27.c:42:   for (i = 2; i < sqrt((double)n); i++) {
	addl	$1, -4(%rbp)	#, i
.L14:
# problem27.c:42:   for (i = 2; i < sqrt((double)n); i++) {
	pxor	%xmm1, %xmm1	# _2
	cvtsi2sdl	-4(%rbp), %xmm1	# i, _2
	movsd	%xmm1, -32(%rbp)	# _2, %sfp
# problem27.c:42:   for (i = 2; i < sqrt((double)n); i++) {
	pxor	%xmm2, %xmm2	# _3
	cvtsi2sdl	-20(%rbp), %xmm2	# n, _3
	movq	%xmm2, %rax	# _3, _3
	movq	%rax, %xmm0	# _3,
	call	sqrt@PLT	#
	movq	%xmm0, %rax	#, _4
# problem27.c:42:   for (i = 2; i < sqrt((double)n); i++) {
	movq	%rax, %xmm3	# _4, _4
	comisd	-32(%rbp), %xmm3	# %sfp, _4
	ja	.L16	#,
# problem27.c:47:   return 1;
	movl	$1, %eax	#, _6
.L12:
# problem27.c:48: }
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE1:
	.size	is_prime, .-is_prime
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
