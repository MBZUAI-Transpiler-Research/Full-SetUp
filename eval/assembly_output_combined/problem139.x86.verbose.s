	.file	"problem139.c"
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
# problem139.c:4:     if (n % 2 == 0 && n >= 8) return 1;
	movl	-4(%rbp), %eax	# n, n.0_1
	andl	$1, %eax	#, _2
# problem139.c:4:     if (n % 2 == 0 && n >= 8) return 1;
	testl	%eax, %eax	# _2
	jne	.L2	#,
# problem139.c:4:     if (n % 2 == 0 && n >= 8) return 1;
	cmpl	$7, -4(%rbp)	#, n
	jle	.L2	#,
# problem139.c:4:     if (n % 2 == 0 && n >= 8) return 1;
	movl	$1, %eax	#, _3
	jmp	.L3	#
.L2:
# problem139.c:5:     return 0;
	movl	$0, %eax	#, _3
.L3:
# problem139.c:6: }
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE0:
	.size	func0, .-func0
	.section	.rodata
.LC0:
	.string	"problem139.c"
.LC1:
	.string	"func0(4) == 0"
.LC2:
	.string	"func0(6) == 0"
.LC3:
	.string	"func0(8) == 1"
.LC4:
	.string	"func0(10) == 1"
.LC5:
	.string	"func0(11) == 0"
.LC6:
	.string	"func0(12) == 1"
.LC7:
	.string	"func0(13) == 0"
.LC8:
	.string	"func0(16) == 1"
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
# problem139.c:13:     assert(func0(4) == 0);
	movl	$4, %edi	#,
	call	func0	#
	testl	%eax, %eax	# _1
	je	.L5	#,
# problem139.c:13:     assert(func0(4) == 0);
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp92
	movq	%rax, %rcx	# tmp92,
	movl	$13, %edx	#,
	leaq	.LC0(%rip), %rax	#, tmp93
	movq	%rax, %rsi	# tmp93,
	leaq	.LC1(%rip), %rax	#, tmp94
	movq	%rax, %rdi	# tmp94,
	call	__assert_fail@PLT	#
.L5:
# problem139.c:14:     assert(func0(6) == 0);
	movl	$6, %edi	#,
	call	func0	#
	testl	%eax, %eax	# _2
	je	.L6	#,
# problem139.c:14:     assert(func0(6) == 0);
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp95
	movq	%rax, %rcx	# tmp95,
	movl	$14, %edx	#,
	leaq	.LC0(%rip), %rax	#, tmp96
	movq	%rax, %rsi	# tmp96,
	leaq	.LC2(%rip), %rax	#, tmp97
	movq	%rax, %rdi	# tmp97,
	call	__assert_fail@PLT	#
.L6:
# problem139.c:15:     assert(func0(8) == 1);
	movl	$8, %edi	#,
	call	func0	#
	cmpl	$1, %eax	#, _3
	je	.L7	#,
# problem139.c:15:     assert(func0(8) == 1);
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp98
	movq	%rax, %rcx	# tmp98,
	movl	$15, %edx	#,
	leaq	.LC0(%rip), %rax	#, tmp99
	movq	%rax, %rsi	# tmp99,
	leaq	.LC3(%rip), %rax	#, tmp100
	movq	%rax, %rdi	# tmp100,
	call	__assert_fail@PLT	#
.L7:
# problem139.c:16:     assert(func0(10) == 1);
	movl	$10, %edi	#,
	call	func0	#
	cmpl	$1, %eax	#, _4
	je	.L8	#,
# problem139.c:16:     assert(func0(10) == 1);
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp101
	movq	%rax, %rcx	# tmp101,
	movl	$16, %edx	#,
	leaq	.LC0(%rip), %rax	#, tmp102
	movq	%rax, %rsi	# tmp102,
	leaq	.LC4(%rip), %rax	#, tmp103
	movq	%rax, %rdi	# tmp103,
	call	__assert_fail@PLT	#
.L8:
# problem139.c:17:     assert(func0(11) == 0);
	movl	$11, %edi	#,
	call	func0	#
	testl	%eax, %eax	# _5
	je	.L9	#,
# problem139.c:17:     assert(func0(11) == 0);
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp104
	movq	%rax, %rcx	# tmp104,
	movl	$17, %edx	#,
	leaq	.LC0(%rip), %rax	#, tmp105
	movq	%rax, %rsi	# tmp105,
	leaq	.LC5(%rip), %rax	#, tmp106
	movq	%rax, %rdi	# tmp106,
	call	__assert_fail@PLT	#
.L9:
# problem139.c:18:     assert(func0(12) == 1);
	movl	$12, %edi	#,
	call	func0	#
	cmpl	$1, %eax	#, _6
	je	.L10	#,
# problem139.c:18:     assert(func0(12) == 1);
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp107
	movq	%rax, %rcx	# tmp107,
	movl	$18, %edx	#,
	leaq	.LC0(%rip), %rax	#, tmp108
	movq	%rax, %rsi	# tmp108,
	leaq	.LC6(%rip), %rax	#, tmp109
	movq	%rax, %rdi	# tmp109,
	call	__assert_fail@PLT	#
.L10:
# problem139.c:19:     assert(func0(13) == 0);
	movl	$13, %edi	#,
	call	func0	#
	testl	%eax, %eax	# _7
	je	.L11	#,
# problem139.c:19:     assert(func0(13) == 0);
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp110
	movq	%rax, %rcx	# tmp110,
	movl	$19, %edx	#,
	leaq	.LC0(%rip), %rax	#, tmp111
	movq	%rax, %rsi	# tmp111,
	leaq	.LC7(%rip), %rax	#, tmp112
	movq	%rax, %rdi	# tmp112,
	call	__assert_fail@PLT	#
.L11:
# problem139.c:20:     assert(func0(16) == 1);
	movl	$16, %edi	#,
	call	func0	#
	cmpl	$1, %eax	#, _8
	je	.L12	#,
# problem139.c:20:     assert(func0(16) == 1);
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp113
	movq	%rax, %rcx	# tmp113,
	movl	$20, %edx	#,
	leaq	.LC0(%rip), %rax	#, tmp114
	movq	%rax, %rsi	# tmp114,
	leaq	.LC8(%rip), %rax	#, tmp115
	movq	%rax, %rdi	# tmp115,
	call	__assert_fail@PLT	#
.L12:
# problem139.c:22:     return 0;
	movl	$0, %eax	#, _26
# problem139.c:23: }
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
