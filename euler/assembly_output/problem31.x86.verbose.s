	.file	"problem31.c"
# GNU C17 (Ubuntu 13.3.0-6ubuntu2~24.04) version 13.3.0 (x86_64-linux-gnu)
#	compiled by GNU C version 13.3.0, GMP version 6.3.0, MPFR version 4.2.1, MPC version 1.3.1, isl version isl-0.26-GMP

# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed: -mtune=generic -march=x86-64 -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection -fcf-protection
	.text
	.section	.rodata
.LC0:
	.string	"%d\n"
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
	subq	$48, %rsp	#,
# problem31.c:10:   int z = 0;
	movl	$0, -36(%rbp)	#, z
# problem31.c:11:   int n = 200;
	movl	$200, -4(%rbp)	#, n
# problem31.c:14:   for (a = 0; a <= n; a += 200)
	movl	$0, -32(%rbp)	#, a
# problem31.c:14:   for (a = 0; a <= n; a += 200)
	jmp	.L2	#
.L16:
# problem31.c:15:     for (b = 0; b <= n; b += 100)
	movl	$0, -28(%rbp)	#, b
# problem31.c:15:     for (b = 0; b <= n; b += 100)
	jmp	.L3	#
.L15:
# problem31.c:16:       for (c = 0; c <= n; c += 50)
	movl	$0, -24(%rbp)	#, c
# problem31.c:16:       for (c = 0; c <= n; c += 50)
	jmp	.L4	#
.L14:
# problem31.c:17:         for (d = 0; d <= n; d += 20)
	movl	$0, -20(%rbp)	#, d
# problem31.c:17:         for (d = 0; d <= n; d += 20)
	jmp	.L5	#
.L13:
# problem31.c:18:           for (e = 0; e <= n; e += 10)
	movl	$0, -16(%rbp)	#, e
# problem31.c:18:           for (e = 0; e <= n; e += 10)
	jmp	.L6	#
.L12:
# problem31.c:19:             for (f = 0; f <= n; f += 5)
	movl	$0, -12(%rbp)	#, f
# problem31.c:19:             for (f = 0; f <= n; f += 5)
	jmp	.L7	#
.L11:
# problem31.c:20:               for (g = 0; g <= n; g += 2)
	movl	$0, -8(%rbp)	#, g
# problem31.c:20:               for (g = 0; g <= n; g += 2)
	jmp	.L8	#
.L10:
# problem31.c:21:                 if (a+b+c+d+e+f+g <= 200)
	movl	-32(%rbp), %edx	# a, tmp90
	movl	-28(%rbp), %eax	# b, tmp91
	addl	%eax, %edx	# tmp91, _1
# problem31.c:21:                 if (a+b+c+d+e+f+g <= 200)
	movl	-24(%rbp), %eax	# c, tmp92
	addl	%eax, %edx	# tmp92, _2
# problem31.c:21:                 if (a+b+c+d+e+f+g <= 200)
	movl	-20(%rbp), %eax	# d, tmp93
	addl	%eax, %edx	# tmp93, _3
# problem31.c:21:                 if (a+b+c+d+e+f+g <= 200)
	movl	-16(%rbp), %eax	# e, tmp94
	addl	%eax, %edx	# tmp94, _4
# problem31.c:21:                 if (a+b+c+d+e+f+g <= 200)
	movl	-12(%rbp), %eax	# f, tmp95
	addl	%eax, %edx	# tmp95, _5
# problem31.c:21:                 if (a+b+c+d+e+f+g <= 200)
	movl	-8(%rbp), %eax	# g, tmp96
	addl	%edx, %eax	# _5, _6
# problem31.c:21:                 if (a+b+c+d+e+f+g <= 200)
	cmpl	$200, %eax	#, _6
	jg	.L9	#,
# problem31.c:22:                   z++;
	addl	$1, -36(%rbp)	#, z
.L9:
# problem31.c:20:               for (g = 0; g <= n; g += 2)
	addl	$2, -8(%rbp)	#, g
.L8:
# problem31.c:20:               for (g = 0; g <= n; g += 2)
	movl	-8(%rbp), %eax	# g, tmp97
	cmpl	-4(%rbp), %eax	# n, tmp97
	jle	.L10	#,
# problem31.c:19:             for (f = 0; f <= n; f += 5)
	addl	$5, -12(%rbp)	#, f
.L7:
# problem31.c:19:             for (f = 0; f <= n; f += 5)
	movl	-12(%rbp), %eax	# f, tmp98
	cmpl	-4(%rbp), %eax	# n, tmp98
	jle	.L11	#,
# problem31.c:18:           for (e = 0; e <= n; e += 10)
	addl	$10, -16(%rbp)	#, e
.L6:
# problem31.c:18:           for (e = 0; e <= n; e += 10)
	movl	-16(%rbp), %eax	# e, tmp99
	cmpl	-4(%rbp), %eax	# n, tmp99
	jle	.L12	#,
# problem31.c:17:         for (d = 0; d <= n; d += 20)
	addl	$20, -20(%rbp)	#, d
.L5:
# problem31.c:17:         for (d = 0; d <= n; d += 20)
	movl	-20(%rbp), %eax	# d, tmp100
	cmpl	-4(%rbp), %eax	# n, tmp100
	jle	.L13	#,
# problem31.c:16:       for (c = 0; c <= n; c += 50)
	addl	$50, -24(%rbp)	#, c
.L4:
# problem31.c:16:       for (c = 0; c <= n; c += 50)
	movl	-24(%rbp), %eax	# c, tmp101
	cmpl	-4(%rbp), %eax	# n, tmp101
	jle	.L14	#,
# problem31.c:15:     for (b = 0; b <= n; b += 100)
	addl	$100, -28(%rbp)	#, b
.L3:
# problem31.c:15:     for (b = 0; b <= n; b += 100)
	movl	-28(%rbp), %eax	# b, tmp102
	cmpl	-4(%rbp), %eax	# n, tmp102
	jle	.L15	#,
# problem31.c:14:   for (a = 0; a <= n; a += 200)
	addl	$200, -32(%rbp)	#, a
.L2:
# problem31.c:14:   for (a = 0; a <= n; a += 200)
	movl	-32(%rbp), %eax	# a, tmp103
	cmpl	-4(%rbp), %eax	# n, tmp103
	jle	.L16	#,
# problem31.c:23:   printf("%d\n", z);
	movl	-36(%rbp), %eax	# z, tmp104
	movl	%eax, %esi	# tmp104,
	leaq	.LC0(%rip), %rax	#, tmp105
	movq	%rax, %rdi	# tmp105,
	movl	$0, %eax	#,
	call	printf@PLT	#
# problem31.c:25:   return 0;
	movl	$0, %eax	#, _27
# problem31.c:26: }
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE0:
	.size	main, .-main
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
