	.file	"problem3.c"
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
	movss	%xmm0, -4(%rbp)	# number, number
# problem3.c:5:     return number - (int)number;
	movss	-4(%rbp), %xmm0	# number, tmp86
	cvttss2sil	%xmm0, %eax	# tmp86, _1
# problem3.c:5:     return number - (int)number;
	pxor	%xmm1, %xmm1	# _2
	cvtsi2ssl	%eax, %xmm1	# _1, _2
	movss	-4(%rbp), %xmm0	# number, tmp87
	subss	%xmm1, %xmm0	# _2, _4
# problem3.c:6: }
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE0:
	.size	func0, .-func0
	.section	.rodata
.LC0:
	.string	"Testing problem 3"
.LC3:
	.string	"problem3.c"
.LC4:
	.string	"func0(3.5f) == 0.5f"
	.align 8
.LC9:
	.string	"fabs(func0(1.33f) - 0.33f) < 1e-4"
	.align 8
.LC12:
	.string	"fabs(func0(123.456f) - 0.456f) < 1e-4"
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
# problem3.c:15:     printf("Testing problem 3\n");
	leaq	.LC0(%rip), %rax	#, tmp93
	movq	%rax, %rdi	# tmp93,
	call	puts@PLT	#
# problem3.c:16:     assert(func0(3.5f) == 0.5f);
	movl	.LC1(%rip), %eax	#, tmp94
	movd	%eax, %xmm0	# tmp94,
	call	func0	#
	movd	%xmm0, %eax	#, _1
	movd	%eax, %xmm2	# _1, _1
	ucomiss	.LC2(%rip), %xmm2	#, _1
	jp	.L9	#,
	movd	%eax, %xmm3	# _1, _1
	ucomiss	.LC2(%rip), %xmm3	#, _1
	je	.L4	#,
.L9:
# problem3.c:16:     assert(func0(3.5f) == 0.5f);
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp95
	movq	%rax, %rcx	# tmp95,
	movl	$16, %edx	#,
	leaq	.LC3(%rip), %rax	#, tmp96
	movq	%rax, %rsi	# tmp96,
	leaq	.LC4(%rip), %rax	#, tmp97
	movq	%rax, %rdi	# tmp97,
	call	__assert_fail@PLT	#
.L4:
# problem3.c:17:     assert(fabs(func0(1.33f) - 0.33f) < 1e-4);
	movl	.LC5(%rip), %eax	#, tmp98
	movd	%eax, %xmm0	# tmp98,
	call	func0	#
	movd	%xmm0, %eax	#, _2
	movss	.LC6(%rip), %xmm1	#, tmp99
	movd	%eax, %xmm0	# _2, _2
	subss	%xmm1, %xmm0	# tmp99, _2
	movss	.LC7(%rip), %xmm1	#, tmp100
	andps	%xmm1, %xmm0	# tmp100, _4
	pxor	%xmm1, %xmm1	# _5
	cvtss2sd	%xmm0, %xmm1	# _4, _5
	movsd	.LC8(%rip), %xmm0	#, tmp101
	comisd	%xmm1, %xmm0	# _5, tmp101
	ja	.L6	#,
# problem3.c:17:     assert(fabs(func0(1.33f) - 0.33f) < 1e-4);
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp102
	movq	%rax, %rcx	# tmp102,
	movl	$17, %edx	#,
	leaq	.LC3(%rip), %rax	#, tmp103
	movq	%rax, %rsi	# tmp103,
	leaq	.LC9(%rip), %rax	#, tmp104
	movq	%rax, %rdi	# tmp104,
	call	__assert_fail@PLT	#
.L6:
# problem3.c:18:     assert(fabs(func0(123.456f) - 0.456f) < 1e-4);
	movl	.LC10(%rip), %eax	#, tmp105
	movd	%eax, %xmm0	# tmp105,
	call	func0	#
	movd	%xmm0, %eax	#, _6
	movss	.LC11(%rip), %xmm1	#, tmp106
	movd	%eax, %xmm0	# _6, _6
	subss	%xmm1, %xmm0	# tmp106, _6
	movss	.LC7(%rip), %xmm1	#, tmp107
	andps	%xmm1, %xmm0	# tmp107, _8
	pxor	%xmm1, %xmm1	# _9
	cvtss2sd	%xmm0, %xmm1	# _8, _9
	movsd	.LC8(%rip), %xmm0	#, tmp108
	comisd	%xmm1, %xmm0	# _9, tmp108
	ja	.L7	#,
# problem3.c:18:     assert(fabs(func0(123.456f) - 0.456f) < 1e-4);
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp109
	movq	%rax, %rcx	# tmp109,
	movl	$18, %edx	#,
	leaq	.LC3(%rip), %rax	#, tmp110
	movq	%rax, %rsi	# tmp110,
	leaq	.LC12(%rip), %rax	#, tmp111
	movq	%rax, %rdi	# tmp111,
	call	__assert_fail@PLT	#
.L7:
# problem3.c:20:     return 0;
	movl	$0, %eax	#, _18
# problem3.c:21: }
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
.LC1:
	.long	1080033280
	.align 4
.LC2:
	.long	1056964608
	.align 4
.LC5:
	.long	1068121457
	.align 4
.LC6:
	.long	1051260355
	.align 16
.LC7:
	.long	2147483647
	.long	0
	.long	0
	.long	0
	.align 8
.LC8:
	.long	-350469331
	.long	1058682594
	.align 4
.LC10:
	.long	1123477881
	.align 4
.LC11:
	.long	1055488213
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
