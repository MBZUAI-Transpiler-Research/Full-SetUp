	.file	"code.c"
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
	addi	sp,sp,-80	#,,
	sd	ra,72(sp)	#,
	sd	s0,64(sp)	#,
	addi	s0,sp,80	#,,
	sd	a0,-56(s0)	# grid, grid
	mv	a5,a1	# tmp162, N
	mv	a4,a2	# tmp164, k
	sd	a3,-72(s0)	# returnSize, returnSize
	sw	a5,-60(s0)	# tmp163, N
	mv	a5,a4	# tmp165, tmp164
	sw	a5,-64(s0)	# tmp165, k
# eval/problem130//code.c:6:     for (i = 0; i < N; i++)
	sw	zero,-44(s0)	#, i
# eval/problem130//code.c:6:     for (i = 0; i < N; i++)
	j	.L2		#
.L6:
# eval/problem130//code.c:7:         for (j = 0; j < N; j++)
	sw	zero,-40(s0)	#, j
# eval/problem130//code.c:7:         for (j = 0; j < N; j++)
	j	.L3		#
.L5:
# eval/problem130//code.c:8:             if (grid[i][j] == 1) {
	lw	a5,-44(s0)		# _1, i
	slli	a5,a5,3	#, _2, _1
	ld	a4,-56(s0)		# tmp166, grid
	add	a5,a4,a5	# _2, _3, tmp166
	ld	a4,0(a5)		# _4, *_3
# eval/problem130//code.c:8:             if (grid[i][j] == 1) {
	lw	a5,-40(s0)		# _5, j
	slli	a5,a5,2	#, _6, _5
	add	a5,a4,a5	# _6, _7, _4
	lw	a5,0(a5)		# _8, *_7
# eval/problem130//code.c:8:             if (grid[i][j] == 1) {
	mv	a4,a5	# tmp167, _8
	li	a5,1		# tmp168,
	bne	a4,a5,.L4	#, tmp167, tmp168,
# eval/problem130//code.c:9:                 x = i;
	lw	a5,-44(s0)		# tmp169, i
	sw	a5,-36(s0)	# tmp169, x
# eval/problem130//code.c:10:                 y = j;
	lw	a5,-40(s0)		# tmp170, j
	sw	a5,-32(s0)	# tmp170, y
.L4:
# eval/problem130//code.c:7:         for (j = 0; j < N; j++)
	lw	a5,-40(s0)		# tmp173, j
	addiw	a5,a5,1	#, tmp171, tmp172
	sw	a5,-40(s0)	# tmp171, j
.L3:
# eval/problem130//code.c:7:         for (j = 0; j < N; j++)
	lw	a5,-40(s0)		# tmp175, j
	mv	a4,a5	# tmp174, tmp175
	lw	a5,-60(s0)		# tmp177, N
	sext.w	a4,a4	# tmp178, tmp174
	sext.w	a5,a5	# tmp179, tmp176
	blt	a4,a5,.L5	#, tmp178, tmp179,
# eval/problem130//code.c:6:     for (i = 0; i < N; i++)
	lw	a5,-44(s0)		# tmp182, i
	addiw	a5,a5,1	#, tmp180, tmp181
	sw	a5,-44(s0)	# tmp180, i
.L2:
# eval/problem130//code.c:6:     for (i = 0; i < N; i++)
	lw	a5,-44(s0)		# tmp184, i
	mv	a4,a5	# tmp183, tmp184
	lw	a5,-60(s0)		# tmp186, N
	sext.w	a4,a4	# tmp187, tmp183
	sext.w	a5,a5	# tmp188, tmp185
	blt	a4,a5,.L6	#, tmp187, tmp188,
# eval/problem130//code.c:12:     min = N * N;
	lw	a5,-60(s0)		# tmp191, N
	mulw	a5,a5,a5	# tmp189, tmp190, tmp190
	sw	a5,-28(s0)	# tmp189, min
# eval/problem130//code.c:13:     if (x > 0 && grid[x - 1][y] < min) min = grid[x - 1][y];
	lw	a5,-36(s0)		# tmp193, x
	sext.w	a5,a5	# tmp194, tmp192
	ble	a5,zero,.L7	#, tmp194,,
# eval/problem130//code.c:13:     if (x > 0 && grid[x - 1][y] < min) min = grid[x - 1][y];
	lw	a5,-36(s0)		# _9, x
	slli	a5,a5,3	#, _10, _9
	addi	a5,a5,-8	#, _11, _10
	ld	a4,-56(s0)		# tmp195, grid
	add	a5,a4,a5	# _11, _12, tmp195
	ld	a4,0(a5)		# _13, *_12
# eval/problem130//code.c:13:     if (x > 0 && grid[x - 1][y] < min) min = grid[x - 1][y];
	lw	a5,-32(s0)		# _14, y
	slli	a5,a5,2	#, _15, _14
	add	a5,a4,a5	# _15, _16, _13
	lw	a4,0(a5)		# _17, *_16
# eval/problem130//code.c:13:     if (x > 0 && grid[x - 1][y] < min) min = grid[x - 1][y];
	lw	a5,-28(s0)		# tmp197, min
	sext.w	a5,a5	# tmp198, tmp196
	ble	a5,a4,.L7	#, tmp198, tmp199,
# eval/problem130//code.c:13:     if (x > 0 && grid[x - 1][y] < min) min = grid[x - 1][y];
	lw	a5,-36(s0)		# _18, x
	slli	a5,a5,3	#, _19, _18
	addi	a5,a5,-8	#, _20, _19
	ld	a4,-56(s0)		# tmp200, grid
	add	a5,a4,a5	# _20, _21, tmp200
	ld	a4,0(a5)		# _22, *_21
# eval/problem130//code.c:13:     if (x > 0 && grid[x - 1][y] < min) min = grid[x - 1][y];
	lw	a5,-32(s0)		# _23, y
	slli	a5,a5,2	#, _24, _23
	add	a5,a4,a5	# _24, _25, _22
# eval/problem130//code.c:13:     if (x > 0 && grid[x - 1][y] < min) min = grid[x - 1][y];
	lw	a5,0(a5)		# tmp201, *_25
	sw	a5,-28(s0)	# tmp201, min
.L7:
# eval/problem130//code.c:14:     if (x < N - 1 && grid[x + 1][y] < min) min = grid[x + 1][y];
	lw	a5,-60(s0)		# tmp204, N
	addiw	a5,a5,-1	#, tmp202, tmp203
	sext.w	a4,a5	# _26, tmp202
# eval/problem130//code.c:14:     if (x < N - 1 && grid[x + 1][y] < min) min = grid[x + 1][y];
	lw	a5,-36(s0)		# tmp206, x
	sext.w	a5,a5	# tmp207, tmp205
	bge	a5,a4,.L8	#, tmp207, tmp208,
# eval/problem130//code.c:14:     if (x < N - 1 && grid[x + 1][y] < min) min = grid[x + 1][y];
	lw	a5,-36(s0)		# _27, x
	addi	a5,a5,1	#, _28, _27
	slli	a5,a5,3	#, _29, _28
	ld	a4,-56(s0)		# tmp209, grid
	add	a5,a4,a5	# _29, _30, tmp209
	ld	a4,0(a5)		# _31, *_30
# eval/problem130//code.c:14:     if (x < N - 1 && grid[x + 1][y] < min) min = grid[x + 1][y];
	lw	a5,-32(s0)		# _32, y
	slli	a5,a5,2	#, _33, _32
	add	a5,a4,a5	# _33, _34, _31
	lw	a4,0(a5)		# _35, *_34
# eval/problem130//code.c:14:     if (x < N - 1 && grid[x + 1][y] < min) min = grid[x + 1][y];
	lw	a5,-28(s0)		# tmp211, min
	sext.w	a5,a5	# tmp212, tmp210
	ble	a5,a4,.L8	#, tmp212, tmp213,
# eval/problem130//code.c:14:     if (x < N - 1 && grid[x + 1][y] < min) min = grid[x + 1][y];
	lw	a5,-36(s0)		# _36, x
	addi	a5,a5,1	#, _37, _36
	slli	a5,a5,3	#, _38, _37
	ld	a4,-56(s0)		# tmp214, grid
	add	a5,a4,a5	# _38, _39, tmp214
	ld	a4,0(a5)		# _40, *_39
# eval/problem130//code.c:14:     if (x < N - 1 && grid[x + 1][y] < min) min = grid[x + 1][y];
	lw	a5,-32(s0)		# _41, y
	slli	a5,a5,2	#, _42, _41
	add	a5,a4,a5	# _42, _43, _40
# eval/problem130//code.c:14:     if (x < N - 1 && grid[x + 1][y] < min) min = grid[x + 1][y];
	lw	a5,0(a5)		# tmp215, *_43
	sw	a5,-28(s0)	# tmp215, min
.L8:
# eval/problem130//code.c:15:     if (y > 0 && grid[x][y - 1] < min) min = grid[x][y - 1];
	lw	a5,-32(s0)		# tmp217, y
	sext.w	a5,a5	# tmp218, tmp216
	ble	a5,zero,.L9	#, tmp218,,
# eval/problem130//code.c:15:     if (y > 0 && grid[x][y - 1] < min) min = grid[x][y - 1];
	lw	a5,-36(s0)		# _44, x
	slli	a5,a5,3	#, _45, _44
	ld	a4,-56(s0)		# tmp219, grid
	add	a5,a4,a5	# _45, _46, tmp219
	ld	a4,0(a5)		# _47, *_46
# eval/problem130//code.c:15:     if (y > 0 && grid[x][y - 1] < min) min = grid[x][y - 1];
	lw	a5,-32(s0)		# _48, y
	slli	a5,a5,2	#, _49, _48
	addi	a5,a5,-4	#, _50, _49
	add	a5,a4,a5	# _50, _51, _47
	lw	a4,0(a5)		# _52, *_51
# eval/problem130//code.c:15:     if (y > 0 && grid[x][y - 1] < min) min = grid[x][y - 1];
	lw	a5,-28(s0)		# tmp221, min
	sext.w	a5,a5	# tmp222, tmp220
	ble	a5,a4,.L9	#, tmp222, tmp223,
# eval/problem130//code.c:15:     if (y > 0 && grid[x][y - 1] < min) min = grid[x][y - 1];
	lw	a5,-36(s0)		# _53, x
	slli	a5,a5,3	#, _54, _53
	ld	a4,-56(s0)		# tmp224, grid
	add	a5,a4,a5	# _54, _55, tmp224
	ld	a4,0(a5)		# _56, *_55
# eval/problem130//code.c:15:     if (y > 0 && grid[x][y - 1] < min) min = grid[x][y - 1];
	lw	a5,-32(s0)		# _57, y
	slli	a5,a5,2	#, _58, _57
	addi	a5,a5,-4	#, _59, _58
	add	a5,a4,a5	# _59, _60, _56
# eval/problem130//code.c:15:     if (y > 0 && grid[x][y - 1] < min) min = grid[x][y - 1];
	lw	a5,0(a5)		# tmp225, *_60
	sw	a5,-28(s0)	# tmp225, min
.L9:
# eval/problem130//code.c:16:     if (y < N - 1 && grid[x][y + 1] < min) min = grid[x][y + 1];
	lw	a5,-60(s0)		# tmp228, N
	addiw	a5,a5,-1	#, tmp226, tmp227
	sext.w	a4,a5	# _61, tmp226
# eval/problem130//code.c:16:     if (y < N - 1 && grid[x][y + 1] < min) min = grid[x][y + 1];
	lw	a5,-32(s0)		# tmp230, y
	sext.w	a5,a5	# tmp231, tmp229
	bge	a5,a4,.L10	#, tmp231, tmp232,
# eval/problem130//code.c:16:     if (y < N - 1 && grid[x][y + 1] < min) min = grid[x][y + 1];
	lw	a5,-36(s0)		# _62, x
	slli	a5,a5,3	#, _63, _62
	ld	a4,-56(s0)		# tmp233, grid
	add	a5,a4,a5	# _63, _64, tmp233
	ld	a4,0(a5)		# _65, *_64
# eval/problem130//code.c:16:     if (y < N - 1 && grid[x][y + 1] < min) min = grid[x][y + 1];
	lw	a5,-32(s0)		# _66, y
	addi	a5,a5,1	#, _67, _66
	slli	a5,a5,2	#, _68, _67
	add	a5,a4,a5	# _68, _69, _65
	lw	a4,0(a5)		# _70, *_69
# eval/problem130//code.c:16:     if (y < N - 1 && grid[x][y + 1] < min) min = grid[x][y + 1];
	lw	a5,-28(s0)		# tmp235, min
	sext.w	a5,a5	# tmp236, tmp234
	ble	a5,a4,.L10	#, tmp236, tmp237,
# eval/problem130//code.c:16:     if (y < N - 1 && grid[x][y + 1] < min) min = grid[x][y + 1];
	lw	a5,-36(s0)		# _71, x
	slli	a5,a5,3	#, _72, _71
	ld	a4,-56(s0)		# tmp238, grid
	add	a5,a4,a5	# _72, _73, tmp238
	ld	a4,0(a5)		# _74, *_73
# eval/problem130//code.c:16:     if (y < N - 1 && grid[x][y + 1] < min) min = grid[x][y + 1];
	lw	a5,-32(s0)		# _75, y
	addi	a5,a5,1	#, _76, _75
	slli	a5,a5,2	#, _77, _76
	add	a5,a4,a5	# _77, _78, _74
# eval/problem130//code.c:16:     if (y < N - 1 && grid[x][y + 1] < min) min = grid[x][y + 1];
	lw	a5,0(a5)		# tmp239, *_78
	sw	a5,-28(s0)	# tmp239, min
.L10:
# eval/problem130//code.c:18:     *returnSize = k;
	ld	a5,-72(s0)		# tmp240, returnSize
	lw	a4,-64(s0)		# tmp241, k
	sw	a4,0(a5)	# tmp241, *returnSize_115(D)
# eval/problem130//code.c:19:     int *out = (int *)malloc(k * sizeof(int));
	lw	a5,-64(s0)		# _79, k
	slli	a5,a5,2	#, _80, _79
	mv	a0,a5	#, _80
	call	malloc@plt	#
	mv	a5,a0	# tmp242,
	sd	a5,-24(s0)	# tmp242, out
# eval/problem130//code.c:20:     for (i = 0; i < k; i++)
	sw	zero,-44(s0)	#, i
# eval/problem130//code.c:20:     for (i = 0; i < k; i++)
	j	.L11		#
.L14:
# eval/problem130//code.c:21:         if (i % 2 == 0) out[i] = 1;
	lw	a5,-44(s0)		# i.0_81, i
	andi	a5,a5,1	#, tmp244, tmp243
	sext.w	a5,a5	# _82, tmp244
# eval/problem130//code.c:21:         if (i % 2 == 0) out[i] = 1;
	bne	a5,zero,.L12	#, _82,,
# eval/problem130//code.c:21:         if (i % 2 == 0) out[i] = 1;
	lw	a5,-44(s0)		# _83, i
	slli	a5,a5,2	#, _84, _83
	ld	a4,-24(s0)		# tmp245, out
	add	a5,a4,a5	# _84, _85, tmp245
# eval/problem130//code.c:21:         if (i % 2 == 0) out[i] = 1;
	li	a4,1		# tmp246,
	sw	a4,0(a5)	# tmp246, *_85
	j	.L13		#
.L12:
# eval/problem130//code.c:22:         else out[i] = min;
	lw	a5,-44(s0)		# _86, i
	slli	a5,a5,2	#, _87, _86
	ld	a4,-24(s0)		# tmp247, out
	add	a5,a4,a5	# _87, _88, tmp247
# eval/problem130//code.c:22:         else out[i] = min;
	lw	a4,-28(s0)		# tmp248, min
	sw	a4,0(a5)	# tmp248, *_88
.L13:
# eval/problem130//code.c:20:     for (i = 0; i < k; i++)
	lw	a5,-44(s0)		# tmp251, i
	addiw	a5,a5,1	#, tmp249, tmp250
	sw	a5,-44(s0)	# tmp249, i
.L11:
# eval/problem130//code.c:20:     for (i = 0; i < k; i++)
	lw	a5,-44(s0)		# tmp253, i
	mv	a4,a5	# tmp252, tmp253
	lw	a5,-64(s0)		# tmp255, k
	sext.w	a4,a4	# tmp256, tmp252
	sext.w	a5,a5	# tmp257, tmp254
	blt	a4,a5,.L14	#, tmp256, tmp257,
# eval/problem130//code.c:23:     return out;
	ld	a5,-24(s0)		# _121, out
# eval/problem130//code.c:24: }
	mv	a0,a5	#, <retval>
	ld	ra,72(sp)		#,
	ld	s0,64(sp)		#,
	addi	sp,sp,80	#,,
	jr	ra		#
	.size	func0, .-func0
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
