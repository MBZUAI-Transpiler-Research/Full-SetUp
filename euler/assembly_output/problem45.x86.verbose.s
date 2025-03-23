	.file	"problem45.c"
# GNU C17 (Ubuntu 11.4.0-1ubuntu1~22.04) version 11.4.0 (x86_64-linux-gnu)
#	compiled by GNU C version 11.4.0, GMP version 6.2.1, MPFR version 4.1.0, MPC version 1.2.1, isl version isl-0.24-GMP

# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed: -mtune=generic -march=x86-64 -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection -fcf-protection
	.text
	.section	.rodata
.LC0:
	.string	"%llu\n"
	.text
	.globl	main
	.type	main, @function
main:
.LFB0:
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
# problem45.c:16:   for (i = 144; !(is_pentagonal(h = hexagonal(i)) && is_triangle(h)); i++)
	movq	$144, -16(%rbp)	#, i
# problem45.c:16:   for (i = 144; !(is_pentagonal(h = hexagonal(i)) && is_triangle(h)); i++)
	jmp	.L2	#
.L3:
# problem45.c:16:   for (i = 144; !(is_pentagonal(h = hexagonal(i)) && is_triangle(h)); i++)
	addq	$1, -16(%rbp)	#, i
.L2:
# problem45.c:16:   for (i = 144; !(is_pentagonal(h = hexagonal(i)) && is_triangle(h)); i++)
	movq	-16(%rbp), %rax	# i, tmp86
	movq	%rax, %rdi	# tmp86,
	call	hexagonal	#
	movq	%rax, -8(%rbp)	# tmp87, h
# problem45.c:16:   for (i = 144; !(is_pentagonal(h = hexagonal(i)) && is_triangle(h)); i++)
	movq	-8(%rbp), %rax	# h, tmp88
	movq	%rax, %rdi	# tmp88,
	call	is_pentagonal	#
# problem45.c:16:   for (i = 144; !(is_pentagonal(h = hexagonal(i)) && is_triangle(h)); i++)
	testl	%eax, %eax	# _1
	je	.L3	#,
# problem45.c:16:   for (i = 144; !(is_pentagonal(h = hexagonal(i)) && is_triangle(h)); i++)
	movq	-8(%rbp), %rax	# h, tmp89
	movq	%rax, %rdi	# tmp89,
	call	is_triangle	#
# problem45.c:16:   for (i = 144; !(is_pentagonal(h = hexagonal(i)) && is_triangle(h)); i++)
	testl	%eax, %eax	# _2
	je	.L3	#,
# problem45.c:18:   printf("%llu\n", h);
	movq	-8(%rbp), %rax	# h, tmp90
	movq	%rax, %rsi	# tmp90,
	leaq	.LC0(%rip), %rax	#, tmp91
	movq	%rax, %rdi	# tmp91,
	movl	$0, %eax	#,
	call	printf@PLT	#
# problem45.c:19:   return 0;
	movl	$0, %eax	#, _13
# problem45.c:20: }
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.globl	is_triangle
	.type	is_triangle, @function
is_triangle:
.LFB1:
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# n, n
# problem45.c:24:   unsigned long long sq = sqrt(1+8*n);
	movq	-24(%rbp), %rax	# n, tmp93
	salq	$3, %rax	#, _1
# problem45.c:24:   unsigned long long sq = sqrt(1+8*n);
	addq	$1, %rax	#, _2
# problem45.c:24:   unsigned long long sq = sqrt(1+8*n);
	testq	%rax, %rax	# _2
	js	.L6	#,
	pxor	%xmm2, %xmm2	# _3
	cvtsi2sdq	%rax, %xmm2	# _2, _3
	movq	%xmm2, %rax	# _3, _3
	jmp	.L7	#
.L6:
	movq	%rax, %rdx	# _2, tmp95
	shrq	%rdx	# tmp95
	andl	$1, %eax	#, tmp96
	orq	%rax, %rdx	# tmp96, tmp95
	pxor	%xmm0, %xmm0	# tmp94
	cvtsi2sdq	%rdx, %xmm0	# tmp95, tmp94
	addsd	%xmm0, %xmm0	# tmp94, tmp94
	movq	%xmm0, %rax	# tmp94, _3
.L7:
	movq	%rax, %xmm0	# _3,
	call	sqrt@PLT	#
# problem45.c:24:   unsigned long long sq = sqrt(1+8*n);
	comisd	.LC1(%rip), %xmm0	#, _4
	jnb	.L8	#,
	cvttsd2siq	%xmm0, %rax	# _4, tmp97
	movq	%rax, -8(%rbp)	# tmp97, sq
	jmp	.L9	#
.L8:
	movsd	.LC1(%rip), %xmm1	#, tmp99
	subsd	%xmm1, %xmm0	# tmp99, tmp98
	cvttsd2siq	%xmm0, %rax	# tmp98, tmp100
	movq	%rax, -8(%rbp)	# tmp100, sq
	movabsq	$-9223372036854775808, %rax	#, tmp101
	xorq	%rax, -8(%rbp)	# tmp101, sq
.L9:
	movq	-8(%rbp), %rax	# sq, tmp102
	movq	%rax, -8(%rbp)	# tmp102, sq
# problem45.c:25:   return sq*sq == 1+8*n && (sq-1) % 2 == 0;
	movq	-8(%rbp), %rax	# sq, tmp103
	imulq	%rax, %rax	# tmp103, _5
# problem45.c:25:   return sq*sq == 1+8*n && (sq-1) % 2 == 0;
	movq	-24(%rbp), %rdx	# n, tmp104
	salq	$3, %rdx	#, _6
# problem45.c:25:   return sq*sq == 1+8*n && (sq-1) % 2 == 0;
	addq	$1, %rdx	#, _7
# problem45.c:25:   return sq*sq == 1+8*n && (sq-1) % 2 == 0;
	cmpq	%rdx, %rax	# _7, _5
	jne	.L10	#,
# problem45.c:25:   return sq*sq == 1+8*n && (sq-1) % 2 == 0;
	movq	-8(%rbp), %rax	# sq, tmp105
	subq	$1, %rax	#, _8
# problem45.c:25:   return sq*sq == 1+8*n && (sq-1) % 2 == 0;
	andl	$1, %eax	#, _9
# problem45.c:25:   return sq*sq == 1+8*n && (sq-1) % 2 == 0;
	testq	%rax, %rax	# _9
	jne	.L10	#,
# problem45.c:25:   return sq*sq == 1+8*n && (sq-1) % 2 == 0;
	movl	$1, %eax	#, iftmp.0_10
	jmp	.L12	#
.L10:
# problem45.c:25:   return sq*sq == 1+8*n && (sq-1) % 2 == 0;
	movl	$0, %eax	#, iftmp.0_10
.L12:
# problem45.c:26: }
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE1:
	.size	is_triangle, .-is_triangle
	.globl	is_pentagonal
	.type	is_pentagonal, @function
is_pentagonal:
.LFB2:
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# n, n
# problem45.c:30:   unsigned long long sq = sqrt(1+24*n);
	movq	-24(%rbp), %rdx	# n, tmp93
	movq	%rdx, %rax	# tmp93, tmp94
	addq	%rax, %rax	# tmp94
	addq	%rdx, %rax	# tmp93, tmp94
	salq	$3, %rax	#, tmp95
# problem45.c:30:   unsigned long long sq = sqrt(1+24*n);
	addq	$1, %rax	#, _2
# problem45.c:30:   unsigned long long sq = sqrt(1+24*n);
	testq	%rax, %rax	# _2
	js	.L14	#,
	pxor	%xmm2, %xmm2	# _3
	cvtsi2sdq	%rax, %xmm2	# _2, _3
	movq	%xmm2, %rax	# _3, _3
	jmp	.L15	#
.L14:
	movq	%rax, %rdx	# _2, tmp97
	shrq	%rdx	# tmp97
	andl	$1, %eax	#, tmp98
	orq	%rax, %rdx	# tmp98, tmp97
	pxor	%xmm0, %xmm0	# tmp96
	cvtsi2sdq	%rdx, %xmm0	# tmp97, tmp96
	addsd	%xmm0, %xmm0	# tmp96, tmp96
	movq	%xmm0, %rax	# tmp96, _3
.L15:
	movq	%rax, %xmm0	# _3,
	call	sqrt@PLT	#
# problem45.c:30:   unsigned long long sq = sqrt(1+24*n);
	comisd	.LC1(%rip), %xmm0	#, _4
	jnb	.L16	#,
	cvttsd2siq	%xmm0, %rax	# _4, tmp99
	movq	%rax, -8(%rbp)	# tmp99, sq
	jmp	.L17	#
.L16:
	movsd	.LC1(%rip), %xmm1	#, tmp101
	subsd	%xmm1, %xmm0	# tmp101, tmp100
	cvttsd2siq	%xmm0, %rax	# tmp100, tmp102
	movq	%rax, -8(%rbp)	# tmp102, sq
	movabsq	$-9223372036854775808, %rax	#, tmp103
	xorq	%rax, -8(%rbp)	# tmp103, sq
.L17:
	movq	-8(%rbp), %rax	# sq, tmp104
	movq	%rax, -8(%rbp)	# tmp104, sq
# problem45.c:31:   return sq*sq == 1+24*n && (1+sq) % 6 == 0;
	movq	-8(%rbp), %rax	# sq, tmp105
	imulq	%rax, %rax	# tmp105, tmp105
	movq	%rax, %rcx	# tmp105, _5
# problem45.c:31:   return sq*sq == 1+24*n && (1+sq) % 6 == 0;
	movq	-24(%rbp), %rdx	# n, tmp106
	movq	%rdx, %rax	# tmp106, tmp107
	addq	%rax, %rax	# tmp107
	addq	%rdx, %rax	# tmp106, tmp107
	salq	$3, %rax	#, tmp108
# problem45.c:31:   return sq*sq == 1+24*n && (1+sq) % 6 == 0;
	addq	$1, %rax	#, _7
# problem45.c:31:   return sq*sq == 1+24*n && (1+sq) % 6 == 0;
	cmpq	%rax, %rcx	# _7, _5
	jne	.L18	#,
# problem45.c:31:   return sq*sq == 1+24*n && (1+sq) % 6 == 0;
	movq	-8(%rbp), %rax	# sq, tmp109
	leaq	1(%rax), %rcx	#, _8
# problem45.c:31:   return sq*sq == 1+24*n && (1+sq) % 6 == 0;
	movabsq	$-6148914691236517205, %rdx	#, tmp111
	movq	%rcx, %rax	# _8, tmp115
	mulq	%rdx	# tmp111
	shrq	$2, %rdx	#, _9
	movq	%rdx, %rax	# _9, tmp112
	addq	%rax, %rax	# tmp112
	addq	%rdx, %rax	# _9, tmp112
	addq	%rax, %rax	# tmp113
	subq	%rax, %rcx	# tmp112, _8
	movq	%rcx, %rdx	# _8, _9
# problem45.c:31:   return sq*sq == 1+24*n && (1+sq) % 6 == 0;
	testq	%rdx, %rdx	# _9
	jne	.L18	#,
# problem45.c:31:   return sq*sq == 1+24*n && (1+sq) % 6 == 0;
	movl	$1, %eax	#, iftmp.1_10
	jmp	.L20	#
.L18:
# problem45.c:31:   return sq*sq == 1+24*n && (1+sq) % 6 == 0;
	movl	$0, %eax	#, iftmp.1_10
.L20:
# problem45.c:32: }
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE2:
	.size	is_pentagonal, .-is_pentagonal
	.globl	hexagonal
	.type	hexagonal, @function
hexagonal:
.LFB3:
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)	# n, n
# problem45.c:36:   return n*(2*n-1);
	movq	-8(%rbp), %rax	# n, tmp86
	addq	%rax, %rax	# _1
# problem45.c:36:   return n*(2*n-1);
	subq	$1, %rax	#, _2
# problem45.c:36:   return n*(2*n-1);
	imulq	-8(%rbp), %rax	# n, _4
# problem45.c:37: }
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE3:
	.size	hexagonal, .-hexagonal
	.section	.rodata
	.align 8
.LC1:
	.long	0
	.long	1138753536
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
