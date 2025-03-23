	.file	"problem161.c"
# GNU C17 (Ubuntu 11.4.0-1ubuntu1~22.04) version 11.4.0 (x86_64-linux-gnu)
#	compiled by GNU C version 11.4.0, GMP version 6.2.1, MPFR version 4.1.0, MPC version 1.2.1, isl version isl-0.24-GMP

# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed: -mtune=generic -march=x86-64 -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection -fcf-protection
	.text
	.section	.rodata
.LC0:
	.string	"**"
.LC1:
	.string	"*"
.LC2:
	.string	"//"
.LC3:
	.string	"+"
.LC4:
	.string	"-"
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
	subq	$80, %rsp	#,
	movq	%rdi, -56(%rbp)	# operato, operato
	movq	%rsi, -64(%rbp)	# operand, operand
	movl	%edx, -68(%rbp)	# operato_size, operato_size
	movl	%ecx, -72(%rbp)	# operand_size, operand_size
# problem161.c:7:     int *num = (int*)malloc(operand_size * sizeof(int));
	movl	-72(%rbp), %eax	# operand_size, tmp435
	cltq
	salq	$2, %rax	#, _2
	movq	%rax, %rdi	# _2,
	call	malloc@PLT	#
	movq	%rax, -16(%rbp)	# tmp436, num
# problem161.c:8:     int *posto = (int*)malloc(operand_size * sizeof(int));
	movl	-72(%rbp), %eax	# operand_size, tmp437
	cltq
	salq	$2, %rax	#, _4
	movq	%rax, %rdi	# _4,
	call	malloc@PLT	#
	movq	%rax, -8(%rbp)	# tmp438, posto
# problem161.c:9:     for (int i = 0; i < operand_size; i++) {
	movl	$0, -36(%rbp)	#, i
# problem161.c:9:     for (int i = 0; i < operand_size; i++) {
	jmp	.L2	#
.L3:
# problem161.c:10:         num[i] = operand[i];
	movl	-36(%rbp), %eax	# i, tmp439
	cltq
	leaq	0(,%rax,4), %rdx	#, _6
	movq	-64(%rbp), %rax	# operand, tmp440
	addq	%rdx, %rax	# _6, _7
# problem161.c:10:         num[i] = operand[i];
	movl	-36(%rbp), %edx	# i, tmp441
	movslq	%edx, %rdx	# tmp441, _8
	leaq	0(,%rdx,4), %rcx	#, _9
	movq	-16(%rbp), %rdx	# num, tmp442
	addq	%rcx, %rdx	# _9, _10
# problem161.c:10:         num[i] = operand[i];
	movl	(%rax), %eax	# *_7, _11
# problem161.c:10:         num[i] = operand[i];
	movl	%eax, (%rdx)	# _11, *_10
# problem161.c:11:         posto[i] = i;
	movl	-36(%rbp), %eax	# i, tmp443
	cltq
	leaq	0(,%rax,4), %rdx	#, _13
	movq	-8(%rbp), %rax	# posto, tmp444
	addq	%rax, %rdx	# tmp444, _14
# problem161.c:11:         posto[i] = i;
	movl	-36(%rbp), %eax	# i, tmp445
	movl	%eax, (%rdx)	# tmp445, *_14
# problem161.c:9:     for (int i = 0; i < operand_size; i++) {
	addl	$1, -36(%rbp)	#, i
.L2:
# problem161.c:9:     for (int i = 0; i < operand_size; i++) {
	movl	-36(%rbp), %eax	# i, tmp446
	cmpl	-72(%rbp), %eax	# operand_size, tmp446
	jl	.L3	#,
# problem161.c:13:     for (int i = 0; i < operato_size; i++) {
	movl	$0, -32(%rbp)	#, i
# problem161.c:13:     for (int i = 0; i < operato_size; i++) {
	jmp	.L4	#
.L10:
# problem161.c:14:         if (strcmp(operato[i], "**") == 0) {
	movl	-32(%rbp), %eax	# i, tmp447
	cltq
	leaq	0(,%rax,8), %rdx	#, _16
	movq	-56(%rbp), %rax	# operato, tmp448
	addq	%rdx, %rax	# _16, _17
# problem161.c:14:         if (strcmp(operato[i], "**") == 0) {
	movq	(%rax), %rax	# *_17, _18
	leaq	.LC0(%rip), %rdx	#, tmp449
	movq	%rdx, %rsi	# tmp449,
	movq	%rax, %rdi	# _18,
	call	strcmp@PLT	#
# problem161.c:14:         if (strcmp(operato[i], "**") == 0) {
	testl	%eax, %eax	# _19
	jne	.L5	#,
# problem161.c:15:             while (posto[posto[i]] != posto[i]) posto[i] = posto[posto[i]];
	jmp	.L6	#
.L7:
# problem161.c:15:             while (posto[posto[i]] != posto[i]) posto[i] = posto[posto[i]];
	movl	-32(%rbp), %eax	# i, tmp450
	cltq
	leaq	0(,%rax,4), %rdx	#, _21
	movq	-8(%rbp), %rax	# posto, tmp451
	addq	%rdx, %rax	# _21, _22
	movl	(%rax), %eax	# *_22, _23
	cltq
# problem161.c:15:             while (posto[posto[i]] != posto[i]) posto[i] = posto[posto[i]];
	leaq	0(,%rax,4), %rdx	#, _25
	movq	-8(%rbp), %rax	# posto, tmp452
	addq	%rdx, %rax	# _25, _26
# problem161.c:15:             while (posto[posto[i]] != posto[i]) posto[i] = posto[posto[i]];
	movl	-32(%rbp), %edx	# i, tmp453
	movslq	%edx, %rdx	# tmp453, _27
	leaq	0(,%rdx,4), %rcx	#, _28
	movq	-8(%rbp), %rdx	# posto, tmp454
	addq	%rcx, %rdx	# _28, _29
# problem161.c:15:             while (posto[posto[i]] != posto[i]) posto[i] = posto[posto[i]];
	movl	(%rax), %eax	# *_26, _30
# problem161.c:15:             while (posto[posto[i]] != posto[i]) posto[i] = posto[posto[i]];
	movl	%eax, (%rdx)	# _30, *_29
.L6:
# problem161.c:15:             while (posto[posto[i]] != posto[i]) posto[i] = posto[posto[i]];
	movl	-32(%rbp), %eax	# i, tmp455
	cltq
	leaq	0(,%rax,4), %rdx	#, _32
	movq	-8(%rbp), %rax	# posto, tmp456
	addq	%rdx, %rax	# _32, _33
	movl	(%rax), %eax	# *_33, _34
	cltq
# problem161.c:15:             while (posto[posto[i]] != posto[i]) posto[i] = posto[posto[i]];
	leaq	0(,%rax,4), %rdx	#, _36
	movq	-8(%rbp), %rax	# posto, tmp457
	addq	%rdx, %rax	# _36, _37
	movl	(%rax), %edx	# *_37, _38
# problem161.c:15:             while (posto[posto[i]] != posto[i]) posto[i] = posto[posto[i]];
	movl	-32(%rbp), %eax	# i, tmp458
	cltq
	leaq	0(,%rax,4), %rcx	#, _40
	movq	-8(%rbp), %rax	# posto, tmp459
	addq	%rcx, %rax	# _40, _41
	movl	(%rax), %eax	# *_41, _42
# problem161.c:15:             while (posto[posto[i]] != posto[i]) posto[i] = posto[posto[i]];
	cmpl	%eax, %edx	# _42, _38
	jne	.L7	#,
# problem161.c:16:             while (posto[posto[i + 1]] != posto[i + 1]) posto[i + 1] = posto[posto[i + 1]];
	jmp	.L8	#
.L9:
# problem161.c:16:             while (posto[posto[i + 1]] != posto[i + 1]) posto[i + 1] = posto[posto[i + 1]];
	movl	-32(%rbp), %eax	# i, tmp460
	cltq
	addq	$1, %rax	#, _44
	leaq	0(,%rax,4), %rdx	#, _45
	movq	-8(%rbp), %rax	# posto, tmp461
	addq	%rdx, %rax	# _45, _46
	movl	(%rax), %eax	# *_46, _47
	cltq
# problem161.c:16:             while (posto[posto[i + 1]] != posto[i + 1]) posto[i + 1] = posto[posto[i + 1]];
	leaq	0(,%rax,4), %rdx	#, _49
	movq	-8(%rbp), %rax	# posto, tmp462
	addq	%rdx, %rax	# _49, _50
# problem161.c:16:             while (posto[posto[i + 1]] != posto[i + 1]) posto[i + 1] = posto[posto[i + 1]];
	movl	-32(%rbp), %edx	# i, tmp463
	movslq	%edx, %rdx	# tmp463, _51
	addq	$1, %rdx	#, _52
	leaq	0(,%rdx,4), %rcx	#, _53
	movq	-8(%rbp), %rdx	# posto, tmp464
	addq	%rcx, %rdx	# _53, _54
# problem161.c:16:             while (posto[posto[i + 1]] != posto[i + 1]) posto[i + 1] = posto[posto[i + 1]];
	movl	(%rax), %eax	# *_50, _55
# problem161.c:16:             while (posto[posto[i + 1]] != posto[i + 1]) posto[i + 1] = posto[posto[i + 1]];
	movl	%eax, (%rdx)	# _55, *_54
.L8:
# problem161.c:16:             while (posto[posto[i + 1]] != posto[i + 1]) posto[i + 1] = posto[posto[i + 1]];
	movl	-32(%rbp), %eax	# i, tmp465
	cltq
	addq	$1, %rax	#, _57
	leaq	0(,%rax,4), %rdx	#, _58
	movq	-8(%rbp), %rax	# posto, tmp466
	addq	%rdx, %rax	# _58, _59
	movl	(%rax), %eax	# *_59, _60
	cltq
# problem161.c:16:             while (posto[posto[i + 1]] != posto[i + 1]) posto[i + 1] = posto[posto[i + 1]];
	leaq	0(,%rax,4), %rdx	#, _62
	movq	-8(%rbp), %rax	# posto, tmp467
	addq	%rdx, %rax	# _62, _63
	movl	(%rax), %edx	# *_63, _64
# problem161.c:16:             while (posto[posto[i + 1]] != posto[i + 1]) posto[i + 1] = posto[posto[i + 1]];
	movl	-32(%rbp), %eax	# i, tmp468
	cltq
	addq	$1, %rax	#, _66
	leaq	0(,%rax,4), %rcx	#, _67
	movq	-8(%rbp), %rax	# posto, tmp469
	addq	%rcx, %rax	# _67, _68
	movl	(%rax), %eax	# *_68, _69
# problem161.c:16:             while (posto[posto[i + 1]] != posto[i + 1]) posto[i + 1] = posto[posto[i + 1]];
	cmpl	%eax, %edx	# _69, _64
	jne	.L9	#,
# problem161.c:17:             num[posto[i]] = pow(num[posto[i]], num[posto[i + 1]]);
	movl	-32(%rbp), %eax	# i, tmp470
	cltq
	addq	$1, %rax	#, _71
	leaq	0(,%rax,4), %rdx	#, _72
	movq	-8(%rbp), %rax	# posto, tmp471
	addq	%rdx, %rax	# _72, _73
	movl	(%rax), %eax	# *_73, _74
	cltq
# problem161.c:17:             num[posto[i]] = pow(num[posto[i]], num[posto[i + 1]]);
	leaq	0(,%rax,4), %rdx	#, _76
	movq	-16(%rbp), %rax	# num, tmp472
	addq	%rdx, %rax	# _76, _77
	movl	(%rax), %eax	# *_77, _78
# problem161.c:17:             num[posto[i]] = pow(num[posto[i]], num[posto[i + 1]]);
	pxor	%xmm0, %xmm0	# _79
	cvtsi2sdl	%eax, %xmm0	# _78, _79
# problem161.c:17:             num[posto[i]] = pow(num[posto[i]], num[posto[i + 1]]);
	movl	-32(%rbp), %eax	# i, tmp473
	cltq
	leaq	0(,%rax,4), %rdx	#, _81
	movq	-8(%rbp), %rax	# posto, tmp474
	addq	%rdx, %rax	# _81, _82
	movl	(%rax), %eax	# *_82, _83
	cltq
# problem161.c:17:             num[posto[i]] = pow(num[posto[i]], num[posto[i + 1]]);
	leaq	0(,%rax,4), %rdx	#, _85
	movq	-16(%rbp), %rax	# num, tmp475
	addq	%rdx, %rax	# _85, _86
	movl	(%rax), %eax	# *_86, _87
# problem161.c:17:             num[posto[i]] = pow(num[posto[i]], num[posto[i + 1]]);
	pxor	%xmm2, %xmm2	# _88
	cvtsi2sdl	%eax, %xmm2	# _87, _88
	movq	%xmm2, %rax	# _88, _88
	movapd	%xmm0, %xmm1	# _79,
	movq	%rax, %xmm0	# _88,
	call	pow@PLT	#
# problem161.c:17:             num[posto[i]] = pow(num[posto[i]], num[posto[i + 1]]);
	movl	-32(%rbp), %eax	# i, tmp476
	cltq
	leaq	0(,%rax,4), %rdx	#, _91
	movq	-8(%rbp), %rax	# posto, tmp477
	addq	%rdx, %rax	# _91, _92
	movl	(%rax), %eax	# *_92, _93
	cltq
# problem161.c:17:             num[posto[i]] = pow(num[posto[i]], num[posto[i + 1]]);
	leaq	0(,%rax,4), %rdx	#, _95
	movq	-16(%rbp), %rax	# num, tmp478
	addq	%rax, %rdx	# tmp478, _96
# problem161.c:17:             num[posto[i]] = pow(num[posto[i]], num[posto[i + 1]]);
	cvttsd2sil	%xmm0, %eax	# _89, _97
	movl	%eax, (%rdx)	# _97, *_96
# problem161.c:18:             posto[i + 1] = posto[i];
	movl	-32(%rbp), %eax	# i, tmp479
	cltq
	leaq	0(,%rax,4), %rdx	#, _99
	movq	-8(%rbp), %rax	# posto, tmp480
	addq	%rdx, %rax	# _99, _100
# problem161.c:18:             posto[i + 1] = posto[i];
	movl	-32(%rbp), %edx	# i, tmp481
	movslq	%edx, %rdx	# tmp481, _101
	addq	$1, %rdx	#, _102
	leaq	0(,%rdx,4), %rcx	#, _103
	movq	-8(%rbp), %rdx	# posto, tmp482
	addq	%rcx, %rdx	# _103, _104
# problem161.c:18:             posto[i + 1] = posto[i];
	movl	(%rax), %eax	# *_100, _105
# problem161.c:18:             posto[i + 1] = posto[i];
	movl	%eax, (%rdx)	# _105, *_104
.L5:
# problem161.c:13:     for (int i = 0; i < operato_size; i++) {
	addl	$1, -32(%rbp)	#, i
.L4:
# problem161.c:13:     for (int i = 0; i < operato_size; i++) {
	movl	-32(%rbp), %eax	# i, tmp483
	cmpl	-68(%rbp), %eax	# operato_size, tmp483
	jl	.L10	#,
# problem161.c:21:     for (int i = 0; i < operato_size; i++) {
	movl	$0, -28(%rbp)	#, i
# problem161.c:21:     for (int i = 0; i < operato_size; i++) {
	jmp	.L11	#
.L20:
# problem161.c:22:         if (strcmp(operato[i], "*") == 0 || strcmp(operato[i], "//") == 0) {
	movl	-28(%rbp), %eax	# i, tmp484
	cltq
	leaq	0(,%rax,8), %rdx	#, _107
	movq	-56(%rbp), %rax	# operato, tmp485
	addq	%rdx, %rax	# _107, _108
# problem161.c:22:         if (strcmp(operato[i], "*") == 0 || strcmp(operato[i], "//") == 0) {
	movq	(%rax), %rax	# *_108, _109
	leaq	.LC1(%rip), %rdx	#, tmp486
	movq	%rdx, %rsi	# tmp486,
	movq	%rax, %rdi	# _109,
	call	strcmp@PLT	#
# problem161.c:22:         if (strcmp(operato[i], "*") == 0 || strcmp(operato[i], "//") == 0) {
	testl	%eax, %eax	# _110
	je	.L14	#,
# problem161.c:22:         if (strcmp(operato[i], "*") == 0 || strcmp(operato[i], "//") == 0) {
	movl	-28(%rbp), %eax	# i, tmp487
	cltq
	leaq	0(,%rax,8), %rdx	#, _112
	movq	-56(%rbp), %rax	# operato, tmp488
	addq	%rdx, %rax	# _112, _113
# problem161.c:22:         if (strcmp(operato[i], "*") == 0 || strcmp(operato[i], "//") == 0) {
	movq	(%rax), %rax	# *_113, _114
	leaq	.LC2(%rip), %rdx	#, tmp489
	movq	%rdx, %rsi	# tmp489,
	movq	%rax, %rdi	# _114,
	call	strcmp@PLT	#
# problem161.c:22:         if (strcmp(operato[i], "*") == 0 || strcmp(operato[i], "//") == 0) {
	testl	%eax, %eax	# _115
	jne	.L13	#,
# problem161.c:23:             while (posto[posto[i]] != posto[i]) posto[i] = posto[posto[i]];
	jmp	.L14	#
.L15:
# problem161.c:23:             while (posto[posto[i]] != posto[i]) posto[i] = posto[posto[i]];
	movl	-28(%rbp), %eax	# i, tmp490
	cltq
	leaq	0(,%rax,4), %rdx	#, _117
	movq	-8(%rbp), %rax	# posto, tmp491
	addq	%rdx, %rax	# _117, _118
	movl	(%rax), %eax	# *_118, _119
	cltq
# problem161.c:23:             while (posto[posto[i]] != posto[i]) posto[i] = posto[posto[i]];
	leaq	0(,%rax,4), %rdx	#, _121
	movq	-8(%rbp), %rax	# posto, tmp492
	addq	%rdx, %rax	# _121, _122
# problem161.c:23:             while (posto[posto[i]] != posto[i]) posto[i] = posto[posto[i]];
	movl	-28(%rbp), %edx	# i, tmp493
	movslq	%edx, %rdx	# tmp493, _123
	leaq	0(,%rdx,4), %rcx	#, _124
	movq	-8(%rbp), %rdx	# posto, tmp494
	addq	%rcx, %rdx	# _124, _125
# problem161.c:23:             while (posto[posto[i]] != posto[i]) posto[i] = posto[posto[i]];
	movl	(%rax), %eax	# *_122, _126
# problem161.c:23:             while (posto[posto[i]] != posto[i]) posto[i] = posto[posto[i]];
	movl	%eax, (%rdx)	# _126, *_125
.L14:
# problem161.c:23:             while (posto[posto[i]] != posto[i]) posto[i] = posto[posto[i]];
	movl	-28(%rbp), %eax	# i, tmp495
	cltq
	leaq	0(,%rax,4), %rdx	#, _128
	movq	-8(%rbp), %rax	# posto, tmp496
	addq	%rdx, %rax	# _128, _129
	movl	(%rax), %eax	# *_129, _130
	cltq
# problem161.c:23:             while (posto[posto[i]] != posto[i]) posto[i] = posto[posto[i]];
	leaq	0(,%rax,4), %rdx	#, _132
	movq	-8(%rbp), %rax	# posto, tmp497
	addq	%rdx, %rax	# _132, _133
	movl	(%rax), %edx	# *_133, _134
# problem161.c:23:             while (posto[posto[i]] != posto[i]) posto[i] = posto[posto[i]];
	movl	-28(%rbp), %eax	# i, tmp498
	cltq
	leaq	0(,%rax,4), %rcx	#, _136
	movq	-8(%rbp), %rax	# posto, tmp499
	addq	%rcx, %rax	# _136, _137
	movl	(%rax), %eax	# *_137, _138
# problem161.c:23:             while (posto[posto[i]] != posto[i]) posto[i] = posto[posto[i]];
	cmpl	%eax, %edx	# _138, _134
	jne	.L15	#,
# problem161.c:24:             while (posto[posto[i + 1]] != posto[i + 1]) posto[i + 1] = posto[posto[i + 1]];
	jmp	.L16	#
.L17:
# problem161.c:24:             while (posto[posto[i + 1]] != posto[i + 1]) posto[i + 1] = posto[posto[i + 1]];
	movl	-28(%rbp), %eax	# i, tmp500
	cltq
	addq	$1, %rax	#, _140
	leaq	0(,%rax,4), %rdx	#, _141
	movq	-8(%rbp), %rax	# posto, tmp501
	addq	%rdx, %rax	# _141, _142
	movl	(%rax), %eax	# *_142, _143
	cltq
# problem161.c:24:             while (posto[posto[i + 1]] != posto[i + 1]) posto[i + 1] = posto[posto[i + 1]];
	leaq	0(,%rax,4), %rdx	#, _145
	movq	-8(%rbp), %rax	# posto, tmp502
	addq	%rdx, %rax	# _145, _146
# problem161.c:24:             while (posto[posto[i + 1]] != posto[i + 1]) posto[i + 1] = posto[posto[i + 1]];
	movl	-28(%rbp), %edx	# i, tmp503
	movslq	%edx, %rdx	# tmp503, _147
	addq	$1, %rdx	#, _148
	leaq	0(,%rdx,4), %rcx	#, _149
	movq	-8(%rbp), %rdx	# posto, tmp504
	addq	%rcx, %rdx	# _149, _150
# problem161.c:24:             while (posto[posto[i + 1]] != posto[i + 1]) posto[i + 1] = posto[posto[i + 1]];
	movl	(%rax), %eax	# *_146, _151
# problem161.c:24:             while (posto[posto[i + 1]] != posto[i + 1]) posto[i + 1] = posto[posto[i + 1]];
	movl	%eax, (%rdx)	# _151, *_150
.L16:
# problem161.c:24:             while (posto[posto[i + 1]] != posto[i + 1]) posto[i + 1] = posto[posto[i + 1]];
	movl	-28(%rbp), %eax	# i, tmp505
	cltq
	addq	$1, %rax	#, _153
	leaq	0(,%rax,4), %rdx	#, _154
	movq	-8(%rbp), %rax	# posto, tmp506
	addq	%rdx, %rax	# _154, _155
	movl	(%rax), %eax	# *_155, _156
	cltq
# problem161.c:24:             while (posto[posto[i + 1]] != posto[i + 1]) posto[i + 1] = posto[posto[i + 1]];
	leaq	0(,%rax,4), %rdx	#, _158
	movq	-8(%rbp), %rax	# posto, tmp507
	addq	%rdx, %rax	# _158, _159
	movl	(%rax), %edx	# *_159, _160
# problem161.c:24:             while (posto[posto[i + 1]] != posto[i + 1]) posto[i + 1] = posto[posto[i + 1]];
	movl	-28(%rbp), %eax	# i, tmp508
	cltq
	addq	$1, %rax	#, _162
	leaq	0(,%rax,4), %rcx	#, _163
	movq	-8(%rbp), %rax	# posto, tmp509
	addq	%rcx, %rax	# _163, _164
	movl	(%rax), %eax	# *_164, _165
# problem161.c:24:             while (posto[posto[i + 1]] != posto[i + 1]) posto[i + 1] = posto[posto[i + 1]];
	cmpl	%eax, %edx	# _165, _160
	jne	.L17	#,
# problem161.c:25:             if (strcmp(operato[i], "*") == 0)
	movl	-28(%rbp), %eax	# i, tmp510
	cltq
	leaq	0(,%rax,8), %rdx	#, _167
	movq	-56(%rbp), %rax	# operato, tmp511
	addq	%rdx, %rax	# _167, _168
# problem161.c:25:             if (strcmp(operato[i], "*") == 0)
	movq	(%rax), %rax	# *_168, _169
	leaq	.LC1(%rip), %rdx	#, tmp512
	movq	%rdx, %rsi	# tmp512,
	movq	%rax, %rdi	# _169,
	call	strcmp@PLT	#
# problem161.c:25:             if (strcmp(operato[i], "*") == 0)
	testl	%eax, %eax	# _170
	jne	.L18	#,
# problem161.c:26:                 num[posto[i]] *= num[posto[i + 1]];
	movl	-28(%rbp), %eax	# i, tmp513
	cltq
	leaq	0(,%rax,4), %rdx	#, _172
	movq	-8(%rbp), %rax	# posto, tmp514
	addq	%rdx, %rax	# _172, _173
	movl	(%rax), %eax	# *_173, _174
# problem161.c:26:                 num[posto[i]] *= num[posto[i + 1]];
	cltq
	leaq	0(,%rax,4), %rdx	#, _176
	movq	-16(%rbp), %rax	# num, tmp515
	addq	%rdx, %rax	# _176, _177
	movl	(%rax), %ecx	# *_177, _178
# problem161.c:26:                 num[posto[i]] *= num[posto[i + 1]];
	movl	-28(%rbp), %eax	# i, tmp516
	cltq
	addq	$1, %rax	#, _180
	leaq	0(,%rax,4), %rdx	#, _181
	movq	-8(%rbp), %rax	# posto, tmp517
	addq	%rdx, %rax	# _181, _182
	movl	(%rax), %eax	# *_182, _183
	cltq
# problem161.c:26:                 num[posto[i]] *= num[posto[i + 1]];
	leaq	0(,%rax,4), %rdx	#, _185
	movq	-16(%rbp), %rax	# num, tmp518
	addq	%rdx, %rax	# _185, _186
	movl	(%rax), %eax	# *_186, _187
# problem161.c:26:                 num[posto[i]] *= num[posto[i + 1]];
	movl	-28(%rbp), %edx	# i, tmp519
	movslq	%edx, %rdx	# tmp519, _188
	leaq	0(,%rdx,4), %rsi	#, _189
	movq	-8(%rbp), %rdx	# posto, tmp520
	addq	%rsi, %rdx	# _189, _190
	movl	(%rdx), %edx	# *_190, _191
# problem161.c:26:                 num[posto[i]] *= num[posto[i + 1]];
	movslq	%edx, %rdx	# _191, _192
	leaq	0(,%rdx,4), %rsi	#, _193
	movq	-16(%rbp), %rdx	# num, tmp521
	addq	%rsi, %rdx	# _193, _194
	imull	%ecx, %eax	# _178, _195
	movl	%eax, (%rdx)	# _195, *_194
	jmp	.L19	#
.L18:
# problem161.c:28:                 num[posto[i]] /= num[posto[i + 1]];
	movl	-28(%rbp), %eax	# i, tmp522
	cltq
	leaq	0(,%rax,4), %rdx	#, _197
	movq	-8(%rbp), %rax	# posto, tmp523
	addq	%rdx, %rax	# _197, _198
	movl	(%rax), %eax	# *_198, _199
# problem161.c:28:                 num[posto[i]] /= num[posto[i + 1]];
	cltq
	leaq	0(,%rax,4), %rdx	#, _201
	movq	-16(%rbp), %rax	# num, tmp524
	addq	%rdx, %rax	# _201, _202
	movl	(%rax), %eax	# *_202, _203
# problem161.c:28:                 num[posto[i]] /= num[posto[i + 1]];
	movl	-28(%rbp), %edx	# i, tmp525
	movslq	%edx, %rdx	# tmp525, _204
	addq	$1, %rdx	#, _205
	leaq	0(,%rdx,4), %rcx	#, _206
	movq	-8(%rbp), %rdx	# posto, tmp526
	addq	%rcx, %rdx	# _206, _207
	movl	(%rdx), %edx	# *_207, _208
	movslq	%edx, %rdx	# _208, _209
# problem161.c:28:                 num[posto[i]] /= num[posto[i + 1]];
	leaq	0(,%rdx,4), %rcx	#, _210
	movq	-16(%rbp), %rdx	# num, tmp527
	addq	%rcx, %rdx	# _210, _211
	movl	(%rdx), %edi	# *_211, _212
# problem161.c:28:                 num[posto[i]] /= num[posto[i + 1]];
	movl	-28(%rbp), %ecx	# i, tmp528
	movslq	%ecx, %rcx	# tmp528, _213
	leaq	0(,%rcx,4), %rsi	#, _214
	movq	-8(%rbp), %rcx	# posto, tmp529
	addq	%rsi, %rcx	# _214, _215
	movl	(%rcx), %ecx	# *_215, _216
# problem161.c:28:                 num[posto[i]] /= num[posto[i + 1]];
	movslq	%ecx, %rcx	# _216, _217
	leaq	0(,%rcx,4), %rsi	#, _218
	movq	-16(%rbp), %rcx	# num, tmp530
	addq	%rsi, %rcx	# _218, _219
	cltd
	idivl	%edi	# _212
	movl	%eax, (%rcx)	# _220, *_219
.L19:
# problem161.c:29:             posto[i + 1] = posto[i];
	movl	-28(%rbp), %eax	# i, tmp533
	cltq
	leaq	0(,%rax,4), %rdx	#, _222
	movq	-8(%rbp), %rax	# posto, tmp534
	addq	%rdx, %rax	# _222, _223
# problem161.c:29:             posto[i + 1] = posto[i];
	movl	-28(%rbp), %edx	# i, tmp535
	movslq	%edx, %rdx	# tmp535, _224
	addq	$1, %rdx	#, _225
	leaq	0(,%rdx,4), %rcx	#, _226
	movq	-8(%rbp), %rdx	# posto, tmp536
	addq	%rcx, %rdx	# _226, _227
# problem161.c:29:             posto[i + 1] = posto[i];
	movl	(%rax), %eax	# *_223, _228
# problem161.c:29:             posto[i + 1] = posto[i];
	movl	%eax, (%rdx)	# _228, *_227
.L13:
# problem161.c:21:     for (int i = 0; i < operato_size; i++) {
	addl	$1, -28(%rbp)	#, i
.L11:
# problem161.c:21:     for (int i = 0; i < operato_size; i++) {
	movl	-28(%rbp), %eax	# i, tmp537
	cmpl	-68(%rbp), %eax	# operato_size, tmp537
	jl	.L20	#,
# problem161.c:32:     for (int i = 0; i < operato_size; i++) {
	movl	$0, -24(%rbp)	#, i
# problem161.c:32:     for (int i = 0; i < operato_size; i++) {
	jmp	.L21	#
.L30:
# problem161.c:33:         if (strcmp(operato[i], "+") == 0 || strcmp(operato[i], "-") == 0) {
	movl	-24(%rbp), %eax	# i, tmp538
	cltq
	leaq	0(,%rax,8), %rdx	#, _230
	movq	-56(%rbp), %rax	# operato, tmp539
	addq	%rdx, %rax	# _230, _231
# problem161.c:33:         if (strcmp(operato[i], "+") == 0 || strcmp(operato[i], "-") == 0) {
	movq	(%rax), %rax	# *_231, _232
	leaq	.LC3(%rip), %rdx	#, tmp540
	movq	%rdx, %rsi	# tmp540,
	movq	%rax, %rdi	# _232,
	call	strcmp@PLT	#
# problem161.c:33:         if (strcmp(operato[i], "+") == 0 || strcmp(operato[i], "-") == 0) {
	testl	%eax, %eax	# _233
	je	.L24	#,
# problem161.c:33:         if (strcmp(operato[i], "+") == 0 || strcmp(operato[i], "-") == 0) {
	movl	-24(%rbp), %eax	# i, tmp541
	cltq
	leaq	0(,%rax,8), %rdx	#, _235
	movq	-56(%rbp), %rax	# operato, tmp542
	addq	%rdx, %rax	# _235, _236
# problem161.c:33:         if (strcmp(operato[i], "+") == 0 || strcmp(operato[i], "-") == 0) {
	movq	(%rax), %rax	# *_236, _237
	leaq	.LC4(%rip), %rdx	#, tmp543
	movq	%rdx, %rsi	# tmp543,
	movq	%rax, %rdi	# _237,
	call	strcmp@PLT	#
# problem161.c:33:         if (strcmp(operato[i], "+") == 0 || strcmp(operato[i], "-") == 0) {
	testl	%eax, %eax	# _238
	jne	.L23	#,
# problem161.c:34:             while (posto[posto[i]] != posto[i]) posto[i] = posto[posto[i]];
	jmp	.L24	#
.L25:
# problem161.c:34:             while (posto[posto[i]] != posto[i]) posto[i] = posto[posto[i]];
	movl	-24(%rbp), %eax	# i, tmp544
	cltq
	leaq	0(,%rax,4), %rdx	#, _240
	movq	-8(%rbp), %rax	# posto, tmp545
	addq	%rdx, %rax	# _240, _241
	movl	(%rax), %eax	# *_241, _242
	cltq
# problem161.c:34:             while (posto[posto[i]] != posto[i]) posto[i] = posto[posto[i]];
	leaq	0(,%rax,4), %rdx	#, _244
	movq	-8(%rbp), %rax	# posto, tmp546
	addq	%rdx, %rax	# _244, _245
# problem161.c:34:             while (posto[posto[i]] != posto[i]) posto[i] = posto[posto[i]];
	movl	-24(%rbp), %edx	# i, tmp547
	movslq	%edx, %rdx	# tmp547, _246
	leaq	0(,%rdx,4), %rcx	#, _247
	movq	-8(%rbp), %rdx	# posto, tmp548
	addq	%rcx, %rdx	# _247, _248
# problem161.c:34:             while (posto[posto[i]] != posto[i]) posto[i] = posto[posto[i]];
	movl	(%rax), %eax	# *_245, _249
# problem161.c:34:             while (posto[posto[i]] != posto[i]) posto[i] = posto[posto[i]];
	movl	%eax, (%rdx)	# _249, *_248
.L24:
# problem161.c:34:             while (posto[posto[i]] != posto[i]) posto[i] = posto[posto[i]];
	movl	-24(%rbp), %eax	# i, tmp549
	cltq
	leaq	0(,%rax,4), %rdx	#, _251
	movq	-8(%rbp), %rax	# posto, tmp550
	addq	%rdx, %rax	# _251, _252
	movl	(%rax), %eax	# *_252, _253
	cltq
# problem161.c:34:             while (posto[posto[i]] != posto[i]) posto[i] = posto[posto[i]];
	leaq	0(,%rax,4), %rdx	#, _255
	movq	-8(%rbp), %rax	# posto, tmp551
	addq	%rdx, %rax	# _255, _256
	movl	(%rax), %edx	# *_256, _257
# problem161.c:34:             while (posto[posto[i]] != posto[i]) posto[i] = posto[posto[i]];
	movl	-24(%rbp), %eax	# i, tmp552
	cltq
	leaq	0(,%rax,4), %rcx	#, _259
	movq	-8(%rbp), %rax	# posto, tmp553
	addq	%rcx, %rax	# _259, _260
	movl	(%rax), %eax	# *_260, _261
# problem161.c:34:             while (posto[posto[i]] != posto[i]) posto[i] = posto[posto[i]];
	cmpl	%eax, %edx	# _261, _257
	jne	.L25	#,
# problem161.c:35:             while (posto[posto[i + 1]] != posto[i + 1]) posto[i + 1] = posto[posto[i + 1]];
	jmp	.L26	#
.L27:
# problem161.c:35:             while (posto[posto[i + 1]] != posto[i + 1]) posto[i + 1] = posto[posto[i + 1]];
	movl	-24(%rbp), %eax	# i, tmp554
	cltq
	addq	$1, %rax	#, _263
	leaq	0(,%rax,4), %rdx	#, _264
	movq	-8(%rbp), %rax	# posto, tmp555
	addq	%rdx, %rax	# _264, _265
	movl	(%rax), %eax	# *_265, _266
	cltq
# problem161.c:35:             while (posto[posto[i + 1]] != posto[i + 1]) posto[i + 1] = posto[posto[i + 1]];
	leaq	0(,%rax,4), %rdx	#, _268
	movq	-8(%rbp), %rax	# posto, tmp556
	addq	%rdx, %rax	# _268, _269
# problem161.c:35:             while (posto[posto[i + 1]] != posto[i + 1]) posto[i + 1] = posto[posto[i + 1]];
	movl	-24(%rbp), %edx	# i, tmp557
	movslq	%edx, %rdx	# tmp557, _270
	addq	$1, %rdx	#, _271
	leaq	0(,%rdx,4), %rcx	#, _272
	movq	-8(%rbp), %rdx	# posto, tmp558
	addq	%rcx, %rdx	# _272, _273
# problem161.c:35:             while (posto[posto[i + 1]] != posto[i + 1]) posto[i + 1] = posto[posto[i + 1]];
	movl	(%rax), %eax	# *_269, _274
# problem161.c:35:             while (posto[posto[i + 1]] != posto[i + 1]) posto[i + 1] = posto[posto[i + 1]];
	movl	%eax, (%rdx)	# _274, *_273
.L26:
# problem161.c:35:             while (posto[posto[i + 1]] != posto[i + 1]) posto[i + 1] = posto[posto[i + 1]];
	movl	-24(%rbp), %eax	# i, tmp559
	cltq
	addq	$1, %rax	#, _276
	leaq	0(,%rax,4), %rdx	#, _277
	movq	-8(%rbp), %rax	# posto, tmp560
	addq	%rdx, %rax	# _277, _278
	movl	(%rax), %eax	# *_278, _279
	cltq
# problem161.c:35:             while (posto[posto[i + 1]] != posto[i + 1]) posto[i + 1] = posto[posto[i + 1]];
	leaq	0(,%rax,4), %rdx	#, _281
	movq	-8(%rbp), %rax	# posto, tmp561
	addq	%rdx, %rax	# _281, _282
	movl	(%rax), %edx	# *_282, _283
# problem161.c:35:             while (posto[posto[i + 1]] != posto[i + 1]) posto[i + 1] = posto[posto[i + 1]];
	movl	-24(%rbp), %eax	# i, tmp562
	cltq
	addq	$1, %rax	#, _285
	leaq	0(,%rax,4), %rcx	#, _286
	movq	-8(%rbp), %rax	# posto, tmp563
	addq	%rcx, %rax	# _286, _287
	movl	(%rax), %eax	# *_287, _288
# problem161.c:35:             while (posto[posto[i + 1]] != posto[i + 1]) posto[i + 1] = posto[posto[i + 1]];
	cmpl	%eax, %edx	# _288, _283
	jne	.L27	#,
# problem161.c:36:             if (strcmp(operato[i], "+") == 0)
	movl	-24(%rbp), %eax	# i, tmp564
	cltq
	leaq	0(,%rax,8), %rdx	#, _290
	movq	-56(%rbp), %rax	# operato, tmp565
	addq	%rdx, %rax	# _290, _291
# problem161.c:36:             if (strcmp(operato[i], "+") == 0)
	movq	(%rax), %rax	# *_291, _292
	leaq	.LC3(%rip), %rdx	#, tmp566
	movq	%rdx, %rsi	# tmp566,
	movq	%rax, %rdi	# _292,
	call	strcmp@PLT	#
# problem161.c:36:             if (strcmp(operato[i], "+") == 0)
	testl	%eax, %eax	# _293
	jne	.L28	#,
# problem161.c:37:                 num[posto[i]] += num[posto[i + 1]];
	movl	-24(%rbp), %eax	# i, tmp567
	cltq
	leaq	0(,%rax,4), %rdx	#, _295
	movq	-8(%rbp), %rax	# posto, tmp568
	addq	%rdx, %rax	# _295, _296
	movl	(%rax), %eax	# *_296, _297
# problem161.c:37:                 num[posto[i]] += num[posto[i + 1]];
	cltq
	leaq	0(,%rax,4), %rdx	#, _299
	movq	-16(%rbp), %rax	# num, tmp569
	addq	%rdx, %rax	# _299, _300
	movl	(%rax), %ecx	# *_300, _301
# problem161.c:37:                 num[posto[i]] += num[posto[i + 1]];
	movl	-24(%rbp), %eax	# i, tmp570
	cltq
	addq	$1, %rax	#, _303
	leaq	0(,%rax,4), %rdx	#, _304
	movq	-8(%rbp), %rax	# posto, tmp571
	addq	%rdx, %rax	# _304, _305
	movl	(%rax), %eax	# *_305, _306
	cltq
# problem161.c:37:                 num[posto[i]] += num[posto[i + 1]];
	leaq	0(,%rax,4), %rdx	#, _308
	movq	-16(%rbp), %rax	# num, tmp572
	addq	%rdx, %rax	# _308, _309
	movl	(%rax), %edx	# *_309, _310
# problem161.c:37:                 num[posto[i]] += num[posto[i + 1]];
	movl	-24(%rbp), %eax	# i, tmp573
	cltq
	leaq	0(,%rax,4), %rsi	#, _312
	movq	-8(%rbp), %rax	# posto, tmp574
	addq	%rsi, %rax	# _312, _313
	movl	(%rax), %eax	# *_313, _314
# problem161.c:37:                 num[posto[i]] += num[posto[i + 1]];
	cltq
	leaq	0(,%rax,4), %rsi	#, _316
	movq	-16(%rbp), %rax	# num, tmp575
	addq	%rsi, %rax	# _316, _317
	addl	%ecx, %edx	# _301, _318
	movl	%edx, (%rax)	# _318, *_317
	jmp	.L29	#
.L28:
# problem161.c:39:                 num[posto[i]] -= num[posto[i + 1]];
	movl	-24(%rbp), %eax	# i, tmp576
	cltq
	leaq	0(,%rax,4), %rdx	#, _320
	movq	-8(%rbp), %rax	# posto, tmp577
	addq	%rdx, %rax	# _320, _321
	movl	(%rax), %eax	# *_321, _322
# problem161.c:39:                 num[posto[i]] -= num[posto[i + 1]];
	cltq
	leaq	0(,%rax,4), %rdx	#, _324
	movq	-16(%rbp), %rax	# num, tmp578
	addq	%rdx, %rax	# _324, _325
	movl	(%rax), %edx	# *_325, _326
# problem161.c:39:                 num[posto[i]] -= num[posto[i + 1]];
	movl	-24(%rbp), %eax	# i, tmp579
	cltq
	addq	$1, %rax	#, _328
	leaq	0(,%rax,4), %rcx	#, _329
	movq	-8(%rbp), %rax	# posto, tmp580
	addq	%rcx, %rax	# _329, _330
	movl	(%rax), %eax	# *_330, _331
	cltq
# problem161.c:39:                 num[posto[i]] -= num[posto[i + 1]];
	leaq	0(,%rax,4), %rcx	#, _333
	movq	-16(%rbp), %rax	# num, tmp581
	addq	%rcx, %rax	# _333, _334
	movl	(%rax), %ecx	# *_334, _335
# problem161.c:39:                 num[posto[i]] -= num[posto[i + 1]];
	movl	-24(%rbp), %eax	# i, tmp582
	cltq
	leaq	0(,%rax,4), %rsi	#, _337
	movq	-8(%rbp), %rax	# posto, tmp583
	addq	%rsi, %rax	# _337, _338
	movl	(%rax), %eax	# *_338, _339
# problem161.c:39:                 num[posto[i]] -= num[posto[i + 1]];
	cltq
	leaq	0(,%rax,4), %rsi	#, _341
	movq	-16(%rbp), %rax	# num, tmp584
	addq	%rsi, %rax	# _341, _342
	subl	%ecx, %edx	# _335, _343
	movl	%edx, (%rax)	# _343, *_342
.L29:
# problem161.c:40:             posto[i + 1] = posto[i];
	movl	-24(%rbp), %eax	# i, tmp585
	cltq
	leaq	0(,%rax,4), %rdx	#, _345
	movq	-8(%rbp), %rax	# posto, tmp586
	addq	%rdx, %rax	# _345, _346
# problem161.c:40:             posto[i + 1] = posto[i];
	movl	-24(%rbp), %edx	# i, tmp587
	movslq	%edx, %rdx	# tmp587, _347
	addq	$1, %rdx	#, _348
	leaq	0(,%rdx,4), %rcx	#, _349
	movq	-8(%rbp), %rdx	# posto, tmp588
	addq	%rcx, %rdx	# _349, _350
# problem161.c:40:             posto[i + 1] = posto[i];
	movl	(%rax), %eax	# *_346, _351
# problem161.c:40:             posto[i + 1] = posto[i];
	movl	%eax, (%rdx)	# _351, *_350
.L23:
# problem161.c:32:     for (int i = 0; i < operato_size; i++) {
	addl	$1, -24(%rbp)	#, i
.L21:
# problem161.c:32:     for (int i = 0; i < operato_size; i++) {
	movl	-24(%rbp), %eax	# i, tmp589
	cmpl	-68(%rbp), %eax	# operato_size, tmp589
	jl	.L30	#,
# problem161.c:43:     int result = num[0];
	movq	-16(%rbp), %rax	# num, tmp590
	movl	(%rax), %eax	# *num_374, tmp591
	movl	%eax, -20(%rbp)	# tmp591, result
# problem161.c:44:     free(num);
	movq	-16(%rbp), %rax	# num, tmp592
	movq	%rax, %rdi	# tmp592,
	call	free@PLT	#
# problem161.c:45:     free(posto);
	movq	-8(%rbp), %rax	# posto, tmp593
	movq	%rax, %rdi	# tmp593,
	call	free@PLT	#
# problem161.c:46:     return result;
	movl	-20(%rbp), %eax	# result, _385
# problem161.c:47: }
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE6:
	.size	func0, .-func0
	.section	.rodata
.LC5:
	.string	"problem161.c"
	.align 8
.LC6:
	.string	"func0(operators1, operands1, 3, 4) == 37"
	.align 8
.LC7:
	.string	"func0(operators2, operands2, 3, 4) == 9"
	.align 8
.LC8:
	.string	"func0(operators3, operands3, 2, 3) == 8"
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
	addq	$-128, %rsp	#,
# problem161.c:53: int main() {
	movq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp111
	movq	%rax, -8(%rbp)	# tmp111, D.4215
	xorl	%eax, %eax	# tmp111
# problem161.c:54:     const char *operators1[] = {"**", "*", "+"};
	leaq	.LC0(%rip), %rax	#, tmp87
	movq	%rax, -64(%rbp)	# tmp87, operators1[0]
	leaq	.LC1(%rip), %rax	#, tmp88
	movq	%rax, -56(%rbp)	# tmp88, operators1[1]
	leaq	.LC3(%rip), %rax	#, tmp89
	movq	%rax, -48(%rbp)	# tmp89, operators1[2]
# problem161.c:55:     int operands1[] = {2, 3, 4, 5};
	movl	$2, -112(%rbp)	#, operands1[0]
	movl	$3, -108(%rbp)	#, operands1[1]
	movl	$4, -104(%rbp)	#, operands1[2]
	movl	$5, -100(%rbp)	#, operands1[3]
# problem161.c:56:     assert(func0(operators1, operands1, 3, 4) == 37);
	leaq	-112(%rbp), %rsi	#, tmp90
	leaq	-64(%rbp), %rax	#, tmp91
	movl	$4, %ecx	#,
	movl	$3, %edx	#,
	movq	%rax, %rdi	# tmp91,
	call	func0	#
	cmpl	$37, %eax	#, _1
	je	.L33	#,
# problem161.c:56:     assert(func0(operators1, operands1, 3, 4) == 37);
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp92
	movq	%rax, %rcx	# tmp92,
	movl	$56, %edx	#,
	leaq	.LC5(%rip), %rax	#, tmp93
	movq	%rax, %rsi	# tmp93,
	leaq	.LC6(%rip), %rax	#, tmp94
	movq	%rax, %rdi	# tmp94,
	call	__assert_fail@PLT	#
.L33:
# problem161.c:58:     const char *operators2[] = {"+", "*", "-"};
	leaq	.LC3(%rip), %rax	#, tmp95
	movq	%rax, -32(%rbp)	# tmp95, operators2[0]
	leaq	.LC1(%rip), %rax	#, tmp96
	movq	%rax, -24(%rbp)	# tmp96, operators2[1]
	leaq	.LC4(%rip), %rax	#, tmp97
	movq	%rax, -16(%rbp)	# tmp97, operators2[2]
# problem161.c:59:     int operands2[] = {2, 3, 4, 5};
	movl	$2, -96(%rbp)	#, operands2[0]
	movl	$3, -92(%rbp)	#, operands2[1]
	movl	$4, -88(%rbp)	#, operands2[2]
	movl	$5, -84(%rbp)	#, operands2[3]
# problem161.c:60:     assert(func0(operators2, operands2, 3, 4) == 9);
	leaq	-96(%rbp), %rsi	#, tmp98
	leaq	-32(%rbp), %rax	#, tmp99
	movl	$4, %ecx	#,
	movl	$3, %edx	#,
	movq	%rax, %rdi	# tmp99,
	call	func0	#
	cmpl	$9, %eax	#, _2
	je	.L34	#,
# problem161.c:60:     assert(func0(operators2, operands2, 3, 4) == 9);
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp100
	movq	%rax, %rcx	# tmp100,
	movl	$60, %edx	#,
	leaq	.LC5(%rip), %rax	#, tmp101
	movq	%rax, %rsi	# tmp101,
	leaq	.LC7(%rip), %rax	#, tmp102
	movq	%rax, %rdi	# tmp102,
	call	__assert_fail@PLT	#
.L34:
# problem161.c:62:     const char *operators3[] = {"//", "*"};
	leaq	.LC2(%rip), %rax	#, tmp103
	movq	%rax, -80(%rbp)	# tmp103, operators3[0]
	leaq	.LC1(%rip), %rax	#, tmp104
	movq	%rax, -72(%rbp)	# tmp104, operators3[1]
# problem161.c:63:     int operands3[] = {7, 3, 4};
	movl	$7, -124(%rbp)	#, operands3[0]
	movl	$3, -120(%rbp)	#, operands3[1]
	movl	$4, -116(%rbp)	#, operands3[2]
# problem161.c:64:     assert(func0(operators3, operands3, 2, 3) == 8);
	leaq	-124(%rbp), %rsi	#, tmp105
	leaq	-80(%rbp), %rax	#, tmp106
	movl	$3, %ecx	#,
	movl	$2, %edx	#,
	movq	%rax, %rdi	# tmp106,
	call	func0	#
	cmpl	$8, %eax	#, _3
	je	.L35	#,
# problem161.c:64:     assert(func0(operators3, operands3, 2, 3) == 8);
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp107
	movq	%rax, %rcx	# tmp107,
	movl	$64, %edx	#,
	leaq	.LC5(%rip), %rax	#, tmp108
	movq	%rax, %rsi	# tmp108,
	leaq	.LC8(%rip), %rax	#, tmp109
	movq	%rax, %rdi	# tmp109,
	call	__assert_fail@PLT	#
.L35:
# problem161.c:66:     return 0;
	movl	$0, %eax	#, _30
# problem161.c:67: }
	movq	-8(%rbp), %rdx	# D.4215, tmp112
	subq	%fs:40, %rdx	# MEM[(<address-space-1> long unsigned int *)40B], tmp112
	je	.L37	#,
	call	__stack_chk_fail@PLT	#
.L37:
	leave	
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
