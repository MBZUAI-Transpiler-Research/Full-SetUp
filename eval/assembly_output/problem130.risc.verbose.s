	.file	"problem130.c"
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
	addi	sp,sp,-80	#,,
	.cfi_def_cfa_offset 80
	sd	ra,72(sp)	#,
	sd	s0,64(sp)	#,
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,80	#,,
	.cfi_def_cfa 8, 0
	sd	a0,-56(s0)	# grid, grid
	mv	a5,a1	# tmp224, N
	mv	a4,a2	# tmp226, k
	sd	a3,-72(s0)	# returnSize, returnSize
	sw	a5,-60(s0)	# tmp225, N
	mv	a5,a4	# tmp227, tmp226
	sw	a5,-64(s0)	# tmp227, k
# problem130.c:6:     for (i = 0; i < N; i++)
	sw	zero,-44(s0)	#, i
# problem130.c:6:     for (i = 0; i < N; i++)
	j	.L2		#
.L6:
# problem130.c:7:         for (j = 0; j < N; j++)
	sw	zero,-40(s0)	#, j
# problem130.c:7:         for (j = 0; j < N; j++)
	j	.L3		#
.L5:
# problem130.c:8:             if (grid[i][j] == 1) {
	lw	a5,-44(s0)		# _1, i
	slli	a5,a5,3	#, _2, _1
	ld	a4,-56(s0)		# tmp228, grid
	add	a5,a4,a5	# _2, _3, tmp228
	ld	a4,0(a5)		# _4, *_3
# problem130.c:8:             if (grid[i][j] == 1) {
	lw	a5,-40(s0)		# _5, j
	slli	a5,a5,2	#, _6, _5
	add	a5,a4,a5	# _6, _7, _4
	lw	a5,0(a5)		# _8, *_7
# problem130.c:8:             if (grid[i][j] == 1) {
	mv	a4,a5	# tmp229, _8
	li	a5,1		# tmp230,
	bne	a4,a5,.L4	#, tmp229, tmp230,
# problem130.c:9:                 x = i;
	lw	a5,-44(s0)		# tmp231, i
	sw	a5,-36(s0)	# tmp231, x
# problem130.c:10:                 y = j;
	lw	a5,-40(s0)		# tmp232, j
	sw	a5,-32(s0)	# tmp232, y
.L4:
# problem130.c:7:         for (j = 0; j < N; j++)
	lw	a5,-40(s0)		# tmp235, j
	addiw	a5,a5,1	#, tmp233, tmp234
	sw	a5,-40(s0)	# tmp233, j
.L3:
# problem130.c:7:         for (j = 0; j < N; j++)
	lw	a5,-40(s0)		# tmp237, j
	mv	a4,a5	# tmp236, tmp237
	lw	a5,-60(s0)		# tmp239, N
	sext.w	a4,a4	# tmp240, tmp236
	sext.w	a5,a5	# tmp241, tmp238
	blt	a4,a5,.L5	#, tmp240, tmp241,
# problem130.c:6:     for (i = 0; i < N; i++)
	lw	a5,-44(s0)		# tmp244, i
	addiw	a5,a5,1	#, tmp242, tmp243
	sw	a5,-44(s0)	# tmp242, i
.L2:
# problem130.c:6:     for (i = 0; i < N; i++)
	lw	a5,-44(s0)		# tmp246, i
	mv	a4,a5	# tmp245, tmp246
	lw	a5,-60(s0)		# tmp248, N
	sext.w	a4,a4	# tmp249, tmp245
	sext.w	a5,a5	# tmp250, tmp247
	blt	a4,a5,.L6	#, tmp249, tmp250,
# problem130.c:12:     min = N * N;
	lw	a5,-60(s0)		# tmp253, N
	mulw	a5,a5,a5	# tmp251, tmp252, tmp252
	sw	a5,-28(s0)	# tmp251, min
# problem130.c:13:     if (x > 0 && grid[x - 1][y] < min) min = grid[x - 1][y];
	lw	a5,-36(s0)		# tmp255, x
	sext.w	a5,a5	# tmp256, tmp254
	ble	a5,zero,.L7	#, tmp256,,
# problem130.c:13:     if (x > 0 && grid[x - 1][y] < min) min = grid[x - 1][y];
	lw	a5,-36(s0)		# _9, x
	slli	a5,a5,3	#, _10, _9
	addi	a5,a5,-8	#, _11, _10
	ld	a4,-56(s0)		# tmp257, grid
	add	a5,a4,a5	# _11, _12, tmp257
	ld	a4,0(a5)		# _13, *_12
# problem130.c:13:     if (x > 0 && grid[x - 1][y] < min) min = grid[x - 1][y];
	lw	a5,-32(s0)		# _14, y
	slli	a5,a5,2	#, _15, _14
	add	a5,a4,a5	# _15, _16, _13
	lw	a4,0(a5)		# _17, *_16
# problem130.c:13:     if (x > 0 && grid[x - 1][y] < min) min = grid[x - 1][y];
	lw	a5,-28(s0)		# tmp259, min
	sext.w	a5,a5	# tmp260, tmp258
	ble	a5,a4,.L7	#, tmp260, tmp261,
# problem130.c:13:     if (x > 0 && grid[x - 1][y] < min) min = grid[x - 1][y];
	lw	a5,-36(s0)		# _18, x
	slli	a5,a5,3	#, _19, _18
	addi	a5,a5,-8	#, _20, _19
	ld	a4,-56(s0)		# tmp262, grid
	add	a5,a4,a5	# _20, _21, tmp262
	ld	a4,0(a5)		# _22, *_21
# problem130.c:13:     if (x > 0 && grid[x - 1][y] < min) min = grid[x - 1][y];
	lw	a5,-32(s0)		# _23, y
	slli	a5,a5,2	#, _24, _23
	add	a5,a4,a5	# _24, _25, _22
# problem130.c:13:     if (x > 0 && grid[x - 1][y] < min) min = grid[x - 1][y];
	lw	a5,0(a5)		# tmp263, *_25
	sw	a5,-28(s0)	# tmp263, min
.L7:
# problem130.c:14:     if (x < N - 1 && grid[x + 1][y] < min) min = grid[x + 1][y];
	lw	a5,-60(s0)		# tmp266, N
	addiw	a5,a5,-1	#, tmp264, tmp265
	sext.w	a4,a5	# _26, tmp264
# problem130.c:14:     if (x < N - 1 && grid[x + 1][y] < min) min = grid[x + 1][y];
	lw	a5,-36(s0)		# tmp268, x
	sext.w	a5,a5	# tmp269, tmp267
	bge	a5,a4,.L8	#, tmp269, tmp270,
# problem130.c:14:     if (x < N - 1 && grid[x + 1][y] < min) min = grid[x + 1][y];
	lw	a5,-36(s0)		# _27, x
	addi	a5,a5,1	#, _28, _27
	slli	a5,a5,3	#, _29, _28
	ld	a4,-56(s0)		# tmp271, grid
	add	a5,a4,a5	# _29, _30, tmp271
	ld	a4,0(a5)		# _31, *_30
# problem130.c:14:     if (x < N - 1 && grid[x + 1][y] < min) min = grid[x + 1][y];
	lw	a5,-32(s0)		# _32, y
	slli	a5,a5,2	#, _33, _32
	add	a5,a4,a5	# _33, _34, _31
	lw	a4,0(a5)		# _35, *_34
# problem130.c:14:     if (x < N - 1 && grid[x + 1][y] < min) min = grid[x + 1][y];
	lw	a5,-28(s0)		# tmp273, min
	sext.w	a5,a5	# tmp274, tmp272
	ble	a5,a4,.L8	#, tmp274, tmp275,
# problem130.c:14:     if (x < N - 1 && grid[x + 1][y] < min) min = grid[x + 1][y];
	lw	a5,-36(s0)		# _36, x
	addi	a5,a5,1	#, _37, _36
	slli	a5,a5,3	#, _38, _37
	ld	a4,-56(s0)		# tmp276, grid
	add	a5,a4,a5	# _38, _39, tmp276
	ld	a4,0(a5)		# _40, *_39
# problem130.c:14:     if (x < N - 1 && grid[x + 1][y] < min) min = grid[x + 1][y];
	lw	a5,-32(s0)		# _41, y
	slli	a5,a5,2	#, _42, _41
	add	a5,a4,a5	# _42, _43, _40
# problem130.c:14:     if (x < N - 1 && grid[x + 1][y] < min) min = grid[x + 1][y];
	lw	a5,0(a5)		# tmp277, *_43
	sw	a5,-28(s0)	# tmp277, min
.L8:
# problem130.c:15:     if (y > 0 && grid[x][y - 1] < min) min = grid[x][y - 1];
	lw	a5,-32(s0)		# tmp279, y
	sext.w	a5,a5	# tmp280, tmp278
	ble	a5,zero,.L9	#, tmp280,,
# problem130.c:15:     if (y > 0 && grid[x][y - 1] < min) min = grid[x][y - 1];
	lw	a5,-36(s0)		# _44, x
	slli	a5,a5,3	#, _45, _44
	ld	a4,-56(s0)		# tmp281, grid
	add	a5,a4,a5	# _45, _46, tmp281
	ld	a4,0(a5)		# _47, *_46
# problem130.c:15:     if (y > 0 && grid[x][y - 1] < min) min = grid[x][y - 1];
	lw	a5,-32(s0)		# _48, y
	slli	a5,a5,2	#, _49, _48
	addi	a5,a5,-4	#, _50, _49
	add	a5,a4,a5	# _50, _51, _47
	lw	a4,0(a5)		# _52, *_51
# problem130.c:15:     if (y > 0 && grid[x][y - 1] < min) min = grid[x][y - 1];
	lw	a5,-28(s0)		# tmp283, min
	sext.w	a5,a5	# tmp284, tmp282
	ble	a5,a4,.L9	#, tmp284, tmp285,
# problem130.c:15:     if (y > 0 && grid[x][y - 1] < min) min = grid[x][y - 1];
	lw	a5,-36(s0)		# _53, x
	slli	a5,a5,3	#, _54, _53
	ld	a4,-56(s0)		# tmp286, grid
	add	a5,a4,a5	# _54, _55, tmp286
	ld	a4,0(a5)		# _56, *_55
# problem130.c:15:     if (y > 0 && grid[x][y - 1] < min) min = grid[x][y - 1];
	lw	a5,-32(s0)		# _57, y
	slli	a5,a5,2	#, _58, _57
	addi	a5,a5,-4	#, _59, _58
	add	a5,a4,a5	# _59, _60, _56
# problem130.c:15:     if (y > 0 && grid[x][y - 1] < min) min = grid[x][y - 1];
	lw	a5,0(a5)		# tmp287, *_60
	sw	a5,-28(s0)	# tmp287, min
.L9:
# problem130.c:16:     if (y < N - 1 && grid[x][y + 1] < min) min = grid[x][y + 1];
	lw	a5,-60(s0)		# tmp290, N
	addiw	a5,a5,-1	#, tmp288, tmp289
	sext.w	a4,a5	# _61, tmp288
# problem130.c:16:     if (y < N - 1 && grid[x][y + 1] < min) min = grid[x][y + 1];
	lw	a5,-32(s0)		# tmp292, y
	sext.w	a5,a5	# tmp293, tmp291
	bge	a5,a4,.L10	#, tmp293, tmp294,
# problem130.c:16:     if (y < N - 1 && grid[x][y + 1] < min) min = grid[x][y + 1];
	lw	a5,-36(s0)		# _62, x
	slli	a5,a5,3	#, _63, _62
	ld	a4,-56(s0)		# tmp295, grid
	add	a5,a4,a5	# _63, _64, tmp295
	ld	a4,0(a5)		# _65, *_64
# problem130.c:16:     if (y < N - 1 && grid[x][y + 1] < min) min = grid[x][y + 1];
	lw	a5,-32(s0)		# _66, y
	addi	a5,a5,1	#, _67, _66
	slli	a5,a5,2	#, _68, _67
	add	a5,a4,a5	# _68, _69, _65
	lw	a4,0(a5)		# _70, *_69
# problem130.c:16:     if (y < N - 1 && grid[x][y + 1] < min) min = grid[x][y + 1];
	lw	a5,-28(s0)		# tmp297, min
	sext.w	a5,a5	# tmp298, tmp296
	ble	a5,a4,.L10	#, tmp298, tmp299,
# problem130.c:16:     if (y < N - 1 && grid[x][y + 1] < min) min = grid[x][y + 1];
	lw	a5,-36(s0)		# _71, x
	slli	a5,a5,3	#, _72, _71
	ld	a4,-56(s0)		# tmp300, grid
	add	a5,a4,a5	# _72, _73, tmp300
	ld	a4,0(a5)		# _74, *_73
# problem130.c:16:     if (y < N - 1 && grid[x][y + 1] < min) min = grid[x][y + 1];
	lw	a5,-32(s0)		# _75, y
	addi	a5,a5,1	#, _76, _75
	slli	a5,a5,2	#, _77, _76
	add	a5,a4,a5	# _77, _78, _74
# problem130.c:16:     if (y < N - 1 && grid[x][y + 1] < min) min = grid[x][y + 1];
	lw	a5,0(a5)		# tmp301, *_78
	sw	a5,-28(s0)	# tmp301, min
.L10:
# problem130.c:18:     *returnSize = k;
	ld	a5,-72(s0)		# tmp302, returnSize
	lw	a4,-64(s0)		# tmp303, k
	sw	a4,0(a5)	# tmp303, *returnSize_115(D)
# problem130.c:19:     int *out = (int *)malloc(k * sizeof(int));
	lw	a5,-64(s0)		# _79, k
	slli	a5,a5,2	#, _80, _79
	mv	a0,a5	#, _80
	call	malloc@plt	#
	mv	a5,a0	# tmp304,
	sd	a5,-24(s0)	# tmp304, out
# problem130.c:20:     for (i = 0; i < k; i++)
	sw	zero,-44(s0)	#, i
# problem130.c:20:     for (i = 0; i < k; i++)
	j	.L11		#
.L14:
# problem130.c:21:         if (i % 2 == 0) out[i] = 1;
	lw	a5,-44(s0)		# i.0_81, i
	andi	a5,a5,1	#, tmp306, tmp305
	sext.w	a5,a5	# _82, tmp306
# problem130.c:21:         if (i % 2 == 0) out[i] = 1;
	bne	a5,zero,.L12	#, _82,,
# problem130.c:21:         if (i % 2 == 0) out[i] = 1;
	lw	a5,-44(s0)		# _83, i
	slli	a5,a5,2	#, _84, _83
	ld	a4,-24(s0)		# tmp307, out
	add	a5,a4,a5	# _84, _85, tmp307
# problem130.c:21:         if (i % 2 == 0) out[i] = 1;
	li	a4,1		# tmp308,
	sw	a4,0(a5)	# tmp308, *_85
	j	.L13		#
.L12:
# problem130.c:22:         else out[i] = min;
	lw	a5,-44(s0)		# _86, i
	slli	a5,a5,2	#, _87, _86
	ld	a4,-24(s0)		# tmp309, out
	add	a5,a4,a5	# _87, _88, tmp309
# problem130.c:22:         else out[i] = min;
	lw	a4,-28(s0)		# tmp310, min
	sw	a4,0(a5)	# tmp310, *_88
.L13:
# problem130.c:20:     for (i = 0; i < k; i++)
	lw	a5,-44(s0)		# tmp313, i
	addiw	a5,a5,1	#, tmp311, tmp312
	sw	a5,-44(s0)	# tmp311, i
.L11:
# problem130.c:20:     for (i = 0; i < k; i++)
	lw	a5,-44(s0)		# tmp315, i
	mv	a4,a5	# tmp314, tmp315
	lw	a5,-64(s0)		# tmp317, k
	sext.w	a4,a4	# tmp318, tmp314
	sext.w	a5,a5	# tmp319, tmp316
	blt	a4,a5,.L14	#, tmp318, tmp319,
# problem130.c:23:     return out;
	ld	a5,-24(s0)		# _121, out
# problem130.c:24: }
	mv	a0,a5	#, <retval>
	ld	ra,72(sp)		#,
	.cfi_restore 1
	ld	s0,64(sp)		#,
	.cfi_restore 8
	.cfi_def_cfa 2, 80
	addi	sp,sp,80	#,,
	.cfi_def_cfa_offset 0
	jr	ra		#
	.cfi_endproc
.LFE6:
	.size	func0, .-func0
	.align	1
	.globl	issame
	.type	issame, @function
issame:
.LFB7:
	.cfi_startproc
	addi	sp,sp,-64	#,,
	.cfi_def_cfa_offset 64
	sd	s0,56(sp)	#,
	.cfi_offset 8, -8
	addi	s0,sp,64	#,,
	.cfi_def_cfa 8, 0
	sd	a0,-40(s0)	# a, a
	sd	a1,-48(s0)	# b, b
	mv	a5,a2	# tmp144, size
	sw	a5,-52(s0)	# tmp145, size
# problem130.c:33:     for (int i = 0; i < size; i++) {
	sw	zero,-20(s0)	#, i
# problem130.c:33:     for (int i = 0; i < size; i++) {
	j	.L17		#
.L20:
# problem130.c:34:         if (a[i] != b[i]) return 0;
	lw	a5,-20(s0)		# _1, i
	slli	a5,a5,2	#, _2, _1
	ld	a4,-40(s0)		# tmp146, a
	add	a5,a4,a5	# _2, _3, tmp146
	lw	a3,0(a5)		# _4, *_3
# problem130.c:34:         if (a[i] != b[i]) return 0;
	lw	a5,-20(s0)		# _5, i
	slli	a5,a5,2	#, _6, _5
	ld	a4,-48(s0)		# tmp147, b
	add	a5,a4,a5	# _6, _7, tmp147
	lw	a5,0(a5)		# _8, *_7
# problem130.c:34:         if (a[i] != b[i]) return 0;
	mv	a4,a3	# tmp148, _4
	beq	a4,a5,.L18	#, tmp148, tmp149,
# problem130.c:34:         if (a[i] != b[i]) return 0;
	li	a5,0		# _10,
# problem130.c:34:         if (a[i] != b[i]) return 0;
	j	.L19		#
.L18:
# problem130.c:33:     for (int i = 0; i < size; i++) {
	lw	a5,-20(s0)		# tmp152, i
	addiw	a5,a5,1	#, tmp150, tmp151
	sw	a5,-20(s0)	# tmp150, i
.L17:
# problem130.c:33:     for (int i = 0; i < size; i++) {
	lw	a5,-20(s0)		# tmp154, i
	mv	a4,a5	# tmp153, tmp154
	lw	a5,-52(s0)		# tmp156, size
	sext.w	a4,a4	# tmp157, tmp153
	sext.w	a5,a5	# tmp158, tmp155
	blt	a4,a5,.L20	#, tmp157, tmp158,
# problem130.c:36:     return 1;
	li	a5,1		# _10,
.L19:
# problem130.c:37: }
	mv	a0,a5	#, <retval>
	ld	s0,56(sp)		#,
	.cfi_restore 8
	.cfi_def_cfa 2, 64
	addi	sp,sp,64	#,,
	.cfi_def_cfa_offset 0
	jr	ra		#
	.cfi_endproc
.LFE7:
	.size	issame, .-issame
	.section	.rodata
	.align	3
.LC8:
	.string	"problem130.c"
	.align	3
.LC9:
	.string	"issame(out1, result1, size)"
	.align	3
.LC10:
	.string	"issame(out2, result2, size)"
	.align	3
.LC11:
	.string	"issame(out3, result3, size)"
	.align	3
.LC12:
	.string	"issame(out4, result4, size)"
	.align	3
.LC13:
	.string	"issame(out5, result5, size)"
	.align	3
.LC0:
	.word	1
	.word	2
	.word	3
	.word	4
	.word	5
	.word	6
	.word	7
	.word	8
	.word	9
	.align	3
.LC1:
	.word	5
	.word	9
	.word	3
	.word	4
	.word	1
	.word	6
	.word	7
	.word	8
	.word	2
	.align	3
.LC2:
	.word	1
	.word	2
	.word	3
	.word	4
	.word	5
	.word	6
	.word	7
	.word	8
	.word	9
	.word	10
	.word	11
	.word	12
	.word	13
	.word	14
	.word	15
	.word	16
	.align	3
.LC3:
	.word	1
	.word	2
	.word	1
	.word	2
	.align	3
.LC4:
	.word	6
	.word	4
	.word	13
	.word	10
	.word	5
	.word	7
	.word	12
	.word	1
	.word	3
	.word	16
	.word	11
	.word	15
	.word	8
	.word	14
	.word	9
	.word	2
	.align	3
.LC5:
	.word	1
	.word	10
	.word	1
	.word	10
	.word	1
	.word	10
	.word	1
	.align	3
.LC6:
	.word	8
	.word	14
	.word	9
	.word	2
	.word	6
	.word	4
	.word	13
	.word	15
	.word	5
	.word	7
	.word	1
	.word	12
	.word	3
	.word	10
	.word	11
	.word	16
	.align	3
.LC7:
	.word	1
	.word	7
	.word	1
	.word	7
	.word	1
	.text
	.align	1
	.globl	main
	.type	main, @function
main:
.LFB8:
	.cfi_startproc
	addi	sp,sp,-592	#,,
	.cfi_def_cfa_offset 592
	sd	ra,584(sp)	#,
	sd	s0,576(sp)	#,
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,592	#,,
	.cfi_def_cfa 8, 0
# problem130.c:39: int main() {
	la	a5,__stack_chk_guard		# tmp146,
	ld	a4, 0(a5)	# tmp256, __stack_chk_guard
	sd	a4, -24(s0)	# tmp256, D.3367
	li	a4, 0	# tmp256
# problem130.c:43:     int grid1[3][3] = {{1, 2, 3}, {4, 5, 6}, {7, 8, 9}};
	lla	a5,.LC0	# tmp147,
	ld	a1,0(a5)		# tmp148,
	ld	a2,8(a5)		# tmp149,
	ld	a3,16(a5)		# tmp150,
	ld	a4,24(a5)		# tmp151,
	sd	a1,-296(s0)	# tmp148, grid1
	sd	a2,-288(s0)	# tmp149, grid1
	sd	a3,-280(s0)	# tmp150, grid1
	sd	a4,-272(s0)	# tmp151, grid1
	lw	a5,32(a5)		# tmp152,
	sw	a5,-264(s0)	# tmp152, grid1
# problem130.c:44:     int *grid1_ptrs[] = {grid1[0], grid1[1], grid1[2]};
	addi	a5,s0,-296	#, tmp153,
	sd	a5,-472(s0)	# tmp153, grid1_ptrs[0]
	addi	a5,s0,-296	#, tmp154,
	addi	a5,a5,12	#, tmp155, tmp154
	sd	a5,-464(s0)	# tmp155, grid1_ptrs[1]
	addi	a5,s0,-296	#, tmp156,
	addi	a5,a5,24	#, tmp157, tmp156
	sd	a5,-456(s0)	# tmp157, grid1_ptrs[2]
# problem130.c:45:     int result1[] = {1, 2, 1};
	li	a5,1		# tmp158,
	sw	a5,-528(s0)	# tmp158, result1[0]
	li	a5,2		# tmp159,
	sw	a5,-524(s0)	# tmp159, result1[1]
	li	a5,1		# tmp160,
	sw	a5,-520(s0)	# tmp160, result1[2]
# problem130.c:46:     int *out1 = func0(grid1_ptrs, 3, 3, &size);
	addi	a4,s0,-580	#, tmp161,
	addi	a5,s0,-472	#, tmp162,
	mv	a3,a4	#, tmp161
	li	a2,3		#,
	li	a1,3		#,
	mv	a0,a5	#, tmp162
	call	func0		#
	sd	a0,-576(s0)	#, out1
# problem130.c:47:     assert(issame(out1, result1, size));
	lw	a4,-580(s0)		# size.1_1, size
	addi	a5,s0,-528	#, tmp163,
	mv	a2,a4	#, size.1_1
	mv	a1,a5	#, tmp163
	ld	a0,-576(s0)		#, out1
	call	issame		#
	mv	a5,a0	# tmp164,
# problem130.c:47:     assert(issame(out1, result1, size));
	bne	a5,zero,.L22	#, _2,,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,47		#,
	lla	a1,.LC8	#,
	lla	a0,.LC9	#,
	call	__assert_fail@plt	#
.L22:
# problem130.c:48:     free(out1);
	ld	a0,-576(s0)		#, out1
	call	free@plt	#
# problem130.c:51:     int grid2[3][3] = {{5, 9, 3}, {4, 1, 6}, {7, 8, 2}};
	lla	a5,.LC1	# tmp165,
	ld	a1,0(a5)		# tmp166,
	ld	a2,8(a5)		# tmp167,
	ld	a3,16(a5)		# tmp168,
	ld	a4,24(a5)		# tmp169,
	sd	a1,-256(s0)	# tmp166, grid2
	sd	a2,-248(s0)	# tmp167, grid2
	sd	a3,-240(s0)	# tmp168, grid2
	sd	a4,-232(s0)	# tmp169, grid2
	lw	a5,32(a5)		# tmp170,
	sw	a5,-224(s0)	# tmp170, grid2
# problem130.c:52:     int *grid2_ptrs[] = {grid2[0], grid2[1], grid2[2]};
	addi	a5,s0,-256	#, tmp171,
	sd	a5,-448(s0)	# tmp171, grid2_ptrs[0]
	addi	a5,s0,-256	#, tmp172,
	addi	a5,a5,12	#, tmp173, tmp172
	sd	a5,-440(s0)	# tmp173, grid2_ptrs[1]
	addi	a5,s0,-256	#, tmp174,
	addi	a5,a5,24	#, tmp175, tmp174
	sd	a5,-432(s0)	# tmp175, grid2_ptrs[2]
# problem130.c:53:     int result2[] = {1};
	li	a5,1		# tmp176,
	sw	a5,-536(s0)	# tmp176, result2[0]
# problem130.c:54:     int *out2 = func0(grid2_ptrs, 3, 1, &size);
	addi	a4,s0,-580	#, tmp177,
	addi	a5,s0,-448	#, tmp178,
	mv	a3,a4	#, tmp177
	li	a2,1		#,
	li	a1,3		#,
	mv	a0,a5	#, tmp178
	call	func0		#
	sd	a0,-568(s0)	#, out2
# problem130.c:55:     assert(issame(out2, result2, size));
	lw	a4,-580(s0)		# size.2_3, size
	addi	a5,s0,-536	#, tmp179,
	mv	a2,a4	#, size.2_3
	mv	a1,a5	#, tmp179
	ld	a0,-568(s0)		#, out2
	call	issame		#
	mv	a5,a0	# tmp180,
# problem130.c:55:     assert(issame(out2, result2, size));
	bne	a5,zero,.L23	#, _4,,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,55		#,
	lla	a1,.LC8	#,
	lla	a0,.LC10	#,
	call	__assert_fail@plt	#
.L23:
# problem130.c:56:     free(out2);
	ld	a0,-568(s0)		#, out2
	call	free@plt	#
# problem130.c:59:     int grid3[4][4] = {{1, 2, 3, 4}, {5, 6, 7, 8}, {9, 10, 11, 12}, {13, 14, 15, 16}};
	lla	a5,.LC2	# tmp181,
	ld	a7,0(a5)		# tmp182,
	ld	a6,8(a5)		# tmp183,
	ld	a0,16(a5)		# tmp184,
	ld	a1,24(a5)		# tmp185,
	ld	a2,32(a5)		# tmp186,
	ld	a3,40(a5)		# tmp187,
	ld	a4,48(a5)		# tmp188,
	ld	a5,56(a5)		# tmp189,
	sd	a7,-216(s0)	# tmp182, grid3
	sd	a6,-208(s0)	# tmp183, grid3
	sd	a0,-200(s0)	# tmp184, grid3
	sd	a1,-192(s0)	# tmp185, grid3
	sd	a2,-184(s0)	# tmp186, grid3
	sd	a3,-176(s0)	# tmp187, grid3
	sd	a4,-168(s0)	# tmp188, grid3
	sd	a5,-160(s0)	# tmp189, grid3
# problem130.c:60:     int *grid3_ptrs[] = {grid3[0], grid3[1], grid3[2], grid3[3]};
	addi	a5,s0,-216	#, tmp190,
	sd	a5,-392(s0)	# tmp190, grid3_ptrs[0]
	addi	a5,s0,-216	#, tmp191,
	addi	a5,a5,16	#, tmp192, tmp191
	sd	a5,-384(s0)	# tmp192, grid3_ptrs[1]
	addi	a5,s0,-216	#, tmp193,
	addi	a5,a5,32	#, tmp194, tmp193
	sd	a5,-376(s0)	# tmp194, grid3_ptrs[2]
	addi	a5,s0,-216	#, tmp195,
	addi	a5,a5,48	#, tmp196, tmp195
	sd	a5,-368(s0)	# tmp196, grid3_ptrs[3]
# problem130.c:61:     int result3[] = {1, 2, 1, 2};
	lla	a5,.LC3	# tmp197,
	ld	a4,0(a5)		# tmp198,
	sd	a4,-512(s0)	# tmp198, result3
	ld	a5,8(a5)		# tmp199,
	sd	a5,-504(s0)	# tmp199, result3
# problem130.c:62:     int *out3 = func0(grid3_ptrs, 4, 4, &size);
	addi	a4,s0,-580	#, tmp200,
	addi	a5,s0,-392	#, tmp201,
	mv	a3,a4	#, tmp200
	li	a2,4		#,
	li	a1,4		#,
	mv	a0,a5	#, tmp201
	call	func0		#
	sd	a0,-560(s0)	#, out3
# problem130.c:63:     assert(issame(out3, result3, size));
	lw	a4,-580(s0)		# size.3_5, size
	addi	a5,s0,-512	#, tmp202,
	mv	a2,a4	#, size.3_5
	mv	a1,a5	#, tmp202
	ld	a0,-560(s0)		#, out3
	call	issame		#
	mv	a5,a0	# tmp203,
# problem130.c:63:     assert(issame(out3, result3, size));
	bne	a5,zero,.L24	#, _6,,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,63		#,
	lla	a1,.LC8	#,
	lla	a0,.LC11	#,
	call	__assert_fail@plt	#
.L24:
# problem130.c:64:     free(out3);
	ld	a0,-560(s0)		#, out3
	call	free@plt	#
# problem130.c:67:     int grid4[4][4] = {{6, 4, 13, 10}, {5, 7, 12, 1}, {3, 16, 11, 15}, {8, 14, 9, 2}};
	lla	a5,.LC4	# tmp204,
	ld	a7,0(a5)		# tmp205,
	ld	a6,8(a5)		# tmp206,
	ld	a0,16(a5)		# tmp207,
	ld	a1,24(a5)		# tmp208,
	ld	a2,32(a5)		# tmp209,
	ld	a3,40(a5)		# tmp210,
	ld	a4,48(a5)		# tmp211,
	ld	a5,56(a5)		# tmp212,
	sd	a7,-152(s0)	# tmp205, grid4
	sd	a6,-144(s0)	# tmp206, grid4
	sd	a0,-136(s0)	# tmp207, grid4
	sd	a1,-128(s0)	# tmp208, grid4
	sd	a2,-120(s0)	# tmp209, grid4
	sd	a3,-112(s0)	# tmp210, grid4
	sd	a4,-104(s0)	# tmp211, grid4
	sd	a5,-96(s0)	# tmp212, grid4
# problem130.c:68:     int *grid4_ptrs[] = {grid4[0], grid4[1], grid4[2], grid4[3]};
	addi	a5,s0,-152	#, tmp213,
	sd	a5,-360(s0)	# tmp213, grid4_ptrs[0]
	addi	a5,s0,-152	#, tmp214,
	addi	a5,a5,16	#, tmp215, tmp214
	sd	a5,-352(s0)	# tmp215, grid4_ptrs[1]
	addi	a5,s0,-152	#, tmp216,
	addi	a5,a5,32	#, tmp217, tmp216
	sd	a5,-344(s0)	# tmp217, grid4_ptrs[2]
	addi	a5,s0,-152	#, tmp218,
	addi	a5,a5,48	#, tmp219, tmp218
	sd	a5,-336(s0)	# tmp219, grid4_ptrs[3]
# problem130.c:69:     int result4[] = {1, 10, 1, 10, 1, 10, 1};
	lla	a5,.LC5	# tmp220,
	ld	a2,0(a5)		# tmp221,
	ld	a3,8(a5)		# tmp222,
	ld	a4,16(a5)		# tmp223,
	sd	a2,-424(s0)	# tmp221, result4
	sd	a3,-416(s0)	# tmp222, result4
	sd	a4,-408(s0)	# tmp223, result4
	lw	a5,24(a5)		# tmp224,
	sw	a5,-400(s0)	# tmp224, result4
# problem130.c:70:     int *out4 = func0(grid4_ptrs, 4, 7, &size);
	addi	a4,s0,-580	#, tmp225,
	addi	a5,s0,-360	#, tmp226,
	mv	a3,a4	#, tmp225
	li	a2,7		#,
	li	a1,4		#,
	mv	a0,a5	#, tmp226
	call	func0		#
	sd	a0,-552(s0)	#, out4
# problem130.c:71:     assert(issame(out4, result4, size));
	lw	a4,-580(s0)		# size.4_7, size
	addi	a5,s0,-424	#, tmp227,
	mv	a2,a4	#, size.4_7
	mv	a1,a5	#, tmp227
	ld	a0,-552(s0)		#, out4
	call	issame		#
	mv	a5,a0	# tmp228,
# problem130.c:71:     assert(issame(out4, result4, size));
	bne	a5,zero,.L25	#, _8,,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,71		#,
	lla	a1,.LC8	#,
	lla	a0,.LC12	#,
	call	__assert_fail@plt	#
.L25:
# problem130.c:72:     free(out4);
	ld	a0,-552(s0)		#, out4
	call	free@plt	#
# problem130.c:75:     int grid5[4][4] = {{8, 14, 9, 2}, {6, 4, 13, 15}, {5, 7, 1, 12}, {3, 10, 11, 16}};
	lla	a5,.LC6	# tmp229,
	ld	a7,0(a5)		# tmp230,
	ld	a6,8(a5)		# tmp231,
	ld	a0,16(a5)		# tmp232,
	ld	a1,24(a5)		# tmp233,
	ld	a2,32(a5)		# tmp234,
	ld	a3,40(a5)		# tmp235,
	ld	a4,48(a5)		# tmp236,
	ld	a5,56(a5)		# tmp237,
	sd	a7,-88(s0)	# tmp230, grid5
	sd	a6,-80(s0)	# tmp231, grid5
	sd	a0,-72(s0)	# tmp232, grid5
	sd	a1,-64(s0)	# tmp233, grid5
	sd	a2,-56(s0)	# tmp234, grid5
	sd	a3,-48(s0)	# tmp235, grid5
	sd	a4,-40(s0)	# tmp236, grid5
	sd	a5,-32(s0)	# tmp237, grid5
# problem130.c:76:     int *grid5_ptrs[] = {grid5[0], grid5[1], grid5[2], grid5[3]};
	addi	a5,s0,-88	#, tmp238,
	sd	a5,-328(s0)	# tmp238, grid5_ptrs[0]
	addi	a5,s0,-88	#, tmp239,
	addi	a5,a5,16	#, tmp240, tmp239
	sd	a5,-320(s0)	# tmp240, grid5_ptrs[1]
	addi	a5,s0,-88	#, tmp241,
	addi	a5,a5,32	#, tmp242, tmp241
	sd	a5,-312(s0)	# tmp242, grid5_ptrs[2]
	addi	a5,s0,-88	#, tmp243,
	addi	a5,a5,48	#, tmp244, tmp243
	sd	a5,-304(s0)	# tmp244, grid5_ptrs[3]
# problem130.c:77:     int result5[] = {1, 7, 1, 7, 1};
	lla	a5,.LC7	# tmp245,
	ld	a4,0(a5)		# tmp246,
	sd	a4,-496(s0)	# tmp246, result5
	ld	a4,8(a5)		# tmp247,
	sd	a4,-488(s0)	# tmp247, result5
	lw	a5,16(a5)		# tmp248,
	sw	a5,-480(s0)	# tmp248, result5
# problem130.c:78:     int *out5 = func0(grid5_ptrs, 4, 5, &size);
	addi	a4,s0,-580	#, tmp249,
	addi	a5,s0,-328	#, tmp250,
	mv	a3,a4	#, tmp249
	li	a2,5		#,
	li	a1,4		#,
	mv	a0,a5	#, tmp250
	call	func0		#
	sd	a0,-544(s0)	#, out5
# problem130.c:79:     assert(issame(out5, result5, size));
	lw	a4,-580(s0)		# size.5_9, size
	addi	a5,s0,-496	#, tmp251,
	mv	a2,a4	#, size.5_9
	mv	a1,a5	#, tmp251
	ld	a0,-544(s0)		#, out5
	call	issame		#
	mv	a5,a0	# tmp252,
# problem130.c:79:     assert(issame(out5, result5, size));
	bne	a5,zero,.L26	#, _10,,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,79		#,
	lla	a1,.LC8	#,
	lla	a0,.LC13	#,
	call	__assert_fail@plt	#
.L26:
# problem130.c:80:     free(out5);
	ld	a0,-544(s0)		#, out5
	call	free@plt	#
# problem130.c:82:     return 0;
	li	a5,0		# _67,
# problem130.c:83: }
	mv	a4,a5	# <retval>, _67
	la	a5,__stack_chk_guard		# tmp254,
	ld	a3, -24(s0)	# tmp257, D.3367
	ld	a5, 0(a5)	# tmp255, __stack_chk_guard
	xor	a5, a3, a5	# tmp255, tmp257
	li	a3, 0	# tmp257
	beq	a5,zero,.L28	#, tmp255,,
	call	__stack_chk_fail@plt	#
.L28:
	mv	a0,a4	#, <retval>
	ld	ra,584(sp)		#,
	.cfi_restore 1
	ld	s0,576(sp)		#,
	.cfi_restore 8
	.cfi_def_cfa 2, 592
	addi	sp,sp,592	#,,
	.cfi_def_cfa_offset 0
	jr	ra		#
	.cfi_endproc
.LFE8:
	.size	main, .-main
	.section	.rodata
	.align	3
	.type	__PRETTY_FUNCTION__.0, @object
	.size	__PRETTY_FUNCTION__.0, 5
__PRETTY_FUNCTION__.0:
	.string	"main"
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
