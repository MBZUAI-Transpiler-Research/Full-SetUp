	.file	"problem2.c"
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
# problem2.c:10:   unsigned int a1 = 1, a2 = 1, a3 = 2, sum = 0;
	movl	$1, -16(%rbp)	#, a1
# problem2.c:10:   unsigned int a1 = 1, a2 = 1, a3 = 2, sum = 0;
	movl	$1, -12(%rbp)	#, a2
# problem2.c:10:   unsigned int a1 = 1, a2 = 1, a3 = 2, sum = 0;
	movl	$2, -8(%rbp)	#, a3
# problem2.c:10:   unsigned int a1 = 1, a2 = 1, a3 = 2, sum = 0;
	movl	$0, -4(%rbp)	#, sum
# problem2.c:12:   while (a3 < 4000000) {
	jmp	.L2	#
.L3:
# problem2.c:13:     a3 = a1 + a2;
	movl	-16(%rbp), %edx	# a1, tmp92
	movl	-12(%rbp), %eax	# a2, tmp93
	addl	%edx, %eax	# tmp92, tmp91
	movl	%eax, -8(%rbp)	# tmp91, a3
# problem2.c:14:     sum += a3 * !(a3%2);
	movl	-8(%rbp), %eax	# a3, tmp94
	andl	$1, %eax	#, _1
# problem2.c:14:     sum += a3 * !(a3%2);
	testl	%eax, %eax	# _1
	sete	%al	#, _2
	movzbl	%al, %eax	# _2, _3
# problem2.c:14:     sum += a3 * !(a3%2);
	imull	-8(%rbp), %eax	# a3, _4
# problem2.c:14:     sum += a3 * !(a3%2);
	addl	%eax, -4(%rbp)	# _4, sum
# problem2.c:15:     a1 = a2;
	movl	-12(%rbp), %eax	# a2, tmp95
	movl	%eax, -16(%rbp)	# tmp95, a1
# problem2.c:16:     a2 = a3;
	movl	-8(%rbp), %eax	# a3, tmp96
	movl	%eax, -12(%rbp)	# tmp96, a2
.L2:
# problem2.c:12:   while (a3 < 4000000) {
	cmpl	$3999999, -8(%rbp)	#, a3
	jbe	.L3	#,
# problem2.c:19:   printf("%u\n", sum);
	movl	-4(%rbp), %eax	# sum, tmp97
	movl	%eax, %esi	# tmp97,
	leaq	.LC0(%rip), %rax	#, tmp98
	movq	%rax, %rdi	# tmp98,
	movl	$0, %eax	#,
	call	printf@PLT	#
# problem2.c:21:   return 0;
	movl	$0, %eax	#, _15
# problem2.c:22: }
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE0:
	.size	main, .-main
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
