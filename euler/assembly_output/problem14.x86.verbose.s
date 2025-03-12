	.file	"problem14.c"
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
# problem14.c:12:   unsigned i, max_c = 0, max_i = 0;
	movl	$0, -12(%rbp)	#, max_c
# problem14.c:12:   unsigned i, max_c = 0, max_i = 0;
	movl	$0, -8(%rbp)	#, max_i
# problem14.c:14:   for (i = 1; i < 1000000; i++) {
	movl	$1, -16(%rbp)	#, i
# problem14.c:14:   for (i = 1; i < 1000000; i++) {
	jmp	.L2	#
.L4:
# problem14.c:15:     unsigned c = collatz_count(i);
	movl	-16(%rbp), %eax	# i, tmp84
	movl	%eax, %edi	# tmp84,
	call	collatz_count	#
	movl	%eax, -4(%rbp)	# tmp85, c
# problem14.c:16:     if (c > max_c) {
	movl	-4(%rbp), %eax	# c, tmp86
	cmpl	%eax, -12(%rbp)	# tmp86, max_c
	jnb	.L3	#,
# problem14.c:17:       max_c = c;
	movl	-4(%rbp), %eax	# c, tmp87
	movl	%eax, -12(%rbp)	# tmp87, max_c
# problem14.c:18:       max_i = i;
	movl	-16(%rbp), %eax	# i, tmp88
	movl	%eax, -8(%rbp)	# tmp88, max_i
.L3:
# problem14.c:14:   for (i = 1; i < 1000000; i++) {
	addl	$1, -16(%rbp)	#, i
.L2:
# problem14.c:14:   for (i = 1; i < 1000000; i++) {
	cmpl	$999999, -16(%rbp)	#, i
	jbe	.L4	#,
# problem14.c:21:   printf("%u\n", max_i);
	movl	-8(%rbp), %eax	# max_i, tmp89
	movl	%eax, %esi	# tmp89,
	leaq	.LC0(%rip), %rax	#, tmp90
	movq	%rax, %rdi	# tmp90,
	movl	$0, %eax	#,
	call	printf@PLT	#
# problem14.c:22:   return 0;
	movl	$0, %eax	#, _12
# problem14.c:23: }
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.type	collatz_count, @function
collatz_count:
.LFB1:
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movl	%edi, -20(%rbp)	# n, n
# problem14.c:27:   unsigned c = 0;
	movl	$0, -4(%rbp)	#, c
# problem14.c:28:   while (n > 1) {
	jmp	.L7	#
.L10:
# problem14.c:29:     n = n%2==0 ? n/2 : 3*n+1;
	movl	-20(%rbp), %eax	# n, tmp87
	andl	$1, %eax	#, _1
# problem14.c:29:     n = n%2==0 ? n/2 : 3*n+1;
	testl	%eax, %eax	# _1
	jne	.L8	#,
# problem14.c:29:     n = n%2==0 ? n/2 : 3*n+1;
	movl	-20(%rbp), %eax	# n, tmp88
	shrl	%eax	# iftmp.0_5
	jmp	.L9	#
.L8:
# problem14.c:29:     n = n%2==0 ? n/2 : 3*n+1;
	movl	-20(%rbp), %edx	# n, tmp89
	movl	%edx, %eax	# tmp89, tmp90
	addl	%eax, %eax	# tmp90
	addl	%edx, %eax	# tmp89, _2
# problem14.c:29:     n = n%2==0 ? n/2 : 3*n+1;
	addl	$1, %eax	#, iftmp.0_5
.L9:
# problem14.c:29:     n = n%2==0 ? n/2 : 3*n+1;
	movl	%eax, -20(%rbp)	# iftmp.0_5, n
# problem14.c:30:     c++;
	addl	$1, -4(%rbp)	#, c
.L7:
# problem14.c:28:   while (n > 1) {
	cmpl	$1, -20(%rbp)	#, n
	ja	.L10	#,
# problem14.c:32:   return c+1;
	movl	-4(%rbp), %eax	# c, tmp91
	addl	$1, %eax	#, _8
# problem14.c:33: }
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE1:
	.size	collatz_count, .-collatz_count
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
