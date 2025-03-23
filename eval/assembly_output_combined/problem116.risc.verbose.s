	.file	"problem116.c"
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
	addi	sp,sp,-64	#,,
	sd	s0,56(sp)	#,
	addi	s0,sp,64	#,,
	sd	a0,-40(s0)	# grid, grid
	mv	a5,a1	# tmp85, rows
	mv	a4,a3	# tmp89, capacity
	sw	a5,-44(s0)	# tmp86, rows
	mv	a5,a2	# tmp88, tmp87
	sw	a5,-48(s0)	# tmp88, cols
	mv	a5,a4	# tmp90, tmp89
	sw	a5,-52(s0)	# tmp90, capacity
# problem116.c:3:     int out = 0;
	sw	zero,-32(s0)	#, out
# problem116.c:4:     for (int i = 0; i < rows; i++) {
	sw	zero,-28(s0)	#, i
# problem116.c:4:     for (int i = 0; i < rows; i++) {
	j	.L2		#
.L6:
# problem116.c:5:         int sum = 0;
	sw	zero,-24(s0)	#, sum
# problem116.c:6:         for (int j = 0; j < cols; j++)
	sw	zero,-20(s0)	#, j
# problem116.c:6:         for (int j = 0; j < cols; j++)
	j	.L3		#
.L4:
# problem116.c:7:             sum += grid[i][j];
	lw	a5,-28(s0)		# _1, i
	slli	a5,a5,3	#, _2, _1
	ld	a4,-40(s0)		# tmp91, grid
	add	a5,a4,a5	# _2, _3, tmp91
	ld	a4,0(a5)		# _4, *_3
# problem116.c:7:             sum += grid[i][j];
	lw	a5,-20(s0)		# _5, j
	slli	a5,a5,2	#, _6, _5
	add	a5,a4,a5	# _6, _7, _4
	lw	a5,0(a5)		# _8, *_7
# problem116.c:7:             sum += grid[i][j];
	lw	a4,-24(s0)		# tmp94, sum
	addw	a5,a4,a5	# _8, tmp92, tmp93
	sw	a5,-24(s0)	# tmp92, sum
# problem116.c:6:         for (int j = 0; j < cols; j++)
	lw	a5,-20(s0)		# tmp97, j
	addiw	a5,a5,1	#, tmp95, tmp96
	sw	a5,-20(s0)	# tmp95, j
.L3:
# problem116.c:6:         for (int j = 0; j < cols; j++)
	lw	a5,-20(s0)		# tmp99, j
	mv	a4,a5	# tmp98, tmp99
	lw	a5,-48(s0)		# tmp101, cols
	sext.w	a4,a4	# tmp102, tmp98
	sext.w	a5,a5	# tmp103, tmp100
	blt	a4,a5,.L4	#, tmp102, tmp103,
# problem116.c:8:         if (sum > 0) out += (sum + capacity - 1) / capacity;
	lw	a5,-24(s0)		# tmp105, sum
	sext.w	a5,a5	# tmp106, tmp104
	ble	a5,zero,.L5	#, tmp106,,
# problem116.c:8:         if (sum > 0) out += (sum + capacity - 1) / capacity;
	lw	a5,-24(s0)		# tmp109, sum
	mv	a4,a5	# tmp108, tmp109
	lw	a5,-52(s0)		# tmp111, capacity
	addw	a5,a4,a5	# tmp110, tmp107, tmp108
	sext.w	a5,a5	# _9, tmp107
# problem116.c:8:         if (sum > 0) out += (sum + capacity - 1) / capacity;
	addiw	a5,a5,-1	#, tmp112, _9
	sext.w	a5,a5	# _10, tmp112
# problem116.c:8:         if (sum > 0) out += (sum + capacity - 1) / capacity;
	lw	a4,-52(s0)		# tmp116, capacity
	divw	a5,a5,a4	# tmp115, tmp114, _10
	sext.w	a5,a5	# _11, tmp114
# problem116.c:8:         if (sum > 0) out += (sum + capacity - 1) / capacity;
	lw	a4,-32(s0)		# tmp119, out
	addw	a5,a4,a5	# _11, tmp117, tmp118
	sw	a5,-32(s0)	# tmp117, out
.L5:
# problem116.c:4:     for (int i = 0; i < rows; i++) {
	lw	a5,-28(s0)		# tmp122, i
	addiw	a5,a5,1	#, tmp120, tmp121
	sw	a5,-28(s0)	# tmp120, i
.L2:
# problem116.c:4:     for (int i = 0; i < rows; i++) {
	lw	a5,-28(s0)		# tmp124, i
	mv	a4,a5	# tmp123, tmp124
	lw	a5,-44(s0)		# tmp126, rows
	sext.w	a4,a4	# tmp127, tmp123
	sext.w	a5,a5	# tmp128, tmp125
	blt	a4,a5,.L6	#, tmp127, tmp128,
# problem116.c:10:     return out;
	lw	a5,-32(s0)		# _20, out
# problem116.c:11: }
	mv	a0,a5	#, <retval>
	ld	s0,56(sp)		#,
	addi	sp,sp,64	#,,
	jr	ra		#
	.size	func0, .-func0
	.section	.rodata
	.align	3
.LC3:
	.string	"problem116.c"
	.align	3
.LC4:
	.string	"func0(grid, rows, cols, capacity) == 6"
	.align	3
.LC5:
	.string	"func0(grid, rows, cols, capacity) == 5"
	.align	3
.LC6:
	.string	"func0(grid, rows, cols, capacity) == 0"
	.align	3
.LC7:
	.string	"func0(grid, rows, cols, capacity) == 4"
	.align	3
.LC8:
	.string	"func0(grid, rows, cols, capacity) == 2"
	.align	3
.LC9:
	.string	"All tests passed!"
	.align	3
.LC0:
	.word	0
	.word	0
	.word	1
	.word	0
	.word	0
	.word	1
	.word	0
	.word	0
	.word	1
	.word	1
	.word	1
	.word	1
	.align	3
.LC1:
	.word	0
	.word	0
	.word	1
	.word	1
	.word	0
	.word	0
	.word	0
	.word	0
	.word	1
	.word	1
	.word	1
	.word	1
	.word	0
	.word	1
	.word	1
	.word	1
	.align	3
.LC2:
	.word	1
	.word	1
	.word	1
	.word	1
	.word	1
	.word	1
	.word	1
	.word	1
	.text
	.align	1
	.globl	main
	.type	main, @function
main:
	addi	sp,sp,-320	#,,
	sd	ra,312(sp)	#,
	sd	s0,304(sp)	#,
	sd	s1,296(sp)	#,
	addi	s0,sp,320	#,,
# problem116.c:19: int main() {
	la	a5,__stack_chk_guard		# tmp179,
	ld	a4, 0(a5)	# tmp438, __stack_chk_guard
	sd	a4, -40(s0)	# tmp438, D.2560
	li	a4, 0	# tmp438
# problem116.c:24:     rows = 3; cols = 4; capacity = 1;
	li	a5,3		# tmp180,
	sw	a5,-260(s0)	# tmp180, rows
# problem116.c:24:     rows = 3; cols = 4; capacity = 1;
	li	a5,4		# tmp181,
	sw	a5,-256(s0)	# tmp181, cols
# problem116.c:24:     rows = 3; cols = 4; capacity = 1;
	li	a5,1		# tmp182,
	sw	a5,-252(s0)	# tmp182, capacity
# problem116.c:25:     grid = (int **)malloc(rows * sizeof(int *));
	lw	a5,-260(s0)		# _1, rows
	slli	a5,a5,3	#, _2, _1
	mv	a0,a5	#, _2
	call	malloc@plt	#
	mv	a5,a0	# tmp183,
	sd	a5,-248(s0)	# tmp183, grid
# problem116.c:26:     int grid1_data[3][4] = {{0,0,1,0}, {0,1,0,0}, {1,1,1,1}};
	lla	a5,.LC0	# tmp184,
	ld	a0,0(a5)		# tmp185,
	ld	a1,8(a5)		# tmp186,
	ld	a2,16(a5)		# tmp187,
	ld	a3,24(a5)		# tmp188,
	ld	a4,32(a5)		# tmp189,
	ld	a5,40(a5)		# tmp190,
	sd	a0,-152(s0)	# tmp185, grid1_data
	sd	a1,-144(s0)	# tmp186, grid1_data
	sd	a2,-136(s0)	# tmp187, grid1_data
	sd	a3,-128(s0)	# tmp188, grid1_data
	sd	a4,-120(s0)	# tmp189, grid1_data
	sd	a5,-112(s0)	# tmp190, grid1_data
# problem116.c:27:     for (int i = 0; i < rows; i++) {
	sw	zero,-320(s0)	#, i
# problem116.c:27:     for (int i = 0; i < rows; i++) {
	j	.L9		#
.L12:
# problem116.c:28:         grid[i] = (int *)malloc(cols * sizeof(int));
	lw	a5,-256(s0)		# _3, cols
	slli	a3,a5,2	#, _4, _3
# problem116.c:28:         grid[i] = (int *)malloc(cols * sizeof(int));
	lw	a5,-320(s0)		# _5, i
	slli	a5,a5,3	#, _6, _5
	ld	a4,-248(s0)		# tmp191, grid
	add	s1,a4,a5	# _6, _7, tmp191
# problem116.c:28:         grid[i] = (int *)malloc(cols * sizeof(int));
	mv	a0,a3	#, _4
	call	malloc@plt	#
	mv	a5,a0	# tmp192,
# problem116.c:28:         grid[i] = (int *)malloc(cols * sizeof(int));
	sd	a5,0(s1)	# _8, *_7
# problem116.c:29:         for (int j = 0; j < cols; j++) {
	sw	zero,-316(s0)	#, j
# problem116.c:29:         for (int j = 0; j < cols; j++) {
	j	.L10		#
.L11:
# problem116.c:30:             grid[i][j] = grid1_data[i][j];
	lw	a5,-320(s0)		# _9, i
	slli	a5,a5,3	#, _10, _9
	ld	a4,-248(s0)		# tmp193, grid
	add	a5,a4,a5	# _10, _11, tmp193
	ld	a4,0(a5)		# _12, *_11
# problem116.c:30:             grid[i][j] = grid1_data[i][j];
	lw	a5,-316(s0)		# _13, j
	slli	a5,a5,2	#, _14, _13
	add	a4,a4,a5	# _14, _15, _12
# problem116.c:30:             grid[i][j] = grid1_data[i][j];
	lw	a5,-316(s0)		# tmp194, j
	lw	a3,-320(s0)		# tmp195, i
	slli	a3,a3,2	#, tmp196, tmp195
	add	a5,a3,a5	# tmp194, tmp197, tmp196
	slli	a5,a5,2	#, tmp198, tmp197
	addi	a5,a5,-32	#, tmp442, tmp198
	add	a5,a5,s0	#, tmp198, tmp442
	lw	a5,-120(a5)		# _16, grid1_data[i_106][j_107]
# problem116.c:30:             grid[i][j] = grid1_data[i][j];
	sw	a5,0(a4)	# _16, *_15
# problem116.c:29:         for (int j = 0; j < cols; j++) {
	lw	a5,-316(s0)		# tmp201, j
	addiw	a5,a5,1	#, tmp199, tmp200
	sw	a5,-316(s0)	# tmp199, j
.L10:
# problem116.c:29:         for (int j = 0; j < cols; j++) {
	lw	a5,-316(s0)		# tmp203, j
	mv	a4,a5	# tmp202, tmp203
	lw	a5,-256(s0)		# tmp205, cols
	sext.w	a4,a4	# tmp206, tmp202
	sext.w	a5,a5	# tmp207, tmp204
	blt	a4,a5,.L11	#, tmp206, tmp207,
# problem116.c:27:     for (int i = 0; i < rows; i++) {
	lw	a5,-320(s0)		# tmp210, i
	addiw	a5,a5,1	#, tmp208, tmp209
	sw	a5,-320(s0)	# tmp208, i
.L9:
# problem116.c:27:     for (int i = 0; i < rows; i++) {
	lw	a5,-320(s0)		# tmp212, i
	mv	a4,a5	# tmp211, tmp212
	lw	a5,-260(s0)		# tmp214, rows
	sext.w	a4,a4	# tmp215, tmp211
	sext.w	a5,a5	# tmp216, tmp213
	blt	a4,a5,.L12	#, tmp215, tmp216,
# problem116.c:33:     assert(func0(grid, rows, cols, capacity) == 6);
	lw	a3,-252(s0)		# tmp217, capacity
	lw	a4,-256(s0)		# tmp218, cols
	lw	a5,-260(s0)		# tmp219, rows
	mv	a2,a4	#, tmp218
	mv	a1,a5	#, tmp219
	ld	a0,-248(s0)		#, grid
	call	func0		#
	mv	a5,a0	# tmp220,
	mv	a4,a5	# tmp221, _17
	li	a5,6		# tmp222,
	beq	a4,a5,.L13	#, tmp221, tmp222,
# problem116.c:33:     assert(func0(grid, rows, cols, capacity) == 6);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,33		#,
	lla	a1,.LC3	#,
	lla	a0,.LC4	#,
	call	__assert_fail@plt	#
.L13:
# problem116.c:34:     for (int i = 0; i < rows; i++) free(grid[i]);
	sw	zero,-312(s0)	#, i
# problem116.c:34:     for (int i = 0; i < rows; i++) free(grid[i]);
	j	.L14		#
.L15:
# problem116.c:34:     for (int i = 0; i < rows; i++) free(grid[i]);
	lw	a5,-312(s0)		# _18, i
	slli	a5,a5,3	#, _19, _18
	ld	a4,-248(s0)		# tmp223, grid
	add	a5,a4,a5	# _19, _20, tmp223
# problem116.c:34:     for (int i = 0; i < rows; i++) free(grid[i]);
	ld	a5,0(a5)		# _21, *_20
	mv	a0,a5	#, _21
	call	free@plt	#
# problem116.c:34:     for (int i = 0; i < rows; i++) free(grid[i]);
	lw	a5,-312(s0)		# tmp226, i
	addiw	a5,a5,1	#, tmp224, tmp225
	sw	a5,-312(s0)	# tmp224, i
.L14:
# problem116.c:34:     for (int i = 0; i < rows; i++) free(grid[i]);
	lw	a5,-312(s0)		# tmp228, i
	mv	a4,a5	# tmp227, tmp228
	lw	a5,-260(s0)		# tmp230, rows
	sext.w	a4,a4	# tmp231, tmp227
	sext.w	a5,a5	# tmp232, tmp229
	blt	a4,a5,.L15	#, tmp231, tmp232,
# problem116.c:35:     free(grid);
	ld	a0,-248(s0)		#, grid
	call	free@plt	#
# problem116.c:38:     rows = 4; cols = 4; capacity = 2;
	li	a5,4		# tmp233,
	sw	a5,-260(s0)	# tmp233, rows
# problem116.c:38:     rows = 4; cols = 4; capacity = 2;
	li	a5,4		# tmp234,
	sw	a5,-256(s0)	# tmp234, cols
# problem116.c:38:     rows = 4; cols = 4; capacity = 2;
	li	a5,2		# tmp235,
	sw	a5,-252(s0)	# tmp235, capacity
# problem116.c:39:     grid = (int **)malloc(rows * sizeof(int *));
	lw	a5,-260(s0)		# _22, rows
	slli	a5,a5,3	#, _23, _22
	mv	a0,a5	#, _23
	call	malloc@plt	#
	mv	a5,a0	# tmp236,
	sd	a5,-248(s0)	# tmp236, grid
# problem116.c:40:     int grid2_data[4][4] = {{0,0,1,1}, {0,0,0,0}, {1,1,1,1}, {0,1,1,1}};
	lla	a5,.LC1	# tmp237,
	ld	a7,0(a5)		# tmp238,
	ld	a6,8(a5)		# tmp239,
	ld	a0,16(a5)		# tmp240,
	ld	a1,24(a5)		# tmp241,
	ld	a2,32(a5)		# tmp242,
	ld	a3,40(a5)		# tmp243,
	ld	a4,48(a5)		# tmp244,
	ld	a5,56(a5)		# tmp245,
	sd	a7,-104(s0)	# tmp238, grid2_data
	sd	a6,-96(s0)	# tmp239, grid2_data
	sd	a0,-88(s0)	# tmp240, grid2_data
	sd	a1,-80(s0)	# tmp241, grid2_data
	sd	a2,-72(s0)	# tmp242, grid2_data
	sd	a3,-64(s0)	# tmp243, grid2_data
	sd	a4,-56(s0)	# tmp244, grid2_data
	sd	a5,-48(s0)	# tmp245, grid2_data
# problem116.c:41:     for (int i = 0; i < rows; i++) {
	sw	zero,-308(s0)	#, i
# problem116.c:41:     for (int i = 0; i < rows; i++) {
	j	.L16		#
.L19:
# problem116.c:42:         grid[i] = (int *)malloc(cols * sizeof(int));
	lw	a5,-256(s0)		# _24, cols
	slli	a3,a5,2	#, _25, _24
# problem116.c:42:         grid[i] = (int *)malloc(cols * sizeof(int));
	lw	a5,-308(s0)		# _26, i
	slli	a5,a5,3	#, _27, _26
	ld	a4,-248(s0)		# tmp246, grid
	add	s1,a4,a5	# _27, _28, tmp246
# problem116.c:42:         grid[i] = (int *)malloc(cols * sizeof(int));
	mv	a0,a3	#, _25
	call	malloc@plt	#
	mv	a5,a0	# tmp247,
# problem116.c:42:         grid[i] = (int *)malloc(cols * sizeof(int));
	sd	a5,0(s1)	# _29, *_28
# problem116.c:43:         for (int j = 0; j < cols; j++) {
	sw	zero,-304(s0)	#, j
# problem116.c:43:         for (int j = 0; j < cols; j++) {
	j	.L17		#
.L18:
# problem116.c:44:             grid[i][j] = grid2_data[i][j];
	lw	a5,-308(s0)		# _30, i
	slli	a5,a5,3	#, _31, _30
	ld	a4,-248(s0)		# tmp248, grid
	add	a5,a4,a5	# _31, _32, tmp248
	ld	a4,0(a5)		# _33, *_32
# problem116.c:44:             grid[i][j] = grid2_data[i][j];
	lw	a5,-304(s0)		# _34, j
	slli	a5,a5,2	#, _35, _34
	add	a4,a4,a5	# _35, _36, _33
# problem116.c:44:             grid[i][j] = grid2_data[i][j];
	lw	a5,-304(s0)		# tmp249, j
	lw	a3,-308(s0)		# tmp250, i
	slli	a3,a3,2	#, tmp251, tmp250
	add	a5,a3,a5	# tmp249, tmp252, tmp251
	slli	a5,a5,2	#, tmp253, tmp252
	addi	a5,a5,-32	#, tmp443, tmp253
	add	a5,a5,s0	#, tmp253, tmp443
	lw	a5,-72(a5)		# _37, grid2_data[i_109][j_110]
# problem116.c:44:             grid[i][j] = grid2_data[i][j];
	sw	a5,0(a4)	# _37, *_36
# problem116.c:43:         for (int j = 0; j < cols; j++) {
	lw	a5,-304(s0)		# tmp256, j
	addiw	a5,a5,1	#, tmp254, tmp255
	sw	a5,-304(s0)	# tmp254, j
.L17:
# problem116.c:43:         for (int j = 0; j < cols; j++) {
	lw	a5,-304(s0)		# tmp258, j
	mv	a4,a5	# tmp257, tmp258
	lw	a5,-256(s0)		# tmp260, cols
	sext.w	a4,a4	# tmp261, tmp257
	sext.w	a5,a5	# tmp262, tmp259
	blt	a4,a5,.L18	#, tmp261, tmp262,
# problem116.c:41:     for (int i = 0; i < rows; i++) {
	lw	a5,-308(s0)		# tmp265, i
	addiw	a5,a5,1	#, tmp263, tmp264
	sw	a5,-308(s0)	# tmp263, i
.L16:
# problem116.c:41:     for (int i = 0; i < rows; i++) {
	lw	a5,-308(s0)		# tmp267, i
	mv	a4,a5	# tmp266, tmp267
	lw	a5,-260(s0)		# tmp269, rows
	sext.w	a4,a4	# tmp270, tmp266
	sext.w	a5,a5	# tmp271, tmp268
	blt	a4,a5,.L19	#, tmp270, tmp271,
# problem116.c:47:     assert(func0(grid, rows, cols, capacity) == 5);
	lw	a3,-252(s0)		# tmp272, capacity
	lw	a4,-256(s0)		# tmp273, cols
	lw	a5,-260(s0)		# tmp274, rows
	mv	a2,a4	#, tmp273
	mv	a1,a5	#, tmp274
	ld	a0,-248(s0)		#, grid
	call	func0		#
	mv	a5,a0	# tmp275,
	mv	a4,a5	# tmp276, _38
	li	a5,5		# tmp277,
	beq	a4,a5,.L20	#, tmp276, tmp277,
# problem116.c:47:     assert(func0(grid, rows, cols, capacity) == 5);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,47		#,
	lla	a1,.LC3	#,
	lla	a0,.LC5	#,
	call	__assert_fail@plt	#
.L20:
# problem116.c:48:     for (int i = 0; i < rows; i++) free(grid[i]);
	sw	zero,-300(s0)	#, i
# problem116.c:48:     for (int i = 0; i < rows; i++) free(grid[i]);
	j	.L21		#
.L22:
# problem116.c:48:     for (int i = 0; i < rows; i++) free(grid[i]);
	lw	a5,-300(s0)		# _39, i
	slli	a5,a5,3	#, _40, _39
	ld	a4,-248(s0)		# tmp278, grid
	add	a5,a4,a5	# _40, _41, tmp278
# problem116.c:48:     for (int i = 0; i < rows; i++) free(grid[i]);
	ld	a5,0(a5)		# _42, *_41
	mv	a0,a5	#, _42
	call	free@plt	#
# problem116.c:48:     for (int i = 0; i < rows; i++) free(grid[i]);
	lw	a5,-300(s0)		# tmp281, i
	addiw	a5,a5,1	#, tmp279, tmp280
	sw	a5,-300(s0)	# tmp279, i
.L21:
# problem116.c:48:     for (int i = 0; i < rows; i++) free(grid[i]);
	lw	a5,-300(s0)		# tmp283, i
	mv	a4,a5	# tmp282, tmp283
	lw	a5,-260(s0)		# tmp285, rows
	sext.w	a4,a4	# tmp286, tmp282
	sext.w	a5,a5	# tmp287, tmp284
	blt	a4,a5,.L22	#, tmp286, tmp287,
# problem116.c:49:     free(grid);
	ld	a0,-248(s0)		#, grid
	call	free@plt	#
# problem116.c:52:     rows = 2; cols = 3; capacity = 5;
	li	a5,2		# tmp288,
	sw	a5,-260(s0)	# tmp288, rows
# problem116.c:52:     rows = 2; cols = 3; capacity = 5;
	li	a5,3		# tmp289,
	sw	a5,-256(s0)	# tmp289, cols
# problem116.c:52:     rows = 2; cols = 3; capacity = 5;
	li	a5,5		# tmp290,
	sw	a5,-252(s0)	# tmp290, capacity
# problem116.c:53:     grid = (int **)malloc(rows * sizeof(int *));
	lw	a5,-260(s0)		# _43, rows
	slli	a5,a5,3	#, _44, _43
	mv	a0,a5	#, _44
	call	malloc@plt	#
	mv	a5,a0	# tmp291,
	sd	a5,-248(s0)	# tmp291, grid
# problem116.c:54:     int grid3_data[2][3] = {{0,0,0}, {0,0,0}};
	sw	zero,-240(s0)	#, grid3_data[0][0]
	sw	zero,-236(s0)	#, grid3_data[0][1]
	sw	zero,-232(s0)	#, grid3_data[0][2]
	sw	zero,-228(s0)	#, grid3_data[1][0]
	sw	zero,-224(s0)	#, grid3_data[1][1]
	sw	zero,-220(s0)	#, grid3_data[1][2]
# problem116.c:55:     for (int i = 0; i < rows; i++) {
	sw	zero,-296(s0)	#, i
# problem116.c:55:     for (int i = 0; i < rows; i++) {
	j	.L23		#
.L26:
# problem116.c:56:         grid[i] = (int *)malloc(cols * sizeof(int));
	lw	a5,-256(s0)		# _45, cols
	slli	a3,a5,2	#, _46, _45
# problem116.c:56:         grid[i] = (int *)malloc(cols * sizeof(int));
	lw	a5,-296(s0)		# _47, i
	slli	a5,a5,3	#, _48, _47
	ld	a4,-248(s0)		# tmp292, grid
	add	s1,a4,a5	# _48, _49, tmp292
# problem116.c:56:         grid[i] = (int *)malloc(cols * sizeof(int));
	mv	a0,a3	#, _46
	call	malloc@plt	#
	mv	a5,a0	# tmp293,
# problem116.c:56:         grid[i] = (int *)malloc(cols * sizeof(int));
	sd	a5,0(s1)	# _50, *_49
# problem116.c:57:         for (int j = 0; j < cols; j++) {
	sw	zero,-292(s0)	#, j
# problem116.c:57:         for (int j = 0; j < cols; j++) {
	j	.L24		#
.L25:
# problem116.c:58:             grid[i][j] = grid3_data[i][j];
	lw	a5,-296(s0)		# _51, i
	slli	a5,a5,3	#, _52, _51
	ld	a4,-248(s0)		# tmp294, grid
	add	a5,a4,a5	# _52, _53, tmp294
	ld	a4,0(a5)		# _54, *_53
# problem116.c:58:             grid[i][j] = grid3_data[i][j];
	lw	a5,-292(s0)		# _55, j
	slli	a5,a5,2	#, _56, _55
	add	a3,a4,a5	# _56, _57, _54
# problem116.c:58:             grid[i][j] = grid3_data[i][j];
	lw	a2,-292(s0)		# tmp295, j
	lw	a4,-296(s0)		# tmp296, i
	mv	a5,a4	# tmp297, tmp296
	slli	a5,a5,1	#, tmp298, tmp297
	add	a5,a5,a4	# tmp296, tmp297, tmp297
	add	a5,a5,a2	# tmp295, tmp299, tmp297
	slli	a5,a5,2	#, tmp300, tmp299
	addi	a5,a5,-32	#, tmp444, tmp300
	add	a5,a5,s0	#, tmp300, tmp444
	lw	a5,-208(a5)		# _58, grid3_data[i_112][j_113]
# problem116.c:58:             grid[i][j] = grid3_data[i][j];
	sw	a5,0(a3)	# _58, *_57
# problem116.c:57:         for (int j = 0; j < cols; j++) {
	lw	a5,-292(s0)		# tmp303, j
	addiw	a5,a5,1	#, tmp301, tmp302
	sw	a5,-292(s0)	# tmp301, j
.L24:
# problem116.c:57:         for (int j = 0; j < cols; j++) {
	lw	a5,-292(s0)		# tmp305, j
	mv	a4,a5	# tmp304, tmp305
	lw	a5,-256(s0)		# tmp307, cols
	sext.w	a4,a4	# tmp308, tmp304
	sext.w	a5,a5	# tmp309, tmp306
	blt	a4,a5,.L25	#, tmp308, tmp309,
# problem116.c:55:     for (int i = 0; i < rows; i++) {
	lw	a5,-296(s0)		# tmp312, i
	addiw	a5,a5,1	#, tmp310, tmp311
	sw	a5,-296(s0)	# tmp310, i
.L23:
# problem116.c:55:     for (int i = 0; i < rows; i++) {
	lw	a5,-296(s0)		# tmp314, i
	mv	a4,a5	# tmp313, tmp314
	lw	a5,-260(s0)		# tmp316, rows
	sext.w	a4,a4	# tmp317, tmp313
	sext.w	a5,a5	# tmp318, tmp315
	blt	a4,a5,.L26	#, tmp317, tmp318,
# problem116.c:61:     assert(func0(grid, rows, cols, capacity) == 0);
	lw	a3,-252(s0)		# tmp319, capacity
	lw	a4,-256(s0)		# tmp320, cols
	lw	a5,-260(s0)		# tmp321, rows
	mv	a2,a4	#, tmp320
	mv	a1,a5	#, tmp321
	ld	a0,-248(s0)		#, grid
	call	func0		#
	mv	a5,a0	# tmp322,
	beq	a5,zero,.L27	#, _59,,
# problem116.c:61:     assert(func0(grid, rows, cols, capacity) == 0);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,61		#,
	lla	a1,.LC3	#,
	lla	a0,.LC6	#,
	call	__assert_fail@plt	#
.L27:
# problem116.c:62:     for (int i = 0; i < rows; i++) free(grid[i]);
	sw	zero,-288(s0)	#, i
# problem116.c:62:     for (int i = 0; i < rows; i++) free(grid[i]);
	j	.L28		#
.L29:
# problem116.c:62:     for (int i = 0; i < rows; i++) free(grid[i]);
	lw	a5,-288(s0)		# _60, i
	slli	a5,a5,3	#, _61, _60
	ld	a4,-248(s0)		# tmp323, grid
	add	a5,a4,a5	# _61, _62, tmp323
# problem116.c:62:     for (int i = 0; i < rows; i++) free(grid[i]);
	ld	a5,0(a5)		# _63, *_62
	mv	a0,a5	#, _63
	call	free@plt	#
# problem116.c:62:     for (int i = 0; i < rows; i++) free(grid[i]);
	lw	a5,-288(s0)		# tmp326, i
	addiw	a5,a5,1	#, tmp324, tmp325
	sw	a5,-288(s0)	# tmp324, i
.L28:
# problem116.c:62:     for (int i = 0; i < rows; i++) free(grid[i]);
	lw	a5,-288(s0)		# tmp328, i
	mv	a4,a5	# tmp327, tmp328
	lw	a5,-260(s0)		# tmp330, rows
	sext.w	a4,a4	# tmp331, tmp327
	sext.w	a5,a5	# tmp332, tmp329
	blt	a4,a5,.L29	#, tmp331, tmp332,
# problem116.c:63:     free(grid);
	ld	a0,-248(s0)		#, grid
	call	free@plt	#
# problem116.c:66:     rows = 2; cols = 4; capacity = 2;
	li	a5,2		# tmp333,
	sw	a5,-260(s0)	# tmp333, rows
# problem116.c:66:     rows = 2; cols = 4; capacity = 2;
	li	a5,4		# tmp334,
	sw	a5,-256(s0)	# tmp334, cols
# problem116.c:66:     rows = 2; cols = 4; capacity = 2;
	li	a5,2		# tmp335,
	sw	a5,-252(s0)	# tmp335, capacity
# problem116.c:67:     grid = (int **)malloc(rows * sizeof(int *));
	lw	a5,-260(s0)		# _64, rows
	slli	a5,a5,3	#, _65, _64
	mv	a0,a5	#, _65
	call	malloc@plt	#
	mv	a5,a0	# tmp336,
	sd	a5,-248(s0)	# tmp336, grid
# problem116.c:68:     int grid4_data[2][4] = {{1,1,1,1}, {1,1,1,1}};
	lla	a5,.LC2	# tmp337,
	ld	a2,0(a5)		# tmp338,
	ld	a3,8(a5)		# tmp339,
	ld	a4,16(a5)		# tmp340,
	ld	a5,24(a5)		# tmp341,
	sd	a2,-216(s0)	# tmp338, grid4_data
	sd	a3,-208(s0)	# tmp339, grid4_data
	sd	a4,-200(s0)	# tmp340, grid4_data
	sd	a5,-192(s0)	# tmp341, grid4_data
# problem116.c:69:     for (int i = 0; i < rows; i++) {
	sw	zero,-284(s0)	#, i
# problem116.c:69:     for (int i = 0; i < rows; i++) {
	j	.L30		#
.L33:
# problem116.c:70:         grid[i] = (int *)malloc(cols * sizeof(int));
	lw	a5,-256(s0)		# _66, cols
	slli	a3,a5,2	#, _67, _66
# problem116.c:70:         grid[i] = (int *)malloc(cols * sizeof(int));
	lw	a5,-284(s0)		# _68, i
	slli	a5,a5,3	#, _69, _68
	ld	a4,-248(s0)		# tmp342, grid
	add	s1,a4,a5	# _69, _70, tmp342
# problem116.c:70:         grid[i] = (int *)malloc(cols * sizeof(int));
	mv	a0,a3	#, _67
	call	malloc@plt	#
	mv	a5,a0	# tmp343,
# problem116.c:70:         grid[i] = (int *)malloc(cols * sizeof(int));
	sd	a5,0(s1)	# _71, *_70
# problem116.c:71:         for (int j = 0; j < cols; j++) {
	sw	zero,-280(s0)	#, j
# problem116.c:71:         for (int j = 0; j < cols; j++) {
	j	.L31		#
.L32:
# problem116.c:72:             grid[i][j] = grid4_data[i][j];
	lw	a5,-284(s0)		# _72, i
	slli	a5,a5,3	#, _73, _72
	ld	a4,-248(s0)		# tmp344, grid
	add	a5,a4,a5	# _73, _74, tmp344
	ld	a4,0(a5)		# _75, *_74
# problem116.c:72:             grid[i][j] = grid4_data[i][j];
	lw	a5,-280(s0)		# _76, j
	slli	a5,a5,2	#, _77, _76
	add	a4,a4,a5	# _77, _78, _75
# problem116.c:72:             grid[i][j] = grid4_data[i][j];
	lw	a5,-280(s0)		# tmp345, j
	lw	a3,-284(s0)		# tmp346, i
	slli	a3,a3,2	#, tmp347, tmp346
	add	a5,a3,a5	# tmp345, tmp348, tmp347
	slli	a5,a5,2	#, tmp349, tmp348
	addi	a5,a5,-32	#, tmp445, tmp349
	add	a5,a5,s0	#, tmp349, tmp445
	lw	a5,-184(a5)		# _79, grid4_data[i_115][j_116]
# problem116.c:72:             grid[i][j] = grid4_data[i][j];
	sw	a5,0(a4)	# _79, *_78
# problem116.c:71:         for (int j = 0; j < cols; j++) {
	lw	a5,-280(s0)		# tmp352, j
	addiw	a5,a5,1	#, tmp350, tmp351
	sw	a5,-280(s0)	# tmp350, j
.L31:
# problem116.c:71:         for (int j = 0; j < cols; j++) {
	lw	a5,-280(s0)		# tmp354, j
	mv	a4,a5	# tmp353, tmp354
	lw	a5,-256(s0)		# tmp356, cols
	sext.w	a4,a4	# tmp357, tmp353
	sext.w	a5,a5	# tmp358, tmp355
	blt	a4,a5,.L32	#, tmp357, tmp358,
# problem116.c:69:     for (int i = 0; i < rows; i++) {
	lw	a5,-284(s0)		# tmp361, i
	addiw	a5,a5,1	#, tmp359, tmp360
	sw	a5,-284(s0)	# tmp359, i
.L30:
# problem116.c:69:     for (int i = 0; i < rows; i++) {
	lw	a5,-284(s0)		# tmp363, i
	mv	a4,a5	# tmp362, tmp363
	lw	a5,-260(s0)		# tmp365, rows
	sext.w	a4,a4	# tmp366, tmp362
	sext.w	a5,a5	# tmp367, tmp364
	blt	a4,a5,.L33	#, tmp366, tmp367,
# problem116.c:75:     assert(func0(grid, rows, cols, capacity) == 4);
	lw	a3,-252(s0)		# tmp368, capacity
	lw	a4,-256(s0)		# tmp369, cols
	lw	a5,-260(s0)		# tmp370, rows
	mv	a2,a4	#, tmp369
	mv	a1,a5	#, tmp370
	ld	a0,-248(s0)		#, grid
	call	func0		#
	mv	a5,a0	# tmp371,
	mv	a4,a5	# tmp372, _80
	li	a5,4		# tmp373,
	beq	a4,a5,.L34	#, tmp372, tmp373,
# problem116.c:75:     assert(func0(grid, rows, cols, capacity) == 4);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,75		#,
	lla	a1,.LC3	#,
	lla	a0,.LC7	#,
	call	__assert_fail@plt	#
.L34:
# problem116.c:76:     for (int i = 0; i < rows; i++) free(grid[i]);
	sw	zero,-276(s0)	#, i
# problem116.c:76:     for (int i = 0; i < rows; i++) free(grid[i]);
	j	.L35		#
.L36:
# problem116.c:76:     for (int i = 0; i < rows; i++) free(grid[i]);
	lw	a5,-276(s0)		# _81, i
	slli	a5,a5,3	#, _82, _81
	ld	a4,-248(s0)		# tmp374, grid
	add	a5,a4,a5	# _82, _83, tmp374
# problem116.c:76:     for (int i = 0; i < rows; i++) free(grid[i]);
	ld	a5,0(a5)		# _84, *_83
	mv	a0,a5	#, _84
	call	free@plt	#
# problem116.c:76:     for (int i = 0; i < rows; i++) free(grid[i]);
	lw	a5,-276(s0)		# tmp377, i
	addiw	a5,a5,1	#, tmp375, tmp376
	sw	a5,-276(s0)	# tmp375, i
.L35:
# problem116.c:76:     for (int i = 0; i < rows; i++) free(grid[i]);
	lw	a5,-276(s0)		# tmp379, i
	mv	a4,a5	# tmp378, tmp379
	lw	a5,-260(s0)		# tmp381, rows
	sext.w	a4,a4	# tmp382, tmp378
	sext.w	a5,a5	# tmp383, tmp380
	blt	a4,a5,.L36	#, tmp382, tmp383,
# problem116.c:77:     free(grid);
	ld	a0,-248(s0)		#, grid
	call	free@plt	#
# problem116.c:80:     rows = 2; cols = 4; capacity = 9;
	li	a5,2		# tmp384,
	sw	a5,-260(s0)	# tmp384, rows
# problem116.c:80:     rows = 2; cols = 4; capacity = 9;
	li	a5,4		# tmp385,
	sw	a5,-256(s0)	# tmp385, cols
# problem116.c:80:     rows = 2; cols = 4; capacity = 9;
	li	a5,9		# tmp386,
	sw	a5,-252(s0)	# tmp386, capacity
# problem116.c:81:     grid = (int **)malloc(rows * sizeof(int *));
	lw	a5,-260(s0)		# _85, rows
	slli	a5,a5,3	#, _86, _85
	mv	a0,a5	#, _86
	call	malloc@plt	#
	mv	a5,a0	# tmp387,
	sd	a5,-248(s0)	# tmp387, grid
# problem116.c:82:     int grid5_data[2][4] = {{1,1,1,1}, {1,1,1,1}};
	lla	a5,.LC2	# tmp388,
	ld	a2,0(a5)		# tmp389,
	ld	a3,8(a5)		# tmp390,
	ld	a4,16(a5)		# tmp391,
	ld	a5,24(a5)		# tmp392,
	sd	a2,-184(s0)	# tmp389, grid5_data
	sd	a3,-176(s0)	# tmp390, grid5_data
	sd	a4,-168(s0)	# tmp391, grid5_data
	sd	a5,-160(s0)	# tmp392, grid5_data
# problem116.c:83:     for (int i = 0; i < rows; i++) {
	sw	zero,-272(s0)	#, i
# problem116.c:83:     for (int i = 0; i < rows; i++) {
	j	.L37		#
.L40:
# problem116.c:84:         grid[i] = (int *)malloc(cols * sizeof(int));
	lw	a5,-256(s0)		# _87, cols
	slli	a3,a5,2	#, _88, _87
# problem116.c:84:         grid[i] = (int *)malloc(cols * sizeof(int));
	lw	a5,-272(s0)		# _89, i
	slli	a5,a5,3	#, _90, _89
	ld	a4,-248(s0)		# tmp393, grid
	add	s1,a4,a5	# _90, _91, tmp393
# problem116.c:84:         grid[i] = (int *)malloc(cols * sizeof(int));
	mv	a0,a3	#, _88
	call	malloc@plt	#
	mv	a5,a0	# tmp394,
# problem116.c:84:         grid[i] = (int *)malloc(cols * sizeof(int));
	sd	a5,0(s1)	# _92, *_91
# problem116.c:85:         for (int j = 0; j < cols; j++) {
	sw	zero,-268(s0)	#, j
# problem116.c:85:         for (int j = 0; j < cols; j++) {
	j	.L38		#
.L39:
# problem116.c:86:             grid[i][j] = grid5_data[i][j];
	lw	a5,-272(s0)		# _93, i
	slli	a5,a5,3	#, _94, _93
	ld	a4,-248(s0)		# tmp395, grid
	add	a5,a4,a5	# _94, _95, tmp395
	ld	a4,0(a5)		# _96, *_95
# problem116.c:86:             grid[i][j] = grid5_data[i][j];
	lw	a5,-268(s0)		# _97, j
	slli	a5,a5,2	#, _98, _97
	add	a4,a4,a5	# _98, _99, _96
# problem116.c:86:             grid[i][j] = grid5_data[i][j];
	lw	a5,-268(s0)		# tmp396, j
	lw	a3,-272(s0)		# tmp397, i
	slli	a3,a3,2	#, tmp398, tmp397
	add	a5,a3,a5	# tmp396, tmp399, tmp398
	slli	a5,a5,2	#, tmp400, tmp399
	addi	a5,a5,-32	#, tmp446, tmp400
	add	a5,a5,s0	#, tmp400, tmp446
	lw	a5,-152(a5)		# _100, grid5_data[i_118][j_119]
# problem116.c:86:             grid[i][j] = grid5_data[i][j];
	sw	a5,0(a4)	# _100, *_99
# problem116.c:85:         for (int j = 0; j < cols; j++) {
	lw	a5,-268(s0)		# tmp403, j
	addiw	a5,a5,1	#, tmp401, tmp402
	sw	a5,-268(s0)	# tmp401, j
.L38:
# problem116.c:85:         for (int j = 0; j < cols; j++) {
	lw	a5,-268(s0)		# tmp405, j
	mv	a4,a5	# tmp404, tmp405
	lw	a5,-256(s0)		# tmp407, cols
	sext.w	a4,a4	# tmp408, tmp404
	sext.w	a5,a5	# tmp409, tmp406
	blt	a4,a5,.L39	#, tmp408, tmp409,
# problem116.c:83:     for (int i = 0; i < rows; i++) {
	lw	a5,-272(s0)		# tmp412, i
	addiw	a5,a5,1	#, tmp410, tmp411
	sw	a5,-272(s0)	# tmp410, i
.L37:
# problem116.c:83:     for (int i = 0; i < rows; i++) {
	lw	a5,-272(s0)		# tmp414, i
	mv	a4,a5	# tmp413, tmp414
	lw	a5,-260(s0)		# tmp416, rows
	sext.w	a4,a4	# tmp417, tmp413
	sext.w	a5,a5	# tmp418, tmp415
	blt	a4,a5,.L40	#, tmp417, tmp418,
# problem116.c:89:     assert(func0(grid, rows, cols, capacity) == 2);
	lw	a3,-252(s0)		# tmp419, capacity
	lw	a4,-256(s0)		# tmp420, cols
	lw	a5,-260(s0)		# tmp421, rows
	mv	a2,a4	#, tmp420
	mv	a1,a5	#, tmp421
	ld	a0,-248(s0)		#, grid
	call	func0		#
	mv	a5,a0	# tmp422,
	mv	a4,a5	# tmp423, _101
	li	a5,2		# tmp424,
	beq	a4,a5,.L41	#, tmp423, tmp424,
# problem116.c:89:     assert(func0(grid, rows, cols, capacity) == 2);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,89		#,
	lla	a1,.LC3	#,
	lla	a0,.LC8	#,
	call	__assert_fail@plt	#
.L41:
# problem116.c:90: for (int i = 0; i < rows; i++) free(grid[i]);
	sw	zero,-264(s0)	#, i
# problem116.c:90: for (int i = 0; i < rows; i++) free(grid[i]);
	j	.L42		#
.L43:
# problem116.c:90: for (int i = 0; i < rows; i++) free(grid[i]);
	lw	a5,-264(s0)		# _102, i
	slli	a5,a5,3	#, _103, _102
	ld	a4,-248(s0)		# tmp425, grid
	add	a5,a4,a5	# _103, _104, tmp425
# problem116.c:90: for (int i = 0; i < rows; i++) free(grid[i]);
	ld	a5,0(a5)		# _105, *_104
	mv	a0,a5	#, _105
	call	free@plt	#
# problem116.c:90: for (int i = 0; i < rows; i++) free(grid[i]);
	lw	a5,-264(s0)		# tmp428, i
	addiw	a5,a5,1	#, tmp426, tmp427
	sw	a5,-264(s0)	# tmp426, i
.L42:
# problem116.c:90: for (int i = 0; i < rows; i++) free(grid[i]);
	lw	a5,-264(s0)		# tmp430, i
	mv	a4,a5	# tmp429, tmp430
	lw	a5,-260(s0)		# tmp432, rows
	sext.w	a4,a4	# tmp433, tmp429
	sext.w	a5,a5	# tmp434, tmp431
	blt	a4,a5,.L43	#, tmp433, tmp434,
# problem116.c:91:     free(grid);
	ld	a0,-248(s0)		#, grid
	call	free@plt	#
# problem116.c:93:     printf("All tests passed!\n");
	lla	a0,.LC9	#,
	call	puts@plt	#
# problem116.c:94:     return 0;
	li	a5,0		# _198,
# problem116.c:95: }
	mv	a4,a5	# <retval>, _198
	la	a5,__stack_chk_guard		# tmp436,
	ld	a3, -40(s0)	# tmp439, D.2560
	ld	a5, 0(a5)	# tmp437, __stack_chk_guard
	xor	a5, a3, a5	# tmp437, tmp439
	li	a3, 0	# tmp439
	beq	a5,zero,.L45	#, tmp437,,
	call	__stack_chk_fail@plt	#
.L45:
	mv	a0,a4	#, <retval>
	ld	ra,312(sp)		#,
	ld	s0,304(sp)		#,
	ld	s1,296(sp)		#,
	addi	sp,sp,320	#,,
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
