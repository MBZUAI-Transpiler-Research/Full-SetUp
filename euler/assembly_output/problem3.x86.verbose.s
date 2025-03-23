	.file	"problem3.c"
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
	subq	$16, %rsp	#,
# problem3.c:10:   unsigned long long n = 600851475143ULL;
	movabsq	$600851475143, %rax	#, tmp97
	movq	%rax, -16(%rbp)	# tmp97, n
# problem3.c:13:   for (i = 2ULL; i < n; i++) {
	movq	$2, -8(%rbp)	#, i
# problem3.c:13:   for (i = 2ULL; i < n; i++) {
	jmp	.L2	#
.L4:
# problem3.c:15:       n /= i;
	movq	-16(%rbp), %rax	# n, tmp88
	movl	$0, %edx	#, tmp87
	divq	-8(%rbp)	# i
	movq	%rax, -16(%rbp)	# tmp86, n
.L3:
# problem3.c:14:     while (n % i == 0) {
	movq	-16(%rbp), %rax	# n, tmp89
	movl	$0, %edx	#, tmp90
	divq	-8(%rbp)	# i
	movq	%rdx, %rax	# tmp90, _1
# problem3.c:14:     while (n % i == 0) {
	testq	%rax, %rax	# _1
	je	.L4	#,
# problem3.c:13:   for (i = 2ULL; i < n; i++) {
	addq	$1, -8(%rbp)	#, i
.L2:
# problem3.c:13:   for (i = 2ULL; i < n; i++) {
	movq	-8(%rbp), %rax	# i, tmp92
	cmpq	-16(%rbp), %rax	# n, tmp92
	jb	.L3	#,
# problem3.c:18:   printf("%llu\n", n);
	movq	-16(%rbp), %rax	# n, tmp93
	movq	%rax, %rsi	# tmp93,
	leaq	.LC0(%rip), %rax	#, tmp94
	movq	%rax, %rdi	# tmp94,
	movl	$0, %eax	#,
	call	printf@PLT	#
# problem3.c:20:   return 0;
	movl	$0, %eax	#, _9
# problem3.c:21: }
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
