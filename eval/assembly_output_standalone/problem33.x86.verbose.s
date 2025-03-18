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
	movq	%rdi, -56(%rbp)	# xs, xs
	movl	%esi, -60(%rbp)	# size, size
# eval/problem33//code.c:5:     double ans = 0.0;
	pxor	%xmm0, %xmm0	# tmp103
	movsd	%xmm0, -32(%rbp)	# tmp103, ans
# eval/problem33//code.c:9:     value = xs[0];
	movq	-56(%rbp), %rax	# xs, tmp104
	movsd	(%rax), %xmm0	# *xs_36(D), tmp105
	movsd	%xmm0, -24(%rbp)	# tmp105, value
# eval/problem33//code.c:10:     for (i = 1; i < size; i++) {
	movl	$1, -48(%rbp)	#, i
# eval/problem33//code.c:10:     for (i = 1; i < size; i++) {
	jmp	.L2	#
.L5:
# eval/problem33//code.c:11:         x_pow = 1.0;
	movsd	.LC1(%rip), %xmm0	#, tmp106
	movsd	%xmm0, -8(%rbp)	# tmp106, x_pow
# eval/problem33//code.c:12:         for (int j = 0; j < i; j++) {
	movl	$0, -44(%rbp)	#, j
# eval/problem33//code.c:12:         for (int j = 0; j < i; j++) {
	jmp	.L3	#
.L4:
# eval/problem33//code.c:13:             x_pow *= ans;
	movsd	-8(%rbp), %xmm0	# x_pow, tmp108
	mulsd	-32(%rbp), %xmm0	# ans, tmp107
	movsd	%xmm0, -8(%rbp)	# tmp107, x_pow
# eval/problem33//code.c:12:         for (int j = 0; j < i; j++) {
	addl	$1, -44(%rbp)	#, j
.L3:
# eval/problem33//code.c:12:         for (int j = 0; j < i; j++) {
	movl	-44(%rbp), %eax	# j, tmp109
	cmpl	-48(%rbp), %eax	# i, tmp109
	jl	.L4	#,
# eval/problem33//code.c:15:         value += xs[i] * x_pow;
	movl	-48(%rbp), %eax	# i, tmp110
	cltq
	leaq	0(,%rax,8), %rdx	#, _2
	movq	-56(%rbp), %rax	# xs, tmp111
	addq	%rdx, %rax	# _2, _3
	movsd	(%rax), %xmm0	# *_3, _4
# eval/problem33//code.c:15:         value += xs[i] * x_pow;
	mulsd	-8(%rbp), %xmm0	# x_pow, _5
# eval/problem33//code.c:15:         value += xs[i] * x_pow;
	movsd	-24(%rbp), %xmm1	# value, tmp113
	addsd	%xmm1, %xmm0	# tmp113, tmp112
	movsd	%xmm0, -24(%rbp)	# tmp112, value
# eval/problem33//code.c:10:     for (i = 1; i < size; i++) {
	addl	$1, -48(%rbp)	#, i
.L2:
# eval/problem33//code.c:10:     for (i = 1; i < size; i++) {
	movl	-48(%rbp), %eax	# i, tmp114
	cmpl	-60(%rbp), %eax	# size, tmp114
	jl	.L5	#,
# eval/problem33//code.c:18:     while (fabs(value) > 1e-6) {
	jmp	.L6	#
.L15:
# eval/problem33//code.c:19:         driv = 0.0;
	pxor	%xmm0, %xmm0	# tmp115
	movsd	%xmm0, -16(%rbp)	# tmp115, driv
# eval/problem33//code.c:20:         for (i = 1; i < size; i++) {
	movl	$1, -48(%rbp)	#, i
# eval/problem33//code.c:20:         for (i = 1; i < size; i++) {
	jmp	.L7	#
.L10:
# eval/problem33//code.c:21:             x_pow = 1.0;
	movsd	.LC1(%rip), %xmm0	#, tmp116
	movsd	%xmm0, -8(%rbp)	# tmp116, x_pow
# eval/problem33//code.c:22:             for (int j = 1; j < i; j++) {
	movl	$1, -40(%rbp)	#, j
# eval/problem33//code.c:22:             for (int j = 1; j < i; j++) {
	jmp	.L8	#
.L9:
# eval/problem33//code.c:23:                 x_pow *= ans;
	movsd	-8(%rbp), %xmm0	# x_pow, tmp118
	mulsd	-32(%rbp), %xmm0	# ans, tmp117
	movsd	%xmm0, -8(%rbp)	# tmp117, x_pow
# eval/problem33//code.c:22:             for (int j = 1; j < i; j++) {
	addl	$1, -40(%rbp)	#, j
.L8:
# eval/problem33//code.c:22:             for (int j = 1; j < i; j++) {
	movl	-40(%rbp), %eax	# j, tmp119
	cmpl	-48(%rbp), %eax	# i, tmp119
	jl	.L9	#,
# eval/problem33//code.c:25:             driv += i * xs[i] * x_pow;
	pxor	%xmm1, %xmm1	# _6
	cvtsi2sdl	-48(%rbp), %xmm1	# i, _6
# eval/problem33//code.c:25:             driv += i * xs[i] * x_pow;
	movl	-48(%rbp), %eax	# i, tmp120
	cltq
	leaq	0(,%rax,8), %rdx	#, _8
	movq	-56(%rbp), %rax	# xs, tmp121
	addq	%rdx, %rax	# _8, _9
	movsd	(%rax), %xmm0	# *_9, _10
# eval/problem33//code.c:25:             driv += i * xs[i] * x_pow;
	mulsd	%xmm1, %xmm0	# _6, _11
# eval/problem33//code.c:25:             driv += i * xs[i] * x_pow;
	mulsd	-8(%rbp), %xmm0	# x_pow, _12
# eval/problem33//code.c:25:             driv += i * xs[i] * x_pow;
	movsd	-16(%rbp), %xmm1	# driv, tmp123
	addsd	%xmm1, %xmm0	# tmp123, tmp122
	movsd	%xmm0, -16(%rbp)	# tmp122, driv
# eval/problem33//code.c:20:         for (i = 1; i < size; i++) {
	addl	$1, -48(%rbp)	#, i
.L7:
# eval/problem33//code.c:20:         for (i = 1; i < size; i++) {
	movl	-48(%rbp), %eax	# i, tmp124
	cmpl	-60(%rbp), %eax	# size, tmp124
	jl	.L10	#,
# eval/problem33//code.c:27:         ans = ans - value / driv;
	movsd	-24(%rbp), %xmm0	# value, tmp125
	movapd	%xmm0, %xmm1	# tmp125, tmp125
	divsd	-16(%rbp), %xmm1	# driv, tmp125
# eval/problem33//code.c:27:         ans = ans - value / driv;
	movsd	-32(%rbp), %xmm0	# ans, tmp127
	subsd	%xmm1, %xmm0	# _13, tmp126
	movsd	%xmm0, -32(%rbp)	# tmp126, ans
# eval/problem33//code.c:29:         value = xs[0];
	movq	-56(%rbp), %rax	# xs, tmp128
	movsd	(%rax), %xmm0	# *xs_36(D), tmp129
	movsd	%xmm0, -24(%rbp)	# tmp129, value
# eval/problem33//code.c:30:         for (i = 1; i < size; i++) {
	movl	$1, -48(%rbp)	#, i
# eval/problem33//code.c:30:         for (i = 1; i < size; i++) {
	jmp	.L11	#
.L14:
# eval/problem33//code.c:31:             x_pow = 1.0;
	movsd	.LC1(%rip), %xmm0	#, tmp130
	movsd	%xmm0, -8(%rbp)	# tmp130, x_pow
# eval/problem33//code.c:32:             for (int j = 0; j < i; j++) {
	movl	$0, -36(%rbp)	#, j
# eval/problem33//code.c:32:             for (int j = 0; j < i; j++) {
	jmp	.L12	#
.L13:
# eval/problem33//code.c:33:                 x_pow *= ans;
	movsd	-8(%rbp), %xmm0	# x_pow, tmp132
	mulsd	-32(%rbp), %xmm0	# ans, tmp131
	movsd	%xmm0, -8(%rbp)	# tmp131, x_pow
# eval/problem33//code.c:32:             for (int j = 0; j < i; j++) {
	addl	$1, -36(%rbp)	#, j
.L12:
# eval/problem33//code.c:32:             for (int j = 0; j < i; j++) {
	movl	-36(%rbp), %eax	# j, tmp133
	cmpl	-48(%rbp), %eax	# i, tmp133
	jl	.L13	#,
# eval/problem33//code.c:35:             value += xs[i] * x_pow;
	movl	-48(%rbp), %eax	# i, tmp134
	cltq
	leaq	0(,%rax,8), %rdx	#, _15
	movq	-56(%rbp), %rax	# xs, tmp135
	addq	%rdx, %rax	# _15, _16
	movsd	(%rax), %xmm0	# *_16, _17
# eval/problem33//code.c:35:             value += xs[i] * x_pow;
	mulsd	-8(%rbp), %xmm0	# x_pow, _18
# eval/problem33//code.c:35:             value += xs[i] * x_pow;
	movsd	-24(%rbp), %xmm1	# value, tmp137
	addsd	%xmm1, %xmm0	# tmp137, tmp136
	movsd	%xmm0, -24(%rbp)	# tmp136, value
# eval/problem33//code.c:30:         for (i = 1; i < size; i++) {
	addl	$1, -48(%rbp)	#, i
.L11:
# eval/problem33//code.c:30:         for (i = 1; i < size; i++) {
	movl	-48(%rbp), %eax	# i, tmp138
	cmpl	-60(%rbp), %eax	# size, tmp138
	jl	.L14	#,
.L6:
# eval/problem33//code.c:18:     while (fabs(value) > 1e-6) {
	movsd	-24(%rbp), %xmm0	# value, tmp139
	movq	.LC2(%rip), %xmm1	#, tmp140
	andpd	%xmm1, %xmm0	# tmp140, _19
# eval/problem33//code.c:18:     while (fabs(value) > 1e-6) {
	comisd	.LC3(%rip), %xmm0	#, _19
	ja	.L15	#,
# eval/problem33//code.c:39:     return ans;
	movsd	-32(%rbp), %xmm0	# ans, _40
# eval/problem33//code.c:40: }
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE0:
	.size	func0, .-func0
	.section	.rodata
	.align 8
.LC1:
	.long	0
	.long	1072693248
	.align 16
.LC2:
	.long	-1
	.long	2147483647
	.long	0
	.long	0
	.align 8
.LC3:
	.long	-1598689907
	.long	1051772663
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
