	.file	"problem84.c"
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
	movl	%edi, -20(%rbp)	# n, n
# problem84.c:4:     if (n < 1) return 0;
	cmpl	$0, -20(%rbp)	#, n
	jg	.L2	#,
# problem84.c:4:     if (n < 1) return 0;
	movl	$0, %eax	#, _3
	jmp	.L3	#
.L2:
# problem84.c:5:     if (n == 1) return 1;
	cmpl	$1, -20(%rbp)	#, n
	jne	.L4	#,
# problem84.c:5:     if (n == 1) return 1;
	movl	$1, %eax	#, _3
	jmp	.L3	#
.L4:
# problem84.c:6:     int out = 18;
	movl	$18, -8(%rbp)	#, out
# problem84.c:7:     for (int i = 2; i < n; i++)
	movl	$2, -4(%rbp)	#, i
# problem84.c:7:     for (int i = 2; i < n; i++)
	jmp	.L5	#
.L6:
# problem84.c:8:         out = out * 10;
	movl	-8(%rbp), %edx	# out, tmp84
	movl	%edx, %eax	# tmp84, tmp85
	sall	$2, %eax	#, tmp85
	addl	%edx, %eax	# tmp84, tmp85
	addl	%eax, %eax	# tmp86
	movl	%eax, -8(%rbp)	# tmp85, out
# problem84.c:7:     for (int i = 2; i < n; i++)
	addl	$1, -4(%rbp)	#, i
.L5:
# problem84.c:7:     for (int i = 2; i < n; i++)
	movl	-4(%rbp), %eax	# i, tmp87
	cmpl	-20(%rbp), %eax	# n, tmp87
	jl	.L6	#,
# problem84.c:9:     return out;
	movl	-8(%rbp), %eax	# out, _3
.L3:
# problem84.c:10: }
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE0:
	.size	func0, .-func0
	.section	.rodata
.LC0:
	.string	"problem84.c"
.LC1:
	.string	"func0(1) == 1"
.LC2:
	.string	"func0(2) == 18"
.LC3:
	.string	"func0(3) == 180"
.LC4:
	.string	"func0(4) == 1800"
.LC5:
	.string	"func0(5) == 18000"
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
# problem84.c:17:     assert(func0(1) == 1);
	movl	$1, %edi	#,
	call	func0	#
	cmpl	$1, %eax	#, _1
	je	.L8	#,
# problem84.c:17:     assert(func0(1) == 1);
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp89
	movq	%rax, %rcx	# tmp89,
	movl	$17, %edx	#,
	leaq	.LC0(%rip), %rax	#, tmp90
	movq	%rax, %rsi	# tmp90,
	leaq	.LC1(%rip), %rax	#, tmp91
	movq	%rax, %rdi	# tmp91,
	call	__assert_fail@PLT	#
.L8:
# problem84.c:18:     assert(func0(2) == 18);
	movl	$2, %edi	#,
	call	func0	#
	cmpl	$18, %eax	#, _2
	je	.L9	#,
# problem84.c:18:     assert(func0(2) == 18);
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp92
	movq	%rax, %rcx	# tmp92,
	movl	$18, %edx	#,
	leaq	.LC0(%rip), %rax	#, tmp93
	movq	%rax, %rsi	# tmp93,
	leaq	.LC2(%rip), %rax	#, tmp94
	movq	%rax, %rdi	# tmp94,
	call	__assert_fail@PLT	#
.L9:
# problem84.c:19:     assert(func0(3) == 180);
	movl	$3, %edi	#,
	call	func0	#
	cmpl	$180, %eax	#, _3
	je	.L10	#,
# problem84.c:19:     assert(func0(3) == 180);
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp95
	movq	%rax, %rcx	# tmp95,
	movl	$19, %edx	#,
	leaq	.LC0(%rip), %rax	#, tmp96
	movq	%rax, %rsi	# tmp96,
	leaq	.LC3(%rip), %rax	#, tmp97
	movq	%rax, %rdi	# tmp97,
	call	__assert_fail@PLT	#
.L10:
# problem84.c:20:     assert(func0(4) == 1800);
	movl	$4, %edi	#,
	call	func0	#
	cmpl	$1800, %eax	#, _4
	je	.L11	#,
# problem84.c:20:     assert(func0(4) == 1800);
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp98
	movq	%rax, %rcx	# tmp98,
	movl	$20, %edx	#,
	leaq	.LC0(%rip), %rax	#, tmp99
	movq	%rax, %rsi	# tmp99,
	leaq	.LC4(%rip), %rax	#, tmp100
	movq	%rax, %rdi	# tmp100,
	call	__assert_fail@PLT	#
.L11:
# problem84.c:21:     assert(func0(5) == 18000);
	movl	$5, %edi	#,
	call	func0	#
	cmpl	$18000, %eax	#, _5
	je	.L12	#,
# problem84.c:21:     assert(func0(5) == 18000);
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp101
	movq	%rax, %rcx	# tmp101,
	movl	$21, %edx	#,
	leaq	.LC0(%rip), %rax	#, tmp102
	movq	%rax, %rsi	# tmp102,
	leaq	.LC5(%rip), %rax	#, tmp103
	movq	%rax, %rdi	# tmp103,
	call	__assert_fail@PLT	#
.L12:
# problem84.c:23:     return 0;
	movl	$0, %eax	#, _17
# problem84.c:24: }
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
