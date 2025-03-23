	.file	"problem72.c"
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
	subq	$32, %rsp	#,
	movss	%xmm0, -20(%rbp)	# a, a
	movss	%xmm1, -24(%rbp)	# b, b
	movss	%xmm2, -28(%rbp)	# c, c
# problem72.c:5: if (a + b <= c || a + c <= b || b + c <= a) return -1;
	movss	-20(%rbp), %xmm0	# a, tmp97
	movaps	%xmm0, %xmm1	# tmp97, tmp97
	addss	-24(%rbp), %xmm1	# b, tmp97
# problem72.c:5: if (a + b <= c || a + c <= b || b + c <= a) return -1;
	movss	-28(%rbp), %xmm0	# c, tmp98
	comiss	%xmm1, %xmm0	# _1, tmp98
	jnb	.L2	#,
# problem72.c:5: if (a + b <= c || a + c <= b || b + c <= a) return -1;
	movss	-20(%rbp), %xmm0	# a, tmp99
	movaps	%xmm0, %xmm1	# tmp99, tmp99
	addss	-28(%rbp), %xmm1	# c, tmp99
# problem72.c:5: if (a + b <= c || a + c <= b || b + c <= a) return -1;
	movss	-24(%rbp), %xmm0	# b, tmp100
	comiss	%xmm1, %xmm0	# _2, tmp100
	jnb	.L2	#,
# problem72.c:5: if (a + b <= c || a + c <= b || b + c <= a) return -1;
	movss	-24(%rbp), %xmm0	# b, tmp101
	movaps	%xmm0, %xmm1	# tmp101, tmp101
	addss	-28(%rbp), %xmm1	# c, tmp101
# problem72.c:5: if (a + b <= c || a + c <= b || b + c <= a) return -1;
	movss	-20(%rbp), %xmm0	# a, tmp102
	comiss	%xmm1, %xmm0	# _3, tmp102
	jb	.L6	#,
.L2:
# problem72.c:5: if (a + b <= c || a + c <= b || b + c <= a) return -1;
	movss	.LC0(%rip), %xmm0	#, _14
# problem72.c:5: if (a + b <= c || a + c <= b || b + c <= a) return -1;
	jmp	.L5	#
.L6:
# problem72.c:6: float s = (a + b + c) / 2;
	movss	-20(%rbp), %xmm0	# a, tmp103
	addss	-24(%rbp), %xmm0	# b, _4
# problem72.c:6: float s = (a + b + c) / 2;
	addss	-28(%rbp), %xmm0	# c, _5
# problem72.c:6: float s = (a + b + c) / 2;
	movss	.LC1(%rip), %xmm1	#, tmp105
	divss	%xmm1, %xmm0	# tmp105, tmp104
	movss	%xmm0, -8(%rbp)	# tmp104, s
# problem72.c:7: float area = sqrtf(s * (s - a) * (s - b) * (s - c));
	movss	-8(%rbp), %xmm0	# s, tmp106
	subss	-20(%rbp), %xmm0	# a, _6
# problem72.c:7: float area = sqrtf(s * (s - a) * (s - b) * (s - c));
	movaps	%xmm0, %xmm1	# _6, _6
	mulss	-8(%rbp), %xmm1	# s, _6
# problem72.c:7: float area = sqrtf(s * (s - a) * (s - b) * (s - c));
	movss	-8(%rbp), %xmm0	# s, tmp107
	subss	-24(%rbp), %xmm0	# b, _8
# problem72.c:7: float area = sqrtf(s * (s - a) * (s - b) * (s - c));
	mulss	%xmm0, %xmm1	# _8, _9
# problem72.c:7: float area = sqrtf(s * (s - a) * (s - b) * (s - c));
	movss	-8(%rbp), %xmm0	# s, tmp108
	subss	-28(%rbp), %xmm0	# c, _10
# problem72.c:7: float area = sqrtf(s * (s - a) * (s - b) * (s - c));
	mulss	%xmm0, %xmm1	# _10, _9
	movd	%xmm1, %eax	# _9, _11
	movd	%eax, %xmm0	# _11,
	call	sqrtf@PLT	#
	movd	%xmm0, %eax	#, tmp109
	movl	%eax, -4(%rbp)	# tmp109, area
# problem72.c:8: return roundf(area * 100) / 100;
	movss	-4(%rbp), %xmm1	# area, tmp110
	movss	.LC2(%rip), %xmm0	#, tmp111
	mulss	%xmm0, %xmm1	# tmp111, tmp110
	movd	%xmm1, %eax	# tmp110, _12
	movd	%eax, %xmm0	# _12,
	call	roundf@PLT	#
	movd	%xmm0, %eax	#, _13
# problem72.c:8: return roundf(area * 100) / 100;
	movss	.LC2(%rip), %xmm1	#, tmp112
	movd	%eax, %xmm0	# _13, _13
	divss	%xmm1, %xmm0	# tmp112, _13
.L5:
# problem72.c:9: }
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE0:
	.size	func0, .-func0
	.section	.rodata
.LC9:
	.string	"problem72.c"
	.align 8
.LC10:
	.string	"fabs(func0(3, 4, 5) - 6.00) < 0.01"
	.align 8
.LC14:
	.string	"fabs(func0(1, 2, 10) + 1) < 0.01"
	.align 8
.LC17:
	.string	"fabs(func0(4, 8, 5) - 8.18) < 0.01"
	.align 8
.LC19:
	.string	"fabs(func0(2, 2, 2) - 1.73) < 0.01"
	.align 8
.LC20:
	.string	"fabs(func0(1, 2, 3) + 1) < 0.01"
	.align 8
.LC23:
	.string	"fabs(func0(10, 5, 7) - 16.25) < 0.01"
	.align 8
.LC25:
	.string	"fabs(func0(2, 6, 3) + 1) < 0.01"
	.align 8
.LC27:
	.string	"fabs(func0(1, 1, 1) - 0.43) < 0.01"
	.align 8
.LC28:
	.string	"fabs(func0(2, 2, 10) + 1) < 0.01"
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
# problem72.c:18:     assert(fabs(func0(3, 4, 5) - 6.00) < 0.01);
	movss	.LC3(%rip), %xmm2	#,
	movss	.LC4(%rip), %xmm1	#,
	movl	.LC5(%rip), %eax	#, tmp120
	movd	%eax, %xmm0	# tmp120,
	call	func0	#
# problem72.c:18:     assert(fabs(func0(3, 4, 5) - 6.00) < 0.01);
	cvtss2sd	%xmm0, %xmm0	# _1, _2
	movsd	.LC6(%rip), %xmm1	#, tmp121
	subsd	%xmm1, %xmm0	# tmp121, _3
	movq	.LC7(%rip), %xmm1	#, tmp122
	andpd	%xmm0, %xmm1	# _3, _4
	movsd	.LC8(%rip), %xmm0	#, tmp123
	comisd	%xmm1, %xmm0	# _4, tmp123
	ja	.L8	#,
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp124
	movq	%rax, %rcx	# tmp124,
	movl	$18, %edx	#,
	leaq	.LC9(%rip), %rax	#, tmp125
	movq	%rax, %rsi	# tmp125,
	leaq	.LC10(%rip), %rax	#, tmp126
	movq	%rax, %rdi	# tmp126,
	call	__assert_fail@PLT	#
.L8:
# problem72.c:19:     assert(fabs(func0(1, 2, 10) + 1) < 0.01);
	movss	.LC11(%rip), %xmm2	#,
	movss	.LC1(%rip), %xmm1	#,
	movl	.LC12(%rip), %eax	#, tmp127
	movd	%eax, %xmm0	# tmp127,
	call	func0	#
# problem72.c:19:     assert(fabs(func0(1, 2, 10) + 1) < 0.01);
	movss	.LC12(%rip), %xmm1	#, tmp128
	addss	%xmm1, %xmm0	# tmp128, _6
	movss	.LC13(%rip), %xmm1	#, tmp129
	andps	%xmm1, %xmm0	# tmp129, _7
	pxor	%xmm1, %xmm1	# _8
	cvtss2sd	%xmm0, %xmm1	# _7, _8
	movsd	.LC8(%rip), %xmm0	#, tmp130
	comisd	%xmm1, %xmm0	# _8, tmp130
	ja	.L9	#,
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp131
	movq	%rax, %rcx	# tmp131,
	movl	$19, %edx	#,
	leaq	.LC9(%rip), %rax	#, tmp132
	movq	%rax, %rsi	# tmp132,
	leaq	.LC14(%rip), %rax	#, tmp133
	movq	%rax, %rdi	# tmp133,
	call	__assert_fail@PLT	#
.L9:
# problem72.c:20:     assert(fabs(func0(4, 8, 5) - 8.18) < 0.01);
	movss	.LC3(%rip), %xmm2	#,
	movss	.LC15(%rip), %xmm1	#,
	movl	.LC4(%rip), %eax	#, tmp134
	movd	%eax, %xmm0	# tmp134,
	call	func0	#
# problem72.c:20:     assert(fabs(func0(4, 8, 5) - 8.18) < 0.01);
	cvtss2sd	%xmm0, %xmm0	# _9, _10
	movsd	.LC16(%rip), %xmm1	#, tmp135
	subsd	%xmm1, %xmm0	# tmp135, _11
	movq	.LC7(%rip), %xmm1	#, tmp136
	andpd	%xmm0, %xmm1	# _11, _12
	movsd	.LC8(%rip), %xmm0	#, tmp137
	comisd	%xmm1, %xmm0	# _12, tmp137
	ja	.L10	#,
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp138
	movq	%rax, %rcx	# tmp138,
	movl	$20, %edx	#,
	leaq	.LC9(%rip), %rax	#, tmp139
	movq	%rax, %rsi	# tmp139,
	leaq	.LC17(%rip), %rax	#, tmp140
	movq	%rax, %rdi	# tmp140,
	call	__assert_fail@PLT	#
.L10:
# problem72.c:21:     assert(fabs(func0(2, 2, 2) - 1.73) < 0.01);
	movss	.LC1(%rip), %xmm2	#,
	movss	.LC1(%rip), %xmm1	#,
	movl	.LC1(%rip), %eax	#, tmp141
	movd	%eax, %xmm0	# tmp141,
	call	func0	#
# problem72.c:21:     assert(fabs(func0(2, 2, 2) - 1.73) < 0.01);
	cvtss2sd	%xmm0, %xmm0	# _13, _14
	movsd	.LC18(%rip), %xmm1	#, tmp142
	subsd	%xmm1, %xmm0	# tmp142, _15
	movq	.LC7(%rip), %xmm1	#, tmp143
	andpd	%xmm0, %xmm1	# _15, _16
	movsd	.LC8(%rip), %xmm0	#, tmp144
	comisd	%xmm1, %xmm0	# _16, tmp144
	ja	.L11	#,
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp145
	movq	%rax, %rcx	# tmp145,
	movl	$21, %edx	#,
	leaq	.LC9(%rip), %rax	#, tmp146
	movq	%rax, %rsi	# tmp146,
	leaq	.LC19(%rip), %rax	#, tmp147
	movq	%rax, %rdi	# tmp147,
	call	__assert_fail@PLT	#
.L11:
# problem72.c:22:     assert(fabs(func0(1, 2, 3) + 1) < 0.01);
	movss	.LC5(%rip), %xmm2	#,
	movss	.LC1(%rip), %xmm1	#,
	movl	.LC12(%rip), %eax	#, tmp148
	movd	%eax, %xmm0	# tmp148,
	call	func0	#
# problem72.c:22:     assert(fabs(func0(1, 2, 3) + 1) < 0.01);
	movss	.LC12(%rip), %xmm1	#, tmp149
	addss	%xmm1, %xmm0	# tmp149, _18
	movss	.LC13(%rip), %xmm1	#, tmp150
	andps	%xmm1, %xmm0	# tmp150, _19
	pxor	%xmm1, %xmm1	# _20
	cvtss2sd	%xmm0, %xmm1	# _19, _20
	movsd	.LC8(%rip), %xmm0	#, tmp151
	comisd	%xmm1, %xmm0	# _20, tmp151
	ja	.L12	#,
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp152
	movq	%rax, %rcx	# tmp152,
	movl	$22, %edx	#,
	leaq	.LC9(%rip), %rax	#, tmp153
	movq	%rax, %rsi	# tmp153,
	leaq	.LC20(%rip), %rax	#, tmp154
	movq	%rax, %rdi	# tmp154,
	call	__assert_fail@PLT	#
.L12:
# problem72.c:23:     assert(fabs(func0(10, 5, 7) - 16.25) < 0.01);
	movss	.LC21(%rip), %xmm2	#,
	movss	.LC3(%rip), %xmm1	#,
	movl	.LC11(%rip), %eax	#, tmp155
	movd	%eax, %xmm0	# tmp155,
	call	func0	#
# problem72.c:23:     assert(fabs(func0(10, 5, 7) - 16.25) < 0.01);
	cvtss2sd	%xmm0, %xmm0	# _21, _22
	movsd	.LC22(%rip), %xmm1	#, tmp156
	subsd	%xmm1, %xmm0	# tmp156, _23
	movq	.LC7(%rip), %xmm1	#, tmp157
	andpd	%xmm0, %xmm1	# _23, _24
	movsd	.LC8(%rip), %xmm0	#, tmp158
	comisd	%xmm1, %xmm0	# _24, tmp158
	ja	.L13	#,
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp159
	movq	%rax, %rcx	# tmp159,
	movl	$23, %edx	#,
	leaq	.LC9(%rip), %rax	#, tmp160
	movq	%rax, %rsi	# tmp160,
	leaq	.LC23(%rip), %rax	#, tmp161
	movq	%rax, %rdi	# tmp161,
	call	__assert_fail@PLT	#
.L13:
# problem72.c:24:     assert(fabs(func0(2, 6, 3) + 1) < 0.01);
	movss	.LC5(%rip), %xmm2	#,
	movss	.LC24(%rip), %xmm1	#,
	movl	.LC1(%rip), %eax	#, tmp162
	movd	%eax, %xmm0	# tmp162,
	call	func0	#
# problem72.c:24:     assert(fabs(func0(2, 6, 3) + 1) < 0.01);
	movss	.LC12(%rip), %xmm1	#, tmp163
	addss	%xmm1, %xmm0	# tmp163, _26
	movss	.LC13(%rip), %xmm1	#, tmp164
	andps	%xmm1, %xmm0	# tmp164, _27
	pxor	%xmm1, %xmm1	# _28
	cvtss2sd	%xmm0, %xmm1	# _27, _28
	movsd	.LC8(%rip), %xmm0	#, tmp165
	comisd	%xmm1, %xmm0	# _28, tmp165
	ja	.L14	#,
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp166
	movq	%rax, %rcx	# tmp166,
	movl	$24, %edx	#,
	leaq	.LC9(%rip), %rax	#, tmp167
	movq	%rax, %rsi	# tmp167,
	leaq	.LC25(%rip), %rax	#, tmp168
	movq	%rax, %rdi	# tmp168,
	call	__assert_fail@PLT	#
.L14:
# problem72.c:25:     assert(fabs(func0(1, 1, 1) - 0.43) < 0.01);
	movss	.LC12(%rip), %xmm2	#,
	movss	.LC12(%rip), %xmm1	#,
	movl	.LC12(%rip), %eax	#, tmp169
	movd	%eax, %xmm0	# tmp169,
	call	func0	#
# problem72.c:25:     assert(fabs(func0(1, 1, 1) - 0.43) < 0.01);
	cvtss2sd	%xmm0, %xmm0	# _29, _30
	movsd	.LC26(%rip), %xmm1	#, tmp170
	subsd	%xmm1, %xmm0	# tmp170, _31
	movq	.LC7(%rip), %xmm1	#, tmp171
	andpd	%xmm0, %xmm1	# _31, _32
	movsd	.LC8(%rip), %xmm0	#, tmp172
	comisd	%xmm1, %xmm0	# _32, tmp172
	ja	.L15	#,
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp173
	movq	%rax, %rcx	# tmp173,
	movl	$25, %edx	#,
	leaq	.LC9(%rip), %rax	#, tmp174
	movq	%rax, %rsi	# tmp174,
	leaq	.LC27(%rip), %rax	#, tmp175
	movq	%rax, %rdi	# tmp175,
	call	__assert_fail@PLT	#
.L15:
# problem72.c:26:     assert(fabs(func0(2, 2, 10) + 1) < 0.01);
	movss	.LC11(%rip), %xmm2	#,
	movss	.LC1(%rip), %xmm1	#,
	movl	.LC1(%rip), %eax	#, tmp176
	movd	%eax, %xmm0	# tmp176,
	call	func0	#
# problem72.c:26:     assert(fabs(func0(2, 2, 10) + 1) < 0.01);
	movss	.LC12(%rip), %xmm1	#, tmp177
	addss	%xmm1, %xmm0	# tmp177, _34
	movss	.LC13(%rip), %xmm1	#, tmp178
	andps	%xmm1, %xmm0	# tmp178, _35
	pxor	%xmm1, %xmm1	# _36
	cvtss2sd	%xmm0, %xmm1	# _35, _36
	movsd	.LC8(%rip), %xmm0	#, tmp179
	comisd	%xmm1, %xmm0	# _36, tmp179
	ja	.L16	#,
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp180
	movq	%rax, %rcx	# tmp180,
	movl	$26, %edx	#,
	leaq	.LC9(%rip), %rax	#, tmp181
	movq	%rax, %rsi	# tmp181,
	leaq	.LC28(%rip), %rax	#, tmp182
	movq	%rax, %rdi	# tmp182,
	call	__assert_fail@PLT	#
.L16:
# problem72.c:28:     return 0;
	movl	$0, %eax	#, _56
# problem72.c:29: }
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
	.long	-1082130432
	.align 4
.LC1:
	.long	1073741824
	.align 4
.LC2:
	.long	1120403456
	.align 4
.LC3:
	.long	1084227584
	.align 4
.LC4:
	.long	1082130432
	.align 4
.LC5:
	.long	1077936128
	.align 8
.LC6:
	.long	0
	.long	1075314688
	.align 16
.LC7:
	.long	-1
	.long	2147483647
	.long	0
	.long	0
	.align 8
.LC8:
	.long	1202590843
	.long	1065646817
	.align 4
.LC11:
	.long	1092616192
	.align 4
.LC12:
	.long	1065353216
	.align 16
.LC13:
	.long	2147483647
	.long	0
	.long	0
	.long	0
	.align 4
.LC15:
	.long	1090519040
	.align 8
.LC16:
	.long	-171798692
	.long	1075862568
	.align 8
.LC18:
	.long	2061584302
	.long	1073458708
	.align 4
.LC21:
	.long	1088421888
	.align 8
.LC22:
	.long	0
	.long	1076903936
	.align 4
.LC24:
	.long	1086324736
	.align 8
.LC26:
	.long	-1202590843
	.long	1071351070
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
