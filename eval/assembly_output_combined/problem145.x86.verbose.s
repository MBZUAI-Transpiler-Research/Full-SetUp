	.file	"problem145.c"
# GNU C17 (Ubuntu 13.3.0-6ubuntu2~24.04) version 13.3.0 (x86_64-linux-gnu)
#	compiled by GNU C version 13.3.0, GMP version 6.3.0, MPFR version 4.2.1, MPC version 1.3.1, isl version isl-0.26-GMP

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
# problem145.c:4: int func0(const char* x, const char* n){
	movq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp156
	movq	%rax, -8(%rbp)	# tmp156, D.3799
	xorl	%eax, %eax	# tmp156
# problem145.c:8:     for (i = 0; x[i] != '/'; i++) {
	movl	$0, -248(%rbp)	#, i
# problem145.c:8:     for (i = 0; x[i] != '/'; i++) {
	jmp	.L2	#
.L3:
# problem145.c:9:         num[i] = x[i];
	movl	-248(%rbp), %eax	# i, tmp111
	movslq	%eax, %rdx	# tmp111, _1
	movq	-264(%rbp), %rax	# x, tmp112
	addq	%rdx, %rax	# _1, _2
	movzbl	(%rax), %edx	# *_2, _3
# problem145.c:9:         num[i] = x[i];
	movl	-248(%rbp), %eax	# i, tmp114
	cltq
	movb	%dl, -224(%rbp,%rax)	# _3, num[i_28]
# problem145.c:8:     for (i = 0; x[i] != '/'; i++) {
	addl	$1, -248(%rbp)	#, i
.L2:
# problem145.c:8:     for (i = 0; x[i] != '/'; i++) {
	movl	-248(%rbp), %eax	# i, tmp115
	movslq	%eax, %rdx	# tmp115, _4
	movq	-264(%rbp), %rax	# x, tmp116
	addq	%rdx, %rax	# _4, _5
	movzbl	(%rax), %eax	# *_5, _6
# problem145.c:8:     for (i = 0; x[i] != '/'; i++) {
	cmpb	$47, %al	#, _6
	jne	.L3	#,
# problem145.c:11:     num[i] = '\0';
	movl	-248(%rbp), %eax	# i, tmp118
	cltq
	movb	$0, -224(%rbp,%rax)	#, num[i_28]
# problem145.c:12:     a = atoi(num);
	leaq	-224(%rbp), %rax	#, tmp119
	movq	%rax, %rdi	# tmp119,
	call	atoi@PLT	#
	movl	%eax, -240(%rbp)	# tmp120, a
# problem145.c:14:     for (j = 0, i = i + 1; x[i] != '\0'; i++, j++) {
	movl	$0, -244(%rbp)	#, j
# problem145.c:14:     for (j = 0, i = i + 1; x[i] != '\0'; i++, j++) {
	addl	$1, -248(%rbp)	#, i
# problem145.c:14:     for (j = 0, i = i + 1; x[i] != '\0'; i++, j++) {
	jmp	.L4	#
.L5:
# problem145.c:15:         den[j] = x[i];
	movl	-248(%rbp), %eax	# i, tmp121
	movslq	%eax, %rdx	# tmp121, _7
	movq	-264(%rbp), %rax	# x, tmp122
	addq	%rdx, %rax	# _7, _8
	movzbl	(%rax), %edx	# *_8, _9
# problem145.c:15:         den[j] = x[i];
	movl	-244(%rbp), %eax	# j, tmp124
	cltq
	movb	%dl, -112(%rbp,%rax)	# _9, den[j_32]
# problem145.c:14:     for (j = 0, i = i + 1; x[i] != '\0'; i++, j++) {
	addl	$1, -248(%rbp)	#, i
# problem145.c:14:     for (j = 0, i = i + 1; x[i] != '\0'; i++, j++) {
	addl	$1, -244(%rbp)	#, j
.L4:
# problem145.c:14:     for (j = 0, i = i + 1; x[i] != '\0'; i++, j++) {
	movl	-248(%rbp), %eax	# i, tmp125
	movslq	%eax, %rdx	# tmp125, _10
	movq	-264(%rbp), %rax	# x, tmp126
	addq	%rdx, %rax	# _10, _11
	movzbl	(%rax), %eax	# *_11, _12
# problem145.c:14:     for (j = 0, i = i + 1; x[i] != '\0'; i++, j++) {
	testb	%al, %al	# _12
	jne	.L5	#,
# problem145.c:17:     den[j] = '\0';
	movl	-244(%rbp), %eax	# j, tmp128
	cltq
	movb	$0, -112(%rbp,%rax)	#, den[j_32]
# problem145.c:18:     b = atoi(den);
	leaq	-112(%rbp), %rax	#, tmp129
	movq	%rax, %rdi	# tmp129,
	call	atoi@PLT	#
	movl	%eax, -236(%rbp)	# tmp130, b
# problem145.c:20:     for (i = 0; n[i] != '/'; i++) {
	movl	$0, -248(%rbp)	#, i
# problem145.c:20:     for (i = 0; n[i] != '/'; i++) {
	jmp	.L6	#
.L7:
# problem145.c:21:         num[i] = n[i];
	movl	-248(%rbp), %eax	# i, tmp131
	movslq	%eax, %rdx	# tmp131, _13
	movq	-272(%rbp), %rax	# n, tmp132
	addq	%rdx, %rax	# _13, _14
	movzbl	(%rax), %edx	# *_14, _15
# problem145.c:21:         num[i] = n[i];
	movl	-248(%rbp), %eax	# i, tmp134
	cltq
	movb	%dl, -224(%rbp,%rax)	# _15, num[i_30]
# problem145.c:20:     for (i = 0; n[i] != '/'; i++) {
	addl	$1, -248(%rbp)	#, i
.L6:
# problem145.c:20:     for (i = 0; n[i] != '/'; i++) {
	movl	-248(%rbp), %eax	# i, tmp135
	movslq	%eax, %rdx	# tmp135, _16
	movq	-272(%rbp), %rax	# n, tmp136
	addq	%rdx, %rax	# _16, _17
	movzbl	(%rax), %eax	# *_17, _18
# problem145.c:20:     for (i = 0; n[i] != '/'; i++) {
	cmpb	$47, %al	#, _18
	jne	.L7	#,
# problem145.c:23:     num[i] = '\0';
	movl	-248(%rbp), %eax	# i, tmp138
	cltq
	movb	$0, -224(%rbp,%rax)	#, num[i_30]
# problem145.c:24:     c = atoi(num);
	leaq	-224(%rbp), %rax	#, tmp139
	movq	%rax, %rdi	# tmp139,
	call	atoi@PLT	#
	movl	%eax, -232(%rbp)	# tmp140, c
# problem145.c:26:     for (j = 0, i = i + 1; n[i] != '\0'; i++, j++) {
	movl	$0, -244(%rbp)	#, j
# problem145.c:26:     for (j = 0, i = i + 1; n[i] != '\0'; i++, j++) {
	addl	$1, -248(%rbp)	#, i
# problem145.c:26:     for (j = 0, i = i + 1; n[i] != '\0'; i++, j++) {
	jmp	.L8	#
.L9:
# problem145.c:27:         den[j] = n[i];
	movl	-248(%rbp), %eax	# i, tmp141
	movslq	%eax, %rdx	# tmp141, _19
	movq	-272(%rbp), %rax	# n, tmp142
	addq	%rdx, %rax	# _19, _20
	movzbl	(%rax), %edx	# *_20, _21
# problem145.c:27:         den[j] = n[i];
	movl	-244(%rbp), %eax	# j, tmp144
	cltq
	movb	%dl, -112(%rbp,%rax)	# _21, den[j_33]
# problem145.c:26:     for (j = 0, i = i + 1; n[i] != '\0'; i++, j++) {
	addl	$1, -248(%rbp)	#, i
# problem145.c:26:     for (j = 0, i = i + 1; n[i] != '\0'; i++, j++) {
	addl	$1, -244(%rbp)	#, j
.L8:
# problem145.c:26:     for (j = 0, i = i + 1; n[i] != '\0'; i++, j++) {
	movl	-248(%rbp), %eax	# i, tmp145
	movslq	%eax, %rdx	# tmp145, _22
	movq	-272(%rbp), %rax	# n, tmp146
	addq	%rdx, %rax	# _22, _23
	movzbl	(%rax), %eax	# *_23, _24
# problem145.c:26:     for (j = 0, i = i + 1; n[i] != '\0'; i++, j++) {
	testb	%al, %al	# _24
	jne	.L9	#,
# problem145.c:29:     den[j] = '\0';
	movl	-244(%rbp), %eax	# j, tmp148
	cltq
	movb	$0, -112(%rbp,%rax)	#, den[j_33]
# problem145.c:30:     d = atoi(den);
	leaq	-112(%rbp), %rax	#, tmp149
	movq	%rax, %rdi	# tmp149,
	call	atoi@PLT	#
	movl	%eax, -228(%rbp)	# tmp150, d
# problem145.c:32:     if ((a * c) % (b * d) == 0) return 1;
	movl	-240(%rbp), %eax	# a, tmp151
	imull	-232(%rbp), %eax	# c, _25
# problem145.c:32:     if ((a * c) % (b * d) == 0) return 1;
	movl	-236(%rbp), %edx	# b, tmp152
	movl	%edx, %esi	# tmp152, tmp152
	imull	-228(%rbp), %esi	# d, tmp152
# problem145.c:32:     if ((a * c) % (b * d) == 0) return 1;
	cltd
	idivl	%esi	# _26
	movl	%edx, %ecx	# tmp153, tmp153
	movl	%ecx, %eax	# tmp153, _27
# problem145.c:32:     if ((a * c) % (b * d) == 0) return 1;
	testl	%eax, %eax	# _27
	jne	.L10	#,
# problem145.c:32:     if ((a * c) % (b * d) == 0) return 1;
	movl	$1, %eax	#, _34
# problem145.c:32:     if ((a * c) % (b * d) == 0) return 1;
	jmp	.L12	#
.L10:
# problem145.c:33:     return 0;
	movl	$0, %eax	#, _34
.L12:
# problem145.c:34: }
	movq	-8(%rbp), %rdx	# D.3799, tmp157
	subq	%fs:40, %rdx	# MEM[(<address-space-1> long unsigned int *)40B], tmp157
	je	.L13	#,
	call	__stack_chk_fail@PLT	#
.L13:
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE6:
	.size	func0, .-func0
	.section	.rodata
.LC0:
	.string	"5/1"
.LC1:
	.string	"1/5"
.LC2:
	.string	"problem145.c"
.LC3:
	.string	"func0(\"1/5\", \"5/1\") == 1"
.LC4:
	.string	"2/1"
.LC5:
	.string	"1/6"
.LC6:
	.string	"func0(\"1/6\", \"2/1\") == 0"
.LC7:
	.string	"3/1"
.LC8:
	.string	"func0(\"5/1\", \"3/1\") == 1"
.LC9:
	.string	"10/2"
.LC10:
	.string	"7/10"
.LC11:
	.string	"func0(\"7/10\", \"10/2\") == 0"
.LC12:
	.string	"50/10"
.LC13:
	.string	"2/10"
.LC14:
	.string	"func0(\"2/10\", \"50/10\") == 1"
.LC15:
	.string	"4/2"
.LC16:
	.string	"7/2"
.LC17:
	.string	"func0(\"7/2\", \"4/2\") == 1"
.LC18:
	.string	"6/1"
.LC19:
	.string	"11/6"
.LC20:
	.string	"func0(\"11/6\", \"6/1\") == 1"
.LC21:
	.string	"5/2"
.LC22:
	.string	"2/3"
.LC23:
	.string	"func0(\"2/3\", \"5/2\") == 0"
.LC24:
	.string	"3/5"
.LC25:
	.string	"func0(\"5/2\", \"3/5\") == 0"
.LC26:
	.string	"8/4"
.LC27:
	.string	"2/4"
.LC28:
	.string	"func0(\"2/4\", \"8/4\") == 1"
.LC29:
	.string	"func0(\"2/4\", \"4/2\") == 1"
.LC30:
	.string	"func0(\"1/5\", \"1/5\") == 0"
	.text
	.globl	main
	.type	main, @function
main:
.LFB7:
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
# problem145.c:41:     assert(func0("1/5", "5/1") == 1);
	leaq	.LC0(%rip), %rax	#, tmp97
	movq	%rax, %rsi	# tmp97,
	leaq	.LC1(%rip), %rax	#, tmp98
	movq	%rax, %rdi	# tmp98,
	call	func0	#
# problem145.c:41:     assert(func0("1/5", "5/1") == 1);
	cmpl	$1, %eax	#, _1
	je	.L15	#,
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp99
	movq	%rax, %rcx	# tmp99,
	movl	$41, %edx	#,
	leaq	.LC2(%rip), %rax	#, tmp100
	movq	%rax, %rsi	# tmp100,
	leaq	.LC3(%rip), %rax	#, tmp101
	movq	%rax, %rdi	# tmp101,
	call	__assert_fail@PLT	#
.L15:
# problem145.c:42:     assert(func0("1/6", "2/1") == 0);
	leaq	.LC4(%rip), %rax	#, tmp102
	movq	%rax, %rsi	# tmp102,
	leaq	.LC5(%rip), %rax	#, tmp103
	movq	%rax, %rdi	# tmp103,
	call	func0	#
# problem145.c:42:     assert(func0("1/6", "2/1") == 0);
	testl	%eax, %eax	# _2
	je	.L16	#,
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp104
	movq	%rax, %rcx	# tmp104,
	movl	$42, %edx	#,
	leaq	.LC2(%rip), %rax	#, tmp105
	movq	%rax, %rsi	# tmp105,
	leaq	.LC6(%rip), %rax	#, tmp106
	movq	%rax, %rdi	# tmp106,
	call	__assert_fail@PLT	#
.L16:
# problem145.c:43:     assert(func0("5/1", "3/1") == 1);
	leaq	.LC7(%rip), %rax	#, tmp107
	movq	%rax, %rsi	# tmp107,
	leaq	.LC0(%rip), %rax	#, tmp108
	movq	%rax, %rdi	# tmp108,
	call	func0	#
# problem145.c:43:     assert(func0("5/1", "3/1") == 1);
	cmpl	$1, %eax	#, _3
	je	.L17	#,
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp109
	movq	%rax, %rcx	# tmp109,
	movl	$43, %edx	#,
	leaq	.LC2(%rip), %rax	#, tmp110
	movq	%rax, %rsi	# tmp110,
	leaq	.LC8(%rip), %rax	#, tmp111
	movq	%rax, %rdi	# tmp111,
	call	__assert_fail@PLT	#
.L17:
# problem145.c:44:     assert(func0("7/10", "10/2") == 0);
	leaq	.LC9(%rip), %rax	#, tmp112
	movq	%rax, %rsi	# tmp112,
	leaq	.LC10(%rip), %rax	#, tmp113
	movq	%rax, %rdi	# tmp113,
	call	func0	#
# problem145.c:44:     assert(func0("7/10", "10/2") == 0);
	testl	%eax, %eax	# _4
	je	.L18	#,
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp114
	movq	%rax, %rcx	# tmp114,
	movl	$44, %edx	#,
	leaq	.LC2(%rip), %rax	#, tmp115
	movq	%rax, %rsi	# tmp115,
	leaq	.LC11(%rip), %rax	#, tmp116
	movq	%rax, %rdi	# tmp116,
	call	__assert_fail@PLT	#
.L18:
# problem145.c:45:     assert(func0("2/10", "50/10") == 1);
	leaq	.LC12(%rip), %rax	#, tmp117
	movq	%rax, %rsi	# tmp117,
	leaq	.LC13(%rip), %rax	#, tmp118
	movq	%rax, %rdi	# tmp118,
	call	func0	#
# problem145.c:45:     assert(func0("2/10", "50/10") == 1);
	cmpl	$1, %eax	#, _5
	je	.L19	#,
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp119
	movq	%rax, %rcx	# tmp119,
	movl	$45, %edx	#,
	leaq	.LC2(%rip), %rax	#, tmp120
	movq	%rax, %rsi	# tmp120,
	leaq	.LC14(%rip), %rax	#, tmp121
	movq	%rax, %rdi	# tmp121,
	call	__assert_fail@PLT	#
.L19:
# problem145.c:46:     assert(func0("7/2", "4/2") == 1);
	leaq	.LC15(%rip), %rax	#, tmp122
	movq	%rax, %rsi	# tmp122,
	leaq	.LC16(%rip), %rax	#, tmp123
	movq	%rax, %rdi	# tmp123,
	call	func0	#
# problem145.c:46:     assert(func0("7/2", "4/2") == 1);
	cmpl	$1, %eax	#, _6
	je	.L20	#,
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp124
	movq	%rax, %rcx	# tmp124,
	movl	$46, %edx	#,
	leaq	.LC2(%rip), %rax	#, tmp125
	movq	%rax, %rsi	# tmp125,
	leaq	.LC17(%rip), %rax	#, tmp126
	movq	%rax, %rdi	# tmp126,
	call	__assert_fail@PLT	#
.L20:
# problem145.c:47:     assert(func0("11/6", "6/1") == 1);
	leaq	.LC18(%rip), %rax	#, tmp127
	movq	%rax, %rsi	# tmp127,
	leaq	.LC19(%rip), %rax	#, tmp128
	movq	%rax, %rdi	# tmp128,
	call	func0	#
# problem145.c:47:     assert(func0("11/6", "6/1") == 1);
	cmpl	$1, %eax	#, _7
	je	.L21	#,
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp129
	movq	%rax, %rcx	# tmp129,
	movl	$47, %edx	#,
	leaq	.LC2(%rip), %rax	#, tmp130
	movq	%rax, %rsi	# tmp130,
	leaq	.LC20(%rip), %rax	#, tmp131
	movq	%rax, %rdi	# tmp131,
	call	__assert_fail@PLT	#
.L21:
# problem145.c:48:     assert(func0("2/3", "5/2") == 0);
	leaq	.LC21(%rip), %rax	#, tmp132
	movq	%rax, %rsi	# tmp132,
	leaq	.LC22(%rip), %rax	#, tmp133
	movq	%rax, %rdi	# tmp133,
	call	func0	#
# problem145.c:48:     assert(func0("2/3", "5/2") == 0);
	testl	%eax, %eax	# _8
	je	.L22	#,
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp134
	movq	%rax, %rcx	# tmp134,
	movl	$48, %edx	#,
	leaq	.LC2(%rip), %rax	#, tmp135
	movq	%rax, %rsi	# tmp135,
	leaq	.LC23(%rip), %rax	#, tmp136
	movq	%rax, %rdi	# tmp136,
	call	__assert_fail@PLT	#
.L22:
# problem145.c:49:     assert(func0("5/2", "3/5") == 0);
	leaq	.LC24(%rip), %rax	#, tmp137
	movq	%rax, %rsi	# tmp137,
	leaq	.LC21(%rip), %rax	#, tmp138
	movq	%rax, %rdi	# tmp138,
	call	func0	#
# problem145.c:49:     assert(func0("5/2", "3/5") == 0);
	testl	%eax, %eax	# _9
	je	.L23	#,
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp139
	movq	%rax, %rcx	# tmp139,
	movl	$49, %edx	#,
	leaq	.LC2(%rip), %rax	#, tmp140
	movq	%rax, %rsi	# tmp140,
	leaq	.LC25(%rip), %rax	#, tmp141
	movq	%rax, %rdi	# tmp141,
	call	__assert_fail@PLT	#
.L23:
# problem145.c:50:     assert(func0("2/4", "8/4") == 1);
	leaq	.LC26(%rip), %rax	#, tmp142
	movq	%rax, %rsi	# tmp142,
	leaq	.LC27(%rip), %rax	#, tmp143
	movq	%rax, %rdi	# tmp143,
	call	func0	#
# problem145.c:50:     assert(func0("2/4", "8/4") == 1);
	cmpl	$1, %eax	#, _10
	je	.L24	#,
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp144
	movq	%rax, %rcx	# tmp144,
	movl	$50, %edx	#,
	leaq	.LC2(%rip), %rax	#, tmp145
	movq	%rax, %rsi	# tmp145,
	leaq	.LC28(%rip), %rax	#, tmp146
	movq	%rax, %rdi	# tmp146,
	call	__assert_fail@PLT	#
.L24:
# problem145.c:51:     assert(func0("2/4", "4/2") == 1);
	leaq	.LC15(%rip), %rax	#, tmp147
	movq	%rax, %rsi	# tmp147,
	leaq	.LC27(%rip), %rax	#, tmp148
	movq	%rax, %rdi	# tmp148,
	call	func0	#
# problem145.c:51:     assert(func0("2/4", "4/2") == 1);
	cmpl	$1, %eax	#, _11
	je	.L25	#,
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp149
	movq	%rax, %rcx	# tmp149,
	movl	$51, %edx	#,
	leaq	.LC2(%rip), %rax	#, tmp150
	movq	%rax, %rsi	# tmp150,
	leaq	.LC29(%rip), %rax	#, tmp151
	movq	%rax, %rdi	# tmp151,
	call	__assert_fail@PLT	#
.L25:
# problem145.c:52:     assert(func0("1/5", "5/1") == 1);
	leaq	.LC0(%rip), %rax	#, tmp152
	movq	%rax, %rsi	# tmp152,
	leaq	.LC1(%rip), %rax	#, tmp153
	movq	%rax, %rdi	# tmp153,
	call	func0	#
# problem145.c:52:     assert(func0("1/5", "5/1") == 1);
	cmpl	$1, %eax	#, _12
	je	.L26	#,
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp154
	movq	%rax, %rcx	# tmp154,
	movl	$52, %edx	#,
	leaq	.LC2(%rip), %rax	#, tmp155
	movq	%rax, %rsi	# tmp155,
	leaq	.LC3(%rip), %rax	#, tmp156
	movq	%rax, %rdi	# tmp156,
	call	__assert_fail@PLT	#
.L26:
# problem145.c:53:     assert(func0("1/5", "1/5") == 0);
	leaq	.LC1(%rip), %rax	#, tmp157
	movq	%rax, %rsi	# tmp157,
	leaq	.LC1(%rip), %rax	#, tmp158
	movq	%rax, %rdi	# tmp158,
	call	func0	#
# problem145.c:53:     assert(func0("1/5", "1/5") == 0);
	testl	%eax, %eax	# _13
	je	.L27	#,
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp159
	movq	%rax, %rcx	# tmp159,
	movl	$53, %edx	#,
	leaq	.LC2(%rip), %rax	#, tmp160
	movq	%rax, %rsi	# tmp160,
	leaq	.LC30(%rip), %rax	#, tmp161
	movq	%rax, %rdi	# tmp161,
	call	__assert_fail@PLT	#
.L27:
# problem145.c:55:     return 0;
	movl	$0, %eax	#, _41
# problem145.c:56: }
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE7:
	.size	main, .-main
	.section	.rodata
	.type	__PRETTY_FUNCTION__.0, @object
	.size	__PRETTY_FUNCTION__.0, 5
__PRETTY_FUNCTION__.0:
	.string	"main"
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
