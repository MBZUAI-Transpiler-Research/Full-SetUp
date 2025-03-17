	.file	"problem21.c"
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
# problem21.c:12:   int i, d, sum = 0;
	movl	$0, -8(%rbp)	#, sum
# problem21.c:14:   for (i = 2; i < 10000; i++) {
	movl	$2, -12(%rbp)	#, i
# problem21.c:14:   for (i = 2; i < 10000; i++) {
	jmp	.L2	#
.L4:
# problem21.c:15:     d = divisors_sum(i);
	movl	-12(%rbp), %eax	# i, tmp86
	movl	%eax, %edi	# tmp86,
	call	divisors_sum	#
	movl	%eax, -4(%rbp)	# tmp87, d
# problem21.c:16:     if (i < d && i == divisors_sum(d)) {
	movl	-12(%rbp), %eax	# i, tmp88
	cmpl	-4(%rbp), %eax	# d, tmp88
	jge	.L3	#,
# problem21.c:16:     if (i < d && i == divisors_sum(d)) {
	movl	-4(%rbp), %eax	# d, tmp89
	movl	%eax, %edi	# tmp89,
	call	divisors_sum	#
# problem21.c:16:     if (i < d && i == divisors_sum(d)) {
	cmpl	%eax, -12(%rbp)	# _1, i
	jne	.L3	#,
# problem21.c:17:       sum += i + d;
	movl	-12(%rbp), %edx	# i, tmp90
	movl	-4(%rbp), %eax	# d, tmp91
	addl	%edx, %eax	# tmp90, _2
# problem21.c:17:       sum += i + d;
	addl	%eax, -8(%rbp)	# _2, sum
.L3:
# problem21.c:14:   for (i = 2; i < 10000; i++) {
	addl	$1, -12(%rbp)	#, i
.L2:
# problem21.c:14:   for (i = 2; i < 10000; i++) {
	cmpl	$9999, -12(%rbp)	#, i
	jle	.L4	#,
# problem21.c:20:   printf("%d\n", sum);
	movl	-8(%rbp), %eax	# sum, tmp92
	movl	%eax, %esi	# tmp92,
	leaq	.LC0(%rip), %rax	#, tmp93
	movq	%rax, %rdi	# tmp93,
	movl	$0, %eax	#,
	call	printf@PLT	#
# problem21.c:22:   return 0;
	movl	$0, %eax	#, _12
# problem21.c:23: }
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.type	divisors_sum, @function
divisors_sum:
.LFB1:
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movl	%edi, -20(%rbp)	# n, n
# problem21.c:27:   int sum= 1;
	movl	$1, -16(%rbp)	#, sum
# problem21.c:28:   int i, k = n;
	movl	-20(%rbp), %eax	# n, tmp89
	movl	%eax, -8(%rbp)	# tmp89, k
# problem21.c:30:   for (i = 2; i <= k; i++) {
	movl	$2, -12(%rbp)	#, i
# problem21.c:30:   for (i = 2; i <= k; i++) {
	jmp	.L7	#
.L10:
# problem21.c:31:     int p = 1;
	movl	$1, -4(%rbp)	#, p
# problem21.c:32:     while (k % i == 0) {
	jmp	.L8	#
.L9:
# problem21.c:33:       p *= i;
	movl	-4(%rbp), %eax	# p, tmp91
	imull	-12(%rbp), %eax	# i, tmp90
	movl	%eax, -4(%rbp)	# tmp90, p
# problem21.c:34:       k /= i;
	movl	-8(%rbp), %eax	# k, tmp95
	cltd
	idivl	-12(%rbp)	# i
	movl	%eax, -8(%rbp)	# tmp93, k
.L8:
# problem21.c:32:     while (k % i == 0) {
	movl	-8(%rbp), %eax	# k, tmp96
	cltd
	idivl	-12(%rbp)	# i
	movl	%edx, %eax	# tmp97, _1
# problem21.c:32:     while (k % i == 0) {
	testl	%eax, %eax	# _1
	je	.L9	#,
# problem21.c:36:     sum *= (p*i - 1)/(i-1);
	movl	-4(%rbp), %eax	# p, tmp99
	imull	-12(%rbp), %eax	# i, _2
# problem21.c:36:     sum *= (p*i - 1)/(i-1);
	subl	$1, %eax	#, _3
# problem21.c:36:     sum *= (p*i - 1)/(i-1);
	movl	-12(%rbp), %edx	# i, tmp100
	leal	-1(%rdx), %ecx	#, _4
# problem21.c:36:     sum *= (p*i - 1)/(i-1);
	cltd
	idivl	%ecx	# _4
	movl	%eax, %edx	# tmp101, _5
# problem21.c:36:     sum *= (p*i - 1)/(i-1);
	movl	-16(%rbp), %eax	# sum, tmp104
	imull	%edx, %eax	# _5, tmp103
	movl	%eax, -16(%rbp)	# tmp103, sum
# problem21.c:30:   for (i = 2; i <= k; i++) {
	addl	$1, -12(%rbp)	#, i
.L7:
# problem21.c:30:   for (i = 2; i <= k; i++) {
	movl	-12(%rbp), %eax	# i, tmp105
	cmpl	-8(%rbp), %eax	# k, tmp105
	jle	.L10	#,
# problem21.c:38:   return sum - n;
	movl	-16(%rbp), %eax	# sum, tmp106
	subl	-20(%rbp), %eax	# n, _15
# problem21.c:39: }
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE1:
	.size	divisors_sum, .-divisors_sum
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
