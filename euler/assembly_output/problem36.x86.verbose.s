	.file	"problem36.c"
# GNU C17 (Ubuntu 13.3.0-6ubuntu2~24.04) version 13.3.0 (x86_64-linux-gnu)
#	compiled by GNU C version 13.3.0, GMP version 6.3.0, MPFR version 4.2.1, MPC version 1.3.1, isl version isl-0.26-GMP

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
	subq	$16, %rsp	#,
# problem36.c:15:   int sum = 0;
	movl	$0, -4(%rbp)	#, sum
# problem36.c:17:   for (i = 1; i < N; i++) {
	movl	$1, -8(%rbp)	#, i
# problem36.c:17:   for (i = 1; i < N; i++) {
	jmp	.L2	#
.L4:
# problem36.c:18:     if (palindromic_base(i, 10) && palindromic_base(i, 2)) {
	movl	-8(%rbp), %eax	# i, tmp86
	movl	$10, %esi	#,
	movl	%eax, %edi	# tmp86,
	call	palindromic_base	#
# problem36.c:18:     if (palindromic_base(i, 10) && palindromic_base(i, 2)) {
	testl	%eax, %eax	# _1
	je	.L3	#,
# problem36.c:18:     if (palindromic_base(i, 10) && palindromic_base(i, 2)) {
	movl	-8(%rbp), %eax	# i, tmp87
	movl	$2, %esi	#,
	movl	%eax, %edi	# tmp87,
	call	palindromic_base	#
# problem36.c:18:     if (palindromic_base(i, 10) && palindromic_base(i, 2)) {
	testl	%eax, %eax	# _2
	je	.L3	#,
# problem36.c:19:       sum += i;
	movl	-8(%rbp), %eax	# i, tmp88
	addl	%eax, -4(%rbp)	# tmp88, sum
.L3:
# problem36.c:17:   for (i = 1; i < N; i++) {
	addl	$1, -8(%rbp)	#, i
.L2:
# problem36.c:17:   for (i = 1; i < N; i++) {
	cmpl	$999999, -8(%rbp)	#, i
	jle	.L4	#,
# problem36.c:22:   printf("%d\n", sum);
	movl	-4(%rbp), %eax	# sum, tmp89
	movl	%eax, %esi	# tmp89,
	leaq	.LC0(%rip), %rax	#, tmp90
	movq	%rax, %rdi	# tmp90,
	movl	$0, %eax	#,
	call	printf@PLT	#
# problem36.c:24:   return 0;
	movl	$0, %eax	#, _12
# problem36.c:25: }
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.type	palindromic_base, @function
palindromic_base:
.LFB1:
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movl	%edi, -20(%rbp)	# n, n
	movl	%esi, -24(%rbp)	# base, base
# problem36.c:29:   int reversed = 0;
	movl	$0, -8(%rbp)	#, reversed
# problem36.c:30:   const int orig = n;
	movl	-20(%rbp), %eax	# n, tmp87
	movl	%eax, -4(%rbp)	# tmp87, orig
# problem36.c:32:   while (n) {
	jmp	.L7	#
.L8:
# problem36.c:33:     reversed = base*reversed + n%base;
	movl	-24(%rbp), %eax	# base, tmp88
	imull	-8(%rbp), %eax	# reversed, tmp88
	movl	%eax, %ecx	# tmp88, _1
# problem36.c:33:     reversed = base*reversed + n%base;
	movl	-20(%rbp), %eax	# n, tmp89
	cltd
	idivl	-24(%rbp)	# base
	movl	%edx, %eax	# tmp90, _2
# problem36.c:33:     reversed = base*reversed + n%base;
	addl	%ecx, %eax	# _1, tmp92
	movl	%eax, -8(%rbp)	# tmp92, reversed
# problem36.c:34:     n /= base;
	movl	-20(%rbp), %eax	# n, tmp96
	cltd
	idivl	-24(%rbp)	# base
	movl	%eax, -20(%rbp)	# tmp94, n
.L7:
# problem36.c:32:   while (n) {
	cmpl	$0, -20(%rbp)	#, n
	jne	.L8	#,
# problem36.c:36:   return orig == reversed;
	movl	-4(%rbp), %eax	# orig, tmp97
	cmpl	-8(%rbp), %eax	# reversed, tmp97
	sete	%al	#, _3
	movzbl	%al, %eax	# _3, _9
# problem36.c:37: }
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE1:
	.size	palindromic_base, .-palindromic_base
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
