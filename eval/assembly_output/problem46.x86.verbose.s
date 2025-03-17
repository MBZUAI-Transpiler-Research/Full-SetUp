	.file	"problem46.c"
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
	movss	%xmm0, -4(%rbp)	# a, a
	movss	%xmm1, -8(%rbp)	# h, h
# problem46.c:5:     return (a * h) * 0.5;
	movss	-4(%rbp), %xmm0	# a, tmp85
	movaps	%xmm0, %xmm1	# tmp85, tmp85
	mulss	-8(%rbp), %xmm1	# h, tmp85
# problem46.c:5:     return (a * h) * 0.5;
	movss	.LC0(%rip), %xmm0	#, tmp86
	mulss	%xmm1, %xmm0	# _1, _4
# problem46.c:6: }
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE0:
	.size	func0, .-func0
	.section	.rodata
.LC6:
	.string	"problem46.c"
	.align 8
.LC7:
	.string	"fabs(func0(5, 3) - 7.5) < 1e-4"
	.align 8
.LC10:
	.string	"fabs(func0(2, 2) - 2.0) < 1e-4"
	.align 8
.LC14:
	.string	"fabs(func0(10, 8) - 40.0) < 1e-4"
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
# problem46.c:15:     assert(fabs(func0(5, 3) - 7.5) < 1e-4);
	movss	.LC1(%rip), %xmm1	#,
	movl	.LC2(%rip), %eax	#, tmp96
	movd	%eax, %xmm0	# tmp96,
	call	func0	#
# problem46.c:15:     assert(fabs(func0(5, 3) - 7.5) < 1e-4);
	cvtss2sd	%xmm0, %xmm0	# _1, _2
	movsd	.LC3(%rip), %xmm1	#, tmp97
	subsd	%xmm1, %xmm0	# tmp97, _3
	movq	.LC4(%rip), %xmm1	#, tmp98
	andpd	%xmm0, %xmm1	# _3, _4
	movsd	.LC5(%rip), %xmm0	#, tmp99
	comisd	%xmm1, %xmm0	# _4, tmp99
	ja	.L4	#,
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp100
	movq	%rax, %rcx	# tmp100,
	movl	$15, %edx	#,
	leaq	.LC6(%rip), %rax	#, tmp101
	movq	%rax, %rsi	# tmp101,
	leaq	.LC7(%rip), %rax	#, tmp102
	movq	%rax, %rdi	# tmp102,
	call	__assert_fail@PLT	#
.L4:
# problem46.c:16:     assert(fabs(func0(2, 2) - 2.0) < 1e-4);
	movss	.LC8(%rip), %xmm1	#,
	movl	.LC8(%rip), %eax	#, tmp103
	movd	%eax, %xmm0	# tmp103,
	call	func0	#
# problem46.c:16:     assert(fabs(func0(2, 2) - 2.0) < 1e-4);
	cvtss2sd	%xmm0, %xmm0	# _5, _6
	movsd	.LC9(%rip), %xmm1	#, tmp104
	subsd	%xmm1, %xmm0	# tmp104, _7
	movq	.LC4(%rip), %xmm1	#, tmp105
	andpd	%xmm0, %xmm1	# _7, _8
	movsd	.LC5(%rip), %xmm0	#, tmp106
	comisd	%xmm1, %xmm0	# _8, tmp106
	ja	.L5	#,
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp107
	movq	%rax, %rcx	# tmp107,
	movl	$16, %edx	#,
	leaq	.LC6(%rip), %rax	#, tmp108
	movq	%rax, %rsi	# tmp108,
	leaq	.LC10(%rip), %rax	#, tmp109
	movq	%rax, %rdi	# tmp109,
	call	__assert_fail@PLT	#
.L5:
# problem46.c:17:     assert(fabs(func0(10, 8) - 40.0) < 1e-4);
	movss	.LC11(%rip), %xmm1	#,
	movl	.LC12(%rip), %eax	#, tmp110
	movd	%eax, %xmm0	# tmp110,
	call	func0	#
# problem46.c:17:     assert(fabs(func0(10, 8) - 40.0) < 1e-4);
	cvtss2sd	%xmm0, %xmm0	# _9, _10
	movsd	.LC13(%rip), %xmm1	#, tmp111
	subsd	%xmm1, %xmm0	# tmp111, _11
	movq	.LC4(%rip), %xmm1	#, tmp112
	andpd	%xmm0, %xmm1	# _11, _12
	movsd	.LC5(%rip), %xmm0	#, tmp113
	comisd	%xmm1, %xmm0	# _12, tmp113
	ja	.L6	#,
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp114
	movq	%rax, %rcx	# tmp114,
	movl	$17, %edx	#,
	leaq	.LC6(%rip), %rax	#, tmp115
	movq	%rax, %rsi	# tmp115,
	leaq	.LC14(%rip), %rax	#, tmp116
	movq	%rax, %rdi	# tmp116,
	call	__assert_fail@PLT	#
.L6:
# problem46.c:19:     return 0;
	movl	$0, %eax	#, _20
# problem46.c:20: }
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
	.align 4
.LC0:
	.long	1056964608
	.align 4
.LC1:
	.long	1077936128
	.align 4
.LC2:
	.long	1084227584
	.align 8
.LC3:
	.long	0
	.long	1075707904
	.align 16
.LC4:
	.long	-1
	.long	2147483647
	.long	0
	.long	0
	.align 8
.LC5:
	.long	-350469331
	.long	1058682594
	.align 4
.LC8:
	.long	1073741824
	.align 8
.LC9:
	.long	0
	.long	1073741824
	.align 4
.LC11:
	.long	1090519040
	.align 4
.LC12:
	.long	1092616192
	.align 8
.LC13:
	.long	0
	.long	1078198272
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
