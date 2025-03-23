	.file	"problem140.c"
# GNU C17 (Ubuntu 11.4.0-1ubuntu1~22.04) version 11.4.0 (x86_64-linux-gnu)
#	compiled by GNU C version 11.4.0, GMP version 6.2.1, MPFR version 4.1.0, MPC version 1.2.1, isl version isl-0.24-GMP

# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed: -mtune=generic -march=x86-64 -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection -fcf-protection
	.text
	.globl	func0
	.type	func0, @function
func0:
.LFB0:
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movl	%edi, -36(%rbp)	# n, n
# problem140.c:4:     long long fact = 1, bfact = 1;
	movq	$1, -16(%rbp)	#, fact
# problem140.c:4:     long long fact = 1, bfact = 1;
	movq	$1, -8(%rbp)	#, bfact
# problem140.c:5:     for (int i = 1; i <= n; i++) {
	movl	$1, -20(%rbp)	#, i
# problem140.c:5:     for (int i = 1; i <= n; i++) {
	jmp	.L2	#
.L3:
# problem140.c:6:         fact = fact * i;
	movl	-20(%rbp), %eax	# i, tmp85
	cltq
# problem140.c:6:         fact = fact * i;
	movq	-16(%rbp), %rdx	# fact, tmp87
	imulq	%rdx, %rax	# tmp87, tmp86
	movq	%rax, -16(%rbp)	# tmp86, fact
# problem140.c:7:         bfact = bfact * fact;
	movq	-8(%rbp), %rax	# bfact, tmp89
	imulq	-16(%rbp), %rax	# fact, tmp88
	movq	%rax, -8(%rbp)	# tmp88, bfact
# problem140.c:5:     for (int i = 1; i <= n; i++) {
	addl	$1, -20(%rbp)	#, i
.L2:
# problem140.c:5:     for (int i = 1; i <= n; i++) {
	movl	-20(%rbp), %eax	# i, tmp90
	cmpl	-36(%rbp), %eax	# n, tmp90
	jle	.L3	#,
# problem140.c:9:     return bfact;
	movq	-8(%rbp), %rax	# bfact, _9
# problem140.c:10: }
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE0:
	.size	func0, .-func0
	.section	.rodata
.LC0:
	.string	"problem140.c"
.LC1:
	.string	"func0(4) == 288"
.LC2:
	.string	"func0(5) == 34560"
.LC3:
	.string	"func0(7) == 125411328000"
.LC4:
	.string	"func0(1) == 1"
	.text
	.globl	main
	.type	main, @function
main:
.LFB1:
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
# problem140.c:17:     assert(func0(4) == 288);
	movl	$4, %edi	#,
	call	func0	#
	cmpq	$288, %rax	#, _1
	je	.L6	#,
# problem140.c:17:     assert(func0(4) == 288);
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp88
	movq	%rax, %rcx	# tmp88,
	movl	$17, %edx	#,
	leaq	.LC0(%rip), %rax	#, tmp89
	movq	%rax, %rsi	# tmp89,
	leaq	.LC1(%rip), %rax	#, tmp90
	movq	%rax, %rdi	# tmp90,
	call	__assert_fail@PLT	#
.L6:
# problem140.c:18:     assert(func0(5) == 34560);
	movl	$5, %edi	#,
	call	func0	#
	cmpq	$34560, %rax	#, _2
	je	.L7	#,
# problem140.c:18:     assert(func0(5) == 34560);
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp91
	movq	%rax, %rcx	# tmp91,
	movl	$18, %edx	#,
	leaq	.LC0(%rip), %rax	#, tmp92
	movq	%rax, %rsi	# tmp92,
	leaq	.LC2(%rip), %rax	#, tmp93
	movq	%rax, %rdi	# tmp93,
	call	__assert_fail@PLT	#
.L7:
# problem140.c:19:     assert(func0(7) == 125411328000);
	movl	$7, %edi	#,
	call	func0	#
	movabsq	$125411328000, %rdx	#, tmp94
	cmpq	%rdx, %rax	# tmp94, _3
	je	.L8	#,
# problem140.c:19:     assert(func0(7) == 125411328000);
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp95
	movq	%rax, %rcx	# tmp95,
	movl	$19, %edx	#,
	leaq	.LC0(%rip), %rax	#, tmp96
	movq	%rax, %rsi	# tmp96,
	leaq	.LC3(%rip), %rax	#, tmp97
	movq	%rax, %rdi	# tmp97,
	call	__assert_fail@PLT	#
.L8:
# problem140.c:20:     assert(func0(1) == 1);
	movl	$1, %edi	#,
	call	func0	#
	cmpq	$1, %rax	#, _4
	je	.L9	#,
# problem140.c:20:     assert(func0(1) == 1);
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp98
	movq	%rax, %rcx	# tmp98,
	movl	$20, %edx	#,
	leaq	.LC0(%rip), %rax	#, tmp99
	movq	%rax, %rsi	# tmp99,
	leaq	.LC4(%rip), %rax	#, tmp100
	movq	%rax, %rdi	# tmp100,
	call	__assert_fail@PLT	#
.L9:
# problem140.c:22:     return 0;
	movl	$0, %eax	#, _14
# problem140.c:23: }
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE1:
	.size	main, .-main
	.section	.rodata
	.type	__PRETTY_FUNCTION__.0, @object
	.size	__PRETTY_FUNCTION__.0, 5
__PRETTY_FUNCTION__.0:
	.string	"main"
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
