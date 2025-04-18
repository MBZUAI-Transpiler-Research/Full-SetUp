	.arch armv8-a
	.file	"code.c"
// GNU C17 (Ubuntu 13.3.0-6ubuntu2~24.04) version 13.3.0 (aarch64-linux-gnu)
//	compiled by GNU C version 13.3.0, GMP version 6.3.0, MPFR version 4.2.1, MPC version 1.3.1, isl version isl-0.26-GMP

// GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
// options passed: -mlittle-endian -mabi=lp64 -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection
	.text
	.align	2
	.global	func0
	.type	func0, %function
func0:
.LFB6:
	.cfi_startproc
	stp	x29, x30, [sp, -128]!	//,,,
	.cfi_def_cfa_offset 128
	.cfi_offset 29, -128
	.cfi_offset 30, -120
	mov	x29, sp	//,
	str	x19, [sp, 16]	//,
	.cfi_offset 19, -112
	str	w0, [sp, 44]	// n, n
// eval/problem148//code.c:5:     int *a = (int *)malloc(n * sizeof(int));
	ldrsw	x0, [sp, 44]	// _1, n
	lsl	x0, x0, 2	// _2, _1,
	bl	malloc		//
	str	x0, [sp, 104]	// tmp256, a
// eval/problem148//code.c:6:     int **sum = (int **)malloc((n + 1) * sizeof(int *));
	ldr	w0, [sp, 44]	// tmp257, n
	add	w0, w0, 1	// _3, tmp257,
	sxtw	x0, w0	// _4, _3
// eval/problem148//code.c:6:     int **sum = (int **)malloc((n + 1) * sizeof(int *));
	lsl	x0, x0, 3	// _5, _4,
	bl	malloc		//
	str	x0, [sp, 112]	// tmp258, sum
// eval/problem148//code.c:7:     int **sum2 = (int **)malloc((n + 1) * sizeof(int *));
	ldr	w0, [sp, 44]	// tmp259, n
	add	w0, w0, 1	// _6, tmp259,
	sxtw	x0, w0	// _7, _6
// eval/problem148//code.c:7:     int **sum2 = (int **)malloc((n + 1) * sizeof(int *));
	lsl	x0, x0, 3	// _8, _7,
	bl	malloc		//
	str	x0, [sp, 120]	// tmp260, sum2
// eval/problem148//code.c:8:     for (int i = 0; i <= n; i++) {
	str	wzr, [sp, 60]	//, i
// eval/problem148//code.c:8:     for (int i = 0; i <= n; i++) {
	b	.L2		//
.L3:
// eval/problem148//code.c:9:         sum[i] = (int *)calloc(3, sizeof(int));
	ldrsw	x0, [sp, 60]	// _9, i
	lsl	x0, x0, 3	// _10, _9,
	ldr	x1, [sp, 112]	// tmp261, sum
	add	x19, x1, x0	// _11, tmp261, _10
// eval/problem148//code.c:9:         sum[i] = (int *)calloc(3, sizeof(int));
	mov	x1, 4	//,
	mov	x0, 3	//,
	bl	calloc		//
// eval/problem148//code.c:9:         sum[i] = (int *)calloc(3, sizeof(int));
	str	x0, [x19]	// _12, *_11
// eval/problem148//code.c:10:         sum2[i] = (int *)calloc(3, sizeof(int));
	ldrsw	x0, [sp, 60]	// _13, i
	lsl	x0, x0, 3	// _14, _13,
	ldr	x1, [sp, 120]	// tmp263, sum2
	add	x19, x1, x0	// _15, tmp263, _14
// eval/problem148//code.c:10:         sum2[i] = (int *)calloc(3, sizeof(int));
	mov	x1, 4	//,
	mov	x0, 3	//,
	bl	calloc		//
// eval/problem148//code.c:10:         sum2[i] = (int *)calloc(3, sizeof(int));
	str	x0, [x19]	// _16, *_15
// eval/problem148//code.c:8:     for (int i = 0; i <= n; i++) {
	ldr	w0, [sp, 60]	// tmp266, i
	add	w0, w0, 1	// tmp265, tmp266,
	str	w0, [sp, 60]	// tmp265, i
.L2:
// eval/problem148//code.c:8:     for (int i = 0; i <= n; i++) {
	ldr	w1, [sp, 60]	// tmp267, i
	ldr	w0, [sp, 44]	// tmp268, n
	cmp	w1, w0	// tmp267, tmp268
	ble	.L3		//,
// eval/problem148//code.c:12:     sum[0][0] = sum[0][1] = sum[0][2] = 0;
	ldr	x0, [sp, 112]	// tmp269, sum
	ldr	x0, [x0]	// _17, *sum_188
// eval/problem148//code.c:12:     sum[0][0] = sum[0][1] = sum[0][2] = 0;
	add	x1, x0, 8	// _18, _17,
// eval/problem148//code.c:12:     sum[0][0] = sum[0][1] = sum[0][2] = 0;
	str	wzr, [x1]	//, *_18
// eval/problem148//code.c:12:     sum[0][0] = sum[0][1] = sum[0][2] = 0;
	ldr	x0, [sp, 112]	// tmp270, sum
	ldr	x0, [x0]	// _19, *sum_188
// eval/problem148//code.c:12:     sum[0][0] = sum[0][1] = sum[0][2] = 0;
	add	x0, x0, 4	// _20, _19,
// eval/problem148//code.c:12:     sum[0][0] = sum[0][1] = sum[0][2] = 0;
	ldr	w1, [x1]	// _21, *_18
// eval/problem148//code.c:12:     sum[0][0] = sum[0][1] = sum[0][2] = 0;
	str	w1, [x0]	// _21, *_20
// eval/problem148//code.c:12:     sum[0][0] = sum[0][1] = sum[0][2] = 0;
	ldr	x1, [sp, 112]	// tmp271, sum
	ldr	x1, [x1]	// _22, *sum_188
// eval/problem148//code.c:12:     sum[0][0] = sum[0][1] = sum[0][2] = 0;
	ldr	w0, [x0]	// _23, *_20
// eval/problem148//code.c:12:     sum[0][0] = sum[0][1] = sum[0][2] = 0;
	str	w0, [x1]	// _23, *_22
// eval/problem148//code.c:13:     sum2[0][0] = sum2[0][1] = sum2[0][2] = 0;
	ldr	x0, [sp, 120]	// tmp272, sum2
	ldr	x0, [x0]	// _24, *sum2_190
// eval/problem148//code.c:13:     sum2[0][0] = sum2[0][1] = sum2[0][2] = 0;
	add	x1, x0, 8	// _25, _24,
// eval/problem148//code.c:13:     sum2[0][0] = sum2[0][1] = sum2[0][2] = 0;
	str	wzr, [x1]	//, *_25
// eval/problem148//code.c:13:     sum2[0][0] = sum2[0][1] = sum2[0][2] = 0;
	ldr	x0, [sp, 120]	// tmp273, sum2
	ldr	x0, [x0]	// _26, *sum2_190
// eval/problem148//code.c:13:     sum2[0][0] = sum2[0][1] = sum2[0][2] = 0;
	add	x0, x0, 4	// _27, _26,
// eval/problem148//code.c:13:     sum2[0][0] = sum2[0][1] = sum2[0][2] = 0;
	ldr	w1, [x1]	// _28, *_25
// eval/problem148//code.c:13:     sum2[0][0] = sum2[0][1] = sum2[0][2] = 0;
	str	w1, [x0]	// _28, *_27
// eval/problem148//code.c:13:     sum2[0][0] = sum2[0][1] = sum2[0][2] = 0;
	ldr	x1, [sp, 120]	// tmp274, sum2
	ldr	x1, [x1]	// _29, *sum2_190
// eval/problem148//code.c:13:     sum2[0][0] = sum2[0][1] = sum2[0][2] = 0;
	ldr	w0, [x0]	// _30, *_27
// eval/problem148//code.c:13:     sum2[0][0] = sum2[0][1] = sum2[0][2] = 0;
	str	w0, [x1]	// _30, *_29
// eval/problem148//code.c:14:     for (int i = 1; i <= n; i++) {
	mov	w0, 1	// tmp275,
	str	w0, [sp, 64]	// tmp275, i
// eval/problem148//code.c:14:     for (int i = 1; i <= n; i++) {
	b	.L4		//
.L7:
// eval/problem148//code.c:15:         a[i - 1] = (i * i - i + 1) % 3;
	ldr	w0, [sp, 64]	// tmp276, i
	mul	w1, w0, w0	// _31, tmp276, tmp276
// eval/problem148//code.c:15:         a[i - 1] = (i * i - i + 1) % 3;
	ldr	w0, [sp, 64]	// tmp277, i
	sub	w0, w1, w0	// _32, _31, tmp277
// eval/problem148//code.c:15:         a[i - 1] = (i * i - i + 1) % 3;
	add	w2, w0, 1	// _33, _32,
// eval/problem148//code.c:15:         a[i - 1] = (i * i - i + 1) % 3;
	ldrsw	x0, [sp, 64]	// _34, i
	lsl	x0, x0, 2	// _35, _34,
	sub	x0, x0, #4	// _36, _35,
	ldr	x1, [sp, 104]	// tmp278, a
	add	x3, x1, x0	// _37, tmp278, _36
// eval/problem148//code.c:15:         a[i - 1] = (i * i - i + 1) % 3;
	mov	w0, 21846	// tmp280,
	movk	w0, 0x5555, lsl 16	// tmp280,,
	smull	x0, w2, w0	// tmp279, _33, tmp280
	lsr	x1, x0, 32	// tmp281, tmp279,
	asr	w0, w2, 31	// tmp282, _33,
	sub	w1, w1, w0	// _38, tmp281, tmp282
	mov	w0, w1	// tmp283, _38
	lsl	w0, w0, 1	// tmp284, tmp283,
	add	w0, w0, w1	// tmp283, tmp283, _38
	sub	w1, w2, w0	// _38, _33, tmp283
// eval/problem148//code.c:15:         a[i - 1] = (i * i - i + 1) % 3;
	str	w1, [x3]	// _38, *_37
// eval/problem148//code.c:16:         for (int j = 0; j < 3; j++) {
	str	wzr, [sp, 68]	//, j
// eval/problem148//code.c:16:         for (int j = 0; j < 3; j++) {
	b	.L5		//
.L6:
// eval/problem148//code.c:17:             sum[i][j] = sum[i - 1][j];
	ldrsw	x0, [sp, 64]	// _39, i
	lsl	x0, x0, 3	// _40, _39,
	sub	x0, x0, #8	// _41, _40,
	ldr	x1, [sp, 112]	// tmp285, sum
	add	x0, x1, x0	// _42, tmp285, _41
	ldr	x1, [x0]	// _43, *_42
// eval/problem148//code.c:17:             sum[i][j] = sum[i - 1][j];
	ldrsw	x0, [sp, 68]	// _44, j
	lsl	x0, x0, 2	// _45, _44,
	add	x1, x1, x0	// _46, _43, _45
// eval/problem148//code.c:17:             sum[i][j] = sum[i - 1][j];
	ldrsw	x0, [sp, 64]	// _47, i
	lsl	x0, x0, 3	// _48, _47,
	ldr	x2, [sp, 112]	// tmp286, sum
	add	x0, x2, x0	// _49, tmp286, _48
	ldr	x2, [x0]	// _50, *_49
// eval/problem148//code.c:17:             sum[i][j] = sum[i - 1][j];
	ldrsw	x0, [sp, 68]	// _51, j
	lsl	x0, x0, 2	// _52, _51,
	add	x0, x2, x0	// _53, _50, _52
// eval/problem148//code.c:17:             sum[i][j] = sum[i - 1][j];
	ldr	w1, [x1]	// _54, *_46
// eval/problem148//code.c:17:             sum[i][j] = sum[i - 1][j];
	str	w1, [x0]	// _54, *_53
// eval/problem148//code.c:16:         for (int j = 0; j < 3; j++) {
	ldr	w0, [sp, 68]	// tmp288, j
	add	w0, w0, 1	// tmp287, tmp288,
	str	w0, [sp, 68]	// tmp287, j
.L5:
// eval/problem148//code.c:16:         for (int j = 0; j < 3; j++) {
	ldr	w0, [sp, 68]	// tmp289, j
	cmp	w0, 2	// tmp289,
	ble	.L6		//,
// eval/problem148//code.c:19:         sum[i][a[i - 1]] += 1;
	ldrsw	x0, [sp, 64]	// _55, i
	lsl	x0, x0, 3	// _56, _55,
	ldr	x1, [sp, 112]	// tmp290, sum
	add	x0, x1, x0	// _57, tmp290, _56
	ldr	x1, [x0]	// _58, *_57
// eval/problem148//code.c:19:         sum[i][a[i - 1]] += 1;
	ldrsw	x0, [sp, 64]	// _59, i
	lsl	x0, x0, 2	// _60, _59,
	sub	x0, x0, #4	// _61, _60,
	ldr	x2, [sp, 104]	// tmp291, a
	add	x0, x2, x0	// _62, tmp291, _61
	ldr	w0, [x0]	// _63, *_62
// eval/problem148//code.c:19:         sum[i][a[i - 1]] += 1;
	sxtw	x0, w0	// _64, _63
	lsl	x0, x0, 2	// _65, _64,
	add	x0, x1, x0	// _66, _58, _65
	ldr	w1, [x0]	// _67, *_66
// eval/problem148//code.c:19:         sum[i][a[i - 1]] += 1;
	ldrsw	x0, [sp, 64]	// _68, i
	lsl	x0, x0, 3	// _69, _68,
	ldr	x2, [sp, 112]	// tmp292, sum
	add	x0, x2, x0	// _70, tmp292, _69
	ldr	x2, [x0]	// _71, *_70
// eval/problem148//code.c:19:         sum[i][a[i - 1]] += 1;
	ldrsw	x0, [sp, 64]	// _72, i
	lsl	x0, x0, 2	// _73, _72,
	sub	x0, x0, #4	// _74, _73,
	ldr	x3, [sp, 104]	// tmp293, a
	add	x0, x3, x0	// _75, tmp293, _74
	ldr	w0, [x0]	// _76, *_75
// eval/problem148//code.c:19:         sum[i][a[i - 1]] += 1;
	sxtw	x0, w0	// _77, _76
	lsl	x0, x0, 2	// _78, _77,
	add	x0, x2, x0	// _79, _71, _78
// eval/problem148//code.c:19:         sum[i][a[i - 1]] += 1;
	add	w1, w1, 1	// _80, _67,
	str	w1, [x0]	// _80, *_79
// eval/problem148//code.c:14:     for (int i = 1; i <= n; i++) {
	ldr	w0, [sp, 64]	// tmp295, i
	add	w0, w0, 1	// tmp294, tmp295,
	str	w0, [sp, 64]	// tmp294, i
.L4:
// eval/problem148//code.c:14:     for (int i = 1; i <= n; i++) {
	ldr	w1, [sp, 64]	// tmp296, i
	ldr	w0, [sp, 44]	// tmp297, n
	cmp	w1, w0	// tmp296, tmp297
	ble	.L7		//,
// eval/problem148//code.c:21:     for (int times = 1; times < 3; times++) {
	mov	w0, 1	// tmp298,
	str	w0, [sp, 72]	// tmp298, times
// eval/problem148//code.c:21:     for (int times = 1; times < 3; times++) {
	b	.L8		//
.L20:
// eval/problem148//code.c:22:         for (int i = 1; i <= n; i++) {
	mov	w0, 1	// tmp299,
	str	w0, [sp, 76]	// tmp299, i
// eval/problem148//code.c:22:         for (int i = 1; i <= n; i++) {
	b	.L9		//
.L15:
// eval/problem148//code.c:23:             for (int j = 0; j < 3; j++) {
	str	wzr, [sp, 80]	//, j
// eval/problem148//code.c:23:             for (int j = 0; j < 3; j++) {
	b	.L10		//
.L11:
// eval/problem148//code.c:24:                 sum2[i][j] = sum2[i - 1][j];
	ldrsw	x0, [sp, 76]	// _81, i
	lsl	x0, x0, 3	// _82, _81,
	sub	x0, x0, #8	// _83, _82,
	ldr	x1, [sp, 120]	// tmp300, sum2
	add	x0, x1, x0	// _84, tmp300, _83
	ldr	x1, [x0]	// _85, *_84
// eval/problem148//code.c:24:                 sum2[i][j] = sum2[i - 1][j];
	ldrsw	x0, [sp, 80]	// _86, j
	lsl	x0, x0, 2	// _87, _86,
	add	x1, x1, x0	// _88, _85, _87
// eval/problem148//code.c:24:                 sum2[i][j] = sum2[i - 1][j];
	ldrsw	x0, [sp, 76]	// _89, i
	lsl	x0, x0, 3	// _90, _89,
	ldr	x2, [sp, 120]	// tmp301, sum2
	add	x0, x2, x0	// _91, tmp301, _90
	ldr	x2, [x0]	// _92, *_91
// eval/problem148//code.c:24:                 sum2[i][j] = sum2[i - 1][j];
	ldrsw	x0, [sp, 80]	// _93, j
	lsl	x0, x0, 2	// _94, _93,
	add	x0, x2, x0	// _95, _92, _94
// eval/problem148//code.c:24:                 sum2[i][j] = sum2[i - 1][j];
	ldr	w1, [x1]	// _96, *_88
// eval/problem148//code.c:24:                 sum2[i][j] = sum2[i - 1][j];
	str	w1, [x0]	// _96, *_95
// eval/problem148//code.c:23:             for (int j = 0; j < 3; j++) {
	ldr	w0, [sp, 80]	// tmp303, j
	add	w0, w0, 1	// tmp302, tmp303,
	str	w0, [sp, 80]	// tmp302, j
.L10:
// eval/problem148//code.c:23:             for (int j = 0; j < 3; j++) {
	ldr	w0, [sp, 80]	// tmp304, j
	cmp	w0, 2	// tmp304,
	ble	.L11		//,
// eval/problem148//code.c:26:             if (i >= 1) {
	ldr	w0, [sp, 76]	// tmp305, i
	cmp	w0, 0	// tmp305,
	ble	.L12		//,
// eval/problem148//code.c:27:                 for (int j = 0; j <= 2; j++) {
	str	wzr, [sp, 84]	//, j
// eval/problem148//code.c:27:                 for (int j = 0; j <= 2; j++) {
	b	.L13		//
.L14:
// eval/problem148//code.c:28:                     sum2[i][(a[i - 1] + j) % 3] += sum[i - 1][j];
	ldrsw	x0, [sp, 76]	// _97, i
	lsl	x0, x0, 3	// _98, _97,
	ldr	x1, [sp, 120]	// tmp306, sum2
	add	x0, x1, x0	// _99, tmp306, _98
	ldr	x3, [x0]	// _100, *_99
// eval/problem148//code.c:28:                     sum2[i][(a[i - 1] + j) % 3] += sum[i - 1][j];
	ldrsw	x0, [sp, 76]	// _101, i
	lsl	x0, x0, 2	// _102, _101,
	sub	x0, x0, #4	// _103, _102,
	ldr	x1, [sp, 104]	// tmp307, a
	add	x0, x1, x0	// _104, tmp307, _103
	ldr	w1, [x0]	// _105, *_104
// eval/problem148//code.c:28:                     sum2[i][(a[i - 1] + j) % 3] += sum[i - 1][j];
	ldr	w0, [sp, 84]	// tmp308, j
	add	w1, w1, w0	// _106, _105, tmp308
// eval/problem148//code.c:28:                     sum2[i][(a[i - 1] + j) % 3] += sum[i - 1][j];
	mov	w0, 21846	// tmp310,
	movk	w0, 0x5555, lsl 16	// tmp310,,
	smull	x0, w1, w0	// tmp309, _106, tmp310
	lsr	x2, x0, 32	// tmp311, tmp309,
	asr	w0, w1, 31	// tmp312, _106,
	sub	w2, w2, w0	// _219, tmp311, tmp312
	mov	w0, w2	// tmp313, _219
	lsl	w0, w0, 1	// tmp314, tmp313,
	add	w0, w0, w2	// tmp313, tmp313, _219
	sub	w2, w1, w0	// _219, _106, tmp313
// eval/problem148//code.c:28:                     sum2[i][(a[i - 1] + j) % 3] += sum[i - 1][j];
	sxtw	x0, w2	// _107, _219
	lsl	x0, x0, 2	// _108, _107,
	add	x0, x3, x0	// _109, _100, _108
	ldr	w3, [x0]	// _110, *_109
// eval/problem148//code.c:28:                     sum2[i][(a[i - 1] + j) % 3] += sum[i - 1][j];
	ldrsw	x0, [sp, 76]	// _111, i
	lsl	x0, x0, 3	// _112, _111,
	sub	x0, x0, #8	// _113, _112,
	ldr	x1, [sp, 112]	// tmp315, sum
	add	x0, x1, x0	// _114, tmp315, _113
	ldr	x1, [x0]	// _115, *_114
// eval/problem148//code.c:28:                     sum2[i][(a[i - 1] + j) % 3] += sum[i - 1][j];
	ldrsw	x0, [sp, 84]	// _116, j
	lsl	x0, x0, 2	// _117, _116,
	add	x0, x1, x0	// _118, _115, _117
	ldr	w1, [x0]	// _119, *_118
// eval/problem148//code.c:28:                     sum2[i][(a[i - 1] + j) % 3] += sum[i - 1][j];
	ldrsw	x0, [sp, 76]	// _120, i
	lsl	x0, x0, 3	// _121, _120,
	ldr	x4, [sp, 120]	// tmp316, sum2
	add	x0, x4, x0	// _122, tmp316, _121
	ldr	x4, [x0]	// _123, *_122
// eval/problem148//code.c:28:                     sum2[i][(a[i - 1] + j) % 3] += sum[i - 1][j];
	sxtw	x0, w2	// _124, _219
	lsl	x0, x0, 2	// _125, _124,
	add	x0, x4, x0	// _126, _123, _125
// eval/problem148//code.c:28:                     sum2[i][(a[i - 1] + j) % 3] += sum[i - 1][j];
	add	w1, w3, w1	// _127, _110, _119
	str	w1, [x0]	// _127, *_126
// eval/problem148//code.c:27:                 for (int j = 0; j <= 2; j++) {
	ldr	w0, [sp, 84]	// tmp318, j
	add	w0, w0, 1	// tmp317, tmp318,
	str	w0, [sp, 84]	// tmp317, j
.L13:
// eval/problem148//code.c:27:                 for (int j = 0; j <= 2; j++) {
	ldr	w0, [sp, 84]	// tmp319, j
	cmp	w0, 2	// tmp319,
	ble	.L14		//,
.L12:
// eval/problem148//code.c:22:         for (int i = 1; i <= n; i++) {
	ldr	w0, [sp, 76]	// tmp321, i
	add	w0, w0, 1	// tmp320, tmp321,
	str	w0, [sp, 76]	// tmp320, i
.L9:
// eval/problem148//code.c:22:         for (int i = 1; i <= n; i++) {
	ldr	w1, [sp, 76]	// tmp322, i
	ldr	w0, [sp, 44]	// tmp323, n
	cmp	w1, w0	// tmp322, tmp323
	ble	.L15		//,
// eval/problem148//code.c:32:         for (int i = 0; i <= n; i++) {
	str	wzr, [sp, 88]	//, i
// eval/problem148//code.c:32:         for (int i = 0; i <= n; i++) {
	b	.L16		//
.L19:
// eval/problem148//code.c:33:             for (int j = 0; j < 3; j++) {
	str	wzr, [sp, 92]	//, j
// eval/problem148//code.c:33:             for (int j = 0; j < 3; j++) {
	b	.L17		//
.L18:
// eval/problem148//code.c:34:                 sum[i][j] = sum2[i][j];
	ldrsw	x0, [sp, 88]	// _128, i
	lsl	x0, x0, 3	// _129, _128,
	ldr	x1, [sp, 120]	// tmp324, sum2
	add	x0, x1, x0	// _130, tmp324, _129
	ldr	x1, [x0]	// _131, *_130
// eval/problem148//code.c:34:                 sum[i][j] = sum2[i][j];
	ldrsw	x0, [sp, 92]	// _132, j
	lsl	x0, x0, 2	// _133, _132,
	add	x1, x1, x0	// _134, _131, _133
// eval/problem148//code.c:34:                 sum[i][j] = sum2[i][j];
	ldrsw	x0, [sp, 88]	// _135, i
	lsl	x0, x0, 3	// _136, _135,
	ldr	x2, [sp, 112]	// tmp325, sum
	add	x0, x2, x0	// _137, tmp325, _136
	ldr	x2, [x0]	// _138, *_137
// eval/problem148//code.c:34:                 sum[i][j] = sum2[i][j];
	ldrsw	x0, [sp, 92]	// _139, j
	lsl	x0, x0, 2	// _140, _139,
	add	x0, x2, x0	// _141, _138, _140
// eval/problem148//code.c:34:                 sum[i][j] = sum2[i][j];
	ldr	w1, [x1]	// _142, *_134
// eval/problem148//code.c:34:                 sum[i][j] = sum2[i][j];
	str	w1, [x0]	// _142, *_141
// eval/problem148//code.c:35:                 sum2[i][j] = 0;
	ldrsw	x0, [sp, 88]	// _143, i
	lsl	x0, x0, 3	// _144, _143,
	ldr	x1, [sp, 120]	// tmp326, sum2
	add	x0, x1, x0	// _145, tmp326, _144
	ldr	x1, [x0]	// _146, *_145
// eval/problem148//code.c:35:                 sum2[i][j] = 0;
	ldrsw	x0, [sp, 92]	// _147, j
	lsl	x0, x0, 2	// _148, _147,
	add	x0, x1, x0	// _149, _146, _148
// eval/problem148//code.c:35:                 sum2[i][j] = 0;
	str	wzr, [x0]	//, *_149
// eval/problem148//code.c:33:             for (int j = 0; j < 3; j++) {
	ldr	w0, [sp, 92]	// tmp328, j
	add	w0, w0, 1	// tmp327, tmp328,
	str	w0, [sp, 92]	// tmp327, j
.L17:
// eval/problem148//code.c:33:             for (int j = 0; j < 3; j++) {
	ldr	w0, [sp, 92]	// tmp329, j
	cmp	w0, 2	// tmp329,
	ble	.L18		//,
// eval/problem148//code.c:32:         for (int i = 0; i <= n; i++) {
	ldr	w0, [sp, 88]	// tmp331, i
	add	w0, w0, 1	// tmp330, tmp331,
	str	w0, [sp, 88]	// tmp330, i
.L16:
// eval/problem148//code.c:32:         for (int i = 0; i <= n; i++) {
	ldr	w1, [sp, 88]	// tmp332, i
	ldr	w0, [sp, 44]	// tmp333, n
	cmp	w1, w0	// tmp332, tmp333
	ble	.L19		//,
// eval/problem148//code.c:21:     for (int times = 1; times < 3; times++) {
	ldr	w0, [sp, 72]	// tmp335, times
	add	w0, w0, 1	// tmp334, tmp335,
	str	w0, [sp, 72]	// tmp334, times
.L8:
// eval/problem148//code.c:21:     for (int times = 1; times < 3; times++) {
	ldr	w0, [sp, 72]	// tmp336, times
	cmp	w0, 2	// tmp336,
	ble	.L20		//,
// eval/problem148//code.c:40:     int result = sum[n][0];
	ldrsw	x0, [sp, 44]	// _150, n
	lsl	x0, x0, 3	// _151, _150,
	ldr	x1, [sp, 112]	// tmp337, sum
	add	x0, x1, x0	// _152, tmp337, _151
	ldr	x0, [x0]	// _153, *_152
// eval/problem148//code.c:40:     int result = sum[n][0];
	ldr	w0, [x0]	// tmp338, *_153
	str	w0, [sp, 100]	// tmp338, result
// eval/problem148//code.c:41:     for (int i = 0; i <= n; ++i) {
	str	wzr, [sp, 96]	//, i
// eval/problem148//code.c:41:     for (int i = 0; i <= n; ++i) {
	b	.L21		//
.L22:
// eval/problem148//code.c:42:         free(sum[i]);
	ldrsw	x0, [sp, 96]	// _154, i
	lsl	x0, x0, 3	// _155, _154,
	ldr	x1, [sp, 112]	// tmp339, sum
	add	x0, x1, x0	// _156, tmp339, _155
// eval/problem148//code.c:42:         free(sum[i]);
	ldr	x0, [x0]	// _157, *_156
	bl	free		//
// eval/problem148//code.c:43:         free(sum2[i]);
	ldrsw	x0, [sp, 96]	// _158, i
	lsl	x0, x0, 3	// _159, _158,
	ldr	x1, [sp, 120]	// tmp340, sum2
	add	x0, x1, x0	// _160, tmp340, _159
// eval/problem148//code.c:43:         free(sum2[i]);
	ldr	x0, [x0]	// _161, *_160
	bl	free		//
// eval/problem148//code.c:41:     for (int i = 0; i <= n; ++i) {
	ldr	w0, [sp, 96]	// tmp342, i
	add	w0, w0, 1	// tmp341, tmp342,
	str	w0, [sp, 96]	// tmp341, i
.L21:
// eval/problem148//code.c:41:     for (int i = 0; i <= n; ++i) {
	ldr	w1, [sp, 96]	// tmp343, i
	ldr	w0, [sp, 44]	// tmp344, n
	cmp	w1, w0	// tmp343, tmp344
	ble	.L22		//,
// eval/problem148//code.c:45:     free(sum);
	ldr	x0, [sp, 112]	//, sum
	bl	free		//
// eval/problem148//code.c:46:     free(sum2);
	ldr	x0, [sp, 120]	//, sum2
	bl	free		//
// eval/problem148//code.c:47:     free(a);
	ldr	x0, [sp, 104]	//, a
	bl	free		//
// eval/problem148//code.c:48:     return result;
	ldr	w0, [sp, 100]	// _205, result
// eval/problem148//code.c:49: }
	ldr	x19, [sp, 16]	//,
	ldp	x29, x30, [sp], 128	//,,,
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE6:
	.size	func0, .-func0
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
