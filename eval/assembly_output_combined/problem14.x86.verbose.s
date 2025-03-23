	.file	"problem14.c"
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
	movl	%edi, -20(%rbp)	# a, a
	movl	%esi, -24(%rbp)	# b, b
# problem14.c:4:     while (b != 0) {
	jmp	.L2	#
.L3:
# problem14.c:5:         int m = a % b;
	movl	-20(%rbp), %eax	# a, tmp85
	cltd
	idivl	-24(%rbp)	# b
	movl	%edx, -4(%rbp)	# tmp86, m
# problem14.c:6:         a = b;
	movl	-24(%rbp), %eax	# b, tmp88
	movl	%eax, -20(%rbp)	# tmp88, a
# problem14.c:7:         b = m;
	movl	-4(%rbp), %eax	# m, tmp89
	movl	%eax, -24(%rbp)	# tmp89, b
.L2:
# problem14.c:4:     while (b != 0) {
	cmpl	$0, -24(%rbp)	#, b
	jne	.L3	#,
# problem14.c:9:     return a;
	movl	-20(%rbp), %eax	# a, _5
# problem14.c:10: }
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE0:
	.size	func0, .-func0
	.section	.rodata
.LC0:
	.string	"problem14.c"
.LC1:
	.string	"func0(3, 7) == 1"
.LC2:
	.string	"func0(10, 15) == 5"
.LC3:
	.string	"func0(49, 14) == 7"
.LC4:
	.string	"func0(144, 60) == 12"
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
# problem14.c:17:     assert(func0(3, 7) == 1);
	movl	$7, %esi	#,
	movl	$3, %edi	#,
	call	func0	#
	cmpl	$1, %eax	#, _1
	je	.L6	#,
# problem14.c:17:     assert(func0(3, 7) == 1);
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp88
	movq	%rax, %rcx	# tmp88,
	movl	$17, %edx	#,
	leaq	.LC0(%rip), %rax	#, tmp89
	movq	%rax, %rsi	# tmp89,
	leaq	.LC1(%rip), %rax	#, tmp90
	movq	%rax, %rdi	# tmp90,
	call	__assert_fail@PLT	#
.L6:
# problem14.c:18:     assert(func0(10, 15) == 5);
	movl	$15, %esi	#,
	movl	$10, %edi	#,
	call	func0	#
	cmpl	$5, %eax	#, _2
	je	.L7	#,
# problem14.c:18:     assert(func0(10, 15) == 5);
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp91
	movq	%rax, %rcx	# tmp91,
	movl	$18, %edx	#,
	leaq	.LC0(%rip), %rax	#, tmp92
	movq	%rax, %rsi	# tmp92,
	leaq	.LC2(%rip), %rax	#, tmp93
	movq	%rax, %rdi	# tmp93,
	call	__assert_fail@PLT	#
.L7:
# problem14.c:19:     assert(func0(49, 14) == 7);
	movl	$14, %esi	#,
	movl	$49, %edi	#,
	call	func0	#
	cmpl	$7, %eax	#, _3
	je	.L8	#,
# problem14.c:19:     assert(func0(49, 14) == 7);
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp94
	movq	%rax, %rcx	# tmp94,
	movl	$19, %edx	#,
	leaq	.LC0(%rip), %rax	#, tmp95
	movq	%rax, %rsi	# tmp95,
	leaq	.LC3(%rip), %rax	#, tmp96
	movq	%rax, %rdi	# tmp96,
	call	__assert_fail@PLT	#
.L8:
# problem14.c:20:     assert(func0(144, 60) == 12);
	movl	$60, %esi	#,
	movl	$144, %edi	#,
	call	func0	#
	cmpl	$12, %eax	#, _4
	je	.L9	#,
# problem14.c:20:     assert(func0(144, 60) == 12);
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp97
	movq	%rax, %rcx	# tmp97,
	movl	$20, %edx	#,
	leaq	.LC0(%rip), %rax	#, tmp98
	movq	%rax, %rsi	# tmp98,
	leaq	.LC4(%rip), %rax	#, tmp99
	movq	%rax, %rdi	# tmp99,
	call	__assert_fail@PLT	#
.L9:
# problem14.c:22:     return 0;
	movl	$0, %eax	#, _14
# problem14.c:23: }
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
