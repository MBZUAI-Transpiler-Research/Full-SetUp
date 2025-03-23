	.file	"problem5.c"
# GNU C17 (Ubuntu 11.4.0-1ubuntu1~22.04) version 11.4.0 (x86_64-linux-gnu)
#	compiled by GNU C version 11.4.0, GMP version 6.2.1, MPFR version 4.1.0, MPC version 1.2.1, isl version isl-0.24-GMP

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
# problem5.c:13:   unsigned long ans = 1;
	movq	$1, -16(%rbp)	#, ans
# problem5.c:16:   for (i = 1; i <= 20; i++) {
	movq	$1, -8(%rbp)	#, i
# problem5.c:16:   for (i = 1; i <= 20; i++) {
	jmp	.L2	#
.L3:
# problem5.c:17:     ans = lcm(ans, i);
	movq	-8(%rbp), %rdx	# i, tmp84
	movq	-16(%rbp), %rax	# ans, tmp85
	movq	%rdx, %rsi	# tmp84,
	movq	%rax, %rdi	# tmp85,
	call	lcm	#
	movq	%rax, -16(%rbp)	# tmp86, ans
# problem5.c:16:   for (i = 1; i <= 20; i++) {
	addq	$1, -8(%rbp)	#, i
.L2:
# problem5.c:16:   for (i = 1; i <= 20; i++) {
	cmpq	$20, -8(%rbp)	#, i
	jbe	.L3	#,
# problem5.c:19:   printf("%lu\n", ans);
	movq	-16(%rbp), %rax	# ans, tmp87
	movq	%rax, %rsi	# tmp87,
	leaq	.LC0(%rip), %rax	#, tmp88
	movq	%rax, %rdi	# tmp88,
	movl	$0, %eax	#,
	call	printf@PLT	#
# problem5.c:20:   return 0;
	movl	$0, %eax	#, _8
# problem5.c:21: }
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.type	gcd, @function
gcd:
.LFB1:
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)	# a, a
	movq	%rsi, -32(%rbp)	# b, b
# problem5.c:27:   if (a > b) {
	movq	-24(%rbp), %rax	# a, tmp84
	cmpq	-32(%rbp), %rax	# b, tmp84
	jbe	.L7	#,
# problem5.c:28:     unsigned long t = a;
	movq	-24(%rbp), %rax	# a, tmp85
	movq	%rax, -16(%rbp)	# tmp85, t
# problem5.c:29:     a = b;
	movq	-32(%rbp), %rax	# b, tmp86
	movq	%rax, -24(%rbp)	# tmp86, a
# problem5.c:30:     b = t;
	movq	-16(%rbp), %rax	# t, tmp87
	movq	%rax, -32(%rbp)	# tmp87, b
# problem5.c:33:   while (r = a%b) {
	jmp	.L7	#
.L8:
# problem5.c:34:     a = b;
	movq	-32(%rbp), %rax	# b, tmp88
	movq	%rax, -24(%rbp)	# tmp88, a
# problem5.c:35:     b = r;
	movq	-8(%rbp), %rax	# r, tmp89
	movq	%rax, -32(%rbp)	# tmp89, b
.L7:
# problem5.c:33:   while (r = a%b) {
	movq	-24(%rbp), %rax	# a, tmp91
	movl	$0, %edx	#, tmp92
	divq	-32(%rbp)	# b
	movq	%rdx, -8(%rbp)	# tmp92, r
# problem5.c:33:   while (r = a%b) {
	cmpq	$0, -8(%rbp)	#, r
	jne	.L8	#,
# problem5.c:37:   return b;
	movq	-32(%rbp), %rax	# b, _11
# problem5.c:38: }
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE1:
	.size	gcd, .-gcd
	.type	lcm, @function
lcm:
.LFB2:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# a, a
	movq	%rsi, -32(%rbp)	# b, b
# problem5.c:42:   unsigned long long p = (unsigned long long)a * b;
	movq	-24(%rbp), %rax	# a, tmp86
	imulq	-32(%rbp), %rax	# b, tmp85
	movq	%rax, -8(%rbp)	# tmp85, p
# problem5.c:43:   return p/gcd(a, b);
	movq	-32(%rbp), %rdx	# b, tmp87
	movq	-24(%rbp), %rax	# a, tmp88
	movq	%rdx, %rsi	# tmp87,
	movq	%rax, %rdi	# tmp88,
	call	gcd	#
	movq	%rax, %rcx	#, _1
# problem5.c:43:   return p/gcd(a, b);
	movq	-8(%rbp), %rax	# p, tmp91
	movl	$0, %edx	#, tmp90
	divq	%rcx	# _1
# problem5.c:44: }
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE2:
	.size	lcm, .-lcm
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
