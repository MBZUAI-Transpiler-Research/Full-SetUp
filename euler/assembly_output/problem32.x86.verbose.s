	.file	"problem32.c"
# GNU C17 (Ubuntu 13.3.0-6ubuntu2~24.04) version 13.3.0 (x86_64-linux-gnu)
#	compiled by GNU C version 13.3.0, GMP version 6.3.0, MPFR version 4.2.1, MPC version 1.3.1, isl version isl-0.26-GMP

# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed: -mtune=generic -march=x86-64 -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection -fcf-protection
	.text
	.section	.rodata
.LC0:
	.string	"%d%d%d"
.LC1:
	.string	"%d\n"
	.text
	.globl	main
	.type	main, @function
main:
.LFB6:
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$56, %rsp	#,
	.cfi_offset 3, -24
# problem32.c:16: {
	movq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp119
	movq	%rax, -24(%rbp)	# tmp119, D.5010
	xorl	%eax, %eax	# tmp119
# problem32.c:18:   int sum = 0;
	movl	$0, -48(%rbp)	#, sum
# problem32.c:21:   for (product = 1111; product < 100000; product++) {
	movl	$1111, -56(%rbp)	#, product
# problem32.c:21:   for (product = 1111; product < 100000; product++) {
	jmp	.L2	#
.L9:
# problem32.c:22:     for (multiplicand = 2; multiplicand*multiplicand < product; multiplicand++) {
	movl	$2, -52(%rbp)	#, multiplicand
# problem32.c:22:     for (multiplicand = 2; multiplicand*multiplicand < product; multiplicand++) {
	jmp	.L3	#
.L8:
# problem32.c:23:       remaindar = product % multiplicand;
	movl	-56(%rbp), %eax	# product, tmp101
	cltd
	idivl	-52(%rbp)	# multiplicand
	movl	%edx, -44(%rbp)	# tmp102, remaindar
# problem32.c:24:       if (remaindar != 0) {
	cmpl	$0, -44(%rbp)	#, remaindar
	jne	.L12	#,
# problem32.c:27:       multiplier = product / multiplicand;
	movl	-56(%rbp), %eax	# product, tmp107
	cltd
	idivl	-52(%rbp)	# multiplicand
	movl	%eax, -40(%rbp)	# tmp105, multiplier
# problem32.c:28:       if (DIGITS(multiplicand) + DIGITS(multiplier) + DIGITS(product) != 6) {
	pxor	%xmm1, %xmm1	# _1
	cvtsi2sdl	-52(%rbp), %xmm1	# multiplicand, _1
	movq	%xmm1, %rax	# _1, _1
	movq	%rax, %xmm0	# _1,
	call	log10@PLT	#
	movq	%xmm0, %rax	#, _2
# problem32.c:28:       if (DIGITS(multiplicand) + DIGITS(multiplier) + DIGITS(product) != 6) {
	movq	%rax, %xmm0	# _2,
	call	floor@PLT	#
# problem32.c:28:       if (DIGITS(multiplicand) + DIGITS(multiplier) + DIGITS(product) != 6) {
	cvttsd2siq	%xmm0, %rbx	# _3, _4
# problem32.c:28:       if (DIGITS(multiplicand) + DIGITS(multiplier) + DIGITS(product) != 6) {
	pxor	%xmm2, %xmm2	# _5
	cvtsi2sdl	-40(%rbp), %xmm2	# multiplier, _5
	movq	%xmm2, %rax	# _5, _5
	movq	%rax, %xmm0	# _5,
	call	log10@PLT	#
	movq	%xmm0, %rax	#, _6
# problem32.c:28:       if (DIGITS(multiplicand) + DIGITS(multiplier) + DIGITS(product) != 6) {
	movq	%rax, %xmm0	# _6,
	call	floor@PLT	#
# problem32.c:28:       if (DIGITS(multiplicand) + DIGITS(multiplier) + DIGITS(product) != 6) {
	cvttsd2siq	%xmm0, %rax	# _7, _8
# problem32.c:28:       if (DIGITS(multiplicand) + DIGITS(multiplier) + DIGITS(product) != 6) {
	addq	%rax, %rbx	# _8, _9
# problem32.c:28:       if (DIGITS(multiplicand) + DIGITS(multiplier) + DIGITS(product) != 6) {
	pxor	%xmm3, %xmm3	# _10
	cvtsi2sdl	-56(%rbp), %xmm3	# product, _10
	movq	%xmm3, %rax	# _10, _10
	movq	%rax, %xmm0	# _10,
	call	log10@PLT	#
	movq	%xmm0, %rax	#, _11
# problem32.c:28:       if (DIGITS(multiplicand) + DIGITS(multiplier) + DIGITS(product) != 6) {
	movq	%rax, %xmm0	# _11,
	call	floor@PLT	#
# problem32.c:28:       if (DIGITS(multiplicand) + DIGITS(multiplier) + DIGITS(product) != 6) {
	cvttsd2siq	%xmm0, %rax	# _12, _13
# problem32.c:28:       if (DIGITS(multiplicand) + DIGITS(multiplier) + DIGITS(product) != 6) {
	addq	%rbx, %rax	# _9, _14
# problem32.c:28:       if (DIGITS(multiplicand) + DIGITS(multiplier) + DIGITS(product) != 6) {
	cmpq	$6, %rax	#, _14
	jne	.L13	#,
# problem32.c:32:       snprintf(buf, sizeof buf, "%d%d%d", multiplicand, multiplier, product);
	movl	-56(%rbp), %esi	# product, tmp108
	movl	-40(%rbp), %ecx	# multiplier, tmp109
	movl	-52(%rbp), %edx	# multiplicand, tmp110
	leaq	-34(%rbp), %rax	#, tmp111
	movl	%esi, %r9d	# tmp108,
	movl	%ecx, %r8d	# tmp109,
	movl	%edx, %ecx	# tmp110,
	leaq	.LC0(%rip), %rdx	#, tmp112
	movl	$10, %esi	#,
	movq	%rax, %rdi	# tmp111,
	movl	$0, %eax	#,
	call	snprintf@PLT	#
# problem32.c:33:       if (is_pandigital(buf)) {
	leaq	-34(%rbp), %rax	#, tmp113
	movq	%rax, %rdi	# tmp113,
	call	is_pandigital	#
# problem32.c:33:       if (is_pandigital(buf)) {
	testl	%eax, %eax	# _15
	je	.L5	#,
# problem32.c:34:         sum += product;
	movl	-56(%rbp), %eax	# product, tmp114
	addl	%eax, -48(%rbp)	# tmp114, sum
# problem32.c:35:         break;
	jmp	.L7	#
.L12:
# problem32.c:25:         continue;
	nop	
	jmp	.L5	#
.L13:
# problem32.c:29:         continue;
	nop	
.L5:
# problem32.c:22:     for (multiplicand = 2; multiplicand*multiplicand < product; multiplicand++) {
	addl	$1, -52(%rbp)	#, multiplicand
.L3:
# problem32.c:22:     for (multiplicand = 2; multiplicand*multiplicand < product; multiplicand++) {
	movl	-52(%rbp), %eax	# multiplicand, tmp115
	imull	%eax, %eax	# tmp115, _16
# problem32.c:22:     for (multiplicand = 2; multiplicand*multiplicand < product; multiplicand++) {
	cmpl	%eax, -56(%rbp)	# _16, product
	jg	.L8	#,
.L7:
# problem32.c:21:   for (product = 1111; product < 100000; product++) {
	addl	$1, -56(%rbp)	#, product
.L2:
# problem32.c:21:   for (product = 1111; product < 100000; product++) {
	cmpl	$99999, -56(%rbp)	#, product
	jle	.L9	#,
# problem32.c:39:   printf("%d\n", sum);
	movl	-48(%rbp), %eax	# sum, tmp116
	movl	%eax, %esi	# tmp116,
	leaq	.LC1(%rip), %rax	#, tmp117
	movq	%rax, %rdi	# tmp117,
	movl	$0, %eax	#,
	call	printf@PLT	#
# problem32.c:41:   return 0;
	movl	$0, %eax	#, _29
# problem32.c:42: }
	movq	-24(%rbp), %rdx	# D.5010, tmp120
	subq	%fs:40, %rdx	# MEM[(<address-space-1> long unsigned int *)40B], tmp120
	je	.L11	#,
	call	__stack_chk_fail@PLT	#
.L11:
	movq	-8(%rbp), %rbx	#,
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE6:
	.size	main, .-main
	.type	compare, @function
compare:
.LFB7:
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)	# a, a
	movq	%rsi, -16(%rbp)	# b, b
# problem32.c:46:   return *(const char *)a - *(const char *)b;
	movq	-8(%rbp), %rax	# a, tmp88
	movzbl	(%rax), %eax	# MEM[(const char *)a_6(D)], _1
	movsbl	%al, %edx	# _1, _2
# problem32.c:46:   return *(const char *)a - *(const char *)b;
	movq	-16(%rbp), %rax	# b, tmp89
	movzbl	(%rax), %eax	# MEM[(const char *)b_7(D)], _3
	movsbl	%al, %eax	# _3, _4
# problem32.c:46:   return *(const char *)a - *(const char *)b;
	subl	%eax, %edx	# _4, _8
# problem32.c:46:   return *(const char *)a - *(const char *)b;
	movl	%edx, %eax	# _8, <retval>
# problem32.c:47: }
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE7:
	.size	compare, .-compare
	.section	.rodata
.LC2:
	.string	"123456789"
	.text
	.type	is_pandigital, @function
is_pandigital:
.LFB8:
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# buf, buf
# problem32.c:51:   qsort(buf, 9, 1, compare);
	movq	-8(%rbp), %rax	# buf, tmp86
	leaq	compare(%rip), %rdx	#, tmp87
	movq	%rdx, %rcx	# tmp87,
	movl	$1, %edx	#,
	movl	$9, %esi	#,
	movq	%rax, %rdi	# tmp86,
	call	qsort@PLT	#
# problem32.c:52:   return memcmp(buf, "123456789", 9) == 0;
	movq	-8(%rbp), %rax	# buf, tmp88
	movl	$9, %edx	#,
	leaq	.LC2(%rip), %rcx	#, tmp89
	movq	%rcx, %rsi	# tmp89,
	movq	%rax, %rdi	# tmp88,
	call	memcmp@PLT	#
# problem32.c:52:   return memcmp(buf, "123456789", 9) == 0;
	testl	%eax, %eax	# _1
	sete	%al	#, _2
	movzbl	%al, %eax	# _2, _6
# problem32.c:53: }
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE8:
	.size	is_pandigital, .-is_pandigital
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
