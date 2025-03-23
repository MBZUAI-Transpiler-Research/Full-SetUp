	.file	"problem100.c"
# GNU C17 (Ubuntu 11.4.0-1ubuntu1~22.04) version 11.4.0 (x86_64-linux-gnu)
#	compiled by GNU C version 11.4.0, GMP version 6.2.1, MPFR version 4.1.0, MPC version 1.2.1, isl version isl-0.24-GMP

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
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# value, value
# problem100.c:7:     w = atof(value);
	movq	-24(%rbp), %rax	# value, tmp88
	movq	%rax, %rdi	# tmp88,
	call	atof@PLT	#
	movq	%xmm0, %rax	#, tmp89
	movq	%rax, -8(%rbp)	# tmp89, w
# problem100.c:8:     return (int)(w < 0 ? ceil(w - 0.5) : floor(w + 0.5));
	pxor	%xmm0, %xmm0	# tmp90
	comisd	-8(%rbp), %xmm0	# w, tmp90
	jbe	.L7	#,
# problem100.c:8:     return (int)(w < 0 ? ceil(w - 0.5) : floor(w + 0.5));
	movsd	-8(%rbp), %xmm0	# w, tmp91
	movsd	.LC1(%rip), %xmm1	#, tmp92
	subsd	%xmm1, %xmm0	# tmp92, tmp91
	movq	%xmm0, %rax	# tmp91, _1
	movq	%rax, %xmm0	# _1,
	call	ceil@PLT	#
# problem100.c:8:     return (int)(w < 0 ? ceil(w - 0.5) : floor(w + 0.5));
	cvttsd2sil	%xmm0, %eax	# _2, iftmp.0_5
	jmp	.L5	#
.L7:
# problem100.c:8:     return (int)(w < 0 ? ceil(w - 0.5) : floor(w + 0.5));
	movsd	-8(%rbp), %xmm1	# w, tmp93
	movsd	.LC1(%rip), %xmm0	#, tmp94
	addsd	%xmm0, %xmm1	# tmp94, tmp93
	movq	%xmm1, %rax	# tmp93, _3
	movq	%rax, %xmm0	# _3,
	call	floor@PLT	#
# problem100.c:8:     return (int)(w < 0 ? ceil(w - 0.5) : floor(w + 0.5));
	cvttsd2sil	%xmm0, %eax	# _4, iftmp.0_5
.L5:
# problem100.c:9: }
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE6:
	.size	func0, .-func0
	.section	.rodata
.LC2:
	.string	"10"
.LC3:
	.string	"problem100.c"
.LC4:
	.string	"func0(\"10\") == 10"
.LC5:
	.string	"14.5"
.LC6:
	.string	"func0(\"14.5\") == 15"
.LC7:
	.string	"-15.5"
.LC8:
	.string	"func0(\"-15.5\") == -16"
.LC9:
	.string	"15.3"
.LC10:
	.string	"func0(\"15.3\") == 15"
.LC11:
	.string	"0"
.LC12:
	.string	"func0(\"0\") == 0"
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
# problem100.c:16:     assert(func0("10") == 10);
	leaq	.LC2(%rip), %rax	#, tmp89
	movq	%rax, %rdi	# tmp89,
	call	func0	#
	cmpl	$10, %eax	#, _1
	je	.L9	#,
# problem100.c:16:     assert(func0("10") == 10);
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp90
	movq	%rax, %rcx	# tmp90,
	movl	$16, %edx	#,
	leaq	.LC3(%rip), %rax	#, tmp91
	movq	%rax, %rsi	# tmp91,
	leaq	.LC4(%rip), %rax	#, tmp92
	movq	%rax, %rdi	# tmp92,
	call	__assert_fail@PLT	#
.L9:
# problem100.c:17:     assert(func0("14.5") == 15);
	leaq	.LC5(%rip), %rax	#, tmp93
	movq	%rax, %rdi	# tmp93,
	call	func0	#
	cmpl	$15, %eax	#, _2
	je	.L10	#,
# problem100.c:17:     assert(func0("14.5") == 15);
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp94
	movq	%rax, %rcx	# tmp94,
	movl	$17, %edx	#,
	leaq	.LC3(%rip), %rax	#, tmp95
	movq	%rax, %rsi	# tmp95,
	leaq	.LC6(%rip), %rax	#, tmp96
	movq	%rax, %rdi	# tmp96,
	call	__assert_fail@PLT	#
.L10:
# problem100.c:18:     assert(func0("-15.5") == -16);
	leaq	.LC7(%rip), %rax	#, tmp97
	movq	%rax, %rdi	# tmp97,
	call	func0	#
	cmpl	$-16, %eax	#, _3
	je	.L11	#,
# problem100.c:18:     assert(func0("-15.5") == -16);
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp98
	movq	%rax, %rcx	# tmp98,
	movl	$18, %edx	#,
	leaq	.LC3(%rip), %rax	#, tmp99
	movq	%rax, %rsi	# tmp99,
	leaq	.LC8(%rip), %rax	#, tmp100
	movq	%rax, %rdi	# tmp100,
	call	__assert_fail@PLT	#
.L11:
# problem100.c:19:     assert(func0("15.3") == 15);
	leaq	.LC9(%rip), %rax	#, tmp101
	movq	%rax, %rdi	# tmp101,
	call	func0	#
	cmpl	$15, %eax	#, _4
	je	.L12	#,
# problem100.c:19:     assert(func0("15.3") == 15);
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp102
	movq	%rax, %rcx	# tmp102,
	movl	$19, %edx	#,
	leaq	.LC3(%rip), %rax	#, tmp103
	movq	%rax, %rsi	# tmp103,
	leaq	.LC10(%rip), %rax	#, tmp104
	movq	%rax, %rdi	# tmp104,
	call	__assert_fail@PLT	#
.L12:
# problem100.c:20:     assert(func0("0") == 0);
	leaq	.LC11(%rip), %rax	#, tmp105
	movq	%rax, %rdi	# tmp105,
	call	func0	#
	testl	%eax, %eax	# _5
	je	.L13	#,
# problem100.c:20:     assert(func0("0") == 0);
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp106
	movq	%rax, %rcx	# tmp106,
	movl	$20, %edx	#,
	leaq	.LC3(%rip), %rax	#, tmp107
	movq	%rax, %rsi	# tmp107,
	leaq	.LC12(%rip), %rax	#, tmp108
	movq	%rax, %rdi	# tmp108,
	call	__assert_fail@PLT	#
.L13:
# problem100.c:22:     return 0;
	movl	$0, %eax	#, _17
# problem100.c:23: }
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
	.align 8
.LC1:
	.long	0
	.long	1071644672
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
