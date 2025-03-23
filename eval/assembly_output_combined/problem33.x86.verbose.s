	.file	"problem33.c"
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
# problem33.c:5:     double ans = 0.0;
	pxor	%xmm0, %xmm0	# tmp103
	movsd	%xmm0, -32(%rbp)	# tmp103, ans
# problem33.c:9:     value = xs[0];
	movq	-56(%rbp), %rax	# xs, tmp104
	movsd	(%rax), %xmm0	# *xs_36(D), tmp105
	movsd	%xmm0, -24(%rbp)	# tmp105, value
# problem33.c:10:     for (i = 1; i < size; i++) {
	movl	$1, -48(%rbp)	#, i
# problem33.c:10:     for (i = 1; i < size; i++) {
	jmp	.L2	#
.L5:
# problem33.c:11:         x_pow = 1.0;
	movsd	.LC1(%rip), %xmm0	#, tmp106
	movsd	%xmm0, -8(%rbp)	# tmp106, x_pow
# problem33.c:12:         for (int j = 0; j < i; j++) {
	movl	$0, -44(%rbp)	#, j
# problem33.c:12:         for (int j = 0; j < i; j++) {
	jmp	.L3	#
.L4:
# problem33.c:13:             x_pow *= ans;
	movsd	-8(%rbp), %xmm0	# x_pow, tmp108
	mulsd	-32(%rbp), %xmm0	# ans, tmp107
	movsd	%xmm0, -8(%rbp)	# tmp107, x_pow
# problem33.c:12:         for (int j = 0; j < i; j++) {
	addl	$1, -44(%rbp)	#, j
.L3:
# problem33.c:12:         for (int j = 0; j < i; j++) {
	movl	-44(%rbp), %eax	# j, tmp109
	cmpl	-48(%rbp), %eax	# i, tmp109
	jl	.L4	#,
# problem33.c:15:         value += xs[i] * x_pow;
	movl	-48(%rbp), %eax	# i, tmp110
	cltq
	leaq	0(,%rax,8), %rdx	#, _2
	movq	-56(%rbp), %rax	# xs, tmp111
	addq	%rdx, %rax	# _2, _3
	movsd	(%rax), %xmm0	# *_3, _4
# problem33.c:15:         value += xs[i] * x_pow;
	mulsd	-8(%rbp), %xmm0	# x_pow, _5
# problem33.c:15:         value += xs[i] * x_pow;
	movsd	-24(%rbp), %xmm1	# value, tmp113
	addsd	%xmm1, %xmm0	# tmp113, tmp112
	movsd	%xmm0, -24(%rbp)	# tmp112, value
# problem33.c:10:     for (i = 1; i < size; i++) {
	addl	$1, -48(%rbp)	#, i
.L2:
# problem33.c:10:     for (i = 1; i < size; i++) {
	movl	-48(%rbp), %eax	# i, tmp114
	cmpl	-60(%rbp), %eax	# size, tmp114
	jl	.L5	#,
# problem33.c:18:     while (fabs(value) > 1e-6) {
	jmp	.L6	#
.L15:
# problem33.c:19:         driv = 0.0;
	pxor	%xmm0, %xmm0	# tmp115
	movsd	%xmm0, -16(%rbp)	# tmp115, driv
# problem33.c:20:         for (i = 1; i < size; i++) {
	movl	$1, -48(%rbp)	#, i
# problem33.c:20:         for (i = 1; i < size; i++) {
	jmp	.L7	#
.L10:
# problem33.c:21:             x_pow = 1.0;
	movsd	.LC1(%rip), %xmm0	#, tmp116
	movsd	%xmm0, -8(%rbp)	# tmp116, x_pow
# problem33.c:22:             for (int j = 1; j < i; j++) {
	movl	$1, -40(%rbp)	#, j
# problem33.c:22:             for (int j = 1; j < i; j++) {
	jmp	.L8	#
.L9:
# problem33.c:23:                 x_pow *= ans;
	movsd	-8(%rbp), %xmm0	# x_pow, tmp118
	mulsd	-32(%rbp), %xmm0	# ans, tmp117
	movsd	%xmm0, -8(%rbp)	# tmp117, x_pow
# problem33.c:22:             for (int j = 1; j < i; j++) {
	addl	$1, -40(%rbp)	#, j
.L8:
# problem33.c:22:             for (int j = 1; j < i; j++) {
	movl	-40(%rbp), %eax	# j, tmp119
	cmpl	-48(%rbp), %eax	# i, tmp119
	jl	.L9	#,
# problem33.c:25:             driv += i * xs[i] * x_pow;
	pxor	%xmm1, %xmm1	# _6
	cvtsi2sdl	-48(%rbp), %xmm1	# i, _6
# problem33.c:25:             driv += i * xs[i] * x_pow;
	movl	-48(%rbp), %eax	# i, tmp120
	cltq
	leaq	0(,%rax,8), %rdx	#, _8
	movq	-56(%rbp), %rax	# xs, tmp121
	addq	%rdx, %rax	# _8, _9
	movsd	(%rax), %xmm0	# *_9, _10
# problem33.c:25:             driv += i * xs[i] * x_pow;
	mulsd	%xmm1, %xmm0	# _6, _11
# problem33.c:25:             driv += i * xs[i] * x_pow;
	mulsd	-8(%rbp), %xmm0	# x_pow, _12
# problem33.c:25:             driv += i * xs[i] * x_pow;
	movsd	-16(%rbp), %xmm1	# driv, tmp123
	addsd	%xmm1, %xmm0	# tmp123, tmp122
	movsd	%xmm0, -16(%rbp)	# tmp122, driv
# problem33.c:20:         for (i = 1; i < size; i++) {
	addl	$1, -48(%rbp)	#, i
.L7:
# problem33.c:20:         for (i = 1; i < size; i++) {
	movl	-48(%rbp), %eax	# i, tmp124
	cmpl	-60(%rbp), %eax	# size, tmp124
	jl	.L10	#,
# problem33.c:27:         ans = ans - value / driv;
	movsd	-24(%rbp), %xmm0	# value, tmp125
	movapd	%xmm0, %xmm1	# tmp125, tmp125
	divsd	-16(%rbp), %xmm1	# driv, tmp125
# problem33.c:27:         ans = ans - value / driv;
	movsd	-32(%rbp), %xmm0	# ans, tmp127
	subsd	%xmm1, %xmm0	# _13, tmp126
	movsd	%xmm0, -32(%rbp)	# tmp126, ans
# problem33.c:29:         value = xs[0];
	movq	-56(%rbp), %rax	# xs, tmp128
	movsd	(%rax), %xmm0	# *xs_36(D), tmp129
	movsd	%xmm0, -24(%rbp)	# tmp129, value
# problem33.c:30:         for (i = 1; i < size; i++) {
	movl	$1, -48(%rbp)	#, i
# problem33.c:30:         for (i = 1; i < size; i++) {
	jmp	.L11	#
.L14:
# problem33.c:31:             x_pow = 1.0;
	movsd	.LC1(%rip), %xmm0	#, tmp130
	movsd	%xmm0, -8(%rbp)	# tmp130, x_pow
# problem33.c:32:             for (int j = 0; j < i; j++) {
	movl	$0, -36(%rbp)	#, j
# problem33.c:32:             for (int j = 0; j < i; j++) {
	jmp	.L12	#
.L13:
# problem33.c:33:                 x_pow *= ans;
	movsd	-8(%rbp), %xmm0	# x_pow, tmp132
	mulsd	-32(%rbp), %xmm0	# ans, tmp131
	movsd	%xmm0, -8(%rbp)	# tmp131, x_pow
# problem33.c:32:             for (int j = 0; j < i; j++) {
	addl	$1, -36(%rbp)	#, j
.L12:
# problem33.c:32:             for (int j = 0; j < i; j++) {
	movl	-36(%rbp), %eax	# j, tmp133
	cmpl	-48(%rbp), %eax	# i, tmp133
	jl	.L13	#,
# problem33.c:35:             value += xs[i] * x_pow;
	movl	-48(%rbp), %eax	# i, tmp134
	cltq
	leaq	0(,%rax,8), %rdx	#, _15
	movq	-56(%rbp), %rax	# xs, tmp135
	addq	%rdx, %rax	# _15, _16
	movsd	(%rax), %xmm0	# *_16, _17
# problem33.c:35:             value += xs[i] * x_pow;
	mulsd	-8(%rbp), %xmm0	# x_pow, _18
# problem33.c:35:             value += xs[i] * x_pow;
	movsd	-24(%rbp), %xmm1	# value, tmp137
	addsd	%xmm1, %xmm0	# tmp137, tmp136
	movsd	%xmm0, -24(%rbp)	# tmp136, value
# problem33.c:30:         for (i = 1; i < size; i++) {
	addl	$1, -48(%rbp)	#, i
.L11:
# problem33.c:30:         for (i = 1; i < size; i++) {
	movl	-48(%rbp), %eax	# i, tmp138
	cmpl	-60(%rbp), %eax	# size, tmp138
	jl	.L14	#,
.L6:
# problem33.c:18:     while (fabs(value) > 1e-6) {
	movsd	-24(%rbp), %xmm0	# value, tmp139
	movq	.LC2(%rip), %xmm1	#, tmp140
	andpd	%xmm1, %xmm0	# tmp140, _19
# problem33.c:18:     while (fabs(value) > 1e-6) {
	comisd	.LC3(%rip), %xmm0	#, _19
	ja	.L15	#,
# problem33.c:39:     return ans;
	movsd	-32(%rbp), %xmm0	# ans, _40
# problem33.c:40: }
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE0:
	.size	func0, .-func0
	.globl	evaluate_polynomial
	.type	evaluate_polynomial, @function
evaluate_polynomial:
.LFB7:
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -40(%rbp)	# coeffs, coeffs
	movl	%esi, -44(%rbp)	# size, size
	movsd	%xmm0, -56(%rbp)	# x, x
# problem33.c:50:     double result = 0.0;
	pxor	%xmm0, %xmm0	# tmp89
	movsd	%xmm0, -16(%rbp)	# tmp89, result
# problem33.c:51:     double term = 1.0; 
	movsd	.LC1(%rip), %xmm0	#, tmp90
	movsd	%xmm0, -8(%rbp)	# tmp90, term
# problem33.c:52:     for (int i = 0; i < size; i++) {
	movl	$0, -20(%rbp)	#, i
# problem33.c:52:     for (int i = 0; i < size; i++) {
	jmp	.L18	#
.L20:
# problem33.c:53:         if (i > 0) {
	cmpl	$0, -20(%rbp)	#, i
	jle	.L19	#,
# problem33.c:54:             term *= x; 
	movsd	-8(%rbp), %xmm0	# term, tmp92
	mulsd	-56(%rbp), %xmm0	# x, tmp91
	movsd	%xmm0, -8(%rbp)	# tmp91, term
.L19:
# problem33.c:56:         result += coeffs[i] * term;
	movl	-20(%rbp), %eax	# i, tmp93
	cltq
	leaq	0(,%rax,8), %rdx	#, _2
	movq	-40(%rbp), %rax	# coeffs, tmp94
	addq	%rdx, %rax	# _2, _3
	movsd	(%rax), %xmm0	# *_3, _4
# problem33.c:56:         result += coeffs[i] * term;
	mulsd	-8(%rbp), %xmm0	# term, _5
# problem33.c:56:         result += coeffs[i] * term;
	movsd	-16(%rbp), %xmm1	# result, tmp96
	addsd	%xmm1, %xmm0	# tmp96, tmp95
	movsd	%xmm0, -16(%rbp)	# tmp95, result
# problem33.c:52:     for (int i = 0; i < size; i++) {
	addl	$1, -20(%rbp)	#, i
.L18:
# problem33.c:52:     for (int i = 0; i < size; i++) {
	movl	-20(%rbp), %eax	# i, tmp97
	cmpl	-44(%rbp), %eax	# size, tmp97
	jl	.L20	#,
# problem33.c:58:     return result;
	movsd	-16(%rbp), %xmm0	# result, _14
# problem33.c:59: }
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE7:
	.size	evaluate_polynomial, .-evaluate_polynomial
	.section	.rodata
.LC5:
	.string	"problem33.c"
	.align 8
.LC6:
	.string	"fabs(evaluate_polynomial(coeffs, ncoeff, solution)) < 1e-3"
	.text
	.globl	main
	.type	main, @function
main:
.LFB8:
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$72, %rsp	#,
	.cfi_offset 3, -24
# problem33.c:61: int main() {
	movq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp159
	movq	%rax, -24(%rbp)	# tmp159, D.4865
	xorl	%eax, %eax	# tmp159
# problem33.c:65:     for (int i = 0; i < 100; i++) {
	movl	$0, -68(%rbp)	#, i
# problem33.c:65:     for (int i = 0; i < 100; i++) {
	jmp	.L23	#
.L32:
# problem33.c:65:     for (int i = 0; i < 100; i++) {
	movq	%rsp, %rax	#, tmp107
	movq	%rax, %rbx	# tmp107, saved_stack.2_31
# problem33.c:66:         ncoeff = 2 * (1 + rand() % 4);
	call	rand@PLT	#
	movl	%eax, %edx	#, _1
# problem33.c:66:         ncoeff = 2 * (1 + rand() % 4);
	movl	%edx, %eax	# _1, tmp108
	sarl	$31, %eax	#, tmp108
	shrl	$30, %eax	#, tmp109
	addl	%eax, %edx	# tmp109, tmp110
	andl	$3, %edx	#, tmp111
	subl	%eax, %edx	# tmp109, tmp112
	movl	%edx, %eax	# tmp112, _2
# problem33.c:66:         ncoeff = 2 * (1 + rand() % 4);
	addl	$1, %eax	#, _3
# problem33.c:66:         ncoeff = 2 * (1 + rand() % 4);
	addl	%eax, %eax	# tmp113
	movl	%eax, -60(%rbp)	# tmp113, ncoeff
# problem33.c:67:         double coeffs[ncoeff];
	movl	-60(%rbp), %eax	# ncoeff, ncoeff.0_34
# problem33.c:67:         double coeffs[ncoeff];
	movslq	%eax, %rdx	# ncoeff.0_34, _4
	subq	$1, %rdx	#, _5
	movq	%rdx, -48(%rbp)	# _6, D.4848
	cltq
	leaq	0(,%rax,8), %rdx	#, _16
	movl	$16, %eax	#, tmp157
	subq	$1, %rax	#, tmp114
	addq	%rdx, %rax	# _16, tmp115
	movl	$16, %esi	#, tmp158
	movl	$0, %edx	#, tmp118
	divq	%rsi	# tmp158
	imulq	$16, %rax, %rax	#, tmp117, tmp119
	movq	%rax, %rcx	# tmp119, tmp121
	andq	$-4096, %rcx	#, tmp121
	movq	%rsp, %rdx	#, tmp122
	subq	%rcx, %rdx	# tmp121, tmp122
.L24:
	cmpq	%rdx, %rsp	# tmp122,
	je	.L25	#,
	subq	$4096, %rsp	#,
	orq	$0, 4088(%rsp)	#,
	jmp	.L24	#
.L25:
	movq	%rax, %rdx	# tmp119, tmp123
	andl	$4095, %edx	#, tmp123
	subq	%rdx, %rsp	# tmp123,
	movq	%rax, %rdx	# tmp119, tmp124
	andl	$4095, %edx	#, tmp124
	testq	%rdx, %rdx	# tmp124
	je	.L26	#,
	andl	$4095, %eax	#, tmp125
	subq	$8, %rax	#, tmp125
	addq	%rsp, %rax	#, tmp126
	orq	$0, (%rax)	#,
.L26:
	movq	%rsp, %rax	#, tmp120
	addq	$7, %rax	#, tmp127
	shrq	$3, %rax	#, tmp128
	salq	$3, %rax	#, tmp129
	movq	%rax, -40(%rbp)	# tmp129, coeffs.1
# problem33.c:68:         for (int j = 0; j < ncoeff; j++) {
	movl	$0, -64(%rbp)	#, j
# problem33.c:68:         for (int j = 0; j < ncoeff; j++) {
	jmp	.L27	#
.L30:
# problem33.c:69:             double coeff = -10 + rand() % 21;
	call	rand@PLT	#
	movl	%eax, %ecx	#, _17
# problem33.c:69:             double coeff = -10 + rand() % 21;
	movslq	%ecx, %rax	# _17, tmp130
	imulq	$818089009, %rax, %rax	#, tmp130, tmp131
	shrq	$32, %rax	#, tmp132
	movl	%eax, %edx	# tmp132, tmp133
	sarl	$2, %edx	#, tmp133
	movl	%ecx, %eax	# _17, tmp134
	sarl	$31, %eax	#, tmp134
	subl	%eax, %edx	# tmp134, _18
	movl	%edx, %eax	# _18, tmp135
	sall	$2, %eax	#, tmp135
	addl	%edx, %eax	# _18, tmp135
	sall	$2, %eax	#, tmp135
	addl	%edx, %eax	# _18, tmp135
	subl	%eax, %ecx	# tmp135, _17
	movl	%ecx, %edx	# _17, _18
# problem33.c:69:             double coeff = -10 + rand() % 21;
	leal	-10(%rdx), %eax	#, _19
# problem33.c:69:             double coeff = -10 + rand() % 21;
	pxor	%xmm0, %xmm0	# tmp136
	cvtsi2sdl	%eax, %xmm0	# _19, tmp136
	movsd	%xmm0, -56(%rbp)	# tmp136, coeff
# problem33.c:70:             if (coeff == 0) coeff = 1;
	pxor	%xmm0, %xmm0	# tmp137
	ucomisd	-56(%rbp), %xmm0	# coeff, tmp137
	jp	.L28	#,
	pxor	%xmm0, %xmm0	# tmp138
	ucomisd	-56(%rbp), %xmm0	# coeff, tmp138
	jne	.L28	#,
# problem33.c:70:             if (coeff == 0) coeff = 1;
	movsd	.LC1(%rip), %xmm0	#, tmp139
	movsd	%xmm0, -56(%rbp)	# tmp139, coeff
.L28:
# problem33.c:71:             coeffs[j] = coeff;
	movq	-40(%rbp), %rax	# coeffs.1, tmp140
	movl	-64(%rbp), %edx	# j, tmp142
	movslq	%edx, %rdx	# tmp142, tmp141
	movsd	-56(%rbp), %xmm0	# coeff, tmp143
	movsd	%xmm0, (%rax,%rdx,8)	# tmp143, (*coeffs.1_41)[j_23]
# problem33.c:68:         for (int j = 0; j < ncoeff; j++) {
	addl	$1, -64(%rbp)	#, j
.L27:
# problem33.c:68:         for (int j = 0; j < ncoeff; j++) {
	movl	-64(%rbp), %eax	# j, tmp144
	cmpl	-60(%rbp), %eax	# ncoeff, tmp144
	jl	.L30	#,
# problem33.c:74:         solution = func0(coeffs, ncoeff);
	movl	-60(%rbp), %edx	# ncoeff, tmp145
	movq	-40(%rbp), %rax	# coeffs.1, tmp146
	movl	%edx, %esi	# tmp145,
	movq	%rax, %rdi	# tmp146,
	call	func0	#
	movq	%xmm0, %rax	#, tmp147
	movq	%rax, -32(%rbp)	# tmp147, solution
# problem33.c:76:         assert(fabs(evaluate_polynomial(coeffs, ncoeff, solution)) < 1e-3);
	movq	-32(%rbp), %rcx	# solution, tmp148
	movl	-60(%rbp), %edx	# ncoeff, tmp149
	movq	-40(%rbp), %rax	# coeffs.1, tmp150
	movq	%rcx, %xmm0	# tmp148,
	movl	%edx, %esi	# tmp149,
	movq	%rax, %rdi	# tmp150,
	call	evaluate_polynomial	#
	movq	%xmm0, %rax	#, _20
# problem33.c:76:         assert(fabs(evaluate_polynomial(coeffs, ncoeff, solution)) < 1e-3);
	movq	.LC2(%rip), %xmm0	#, tmp151
	movq	%rax, %xmm1	# _20, _20
	andpd	%xmm0, %xmm1	# tmp151, _20
	movsd	.LC4(%rip), %xmm0	#, tmp152
	comisd	%xmm1, %xmm0	# _21, tmp152
	ja	.L31	#,
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp153
	movq	%rax, %rcx	# tmp153,
	movl	$76, %edx	#,
	leaq	.LC5(%rip), %rax	#, tmp154
	movq	%rax, %rsi	# tmp154,
	leaq	.LC6(%rip), %rax	#, tmp155
	movq	%rax, %rdi	# tmp155,
	call	__assert_fail@PLT	#
.L31:
	movq	%rbx, %rsp	# saved_stack.2_31,
# problem33.c:65:     for (int i = 0; i < 100; i++) {
	addl	$1, -68(%rbp)	#, i
.L23:
# problem33.c:65:     for (int i = 0; i < 100; i++) {
	cmpl	$99, -68(%rbp)	#, i
	jle	.L32	#,
# problem33.c:79:     return 0;
	movl	$0, %eax	#, _29
# problem33.c:80: }
	movq	-24(%rbp), %rdx	# D.4865, tmp160
	subq	%fs:40, %rdx	# MEM[(<address-space-1> long unsigned int *)40B], tmp160
	je	.L34	#,
	call	__stack_chk_fail@PLT	#
.L34:
	movq	-8(%rbp), %rbx	#,
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE8:
	.size	main, .-main
	.section	.rodata
	.type	__PRETTY_FUNCTION__.0, @object
	.size	__PRETTY_FUNCTION__.0, 5
__PRETTY_FUNCTION__.0:
	.string	"main"
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
	.align 8
.LC4:
	.long	-755914244
	.long	1062232653
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
