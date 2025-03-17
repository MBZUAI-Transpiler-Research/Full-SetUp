	.file	"problem116.c"
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
.LFB0:
	.cfi_startproc
	addi	sp,sp,-64	#,,
	.cfi_def_cfa_offset 64
	sd	s0,56(sp)	#,
	.cfi_offset 8, -8
	addi	s0,sp,64	#,,
	.cfi_def_cfa 8, 0
	sd	a0,-40(s0)	# grid, grid
	mv	a5,a1	# tmp147, rows
	mv	a4,a3	# tmp151, capacity
	sw	a5,-44(s0)	# tmp148, rows
	mv	a5,a2	# tmp150, tmp149
	sw	a5,-48(s0)	# tmp150, cols
	mv	a5,a4	# tmp152, tmp151
	sw	a5,-52(s0)	# tmp152, capacity
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
	ld	a4,-40(s0)		# tmp153, grid
	add	a5,a4,a5	# _2, _3, tmp153
	ld	a4,0(a5)		# _4, *_3
# problem116.c:7:             sum += grid[i][j];
	lw	a5,-20(s0)		# _5, j
	slli	a5,a5,2	#, _6, _5
	add	a5,a4,a5	# _6, _7, _4
	lw	a5,0(a5)		# _8, *_7
# problem116.c:7:             sum += grid[i][j];
	lw	a4,-24(s0)		# tmp156, sum
	addw	a5,a4,a5	# _8, tmp154, tmp155
	sw	a5,-24(s0)	# tmp154, sum
# problem116.c:6:         for (int j = 0; j < cols; j++)
	lw	a5,-20(s0)		# tmp159, j
	addiw	a5,a5,1	#, tmp157, tmp158
	sw	a5,-20(s0)	# tmp157, j
.L3:
# problem116.c:6:         for (int j = 0; j < cols; j++)
	lw	a5,-20(s0)		# tmp161, j
	mv	a4,a5	# tmp160, tmp161
	lw	a5,-48(s0)		# tmp163, cols
	sext.w	a4,a4	# tmp164, tmp160
	sext.w	a5,a5	# tmp165, tmp162
	blt	a4,a5,.L4	#, tmp164, tmp165,
# problem116.c:8:         if (sum > 0) out += (sum + capacity - 1) / capacity;
	lw	a5,-24(s0)		# tmp167, sum
	sext.w	a5,a5	# tmp168, tmp166
	ble	a5,zero,.L5	#, tmp168,,
# problem116.c:8:         if (sum > 0) out += (sum + capacity - 1) / capacity;
	lw	a5,-24(s0)		# tmp171, sum
	mv	a4,a5	# tmp170, tmp171
	lw	a5,-52(s0)		# tmp173, capacity
	addw	a5,a4,a5	# tmp172, tmp169, tmp170
	sext.w	a5,a5	# _9, tmp169
# problem116.c:8:         if (sum > 0) out += (sum + capacity - 1) / capacity;
	addiw	a5,a5,-1	#, tmp174, _9
	sext.w	a5,a5	# _10, tmp174
# problem116.c:8:         if (sum > 0) out += (sum + capacity - 1) / capacity;
	lw	a4,-52(s0)		# tmp178, capacity
	divw	a5,a5,a4	# tmp177, tmp176, _10
	sext.w	a5,a5	# _11, tmp176
# problem116.c:8:         if (sum > 0) out += (sum + capacity - 1) / capacity;
	lw	a4,-32(s0)		# tmp181, out
	addw	a5,a4,a5	# _11, tmp179, tmp180
	sw	a5,-32(s0)	# tmp179, out
.L5:
# problem116.c:4:     for (int i = 0; i < rows; i++) {
	lw	a5,-28(s0)		# tmp184, i
	addiw	a5,a5,1	#, tmp182, tmp183
	sw	a5,-28(s0)	# tmp182, i
.L2:
# problem116.c:4:     for (int i = 0; i < rows; i++) {
	lw	a5,-28(s0)		# tmp186, i
	mv	a4,a5	# tmp185, tmp186
	lw	a5,-44(s0)		# tmp188, rows
	sext.w	a4,a4	# tmp189, tmp185
	sext.w	a5,a5	# tmp190, tmp187
	blt	a4,a5,.L6	#, tmp189, tmp190,
# problem116.c:10:     return out;
	lw	a5,-32(s0)		# _20, out
# problem116.c:11: }
	mv	a0,a5	#, <retval>
	ld	s0,56(sp)		#,
	.cfi_restore 8
	.cfi_def_cfa 2, 64
	addi	sp,sp,64	#,,
	.cfi_def_cfa_offset 0
	jr	ra		#
	.cfi_endproc
.LFE0:
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
.LFB7:
	.cfi_startproc
	addi	sp,sp,-320	#,,
	.cfi_def_cfa_offset 320
	sd	ra,312(sp)	#,
	sd	s0,304(sp)	#,
	sd	s1,296(sp)	#,
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	.cfi_offset 9, -24
	addi	s0,sp,320	#,,
	.cfi_def_cfa 8, 0
# problem116.c:19: int main() {
	la	a5,__stack_chk_guard		# tmp241,
	ld	a4, 0(a5)	# tmp500, __stack_chk_guard
	sd	a4, -40(s0)	# tmp500, D.3385
	li	a4, 0	# tmp500
# problem116.c:24:     rows = 3; cols = 4; capacity = 1;
	li	a5,3		# tmp242,
	sw	a5,-260(s0)	# tmp242, rows
# problem116.c:24:     rows = 3; cols = 4; capacity = 1;
	li	a5,4		# tmp243,
	sw	a5,-256(s0)	# tmp243, cols
# problem116.c:24:     rows = 3; cols = 4; capacity = 1;
	li	a5,1		# tmp244,
	sw	a5,-252(s0)	# tmp244, capacity
# problem116.c:25:     grid = (int **)malloc(rows * sizeof(int *));
	lw	a5,-260(s0)		# _1, rows
	slli	a5,a5,3	#, _2, _1
	mv	a0,a5	#, _2
	call	malloc@plt	#
	mv	a5,a0	# tmp245,
	sd	a5,-248(s0)	# tmp245, grid
# problem116.c:26:     int grid1_data[3][4] = {{0,0,1,0}, {0,1,0,0}, {1,1,1,1}};
	lla	a5,.LC0	# tmp246,
	ld	a0,0(a5)		# tmp247,
	ld	a1,8(a5)		# tmp248,
	ld	a2,16(a5)		# tmp249,
	ld	a3,24(a5)		# tmp250,
	ld	a4,32(a5)		# tmp251,
	ld	a5,40(a5)		# tmp252,
	sd	a0,-152(s0)	# tmp247, grid1_data
	sd	a1,-144(s0)	# tmp248, grid1_data
	sd	a2,-136(s0)	# tmp249, grid1_data
	sd	a3,-128(s0)	# tmp250, grid1_data
	sd	a4,-120(s0)	# tmp251, grid1_data
	sd	a5,-112(s0)	# tmp252, grid1_data
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
	ld	a4,-248(s0)		# tmp253, grid
	add	s1,a4,a5	# _6, _7, tmp253
# problem116.c:28:         grid[i] = (int *)malloc(cols * sizeof(int));
	mv	a0,a3	#, _4
	call	malloc@plt	#
	mv	a5,a0	# tmp254,
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
	ld	a4,-248(s0)		# tmp255, grid
	add	a5,a4,a5	# _10, _11, tmp255
	ld	a4,0(a5)		# _12, *_11
# problem116.c:30:             grid[i][j] = grid1_data[i][j];
	lw	a5,-316(s0)		# _13, j
	slli	a5,a5,2	#, _14, _13
	add	a4,a4,a5	# _14, _15, _12
# problem116.c:30:             grid[i][j] = grid1_data[i][j];
	lw	a5,-316(s0)		# tmp256, j
	lw	a3,-320(s0)		# tmp257, i
	slli	a3,a3,2	#, tmp258, tmp257
	add	a5,a3,a5	# tmp256, tmp259, tmp258
	slli	a5,a5,2	#, tmp260, tmp259
	addi	a5,a5,-32	#, tmp504, tmp260
	add	a5,a5,s0	#, tmp260, tmp504
	lw	a5,-120(a5)		# _16, grid1_data[i_106][j_107]
# problem116.c:30:             grid[i][j] = grid1_data[i][j];
	sw	a5,0(a4)	# _16, *_15
# problem116.c:29:         for (int j = 0; j < cols; j++) {
	lw	a5,-316(s0)		# tmp263, j
	addiw	a5,a5,1	#, tmp261, tmp262
	sw	a5,-316(s0)	# tmp261, j
.L10:
# problem116.c:29:         for (int j = 0; j < cols; j++) {
	lw	a5,-316(s0)		# tmp265, j
	mv	a4,a5	# tmp264, tmp265
	lw	a5,-256(s0)		# tmp267, cols
	sext.w	a4,a4	# tmp268, tmp264
	sext.w	a5,a5	# tmp269, tmp266
	blt	a4,a5,.L11	#, tmp268, tmp269,
# problem116.c:27:     for (int i = 0; i < rows; i++) {
	lw	a5,-320(s0)		# tmp272, i
	addiw	a5,a5,1	#, tmp270, tmp271
	sw	a5,-320(s0)	# tmp270, i
.L9:
# problem116.c:27:     for (int i = 0; i < rows; i++) {
	lw	a5,-320(s0)		# tmp274, i
	mv	a4,a5	# tmp273, tmp274
	lw	a5,-260(s0)		# tmp276, rows
	sext.w	a4,a4	# tmp277, tmp273
	sext.w	a5,a5	# tmp278, tmp275
	blt	a4,a5,.L12	#, tmp277, tmp278,
# problem116.c:33:     assert(func0(grid, rows, cols, capacity) == 6);
	lw	a3,-252(s0)		# tmp279, capacity
	lw	a4,-256(s0)		# tmp280, cols
	lw	a5,-260(s0)		# tmp281, rows
	mv	a2,a4	#, tmp280
	mv	a1,a5	#, tmp281
	ld	a0,-248(s0)		#, grid
	call	func0		#
	mv	a5,a0	# tmp282,
# problem116.c:33:     assert(func0(grid, rows, cols, capacity) == 6);
	mv	a4,a5	# tmp283, _17
	li	a5,6		# tmp284,
	beq	a4,a5,.L13	#, tmp283, tmp284,
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
	ld	a4,-248(s0)		# tmp285, grid
	add	a5,a4,a5	# _19, _20, tmp285
# problem116.c:34:     for (int i = 0; i < rows; i++) free(grid[i]);
	ld	a5,0(a5)		# _21, *_20
	mv	a0,a5	#, _21
	call	free@plt	#
# problem116.c:34:     for (int i = 0; i < rows; i++) free(grid[i]);
	lw	a5,-312(s0)		# tmp288, i
	addiw	a5,a5,1	#, tmp286, tmp287
	sw	a5,-312(s0)	# tmp286, i
.L14:
# problem116.c:34:     for (int i = 0; i < rows; i++) free(grid[i]);
	lw	a5,-312(s0)		# tmp290, i
	mv	a4,a5	# tmp289, tmp290
	lw	a5,-260(s0)		# tmp292, rows
	sext.w	a4,a4	# tmp293, tmp289
	sext.w	a5,a5	# tmp294, tmp291
	blt	a4,a5,.L15	#, tmp293, tmp294,
# problem116.c:35:     free(grid);
	ld	a0,-248(s0)		#, grid
	call	free@plt	#
# problem116.c:38:     rows = 4; cols = 4; capacity = 2;
	li	a5,4		# tmp295,
	sw	a5,-260(s0)	# tmp295, rows
# problem116.c:38:     rows = 4; cols = 4; capacity = 2;
	li	a5,4		# tmp296,
	sw	a5,-256(s0)	# tmp296, cols
# problem116.c:38:     rows = 4; cols = 4; capacity = 2;
	li	a5,2		# tmp297,
	sw	a5,-252(s0)	# tmp297, capacity
# problem116.c:39:     grid = (int **)malloc(rows * sizeof(int *));
	lw	a5,-260(s0)		# _22, rows
	slli	a5,a5,3	#, _23, _22
	mv	a0,a5	#, _23
	call	malloc@plt	#
	mv	a5,a0	# tmp298,
	sd	a5,-248(s0)	# tmp298, grid
# problem116.c:40:     int grid2_data[4][4] = {{0,0,1,1}, {0,0,0,0}, {1,1,1,1}, {0,1,1,1}};
	lla	a5,.LC1	# tmp299,
	ld	a7,0(a5)		# tmp300,
	ld	a6,8(a5)		# tmp301,
	ld	a0,16(a5)		# tmp302,
	ld	a1,24(a5)		# tmp303,
	ld	a2,32(a5)		# tmp304,
	ld	a3,40(a5)		# tmp305,
	ld	a4,48(a5)		# tmp306,
	ld	a5,56(a5)		# tmp307,
	sd	a7,-104(s0)	# tmp300, grid2_data
	sd	a6,-96(s0)	# tmp301, grid2_data
	sd	a0,-88(s0)	# tmp302, grid2_data
	sd	a1,-80(s0)	# tmp303, grid2_data
	sd	a2,-72(s0)	# tmp304, grid2_data
	sd	a3,-64(s0)	# tmp305, grid2_data
	sd	a4,-56(s0)	# tmp306, grid2_data
	sd	a5,-48(s0)	# tmp307, grid2_data
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
	ld	a4,-248(s0)		# tmp308, grid
	add	s1,a4,a5	# _27, _28, tmp308
# problem116.c:42:         grid[i] = (int *)malloc(cols * sizeof(int));
	mv	a0,a3	#, _25
	call	malloc@plt	#
	mv	a5,a0	# tmp309,
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
	ld	a4,-248(s0)		# tmp310, grid
	add	a5,a4,a5	# _31, _32, tmp310
	ld	a4,0(a5)		# _33, *_32
# problem116.c:44:             grid[i][j] = grid2_data[i][j];
	lw	a5,-304(s0)		# _34, j
	slli	a5,a5,2	#, _35, _34
	add	a4,a4,a5	# _35, _36, _33
# problem116.c:44:             grid[i][j] = grid2_data[i][j];
	lw	a5,-304(s0)		# tmp311, j
	lw	a3,-308(s0)		# tmp312, i
	slli	a3,a3,2	#, tmp313, tmp312
	add	a5,a3,a5	# tmp311, tmp314, tmp313
	slli	a5,a5,2	#, tmp315, tmp314
	addi	a5,a5,-32	#, tmp505, tmp315
	add	a5,a5,s0	#, tmp315, tmp505
	lw	a5,-72(a5)		# _37, grid2_data[i_109][j_110]
# problem116.c:44:             grid[i][j] = grid2_data[i][j];
	sw	a5,0(a4)	# _37, *_36
# problem116.c:43:         for (int j = 0; j < cols; j++) {
	lw	a5,-304(s0)		# tmp318, j
	addiw	a5,a5,1	#, tmp316, tmp317
	sw	a5,-304(s0)	# tmp316, j
.L17:
# problem116.c:43:         for (int j = 0; j < cols; j++) {
	lw	a5,-304(s0)		# tmp320, j
	mv	a4,a5	# tmp319, tmp320
	lw	a5,-256(s0)		# tmp322, cols
	sext.w	a4,a4	# tmp323, tmp319
	sext.w	a5,a5	# tmp324, tmp321
	blt	a4,a5,.L18	#, tmp323, tmp324,
# problem116.c:41:     for (int i = 0; i < rows; i++) {
	lw	a5,-308(s0)		# tmp327, i
	addiw	a5,a5,1	#, tmp325, tmp326
	sw	a5,-308(s0)	# tmp325, i
.L16:
# problem116.c:41:     for (int i = 0; i < rows; i++) {
	lw	a5,-308(s0)		# tmp329, i
	mv	a4,a5	# tmp328, tmp329
	lw	a5,-260(s0)		# tmp331, rows
	sext.w	a4,a4	# tmp332, tmp328
	sext.w	a5,a5	# tmp333, tmp330
	blt	a4,a5,.L19	#, tmp332, tmp333,
# problem116.c:47:     assert(func0(grid, rows, cols, capacity) == 5);
	lw	a3,-252(s0)		# tmp334, capacity
	lw	a4,-256(s0)		# tmp335, cols
	lw	a5,-260(s0)		# tmp336, rows
	mv	a2,a4	#, tmp335
	mv	a1,a5	#, tmp336
	ld	a0,-248(s0)		#, grid
	call	func0		#
	mv	a5,a0	# tmp337,
# problem116.c:47:     assert(func0(grid, rows, cols, capacity) == 5);
	mv	a4,a5	# tmp338, _38
	li	a5,5		# tmp339,
	beq	a4,a5,.L20	#, tmp338, tmp339,
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
	ld	a4,-248(s0)		# tmp340, grid
	add	a5,a4,a5	# _40, _41, tmp340
# problem116.c:48:     for (int i = 0; i < rows; i++) free(grid[i]);
	ld	a5,0(a5)		# _42, *_41
	mv	a0,a5	#, _42
	call	free@plt	#
# problem116.c:48:     for (int i = 0; i < rows; i++) free(grid[i]);
	lw	a5,-300(s0)		# tmp343, i
	addiw	a5,a5,1	#, tmp341, tmp342
	sw	a5,-300(s0)	# tmp341, i
.L21:
# problem116.c:48:     for (int i = 0; i < rows; i++) free(grid[i]);
	lw	a5,-300(s0)		# tmp345, i
	mv	a4,a5	# tmp344, tmp345
	lw	a5,-260(s0)		# tmp347, rows
	sext.w	a4,a4	# tmp348, tmp344
	sext.w	a5,a5	# tmp349, tmp346
	blt	a4,a5,.L22	#, tmp348, tmp349,
# problem116.c:49:     free(grid);
	ld	a0,-248(s0)		#, grid
	call	free@plt	#
# problem116.c:52:     rows = 2; cols = 3; capacity = 5;
	li	a5,2		# tmp350,
	sw	a5,-260(s0)	# tmp350, rows
# problem116.c:52:     rows = 2; cols = 3; capacity = 5;
	li	a5,3		# tmp351,
	sw	a5,-256(s0)	# tmp351, cols
# problem116.c:52:     rows = 2; cols = 3; capacity = 5;
	li	a5,5		# tmp352,
	sw	a5,-252(s0)	# tmp352, capacity
# problem116.c:53:     grid = (int **)malloc(rows * sizeof(int *));
	lw	a5,-260(s0)		# _43, rows
	slli	a5,a5,3	#, _44, _43
	mv	a0,a5	#, _44
	call	malloc@plt	#
	mv	a5,a0	# tmp353,
	sd	a5,-248(s0)	# tmp353, grid
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
	ld	a4,-248(s0)		# tmp354, grid
	add	s1,a4,a5	# _48, _49, tmp354
# problem116.c:56:         grid[i] = (int *)malloc(cols * sizeof(int));
	mv	a0,a3	#, _46
	call	malloc@plt	#
	mv	a5,a0	# tmp355,
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
	ld	a4,-248(s0)		# tmp356, grid
	add	a5,a4,a5	# _52, _53, tmp356
	ld	a4,0(a5)		# _54, *_53
# problem116.c:58:             grid[i][j] = grid3_data[i][j];
	lw	a5,-292(s0)		# _55, j
	slli	a5,a5,2	#, _56, _55
	add	a3,a4,a5	# _56, _57, _54
# problem116.c:58:             grid[i][j] = grid3_data[i][j];
	lw	a2,-292(s0)		# tmp357, j
	lw	a4,-296(s0)		# tmp358, i
	mv	a5,a4	# tmp359, tmp358
	slli	a5,a5,1	#, tmp360, tmp359
	add	a5,a5,a4	# tmp358, tmp359, tmp359
	add	a5,a5,a2	# tmp357, tmp361, tmp359
	slli	a5,a5,2	#, tmp362, tmp361
	addi	a5,a5,-32	#, tmp506, tmp362
	add	a5,a5,s0	#, tmp362, tmp506
	lw	a5,-208(a5)		# _58, grid3_data[i_112][j_113]
# problem116.c:58:             grid[i][j] = grid3_data[i][j];
	sw	a5,0(a3)	# _58, *_57
# problem116.c:57:         for (int j = 0; j < cols; j++) {
	lw	a5,-292(s0)		# tmp365, j
	addiw	a5,a5,1	#, tmp363, tmp364
	sw	a5,-292(s0)	# tmp363, j
.L24:
# problem116.c:57:         for (int j = 0; j < cols; j++) {
	lw	a5,-292(s0)		# tmp367, j
	mv	a4,a5	# tmp366, tmp367
	lw	a5,-256(s0)		# tmp369, cols
	sext.w	a4,a4	# tmp370, tmp366
	sext.w	a5,a5	# tmp371, tmp368
	blt	a4,a5,.L25	#, tmp370, tmp371,
# problem116.c:55:     for (int i = 0; i < rows; i++) {
	lw	a5,-296(s0)		# tmp374, i
	addiw	a5,a5,1	#, tmp372, tmp373
	sw	a5,-296(s0)	# tmp372, i
.L23:
# problem116.c:55:     for (int i = 0; i < rows; i++) {
	lw	a5,-296(s0)		# tmp376, i
	mv	a4,a5	# tmp375, tmp376
	lw	a5,-260(s0)		# tmp378, rows
	sext.w	a4,a4	# tmp379, tmp375
	sext.w	a5,a5	# tmp380, tmp377
	blt	a4,a5,.L26	#, tmp379, tmp380,
# problem116.c:61:     assert(func0(grid, rows, cols, capacity) == 0);
	lw	a3,-252(s0)		# tmp381, capacity
	lw	a4,-256(s0)		# tmp382, cols
	lw	a5,-260(s0)		# tmp383, rows
	mv	a2,a4	#, tmp382
	mv	a1,a5	#, tmp383
	ld	a0,-248(s0)		#, grid
	call	func0		#
	mv	a5,a0	# tmp384,
# problem116.c:61:     assert(func0(grid, rows, cols, capacity) == 0);
	beq	a5,zero,.L27	#, _59,,
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
	ld	a4,-248(s0)		# tmp385, grid
	add	a5,a4,a5	# _61, _62, tmp385
# problem116.c:62:     for (int i = 0; i < rows; i++) free(grid[i]);
	ld	a5,0(a5)		# _63, *_62
	mv	a0,a5	#, _63
	call	free@plt	#
# problem116.c:62:     for (int i = 0; i < rows; i++) free(grid[i]);
	lw	a5,-288(s0)		# tmp388, i
	addiw	a5,a5,1	#, tmp386, tmp387
	sw	a5,-288(s0)	# tmp386, i
.L28:
# problem116.c:62:     for (int i = 0; i < rows; i++) free(grid[i]);
	lw	a5,-288(s0)		# tmp390, i
	mv	a4,a5	# tmp389, tmp390
	lw	a5,-260(s0)		# tmp392, rows
	sext.w	a4,a4	# tmp393, tmp389
	sext.w	a5,a5	# tmp394, tmp391
	blt	a4,a5,.L29	#, tmp393, tmp394,
# problem116.c:63:     free(grid);
	ld	a0,-248(s0)		#, grid
	call	free@plt	#
# problem116.c:66:     rows = 2; cols = 4; capacity = 2;
	li	a5,2		# tmp395,
	sw	a5,-260(s0)	# tmp395, rows
# problem116.c:66:     rows = 2; cols = 4; capacity = 2;
	li	a5,4		# tmp396,
	sw	a5,-256(s0)	# tmp396, cols
# problem116.c:66:     rows = 2; cols = 4; capacity = 2;
	li	a5,2		# tmp397,
	sw	a5,-252(s0)	# tmp397, capacity
# problem116.c:67:     grid = (int **)malloc(rows * sizeof(int *));
	lw	a5,-260(s0)		# _64, rows
	slli	a5,a5,3	#, _65, _64
	mv	a0,a5	#, _65
	call	malloc@plt	#
	mv	a5,a0	# tmp398,
	sd	a5,-248(s0)	# tmp398, grid
# problem116.c:68:     int grid4_data[2][4] = {{1,1,1,1}, {1,1,1,1}};
	lla	a5,.LC2	# tmp399,
	ld	a2,0(a5)		# tmp400,
	ld	a3,8(a5)		# tmp401,
	ld	a4,16(a5)		# tmp402,
	ld	a5,24(a5)		# tmp403,
	sd	a2,-216(s0)	# tmp400, grid4_data
	sd	a3,-208(s0)	# tmp401, grid4_data
	sd	a4,-200(s0)	# tmp402, grid4_data
	sd	a5,-192(s0)	# tmp403, grid4_data
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
	ld	a4,-248(s0)		# tmp404, grid
	add	s1,a4,a5	# _69, _70, tmp404
# problem116.c:70:         grid[i] = (int *)malloc(cols * sizeof(int));
	mv	a0,a3	#, _67
	call	malloc@plt	#
	mv	a5,a0	# tmp405,
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
	ld	a4,-248(s0)		# tmp406, grid
	add	a5,a4,a5	# _73, _74, tmp406
	ld	a4,0(a5)		# _75, *_74
# problem116.c:72:             grid[i][j] = grid4_data[i][j];
	lw	a5,-280(s0)		# _76, j
	slli	a5,a5,2	#, _77, _76
	add	a4,a4,a5	# _77, _78, _75
# problem116.c:72:             grid[i][j] = grid4_data[i][j];
	lw	a5,-280(s0)		# tmp407, j
	lw	a3,-284(s0)		# tmp408, i
	slli	a3,a3,2	#, tmp409, tmp408
	add	a5,a3,a5	# tmp407, tmp410, tmp409
	slli	a5,a5,2	#, tmp411, tmp410
	addi	a5,a5,-32	#, tmp507, tmp411
	add	a5,a5,s0	#, tmp411, tmp507
	lw	a5,-184(a5)		# _79, grid4_data[i_115][j_116]
# problem116.c:72:             grid[i][j] = grid4_data[i][j];
	sw	a5,0(a4)	# _79, *_78
# problem116.c:71:         for (int j = 0; j < cols; j++) {
	lw	a5,-280(s0)		# tmp414, j
	addiw	a5,a5,1	#, tmp412, tmp413
	sw	a5,-280(s0)	# tmp412, j
.L31:
# problem116.c:71:         for (int j = 0; j < cols; j++) {
	lw	a5,-280(s0)		# tmp416, j
	mv	a4,a5	# tmp415, tmp416
	lw	a5,-256(s0)		# tmp418, cols
	sext.w	a4,a4	# tmp419, tmp415
	sext.w	a5,a5	# tmp420, tmp417
	blt	a4,a5,.L32	#, tmp419, tmp420,
# problem116.c:69:     for (int i = 0; i < rows; i++) {
	lw	a5,-284(s0)		# tmp423, i
	addiw	a5,a5,1	#, tmp421, tmp422
	sw	a5,-284(s0)	# tmp421, i
.L30:
# problem116.c:69:     for (int i = 0; i < rows; i++) {
	lw	a5,-284(s0)		# tmp425, i
	mv	a4,a5	# tmp424, tmp425
	lw	a5,-260(s0)		# tmp427, rows
	sext.w	a4,a4	# tmp428, tmp424
	sext.w	a5,a5	# tmp429, tmp426
	blt	a4,a5,.L33	#, tmp428, tmp429,
# problem116.c:75:     assert(func0(grid, rows, cols, capacity) == 4);
	lw	a3,-252(s0)		# tmp430, capacity
	lw	a4,-256(s0)		# tmp431, cols
	lw	a5,-260(s0)		# tmp432, rows
	mv	a2,a4	#, tmp431
	mv	a1,a5	#, tmp432
	ld	a0,-248(s0)		#, grid
	call	func0		#
	mv	a5,a0	# tmp433,
# problem116.c:75:     assert(func0(grid, rows, cols, capacity) == 4);
	mv	a4,a5	# tmp434, _80
	li	a5,4		# tmp435,
	beq	a4,a5,.L34	#, tmp434, tmp435,
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
	ld	a4,-248(s0)		# tmp436, grid
	add	a5,a4,a5	# _82, _83, tmp436
# problem116.c:76:     for (int i = 0; i < rows; i++) free(grid[i]);
	ld	a5,0(a5)		# _84, *_83
	mv	a0,a5	#, _84
	call	free@plt	#
# problem116.c:76:     for (int i = 0; i < rows; i++) free(grid[i]);
	lw	a5,-276(s0)		# tmp439, i
	addiw	a5,a5,1	#, tmp437, tmp438
	sw	a5,-276(s0)	# tmp437, i
.L35:
# problem116.c:76:     for (int i = 0; i < rows; i++) free(grid[i]);
	lw	a5,-276(s0)		# tmp441, i
	mv	a4,a5	# tmp440, tmp441
	lw	a5,-260(s0)		# tmp443, rows
	sext.w	a4,a4	# tmp444, tmp440
	sext.w	a5,a5	# tmp445, tmp442
	blt	a4,a5,.L36	#, tmp444, tmp445,
# problem116.c:77:     free(grid);
	ld	a0,-248(s0)		#, grid
	call	free@plt	#
# problem116.c:80:     rows = 2; cols = 4; capacity = 9;
	li	a5,2		# tmp446,
	sw	a5,-260(s0)	# tmp446, rows
# problem116.c:80:     rows = 2; cols = 4; capacity = 9;
	li	a5,4		# tmp447,
	sw	a5,-256(s0)	# tmp447, cols
# problem116.c:80:     rows = 2; cols = 4; capacity = 9;
	li	a5,9		# tmp448,
	sw	a5,-252(s0)	# tmp448, capacity
# problem116.c:81:     grid = (int **)malloc(rows * sizeof(int *));
	lw	a5,-260(s0)		# _85, rows
	slli	a5,a5,3	#, _86, _85
	mv	a0,a5	#, _86
	call	malloc@plt	#
	mv	a5,a0	# tmp449,
	sd	a5,-248(s0)	# tmp449, grid
# problem116.c:82:     int grid5_data[2][4] = {{1,1,1,1}, {1,1,1,1}};
	lla	a5,.LC2	# tmp450,
	ld	a2,0(a5)		# tmp451,
	ld	a3,8(a5)		# tmp452,
	ld	a4,16(a5)		# tmp453,
	ld	a5,24(a5)		# tmp454,
	sd	a2,-184(s0)	# tmp451, grid5_data
	sd	a3,-176(s0)	# tmp452, grid5_data
	sd	a4,-168(s0)	# tmp453, grid5_data
	sd	a5,-160(s0)	# tmp454, grid5_data
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
	ld	a4,-248(s0)		# tmp455, grid
	add	s1,a4,a5	# _90, _91, tmp455
# problem116.c:84:         grid[i] = (int *)malloc(cols * sizeof(int));
	mv	a0,a3	#, _88
	call	malloc@plt	#
	mv	a5,a0	# tmp456,
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
	ld	a4,-248(s0)		# tmp457, grid
	add	a5,a4,a5	# _94, _95, tmp457
	ld	a4,0(a5)		# _96, *_95
# problem116.c:86:             grid[i][j] = grid5_data[i][j];
	lw	a5,-268(s0)		# _97, j
	slli	a5,a5,2	#, _98, _97
	add	a4,a4,a5	# _98, _99, _96
# problem116.c:86:             grid[i][j] = grid5_data[i][j];
	lw	a5,-268(s0)		# tmp458, j
	lw	a3,-272(s0)		# tmp459, i
	slli	a3,a3,2	#, tmp460, tmp459
	add	a5,a3,a5	# tmp458, tmp461, tmp460
	slli	a5,a5,2	#, tmp462, tmp461
	addi	a5,a5,-32	#, tmp508, tmp462
	add	a5,a5,s0	#, tmp462, tmp508
	lw	a5,-152(a5)		# _100, grid5_data[i_118][j_119]
# problem116.c:86:             grid[i][j] = grid5_data[i][j];
	sw	a5,0(a4)	# _100, *_99
# problem116.c:85:         for (int j = 0; j < cols; j++) {
	lw	a5,-268(s0)		# tmp465, j
	addiw	a5,a5,1	#, tmp463, tmp464
	sw	a5,-268(s0)	# tmp463, j
.L38:
# problem116.c:85:         for (int j = 0; j < cols; j++) {
	lw	a5,-268(s0)		# tmp467, j
	mv	a4,a5	# tmp466, tmp467
	lw	a5,-256(s0)		# tmp469, cols
	sext.w	a4,a4	# tmp470, tmp466
	sext.w	a5,a5	# tmp471, tmp468
	blt	a4,a5,.L39	#, tmp470, tmp471,
# problem116.c:83:     for (int i = 0; i < rows; i++) {
	lw	a5,-272(s0)		# tmp474, i
	addiw	a5,a5,1	#, tmp472, tmp473
	sw	a5,-272(s0)	# tmp472, i
.L37:
# problem116.c:83:     for (int i = 0; i < rows; i++) {
	lw	a5,-272(s0)		# tmp476, i
	mv	a4,a5	# tmp475, tmp476
	lw	a5,-260(s0)		# tmp478, rows
	sext.w	a4,a4	# tmp479, tmp475
	sext.w	a5,a5	# tmp480, tmp477
	blt	a4,a5,.L40	#, tmp479, tmp480,
# problem116.c:89:     assert(func0(grid, rows, cols, capacity) == 2);
	lw	a3,-252(s0)		# tmp481, capacity
	lw	a4,-256(s0)		# tmp482, cols
	lw	a5,-260(s0)		# tmp483, rows
	mv	a2,a4	#, tmp482
	mv	a1,a5	#, tmp483
	ld	a0,-248(s0)		#, grid
	call	func0		#
	mv	a5,a0	# tmp484,
# problem116.c:89:     assert(func0(grid, rows, cols, capacity) == 2);
	mv	a4,a5	# tmp485, _101
	li	a5,2		# tmp486,
	beq	a4,a5,.L41	#, tmp485, tmp486,
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
	ld	a4,-248(s0)		# tmp487, grid
	add	a5,a4,a5	# _103, _104, tmp487
# problem116.c:90: for (int i = 0; i < rows; i++) free(grid[i]);
	ld	a5,0(a5)		# _105, *_104
	mv	a0,a5	#, _105
	call	free@plt	#
# problem116.c:90: for (int i = 0; i < rows; i++) free(grid[i]);
	lw	a5,-264(s0)		# tmp490, i
	addiw	a5,a5,1	#, tmp488, tmp489
	sw	a5,-264(s0)	# tmp488, i
.L42:
# problem116.c:90: for (int i = 0; i < rows; i++) free(grid[i]);
	lw	a5,-264(s0)		# tmp492, i
	mv	a4,a5	# tmp491, tmp492
	lw	a5,-260(s0)		# tmp494, rows
	sext.w	a4,a4	# tmp495, tmp491
	sext.w	a5,a5	# tmp496, tmp493
	blt	a4,a5,.L43	#, tmp495, tmp496,
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
	la	a5,__stack_chk_guard		# tmp498,
	ld	a3, -40(s0)	# tmp501, D.3385
	ld	a5, 0(a5)	# tmp499, __stack_chk_guard
	xor	a5, a3, a5	# tmp499, tmp501
	li	a3, 0	# tmp501
	beq	a5,zero,.L45	#, tmp499,,
	call	__stack_chk_fail@plt	#
.L45:
	mv	a0,a4	#, <retval>
	ld	ra,312(sp)		#,
	.cfi_restore 1
	ld	s0,304(sp)		#,
	.cfi_restore 8
	.cfi_def_cfa 2, 320
	ld	s1,296(sp)		#,
	.cfi_restore 9
	addi	sp,sp,320	#,,
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
