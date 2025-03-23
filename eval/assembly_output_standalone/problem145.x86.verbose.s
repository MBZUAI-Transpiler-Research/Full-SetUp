	.file	"code.c"
# GNU C17 (Ubuntu 11.4.0-1ubuntu1~22.04) version 11.4.0 (x86_64-linux-gnu)
#	compiled by GNU C version 11.4.0, GMP version 6.2.1, MPFR version 4.1.0, MPC version 1.2.1, isl version isl-0.24-GMP

# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed: -mtune=generic -march=x86-64 -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection -fcf-protection
	.text
	.globl	func0
	.type	func0, @function
func0:
.LFB6:
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$272, %rsp	#,
	movq	%rdi, -264(%rbp)	# x, x
	movq	%rsi, -272(%rbp)	# n, n
# eval/problem145//code.c:4: int func0(const char* x, const char* n){
	movq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp156
	movq	%rax, -8(%rbp)	# tmp156, D.2898
	xorl	%eax, %eax	# tmp156
# eval/problem145//code.c:8:     for (i = 0; x[i] != '/'; i++) {
	movl	$0, -248(%rbp)	#, i
# eval/problem145//code.c:8:     for (i = 0; x[i] != '/'; i++) {
	jmp	.L2	#
.L3:
# eval/problem145//code.c:9:         num[i] = x[i];
	movl	-248(%rbp), %eax	# i, tmp111
	movslq	%eax, %rdx	# tmp111, _1
	movq	-264(%rbp), %rax	# x, tmp112
	addq	%rdx, %rax	# _1, _2
	movzbl	(%rax), %edx	# *_2, _3
# eval/problem145//code.c:9:         num[i] = x[i];
	movl	-248(%rbp), %eax	# i, tmp114
	cltq
	movb	%dl, -224(%rbp,%rax)	# _3, num[i_28]
# eval/problem145//code.c:8:     for (i = 0; x[i] != '/'; i++) {
	addl	$1, -248(%rbp)	#, i
.L2:
# eval/problem145//code.c:8:     for (i = 0; x[i] != '/'; i++) {
	movl	-248(%rbp), %eax	# i, tmp115
	movslq	%eax, %rdx	# tmp115, _4
	movq	-264(%rbp), %rax	# x, tmp116
	addq	%rdx, %rax	# _4, _5
	movzbl	(%rax), %eax	# *_5, _6
# eval/problem145//code.c:8:     for (i = 0; x[i] != '/'; i++) {
	cmpb	$47, %al	#, _6
	jne	.L3	#,
# eval/problem145//code.c:11:     num[i] = '\0';
	movl	-248(%rbp), %eax	# i, tmp118
	cltq
	movb	$0, -224(%rbp,%rax)	#, num[i_28]
# eval/problem145//code.c:12:     a = atoi(num);
	leaq	-224(%rbp), %rax	#, tmp119
	movq	%rax, %rdi	# tmp119,
	call	atoi@PLT	#
	movl	%eax, -240(%rbp)	# tmp120, a
# eval/problem145//code.c:14:     for (j = 0, i = i + 1; x[i] != '\0'; i++, j++) {
	movl	$0, -244(%rbp)	#, j
# eval/problem145//code.c:14:     for (j = 0, i = i + 1; x[i] != '\0'; i++, j++) {
	addl	$1, -248(%rbp)	#, i
# eval/problem145//code.c:14:     for (j = 0, i = i + 1; x[i] != '\0'; i++, j++) {
	jmp	.L4	#
.L5:
# eval/problem145//code.c:15:         den[j] = x[i];
	movl	-248(%rbp), %eax	# i, tmp121
	movslq	%eax, %rdx	# tmp121, _7
	movq	-264(%rbp), %rax	# x, tmp122
	addq	%rdx, %rax	# _7, _8
	movzbl	(%rax), %edx	# *_8, _9
# eval/problem145//code.c:15:         den[j] = x[i];
	movl	-244(%rbp), %eax	# j, tmp124
	cltq
	movb	%dl, -112(%rbp,%rax)	# _9, den[j_32]
# eval/problem145//code.c:14:     for (j = 0, i = i + 1; x[i] != '\0'; i++, j++) {
	addl	$1, -248(%rbp)	#, i
# eval/problem145//code.c:14:     for (j = 0, i = i + 1; x[i] != '\0'; i++, j++) {
	addl	$1, -244(%rbp)	#, j
.L4:
# eval/problem145//code.c:14:     for (j = 0, i = i + 1; x[i] != '\0'; i++, j++) {
	movl	-248(%rbp), %eax	# i, tmp125
	movslq	%eax, %rdx	# tmp125, _10
	movq	-264(%rbp), %rax	# x, tmp126
	addq	%rdx, %rax	# _10, _11
	movzbl	(%rax), %eax	# *_11, _12
# eval/problem145//code.c:14:     for (j = 0, i = i + 1; x[i] != '\0'; i++, j++) {
	testb	%al, %al	# _12
	jne	.L5	#,
# eval/problem145//code.c:17:     den[j] = '\0';
	movl	-244(%rbp), %eax	# j, tmp128
	cltq
	movb	$0, -112(%rbp,%rax)	#, den[j_32]
# eval/problem145//code.c:18:     b = atoi(den);
	leaq	-112(%rbp), %rax	#, tmp129
	movq	%rax, %rdi	# tmp129,
	call	atoi@PLT	#
	movl	%eax, -236(%rbp)	# tmp130, b
# eval/problem145//code.c:20:     for (i = 0; n[i] != '/'; i++) {
	movl	$0, -248(%rbp)	#, i
# eval/problem145//code.c:20:     for (i = 0; n[i] != '/'; i++) {
	jmp	.L6	#
.L7:
# eval/problem145//code.c:21:         num[i] = n[i];
	movl	-248(%rbp), %eax	# i, tmp131
	movslq	%eax, %rdx	# tmp131, _13
	movq	-272(%rbp), %rax	# n, tmp132
	addq	%rdx, %rax	# _13, _14
	movzbl	(%rax), %edx	# *_14, _15
# eval/problem145//code.c:21:         num[i] = n[i];
	movl	-248(%rbp), %eax	# i, tmp134
	cltq
	movb	%dl, -224(%rbp,%rax)	# _15, num[i_30]
# eval/problem145//code.c:20:     for (i = 0; n[i] != '/'; i++) {
	addl	$1, -248(%rbp)	#, i
.L6:
# eval/problem145//code.c:20:     for (i = 0; n[i] != '/'; i++) {
	movl	-248(%rbp), %eax	# i, tmp135
	movslq	%eax, %rdx	# tmp135, _16
	movq	-272(%rbp), %rax	# n, tmp136
	addq	%rdx, %rax	# _16, _17
	movzbl	(%rax), %eax	# *_17, _18
# eval/problem145//code.c:20:     for (i = 0; n[i] != '/'; i++) {
	cmpb	$47, %al	#, _18
	jne	.L7	#,
# eval/problem145//code.c:23:     num[i] = '\0';
	movl	-248(%rbp), %eax	# i, tmp138
	cltq
	movb	$0, -224(%rbp,%rax)	#, num[i_30]
# eval/problem145//code.c:24:     c = atoi(num);
	leaq	-224(%rbp), %rax	#, tmp139
	movq	%rax, %rdi	# tmp139,
	call	atoi@PLT	#
	movl	%eax, -232(%rbp)	# tmp140, c
# eval/problem145//code.c:26:     for (j = 0, i = i + 1; n[i] != '\0'; i++, j++) {
	movl	$0, -244(%rbp)	#, j
# eval/problem145//code.c:26:     for (j = 0, i = i + 1; n[i] != '\0'; i++, j++) {
	addl	$1, -248(%rbp)	#, i
# eval/problem145//code.c:26:     for (j = 0, i = i + 1; n[i] != '\0'; i++, j++) {
	jmp	.L8	#
.L9:
# eval/problem145//code.c:27:         den[j] = n[i];
	movl	-248(%rbp), %eax	# i, tmp141
	movslq	%eax, %rdx	# tmp141, _19
	movq	-272(%rbp), %rax	# n, tmp142
	addq	%rdx, %rax	# _19, _20
	movzbl	(%rax), %edx	# *_20, _21
# eval/problem145//code.c:27:         den[j] = n[i];
	movl	-244(%rbp), %eax	# j, tmp144
	cltq
	movb	%dl, -112(%rbp,%rax)	# _21, den[j_33]
# eval/problem145//code.c:26:     for (j = 0, i = i + 1; n[i] != '\0'; i++, j++) {
	addl	$1, -248(%rbp)	#, i
# eval/problem145//code.c:26:     for (j = 0, i = i + 1; n[i] != '\0'; i++, j++) {
	addl	$1, -244(%rbp)	#, j
.L8:
# eval/problem145//code.c:26:     for (j = 0, i = i + 1; n[i] != '\0'; i++, j++) {
	movl	-248(%rbp), %eax	# i, tmp145
	movslq	%eax, %rdx	# tmp145, _22
	movq	-272(%rbp), %rax	# n, tmp146
	addq	%rdx, %rax	# _22, _23
	movzbl	(%rax), %eax	# *_23, _24
# eval/problem145//code.c:26:     for (j = 0, i = i + 1; n[i] != '\0'; i++, j++) {
	testb	%al, %al	# _24
	jne	.L9	#,
# eval/problem145//code.c:29:     den[j] = '\0';
	movl	-244(%rbp), %eax	# j, tmp148
	cltq
	movb	$0, -112(%rbp,%rax)	#, den[j_33]
# eval/problem145//code.c:30:     d = atoi(den);
	leaq	-112(%rbp), %rax	#, tmp149
	movq	%rax, %rdi	# tmp149,
	call	atoi@PLT	#
	movl	%eax, -228(%rbp)	# tmp150, d
# eval/problem145//code.c:32:     if ((a * c) % (b * d) == 0) return 1;
	movl	-240(%rbp), %eax	# a, tmp151
	imull	-232(%rbp), %eax	# c, _25
# eval/problem145//code.c:32:     if ((a * c) % (b * d) == 0) return 1;
	movl	-236(%rbp), %edx	# b, tmp152
	movl	%edx, %ecx	# tmp152, tmp152
	imull	-228(%rbp), %ecx	# d, tmp152
# eval/problem145//code.c:32:     if ((a * c) % (b * d) == 0) return 1;
	cltd
	idivl	%ecx	# _26
	movl	%edx, %eax	# tmp153, _27
# eval/problem145//code.c:32:     if ((a * c) % (b * d) == 0) return 1;
	testl	%eax, %eax	# _27
	jne	.L10	#,
# eval/problem145//code.c:32:     if ((a * c) % (b * d) == 0) return 1;
	movl	$1, %eax	#, _34
	jmp	.L12	#
.L10:
# eval/problem145//code.c:33:     return 0;
	movl	$0, %eax	#, _34
.L12:
# eval/problem145//code.c:34: }
	movq	-8(%rbp), %rdx	# D.2898, tmp157
	subq	%fs:40, %rdx	# MEM[(<address-space-1> long unsigned int *)40B], tmp157
	je	.L13	#,
# eval/problem145//code.c:34: }
	call	__stack_chk_fail@PLT	#
.L13:
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE6:
	.size	func0, .-func0
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
