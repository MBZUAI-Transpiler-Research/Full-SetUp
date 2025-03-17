	.file	"problem50.c"
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
	movl	%esi, -24(%rbp)	# p, p
# problem50.c:4:     int out = 1;
	movl	$1, -8(%rbp)	#, out
# problem50.c:5:     for (int i = 0; i < n; i++)
	movl	$0, -4(%rbp)	#, i
# problem50.c:5:     for (int i = 0; i < n; i++)
	jmp	.L2	#
.L3:
# problem50.c:6:         out = (out * 2) % p;
	movl	-8(%rbp), %eax	# out, tmp85
	addl	%eax, %eax	# _1
# problem50.c:6:         out = (out * 2) % p;
	cltd
	idivl	-24(%rbp)	# p
	movl	%edx, -8(%rbp)	# tmp87, out
# problem50.c:5:     for (int i = 0; i < n; i++)
	addl	$1, -4(%rbp)	#, i
.L2:
# problem50.c:5:     for (int i = 0; i < n; i++)
	movl	-4(%rbp), %eax	# i, tmp89
	cmpl	-20(%rbp), %eax	# n, tmp89
	jl	.L3	#,
# problem50.c:7:     return out;
	movl	-8(%rbp), %eax	# out, _7
# problem50.c:8: }
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE0:
	.size	func0, .-func0
	.section	.rodata
.LC0:
	.string	"problem50.c"
.LC1:
	.string	"func0(3, 5) == 3"
.LC2:
	.string	"func0(1101, 101) == 2"
.LC3:
	.string	"func0(0, 101) == 1"
.LC4:
	.string	"func0(3, 11) == 8"
.LC5:
	.string	"func0(100, 101) == 1"
.LC6:
	.string	"func0(30, 5) == 4"
.LC7:
	.string	"func0(31, 5) == 3"
.LC8:
	.string	"All tests passed."
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
# problem50.c:16:     assert(func0(3, 5) == 3);
	movl	$5, %esi	#,
	movl	$3, %edi	#,
	call	func0	#
# problem50.c:16:     assert(func0(3, 5) == 3);
	cmpl	$3, %eax	#, _1
	je	.L6	#,
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp91
	movq	%rax, %rcx	# tmp91,
	movl	$16, %edx	#,
	leaq	.LC0(%rip), %rax	#, tmp92
	movq	%rax, %rsi	# tmp92,
	leaq	.LC1(%rip), %rax	#, tmp93
	movq	%rax, %rdi	# tmp93,
	call	__assert_fail@PLT	#
.L6:
# problem50.c:17:     assert(func0(1101, 101) == 2);
	movl	$101, %esi	#,
	movl	$1101, %edi	#,
	call	func0	#
# problem50.c:17:     assert(func0(1101, 101) == 2);
	cmpl	$2, %eax	#, _2
	je	.L7	#,
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp94
	movq	%rax, %rcx	# tmp94,
	movl	$17, %edx	#,
	leaq	.LC0(%rip), %rax	#, tmp95
	movq	%rax, %rsi	# tmp95,
	leaq	.LC2(%rip), %rax	#, tmp96
	movq	%rax, %rdi	# tmp96,
	call	__assert_fail@PLT	#
.L7:
# problem50.c:18:     assert(func0(0, 101) == 1);
	movl	$101, %esi	#,
	movl	$0, %edi	#,
	call	func0	#
# problem50.c:18:     assert(func0(0, 101) == 1);
	cmpl	$1, %eax	#, _3
	je	.L8	#,
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp97
	movq	%rax, %rcx	# tmp97,
	movl	$18, %edx	#,
	leaq	.LC0(%rip), %rax	#, tmp98
	movq	%rax, %rsi	# tmp98,
	leaq	.LC3(%rip), %rax	#, tmp99
	movq	%rax, %rdi	# tmp99,
	call	__assert_fail@PLT	#
.L8:
# problem50.c:19:     assert(func0(3, 11) == 8);
	movl	$11, %esi	#,
	movl	$3, %edi	#,
	call	func0	#
# problem50.c:19:     assert(func0(3, 11) == 8);
	cmpl	$8, %eax	#, _4
	je	.L9	#,
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp100
	movq	%rax, %rcx	# tmp100,
	movl	$19, %edx	#,
	leaq	.LC0(%rip), %rax	#, tmp101
	movq	%rax, %rsi	# tmp101,
	leaq	.LC4(%rip), %rax	#, tmp102
	movq	%rax, %rdi	# tmp102,
	call	__assert_fail@PLT	#
.L9:
# problem50.c:20:     assert(func0(100, 101) == 1);
	movl	$101, %esi	#,
	movl	$100, %edi	#,
	call	func0	#
# problem50.c:20:     assert(func0(100, 101) == 1);
	cmpl	$1, %eax	#, _5
	je	.L10	#,
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp103
	movq	%rax, %rcx	# tmp103,
	movl	$20, %edx	#,
	leaq	.LC0(%rip), %rax	#, tmp104
	movq	%rax, %rsi	# tmp104,
	leaq	.LC5(%rip), %rax	#, tmp105
	movq	%rax, %rdi	# tmp105,
	call	__assert_fail@PLT	#
.L10:
# problem50.c:21:     assert(func0(30, 5) == 4);
	movl	$5, %esi	#,
	movl	$30, %edi	#,
	call	func0	#
# problem50.c:21:     assert(func0(30, 5) == 4);
	cmpl	$4, %eax	#, _6
	je	.L11	#,
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp106
	movq	%rax, %rcx	# tmp106,
	movl	$21, %edx	#,
	leaq	.LC0(%rip), %rax	#, tmp107
	movq	%rax, %rsi	# tmp107,
	leaq	.LC6(%rip), %rax	#, tmp108
	movq	%rax, %rdi	# tmp108,
	call	__assert_fail@PLT	#
.L11:
# problem50.c:22:     assert(func0(31, 5) == 3);
	movl	$5, %esi	#,
	movl	$31, %edi	#,
	call	func0	#
# problem50.c:22:     assert(func0(31, 5) == 3);
	cmpl	$3, %eax	#, _7
	je	.L12	#,
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp109
	movq	%rax, %rcx	# tmp109,
	movl	$22, %edx	#,
	leaq	.LC0(%rip), %rax	#, tmp110
	movq	%rax, %rsi	# tmp110,
	leaq	.LC7(%rip), %rax	#, tmp111
	movq	%rax, %rdi	# tmp111,
	call	__assert_fail@PLT	#
.L12:
# problem50.c:24:     printf("All tests passed.\n");
	leaq	.LC8(%rip), %rax	#, tmp112
	movq	%rax, %rdi	# tmp112,
	call	puts@PLT	#
# problem50.c:25:     return 0;
	movl	$0, %eax	#, _24
# problem50.c:26: }
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
