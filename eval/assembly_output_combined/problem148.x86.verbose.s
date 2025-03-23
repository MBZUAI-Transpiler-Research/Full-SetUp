	.file	"problem148.c"
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
	pushq	%rbx	#
	subq	$104, %rsp	#,
	.cfi_offset 3, -24
	movl	%edi, -100(%rbp)	# n, n
# problem148.c:5:     int *a = (int *)malloc(n * sizeof(int));
	movl	-100(%rbp), %eax	# n, tmp246
	cltq
	salq	$2, %rax	#, _2
	movq	%rax, %rdi	# _2,
	call	malloc@PLT	#
	movq	%rax, -40(%rbp)	# tmp247, a
# problem148.c:6:     int **sum = (int **)malloc((n + 1) * sizeof(int *));
	movl	-100(%rbp), %eax	# n, tmp248
	addl	$1, %eax	#, _3
	cltq
# problem148.c:6:     int **sum = (int **)malloc((n + 1) * sizeof(int *));
	salq	$3, %rax	#, _5
	movq	%rax, %rdi	# _5,
	call	malloc@PLT	#
	movq	%rax, -32(%rbp)	# tmp249, sum
# problem148.c:7:     int **sum2 = (int **)malloc((n + 1) * sizeof(int *));
	movl	-100(%rbp), %eax	# n, tmp250
	addl	$1, %eax	#, _6
	cltq
# problem148.c:7:     int **sum2 = (int **)malloc((n + 1) * sizeof(int *));
	salq	$3, %rax	#, _8
	movq	%rax, %rdi	# _8,
	call	malloc@PLT	#
	movq	%rax, -24(%rbp)	# tmp251, sum2
# problem148.c:8:     for (int i = 0; i <= n; i++) {
	movl	$0, -84(%rbp)	#, i
# problem148.c:8:     for (int i = 0; i <= n; i++) {
	jmp	.L2	#
.L3:
# problem148.c:9:         sum[i] = (int *)calloc(3, sizeof(int));
	movl	-84(%rbp), %eax	# i, tmp252
	cltq
	leaq	0(,%rax,8), %rdx	#, _10
	movq	-32(%rbp), %rax	# sum, tmp253
	leaq	(%rdx,%rax), %rbx	#, _11
# problem148.c:9:         sum[i] = (int *)calloc(3, sizeof(int));
	movl	$4, %esi	#,
	movl	$3, %edi	#,
	call	calloc@PLT	#
# problem148.c:9:         sum[i] = (int *)calloc(3, sizeof(int));
	movq	%rax, (%rbx)	# _12, *_11
# problem148.c:10:         sum2[i] = (int *)calloc(3, sizeof(int));
	movl	-84(%rbp), %eax	# i, tmp255
	cltq
	leaq	0(,%rax,8), %rdx	#, _14
	movq	-24(%rbp), %rax	# sum2, tmp256
	leaq	(%rdx,%rax), %rbx	#, _15
# problem148.c:10:         sum2[i] = (int *)calloc(3, sizeof(int));
	movl	$4, %esi	#,
	movl	$3, %edi	#,
	call	calloc@PLT	#
# problem148.c:10:         sum2[i] = (int *)calloc(3, sizeof(int));
	movq	%rax, (%rbx)	# _16, *_15
# problem148.c:8:     for (int i = 0; i <= n; i++) {
	addl	$1, -84(%rbp)	#, i
.L2:
# problem148.c:8:     for (int i = 0; i <= n; i++) {
	movl	-84(%rbp), %eax	# i, tmp258
	cmpl	-100(%rbp), %eax	# n, tmp258
	jle	.L3	#,
# problem148.c:12:     sum[0][0] = sum[0][1] = sum[0][2] = 0;
	movq	-32(%rbp), %rax	# sum, tmp259
	movq	(%rax), %rax	# *sum_188, _17
# problem148.c:12:     sum[0][0] = sum[0][1] = sum[0][2] = 0;
	leaq	8(%rax), %rdx	#, _18
# problem148.c:12:     sum[0][0] = sum[0][1] = sum[0][2] = 0;
	movl	$0, (%rdx)	#, *_18
# problem148.c:12:     sum[0][0] = sum[0][1] = sum[0][2] = 0;
	movq	-32(%rbp), %rax	# sum, tmp260
	movq	(%rax), %rax	# *sum_188, _19
# problem148.c:12:     sum[0][0] = sum[0][1] = sum[0][2] = 0;
	addq	$4, %rax	#, _20
# problem148.c:12:     sum[0][0] = sum[0][1] = sum[0][2] = 0;
	movl	(%rdx), %edx	# *_18, _21
# problem148.c:12:     sum[0][0] = sum[0][1] = sum[0][2] = 0;
	movl	%edx, (%rax)	# _21, *_20
# problem148.c:12:     sum[0][0] = sum[0][1] = sum[0][2] = 0;
	movq	-32(%rbp), %rdx	# sum, tmp261
	movq	(%rdx), %rdx	# *sum_188, _22
# problem148.c:12:     sum[0][0] = sum[0][1] = sum[0][2] = 0;
	movl	(%rax), %eax	# *_20, _23
# problem148.c:12:     sum[0][0] = sum[0][1] = sum[0][2] = 0;
	movl	%eax, (%rdx)	# _23, *_22
# problem148.c:13:     sum2[0][0] = sum2[0][1] = sum2[0][2] = 0;
	movq	-24(%rbp), %rax	# sum2, tmp262
	movq	(%rax), %rax	# *sum2_190, _24
# problem148.c:13:     sum2[0][0] = sum2[0][1] = sum2[0][2] = 0;
	leaq	8(%rax), %rdx	#, _25
# problem148.c:13:     sum2[0][0] = sum2[0][1] = sum2[0][2] = 0;
	movl	$0, (%rdx)	#, *_25
# problem148.c:13:     sum2[0][0] = sum2[0][1] = sum2[0][2] = 0;
	movq	-24(%rbp), %rax	# sum2, tmp263
	movq	(%rax), %rax	# *sum2_190, _26
# problem148.c:13:     sum2[0][0] = sum2[0][1] = sum2[0][2] = 0;
	addq	$4, %rax	#, _27
# problem148.c:13:     sum2[0][0] = sum2[0][1] = sum2[0][2] = 0;
	movl	(%rdx), %edx	# *_25, _28
# problem148.c:13:     sum2[0][0] = sum2[0][1] = sum2[0][2] = 0;
	movl	%edx, (%rax)	# _28, *_27
# problem148.c:13:     sum2[0][0] = sum2[0][1] = sum2[0][2] = 0;
	movq	-24(%rbp), %rdx	# sum2, tmp264
	movq	(%rdx), %rdx	# *sum2_190, _29
# problem148.c:13:     sum2[0][0] = sum2[0][1] = sum2[0][2] = 0;
	movl	(%rax), %eax	# *_27, _30
# problem148.c:13:     sum2[0][0] = sum2[0][1] = sum2[0][2] = 0;
	movl	%eax, (%rdx)	# _30, *_29
# problem148.c:14:     for (int i = 1; i <= n; i++) {
	movl	$1, -80(%rbp)	#, i
# problem148.c:14:     for (int i = 1; i <= n; i++) {
	jmp	.L4	#
.L7:
# problem148.c:15:         a[i - 1] = (i * i - i + 1) % 3;
	movl	-80(%rbp), %eax	# i, tmp265
	imull	%eax, %eax	# tmp265, _31
# problem148.c:15:         a[i - 1] = (i * i - i + 1) % 3;
	subl	-80(%rbp), %eax	# i, _32
# problem148.c:15:         a[i - 1] = (i * i - i + 1) % 3;
	leal	1(%rax), %ecx	#, _33
# problem148.c:15:         a[i - 1] = (i * i - i + 1) % 3;
	movl	-80(%rbp), %eax	# i, tmp266
	cltq
	salq	$2, %rax	#, _35
	leaq	-4(%rax), %rdx	#, _36
	movq	-40(%rbp), %rax	# a, tmp267
	leaq	(%rdx,%rax), %rsi	#, _37
# problem148.c:15:         a[i - 1] = (i * i - i + 1) % 3;
	movslq	%ecx, %rax	# _33, tmp268
	imulq	$1431655766, %rax, %rax	#, tmp268, tmp269
	shrq	$32, %rax	#, tmp269
	movq	%rax, %rdx	# tmp269, tmp270
	movl	%ecx, %eax	# _33, tmp271
	sarl	$31, %eax	#, tmp271
	subl	%eax, %edx	# tmp271, _38
	movl	%edx, %eax	# _38, tmp272
	addl	%eax, %eax	# tmp272
	addl	%edx, %eax	# _38, tmp272
	subl	%eax, %ecx	# tmp272, _33
	movl	%ecx, %edx	# _33, _38
# problem148.c:15:         a[i - 1] = (i * i - i + 1) % 3;
	movl	%edx, (%rsi)	# _38, *_37
# problem148.c:16:         for (int j = 0; j < 3; j++) {
	movl	$0, -76(%rbp)	#, j
# problem148.c:16:         for (int j = 0; j < 3; j++) {
	jmp	.L5	#
.L6:
# problem148.c:17:             sum[i][j] = sum[i - 1][j];
	movl	-80(%rbp), %eax	# i, tmp273
	cltq
	salq	$3, %rax	#, _40
	leaq	-8(%rax), %rdx	#, _41
	movq	-32(%rbp), %rax	# sum, tmp274
	addq	%rdx, %rax	# _41, _42
	movq	(%rax), %rax	# *_42, _43
# problem148.c:17:             sum[i][j] = sum[i - 1][j];
	movl	-76(%rbp), %edx	# j, tmp275
	movslq	%edx, %rdx	# tmp275, _44
	salq	$2, %rdx	#, _45
	addq	%rdx, %rax	# _45, _46
# problem148.c:17:             sum[i][j] = sum[i - 1][j];
	movl	-80(%rbp), %edx	# i, tmp276
	movslq	%edx, %rdx	# tmp276, _47
	leaq	0(,%rdx,8), %rcx	#, _48
	movq	-32(%rbp), %rdx	# sum, tmp277
	addq	%rcx, %rdx	# _48, _49
	movq	(%rdx), %rdx	# *_49, _50
# problem148.c:17:             sum[i][j] = sum[i - 1][j];
	movl	-76(%rbp), %ecx	# j, tmp278
	movslq	%ecx, %rcx	# tmp278, _51
	salq	$2, %rcx	#, _52
	addq	%rcx, %rdx	# _52, _53
# problem148.c:17:             sum[i][j] = sum[i - 1][j];
	movl	(%rax), %eax	# *_46, _54
# problem148.c:17:             sum[i][j] = sum[i - 1][j];
	movl	%eax, (%rdx)	# _54, *_53
# problem148.c:16:         for (int j = 0; j < 3; j++) {
	addl	$1, -76(%rbp)	#, j
.L5:
# problem148.c:16:         for (int j = 0; j < 3; j++) {
	cmpl	$2, -76(%rbp)	#, j
	jle	.L6	#,
# problem148.c:19:         sum[i][a[i - 1]] += 1;
	movl	-80(%rbp), %eax	# i, tmp279
	cltq
	leaq	0(,%rax,8), %rdx	#, _56
	movq	-32(%rbp), %rax	# sum, tmp280
	addq	%rdx, %rax	# _56, _57
	movq	(%rax), %rax	# *_57, _58
# problem148.c:19:         sum[i][a[i - 1]] += 1;
	movl	-80(%rbp), %edx	# i, tmp281
	movslq	%edx, %rdx	# tmp281, _59
	salq	$2, %rdx	#, _60
	leaq	-4(%rdx), %rcx	#, _61
	movq	-40(%rbp), %rdx	# a, tmp282
	addq	%rcx, %rdx	# _61, _62
	movl	(%rdx), %edx	# *_62, _63
# problem148.c:19:         sum[i][a[i - 1]] += 1;
	movslq	%edx, %rdx	# _63, _64
	salq	$2, %rdx	#, _65
	addq	%rdx, %rax	# _65, _66
	movl	(%rax), %edx	# *_66, _67
# problem148.c:19:         sum[i][a[i - 1]] += 1;
	movl	-80(%rbp), %eax	# i, tmp283
	cltq
	leaq	0(,%rax,8), %rcx	#, _69
	movq	-32(%rbp), %rax	# sum, tmp284
	addq	%rcx, %rax	# _69, _70
	movq	(%rax), %rax	# *_70, _71
# problem148.c:19:         sum[i][a[i - 1]] += 1;
	movl	-80(%rbp), %ecx	# i, tmp285
	movslq	%ecx, %rcx	# tmp285, _72
	salq	$2, %rcx	#, _73
	leaq	-4(%rcx), %rsi	#, _74
	movq	-40(%rbp), %rcx	# a, tmp286
	addq	%rsi, %rcx	# _74, _75
	movl	(%rcx), %ecx	# *_75, _76
# problem148.c:19:         sum[i][a[i - 1]] += 1;
	movslq	%ecx, %rcx	# _76, _77
	salq	$2, %rcx	#, _78
	addq	%rcx, %rax	# _78, _79
# problem148.c:19:         sum[i][a[i - 1]] += 1;
	addl	$1, %edx	#, _80
	movl	%edx, (%rax)	# _80, *_79
# problem148.c:14:     for (int i = 1; i <= n; i++) {
	addl	$1, -80(%rbp)	#, i
.L4:
# problem148.c:14:     for (int i = 1; i <= n; i++) {
	movl	-80(%rbp), %eax	# i, tmp287
	cmpl	-100(%rbp), %eax	# n, tmp287
	jle	.L7	#,
# problem148.c:21:     for (int times = 1; times < 3; times++) {
	movl	$1, -72(%rbp)	#, times
# problem148.c:21:     for (int times = 1; times < 3; times++) {
	jmp	.L8	#
.L20:
# problem148.c:22:         for (int i = 1; i <= n; i++) {
	movl	$1, -68(%rbp)	#, i
# problem148.c:22:         for (int i = 1; i <= n; i++) {
	jmp	.L9	#
.L15:
# problem148.c:23:             for (int j = 0; j < 3; j++) {
	movl	$0, -64(%rbp)	#, j
# problem148.c:23:             for (int j = 0; j < 3; j++) {
	jmp	.L10	#
.L11:
# problem148.c:24:                 sum2[i][j] = sum2[i - 1][j];
	movl	-68(%rbp), %eax	# i, tmp288
	cltq
	salq	$3, %rax	#, _82
	leaq	-8(%rax), %rdx	#, _83
	movq	-24(%rbp), %rax	# sum2, tmp289
	addq	%rdx, %rax	# _83, _84
	movq	(%rax), %rax	# *_84, _85
# problem148.c:24:                 sum2[i][j] = sum2[i - 1][j];
	movl	-64(%rbp), %edx	# j, tmp290
	movslq	%edx, %rdx	# tmp290, _86
	salq	$2, %rdx	#, _87
	addq	%rdx, %rax	# _87, _88
# problem148.c:24:                 sum2[i][j] = sum2[i - 1][j];
	movl	-68(%rbp), %edx	# i, tmp291
	movslq	%edx, %rdx	# tmp291, _89
	leaq	0(,%rdx,8), %rcx	#, _90
	movq	-24(%rbp), %rdx	# sum2, tmp292
	addq	%rcx, %rdx	# _90, _91
	movq	(%rdx), %rdx	# *_91, _92
# problem148.c:24:                 sum2[i][j] = sum2[i - 1][j];
	movl	-64(%rbp), %ecx	# j, tmp293
	movslq	%ecx, %rcx	# tmp293, _93
	salq	$2, %rcx	#, _94
	addq	%rcx, %rdx	# _94, _95
# problem148.c:24:                 sum2[i][j] = sum2[i - 1][j];
	movl	(%rax), %eax	# *_88, _96
# problem148.c:24:                 sum2[i][j] = sum2[i - 1][j];
	movl	%eax, (%rdx)	# _96, *_95
# problem148.c:23:             for (int j = 0; j < 3; j++) {
	addl	$1, -64(%rbp)	#, j
.L10:
# problem148.c:23:             for (int j = 0; j < 3; j++) {
	cmpl	$2, -64(%rbp)	#, j
	jle	.L11	#,
# problem148.c:26:             if (i >= 1) {
	cmpl	$0, -68(%rbp)	#, i
	jle	.L12	#,
# problem148.c:27:                 for (int j = 0; j <= 2; j++) {
	movl	$0, -60(%rbp)	#, j
# problem148.c:27:                 for (int j = 0; j <= 2; j++) {
	jmp	.L13	#
.L14:
# problem148.c:28:                     sum2[i][(a[i - 1] + j) % 3] += sum[i - 1][j];
	movl	-68(%rbp), %eax	# i, tmp294
	cltq
	leaq	0(,%rax,8), %rdx	#, _98
	movq	-24(%rbp), %rax	# sum2, tmp295
	addq	%rdx, %rax	# _98, _99
	movq	(%rax), %rsi	# *_99, _100
# problem148.c:28:                     sum2[i][(a[i - 1] + j) % 3] += sum[i - 1][j];
	movl	-68(%rbp), %eax	# i, tmp296
	cltq
	salq	$2, %rax	#, _102
	leaq	-4(%rax), %rdx	#, _103
	movq	-40(%rbp), %rax	# a, tmp297
	addq	%rdx, %rax	# _103, _104
	movl	(%rax), %edx	# *_104, _105
# problem148.c:28:                     sum2[i][(a[i - 1] + j) % 3] += sum[i - 1][j];
	movl	-60(%rbp), %eax	# j, tmp298
	leal	(%rdx,%rax), %ecx	#, _106
# problem148.c:28:                     sum2[i][(a[i - 1] + j) % 3] += sum[i - 1][j];
	movslq	%ecx, %rax	# _106, tmp299
	imulq	$1431655766, %rax, %rax	#, tmp299, tmp300
	shrq	$32, %rax	#, tmp301
	movl	%ecx, %edx	# _106, tmp302
	sarl	$31, %edx	#, tmp302
	subl	%edx, %eax	# tmp302, _219
	movl	%eax, %edx	# _219, tmp303
	addl	%edx, %edx	# tmp303
	addl	%eax, %edx	# _219, tmp303
	movl	%ecx, %eax	# _106, _106
	subl	%edx, %eax	# tmp303, _106
# problem148.c:28:                     sum2[i][(a[i - 1] + j) % 3] += sum[i - 1][j];
	movslq	%eax, %rdx	# _219, _107
	salq	$2, %rdx	#, _108
	addq	%rsi, %rdx	# _100, _109
	movl	(%rdx), %ecx	# *_109, _110
# problem148.c:28:                     sum2[i][(a[i - 1] + j) % 3] += sum[i - 1][j];
	movl	-68(%rbp), %edx	# i, tmp304
	movslq	%edx, %rdx	# tmp304, _111
	salq	$3, %rdx	#, _112
	leaq	-8(%rdx), %rsi	#, _113
	movq	-32(%rbp), %rdx	# sum, tmp305
	addq	%rsi, %rdx	# _113, _114
	movq	(%rdx), %rdx	# *_114, _115
# problem148.c:28:                     sum2[i][(a[i - 1] + j) % 3] += sum[i - 1][j];
	movl	-60(%rbp), %esi	# j, tmp306
	movslq	%esi, %rsi	# tmp306, _116
	salq	$2, %rsi	#, _117
	addq	%rsi, %rdx	# _117, _118
	movl	(%rdx), %edx	# *_118, _119
# problem148.c:28:                     sum2[i][(a[i - 1] + j) % 3] += sum[i - 1][j];
	movl	-68(%rbp), %esi	# i, tmp307
	movslq	%esi, %rsi	# tmp307, _120
	leaq	0(,%rsi,8), %rdi	#, _121
	movq	-24(%rbp), %rsi	# sum2, tmp308
	addq	%rdi, %rsi	# _121, _122
	movq	(%rsi), %rsi	# *_122, _123
# problem148.c:28:                     sum2[i][(a[i - 1] + j) % 3] += sum[i - 1][j];
	cltq
	salq	$2, %rax	#, _125
	addq	%rsi, %rax	# _123, _126
# problem148.c:28:                     sum2[i][(a[i - 1] + j) % 3] += sum[i - 1][j];
	addl	%ecx, %edx	# _110, _127
	movl	%edx, (%rax)	# _127, *_126
# problem148.c:27:                 for (int j = 0; j <= 2; j++) {
	addl	$1, -60(%rbp)	#, j
.L13:
# problem148.c:27:                 for (int j = 0; j <= 2; j++) {
	cmpl	$2, -60(%rbp)	#, j
	jle	.L14	#,
.L12:
# problem148.c:22:         for (int i = 1; i <= n; i++) {
	addl	$1, -68(%rbp)	#, i
.L9:
# problem148.c:22:         for (int i = 1; i <= n; i++) {
	movl	-68(%rbp), %eax	# i, tmp309
	cmpl	-100(%rbp), %eax	# n, tmp309
	jle	.L15	#,
# problem148.c:32:         for (int i = 0; i <= n; i++) {
	movl	$0, -56(%rbp)	#, i
# problem148.c:32:         for (int i = 0; i <= n; i++) {
	jmp	.L16	#
.L19:
# problem148.c:33:             for (int j = 0; j < 3; j++) {
	movl	$0, -52(%rbp)	#, j
# problem148.c:33:             for (int j = 0; j < 3; j++) {
	jmp	.L17	#
.L18:
# problem148.c:34:                 sum[i][j] = sum2[i][j];
	movl	-56(%rbp), %eax	# i, tmp310
	cltq
	leaq	0(,%rax,8), %rdx	#, _129
	movq	-24(%rbp), %rax	# sum2, tmp311
	addq	%rdx, %rax	# _129, _130
	movq	(%rax), %rax	# *_130, _131
# problem148.c:34:                 sum[i][j] = sum2[i][j];
	movl	-52(%rbp), %edx	# j, tmp312
	movslq	%edx, %rdx	# tmp312, _132
	salq	$2, %rdx	#, _133
	addq	%rdx, %rax	# _133, _134
# problem148.c:34:                 sum[i][j] = sum2[i][j];
	movl	-56(%rbp), %edx	# i, tmp313
	movslq	%edx, %rdx	# tmp313, _135
	leaq	0(,%rdx,8), %rcx	#, _136
	movq	-32(%rbp), %rdx	# sum, tmp314
	addq	%rcx, %rdx	# _136, _137
	movq	(%rdx), %rdx	# *_137, _138
# problem148.c:34:                 sum[i][j] = sum2[i][j];
	movl	-52(%rbp), %ecx	# j, tmp315
	movslq	%ecx, %rcx	# tmp315, _139
	salq	$2, %rcx	#, _140
	addq	%rcx, %rdx	# _140, _141
# problem148.c:34:                 sum[i][j] = sum2[i][j];
	movl	(%rax), %eax	# *_134, _142
# problem148.c:34:                 sum[i][j] = sum2[i][j];
	movl	%eax, (%rdx)	# _142, *_141
# problem148.c:35:                 sum2[i][j] = 0;
	movl	-56(%rbp), %eax	# i, tmp316
	cltq
	leaq	0(,%rax,8), %rdx	#, _144
	movq	-24(%rbp), %rax	# sum2, tmp317
	addq	%rdx, %rax	# _144, _145
	movq	(%rax), %rax	# *_145, _146
# problem148.c:35:                 sum2[i][j] = 0;
	movl	-52(%rbp), %edx	# j, tmp318
	movslq	%edx, %rdx	# tmp318, _147
	salq	$2, %rdx	#, _148
	addq	%rdx, %rax	# _148, _149
# problem148.c:35:                 sum2[i][j] = 0;
	movl	$0, (%rax)	#, *_149
# problem148.c:33:             for (int j = 0; j < 3; j++) {
	addl	$1, -52(%rbp)	#, j
.L17:
# problem148.c:33:             for (int j = 0; j < 3; j++) {
	cmpl	$2, -52(%rbp)	#, j
	jle	.L18	#,
# problem148.c:32:         for (int i = 0; i <= n; i++) {
	addl	$1, -56(%rbp)	#, i
.L16:
# problem148.c:32:         for (int i = 0; i <= n; i++) {
	movl	-56(%rbp), %eax	# i, tmp319
	cmpl	-100(%rbp), %eax	# n, tmp319
	jle	.L19	#,
# problem148.c:21:     for (int times = 1; times < 3; times++) {
	addl	$1, -72(%rbp)	#, times
.L8:
# problem148.c:21:     for (int times = 1; times < 3; times++) {
	cmpl	$2, -72(%rbp)	#, times
	jle	.L20	#,
# problem148.c:40:     int result = sum[n][0];
	movl	-100(%rbp), %eax	# n, tmp320
	cltq
	leaq	0(,%rax,8), %rdx	#, _151
	movq	-32(%rbp), %rax	# sum, tmp321
	addq	%rdx, %rax	# _151, _152
	movq	(%rax), %rax	# *_152, _153
# problem148.c:40:     int result = sum[n][0];
	movl	(%rax), %eax	# *_153, tmp322
	movl	%eax, -44(%rbp)	# tmp322, result
# problem148.c:41:     for (int i = 0; i <= n; ++i) {
	movl	$0, -48(%rbp)	#, i
# problem148.c:41:     for (int i = 0; i <= n; ++i) {
	jmp	.L21	#
.L22:
# problem148.c:42:         free(sum[i]);
	movl	-48(%rbp), %eax	# i, tmp323
	cltq
	leaq	0(,%rax,8), %rdx	#, _155
	movq	-32(%rbp), %rax	# sum, tmp324
	addq	%rdx, %rax	# _155, _156
# problem148.c:42:         free(sum[i]);
	movq	(%rax), %rax	# *_156, _157
	movq	%rax, %rdi	# _157,
	call	free@PLT	#
# problem148.c:43:         free(sum2[i]);
	movl	-48(%rbp), %eax	# i, tmp325
	cltq
	leaq	0(,%rax,8), %rdx	#, _159
	movq	-24(%rbp), %rax	# sum2, tmp326
	addq	%rdx, %rax	# _159, _160
# problem148.c:43:         free(sum2[i]);
	movq	(%rax), %rax	# *_160, _161
	movq	%rax, %rdi	# _161,
	call	free@PLT	#
# problem148.c:41:     for (int i = 0; i <= n; ++i) {
	addl	$1, -48(%rbp)	#, i
.L21:
# problem148.c:41:     for (int i = 0; i <= n; ++i) {
	movl	-48(%rbp), %eax	# i, tmp327
	cmpl	-100(%rbp), %eax	# n, tmp327
	jle	.L22	#,
# problem148.c:45:     free(sum);
	movq	-32(%rbp), %rax	# sum, tmp328
	movq	%rax, %rdi	# tmp328,
	call	free@PLT	#
# problem148.c:46:     free(sum2);
	movq	-24(%rbp), %rax	# sum2, tmp329
	movq	%rax, %rdi	# tmp329,
	call	free@PLT	#
# problem148.c:47:     free(a);
	movq	-40(%rbp), %rax	# a, tmp330
	movq	%rax, %rdi	# tmp330,
	call	free@PLT	#
# problem148.c:48:     return result;
	movl	-44(%rbp), %eax	# result, _205
# problem148.c:49: }
	movq	-8(%rbp), %rbx	#,
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE6:
	.size	func0, .-func0
	.section	.rodata
.LC0:
	.string	"problem148.c"
.LC1:
	.string	"func0(5) == 1"
.LC2:
	.string	"func0(6) == 4"
.LC3:
	.string	"func0(10) == 36"
.LC4:
	.string	"func0(100) == 53361"
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
# problem148.c:56:     assert(func0(5) == 1);
	movl	$5, %edi	#,
	call	func0	#
# problem148.c:56:     assert(func0(5) == 1);
	cmpl	$1, %eax	#, _1
	je	.L25	#,
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp88
	movq	%rax, %rcx	# tmp88,
	movl	$56, %edx	#,
	leaq	.LC0(%rip), %rax	#, tmp89
	movq	%rax, %rsi	# tmp89,
	leaq	.LC1(%rip), %rax	#, tmp90
	movq	%rax, %rdi	# tmp90,
	call	__assert_fail@PLT	#
.L25:
# problem148.c:57:     assert(func0(6) == 4);
	movl	$6, %edi	#,
	call	func0	#
# problem148.c:57:     assert(func0(6) == 4);
	cmpl	$4, %eax	#, _2
	je	.L26	#,
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp91
	movq	%rax, %rcx	# tmp91,
	movl	$57, %edx	#,
	leaq	.LC0(%rip), %rax	#, tmp92
	movq	%rax, %rsi	# tmp92,
	leaq	.LC2(%rip), %rax	#, tmp93
	movq	%rax, %rdi	# tmp93,
	call	__assert_fail@PLT	#
.L26:
# problem148.c:58:     assert(func0(10) == 36);
	movl	$10, %edi	#,
	call	func0	#
# problem148.c:58:     assert(func0(10) == 36);
	cmpl	$36, %eax	#, _3
	je	.L27	#,
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp94
	movq	%rax, %rcx	# tmp94,
	movl	$58, %edx	#,
	leaq	.LC0(%rip), %rax	#, tmp95
	movq	%rax, %rsi	# tmp95,
	leaq	.LC3(%rip), %rax	#, tmp96
	movq	%rax, %rdi	# tmp96,
	call	__assert_fail@PLT	#
.L27:
# problem148.c:59:     assert(func0(100) == 53361);
	movl	$100, %edi	#,
	call	func0	#
# problem148.c:59:     assert(func0(100) == 53361);
	cmpl	$53361, %eax	#, _4
	je	.L28	#,
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp97
	movq	%rax, %rcx	# tmp97,
	movl	$59, %edx	#,
	leaq	.LC0(%rip), %rax	#, tmp98
	movq	%rax, %rsi	# tmp98,
	leaq	.LC4(%rip), %rax	#, tmp99
	movq	%rax, %rdi	# tmp99,
	call	__assert_fail@PLT	#
.L28:
# problem148.c:61:     return 0;
	movl	$0, %eax	#, _14
# problem148.c:62: }
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
