	.file	"problem6.c"
# GNU C17 (Ubuntu 11.4.0-1ubuntu1~22.04) version 11.4.0 (x86_64-linux-gnu)
#	compiled by GNU C version 11.4.0, GMP version 6.2.1, MPFR version 4.1.0, MPC version 1.2.1, isl version isl-0.24-GMP

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
# problem6.c:10:   unsigned s1 = 0, s2 = 0, i;
	movl	$0, -12(%rbp)	#, s1
# problem6.c:10:   unsigned s1 = 0, s2 = 0, i;
	movl	$0, -8(%rbp)	#, s2
# problem6.c:12:   for (i = 1; i <= 100; i++) {
	movl	$1, -4(%rbp)	#, i
# problem6.c:12:   for (i = 1; i <= 100; i++) {
	jmp	.L2	#
.L3:
# problem6.c:13:     s1 += i*i;
	movl	-4(%rbp), %eax	# i, tmp87
	imull	%eax, %eax	# tmp87, _1
# problem6.c:13:     s1 += i*i;
	addl	%eax, -12(%rbp)	# _1, s1
# problem6.c:14:     s2 += i;
	movl	-4(%rbp), %eax	# i, tmp88
	addl	%eax, -8(%rbp)	# tmp88, s2
# problem6.c:12:   for (i = 1; i <= 100; i++) {
	addl	$1, -4(%rbp)	#, i
.L2:
# problem6.c:12:   for (i = 1; i <= 100; i++) {
	cmpl	$100, -4(%rbp)	#, i
	jbe	.L3	#,
# problem6.c:16:   printf("%u\n", s2*s2 - s1);
	movl	-8(%rbp), %eax	# s2, tmp89
	imull	%eax, %eax	# tmp89, _2
# problem6.c:16:   printf("%u\n", s2*s2 - s1);
	subl	-12(%rbp), %eax	# s1, _3
	movl	%eax, %esi	# _3,
	leaq	.LC0(%rip), %rax	#, tmp90
	movq	%rax, %rdi	# tmp90,
	movl	$0, %eax	#,
	call	printf@PLT	#
# problem6.c:17:   return 0;
	movl	$0, %eax	#, _12
# problem6.c:18: }
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
