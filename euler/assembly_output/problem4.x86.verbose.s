	.file	"problem4.c"
# GNU C17 (Ubuntu 13.3.0-6ubuntu2~24.04) version 13.3.0 (x86_64-linux-gnu)
#	compiled by GNU C version 13.3.0, GMP version 6.3.0, MPFR version 4.2.1, MPC version 1.3.1, isl version isl-0.26-GMP

# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed: -mtune=generic -march=x86-64 -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection -fcf-protection
	.text
	.section	.rodata
.LC0:
	.string	"%u\n"
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
	subq	$16, %rsp	#,
# problem4.c:12:   unsigned int i, j, max = 0;
	movl	$0, -8(%rbp)	#, max
# problem4.c:13:   for (i = 100; i <= 999; i++) {
	movl	$100, -16(%rbp)	#, i
# problem4.c:13:   for (i = 100; i <= 999; i++) {
	jmp	.L2	#
.L6:
# problem4.c:14:     for (j = 100; j <= 999; j++) {
	movl	$100, -12(%rbp)	#, j
# problem4.c:14:     for (j = 100; j <= 999; j++) {
	jmp	.L3	#
.L5:
# problem4.c:15:       unsigned int p = i*j;
	movl	-16(%rbp), %eax	# i, tmp86
	imull	-12(%rbp), %eax	# j, tmp85
	movl	%eax, -4(%rbp)	# tmp85, p
# problem4.c:16:       if (is_palindromic(p) && p > max) {
	movl	-4(%rbp), %eax	# p, tmp87
	movl	%eax, %edi	# tmp87,
	call	is_palindromic	#
# problem4.c:16:       if (is_palindromic(p) && p > max) {
	testl	%eax, %eax	# _1
	je	.L4	#,
# problem4.c:16:       if (is_palindromic(p) && p > max) {
	movl	-4(%rbp), %eax	# p, tmp88
	cmpl	%eax, -8(%rbp)	# tmp88, max
	jnb	.L4	#,
# problem4.c:17:         max = p;
	movl	-4(%rbp), %eax	# p, tmp89
	movl	%eax, -8(%rbp)	# tmp89, max
.L4:
# problem4.c:14:     for (j = 100; j <= 999; j++) {
	addl	$1, -12(%rbp)	#, j
.L3:
# problem4.c:14:     for (j = 100; j <= 999; j++) {
	cmpl	$999, -12(%rbp)	#, j
	jbe	.L5	#,
# problem4.c:13:   for (i = 100; i <= 999; i++) {
	addl	$1, -16(%rbp)	#, i
.L2:
# problem4.c:13:   for (i = 100; i <= 999; i++) {
	cmpl	$999, -16(%rbp)	#, i
	jbe	.L6	#,
# problem4.c:21:   printf("%u\n", max);
	movl	-8(%rbp), %eax	# max, tmp90
	movl	%eax, %esi	# tmp90,
	leaq	.LC0(%rip), %rax	#, tmp91
	movq	%rax, %rdi	# tmp91,
	movl	$0, %eax	#,
	call	printf@PLT	#
# problem4.c:22:   return 0;
	movl	$0, %eax	#, _13
# problem4.c:23: }
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.type	is_palindromic, @function
is_palindromic:
.LFB1:
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movl	%edi, -20(%rbp)	# n, n
# problem4.c:27:   unsigned int reversed = 0, t = n;
	movl	$0, -8(%rbp)	#, reversed
# problem4.c:27:   unsigned int reversed = 0, t = n;
	movl	-20(%rbp), %eax	# n, tmp87
	movl	%eax, -4(%rbp)	# tmp87, t
# problem4.c:29:   while (t) {
	jmp	.L9	#
.L10:
# problem4.c:30:     reversed = 10*reversed + (t % 10);
	movl	-8(%rbp), %edx	# reversed, tmp88
	movl	%edx, %eax	# tmp88, tmp89
	sall	$2, %eax	#, tmp89
	addl	%edx, %eax	# tmp88, tmp89
	addl	%eax, %eax	# tmp90
	movl	%eax, %esi	# tmp89, _1
# problem4.c:30:     reversed = 10*reversed + (t % 10);
	movl	-4(%rbp), %ecx	# t, tmp91
	movl	%ecx, %edx	# tmp91, tmp92
	movl	$3435973837, %eax	#, tmp94
	imulq	%rdx, %rax	# tmp92, tmp93
	shrq	$32, %rax	#, tmp95
	movl	%eax, %edx	# tmp95, _2
	shrl	$3, %edx	#, _2
	movl	%edx, %eax	# _2, tmp96
	sall	$2, %eax	#, tmp96
	addl	%edx, %eax	# _2, tmp96
	addl	%eax, %eax	# tmp97
	subl	%eax, %ecx	# tmp96, tmp91
	movl	%ecx, %edx	# tmp91, _2
# problem4.c:30:     reversed = 10*reversed + (t % 10);
	leal	(%rsi,%rdx), %eax	#, tmp98
	movl	%eax, -8(%rbp)	# tmp98, reversed
# problem4.c:31:     t /= 10;
	movl	-4(%rbp), %eax	# t, tmp100
	movl	%eax, %edx	# tmp100, tmp101
	movl	$3435973837, %eax	#, tmp103
	imulq	%rdx, %rax	# tmp101, tmp102
	shrq	$32, %rax	#, tmp104
	shrl	$3, %eax	#, tmp99
	movl	%eax, -4(%rbp)	# tmp99, t
.L9:
# problem4.c:29:   while (t) {
	cmpl	$0, -4(%rbp)	#, t
	jne	.L10	#,
# problem4.c:33:   return reversed == n;
	movl	-8(%rbp), %eax	# reversed, tmp105
	cmpl	-20(%rbp), %eax	# n, tmp105
	sete	%al	#, _3
	movzbl	%al, %eax	# _3, _9
# problem4.c:34: }
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE1:
	.size	is_palindromic, .-is_palindromic
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
