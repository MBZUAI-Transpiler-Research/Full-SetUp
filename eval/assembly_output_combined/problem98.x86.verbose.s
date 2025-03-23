	.file	"problem98.c"
# GNU C17 (Ubuntu 13.3.0-6ubuntu2~24.04) version 13.3.0 (x86_64-linux-gnu)
#	compiled by GNU C version 13.3.0, GMP version 6.3.0, MPFR version 4.2.1, MPC version 1.3.1, isl version isl-0.26-GMP

# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed: -mtune=generic -march=x86-64 -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection -fcf-protection
	.text
	.globl	func0
	.type	func0, @function
func0:
.LFB6:
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movl	%edi, -4(%rbp)	# a, a
	movl	%esi, -8(%rbp)	# b, b
# problem98.c:5:     return (abs(a) % 10) * (abs(b) % 10);
	movl	-4(%rbp), %eax	# a, tmp103
	movl	%eax, %edx	# tmp103, tmp104
	negl	%edx	# tmp104
	cmovs	%eax, %edx	# tmp104,, tmp103, _1
# problem98.c:5:     return (abs(a) % 10) * (abs(b) % 10);
	movslq	%edx, %rax	# _1, tmp88
	imulq	$1717986919, %rax, %rax	#, tmp88, tmp89
	shrq	$32, %rax	#, tmp90
	movl	%eax, %ecx	# tmp90, tmp91
	sarl	$2, %ecx	#, tmp91
	movl	%edx, %eax	# _1, tmp92
	sarl	$31, %eax	#, tmp92
	subl	%eax, %ecx	# tmp92, _2
	movl	%ecx, %eax	# _2, tmp93
	sall	$2, %eax	#, tmp93
	addl	%ecx, %eax	# _2, tmp93
	addl	%eax, %eax	# tmp94
	movl	%edx, %ecx	# _1, _1
	subl	%eax, %ecx	# tmp93, _1
# problem98.c:5:     return (abs(a) % 10) * (abs(b) % 10);
	movl	-8(%rbp), %eax	# b, tmp105
	movl	%eax, %edx	# tmp105, tmp106
	negl	%edx	# tmp106
	cmovns	%edx, %eax	# tmp106,, tmp105
	movl	%eax, %esi	# tmp105, _3
# problem98.c:5:     return (abs(a) % 10) * (abs(b) % 10);
	movslq	%esi, %rax	# _3, tmp95
	imulq	$1717986919, %rax, %rax	#, tmp95, tmp96
	shrq	$32, %rax	#, tmp97
	movl	%eax, %edx	# tmp97, tmp98
	sarl	$2, %edx	#, tmp98
	movl	%esi, %eax	# _3, tmp99
	sarl	$31, %eax	#, tmp99
	subl	%eax, %edx	# tmp99, _4
	movl	%edx, %eax	# _4, tmp100
	sall	$2, %eax	#, tmp100
	addl	%edx, %eax	# _4, tmp100
	addl	%eax, %eax	# tmp101
	subl	%eax, %esi	# tmp100, _3
	movl	%esi, %edx	# _3, _4
# problem98.c:5:     return (abs(a) % 10) * (abs(b) % 10);
	movl	%ecx, %eax	# _2, _2
	imull	%edx, %eax	# _4, _2
# problem98.c:6: }
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE6:
	.size	func0, .-func0
	.section	.rodata
.LC0:
	.string	"problem98.c"
.LC1:
	.string	"func0(148, 412) == 16"
.LC2:
	.string	"func0(19, 28) == 72"
.LC3:
	.string	"func0(2020, 1851) == 0"
.LC4:
	.string	"func0(14, -15) == 20"
.LC5:
	.string	"func0(76, 67) == 42"
.LC6:
	.string	"func0(17, 27) == 49"
.LC7:
	.string	"func0(0, 1) == 0"
.LC8:
	.string	"func0(0, 0) == 0"
	.text
	.globl	main
	.type	main, @function
main:
.LFB7:
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
# problem98.c:13:     assert(func0(148, 412) == 16);
	movl	$412, %esi	#,
	movl	$148, %edi	#,
	call	func0	#
# problem98.c:13:     assert(func0(148, 412) == 16);
	cmpl	$16, %eax	#, _1
	je	.L4	#,
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp92
	movq	%rax, %rcx	# tmp92,
	movl	$13, %edx	#,
	leaq	.LC0(%rip), %rax	#, tmp93
	movq	%rax, %rsi	# tmp93,
	leaq	.LC1(%rip), %rax	#, tmp94
	movq	%rax, %rdi	# tmp94,
	call	__assert_fail@PLT	#
.L4:
# problem98.c:14:     assert(func0(19, 28) == 72);
	movl	$28, %esi	#,
	movl	$19, %edi	#,
	call	func0	#
# problem98.c:14:     assert(func0(19, 28) == 72);
	cmpl	$72, %eax	#, _2
	je	.L5	#,
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp95
	movq	%rax, %rcx	# tmp95,
	movl	$14, %edx	#,
	leaq	.LC0(%rip), %rax	#, tmp96
	movq	%rax, %rsi	# tmp96,
	leaq	.LC2(%rip), %rax	#, tmp97
	movq	%rax, %rdi	# tmp97,
	call	__assert_fail@PLT	#
.L5:
# problem98.c:15:     assert(func0(2020, 1851) == 0);
	movl	$1851, %esi	#,
	movl	$2020, %edi	#,
	call	func0	#
# problem98.c:15:     assert(func0(2020, 1851) == 0);
	testl	%eax, %eax	# _3
	je	.L6	#,
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp98
	movq	%rax, %rcx	# tmp98,
	movl	$15, %edx	#,
	leaq	.LC0(%rip), %rax	#, tmp99
	movq	%rax, %rsi	# tmp99,
	leaq	.LC3(%rip), %rax	#, tmp100
	movq	%rax, %rdi	# tmp100,
	call	__assert_fail@PLT	#
.L6:
# problem98.c:16:     assert(func0(14, -15) == 20);
	movl	$-15, %esi	#,
	movl	$14, %edi	#,
	call	func0	#
# problem98.c:16:     assert(func0(14, -15) == 20);
	cmpl	$20, %eax	#, _4
	je	.L7	#,
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp101
	movq	%rax, %rcx	# tmp101,
	movl	$16, %edx	#,
	leaq	.LC0(%rip), %rax	#, tmp102
	movq	%rax, %rsi	# tmp102,
	leaq	.LC4(%rip), %rax	#, tmp103
	movq	%rax, %rdi	# tmp103,
	call	__assert_fail@PLT	#
.L7:
# problem98.c:17:     assert(func0(76, 67) == 42);
	movl	$67, %esi	#,
	movl	$76, %edi	#,
	call	func0	#
# problem98.c:17:     assert(func0(76, 67) == 42);
	cmpl	$42, %eax	#, _5
	je	.L8	#,
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp104
	movq	%rax, %rcx	# tmp104,
	movl	$17, %edx	#,
	leaq	.LC0(%rip), %rax	#, tmp105
	movq	%rax, %rsi	# tmp105,
	leaq	.LC5(%rip), %rax	#, tmp106
	movq	%rax, %rdi	# tmp106,
	call	__assert_fail@PLT	#
.L8:
# problem98.c:18:     assert(func0(17, 27) == 49);
	movl	$27, %esi	#,
	movl	$17, %edi	#,
	call	func0	#
# problem98.c:18:     assert(func0(17, 27) == 49);
	cmpl	$49, %eax	#, _6
	je	.L9	#,
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp107
	movq	%rax, %rcx	# tmp107,
	movl	$18, %edx	#,
	leaq	.LC0(%rip), %rax	#, tmp108
	movq	%rax, %rsi	# tmp108,
	leaq	.LC6(%rip), %rax	#, tmp109
	movq	%rax, %rdi	# tmp109,
	call	__assert_fail@PLT	#
.L9:
# problem98.c:19:     assert(func0(0, 1) == 0);
	movl	$1, %esi	#,
	movl	$0, %edi	#,
	call	func0	#
# problem98.c:19:     assert(func0(0, 1) == 0);
	testl	%eax, %eax	# _7
	je	.L10	#,
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp110
	movq	%rax, %rcx	# tmp110,
	movl	$19, %edx	#,
	leaq	.LC0(%rip), %rax	#, tmp111
	movq	%rax, %rsi	# tmp111,
	leaq	.LC7(%rip), %rax	#, tmp112
	movq	%rax, %rdi	# tmp112,
	call	__assert_fail@PLT	#
.L10:
# problem98.c:20:     assert(func0(0, 0) == 0);
	movl	$0, %esi	#,
	movl	$0, %edi	#,
	call	func0	#
# problem98.c:20:     assert(func0(0, 0) == 0);
	testl	%eax, %eax	# _8
	je	.L11	#,
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp113
	movq	%rax, %rcx	# tmp113,
	movl	$20, %edx	#,
	leaq	.LC0(%rip), %rax	#, tmp114
	movq	%rax, %rsi	# tmp114,
	leaq	.LC8(%rip), %rax	#, tmp115
	movq	%rax, %rdi	# tmp115,
	call	__assert_fail@PLT	#
.L11:
# problem98.c:22:     return 0;
	movl	$0, %eax	#, _26
# problem98.c:23: }
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE7:
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
