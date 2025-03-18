	.file	"problem148.c"
	.option pic
	.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
# GNU C17 (Ubuntu 13.3.0-6ubuntu2~24.04) version 13.3.0 (riscv64-linux-gnu)
#	compiled by GNU C version 13.3.0, GMP version 6.3.0, MPFR version 4.2.1, MPC version 1.3.1, isl version isl-0.26-GMP

# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed: -mabi=lp64d -misa-spec=20191213 -march=rv64imafdc_zicsr_zifencei -fstack-protector-strong
	.text
	.align	1
	.globl	func0
	.type	func0, @function
func0:
.LFB6:
	.cfi_startproc
	addi	sp,sp,-128	#,,
	.cfi_def_cfa_offset 128
	sd	ra,120(sp)	#,
	sd	s0,112(sp)	#,
	sd	s1,104(sp)	#,
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	.cfi_offset 9, -24
	addi	s0,sp,128	#,,
	.cfi_def_cfa 8, 0
	mv	a5,a0	# tmp298, n
	sw	a5,-116(s0)	# tmp299, n
# problem148.c:5:     int *a = (int *)malloc(n * sizeof(int));
	lw	a5,-116(s0)		# _1, n
	slli	a5,a5,2	#, _2, _1
	mv	a0,a5	#, _2
	call	malloc@plt	#
	mv	a5,a0	# tmp300,
	sd	a5,-56(s0)	# tmp300, a
# problem148.c:6:     int **sum = (int **)malloc((n + 1) * sizeof(int *));
	lw	a5,-116(s0)		# tmp303, n
	addiw	a5,a5,1	#, tmp301, tmp302
	sext.w	a5,a5	# _3, tmp301
# problem148.c:6:     int **sum = (int **)malloc((n + 1) * sizeof(int *));
	slli	a5,a5,3	#, _5, _4
	mv	a0,a5	#, _5
	call	malloc@plt	#
	mv	a5,a0	# tmp304,
	sd	a5,-48(s0)	# tmp304, sum
# problem148.c:7:     int **sum2 = (int **)malloc((n + 1) * sizeof(int *));
	lw	a5,-116(s0)		# tmp307, n
	addiw	a5,a5,1	#, tmp305, tmp306
	sext.w	a5,a5	# _6, tmp305
# problem148.c:7:     int **sum2 = (int **)malloc((n + 1) * sizeof(int *));
	slli	a5,a5,3	#, _8, _7
	mv	a0,a5	#, _8
	call	malloc@plt	#
	mv	a5,a0	# tmp308,
	sd	a5,-40(s0)	# tmp308, sum2
# problem148.c:8:     for (int i = 0; i <= n; i++) {
	sw	zero,-100(s0)	#, i
# problem148.c:8:     for (int i = 0; i <= n; i++) {
	j	.L2		#
.L3:
# problem148.c:9:         sum[i] = (int *)calloc(3, sizeof(int));
	lw	a5,-100(s0)		# _9, i
	slli	a5,a5,3	#, _10, _9
	ld	a4,-48(s0)		# tmp309, sum
	add	s1,a4,a5	# _10, _11, tmp309
# problem148.c:9:         sum[i] = (int *)calloc(3, sizeof(int));
	li	a1,4		#,
	li	a0,3		#,
	call	calloc@plt	#
	mv	a5,a0	# tmp310,
# problem148.c:9:         sum[i] = (int *)calloc(3, sizeof(int));
	sd	a5,0(s1)	# _12, *_11
# problem148.c:10:         sum2[i] = (int *)calloc(3, sizeof(int));
	lw	a5,-100(s0)		# _13, i
	slli	a5,a5,3	#, _14, _13
	ld	a4,-40(s0)		# tmp311, sum2
	add	s1,a4,a5	# _14, _15, tmp311
# problem148.c:10:         sum2[i] = (int *)calloc(3, sizeof(int));
	li	a1,4		#,
	li	a0,3		#,
	call	calloc@plt	#
	mv	a5,a0	# tmp312,
# problem148.c:10:         sum2[i] = (int *)calloc(3, sizeof(int));
	sd	a5,0(s1)	# _16, *_15
# problem148.c:8:     for (int i = 0; i <= n; i++) {
	lw	a5,-100(s0)		# tmp315, i
	addiw	a5,a5,1	#, tmp313, tmp314
	sw	a5,-100(s0)	# tmp313, i
.L2:
# problem148.c:8:     for (int i = 0; i <= n; i++) {
	lw	a5,-100(s0)		# tmp317, i
	mv	a4,a5	# tmp316, tmp317
	lw	a5,-116(s0)		# tmp319, n
	sext.w	a4,a4	# tmp320, tmp316
	sext.w	a5,a5	# tmp321, tmp318
	ble	a4,a5,.L3	#, tmp320, tmp321,
# problem148.c:12:     sum[0][0] = sum[0][1] = sum[0][2] = 0;
	ld	a5,-48(s0)		# tmp322, sum
	ld	a5,0(a5)		# _17, *sum_188
# problem148.c:12:     sum[0][0] = sum[0][1] = sum[0][2] = 0;
	addi	a4,a5,8	#, _18, _17
# problem148.c:12:     sum[0][0] = sum[0][1] = sum[0][2] = 0;
	sw	zero,0(a4)	#, *_18
# problem148.c:12:     sum[0][0] = sum[0][1] = sum[0][2] = 0;
	ld	a5,-48(s0)		# tmp323, sum
	ld	a5,0(a5)		# _19, *sum_188
# problem148.c:12:     sum[0][0] = sum[0][1] = sum[0][2] = 0;
	addi	a5,a5,4	#, _20, _19
# problem148.c:12:     sum[0][0] = sum[0][1] = sum[0][2] = 0;
	lw	a4,0(a4)		# _21, *_18
# problem148.c:12:     sum[0][0] = sum[0][1] = sum[0][2] = 0;
	sw	a4,0(a5)	# _21, *_20
# problem148.c:12:     sum[0][0] = sum[0][1] = sum[0][2] = 0;
	ld	a4,-48(s0)		# tmp324, sum
	ld	a4,0(a4)		# _22, *sum_188
# problem148.c:12:     sum[0][0] = sum[0][1] = sum[0][2] = 0;
	lw	a5,0(a5)		# _23, *_20
# problem148.c:12:     sum[0][0] = sum[0][1] = sum[0][2] = 0;
	sw	a5,0(a4)	# _23, *_22
# problem148.c:13:     sum2[0][0] = sum2[0][1] = sum2[0][2] = 0;
	ld	a5,-40(s0)		# tmp325, sum2
	ld	a5,0(a5)		# _24, *sum2_190
# problem148.c:13:     sum2[0][0] = sum2[0][1] = sum2[0][2] = 0;
	addi	a4,a5,8	#, _25, _24
# problem148.c:13:     sum2[0][0] = sum2[0][1] = sum2[0][2] = 0;
	sw	zero,0(a4)	#, *_25
# problem148.c:13:     sum2[0][0] = sum2[0][1] = sum2[0][2] = 0;
	ld	a5,-40(s0)		# tmp326, sum2
	ld	a5,0(a5)		# _26, *sum2_190
# problem148.c:13:     sum2[0][0] = sum2[0][1] = sum2[0][2] = 0;
	addi	a5,a5,4	#, _27, _26
# problem148.c:13:     sum2[0][0] = sum2[0][1] = sum2[0][2] = 0;
	lw	a4,0(a4)		# _28, *_25
# problem148.c:13:     sum2[0][0] = sum2[0][1] = sum2[0][2] = 0;
	sw	a4,0(a5)	# _28, *_27
# problem148.c:13:     sum2[0][0] = sum2[0][1] = sum2[0][2] = 0;
	ld	a4,-40(s0)		# tmp327, sum2
	ld	a4,0(a4)		# _29, *sum2_190
# problem148.c:13:     sum2[0][0] = sum2[0][1] = sum2[0][2] = 0;
	lw	a5,0(a5)		# _30, *_27
# problem148.c:13:     sum2[0][0] = sum2[0][1] = sum2[0][2] = 0;
	sw	a5,0(a4)	# _30, *_29
# problem148.c:14:     for (int i = 1; i <= n; i++) {
	li	a5,1		# tmp328,
	sw	a5,-96(s0)	# tmp328, i
# problem148.c:14:     for (int i = 1; i <= n; i++) {
	j	.L4		#
.L7:
# problem148.c:15:         a[i - 1] = (i * i - i + 1) % 3;
	lw	a5,-96(s0)		# tmp331, i
	mulw	a5,a5,a5	# tmp329, tmp330, tmp330
	sext.w	a5,a5	# _31, tmp329
# problem148.c:15:         a[i - 1] = (i * i - i + 1) % 3;
	lw	a4,-96(s0)		# tmp334, i
	subw	a5,a5,a4	# tmp332, _31, tmp333
	sext.w	a5,a5	# _32, tmp332
# problem148.c:15:         a[i - 1] = (i * i - i + 1) % 3;
	addiw	a5,a5,1	#, tmp335, _32
	sext.w	a3,a5	# _33, tmp335
# problem148.c:15:         a[i - 1] = (i * i - i + 1) % 3;
	lw	a5,-96(s0)		# _34, i
	slli	a5,a5,2	#, _35, _34
	addi	a5,a5,-4	#, _36, _35
	ld	a4,-56(s0)		# tmp336, a
	add	a5,a4,a5	# _36, _37, tmp336
# problem148.c:15:         a[i - 1] = (i * i - i + 1) % 3;
	li	a4,3		# tmp340,
	remw	a4,a3,a4	# tmp340, tmp339, tmp338
	sext.w	a4,a4	# _38, tmp339
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
	ld	a4,-48(s0)		# tmp341, sum
	add	a5,a4,a5	# _41, _42, tmp341
	ld	a4,0(a5)		# _43, *_42
# problem148.c:17:             sum[i][j] = sum[i - 1][j];
	lw	a5,-92(s0)		# _44, j
	slli	a5,a5,2	#, _45, _44
	add	a4,a4,a5	# _45, _46, _43
# problem148.c:17:             sum[i][j] = sum[i - 1][j];
	lw	a5,-96(s0)		# _47, i
	slli	a5,a5,3	#, _48, _47
	ld	a3,-48(s0)		# tmp342, sum
	add	a5,a3,a5	# _48, _49, tmp342
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
	lw	a5,-92(s0)		# tmp345, j
	addiw	a5,a5,1	#, tmp343, tmp344
	sw	a5,-92(s0)	# tmp343, j
.L5:
# problem148.c:16:         for (int j = 0; j < 3; j++) {
	lw	a5,-92(s0)		# tmp347, j
	sext.w	a4,a5	# tmp348, tmp346
	li	a5,2		# tmp349,
	ble	a4,a5,.L6	#, tmp348, tmp349,
# problem148.c:19:         sum[i][a[i - 1]] += 1;
	lw	a5,-96(s0)		# _55, i
	slli	a5,a5,3	#, _56, _55
	ld	a4,-48(s0)		# tmp350, sum
	add	a5,a4,a5	# _56, _57, tmp350
	ld	a4,0(a5)		# _58, *_57
# problem148.c:19:         sum[i][a[i - 1]] += 1;
	lw	a5,-96(s0)		# _59, i
	slli	a5,a5,2	#, _60, _59
	addi	a5,a5,-4	#, _61, _60
	ld	a3,-56(s0)		# tmp351, a
	add	a5,a3,a5	# _61, _62, tmp351
	lw	a5,0(a5)		# _63, *_62
# problem148.c:19:         sum[i][a[i - 1]] += 1;
	slli	a5,a5,2	#, _65, _64
	add	a5,a4,a5	# _65, _66, _58
	lw	a4,0(a5)		# _67, *_66
# problem148.c:19:         sum[i][a[i - 1]] += 1;
	lw	a5,-96(s0)		# _68, i
	slli	a5,a5,3	#, _69, _68
	ld	a3,-48(s0)		# tmp352, sum
	add	a5,a3,a5	# _69, _70, tmp352
	ld	a3,0(a5)		# _71, *_70
# problem148.c:19:         sum[i][a[i - 1]] += 1;
	lw	a5,-96(s0)		# _72, i
	slli	a5,a5,2	#, _73, _72
	addi	a5,a5,-4	#, _74, _73
	ld	a2,-56(s0)		# tmp353, a
	add	a5,a2,a5	# _74, _75, tmp353
	lw	a5,0(a5)		# _76, *_75
# problem148.c:19:         sum[i][a[i - 1]] += 1;
	slli	a5,a5,2	#, _78, _77
	add	a5,a3,a5	# _78, _79, _71
# problem148.c:19:         sum[i][a[i - 1]] += 1;
	addiw	a4,a4,1	#, tmp354, _67
	sext.w	a4,a4	# _80, tmp354
	sw	a4,0(a5)	# _80, *_79
# problem148.c:14:     for (int i = 1; i <= n; i++) {
	lw	a5,-96(s0)		# tmp357, i
	addiw	a5,a5,1	#, tmp355, tmp356
	sw	a5,-96(s0)	# tmp355, i
.L4:
# problem148.c:14:     for (int i = 1; i <= n; i++) {
	lw	a5,-96(s0)		# tmp359, i
	mv	a4,a5	# tmp358, tmp359
	lw	a5,-116(s0)		# tmp361, n
	sext.w	a4,a4	# tmp362, tmp358
	sext.w	a5,a5	# tmp363, tmp360
	ble	a4,a5,.L7	#, tmp362, tmp363,
# problem148.c:21:     for (int times = 1; times < 3; times++) {
	li	a5,1		# tmp364,
	sw	a5,-88(s0)	# tmp364, times
# problem148.c:21:     for (int times = 1; times < 3; times++) {
	j	.L8		#
.L20:
# problem148.c:22:         for (int i = 1; i <= n; i++) {
	li	a5,1		# tmp365,
	sw	a5,-84(s0)	# tmp365, i
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
	ld	a4,-40(s0)		# tmp366, sum2
	add	a5,a4,a5	# _83, _84, tmp366
	ld	a4,0(a5)		# _85, *_84
# problem148.c:24:                 sum2[i][j] = sum2[i - 1][j];
	lw	a5,-80(s0)		# _86, j
	slli	a5,a5,2	#, _87, _86
	add	a4,a4,a5	# _87, _88, _85
# problem148.c:24:                 sum2[i][j] = sum2[i - 1][j];
	lw	a5,-84(s0)		# _89, i
	slli	a5,a5,3	#, _90, _89
	ld	a3,-40(s0)		# tmp367, sum2
	add	a5,a3,a5	# _90, _91, tmp367
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
	lw	a5,-80(s0)		# tmp370, j
	addiw	a5,a5,1	#, tmp368, tmp369
	sw	a5,-80(s0)	# tmp368, j
.L10:
# problem148.c:23:             for (int j = 0; j < 3; j++) {
	lw	a5,-80(s0)		# tmp372, j
	sext.w	a4,a5	# tmp373, tmp371
	li	a5,2		# tmp374,
	ble	a4,a5,.L11	#, tmp373, tmp374,
# problem148.c:26:             if (i >= 1) {
	lw	a5,-84(s0)		# tmp376, i
	sext.w	a5,a5	# tmp377, tmp375
	ble	a5,zero,.L12	#, tmp377,,
# problem148.c:27:                 for (int j = 0; j <= 2; j++) {
	sw	zero,-76(s0)	#, j
# problem148.c:27:                 for (int j = 0; j <= 2; j++) {
	j	.L13		#
.L14:
# problem148.c:28:                     sum2[i][(a[i - 1] + j) % 3] += sum[i - 1][j];
	lw	a5,-84(s0)		# _97, i
	slli	a5,a5,3	#, _98, _97
	ld	a4,-40(s0)		# tmp378, sum2
	add	a5,a4,a5	# _98, _99, tmp378
	ld	a4,0(a5)		# _100, *_99
# problem148.c:28:                     sum2[i][(a[i - 1] + j) % 3] += sum[i - 1][j];
	lw	a5,-84(s0)		# _101, i
	slli	a5,a5,2	#, _102, _101
	addi	a5,a5,-4	#, _103, _102
	ld	a3,-56(s0)		# tmp379, a
	add	a5,a3,a5	# _103, _104, tmp379
	lw	a5,0(a5)		# _105, *_104
# problem148.c:28:                     sum2[i][(a[i - 1] + j) % 3] += sum[i - 1][j];
	lw	a3,-76(s0)		# tmp382, j
	addw	a5,a3,a5	# _105, tmp380, tmp381
	sext.w	a5,a5	# _106, tmp380
# problem148.c:28:                     sum2[i][(a[i - 1] + j) % 3] += sum[i - 1][j];
	mv	a3,a5	# tmp384, _106
	li	a5,3		# tmp386,
	remw	a5,a3,a5	# tmp386, tmp385, tmp384
	sext.w	a1,a5	# _219, tmp385
# problem148.c:28:                     sum2[i][(a[i - 1] + j) % 3] += sum[i - 1][j];
	mv	a5,a1	# _107, _219
	slli	a5,a5,2	#, _108, _107
	add	a5,a4,a5	# _108, _109, _100
	lw	a3,0(a5)		# _110, *_109
# problem148.c:28:                     sum2[i][(a[i - 1] + j) % 3] += sum[i - 1][j];
	lw	a5,-84(s0)		# _111, i
	slli	a5,a5,3	#, _112, _111
	addi	a5,a5,-8	#, _113, _112
	ld	a4,-48(s0)		# tmp387, sum
	add	a5,a4,a5	# _113, _114, tmp387
	ld	a4,0(a5)		# _115, *_114
# problem148.c:28:                     sum2[i][(a[i - 1] + j) % 3] += sum[i - 1][j];
	lw	a5,-76(s0)		# _116, j
	slli	a5,a5,2	#, _117, _116
	add	a5,a4,a5	# _117, _118, _115
	lw	a4,0(a5)		# _119, *_118
# problem148.c:28:                     sum2[i][(a[i - 1] + j) % 3] += sum[i - 1][j];
	lw	a5,-84(s0)		# _120, i
	slli	a5,a5,3	#, _121, _120
	ld	a2,-40(s0)		# tmp388, sum2
	add	a5,a2,a5	# _121, _122, tmp388
	ld	a2,0(a5)		# _123, *_122
# problem148.c:28:                     sum2[i][(a[i - 1] + j) % 3] += sum[i - 1][j];
	mv	a5,a1	# _124, _219
	slli	a5,a5,2	#, _125, _124
	add	a5,a2,a5	# _125, _126, _123
# problem148.c:28:                     sum2[i][(a[i - 1] + j) % 3] += sum[i - 1][j];
	addw	a4,a3,a4	# _119, tmp389, _110
	sext.w	a4,a4	# _127, tmp389
	sw	a4,0(a5)	# _127, *_126
# problem148.c:27:                 for (int j = 0; j <= 2; j++) {
	lw	a5,-76(s0)		# tmp392, j
	addiw	a5,a5,1	#, tmp390, tmp391
	sw	a5,-76(s0)	# tmp390, j
.L13:
# problem148.c:27:                 for (int j = 0; j <= 2; j++) {
	lw	a5,-76(s0)		# tmp394, j
	sext.w	a4,a5	# tmp395, tmp393
	li	a5,2		# tmp396,
	ble	a4,a5,.L14	#, tmp395, tmp396,
.L12:
# problem148.c:22:         for (int i = 1; i <= n; i++) {
	lw	a5,-84(s0)		# tmp399, i
	addiw	a5,a5,1	#, tmp397, tmp398
	sw	a5,-84(s0)	# tmp397, i
.L9:
# problem148.c:22:         for (int i = 1; i <= n; i++) {
	lw	a5,-84(s0)		# tmp401, i
	mv	a4,a5	# tmp400, tmp401
	lw	a5,-116(s0)		# tmp403, n
	sext.w	a4,a4	# tmp404, tmp400
	sext.w	a5,a5	# tmp405, tmp402
	ble	a4,a5,.L15	#, tmp404, tmp405,
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
	ld	a4,-40(s0)		# tmp406, sum2
	add	a5,a4,a5	# _129, _130, tmp406
	ld	a4,0(a5)		# _131, *_130
# problem148.c:34:                 sum[i][j] = sum2[i][j];
	lw	a5,-68(s0)		# _132, j
	slli	a5,a5,2	#, _133, _132
	add	a4,a4,a5	# _133, _134, _131
# problem148.c:34:                 sum[i][j] = sum2[i][j];
	lw	a5,-72(s0)		# _135, i
	slli	a5,a5,3	#, _136, _135
	ld	a3,-48(s0)		# tmp407, sum
	add	a5,a3,a5	# _136, _137, tmp407
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
	ld	a4,-40(s0)		# tmp408, sum2
	add	a5,a4,a5	# _144, _145, tmp408
	ld	a4,0(a5)		# _146, *_145
# problem148.c:35:                 sum2[i][j] = 0;
	lw	a5,-68(s0)		# _147, j
	slli	a5,a5,2	#, _148, _147
	add	a5,a4,a5	# _148, _149, _146
# problem148.c:35:                 sum2[i][j] = 0;
	sw	zero,0(a5)	#, *_149
# problem148.c:33:             for (int j = 0; j < 3; j++) {
	lw	a5,-68(s0)		# tmp411, j
	addiw	a5,a5,1	#, tmp409, tmp410
	sw	a5,-68(s0)	# tmp409, j
.L17:
# problem148.c:33:             for (int j = 0; j < 3; j++) {
	lw	a5,-68(s0)		# tmp413, j
	sext.w	a4,a5	# tmp414, tmp412
	li	a5,2		# tmp415,
	ble	a4,a5,.L18	#, tmp414, tmp415,
# problem148.c:32:         for (int i = 0; i <= n; i++) {
	lw	a5,-72(s0)		# tmp418, i
	addiw	a5,a5,1	#, tmp416, tmp417
	sw	a5,-72(s0)	# tmp416, i
.L16:
# problem148.c:32:         for (int i = 0; i <= n; i++) {
	lw	a5,-72(s0)		# tmp420, i
	mv	a4,a5	# tmp419, tmp420
	lw	a5,-116(s0)		# tmp422, n
	sext.w	a4,a4	# tmp423, tmp419
	sext.w	a5,a5	# tmp424, tmp421
	ble	a4,a5,.L19	#, tmp423, tmp424,
# problem148.c:21:     for (int times = 1; times < 3; times++) {
	lw	a5,-88(s0)		# tmp427, times
	addiw	a5,a5,1	#, tmp425, tmp426
	sw	a5,-88(s0)	# tmp425, times
.L8:
# problem148.c:21:     for (int times = 1; times < 3; times++) {
	lw	a5,-88(s0)		# tmp429, times
	sext.w	a4,a5	# tmp430, tmp428
	li	a5,2		# tmp431,
	ble	a4,a5,.L20	#, tmp430, tmp431,
# problem148.c:40:     int result = sum[n][0];
	lw	a5,-116(s0)		# _150, n
	slli	a5,a5,3	#, _151, _150
	ld	a4,-48(s0)		# tmp432, sum
	add	a5,a4,a5	# _151, _152, tmp432
	ld	a5,0(a5)		# _153, *_152
# problem148.c:40:     int result = sum[n][0];
	lw	a5,0(a5)		# tmp433, *_153
	sw	a5,-60(s0)	# tmp433, result
# problem148.c:41:     for (int i = 0; i <= n; ++i) {
	sw	zero,-64(s0)	#, i
# problem148.c:41:     for (int i = 0; i <= n; ++i) {
	j	.L21		#
.L22:
# problem148.c:42:         free(sum[i]);
	lw	a5,-64(s0)		# _154, i
	slli	a5,a5,3	#, _155, _154
	ld	a4,-48(s0)		# tmp434, sum
	add	a5,a4,a5	# _155, _156, tmp434
# problem148.c:42:         free(sum[i]);
	ld	a5,0(a5)		# _157, *_156
	mv	a0,a5	#, _157
	call	free@plt	#
# problem148.c:43:         free(sum2[i]);
	lw	a5,-64(s0)		# _158, i
	slli	a5,a5,3	#, _159, _158
	ld	a4,-40(s0)		# tmp435, sum2
	add	a5,a4,a5	# _159, _160, tmp435
# problem148.c:43:         free(sum2[i]);
	ld	a5,0(a5)		# _161, *_160
	mv	a0,a5	#, _161
	call	free@plt	#
# problem148.c:41:     for (int i = 0; i <= n; ++i) {
	lw	a5,-64(s0)		# tmp438, i
	addiw	a5,a5,1	#, tmp436, tmp437
	sw	a5,-64(s0)	# tmp436, i
.L21:
# problem148.c:41:     for (int i = 0; i <= n; ++i) {
	lw	a5,-64(s0)		# tmp440, i
	mv	a4,a5	# tmp439, tmp440
	lw	a5,-116(s0)		# tmp442, n
	sext.w	a4,a4	# tmp443, tmp439
	sext.w	a5,a5	# tmp444, tmp441
	ble	a4,a5,.L22	#, tmp443, tmp444,
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
	.cfi_restore 1
	ld	s0,112(sp)		#,
	.cfi_restore 8
	.cfi_def_cfa 2, 128
	ld	s1,104(sp)		#,
	.cfi_restore 9
	addi	sp,sp,128	#,,
	.cfi_def_cfa_offset 0
	jr	ra		#
	.cfi_endproc
.LFE6:
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
.LFB7:
	.cfi_startproc
	addi	sp,sp,-16	#,,
	.cfi_def_cfa_offset 16
	sd	ra,8(sp)	#,
	sd	s0,0(sp)	#,
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,16	#,,
	.cfi_def_cfa 8, 0
# problem148.c:56:     assert(func0(5) == 1);
	li	a0,5		#,
	call	func0		#
	mv	a5,a0	# tmp140,
# problem148.c:56:     assert(func0(5) == 1);
	mv	a4,a5	# tmp141, _1
	li	a5,1		# tmp142,
	beq	a4,a5,.L25	#, tmp141, tmp142,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,56		#,
	lla	a1,.LC0	#,
	lla	a0,.LC1	#,
	call	__assert_fail@plt	#
.L25:
# problem148.c:57:     assert(func0(6) == 4);
	li	a0,6		#,
	call	func0		#
	mv	a5,a0	# tmp143,
# problem148.c:57:     assert(func0(6) == 4);
	mv	a4,a5	# tmp144, _2
	li	a5,4		# tmp145,
	beq	a4,a5,.L26	#, tmp144, tmp145,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,57		#,
	lla	a1,.LC0	#,
	lla	a0,.LC2	#,
	call	__assert_fail@plt	#
.L26:
# problem148.c:58:     assert(func0(10) == 36);
	li	a0,10		#,
	call	func0		#
	mv	a5,a0	# tmp146,
# problem148.c:58:     assert(func0(10) == 36);
	mv	a4,a5	# tmp147, _3
	li	a5,36		# tmp148,
	beq	a4,a5,.L27	#, tmp147, tmp148,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,58		#,
	lla	a1,.LC0	#,
	lla	a0,.LC3	#,
	call	__assert_fail@plt	#
.L27:
# problem148.c:59:     assert(func0(100) == 53361);
	li	a0,100		#,
	call	func0		#
	mv	a5,a0	# tmp149,
# problem148.c:59:     assert(func0(100) == 53361);
	mv	a4,a5	# tmp150, _4
	li	a5,53248		# tmp152,
	addi	a5,a5,113	#, tmp151, tmp152
	beq	a4,a5,.L28	#, tmp150, tmp151,
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
	.cfi_restore 1
	ld	s0,0(sp)		#,
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	addi	sp,sp,16	#,,
	.cfi_def_cfa_offset 0
	jr	ra		#
	.cfi_endproc
.LFE7:
	.size	main, .-main
	.section	.rodata
	.align	3
	.type	__PRETTY_FUNCTION__.0, @object
	.size	__PRETTY_FUNCTION__.0, 5
__PRETTY_FUNCTION__.0:
	.string	"main"
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
