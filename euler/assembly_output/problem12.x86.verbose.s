	.file	"problem12.c"
# GNU C17 (Ubuntu 13.3.0-6ubuntu2~24.04) version 13.3.0 (x86_64-linux-gnu)
#	compiled by GNU C version 13.3.0, GMP version 6.3.0, MPFR version 4.2.1, MPC version 1.3.1, isl version isl-0.26-GMP

# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed: -mtune=generic -march=x86-64 -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection -fcf-protection
	.text
	.section	.rodata
.LC0:
	.string	"%lu\n"
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
# problem12.c:12:   unsigned long i = 1, n = 1;
	movq	$1, -16(%rbp)	#, i
# problem12.c:12:   unsigned long i = 1, n = 1;
	movq	$1, -8(%rbp)	#, n
# problem12.c:14:   while (divisor_count(n) < 500) {
	jmp	.L2	#
.L3:
# problem12.c:15:     n += ++i;
	addq	$1, -16(%rbp)	#, i
	movq	-16(%rbp), %rax	# i, i.0_12
# problem12.c:15:     n += ++i;
	addq	%rax, -8(%rbp)	# i.0_12, n
.L2:
# problem12.c:14:   while (divisor_count(n) < 500) {
	movq	-8(%rbp), %rax	# n, tmp86
	movq	%rax, %rdi	# tmp86,
	call	divisor_count	#
# problem12.c:14:   while (divisor_count(n) < 500) {
	cmpl	$499, %eax	#, _1
	jbe	.L3	#,
# problem12.c:17:   printf("%lu\n", n);
	movq	-8(%rbp), %rax	# n, tmp87
	movq	%rax, %rsi	# tmp87,
	leaq	.LC0(%rip), %rax	#, tmp88
	movq	%rax, %rdi	# tmp88,
	movl	$0, %eax	#,
	call	printf@PLT	#
# problem12.c:18:   return 0;
	movl	$0, %eax	#, _10
# problem12.c:19: }
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.type	divisor_count, @function
divisor_count:
.LFB1:
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)	# n, n
# problem12.c:23:   unsigned ret = 1;
	movl	$1, -16(%rbp)	#, ret
# problem12.c:26:   for (i = 2; i <= n; i++) {
	movq	$2, -8(%rbp)	#, i
# problem12.c:26:   for (i = 2; i <= n; i++) {
	jmp	.L6	#
.L9:
# problem12.c:27:     unsigned c = 0;
	movl	$0, -12(%rbp)	#, c
# problem12.c:28:     while (n % i == 0) {
	jmp	.L7	#
.L8:
# problem12.c:29:       c++;
	addl	$1, -12(%rbp)	#, c
# problem12.c:30:       n /= i;
	movq	-24(%rbp), %rax	# n, tmp89
	movl	$0, %edx	#, tmp88
	divq	-8(%rbp)	# i
	movq	%rax, -24(%rbp)	# tmp87, n
.L7:
# problem12.c:28:     while (n % i == 0) {
	movq	-24(%rbp), %rax	# n, tmp90
	movl	$0, %edx	#, tmp91
	divq	-8(%rbp)	# i
	movq	%rdx, %rax	# tmp91, _1
# problem12.c:28:     while (n % i == 0) {
	testq	%rax, %rax	# _1
	je	.L8	#,
# problem12.c:32:     ret *= c+1;
	movl	-12(%rbp), %eax	# c, tmp93
	leal	1(%rax), %edx	#, _2
# problem12.c:32:     ret *= c+1;
	movl	-16(%rbp), %eax	# ret, tmp95
	imull	%edx, %eax	# _2, tmp94
	movl	%eax, -16(%rbp)	# tmp94, ret
# problem12.c:26:   for (i = 2; i <= n; i++) {
	addq	$1, -8(%rbp)	#, i
.L6:
# problem12.c:26:   for (i = 2; i <= n; i++) {
	movq	-8(%rbp), %rax	# i, tmp96
	cmpq	%rax, -24(%rbp)	# tmp96, n
	jnb	.L9	#,
# problem12.c:34:   return ret;
	movl	-16(%rbp), %eax	# ret, _11
# problem12.c:35: }
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE1:
	.size	divisor_count, .-divisor_count
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
