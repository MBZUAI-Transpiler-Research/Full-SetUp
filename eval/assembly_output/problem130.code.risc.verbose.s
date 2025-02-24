	.file	"code.c"
	.option pic
	.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
# GNU C17 (Ubuntu 13.3.0-6ubuntu2~24.04) version 13.3.0 (riscv64-linux-gnu)
#	compiled by GNU C version 13.3.0, GMP version 6.3.0, MPFR version 4.2.1, MPC version 1.3.1, isl version isl-0.26-GMP

# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed: -mabi=lp64d -misa-spec=20191213 -march=rv64imafdc_zicsr_zifencei -O0 -fstack-protector-strong
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
# code.c:6:     for (i = 0; i < N; i++)
	sw	zero,-44(s0)	#, i
# code.c:6:     for (i = 0; i < N; i++)
	j	.L2		#
.L6:
# code.c:7:         for (j = 0; j < N; j++)
	sw	zero,-40(s0)	#, j
# code.c:7:         for (j = 0; j < N; j++)
	j	.L3		#
.L5:
# code.c:8:             if (grid[i][j] == 1) {
	lw	a5,-44(s0)		# _1, i
	slli	a5,a5,3	#, _2, _1
	ld	a4,-56(s0)		# tmp228, grid
	add	a5,a4,a5	# _2, _3, tmp228
	ld	a4,0(a5)		# _4, *_3
# code.c:8:             if (grid[i][j] == 1) {
	lw	a5,-40(s0)		# _5, j
	slli	a5,a5,2	#, _6, _5
	add	a5,a4,a5	# _6, _7, _4
	lw	a5,0(a5)		# _8, *_7
# code.c:8:             if (grid[i][j] == 1) {
	mv	a4,a5	# tmp229, _8
	li	a5,1		# tmp230,
	bne	a4,a5,.L4	#, tmp229, tmp230,
# code.c:9:                 x = i;
	lw	a5,-44(s0)		# tmp231, i
	sw	a5,-36(s0)	# tmp231, x
# code.c:10:                 y = j;
	lw	a5,-40(s0)		# tmp232, j
	sw	a5,-32(s0)	# tmp232, y
.L4:
# code.c:7:         for (j = 0; j < N; j++)
	lw	a5,-40(s0)		# tmp235, j
	addiw	a5,a5,1	#, tmp233, tmp234
	sw	a5,-40(s0)	# tmp233, j
.L3:
# code.c:7:         for (j = 0; j < N; j++)
	lw	a5,-40(s0)		# tmp237, j
	mv	a4,a5	# tmp236, tmp237
	lw	a5,-60(s0)		# tmp239, N
	sext.w	a4,a4	# tmp240, tmp236
	sext.w	a5,a5	# tmp241, tmp238
	blt	a4,a5,.L5	#, tmp240, tmp241,
# code.c:6:     for (i = 0; i < N; i++)
	lw	a5,-44(s0)		# tmp244, i
	addiw	a5,a5,1	#, tmp242, tmp243
	sw	a5,-44(s0)	# tmp242, i
.L2:
# code.c:6:     for (i = 0; i < N; i++)
	lw	a5,-44(s0)		# tmp246, i
	mv	a4,a5	# tmp245, tmp246
	lw	a5,-60(s0)		# tmp248, N
	sext.w	a4,a4	# tmp249, tmp245
	sext.w	a5,a5	# tmp250, tmp247
	blt	a4,a5,.L6	#, tmp249, tmp250,
# code.c:12:     min = N * N;
	lw	a5,-60(s0)		# tmp253, N
	mulw	a5,a5,a5	# tmp251, tmp252, tmp252
	sw	a5,-28(s0)	# tmp251, min
# code.c:13:     if (x > 0 && grid[x - 1][y] < min) min = grid[x - 1][y];
	lw	a5,-36(s0)		# tmp255, x
	sext.w	a5,a5	# tmp256, tmp254
	ble	a5,zero,.L7	#, tmp256,,
# code.c:13:     if (x > 0 && grid[x - 1][y] < min) min = grid[x - 1][y];
	lw	a5,-36(s0)		# _9, x
	slli	a5,a5,3	#, _10, _9
	addi	a5,a5,-8	#, _11, _10
	ld	a4,-56(s0)		# tmp257, grid
	add	a5,a4,a5	# _11, _12, tmp257
	ld	a4,0(a5)		# _13, *_12
# code.c:13:     if (x > 0 && grid[x - 1][y] < min) min = grid[x - 1][y];
	lw	a5,-32(s0)		# _14, y
	slli	a5,a5,2	#, _15, _14
	add	a5,a4,a5	# _15, _16, _13
	lw	a4,0(a5)		# _17, *_16
# code.c:13:     if (x > 0 && grid[x - 1][y] < min) min = grid[x - 1][y];
	lw	a5,-28(s0)		# tmp259, min
	sext.w	a5,a5	# tmp260, tmp258
	ble	a5,a4,.L7	#, tmp260, tmp261,
# code.c:13:     if (x > 0 && grid[x - 1][y] < min) min = grid[x - 1][y];
	lw	a5,-36(s0)		# _18, x
	slli	a5,a5,3	#, _19, _18
	addi	a5,a5,-8	#, _20, _19
	ld	a4,-56(s0)		# tmp262, grid
	add	a5,a4,a5	# _20, _21, tmp262
	ld	a4,0(a5)		# _22, *_21
# code.c:13:     if (x > 0 && grid[x - 1][y] < min) min = grid[x - 1][y];
	lw	a5,-32(s0)		# _23, y
	slli	a5,a5,2	#, _24, _23
	add	a5,a4,a5	# _24, _25, _22
# code.c:13:     if (x > 0 && grid[x - 1][y] < min) min = grid[x - 1][y];
	lw	a5,0(a5)		# tmp263, *_25
	sw	a5,-28(s0)	# tmp263, min
.L7:
# code.c:14:     if (x < N - 1 && grid[x + 1][y] < min) min = grid[x + 1][y];
	lw	a5,-60(s0)		# tmp266, N
	addiw	a5,a5,-1	#, tmp264, tmp265
	sext.w	a4,a5	# _26, tmp264
# code.c:14:     if (x < N - 1 && grid[x + 1][y] < min) min = grid[x + 1][y];
	lw	a5,-36(s0)		# tmp268, x
	sext.w	a5,a5	# tmp269, tmp267
	bge	a5,a4,.L8	#, tmp269, tmp270,
# code.c:14:     if (x < N - 1 && grid[x + 1][y] < min) min = grid[x + 1][y];
	lw	a5,-36(s0)		# _27, x
	addi	a5,a5,1	#, _28, _27
	slli	a5,a5,3	#, _29, _28
	ld	a4,-56(s0)		# tmp271, grid
	add	a5,a4,a5	# _29, _30, tmp271
	ld	a4,0(a5)		# _31, *_30
# code.c:14:     if (x < N - 1 && grid[x + 1][y] < min) min = grid[x + 1][y];
	lw	a5,-32(s0)		# _32, y
	slli	a5,a5,2	#, _33, _32
	add	a5,a4,a5	# _33, _34, _31
	lw	a4,0(a5)		# _35, *_34
# code.c:14:     if (x < N - 1 && grid[x + 1][y] < min) min = grid[x + 1][y];
	lw	a5,-28(s0)		# tmp273, min
	sext.w	a5,a5	# tmp274, tmp272
	ble	a5,a4,.L8	#, tmp274, tmp275,
# code.c:14:     if (x < N - 1 && grid[x + 1][y] < min) min = grid[x + 1][y];
	lw	a5,-36(s0)		# _36, x
	addi	a5,a5,1	#, _37, _36
	slli	a5,a5,3	#, _38, _37
	ld	a4,-56(s0)		# tmp276, grid
	add	a5,a4,a5	# _38, _39, tmp276
	ld	a4,0(a5)		# _40, *_39
# code.c:14:     if (x < N - 1 && grid[x + 1][y] < min) min = grid[x + 1][y];
	lw	a5,-32(s0)		# _41, y
	slli	a5,a5,2	#, _42, _41
	add	a5,a4,a5	# _42, _43, _40
# code.c:14:     if (x < N - 1 && grid[x + 1][y] < min) min = grid[x + 1][y];
	lw	a5,0(a5)		# tmp277, *_43
	sw	a5,-28(s0)	# tmp277, min
.L8:
# code.c:15:     if (y > 0 && grid[x][y - 1] < min) min = grid[x][y - 1];
	lw	a5,-32(s0)		# tmp279, y
	sext.w	a5,a5	# tmp280, tmp278
	ble	a5,zero,.L9	#, tmp280,,
# code.c:15:     if (y > 0 && grid[x][y - 1] < min) min = grid[x][y - 1];
	lw	a5,-36(s0)		# _44, x
	slli	a5,a5,3	#, _45, _44
	ld	a4,-56(s0)		# tmp281, grid
	add	a5,a4,a5	# _45, _46, tmp281
	ld	a4,0(a5)		# _47, *_46
# code.c:15:     if (y > 0 && grid[x][y - 1] < min) min = grid[x][y - 1];
	lw	a5,-32(s0)		# _48, y
	slli	a5,a5,2	#, _49, _48
	addi	a5,a5,-4	#, _50, _49
	add	a5,a4,a5	# _50, _51, _47
	lw	a4,0(a5)		# _52, *_51
# code.c:15:     if (y > 0 && grid[x][y - 1] < min) min = grid[x][y - 1];
	lw	a5,-28(s0)		# tmp283, min
	sext.w	a5,a5	# tmp284, tmp282
	ble	a5,a4,.L9	#, tmp284, tmp285,
# code.c:15:     if (y > 0 && grid[x][y - 1] < min) min = grid[x][y - 1];
	lw	a5,-36(s0)		# _53, x
	slli	a5,a5,3	#, _54, _53
	ld	a4,-56(s0)		# tmp286, grid
	add	a5,a4,a5	# _54, _55, tmp286
	ld	a4,0(a5)		# _56, *_55
# code.c:15:     if (y > 0 && grid[x][y - 1] < min) min = grid[x][y - 1];
	lw	a5,-32(s0)		# _57, y
	slli	a5,a5,2	#, _58, _57
	addi	a5,a5,-4	#, _59, _58
	add	a5,a4,a5	# _59, _60, _56
# code.c:15:     if (y > 0 && grid[x][y - 1] < min) min = grid[x][y - 1];
	lw	a5,0(a5)		# tmp287, *_60
	sw	a5,-28(s0)	# tmp287, min
.L9:
# code.c:16:     if (y < N - 1 && grid[x][y + 1] < min) min = grid[x][y + 1];
	lw	a5,-60(s0)		# tmp290, N
	addiw	a5,a5,-1	#, tmp288, tmp289
	sext.w	a4,a5	# _61, tmp288
# code.c:16:     if (y < N - 1 && grid[x][y + 1] < min) min = grid[x][y + 1];
	lw	a5,-32(s0)		# tmp292, y
	sext.w	a5,a5	# tmp293, tmp291
	bge	a5,a4,.L10	#, tmp293, tmp294,
# code.c:16:     if (y < N - 1 && grid[x][y + 1] < min) min = grid[x][y + 1];
	lw	a5,-36(s0)		# _62, x
	slli	a5,a5,3	#, _63, _62
	ld	a4,-56(s0)		# tmp295, grid
	add	a5,a4,a5	# _63, _64, tmp295
	ld	a4,0(a5)		# _65, *_64
# code.c:16:     if (y < N - 1 && grid[x][y + 1] < min) min = grid[x][y + 1];
	lw	a5,-32(s0)		# _66, y
	addi	a5,a5,1	#, _67, _66
	slli	a5,a5,2	#, _68, _67
	add	a5,a4,a5	# _68, _69, _65
	lw	a4,0(a5)		# _70, *_69
# code.c:16:     if (y < N - 1 && grid[x][y + 1] < min) min = grid[x][y + 1];
	lw	a5,-28(s0)		# tmp297, min
	sext.w	a5,a5	# tmp298, tmp296
	ble	a5,a4,.L10	#, tmp298, tmp299,
# code.c:16:     if (y < N - 1 && grid[x][y + 1] < min) min = grid[x][y + 1];
	lw	a5,-36(s0)		# _71, x
	slli	a5,a5,3	#, _72, _71
	ld	a4,-56(s0)		# tmp300, grid
	add	a5,a4,a5	# _72, _73, tmp300
	ld	a4,0(a5)		# _74, *_73
# code.c:16:     if (y < N - 1 && grid[x][y + 1] < min) min = grid[x][y + 1];
	lw	a5,-32(s0)		# _75, y
	addi	a5,a5,1	#, _76, _75
	slli	a5,a5,2	#, _77, _76
	add	a5,a4,a5	# _77, _78, _74
# code.c:16:     if (y < N - 1 && grid[x][y + 1] < min) min = grid[x][y + 1];
	lw	a5,0(a5)		# tmp301, *_78
	sw	a5,-28(s0)	# tmp301, min
.L10:
# code.c:18:     *returnSize = k;
	ld	a5,-72(s0)		# tmp302, returnSize
	lw	a4,-64(s0)		# tmp303, k
	sw	a4,0(a5)	# tmp303, *returnSize_115(D)
# code.c:19:     int *out = (int *)malloc(k * sizeof(int));
	lw	a5,-64(s0)		# _79, k
	slli	a5,a5,2	#, _80, _79
	mv	a0,a5	#, _80
	call	malloc@plt	#
	mv	a5,a0	# tmp304,
	sd	a5,-24(s0)	# tmp304, out
# code.c:20:     for (i = 0; i < k; i++)
	sw	zero,-44(s0)	#, i
# code.c:20:     for (i = 0; i < k; i++)
	j	.L11		#
.L14:
# code.c:21:         if (i % 2 == 0) out[i] = 1;
	lw	a5,-44(s0)		# i.0_81, i
	andi	a5,a5,1	#, tmp306, tmp305
	sext.w	a5,a5	# _82, tmp306
# code.c:21:         if (i % 2 == 0) out[i] = 1;
	bne	a5,zero,.L12	#, _82,,
# code.c:21:         if (i % 2 == 0) out[i] = 1;
	lw	a5,-44(s0)		# _83, i
	slli	a5,a5,2	#, _84, _83
	ld	a4,-24(s0)		# tmp307, out
	add	a5,a4,a5	# _84, _85, tmp307
# code.c:21:         if (i % 2 == 0) out[i] = 1;
	li	a4,1		# tmp308,
	sw	a4,0(a5)	# tmp308, *_85
	j	.L13		#
.L12:
# code.c:22:         else out[i] = min;
	lw	a5,-44(s0)		# _86, i
	slli	a5,a5,2	#, _87, _86
	ld	a4,-24(s0)		# tmp309, out
	add	a5,a4,a5	# _87, _88, tmp309
# code.c:22:         else out[i] = min;
	lw	a4,-28(s0)		# tmp310, min
	sw	a4,0(a5)	# tmp310, *_88
.L13:
# code.c:20:     for (i = 0; i < k; i++)
	lw	a5,-44(s0)		# tmp313, i
	addiw	a5,a5,1	#, tmp311, tmp312
	sw	a5,-44(s0)	# tmp311, i
.L11:
# code.c:20:     for (i = 0; i < k; i++)
	lw	a5,-44(s0)		# tmp315, i
	mv	a4,a5	# tmp314, tmp315
	lw	a5,-64(s0)		# tmp317, k
	sext.w	a4,a4	# tmp318, tmp314
	sext.w	a5,a5	# tmp319, tmp316
	blt	a4,a5,.L14	#, tmp318, tmp319,
# code.c:23:     return out;
	ld	a5,-24(s0)		# _121, out
# code.c:24: }
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
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
