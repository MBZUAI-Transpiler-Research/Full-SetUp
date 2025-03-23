	.file	"code.c"
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
	subq	$16, %rsp	#,
	movss	%xmm0, -4(%rbp)	# a, a
	movss	%xmm1, -8(%rbp)	# b, b
	movss	%xmm2, -12(%rbp)	# c, c
# eval/problem93//code.c:5:     if (roundf(a) != a) return 0;
	movl	-4(%rbp), %eax	# a, tmp90
	movd	%eax, %xmm0	# tmp90,
	call	roundf@PLT	#
	movd	%xmm0, %eax	#, _1
# eval/problem93//code.c:5:     if (roundf(a) != a) return 0;
	movd	%eax, %xmm3	# _1, _1
	ucomiss	-4(%rbp), %xmm3	# a, _1
	jp	.L14	#,
	movd	%eax, %xmm4	# _1, _1
	ucomiss	-4(%rbp), %xmm4	# a, _1
	je	.L2	#,
.L14:
# eval/problem93//code.c:5:     if (roundf(a) != a) return 0;
	movl	$0, %eax	#, _7
# eval/problem93//code.c:5:     if (roundf(a) != a) return 0;
	jmp	.L4	#
.L2:
# eval/problem93//code.c:6:     if (roundf(b) != b) return 0;
	movl	-8(%rbp), %eax	# b, tmp91
	movd	%eax, %xmm0	# tmp91,
	call	roundf@PLT	#
	movd	%xmm0, %eax	#, _2
# eval/problem93//code.c:6:     if (roundf(b) != b) return 0;
	movd	%eax, %xmm5	# _2, _2
	ucomiss	-8(%rbp), %xmm5	# b, _2
	jp	.L15	#,
	movd	%eax, %xmm6	# _2, _2
	ucomiss	-8(%rbp), %xmm6	# b, _2
	je	.L5	#,
.L15:
# eval/problem93//code.c:6:     if (roundf(b) != b) return 0;
	movl	$0, %eax	#, _7
# eval/problem93//code.c:6:     if (roundf(b) != b) return 0;
	jmp	.L4	#
.L5:
# eval/problem93//code.c:7:     if (roundf(c) != c) return 0;
	movl	-12(%rbp), %eax	# c, tmp92
	movd	%eax, %xmm0	# tmp92,
	call	roundf@PLT	#
	movd	%xmm0, %eax	#, _3
# eval/problem93//code.c:7:     if (roundf(c) != c) return 0;
	movd	%eax, %xmm7	# _3, _3
	ucomiss	-12(%rbp), %xmm7	# c, _3
	jp	.L16	#,
	movd	%eax, %xmm1	# _3, _3
	ucomiss	-12(%rbp), %xmm1	# c, _3
	je	.L7	#,
.L16:
# eval/problem93//code.c:7:     if (roundf(c) != c) return 0;
	movl	$0, %eax	#, _7
# eval/problem93//code.c:7:     if (roundf(c) != c) return 0;
	jmp	.L4	#
.L7:
# eval/problem93//code.c:8:     if ((a + b == c) || (a + c == b) || (b + c == a)) return 1;
	movss	-4(%rbp), %xmm0	# a, tmp93
	addss	-8(%rbp), %xmm0	# b, _4
# eval/problem93//code.c:8:     if ((a + b == c) || (a + c == b) || (b + c == a)) return 1;
	ucomiss	-12(%rbp), %xmm0	# c, _4
	jp	.L17	#,
	ucomiss	-12(%rbp), %xmm0	# c, _4
	je	.L9	#,
.L17:
# eval/problem93//code.c:8:     if ((a + b == c) || (a + c == b) || (b + c == a)) return 1;
	movss	-4(%rbp), %xmm0	# a, tmp94
	addss	-12(%rbp), %xmm0	# c, _5
# eval/problem93//code.c:8:     if ((a + b == c) || (a + c == b) || (b + c == a)) return 1;
	ucomiss	-8(%rbp), %xmm0	# b, _5
	jp	.L18	#,
	ucomiss	-8(%rbp), %xmm0	# b, _5
	je	.L9	#,
.L18:
# eval/problem93//code.c:8:     if ((a + b == c) || (a + c == b) || (b + c == a)) return 1;
	movss	-8(%rbp), %xmm0	# b, tmp95
	addss	-12(%rbp), %xmm0	# c, _6
# eval/problem93//code.c:8:     if ((a + b == c) || (a + c == b) || (b + c == a)) return 1;
	ucomiss	-4(%rbp), %xmm0	# a, _6
	jp	.L12	#,
	ucomiss	-4(%rbp), %xmm0	# a, _6
	jne	.L12	#,
.L9:
# eval/problem93//code.c:8:     if ((a + b == c) || (a + c == b) || (b + c == a)) return 1;
	movl	$1, %eax	#, _7
# eval/problem93//code.c:8:     if ((a + b == c) || (a + c == b) || (b + c == a)) return 1;
	jmp	.L4	#
.L12:
# eval/problem93//code.c:9:     return 0;
	movl	$0, %eax	#, _7
.L4:
# eval/problem93//code.c:10: }
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE0:
	.size	func0, .-func0
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
