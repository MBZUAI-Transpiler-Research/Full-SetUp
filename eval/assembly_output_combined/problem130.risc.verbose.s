	.file	"problem130.c"
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
	ld	a4,-56(s0)		# tmp166, grid
	add	a5,a4,a5	# _2, _3, tmp166
	ld	a4,0(a5)		# _4, *_3
# problem130.c:8:             if (grid[i][j] == 1) {
	lw	a5,-40(s0)		# _5, j
	slli	a5,a5,2	#, _6, _5
	add	a5,a4,a5	# _6, _7, _4
	lw	a5,0(a5)		# _8, *_7
# problem130.c:8:             if (grid[i][j] == 1) {
	mv	a4,a5	# tmp167, _8
	li	a5,1		# tmp168,
	bne	a4,a5,.L4	#, tmp167, tmp168,
# problem130.c:9:                 x = i;
	lw	a5,-44(s0)		# tmp169, i
	sw	a5,-36(s0)	# tmp169, x
# problem130.c:10:                 y = j;
	lw	a5,-40(s0)		# tmp170, j
	sw	a5,-32(s0)	# tmp170, y
.L4:
# problem130.c:7:         for (j = 0; j < N; j++)
	lw	a5,-40(s0)		# tmp173, j
	addiw	a5,a5,1	#, tmp171, tmp172
	sw	a5,-40(s0)	# tmp171, j
.L3:
# problem130.c:7:         for (j = 0; j < N; j++)
	lw	a5,-40(s0)		# tmp175, j
	mv	a4,a5	# tmp174, tmp175
	lw	a5,-60(s0)		# tmp177, N
	sext.w	a4,a4	# tmp178, tmp174
	sext.w	a5,a5	# tmp179, tmp176
	blt	a4,a5,.L5	#, tmp178, tmp179,
# problem130.c:6:     for (i = 0; i < N; i++)
	lw	a5,-44(s0)		# tmp182, i
	addiw	a5,a5,1	#, tmp180, tmp181
	sw	a5,-44(s0)	# tmp180, i
.L2:
# problem130.c:6:     for (i = 0; i < N; i++)
	lw	a5,-44(s0)		# tmp184, i
	mv	a4,a5	# tmp183, tmp184
	lw	a5,-60(s0)		# tmp186, N
	sext.w	a4,a4	# tmp187, tmp183
	sext.w	a5,a5	# tmp188, tmp185
	blt	a4,a5,.L6	#, tmp187, tmp188,
# problem130.c:12:     min = N * N;
	lw	a5,-60(s0)		# tmp191, N
	mulw	a5,a5,a5	# tmp189, tmp190, tmp190
	sw	a5,-28(s0)	# tmp189, min
# problem130.c:13:     if (x > 0 && grid[x - 1][y] < min) min = grid[x - 1][y];
	lw	a5,-36(s0)		# tmp193, x
	sext.w	a5,a5	# tmp194, tmp192
	ble	a5,zero,.L7	#, tmp194,,
# problem130.c:13:     if (x > 0 && grid[x - 1][y] < min) min = grid[x - 1][y];
	lw	a5,-36(s0)		# _9, x
	slli	a5,a5,3	#, _10, _9
	addi	a5,a5,-8	#, _11, _10
	ld	a4,-56(s0)		# tmp195, grid
	add	a5,a4,a5	# _11, _12, tmp195
	ld	a4,0(a5)		# _13, *_12
# problem130.c:13:     if (x > 0 && grid[x - 1][y] < min) min = grid[x - 1][y];
	lw	a5,-32(s0)		# _14, y
	slli	a5,a5,2	#, _15, _14
	add	a5,a4,a5	# _15, _16, _13
	lw	a4,0(a5)		# _17, *_16
# problem130.c:13:     if (x > 0 && grid[x - 1][y] < min) min = grid[x - 1][y];
	lw	a5,-28(s0)		# tmp197, min
	sext.w	a5,a5	# tmp198, tmp196
	ble	a5,a4,.L7	#, tmp198, tmp199,
# problem130.c:13:     if (x > 0 && grid[x - 1][y] < min) min = grid[x - 1][y];
	lw	a5,-36(s0)		# _18, x
	slli	a5,a5,3	#, _19, _18
	addi	a5,a5,-8	#, _20, _19
	ld	a4,-56(s0)		# tmp200, grid
	add	a5,a4,a5	# _20, _21, tmp200
	ld	a4,0(a5)		# _22, *_21
# problem130.c:13:     if (x > 0 && grid[x - 1][y] < min) min = grid[x - 1][y];
	lw	a5,-32(s0)		# _23, y
	slli	a5,a5,2	#, _24, _23
	add	a5,a4,a5	# _24, _25, _22
# problem130.c:13:     if (x > 0 && grid[x - 1][y] < min) min = grid[x - 1][y];
	lw	a5,0(a5)		# tmp201, *_25
	sw	a5,-28(s0)	# tmp201, min
.L7:
# problem130.c:14:     if (x < N - 1 && grid[x + 1][y] < min) min = grid[x + 1][y];
	lw	a5,-60(s0)		# tmp204, N
	addiw	a5,a5,-1	#, tmp202, tmp203
	sext.w	a4,a5	# _26, tmp202
# problem130.c:14:     if (x < N - 1 && grid[x + 1][y] < min) min = grid[x + 1][y];
	lw	a5,-36(s0)		# tmp206, x
	sext.w	a5,a5	# tmp207, tmp205
	bge	a5,a4,.L8	#, tmp207, tmp208,
# problem130.c:14:     if (x < N - 1 && grid[x + 1][y] < min) min = grid[x + 1][y];
	lw	a5,-36(s0)		# _27, x
	addi	a5,a5,1	#, _28, _27
	slli	a5,a5,3	#, _29, _28
	ld	a4,-56(s0)		# tmp209, grid
	add	a5,a4,a5	# _29, _30, tmp209
	ld	a4,0(a5)		# _31, *_30
# problem130.c:14:     if (x < N - 1 && grid[x + 1][y] < min) min = grid[x + 1][y];
	lw	a5,-32(s0)		# _32, y
	slli	a5,a5,2	#, _33, _32
	add	a5,a4,a5	# _33, _34, _31
	lw	a4,0(a5)		# _35, *_34
# problem130.c:14:     if (x < N - 1 && grid[x + 1][y] < min) min = grid[x + 1][y];
	lw	a5,-28(s0)		# tmp211, min
	sext.w	a5,a5	# tmp212, tmp210
	ble	a5,a4,.L8	#, tmp212, tmp213,
# problem130.c:14:     if (x < N - 1 && grid[x + 1][y] < min) min = grid[x + 1][y];
	lw	a5,-36(s0)		# _36, x
	addi	a5,a5,1	#, _37, _36
	slli	a5,a5,3	#, _38, _37
	ld	a4,-56(s0)		# tmp214, grid
	add	a5,a4,a5	# _38, _39, tmp214
	ld	a4,0(a5)		# _40, *_39
# problem130.c:14:     if (x < N - 1 && grid[x + 1][y] < min) min = grid[x + 1][y];
	lw	a5,-32(s0)		# _41, y
	slli	a5,a5,2	#, _42, _41
	add	a5,a4,a5	# _42, _43, _40
# problem130.c:14:     if (x < N - 1 && grid[x + 1][y] < min) min = grid[x + 1][y];
	lw	a5,0(a5)		# tmp215, *_43
	sw	a5,-28(s0)	# tmp215, min
.L8:
# problem130.c:15:     if (y > 0 && grid[x][y - 1] < min) min = grid[x][y - 1];
	lw	a5,-32(s0)		# tmp217, y
	sext.w	a5,a5	# tmp218, tmp216
	ble	a5,zero,.L9	#, tmp218,,
# problem130.c:15:     if (y > 0 && grid[x][y - 1] < min) min = grid[x][y - 1];
	lw	a5,-36(s0)		# _44, x
	slli	a5,a5,3	#, _45, _44
	ld	a4,-56(s0)		# tmp219, grid
	add	a5,a4,a5	# _45, _46, tmp219
	ld	a4,0(a5)		# _47, *_46
# problem130.c:15:     if (y > 0 && grid[x][y - 1] < min) min = grid[x][y - 1];
	lw	a5,-32(s0)		# _48, y
	slli	a5,a5,2	#, _49, _48
	addi	a5,a5,-4	#, _50, _49
	add	a5,a4,a5	# _50, _51, _47
	lw	a4,0(a5)		# _52, *_51
# problem130.c:15:     if (y > 0 && grid[x][y - 1] < min) min = grid[x][y - 1];
	lw	a5,-28(s0)		# tmp221, min
	sext.w	a5,a5	# tmp222, tmp220
	ble	a5,a4,.L9	#, tmp222, tmp223,
# problem130.c:15:     if (y > 0 && grid[x][y - 1] < min) min = grid[x][y - 1];
	lw	a5,-36(s0)		# _53, x
	slli	a5,a5,3	#, _54, _53
	ld	a4,-56(s0)		# tmp224, grid
	add	a5,a4,a5	# _54, _55, tmp224
	ld	a4,0(a5)		# _56, *_55
# problem130.c:15:     if (y > 0 && grid[x][y - 1] < min) min = grid[x][y - 1];
	lw	a5,-32(s0)		# _57, y
	slli	a5,a5,2	#, _58, _57
	addi	a5,a5,-4	#, _59, _58
	add	a5,a4,a5	# _59, _60, _56
# problem130.c:15:     if (y > 0 && grid[x][y - 1] < min) min = grid[x][y - 1];
	lw	a5,0(a5)		# tmp225, *_60
	sw	a5,-28(s0)	# tmp225, min
.L9:
# problem130.c:16:     if (y < N - 1 && grid[x][y + 1] < min) min = grid[x][y + 1];
	lw	a5,-60(s0)		# tmp228, N
	addiw	a5,a5,-1	#, tmp226, tmp227
	sext.w	a4,a5	# _61, tmp226
# problem130.c:16:     if (y < N - 1 && grid[x][y + 1] < min) min = grid[x][y + 1];
	lw	a5,-32(s0)		# tmp230, y
	sext.w	a5,a5	# tmp231, tmp229
	bge	a5,a4,.L10	#, tmp231, tmp232,
# problem130.c:16:     if (y < N - 1 && grid[x][y + 1] < min) min = grid[x][y + 1];
	lw	a5,-36(s0)		# _62, x
	slli	a5,a5,3	#, _63, _62
	ld	a4,-56(s0)		# tmp233, grid
	add	a5,a4,a5	# _63, _64, tmp233
	ld	a4,0(a5)		# _65, *_64
# problem130.c:16:     if (y < N - 1 && grid[x][y + 1] < min) min = grid[x][y + 1];
	lw	a5,-32(s0)		# _66, y
	addi	a5,a5,1	#, _67, _66
	slli	a5,a5,2	#, _68, _67
	add	a5,a4,a5	# _68, _69, _65
	lw	a4,0(a5)		# _70, *_69
# problem130.c:16:     if (y < N - 1 && grid[x][y + 1] < min) min = grid[x][y + 1];
	lw	a5,-28(s0)		# tmp235, min
	sext.w	a5,a5	# tmp236, tmp234
	ble	a5,a4,.L10	#, tmp236, tmp237,
# problem130.c:16:     if (y < N - 1 && grid[x][y + 1] < min) min = grid[x][y + 1];
	lw	a5,-36(s0)		# _71, x
	slli	a5,a5,3	#, _72, _71
	ld	a4,-56(s0)		# tmp238, grid
	add	a5,a4,a5	# _72, _73, tmp238
	ld	a4,0(a5)		# _74, *_73
# problem130.c:16:     if (y < N - 1 && grid[x][y + 1] < min) min = grid[x][y + 1];
	lw	a5,-32(s0)		# _75, y
	addi	a5,a5,1	#, _76, _75
	slli	a5,a5,2	#, _77, _76
	add	a5,a4,a5	# _77, _78, _74
# problem130.c:16:     if (y < N - 1 && grid[x][y + 1] < min) min = grid[x][y + 1];
	lw	a5,0(a5)		# tmp239, *_78
	sw	a5,-28(s0)	# tmp239, min
.L10:
# problem130.c:18:     *returnSize = k;
	ld	a5,-72(s0)		# tmp240, returnSize
	lw	a4,-64(s0)		# tmp241, k
	sw	a4,0(a5)	# tmp241, *returnSize_115(D)
# problem130.c:19:     int *out = (int *)malloc(k * sizeof(int));
	lw	a5,-64(s0)		# _79, k
	slli	a5,a5,2	#, _80, _79
	mv	a0,a5	#, _80
	call	malloc@plt	#
	mv	a5,a0	# tmp242,
	sd	a5,-24(s0)	# tmp242, out
# problem130.c:20:     for (i = 0; i < k; i++)
	sw	zero,-44(s0)	#, i
# problem130.c:20:     for (i = 0; i < k; i++)
	j	.L11		#
.L14:
# problem130.c:21:         if (i % 2 == 0) out[i] = 1;
	lw	a5,-44(s0)		# i.0_81, i
	andi	a5,a5,1	#, tmp244, tmp243
	sext.w	a5,a5	# _82, tmp244
# problem130.c:21:         if (i % 2 == 0) out[i] = 1;
	bne	a5,zero,.L12	#, _82,,
# problem130.c:21:         if (i % 2 == 0) out[i] = 1;
	lw	a5,-44(s0)		# _83, i
	slli	a5,a5,2	#, _84, _83
	ld	a4,-24(s0)		# tmp245, out
	add	a5,a4,a5	# _84, _85, tmp245
# problem130.c:21:         if (i % 2 == 0) out[i] = 1;
	li	a4,1		# tmp246,
	sw	a4,0(a5)	# tmp246, *_85
	j	.L13		#
.L12:
# problem130.c:22:         else out[i] = min;
	lw	a5,-44(s0)		# _86, i
	slli	a5,a5,2	#, _87, _86
	ld	a4,-24(s0)		# tmp247, out
	add	a5,a4,a5	# _87, _88, tmp247
# problem130.c:22:         else out[i] = min;
	lw	a4,-28(s0)		# tmp248, min
	sw	a4,0(a5)	# tmp248, *_88
.L13:
# problem130.c:20:     for (i = 0; i < k; i++)
	lw	a5,-44(s0)		# tmp251, i
	addiw	a5,a5,1	#, tmp249, tmp250
	sw	a5,-44(s0)	# tmp249, i
.L11:
# problem130.c:20:     for (i = 0; i < k; i++)
	lw	a5,-44(s0)		# tmp253, i
	mv	a4,a5	# tmp252, tmp253
	lw	a5,-64(s0)		# tmp255, k
	sext.w	a4,a4	# tmp256, tmp252
	sext.w	a5,a5	# tmp257, tmp254
	blt	a4,a5,.L14	#, tmp256, tmp257,
# problem130.c:23:     return out;
	ld	a5,-24(s0)		# _121, out
# problem130.c:24: }
	mv	a0,a5	#, <retval>
	ld	ra,72(sp)		#,
	ld	s0,64(sp)		#,
	addi	sp,sp,80	#,,
	jr	ra		#
	.size	func0, .-func0
	.align	1
	.globl	issame
	.type	issame, @function
issame:
	addi	sp,sp,-64	#,,
	sd	s0,56(sp)	#,
	addi	s0,sp,64	#,,
	sd	a0,-40(s0)	# a, a
	sd	a1,-48(s0)	# b, b
	mv	a5,a2	# tmp82, size
	sw	a5,-52(s0)	# tmp83, size
# problem130.c:33:     for (int i = 0; i < size; i++) {
	sw	zero,-20(s0)	#, i
# problem130.c:33:     for (int i = 0; i < size; i++) {
	j	.L17		#
.L20:
# problem130.c:34:         if (a[i] != b[i]) return 0;
	lw	a5,-20(s0)		# _1, i
	slli	a5,a5,2	#, _2, _1
	ld	a4,-40(s0)		# tmp84, a
	add	a5,a4,a5	# _2, _3, tmp84
	lw	a3,0(a5)		# _4, *_3
# problem130.c:34:         if (a[i] != b[i]) return 0;
	lw	a5,-20(s0)		# _5, i
	slli	a5,a5,2	#, _6, _5
	ld	a4,-48(s0)		# tmp85, b
	add	a5,a4,a5	# _6, _7, tmp85
	lw	a5,0(a5)		# _8, *_7
# problem130.c:34:         if (a[i] != b[i]) return 0;
	mv	a4,a3	# tmp86, _4
	beq	a4,a5,.L18	#, tmp86, tmp87,
# problem130.c:34:         if (a[i] != b[i]) return 0;
	li	a5,0		# _10,
	j	.L19		#
.L18:
# problem130.c:33:     for (int i = 0; i < size; i++) {
	lw	a5,-20(s0)		# tmp90, i
	addiw	a5,a5,1	#, tmp88, tmp89
	sw	a5,-20(s0)	# tmp88, i
.L17:
# problem130.c:33:     for (int i = 0; i < size; i++) {
	lw	a5,-20(s0)		# tmp92, i
	mv	a4,a5	# tmp91, tmp92
	lw	a5,-52(s0)		# tmp94, size
	sext.w	a4,a4	# tmp95, tmp91
	sext.w	a5,a5	# tmp96, tmp93
	blt	a4,a5,.L20	#, tmp95, tmp96,
# problem130.c:36:     return 1;
	li	a5,1		# _10,
.L19:
# problem130.c:37: }
	mv	a0,a5	#, <retval>
	ld	s0,56(sp)		#,
	addi	sp,sp,64	#,,
	jr	ra		#
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
	addi	sp,sp,-592	#,,
	sd	ra,584(sp)	#,
	sd	s0,576(sp)	#,
	addi	s0,sp,592	#,,
# problem130.c:39: int main() {
	la	a5,__stack_chk_guard		# tmp84,
	ld	a4, 0(a5)	# tmp194, __stack_chk_guard
	sd	a4, -24(s0)	# tmp194, D.2542
	li	a4, 0	# tmp194
# problem130.c:43:     int grid1[3][3] = {{1, 2, 3}, {4, 5, 6}, {7, 8, 9}};
	lla	a5,.LC0	# tmp85,
	ld	a1,0(a5)		# tmp86,
	ld	a2,8(a5)		# tmp87,
	ld	a3,16(a5)		# tmp88,
	ld	a4,24(a5)		# tmp89,
	sd	a1,-296(s0)	# tmp86, grid1
	sd	a2,-288(s0)	# tmp87, grid1
	sd	a3,-280(s0)	# tmp88, grid1
	sd	a4,-272(s0)	# tmp89, grid1
	lw	a5,32(a5)		# tmp90,
	sw	a5,-264(s0)	# tmp90, grid1
# problem130.c:44:     int *grid1_ptrs[] = {grid1[0], grid1[1], grid1[2]};
	addi	a5,s0,-296	#, tmp91,
	sd	a5,-472(s0)	# tmp91, grid1_ptrs[0]
	addi	a5,s0,-296	#, tmp92,
	addi	a5,a5,12	#, tmp93, tmp92
	sd	a5,-464(s0)	# tmp93, grid1_ptrs[1]
	addi	a5,s0,-296	#, tmp94,
	addi	a5,a5,24	#, tmp95, tmp94
	sd	a5,-456(s0)	# tmp95, grid1_ptrs[2]
# problem130.c:45:     int result1[] = {1, 2, 1};
	li	a5,1		# tmp96,
	sw	a5,-528(s0)	# tmp96, result1[0]
	li	a5,2		# tmp97,
	sw	a5,-524(s0)	# tmp97, result1[1]
	li	a5,1		# tmp98,
	sw	a5,-520(s0)	# tmp98, result1[2]
# problem130.c:46:     int *out1 = func0(grid1_ptrs, 3, 3, &size);
	addi	a4,s0,-580	#, tmp99,
	addi	a5,s0,-472	#, tmp100,
	mv	a3,a4	#, tmp99
	li	a2,3		#,
	li	a1,3		#,
	mv	a0,a5	#, tmp100
	call	func0		#
	sd	a0,-576(s0)	#, out1
# problem130.c:47:     assert(issame(out1, result1, size));
	lw	a4,-580(s0)		# size.1_1, size
	addi	a5,s0,-528	#, tmp101,
	mv	a2,a4	#, size.1_1
	mv	a1,a5	#, tmp101
	ld	a0,-576(s0)		#, out1
	call	issame		#
	mv	a5,a0	# tmp102,
	bne	a5,zero,.L22	#, _2,,
# problem130.c:47:     assert(issame(out1, result1, size));
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
	lla	a5,.LC1	# tmp103,
	ld	a1,0(a5)		# tmp104,
	ld	a2,8(a5)		# tmp105,
	ld	a3,16(a5)		# tmp106,
	ld	a4,24(a5)		# tmp107,
	sd	a1,-256(s0)	# tmp104, grid2
	sd	a2,-248(s0)	# tmp105, grid2
	sd	a3,-240(s0)	# tmp106, grid2
	sd	a4,-232(s0)	# tmp107, grid2
	lw	a5,32(a5)		# tmp108,
	sw	a5,-224(s0)	# tmp108, grid2
# problem130.c:52:     int *grid2_ptrs[] = {grid2[0], grid2[1], grid2[2]};
	addi	a5,s0,-256	#, tmp109,
	sd	a5,-448(s0)	# tmp109, grid2_ptrs[0]
	addi	a5,s0,-256	#, tmp110,
	addi	a5,a5,12	#, tmp111, tmp110
	sd	a5,-440(s0)	# tmp111, grid2_ptrs[1]
	addi	a5,s0,-256	#, tmp112,
	addi	a5,a5,24	#, tmp113, tmp112
	sd	a5,-432(s0)	# tmp113, grid2_ptrs[2]
# problem130.c:53:     int result2[] = {1};
	li	a5,1		# tmp114,
	sw	a5,-536(s0)	# tmp114, result2[0]
# problem130.c:54:     int *out2 = func0(grid2_ptrs, 3, 1, &size);
	addi	a4,s0,-580	#, tmp115,
	addi	a5,s0,-448	#, tmp116,
	mv	a3,a4	#, tmp115
	li	a2,1		#,
	li	a1,3		#,
	mv	a0,a5	#, tmp116
	call	func0		#
	sd	a0,-568(s0)	#, out2
# problem130.c:55:     assert(issame(out2, result2, size));
	lw	a4,-580(s0)		# size.2_3, size
	addi	a5,s0,-536	#, tmp117,
	mv	a2,a4	#, size.2_3
	mv	a1,a5	#, tmp117
	ld	a0,-568(s0)		#, out2
	call	issame		#
	mv	a5,a0	# tmp118,
	bne	a5,zero,.L23	#, _4,,
# problem130.c:55:     assert(issame(out2, result2, size));
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
	lla	a5,.LC2	# tmp119,
	ld	a7,0(a5)		# tmp120,
	ld	a6,8(a5)		# tmp121,
	ld	a0,16(a5)		# tmp122,
	ld	a1,24(a5)		# tmp123,
	ld	a2,32(a5)		# tmp124,
	ld	a3,40(a5)		# tmp125,
	ld	a4,48(a5)		# tmp126,
	ld	a5,56(a5)		# tmp127,
	sd	a7,-216(s0)	# tmp120, grid3
	sd	a6,-208(s0)	# tmp121, grid3
	sd	a0,-200(s0)	# tmp122, grid3
	sd	a1,-192(s0)	# tmp123, grid3
	sd	a2,-184(s0)	# tmp124, grid3
	sd	a3,-176(s0)	# tmp125, grid3
	sd	a4,-168(s0)	# tmp126, grid3
	sd	a5,-160(s0)	# tmp127, grid3
# problem130.c:60:     int *grid3_ptrs[] = {grid3[0], grid3[1], grid3[2], grid3[3]};
	addi	a5,s0,-216	#, tmp128,
	sd	a5,-392(s0)	# tmp128, grid3_ptrs[0]
	addi	a5,s0,-216	#, tmp129,
	addi	a5,a5,16	#, tmp130, tmp129
	sd	a5,-384(s0)	# tmp130, grid3_ptrs[1]
	addi	a5,s0,-216	#, tmp131,
	addi	a5,a5,32	#, tmp132, tmp131
	sd	a5,-376(s0)	# tmp132, grid3_ptrs[2]
	addi	a5,s0,-216	#, tmp133,
	addi	a5,a5,48	#, tmp134, tmp133
	sd	a5,-368(s0)	# tmp134, grid3_ptrs[3]
# problem130.c:61:     int result3[] = {1, 2, 1, 2};
	lla	a5,.LC3	# tmp135,
	ld	a4,0(a5)		# tmp136,
	sd	a4,-512(s0)	# tmp136, result3
	ld	a5,8(a5)		# tmp137,
	sd	a5,-504(s0)	# tmp137, result3
# problem130.c:62:     int *out3 = func0(grid3_ptrs, 4, 4, &size);
	addi	a4,s0,-580	#, tmp138,
	addi	a5,s0,-392	#, tmp139,
	mv	a3,a4	#, tmp138
	li	a2,4		#,
	li	a1,4		#,
	mv	a0,a5	#, tmp139
	call	func0		#
	sd	a0,-560(s0)	#, out3
# problem130.c:63:     assert(issame(out3, result3, size));
	lw	a4,-580(s0)		# size.3_5, size
	addi	a5,s0,-512	#, tmp140,
	mv	a2,a4	#, size.3_5
	mv	a1,a5	#, tmp140
	ld	a0,-560(s0)		#, out3
	call	issame		#
	mv	a5,a0	# tmp141,
	bne	a5,zero,.L24	#, _6,,
# problem130.c:63:     assert(issame(out3, result3, size));
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
	lla	a5,.LC4	# tmp142,
	ld	a7,0(a5)		# tmp143,
	ld	a6,8(a5)		# tmp144,
	ld	a0,16(a5)		# tmp145,
	ld	a1,24(a5)		# tmp146,
	ld	a2,32(a5)		# tmp147,
	ld	a3,40(a5)		# tmp148,
	ld	a4,48(a5)		# tmp149,
	ld	a5,56(a5)		# tmp150,
	sd	a7,-152(s0)	# tmp143, grid4
	sd	a6,-144(s0)	# tmp144, grid4
	sd	a0,-136(s0)	# tmp145, grid4
	sd	a1,-128(s0)	# tmp146, grid4
	sd	a2,-120(s0)	# tmp147, grid4
	sd	a3,-112(s0)	# tmp148, grid4
	sd	a4,-104(s0)	# tmp149, grid4
	sd	a5,-96(s0)	# tmp150, grid4
# problem130.c:68:     int *grid4_ptrs[] = {grid4[0], grid4[1], grid4[2], grid4[3]};
	addi	a5,s0,-152	#, tmp151,
	sd	a5,-360(s0)	# tmp151, grid4_ptrs[0]
	addi	a5,s0,-152	#, tmp152,
	addi	a5,a5,16	#, tmp153, tmp152
	sd	a5,-352(s0)	# tmp153, grid4_ptrs[1]
	addi	a5,s0,-152	#, tmp154,
	addi	a5,a5,32	#, tmp155, tmp154
	sd	a5,-344(s0)	# tmp155, grid4_ptrs[2]
	addi	a5,s0,-152	#, tmp156,
	addi	a5,a5,48	#, tmp157, tmp156
	sd	a5,-336(s0)	# tmp157, grid4_ptrs[3]
# problem130.c:69:     int result4[] = {1, 10, 1, 10, 1, 10, 1};
	lla	a5,.LC5	# tmp158,
	ld	a2,0(a5)		# tmp159,
	ld	a3,8(a5)		# tmp160,
	ld	a4,16(a5)		# tmp161,
	sd	a2,-424(s0)	# tmp159, result4
	sd	a3,-416(s0)	# tmp160, result4
	sd	a4,-408(s0)	# tmp161, result4
	lw	a5,24(a5)		# tmp162,
	sw	a5,-400(s0)	# tmp162, result4
# problem130.c:70:     int *out4 = func0(grid4_ptrs, 4, 7, &size);
	addi	a4,s0,-580	#, tmp163,
	addi	a5,s0,-360	#, tmp164,
	mv	a3,a4	#, tmp163
	li	a2,7		#,
	li	a1,4		#,
	mv	a0,a5	#, tmp164
	call	func0		#
	sd	a0,-552(s0)	#, out4
# problem130.c:71:     assert(issame(out4, result4, size));
	lw	a4,-580(s0)		# size.4_7, size
	addi	a5,s0,-424	#, tmp165,
	mv	a2,a4	#, size.4_7
	mv	a1,a5	#, tmp165
	ld	a0,-552(s0)		#, out4
	call	issame		#
	mv	a5,a0	# tmp166,
	bne	a5,zero,.L25	#, _8,,
# problem130.c:71:     assert(issame(out4, result4, size));
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
	lla	a5,.LC6	# tmp167,
	ld	a7,0(a5)		# tmp168,
	ld	a6,8(a5)		# tmp169,
	ld	a0,16(a5)		# tmp170,
	ld	a1,24(a5)		# tmp171,
	ld	a2,32(a5)		# tmp172,
	ld	a3,40(a5)		# tmp173,
	ld	a4,48(a5)		# tmp174,
	ld	a5,56(a5)		# tmp175,
	sd	a7,-88(s0)	# tmp168, grid5
	sd	a6,-80(s0)	# tmp169, grid5
	sd	a0,-72(s0)	# tmp170, grid5
	sd	a1,-64(s0)	# tmp171, grid5
	sd	a2,-56(s0)	# tmp172, grid5
	sd	a3,-48(s0)	# tmp173, grid5
	sd	a4,-40(s0)	# tmp174, grid5
	sd	a5,-32(s0)	# tmp175, grid5
# problem130.c:76:     int *grid5_ptrs[] = {grid5[0], grid5[1], grid5[2], grid5[3]};
	addi	a5,s0,-88	#, tmp176,
	sd	a5,-328(s0)	# tmp176, grid5_ptrs[0]
	addi	a5,s0,-88	#, tmp177,
	addi	a5,a5,16	#, tmp178, tmp177
	sd	a5,-320(s0)	# tmp178, grid5_ptrs[1]
	addi	a5,s0,-88	#, tmp179,
	addi	a5,a5,32	#, tmp180, tmp179
	sd	a5,-312(s0)	# tmp180, grid5_ptrs[2]
	addi	a5,s0,-88	#, tmp181,
	addi	a5,a5,48	#, tmp182, tmp181
	sd	a5,-304(s0)	# tmp182, grid5_ptrs[3]
# problem130.c:77:     int result5[] = {1, 7, 1, 7, 1};
	lla	a5,.LC7	# tmp183,
	ld	a4,0(a5)		# tmp184,
	sd	a4,-496(s0)	# tmp184, result5
	ld	a4,8(a5)		# tmp185,
	sd	a4,-488(s0)	# tmp185, result5
	lw	a5,16(a5)		# tmp186,
	sw	a5,-480(s0)	# tmp186, result5
# problem130.c:78:     int *out5 = func0(grid5_ptrs, 4, 5, &size);
	addi	a4,s0,-580	#, tmp187,
	addi	a5,s0,-328	#, tmp188,
	mv	a3,a4	#, tmp187
	li	a2,5		#,
	li	a1,4		#,
	mv	a0,a5	#, tmp188
	call	func0		#
	sd	a0,-544(s0)	#, out5
# problem130.c:79:     assert(issame(out5, result5, size));
	lw	a4,-580(s0)		# size.5_9, size
	addi	a5,s0,-496	#, tmp189,
	mv	a2,a4	#, size.5_9
	mv	a1,a5	#, tmp189
	ld	a0,-544(s0)		#, out5
	call	issame		#
	mv	a5,a0	# tmp190,
	bne	a5,zero,.L26	#, _10,,
# problem130.c:79:     assert(issame(out5, result5, size));
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
	la	a5,__stack_chk_guard		# tmp192,
	ld	a3, -24(s0)	# tmp195, D.2542
	ld	a5, 0(a5)	# tmp193, __stack_chk_guard
	xor	a5, a3, a5	# tmp193, tmp195
	li	a3, 0	# tmp195
	beq	a5,zero,.L28	#, tmp193,,
	call	__stack_chk_fail@plt	#
.L28:
	mv	a0,a4	#, <retval>
	ld	ra,584(sp)		#,
	ld	s0,576(sp)		#,
	addi	sp,sp,592	#,,
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
