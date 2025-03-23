	.file	"problem148.c"
	.option pic
# GNU C17 (Ubuntu 11.4.0-1ubuntu1~22.04) version 11.4.0 (riscv64-linux-gnu)
#	compiled by GNU C version 11.4.0, GMP version 6.2.1, MPFR version 4.1.0, MPC version 1.2.1, isl version isl-0.24-GMP

# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed: -mabi=lp64d -misa-spec=2.2 -march=rv64imafdc -fstack-protector-strong
	.text
	.align	1
	.globl	func0
	.type	func0, @function
func0:
	addi	sp,sp,-128	#,,
	sd	ra,120(sp)	#,
	sd	s0,112(sp)	#,
	sd	s1,104(sp)	#,
	addi	s0,sp,128	#,,
	mv	a5,a0	# tmp236, n
	sw	a5,-116(s0)	# tmp237, n
# problem148.c:5:     int *a = (int *)malloc(n * sizeof(int));
	lw	a5,-116(s0)		# _1, n
	slli	a5,a5,2	#, _2, _1
	mv	a0,a5	#, _2
	call	malloc@plt	#
	mv	a5,a0	# tmp238,
	sd	a5,-56(s0)	# tmp238, a
# problem148.c:6:     int **sum = (int **)malloc((n + 1) * sizeof(int *));
	lw	a5,-116(s0)		# tmp241, n
	addiw	a5,a5,1	#, tmp239, tmp240
	sext.w	a5,a5	# _3, tmp239
# problem148.c:6:     int **sum = (int **)malloc((n + 1) * sizeof(int *));
	slli	a5,a5,3	#, _5, _4
	mv	a0,a5	#, _5
	call	malloc@plt	#
	mv	a5,a0	# tmp242,
	sd	a5,-48(s0)	# tmp242, sum
# problem148.c:7:     int **sum2 = (int **)malloc((n + 1) * sizeof(int *));
	lw	a5,-116(s0)		# tmp245, n
	addiw	a5,a5,1	#, tmp243, tmp244
	sext.w	a5,a5	# _6, tmp243
# problem148.c:7:     int **sum2 = (int **)malloc((n + 1) * sizeof(int *));
	slli	a5,a5,3	#, _8, _7
	mv	a0,a5	#, _8
	call	malloc@plt	#
	mv	a5,a0	# tmp246,
	sd	a5,-40(s0)	# tmp246, sum2
# problem148.c:8:     for (int i = 0; i <= n; i++) {
	sw	zero,-100(s0)	#, i
# problem148.c:8:     for (int i = 0; i <= n; i++) {
	j	.L2		#
.L3:
# problem148.c:9:         sum[i] = (int *)calloc(3, sizeof(int));
	lw	a5,-100(s0)		# _9, i
	slli	a5,a5,3	#, _10, _9
	ld	a4,-48(s0)		# tmp247, sum
	add	s1,a4,a5	# _10, _11, tmp247
# problem148.c:9:         sum[i] = (int *)calloc(3, sizeof(int));
	li	a1,4		#,
	li	a0,3		#,
	call	calloc@plt	#
	mv	a5,a0	# tmp248,
# problem148.c:9:         sum[i] = (int *)calloc(3, sizeof(int));
	sd	a5,0(s1)	# _12, *_11
# problem148.c:10:         sum2[i] = (int *)calloc(3, sizeof(int));
	lw	a5,-100(s0)		# _13, i
	slli	a5,a5,3	#, _14, _13
	ld	a4,-40(s0)		# tmp249, sum2
	add	s1,a4,a5	# _14, _15, tmp249
# problem148.c:10:         sum2[i] = (int *)calloc(3, sizeof(int));
	li	a1,4		#,
	li	a0,3		#,
	call	calloc@plt	#
	mv	a5,a0	# tmp250,
# problem148.c:10:         sum2[i] = (int *)calloc(3, sizeof(int));
	sd	a5,0(s1)	# _16, *_15
# problem148.c:8:     for (int i = 0; i <= n; i++) {
	lw	a5,-100(s0)		# tmp253, i
	addiw	a5,a5,1	#, tmp251, tmp252
	sw	a5,-100(s0)	# tmp251, i
.L2:
# problem148.c:8:     for (int i = 0; i <= n; i++) {
	lw	a5,-100(s0)		# tmp255, i
	mv	a4,a5	# tmp254, tmp255
	lw	a5,-116(s0)		# tmp257, n
	sext.w	a4,a4	# tmp258, tmp254
	sext.w	a5,a5	# tmp259, tmp256
	ble	a4,a5,.L3	#, tmp258, tmp259,
# problem148.c:12:     sum[0][0] = sum[0][1] = sum[0][2] = 0;
	ld	a5,-48(s0)		# tmp260, sum
	ld	a5,0(a5)		# _17, *sum_188
# problem148.c:12:     sum[0][0] = sum[0][1] = sum[0][2] = 0;
	addi	a4,a5,8	#, _18, _17
# problem148.c:12:     sum[0][0] = sum[0][1] = sum[0][2] = 0;
	sw	zero,0(a4)	#, *_18
# problem148.c:12:     sum[0][0] = sum[0][1] = sum[0][2] = 0;
	ld	a5,-48(s0)		# tmp261, sum
	ld	a5,0(a5)		# _19, *sum_188
# problem148.c:12:     sum[0][0] = sum[0][1] = sum[0][2] = 0;
	addi	a5,a5,4	#, _20, _19
# problem148.c:12:     sum[0][0] = sum[0][1] = sum[0][2] = 0;
	lw	a4,0(a4)		# _21, *_18
# problem148.c:12:     sum[0][0] = sum[0][1] = sum[0][2] = 0;
	sw	a4,0(a5)	# _21, *_20
# problem148.c:12:     sum[0][0] = sum[0][1] = sum[0][2] = 0;
	ld	a4,-48(s0)		# tmp262, sum
	ld	a4,0(a4)		# _22, *sum_188
# problem148.c:12:     sum[0][0] = sum[0][1] = sum[0][2] = 0;
	lw	a5,0(a5)		# _23, *_20
# problem148.c:12:     sum[0][0] = sum[0][1] = sum[0][2] = 0;
	sw	a5,0(a4)	# _23, *_22
# problem148.c:13:     sum2[0][0] = sum2[0][1] = sum2[0][2] = 0;
	ld	a5,-40(s0)		# tmp263, sum2
	ld	a5,0(a5)		# _24, *sum2_190
# problem148.c:13:     sum2[0][0] = sum2[0][1] = sum2[0][2] = 0;
	addi	a4,a5,8	#, _25, _24
# problem148.c:13:     sum2[0][0] = sum2[0][1] = sum2[0][2] = 0;
	sw	zero,0(a4)	#, *_25
# problem148.c:13:     sum2[0][0] = sum2[0][1] = sum2[0][2] = 0;
	ld	a5,-40(s0)		# tmp264, sum2
	ld	a5,0(a5)		# _26, *sum2_190
# problem148.c:13:     sum2[0][0] = sum2[0][1] = sum2[0][2] = 0;
	addi	a5,a5,4	#, _27, _26
# problem148.c:13:     sum2[0][0] = sum2[0][1] = sum2[0][2] = 0;
	lw	a4,0(a4)		# _28, *_25
# problem148.c:13:     sum2[0][0] = sum2[0][1] = sum2[0][2] = 0;
	sw	a4,0(a5)	# _28, *_27
# problem148.c:13:     sum2[0][0] = sum2[0][1] = sum2[0][2] = 0;
	ld	a4,-40(s0)		# tmp265, sum2
	ld	a4,0(a4)		# _29, *sum2_190
# problem148.c:13:     sum2[0][0] = sum2[0][1] = sum2[0][2] = 0;
	lw	a5,0(a5)		# _30, *_27
# problem148.c:13:     sum2[0][0] = sum2[0][1] = sum2[0][2] = 0;
	sw	a5,0(a4)	# _30, *_29
# problem148.c:14:     for (int i = 1; i <= n; i++) {
	li	a5,1		# tmp266,
	sw	a5,-96(s0)	# tmp266, i
# problem148.c:14:     for (int i = 1; i <= n; i++) {
	j	.L4		#
.L7:
# problem148.c:15:         a[i - 1] = (i * i - i + 1) % 3;
	lw	a5,-96(s0)		# tmp269, i
	mulw	a5,a5,a5	# tmp267, tmp268, tmp268
	sext.w	a5,a5	# _31, tmp267
# problem148.c:15:         a[i - 1] = (i * i - i + 1) % 3;
	lw	a4,-96(s0)		# tmp272, i
	subw	a5,a5,a4	# tmp270, _31, tmp271
	sext.w	a5,a5	# _32, tmp270
# problem148.c:15:         a[i - 1] = (i * i - i + 1) % 3;
	addiw	a5,a5,1	#, tmp273, _32
	sext.w	a3,a5	# _33, tmp273
# problem148.c:15:         a[i - 1] = (i * i - i + 1) % 3;
	lw	a5,-96(s0)		# _34, i
	slli	a5,a5,2	#, _35, _34
	addi	a5,a5,-4	#, _36, _35
	ld	a4,-56(s0)		# tmp274, a
	add	a5,a4,a5	# _36, _37, tmp274
# problem148.c:15:         a[i - 1] = (i * i - i + 1) % 3;
	li	a4,3		# tmp278,
	remw	a4,a3,a4	# tmp278, tmp277, tmp276
	sext.w	a4,a4	# _38, tmp277
# problem148.c:15:         a[i - 1] = (i * i - i + 1) % 3;
	sw	a4,0(a5)	# _38, *_37
# problem148.c:16:         for (int j = 0; j < 3; j++) {
	sw	zero,-92(s0)	#, j
# problem148.c:16:         for (int j = 0; j < 3; j++) {
	j	.L5		#
.L6:
# problem148.c:17:             sum[i][j] = sum[i - 1][j];
	lw	a5,-96(s0)		# _39, i
	slli	a5,a5,3	#, _40, _39
	addi	a5,a5,-8	#, _41, _40
	ld	a4,-48(s0)		# tmp279, sum
	add	a5,a4,a5	# _41, _42, tmp279
	ld	a4,0(a5)		# _43, *_42
# problem148.c:17:             sum[i][j] = sum[i - 1][j];
	lw	a5,-92(s0)		# _44, j
	slli	a5,a5,2	#, _45, _44
	add	a4,a4,a5	# _45, _46, _43
# problem148.c:17:             sum[i][j] = sum[i - 1][j];
	lw	a5,-96(s0)		# _47, i
	slli	a5,a5,3	#, _48, _47
	ld	a3,-48(s0)		# tmp280, sum
	add	a5,a3,a5	# _48, _49, tmp280
	ld	a3,0(a5)		# _50, *_49
# problem148.c:17:             sum[i][j] = sum[i - 1][j];
	lw	a5,-92(s0)		# _51, j
	slli	a5,a5,2	#, _52, _51
	add	a5,a3,a5	# _52, _53, _50
# problem148.c:17:             sum[i][j] = sum[i - 1][j];
	lw	a4,0(a4)		# _54, *_46
# problem148.c:17:             sum[i][j] = sum[i - 1][j];
	sw	a4,0(a5)	# _54, *_53
# problem148.c:16:         for (int j = 0; j < 3; j++) {
	lw	a5,-92(s0)		# tmp283, j
	addiw	a5,a5,1	#, tmp281, tmp282
	sw	a5,-92(s0)	# tmp281, j
.L5:
# problem148.c:16:         for (int j = 0; j < 3; j++) {
	lw	a5,-92(s0)		# tmp285, j
	sext.w	a4,a5	# tmp286, tmp284
	li	a5,2		# tmp287,
	ble	a4,a5,.L6	#, tmp286, tmp287,
# problem148.c:19:         sum[i][a[i - 1]] += 1;
	lw	a5,-96(s0)		# _55, i
	slli	a5,a5,3	#, _56, _55
	ld	a4,-48(s0)		# tmp288, sum
	add	a5,a4,a5	# _56, _57, tmp288
	ld	a4,0(a5)		# _58, *_57
# problem148.c:19:         sum[i][a[i - 1]] += 1;
	lw	a5,-96(s0)		# _59, i
	slli	a5,a5,2	#, _60, _59
	addi	a5,a5,-4	#, _61, _60
	ld	a3,-56(s0)		# tmp289, a
	add	a5,a3,a5	# _61, _62, tmp289
	lw	a5,0(a5)		# _63, *_62
# problem148.c:19:         sum[i][a[i - 1]] += 1;
	slli	a5,a5,2	#, _65, _64
	add	a5,a4,a5	# _65, _66, _58
	lw	a4,0(a5)		# _67, *_66
# problem148.c:19:         sum[i][a[i - 1]] += 1;
	lw	a5,-96(s0)		# _68, i
	slli	a5,a5,3	#, _69, _68
	ld	a3,-48(s0)		# tmp290, sum
	add	a5,a3,a5	# _69, _70, tmp290
	ld	a3,0(a5)		# _71, *_70
# problem148.c:19:         sum[i][a[i - 1]] += 1;
	lw	a5,-96(s0)		# _72, i
	slli	a5,a5,2	#, _73, _72
	addi	a5,a5,-4	#, _74, _73
	ld	a2,-56(s0)		# tmp291, a
	add	a5,a2,a5	# _74, _75, tmp291
	lw	a5,0(a5)		# _76, *_75
# problem148.c:19:         sum[i][a[i - 1]] += 1;
	slli	a5,a5,2	#, _78, _77
	add	a5,a3,a5	# _78, _79, _71
	addiw	a4,a4,1	#, tmp292, _67
	sext.w	a4,a4	# _80, tmp292
	sw	a4,0(a5)	# _80, *_79
# problem148.c:14:     for (int i = 1; i <= n; i++) {
	lw	a5,-96(s0)		# tmp295, i
	addiw	a5,a5,1	#, tmp293, tmp294
	sw	a5,-96(s0)	# tmp293, i
.L4:
# problem148.c:14:     for (int i = 1; i <= n; i++) {
	lw	a5,-96(s0)		# tmp297, i
	mv	a4,a5	# tmp296, tmp297
	lw	a5,-116(s0)		# tmp299, n
	sext.w	a4,a4	# tmp300, tmp296
	sext.w	a5,a5	# tmp301, tmp298
	ble	a4,a5,.L7	#, tmp300, tmp301,
# problem148.c:21:     for (int times = 1; times < 3; times++) {
	li	a5,1		# tmp302,
	sw	a5,-88(s0)	# tmp302, times
# problem148.c:21:     for (int times = 1; times < 3; times++) {
	j	.L8		#
.L20:
# problem148.c:22:         for (int i = 1; i <= n; i++) {
	li	a5,1		# tmp303,
	sw	a5,-84(s0)	# tmp303, i
# problem148.c:22:         for (int i = 1; i <= n; i++) {
	j	.L9		#
.L15:
# problem148.c:23:             for (int j = 0; j < 3; j++) {
	sw	zero,-80(s0)	#, j
# problem148.c:23:             for (int j = 0; j < 3; j++) {
	j	.L10		#
.L11:
# problem148.c:24:                 sum2[i][j] = sum2[i - 1][j];
	lw	a5,-84(s0)		# _81, i
	slli	a5,a5,3	#, _82, _81
	addi	a5,a5,-8	#, _83, _82
	ld	a4,-40(s0)		# tmp304, sum2
	add	a5,a4,a5	# _83, _84, tmp304
	ld	a4,0(a5)		# _85, *_84
# problem148.c:24:                 sum2[i][j] = sum2[i - 1][j];
	lw	a5,-80(s0)		# _86, j
	slli	a5,a5,2	#, _87, _86
	add	a4,a4,a5	# _87, _88, _85
# problem148.c:24:                 sum2[i][j] = sum2[i - 1][j];
	lw	a5,-84(s0)		# _89, i
	slli	a5,a5,3	#, _90, _89
	ld	a3,-40(s0)		# tmp305, sum2
	add	a5,a3,a5	# _90, _91, tmp305
	ld	a3,0(a5)		# _92, *_91
# problem148.c:24:                 sum2[i][j] = sum2[i - 1][j];
	lw	a5,-80(s0)		# _93, j
	slli	a5,a5,2	#, _94, _93
	add	a5,a3,a5	# _94, _95, _92
# problem148.c:24:                 sum2[i][j] = sum2[i - 1][j];
	lw	a4,0(a4)		# _96, *_88
# problem148.c:24:                 sum2[i][j] = sum2[i - 1][j];
	sw	a4,0(a5)	# _96, *_95
# problem148.c:23:             for (int j = 0; j < 3; j++) {
	lw	a5,-80(s0)		# tmp308, j
	addiw	a5,a5,1	#, tmp306, tmp307
	sw	a5,-80(s0)	# tmp306, j
.L10:
# problem148.c:23:             for (int j = 0; j < 3; j++) {
	lw	a5,-80(s0)		# tmp310, j
	sext.w	a4,a5	# tmp311, tmp309
	li	a5,2		# tmp312,
	ble	a4,a5,.L11	#, tmp311, tmp312,
# problem148.c:26:             if (i >= 1) {
	lw	a5,-84(s0)		# tmp314, i
	sext.w	a5,a5	# tmp315, tmp313
	ble	a5,zero,.L12	#, tmp315,,
# problem148.c:27:                 for (int j = 0; j <= 2; j++) {
	sw	zero,-76(s0)	#, j
# problem148.c:27:                 for (int j = 0; j <= 2; j++) {
	j	.L13		#
.L14:
# problem148.c:28:                     sum2[i][(a[i - 1] + j) % 3] += sum[i - 1][j];
	lw	a5,-84(s0)		# _97, i
	slli	a5,a5,3	#, _98, _97
	ld	a4,-40(s0)		# tmp316, sum2
	add	a5,a4,a5	# _98, _99, tmp316
	ld	a4,0(a5)		# _100, *_99
# problem148.c:28:                     sum2[i][(a[i - 1] + j) % 3] += sum[i - 1][j];
	lw	a5,-84(s0)		# _101, i
	slli	a5,a5,2	#, _102, _101
	addi	a5,a5,-4	#, _103, _102
	ld	a3,-56(s0)		# tmp317, a
	add	a5,a3,a5	# _103, _104, tmp317
	lw	a5,0(a5)		# _105, *_104
# problem148.c:28:                     sum2[i][(a[i - 1] + j) % 3] += sum[i - 1][j];
	lw	a3,-76(s0)		# tmp320, j
	addw	a5,a3,a5	# _105, tmp318, tmp319
	sext.w	a5,a5	# _106, tmp318
# problem148.c:28:                     sum2[i][(a[i - 1] + j) % 3] += sum[i - 1][j];
	mv	a3,a5	# tmp322, _106
	li	a5,3		# tmp324,
	remw	a5,a3,a5	# tmp324, tmp323, tmp322
	sext.w	a1,a5	# _219, tmp323
# problem148.c:28:                     sum2[i][(a[i - 1] + j) % 3] += sum[i - 1][j];
	mv	a5,a1	# _107, _219
	slli	a5,a5,2	#, _108, _107
	add	a5,a4,a5	# _108, _109, _100
	lw	a3,0(a5)		# _110, *_109
# problem148.c:28:                     sum2[i][(a[i - 1] + j) % 3] += sum[i - 1][j];
	lw	a5,-84(s0)		# _111, i
	slli	a5,a5,3	#, _112, _111
	addi	a5,a5,-8	#, _113, _112
	ld	a4,-48(s0)		# tmp325, sum
	add	a5,a4,a5	# _113, _114, tmp325
	ld	a4,0(a5)		# _115, *_114
# problem148.c:28:                     sum2[i][(a[i - 1] + j) % 3] += sum[i - 1][j];
	lw	a5,-76(s0)		# _116, j
	slli	a5,a5,2	#, _117, _116
	add	a5,a4,a5	# _117, _118, _115
	lw	a4,0(a5)		# _119, *_118
# problem148.c:28:                     sum2[i][(a[i - 1] + j) % 3] += sum[i - 1][j];
	lw	a5,-84(s0)		# _120, i
	slli	a5,a5,3	#, _121, _120
	ld	a2,-40(s0)		# tmp326, sum2
	add	a5,a2,a5	# _121, _122, tmp326
	ld	a2,0(a5)		# _123, *_122
# problem148.c:28:                     sum2[i][(a[i - 1] + j) % 3] += sum[i - 1][j];
	mv	a5,a1	# _124, _219
	slli	a5,a5,2	#, _125, _124
	add	a5,a2,a5	# _125, _126, _123
	addw	a4,a3,a4	# _119, tmp327, _110
	sext.w	a4,a4	# _127, tmp327
	sw	a4,0(a5)	# _127, *_126
# problem148.c:27:                 for (int j = 0; j <= 2; j++) {
	lw	a5,-76(s0)		# tmp330, j
	addiw	a5,a5,1	#, tmp328, tmp329
	sw	a5,-76(s0)	# tmp328, j
.L13:
# problem148.c:27:                 for (int j = 0; j <= 2; j++) {
	lw	a5,-76(s0)		# tmp332, j
	sext.w	a4,a5	# tmp333, tmp331
	li	a5,2		# tmp334,
	ble	a4,a5,.L14	#, tmp333, tmp334,
.L12:
# problem148.c:22:         for (int i = 1; i <= n; i++) {
	lw	a5,-84(s0)		# tmp337, i
	addiw	a5,a5,1	#, tmp335, tmp336
	sw	a5,-84(s0)	# tmp335, i
.L9:
# problem148.c:22:         for (int i = 1; i <= n; i++) {
	lw	a5,-84(s0)		# tmp339, i
	mv	a4,a5	# tmp338, tmp339
	lw	a5,-116(s0)		# tmp341, n
	sext.w	a4,a4	# tmp342, tmp338
	sext.w	a5,a5	# tmp343, tmp340
	ble	a4,a5,.L15	#, tmp342, tmp343,
# problem148.c:32:         for (int i = 0; i <= n; i++) {
	sw	zero,-72(s0)	#, i
# problem148.c:32:         for (int i = 0; i <= n; i++) {
	j	.L16		#
.L19:
# problem148.c:33:             for (int j = 0; j < 3; j++) {
	sw	zero,-68(s0)	#, j
# problem148.c:33:             for (int j = 0; j < 3; j++) {
	j	.L17		#
.L18:
# problem148.c:34:                 sum[i][j] = sum2[i][j];
	lw	a5,-72(s0)		# _128, i
	slli	a5,a5,3	#, _129, _128
	ld	a4,-40(s0)		# tmp344, sum2
	add	a5,a4,a5	# _129, _130, tmp344
	ld	a4,0(a5)		# _131, *_130
# problem148.c:34:                 sum[i][j] = sum2[i][j];
	lw	a5,-68(s0)		# _132, j
	slli	a5,a5,2	#, _133, _132
	add	a4,a4,a5	# _133, _134, _131
# problem148.c:34:                 sum[i][j] = sum2[i][j];
	lw	a5,-72(s0)		# _135, i
	slli	a5,a5,3	#, _136, _135
	ld	a3,-48(s0)		# tmp345, sum
	add	a5,a3,a5	# _136, _137, tmp345
	ld	a3,0(a5)		# _138, *_137
# problem148.c:34:                 sum[i][j] = sum2[i][j];
	lw	a5,-68(s0)		# _139, j
	slli	a5,a5,2	#, _140, _139
	add	a5,a3,a5	# _140, _141, _138
# problem148.c:34:                 sum[i][j] = sum2[i][j];
	lw	a4,0(a4)		# _142, *_134
# problem148.c:34:                 sum[i][j] = sum2[i][j];
	sw	a4,0(a5)	# _142, *_141
# problem148.c:35:                 sum2[i][j] = 0;
	lw	a5,-72(s0)		# _143, i
	slli	a5,a5,3	#, _144, _143
	ld	a4,-40(s0)		# tmp346, sum2
	add	a5,a4,a5	# _144, _145, tmp346
	ld	a4,0(a5)		# _146, *_145
# problem148.c:35:                 sum2[i][j] = 0;
	lw	a5,-68(s0)		# _147, j
	slli	a5,a5,2	#, _148, _147
	add	a5,a4,a5	# _148, _149, _146
# problem148.c:35:                 sum2[i][j] = 0;
	sw	zero,0(a5)	#, *_149
# problem148.c:33:             for (int j = 0; j < 3; j++) {
	lw	a5,-68(s0)		# tmp349, j
	addiw	a5,a5,1	#, tmp347, tmp348
	sw	a5,-68(s0)	# tmp347, j
.L17:
# problem148.c:33:             for (int j = 0; j < 3; j++) {
	lw	a5,-68(s0)		# tmp351, j
	sext.w	a4,a5	# tmp352, tmp350
	li	a5,2		# tmp353,
	ble	a4,a5,.L18	#, tmp352, tmp353,
# problem148.c:32:         for (int i = 0; i <= n; i++) {
	lw	a5,-72(s0)		# tmp356, i
	addiw	a5,a5,1	#, tmp354, tmp355
	sw	a5,-72(s0)	# tmp354, i
.L16:
# problem148.c:32:         for (int i = 0; i <= n; i++) {
	lw	a5,-72(s0)		# tmp358, i
	mv	a4,a5	# tmp357, tmp358
	lw	a5,-116(s0)		# tmp360, n
	sext.w	a4,a4	# tmp361, tmp357
	sext.w	a5,a5	# tmp362, tmp359
	ble	a4,a5,.L19	#, tmp361, tmp362,
# problem148.c:21:     for (int times = 1; times < 3; times++) {
	lw	a5,-88(s0)		# tmp365, times
	addiw	a5,a5,1	#, tmp363, tmp364
	sw	a5,-88(s0)	# tmp363, times
.L8:
# problem148.c:21:     for (int times = 1; times < 3; times++) {
	lw	a5,-88(s0)		# tmp367, times
	sext.w	a4,a5	# tmp368, tmp366
	li	a5,2		# tmp369,
	ble	a4,a5,.L20	#, tmp368, tmp369,
# problem148.c:40:     int result = sum[n][0];
	lw	a5,-116(s0)		# _150, n
	slli	a5,a5,3	#, _151, _150
	ld	a4,-48(s0)		# tmp370, sum
	add	a5,a4,a5	# _151, _152, tmp370
	ld	a5,0(a5)		# _153, *_152
# problem148.c:40:     int result = sum[n][0];
	lw	a5,0(a5)		# tmp371, *_153
	sw	a5,-60(s0)	# tmp371, result
# problem148.c:41:     for (int i = 0; i <= n; ++i) {
	sw	zero,-64(s0)	#, i
# problem148.c:41:     for (int i = 0; i <= n; ++i) {
	j	.L21		#
.L22:
# problem148.c:42:         free(sum[i]);
	lw	a5,-64(s0)		# _154, i
	slli	a5,a5,3	#, _155, _154
	ld	a4,-48(s0)		# tmp372, sum
	add	a5,a4,a5	# _155, _156, tmp372
# problem148.c:42:         free(sum[i]);
	ld	a5,0(a5)		# _157, *_156
	mv	a0,a5	#, _157
	call	free@plt	#
# problem148.c:43:         free(sum2[i]);
	lw	a5,-64(s0)		# _158, i
	slli	a5,a5,3	#, _159, _158
	ld	a4,-40(s0)		# tmp373, sum2
	add	a5,a4,a5	# _159, _160, tmp373
# problem148.c:43:         free(sum2[i]);
	ld	a5,0(a5)		# _161, *_160
	mv	a0,a5	#, _161
	call	free@plt	#
# problem148.c:41:     for (int i = 0; i <= n; ++i) {
	lw	a5,-64(s0)		# tmp376, i
	addiw	a5,a5,1	#, tmp374, tmp375
	sw	a5,-64(s0)	# tmp374, i
.L21:
# problem148.c:41:     for (int i = 0; i <= n; ++i) {
	lw	a5,-64(s0)		# tmp378, i
	mv	a4,a5	# tmp377, tmp378
	lw	a5,-116(s0)		# tmp380, n
	sext.w	a4,a4	# tmp381, tmp377
	sext.w	a5,a5	# tmp382, tmp379
	ble	a4,a5,.L22	#, tmp381, tmp382,
# problem148.c:45:     free(sum);
	ld	a0,-48(s0)		#, sum
	call	free@plt	#
# problem148.c:46:     free(sum2);
	ld	a0,-40(s0)		#, sum2
	call	free@plt	#
# problem148.c:47:     free(a);
	ld	a0,-56(s0)		#, a
	call	free@plt	#
# problem148.c:48:     return result;
	lw	a5,-60(s0)		# _205, result
# problem148.c:49: }
	mv	a0,a5	#, <retval>
	ld	ra,120(sp)		#,
	ld	s0,112(sp)		#,
	ld	s1,104(sp)		#,
	addi	sp,sp,128	#,,
	jr	ra		#
	.size	func0, .-func0
	.section	.rodata
	.align	3
.LC0:
	.string	"problem148.c"
	.align	3
.LC1:
	.string	"func0(5) == 1"
	.align	3
.LC2:
	.string	"func0(6) == 4"
	.align	3
.LC3:
	.string	"func0(10) == 36"
	.align	3
.LC4:
	.string	"func0(100) == 53361"
	.text
	.align	1
	.globl	main
	.type	main, @function
main:
	addi	sp,sp,-16	#,,
	sd	ra,8(sp)	#,
	sd	s0,0(sp)	#,
	addi	s0,sp,16	#,,
# problem148.c:56:     assert(func0(5) == 1);
	li	a0,5		#,
	call	func0		#
	mv	a5,a0	# tmp78,
	mv	a4,a5	# tmp79, _1
	li	a5,1		# tmp80,
	beq	a4,a5,.L25	#, tmp79, tmp80,
# problem148.c:56:     assert(func0(5) == 1);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,56		#,
	lla	a1,.LC0	#,
	lla	a0,.LC1	#,
	call	__assert_fail@plt	#
.L25:
# problem148.c:57:     assert(func0(6) == 4);
	li	a0,6		#,
	call	func0		#
	mv	a5,a0	# tmp81,
	mv	a4,a5	# tmp82, _2
	li	a5,4		# tmp83,
	beq	a4,a5,.L26	#, tmp82, tmp83,
# problem148.c:57:     assert(func0(6) == 4);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,57		#,
	lla	a1,.LC0	#,
	lla	a0,.LC2	#,
	call	__assert_fail@plt	#
.L26:
# problem148.c:58:     assert(func0(10) == 36);
	li	a0,10		#,
	call	func0		#
	mv	a5,a0	# tmp84,
	mv	a4,a5	# tmp85, _3
	li	a5,36		# tmp86,
	beq	a4,a5,.L27	#, tmp85, tmp86,
# problem148.c:58:     assert(func0(10) == 36);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,58		#,
	lla	a1,.LC0	#,
	lla	a0,.LC3	#,
	call	__assert_fail@plt	#
.L27:
# problem148.c:59:     assert(func0(100) == 53361);
	li	a0,100		#,
	call	func0		#
	mv	a5,a0	# tmp87,
	mv	a4,a5	# tmp88, _4
	li	a5,53248		# tmp90,
	addi	a5,a5,113	#, tmp89, tmp90
	beq	a4,a5,.L28	#, tmp88, tmp89,
# problem148.c:59:     assert(func0(100) == 53361);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,59		#,
	lla	a1,.LC0	#,
	lla	a0,.LC4	#,
	call	__assert_fail@plt	#
.L28:
# problem148.c:61:     return 0;
	li	a5,0		# _14,
# problem148.c:62: }
	mv	a0,a5	#, <retval>
	ld	ra,8(sp)		#,
	ld	s0,0(sp)		#,
	addi	sp,sp,16	#,,
	jr	ra		#
	.size	main, .-main
	.section	.rodata
	.align	3
	.type	__PRETTY_FUNCTION__.0, @object
	.size	__PRETTY_FUNCTION__.0, 5
__PRETTY_FUNCTION__.0:
	.string	"main"
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
