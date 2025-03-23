	.file	"problem61.c"
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
	movl	%edi, -4(%rbp)	# n, n
# problem61.c:4:     return n * (n + 1) / 2;
	movl	-4(%rbp), %eax	# n, tmp86
	addl	$1, %eax	#, _1
# problem61.c:4:     return n * (n + 1) / 2;
	imull	-4(%rbp), %eax	# n, _2
# problem61.c:4:     return n * (n + 1) / 2;
	movl	%eax, %edx	# _2, tmp87
	shrl	$31, %edx	#, tmp87
	addl	%edx, %eax	# tmp87, tmp88
	sarl	%eax	# tmp89
# problem61.c:5: }
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE0:
	.size	func0, .-func0
	.section	.rodata
.LC0:
	.string	"problem61.c"
.LC1:
	.string	"func0(1) == 1"
.LC2:
	.string	"func0(6) == 21"
.LC3:
	.string	"func0(11) == 66"
.LC4:
	.string	"func0(30) == 465"
.LC5:
	.string	"func0(100) == 5050"
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
# problem61.c:12:     assert(func0(1) == 1);
	movl	$1, %edi	#,
	call	func0	#
	cmpl	$1, %eax	#, _1
	je	.L4	#,
# problem61.c:12:     assert(func0(1) == 1);
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp89
	movq	%rax, %rcx	# tmp89,
	movl	$12, %edx	#,
	leaq	.LC0(%rip), %rax	#, tmp90
	movq	%rax, %rsi	# tmp90,
	leaq	.LC1(%rip), %rax	#, tmp91
	movq	%rax, %rdi	# tmp91,
	call	__assert_fail@PLT	#
.L4:
# problem61.c:13:     assert(func0(6) == 21);
	movl	$6, %edi	#,
	call	func0	#
	cmpl	$21, %eax	#, _2
	je	.L5	#,
# problem61.c:13:     assert(func0(6) == 21);
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp92
	movq	%rax, %rcx	# tmp92,
	movl	$13, %edx	#,
	leaq	.LC0(%rip), %rax	#, tmp93
	movq	%rax, %rsi	# tmp93,
	leaq	.LC2(%rip), %rax	#, tmp94
	movq	%rax, %rdi	# tmp94,
	call	__assert_fail@PLT	#
.L5:
# problem61.c:14:     assert(func0(11) == 66);
	movl	$11, %edi	#,
	call	func0	#
	cmpl	$66, %eax	#, _3
	je	.L6	#,
# problem61.c:14:     assert(func0(11) == 66);
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp95
	movq	%rax, %rcx	# tmp95,
	movl	$14, %edx	#,
	leaq	.LC0(%rip), %rax	#, tmp96
	movq	%rax, %rsi	# tmp96,
	leaq	.LC3(%rip), %rax	#, tmp97
	movq	%rax, %rdi	# tmp97,
	call	__assert_fail@PLT	#
.L6:
# problem61.c:15:     assert(func0(30) == 465);
	movl	$30, %edi	#,
	call	func0	#
	cmpl	$465, %eax	#, _4
	je	.L7	#,
# problem61.c:15:     assert(func0(30) == 465);
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp98
	movq	%rax, %rcx	# tmp98,
	movl	$15, %edx	#,
	leaq	.LC0(%rip), %rax	#, tmp99
	movq	%rax, %rsi	# tmp99,
	leaq	.LC4(%rip), %rax	#, tmp100
	movq	%rax, %rdi	# tmp100,
	call	__assert_fail@PLT	#
.L7:
# problem61.c:16:     assert(func0(100) == 5050);
	movl	$100, %edi	#,
	call	func0	#
	cmpl	$5050, %eax	#, _5
	je	.L8	#,
# problem61.c:16:     assert(func0(100) == 5050);
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp101
	movq	%rax, %rcx	# tmp101,
	movl	$16, %edx	#,
	leaq	.LC0(%rip), %rax	#, tmp102
	movq	%rax, %rsi	# tmp102,
	leaq	.LC5(%rip), %rax	#, tmp103
	movq	%rax, %rdi	# tmp103,
	call	__assert_fail@PLT	#
.L8:
# problem61.c:18:     return 0;
	movl	$0, %eax	#, _17
# problem61.c:19: }
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
