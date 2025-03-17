	.file	"problem25.c"
# GNU C17 (Ubuntu 13.3.0-6ubuntu2~24.04) version 13.3.0 (x86_64-linux-gnu)
#	compiled by GNU C version 13.3.0, GMP version 6.3.0, MPFR version 4.2.1, MPC version 1.3.1, isl version isl-0.26-GMP

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
	movl	%edi, -20(%rbp)	# n, n
# problem25.c:4:     for (int i = 2; i * i <= n; i++)
	movl	$2, -4(%rbp)	#, i
# problem25.c:4:     for (int i = 2; i * i <= n; i++)
	jmp	.L2	#
.L5:
# problem25.c:5:         if (n % i == 0) return n / i;
	movl	-20(%rbp), %eax	# n, tmp86
	cltd
	idivl	-4(%rbp)	# i
	movl	%edx, %eax	# tmp87, _1
# problem25.c:5:         if (n % i == 0) return n / i;
	testl	%eax, %eax	# _1
	jne	.L3	#,
# problem25.c:5:         if (n % i == 0) return n / i;
	movl	-20(%rbp), %eax	# n, tmp91
	cltd
	idivl	-4(%rbp)	# i
# problem25.c:5:         if (n % i == 0) return n / i;
	jmp	.L4	#
.L3:
# problem25.c:4:     for (int i = 2; i * i <= n; i++)
	addl	$1, -4(%rbp)	#, i
.L2:
# problem25.c:4:     for (int i = 2; i * i <= n; i++)
	movl	-4(%rbp), %eax	# i, tmp92
	imull	%eax, %eax	# tmp92, _2
# problem25.c:4:     for (int i = 2; i * i <= n; i++)
	cmpl	%eax, -20(%rbp)	# _2, n
	jge	.L5	#,
# problem25.c:6:     return 1;
	movl	$1, %eax	#, _4
.L4:
# problem25.c:7: }
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE0:
	.size	func0, .-func0
	.section	.rodata
.LC0:
	.string	"problem25.c"
.LC1:
	.string	"func0(3) == 1"
.LC2:
	.string	"func0(7) == 1"
.LC3:
	.string	"func0(10) == 5"
.LC4:
	.string	"func0(100) == 50"
.LC5:
	.string	"func0(49) == 7"
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
# problem25.c:14:     assert(func0(3) == 1);
	movl	$3, %edi	#,
	call	func0	#
# problem25.c:14:     assert(func0(3) == 1);
	cmpl	$1, %eax	#, _1
	je	.L7	#,
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp89
	movq	%rax, %rcx	# tmp89,
	movl	$14, %edx	#,
	leaq	.LC0(%rip), %rax	#, tmp90
	movq	%rax, %rsi	# tmp90,
	leaq	.LC1(%rip), %rax	#, tmp91
	movq	%rax, %rdi	# tmp91,
	call	__assert_fail@PLT	#
.L7:
# problem25.c:15:     assert(func0(7) == 1);
	movl	$7, %edi	#,
	call	func0	#
# problem25.c:15:     assert(func0(7) == 1);
	cmpl	$1, %eax	#, _2
	je	.L8	#,
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp92
	movq	%rax, %rcx	# tmp92,
	movl	$15, %edx	#,
	leaq	.LC0(%rip), %rax	#, tmp93
	movq	%rax, %rsi	# tmp93,
	leaq	.LC2(%rip), %rax	#, tmp94
	movq	%rax, %rdi	# tmp94,
	call	__assert_fail@PLT	#
.L8:
# problem25.c:16:     assert(func0(10) == 5);
	movl	$10, %edi	#,
	call	func0	#
# problem25.c:16:     assert(func0(10) == 5);
	cmpl	$5, %eax	#, _3
	je	.L9	#,
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp95
	movq	%rax, %rcx	# tmp95,
	movl	$16, %edx	#,
	leaq	.LC0(%rip), %rax	#, tmp96
	movq	%rax, %rsi	# tmp96,
	leaq	.LC3(%rip), %rax	#, tmp97
	movq	%rax, %rdi	# tmp97,
	call	__assert_fail@PLT	#
.L9:
# problem25.c:17:     assert(func0(100) == 50);
	movl	$100, %edi	#,
	call	func0	#
# problem25.c:17:     assert(func0(100) == 50);
	cmpl	$50, %eax	#, _4
	je	.L10	#,
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp98
	movq	%rax, %rcx	# tmp98,
	movl	$17, %edx	#,
	leaq	.LC0(%rip), %rax	#, tmp99
	movq	%rax, %rsi	# tmp99,
	leaq	.LC4(%rip), %rax	#, tmp100
	movq	%rax, %rdi	# tmp100,
	call	__assert_fail@PLT	#
.L10:
# problem25.c:18:     assert(func0(49) == 7);
	movl	$49, %edi	#,
	call	func0	#
# problem25.c:18:     assert(func0(49) == 7);
	cmpl	$7, %eax	#, _5
	je	.L11	#,
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp101
	movq	%rax, %rcx	# tmp101,
	movl	$18, %edx	#,
	leaq	.LC0(%rip), %rax	#, tmp102
	movq	%rax, %rsi	# tmp102,
	leaq	.LC5(%rip), %rax	#, tmp103
	movq	%rax, %rdi	# tmp103,
	call	__assert_fail@PLT	#
.L11:
# problem25.c:20:     return 0;
	movl	$0, %eax	#, _17
# problem25.c:21: }
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
