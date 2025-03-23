	.file	"problem93.c"
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
	subq	$16, %rsp	#,
	movss	%xmm0, -4(%rbp)	# a, a
	movss	%xmm1, -8(%rbp)	# b, b
	movss	%xmm2, -12(%rbp)	# c, c
# problem93.c:5:     if (roundf(a) != a) return 0;
	movl	-4(%rbp), %eax	# a, tmp90
	movd	%eax, %xmm0	# tmp90,
	call	roundf@PLT	#
	movd	%xmm0, %eax	#, _1
# problem93.c:5:     if (roundf(a) != a) return 0;
	movd	%eax, %xmm3	# _1, _1
	ucomiss	-4(%rbp), %xmm3	# a, _1
	jp	.L14	#,
	movd	%eax, %xmm4	# _1, _1
	ucomiss	-4(%rbp), %xmm4	# a, _1
	je	.L2	#,
.L14:
# problem93.c:5:     if (roundf(a) != a) return 0;
	movl	$0, %eax	#, _7
	jmp	.L4	#
.L2:
# problem93.c:6:     if (roundf(b) != b) return 0;
	movl	-8(%rbp), %eax	# b, tmp91
	movd	%eax, %xmm0	# tmp91,
	call	roundf@PLT	#
	movd	%xmm0, %eax	#, _2
# problem93.c:6:     if (roundf(b) != b) return 0;
	movd	%eax, %xmm5	# _2, _2
	ucomiss	-8(%rbp), %xmm5	# b, _2
	jp	.L15	#,
	movd	%eax, %xmm6	# _2, _2
	ucomiss	-8(%rbp), %xmm6	# b, _2
	je	.L5	#,
.L15:
# problem93.c:6:     if (roundf(b) != b) return 0;
	movl	$0, %eax	#, _7
	jmp	.L4	#
.L5:
# problem93.c:7:     if (roundf(c) != c) return 0;
	movl	-12(%rbp), %eax	# c, tmp92
	movd	%eax, %xmm0	# tmp92,
	call	roundf@PLT	#
	movd	%xmm0, %eax	#, _3
# problem93.c:7:     if (roundf(c) != c) return 0;
	movd	%eax, %xmm7	# _3, _3
	ucomiss	-12(%rbp), %xmm7	# c, _3
	jp	.L16	#,
	movd	%eax, %xmm1	# _3, _3
	ucomiss	-12(%rbp), %xmm1	# c, _3
	je	.L7	#,
.L16:
# problem93.c:7:     if (roundf(c) != c) return 0;
	movl	$0, %eax	#, _7
	jmp	.L4	#
.L7:
# problem93.c:8:     if ((a + b == c) || (a + c == b) || (b + c == a)) return 1;
	movss	-4(%rbp), %xmm0	# a, tmp93
	addss	-8(%rbp), %xmm0	# b, _4
# problem93.c:8:     if ((a + b == c) || (a + c == b) || (b + c == a)) return 1;
	ucomiss	-12(%rbp), %xmm0	# c, _4
	jp	.L17	#,
	ucomiss	-12(%rbp), %xmm0	# c, _4
	je	.L9	#,
.L17:
# problem93.c:8:     if ((a + b == c) || (a + c == b) || (b + c == a)) return 1;
	movss	-4(%rbp), %xmm0	# a, tmp94
	addss	-12(%rbp), %xmm0	# c, _5
# problem93.c:8:     if ((a + b == c) || (a + c == b) || (b + c == a)) return 1;
	ucomiss	-8(%rbp), %xmm0	# b, _5
	jp	.L18	#,
	ucomiss	-8(%rbp), %xmm0	# b, _5
	je	.L9	#,
.L18:
# problem93.c:8:     if ((a + b == c) || (a + c == b) || (b + c == a)) return 1;
	movss	-8(%rbp), %xmm0	# b, tmp95
	addss	-12(%rbp), %xmm0	# c, _6
# problem93.c:8:     if ((a + b == c) || (a + c == b) || (b + c == a)) return 1;
	ucomiss	-4(%rbp), %xmm0	# a, _6
	jp	.L12	#,
	ucomiss	-4(%rbp), %xmm0	# a, _6
	jne	.L12	#,
.L9:
# problem93.c:8:     if ((a + b == c) || (a + c == b) || (b + c == a)) return 1;
	movl	$1, %eax	#, _7
	jmp	.L4	#
.L12:
# problem93.c:9:     return 0;
	movl	$0, %eax	#, _7
.L4:
# problem93.c:10: }
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE0:
	.size	func0, .-func0
	.section	.rodata
.LC3:
	.string	"problem93.c"
.LC4:
	.string	"func0(2, 3, 1) == 1"
.LC6:
	.string	"func0(2.5, 2, 3) == 0"
.LC10:
	.string	"func0(1.5, 5, 3.5) == 0"
.LC12:
	.string	"func0(2, 6, 2) == 0"
.LC14:
	.string	"func0(4, 2, 2) == 1"
.LC16:
	.string	"func0(2.2, 2.2, 2.2) == 0"
.LC18:
	.string	"func0(-4, 6, 2) == 1"
.LC19:
	.string	"func0(2, 1, 1) == 1"
.LC21:
	.string	"func0(3, 4, 7) == 1"
.LC23:
	.string	"func0(3.01, 4, 7) == 0"
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
# problem93.c:17:     assert(func0(2, 3, 1) == 1);
	movss	.LC0(%rip), %xmm2	#,
	movss	.LC1(%rip), %xmm1	#,
	movl	.LC2(%rip), %eax	#, tmp94
	movd	%eax, %xmm0	# tmp94,
	call	func0	#
	cmpl	$1, %eax	#, _1
	je	.L20	#,
# problem93.c:17:     assert(func0(2, 3, 1) == 1);
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp95
	movq	%rax, %rcx	# tmp95,
	movl	$17, %edx	#,
	leaq	.LC3(%rip), %rax	#, tmp96
	movq	%rax, %rsi	# tmp96,
	leaq	.LC4(%rip), %rax	#, tmp97
	movq	%rax, %rdi	# tmp97,
	call	__assert_fail@PLT	#
.L20:
# problem93.c:18:     assert(func0(2.5, 2, 3) == 0);
	movss	.LC1(%rip), %xmm2	#,
	movss	.LC2(%rip), %xmm1	#,
	movl	.LC5(%rip), %eax	#, tmp98
	movd	%eax, %xmm0	# tmp98,
	call	func0	#
	testl	%eax, %eax	# _2
	je	.L21	#,
# problem93.c:18:     assert(func0(2.5, 2, 3) == 0);
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp99
	movq	%rax, %rcx	# tmp99,
	movl	$18, %edx	#,
	leaq	.LC3(%rip), %rax	#, tmp100
	movq	%rax, %rsi	# tmp100,
	leaq	.LC6(%rip), %rax	#, tmp101
	movq	%rax, %rdi	# tmp101,
	call	__assert_fail@PLT	#
.L21:
# problem93.c:19:     assert(func0(1.5, 5, 3.5) == 0);
	movss	.LC7(%rip), %xmm2	#,
	movss	.LC8(%rip), %xmm1	#,
	movl	.LC9(%rip), %eax	#, tmp102
	movd	%eax, %xmm0	# tmp102,
	call	func0	#
	testl	%eax, %eax	# _3
	je	.L22	#,
# problem93.c:19:     assert(func0(1.5, 5, 3.5) == 0);
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp103
	movq	%rax, %rcx	# tmp103,
	movl	$19, %edx	#,
	leaq	.LC3(%rip), %rax	#, tmp104
	movq	%rax, %rsi	# tmp104,
	leaq	.LC10(%rip), %rax	#, tmp105
	movq	%rax, %rdi	# tmp105,
	call	__assert_fail@PLT	#
.L22:
# problem93.c:20:     assert(func0(2, 6, 2) == 0);
	movss	.LC2(%rip), %xmm2	#,
	movss	.LC11(%rip), %xmm1	#,
	movl	.LC2(%rip), %eax	#, tmp106
	movd	%eax, %xmm0	# tmp106,
	call	func0	#
	testl	%eax, %eax	# _4
	je	.L23	#,
# problem93.c:20:     assert(func0(2, 6, 2) == 0);
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp107
	movq	%rax, %rcx	# tmp107,
	movl	$20, %edx	#,
	leaq	.LC3(%rip), %rax	#, tmp108
	movq	%rax, %rsi	# tmp108,
	leaq	.LC12(%rip), %rax	#, tmp109
	movq	%rax, %rdi	# tmp109,
	call	__assert_fail@PLT	#
.L23:
# problem93.c:21:     assert(func0(4, 2, 2) == 1);
	movss	.LC2(%rip), %xmm2	#,
	movss	.LC2(%rip), %xmm1	#,
	movl	.LC13(%rip), %eax	#, tmp110
	movd	%eax, %xmm0	# tmp110,
	call	func0	#
	cmpl	$1, %eax	#, _5
	je	.L24	#,
# problem93.c:21:     assert(func0(4, 2, 2) == 1);
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp111
	movq	%rax, %rcx	# tmp111,
	movl	$21, %edx	#,
	leaq	.LC3(%rip), %rax	#, tmp112
	movq	%rax, %rsi	# tmp112,
	leaq	.LC14(%rip), %rax	#, tmp113
	movq	%rax, %rdi	# tmp113,
	call	__assert_fail@PLT	#
.L24:
# problem93.c:22:     assert(func0(2.2, 2.2, 2.2) == 0);
	movss	.LC15(%rip), %xmm2	#,
	movss	.LC15(%rip), %xmm1	#,
	movl	.LC15(%rip), %eax	#, tmp114
	movd	%eax, %xmm0	# tmp114,
	call	func0	#
	testl	%eax, %eax	# _6
	je	.L25	#,
# problem93.c:22:     assert(func0(2.2, 2.2, 2.2) == 0);
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp115
	movq	%rax, %rcx	# tmp115,
	movl	$22, %edx	#,
	leaq	.LC3(%rip), %rax	#, tmp116
	movq	%rax, %rsi	# tmp116,
	leaq	.LC16(%rip), %rax	#, tmp117
	movq	%rax, %rdi	# tmp117,
	call	__assert_fail@PLT	#
.L25:
# problem93.c:23:     assert(func0(-4, 6, 2) == 1);
	movss	.LC2(%rip), %xmm2	#,
	movss	.LC11(%rip), %xmm1	#,
	movl	.LC17(%rip), %eax	#, tmp118
	movd	%eax, %xmm0	# tmp118,
	call	func0	#
	cmpl	$1, %eax	#, _7
	je	.L26	#,
# problem93.c:23:     assert(func0(-4, 6, 2) == 1);
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp119
	movq	%rax, %rcx	# tmp119,
	movl	$23, %edx	#,
	leaq	.LC3(%rip), %rax	#, tmp120
	movq	%rax, %rsi	# tmp120,
	leaq	.LC18(%rip), %rax	#, tmp121
	movq	%rax, %rdi	# tmp121,
	call	__assert_fail@PLT	#
.L26:
# problem93.c:24:     assert(func0(2, 1, 1) == 1);
	movss	.LC0(%rip), %xmm2	#,
	movss	.LC0(%rip), %xmm1	#,
	movl	.LC2(%rip), %eax	#, tmp122
	movd	%eax, %xmm0	# tmp122,
	call	func0	#
	cmpl	$1, %eax	#, _8
	je	.L27	#,
# problem93.c:24:     assert(func0(2, 1, 1) == 1);
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp123
	movq	%rax, %rcx	# tmp123,
	movl	$24, %edx	#,
	leaq	.LC3(%rip), %rax	#, tmp124
	movq	%rax, %rsi	# tmp124,
	leaq	.LC19(%rip), %rax	#, tmp125
	movq	%rax, %rdi	# tmp125,
	call	__assert_fail@PLT	#
.L27:
# problem93.c:25:     assert(func0(3, 4, 7) == 1);
	movss	.LC20(%rip), %xmm2	#,
	movss	.LC13(%rip), %xmm1	#,
	movl	.LC1(%rip), %eax	#, tmp126
	movd	%eax, %xmm0	# tmp126,
	call	func0	#
	cmpl	$1, %eax	#, _9
	je	.L28	#,
# problem93.c:25:     assert(func0(3, 4, 7) == 1);
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp127
	movq	%rax, %rcx	# tmp127,
	movl	$25, %edx	#,
	leaq	.LC3(%rip), %rax	#, tmp128
	movq	%rax, %rsi	# tmp128,
	leaq	.LC21(%rip), %rax	#, tmp129
	movq	%rax, %rdi	# tmp129,
	call	__assert_fail@PLT	#
.L28:
# problem93.c:26:     assert(func0(3.01, 4, 7) == 0);
	movss	.LC20(%rip), %xmm2	#,
	movss	.LC13(%rip), %xmm1	#,
	movl	.LC22(%rip), %eax	#, tmp130
	movd	%eax, %xmm0	# tmp130,
	call	func0	#
	testl	%eax, %eax	# _10
	je	.L29	#,
# problem93.c:26:     assert(func0(3.01, 4, 7) == 0);
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp131
	movq	%rax, %rcx	# tmp131,
	movl	$26, %edx	#,
	leaq	.LC3(%rip), %rax	#, tmp132
	movq	%rax, %rsi	# tmp132,
	leaq	.LC23(%rip), %rax	#, tmp133
	movq	%rax, %rdi	# tmp133,
	call	__assert_fail@PLT	#
.L29:
# problem93.c:28:     return 0;
	movl	$0, %eax	#, _32
# problem93.c:29: }
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
	.long	1065353216
	.align 4
.LC1:
	.long	1077936128
	.align 4
.LC2:
	.long	1073741824
	.align 4
.LC5:
	.long	1075838976
	.align 4
.LC7:
	.long	1080033280
	.align 4
.LC8:
	.long	1084227584
	.align 4
.LC9:
	.long	1069547520
	.align 4
.LC11:
	.long	1086324736
	.align 4
.LC13:
	.long	1082130432
	.align 4
.LC15:
	.long	1074580685
	.align 4
.LC17:
	.long	-1065353216
	.align 4
.LC20:
	.long	1088421888
	.align 4
.LC22:
	.long	1077978071
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
