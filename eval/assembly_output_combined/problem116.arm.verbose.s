	.arch armv8-a
	.file	"problem116.c"
// GNU C17 (Ubuntu 11.4.0-1ubuntu1~22.04) version 11.4.0 (aarch64-linux-gnu)
//	compiled by GNU C version 11.4.0, GMP version 6.2.1, MPFR version 4.1.0, MPC version 1.2.1, isl version isl-0.24-GMP

// GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
// options passed: -mlittle-endian -mabi=lp64 -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection
	.text
	.align	2
	.global	func0
	.type	func0, %function
func0:
.LFB0:
	.cfi_startproc
	sub	sp, sp, #48	//,,
	.cfi_def_cfa_offset 48
	str	x0, [sp, 24]	// grid, grid
	str	w1, [sp, 20]	// rows, rows
	str	w2, [sp, 16]	// cols, cols
	str	w3, [sp, 12]	// capacity, capacity
// problem116.c:3:     int out = 0;
	str	wzr, [sp, 32]	//, out
// problem116.c:4:     for (int i = 0; i < rows; i++) {
	str	wzr, [sp, 36]	//, i
// problem116.c:4:     for (int i = 0; i < rows; i++) {
	b	.L2		//
.L6:
// problem116.c:5:         int sum = 0;
	str	wzr, [sp, 40]	//, sum
// problem116.c:6:         for (int j = 0; j < cols; j++)
	str	wzr, [sp, 44]	//, j
// problem116.c:6:         for (int j = 0; j < cols; j++)
	b	.L3		//
.L4:
// problem116.c:7:             sum += grid[i][j];
	ldrsw	x0, [sp, 36]	// _1, i
	lsl	x0, x0, 3	// _2, _1,
	ldr	x1, [sp, 24]	// tmp105, grid
	add	x0, x1, x0	// _3, tmp105, _2
	ldr	x1, [x0]	// _4, *_3
// problem116.c:7:             sum += grid[i][j];
	ldrsw	x0, [sp, 44]	// _5, j
	lsl	x0, x0, 2	// _6, _5,
	add	x0, x1, x0	// _7, _4, _6
	ldr	w0, [x0]	// _8, *_7
// problem116.c:7:             sum += grid[i][j];
	ldr	w1, [sp, 40]	// tmp107, sum
	add	w0, w1, w0	// tmp106, tmp107, _8
	str	w0, [sp, 40]	// tmp106, sum
// problem116.c:6:         for (int j = 0; j < cols; j++)
	ldr	w0, [sp, 44]	// tmp109, j
	add	w0, w0, 1	// tmp108, tmp109,
	str	w0, [sp, 44]	// tmp108, j
.L3:
// problem116.c:6:         for (int j = 0; j < cols; j++)
	ldr	w1, [sp, 44]	// tmp110, j
	ldr	w0, [sp, 16]	// tmp111, cols
	cmp	w1, w0	// tmp110, tmp111
	blt	.L4		//,
// problem116.c:8:         if (sum > 0) out += (sum + capacity - 1) / capacity;
	ldr	w0, [sp, 40]	// tmp112, sum
	cmp	w0, 0	// tmp112,
	ble	.L5		//,
// problem116.c:8:         if (sum > 0) out += (sum + capacity - 1) / capacity;
	ldr	w1, [sp, 40]	// tmp113, sum
	ldr	w0, [sp, 12]	// tmp114, capacity
	add	w0, w1, w0	// _9, tmp113, tmp114
// problem116.c:8:         if (sum > 0) out += (sum + capacity - 1) / capacity;
	sub	w1, w0, #1	// _10, _9,
// problem116.c:8:         if (sum > 0) out += (sum + capacity - 1) / capacity;
	ldr	w0, [sp, 12]	// tmp115, capacity
	sdiv	w0, w1, w0	// _11, _10, tmp115
// problem116.c:8:         if (sum > 0) out += (sum + capacity - 1) / capacity;
	ldr	w1, [sp, 32]	// tmp117, out
	add	w0, w1, w0	// tmp116, tmp117, _11
	str	w0, [sp, 32]	// tmp116, out
.L5:
// problem116.c:4:     for (int i = 0; i < rows; i++) {
	ldr	w0, [sp, 36]	// tmp119, i
	add	w0, w0, 1	// tmp118, tmp119,
	str	w0, [sp, 36]	// tmp118, i
.L2:
// problem116.c:4:     for (int i = 0; i < rows; i++) {
	ldr	w1, [sp, 36]	// tmp120, i
	ldr	w0, [sp, 20]	// tmp121, rows
	cmp	w1, w0	// tmp120, tmp121
	blt	.L6		//,
// problem116.c:10:     return out;
	ldr	w0, [sp, 32]	// _20, out
// problem116.c:11: }
	add	sp, sp, 48	//,,
	.cfi_def_cfa_offset 0
	ret	
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
	.text
	.align	2
	.global	main
	.type	main, %function
main:
.LFB7:
	.cfi_startproc
	stp	x29, x30, [sp, -320]!	//,,,
	.cfi_def_cfa_offset 320
	.cfi_offset 29, -320
	.cfi_offset 30, -312
	mov	x29, sp	//,
	str	x19, [sp, 16]	//,
	.cfi_offset 19, -304
// problem116.c:19: int main() {
	adrp	x0, :got:__stack_chk_guard	// tmp200,
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]	// tmp199, tmp200,
	ldr	x1, [x0]	// tmp378,
	str	x1, [sp, 312]	// tmp378, D.4917
	mov	x1, 0	// tmp378
// problem116.c:24:     rows = 3; cols = 4; capacity = 1;
	mov	w0, 3	// tmp201,
	str	w0, [sp, 92]	// tmp201, rows
// problem116.c:24:     rows = 3; cols = 4; capacity = 1;
	mov	w0, 4	// tmp202,
	str	w0, [sp, 96]	// tmp202, cols
// problem116.c:24:     rows = 3; cols = 4; capacity = 1;
	mov	w0, 1	// tmp203,
	str	w0, [sp, 100]	// tmp203, capacity
// problem116.c:25:     grid = (int **)malloc(rows * sizeof(int *));
	ldrsw	x0, [sp, 92]	// _1, rows
	lsl	x0, x0, 3	// _2, _1,
	bl	malloc		//
	str	x0, [sp, 104]	// tmp204, grid
// problem116.c:26:     int grid1_data[3][4] = {{0,0,1,0}, {0,1,0,0}, {1,1,1,1}};
	adrp	x0, .LC0	// tmp206,
	add	x1, x0, :lo12:.LC0	// tmp205, tmp206,
	add	x0, sp, 200	// tmp207,,
	ldp	q0, q1, [x1]	// tmp209, tmp210,
	stp	q0, q1, [x0]	// tmp209, tmp210, grid1_data
	ldr	q0, [x1, 32]	// tmp211,
	str	q0, [x0, 32]	// tmp211, grid1_data
// problem116.c:27:     for (int i = 0; i < rows; i++) {
	str	wzr, [sp, 32]	//, i
// problem116.c:27:     for (int i = 0; i < rows; i++) {
	b	.L9		//
.L12:
// problem116.c:28:         grid[i] = (int *)malloc(cols * sizeof(int));
	ldrsw	x0, [sp, 96]	// _3, cols
	lsl	x2, x0, 2	// _4, _3,
// problem116.c:28:         grid[i] = (int *)malloc(cols * sizeof(int));
	ldrsw	x0, [sp, 32]	// _5, i
	lsl	x0, x0, 3	// _6, _5,
	ldr	x1, [sp, 104]	// tmp212, grid
	add	x19, x1, x0	// _7, tmp212, _6
// problem116.c:28:         grid[i] = (int *)malloc(cols * sizeof(int));
	mov	x0, x2	//, _4
	bl	malloc		//
// problem116.c:28:         grid[i] = (int *)malloc(cols * sizeof(int));
	str	x0, [x19]	// _8, *_7
// problem116.c:29:         for (int j = 0; j < cols; j++) {
	str	wzr, [sp, 36]	//, j
// problem116.c:29:         for (int j = 0; j < cols; j++) {
	b	.L10		//
.L11:
// problem116.c:30:             grid[i][j] = grid1_data[i][j];
	ldrsw	x0, [sp, 32]	// _9, i
	lsl	x0, x0, 3	// _10, _9,
	ldr	x1, [sp, 104]	// tmp214, grid
	add	x0, x1, x0	// _11, tmp214, _10
	ldr	x1, [x0]	// _12, *_11
// problem116.c:30:             grid[i][j] = grid1_data[i][j];
	ldrsw	x0, [sp, 36]	// _13, j
	lsl	x0, x0, 2	// _14, _13,
	add	x0, x1, x0	// _15, _12, _14
// problem116.c:30:             grid[i][j] = grid1_data[i][j];
	ldrsw	x1, [sp, 36]	// tmp215, j
	ldrsw	x2, [sp, 32]	// tmp216, i
	lsl	x2, x2, 2	// tmp217, tmp216,
	add	x1, x2, x1	// tmp218, tmp217, tmp215
	lsl	x1, x1, 2	// tmp219, tmp218,
	add	x2, sp, 200	// tmp220,,
	ldr	w1, [x2, x1]	// _16, grid1_data[i_106][j_107]
// problem116.c:30:             grid[i][j] = grid1_data[i][j];
	str	w1, [x0]	// _16, *_15
// problem116.c:29:         for (int j = 0; j < cols; j++) {
	ldr	w0, [sp, 36]	// tmp222, j
	add	w0, w0, 1	// tmp221, tmp222,
	str	w0, [sp, 36]	// tmp221, j
.L10:
// problem116.c:29:         for (int j = 0; j < cols; j++) {
	ldr	w1, [sp, 36]	// tmp223, j
	ldr	w0, [sp, 96]	// tmp224, cols
	cmp	w1, w0	// tmp223, tmp224
	blt	.L11		//,
// problem116.c:27:     for (int i = 0; i < rows; i++) {
	ldr	w0, [sp, 32]	// tmp226, i
	add	w0, w0, 1	// tmp225, tmp226,
	str	w0, [sp, 32]	// tmp225, i
.L9:
// problem116.c:27:     for (int i = 0; i < rows; i++) {
	ldr	w1, [sp, 32]	// tmp227, i
	ldr	w0, [sp, 92]	// tmp228, rows
	cmp	w1, w0	// tmp227, tmp228
	blt	.L12		//,
// problem116.c:33:     assert(func0(grid, rows, cols, capacity) == 6);
	ldr	w3, [sp, 100]	//, capacity
	ldr	w2, [sp, 96]	//, cols
	ldr	w1, [sp, 92]	//, rows
	ldr	x0, [sp, 104]	//, grid
	bl	func0		//
	cmp	w0, 6	// _17,
	beq	.L13		//,
// problem116.c:33:     assert(func0(grid, rows, cols, capacity) == 6);
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp229,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp229,
	mov	w2, 33	//,
	adrp	x0, .LC3	// tmp230,
	add	x1, x0, :lo12:.LC3	//, tmp230,
	adrp	x0, .LC4	// tmp231,
	add	x0, x0, :lo12:.LC4	//, tmp231,
	bl	__assert_fail		//
.L13:
// problem116.c:34:     for (int i = 0; i < rows; i++) free(grid[i]);
	str	wzr, [sp, 40]	//, i
// problem116.c:34:     for (int i = 0; i < rows; i++) free(grid[i]);
	b	.L14		//
.L15:
// problem116.c:34:     for (int i = 0; i < rows; i++) free(grid[i]);
	ldrsw	x0, [sp, 40]	// _18, i
	lsl	x0, x0, 3	// _19, _18,
	ldr	x1, [sp, 104]	// tmp232, grid
	add	x0, x1, x0	// _20, tmp232, _19
// problem116.c:34:     for (int i = 0; i < rows; i++) free(grid[i]);
	ldr	x0, [x0]	// _21, *_20
	bl	free		//
// problem116.c:34:     for (int i = 0; i < rows; i++) free(grid[i]);
	ldr	w0, [sp, 40]	// tmp234, i
	add	w0, w0, 1	// tmp233, tmp234,
	str	w0, [sp, 40]	// tmp233, i
.L14:
// problem116.c:34:     for (int i = 0; i < rows; i++) free(grid[i]);
	ldr	w1, [sp, 40]	// tmp235, i
	ldr	w0, [sp, 92]	// tmp236, rows
	cmp	w1, w0	// tmp235, tmp236
	blt	.L15		//,
// problem116.c:35:     free(grid);
	ldr	x0, [sp, 104]	//, grid
	bl	free		//
// problem116.c:38:     rows = 4; cols = 4; capacity = 2;
	mov	w0, 4	// tmp237,
	str	w0, [sp, 92]	// tmp237, rows
// problem116.c:38:     rows = 4; cols = 4; capacity = 2;
	mov	w0, 4	// tmp238,
	str	w0, [sp, 96]	// tmp238, cols
// problem116.c:38:     rows = 4; cols = 4; capacity = 2;
	mov	w0, 2	// tmp239,
	str	w0, [sp, 100]	// tmp239, capacity
// problem116.c:39:     grid = (int **)malloc(rows * sizeof(int *));
	ldrsw	x0, [sp, 92]	// _22, rows
	lsl	x0, x0, 3	// _23, _22,
	bl	malloc		//
	str	x0, [sp, 104]	// tmp240, grid
// problem116.c:40:     int grid2_data[4][4] = {{0,0,1,1}, {0,0,0,0}, {1,1,1,1}, {0,1,1,1}};
	adrp	x0, .LC1	// tmp242,
	add	x1, x0, :lo12:.LC1	// tmp241, tmp242,
	add	x0, sp, 248	// tmp243,,
	ldp	q0, q1, [x1]	// tmp245, tmp246,
	stp	q0, q1, [x0]	// tmp245, tmp246, grid2_data
	ldp	q0, q1, [x1, 32]	// tmp247, tmp248,
	stp	q0, q1, [x0, 32]	// tmp247, tmp248, grid2_data
// problem116.c:41:     for (int i = 0; i < rows; i++) {
	str	wzr, [sp, 44]	//, i
// problem116.c:41:     for (int i = 0; i < rows; i++) {
	b	.L16		//
.L19:
// problem116.c:42:         grid[i] = (int *)malloc(cols * sizeof(int));
	ldrsw	x0, [sp, 96]	// _24, cols
	lsl	x2, x0, 2	// _25, _24,
// problem116.c:42:         grid[i] = (int *)malloc(cols * sizeof(int));
	ldrsw	x0, [sp, 44]	// _26, i
	lsl	x0, x0, 3	// _27, _26,
	ldr	x1, [sp, 104]	// tmp249, grid
	add	x19, x1, x0	// _28, tmp249, _27
// problem116.c:42:         grid[i] = (int *)malloc(cols * sizeof(int));
	mov	x0, x2	//, _25
	bl	malloc		//
// problem116.c:42:         grid[i] = (int *)malloc(cols * sizeof(int));
	str	x0, [x19]	// _29, *_28
// problem116.c:43:         for (int j = 0; j < cols; j++) {
	str	wzr, [sp, 48]	//, j
// problem116.c:43:         for (int j = 0; j < cols; j++) {
	b	.L17		//
.L18:
// problem116.c:44:             grid[i][j] = grid2_data[i][j];
	ldrsw	x0, [sp, 44]	// _30, i
	lsl	x0, x0, 3	// _31, _30,
	ldr	x1, [sp, 104]	// tmp251, grid
	add	x0, x1, x0	// _32, tmp251, _31
	ldr	x1, [x0]	// _33, *_32
// problem116.c:44:             grid[i][j] = grid2_data[i][j];
	ldrsw	x0, [sp, 48]	// _34, j
	lsl	x0, x0, 2	// _35, _34,
	add	x0, x1, x0	// _36, _33, _35
// problem116.c:44:             grid[i][j] = grid2_data[i][j];
	ldrsw	x1, [sp, 48]	// tmp252, j
	ldrsw	x2, [sp, 44]	// tmp253, i
	lsl	x2, x2, 2	// tmp254, tmp253,
	add	x1, x2, x1	// tmp255, tmp254, tmp252
	lsl	x1, x1, 2	// tmp256, tmp255,
	add	x2, sp, 248	// tmp257,,
	ldr	w1, [x2, x1]	// _37, grid2_data[i_109][j_110]
// problem116.c:44:             grid[i][j] = grid2_data[i][j];
	str	w1, [x0]	// _37, *_36
// problem116.c:43:         for (int j = 0; j < cols; j++) {
	ldr	w0, [sp, 48]	// tmp259, j
	add	w0, w0, 1	// tmp258, tmp259,
	str	w0, [sp, 48]	// tmp258, j
.L17:
// problem116.c:43:         for (int j = 0; j < cols; j++) {
	ldr	w1, [sp, 48]	// tmp260, j
	ldr	w0, [sp, 96]	// tmp261, cols
	cmp	w1, w0	// tmp260, tmp261
	blt	.L18		//,
// problem116.c:41:     for (int i = 0; i < rows; i++) {
	ldr	w0, [sp, 44]	// tmp263, i
	add	w0, w0, 1	// tmp262, tmp263,
	str	w0, [sp, 44]	// tmp262, i
.L16:
// problem116.c:41:     for (int i = 0; i < rows; i++) {
	ldr	w1, [sp, 44]	// tmp264, i
	ldr	w0, [sp, 92]	// tmp265, rows
	cmp	w1, w0	// tmp264, tmp265
	blt	.L19		//,
// problem116.c:47:     assert(func0(grid, rows, cols, capacity) == 5);
	ldr	w3, [sp, 100]	//, capacity
	ldr	w2, [sp, 96]	//, cols
	ldr	w1, [sp, 92]	//, rows
	ldr	x0, [sp, 104]	//, grid
	bl	func0		//
	cmp	w0, 5	// _38,
	beq	.L20		//,
// problem116.c:47:     assert(func0(grid, rows, cols, capacity) == 5);
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp266,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp266,
	mov	w2, 47	//,
	adrp	x0, .LC3	// tmp267,
	add	x1, x0, :lo12:.LC3	//, tmp267,
	adrp	x0, .LC5	// tmp268,
	add	x0, x0, :lo12:.LC5	//, tmp268,
	bl	__assert_fail		//
.L20:
// problem116.c:48:     for (int i = 0; i < rows; i++) free(grid[i]);
	str	wzr, [sp, 52]	//, i
// problem116.c:48:     for (int i = 0; i < rows; i++) free(grid[i]);
	b	.L21		//
.L22:
// problem116.c:48:     for (int i = 0; i < rows; i++) free(grid[i]);
	ldrsw	x0, [sp, 52]	// _39, i
	lsl	x0, x0, 3	// _40, _39,
	ldr	x1, [sp, 104]	// tmp269, grid
	add	x0, x1, x0	// _41, tmp269, _40
// problem116.c:48:     for (int i = 0; i < rows; i++) free(grid[i]);
	ldr	x0, [x0]	// _42, *_41
	bl	free		//
// problem116.c:48:     for (int i = 0; i < rows; i++) free(grid[i]);
	ldr	w0, [sp, 52]	// tmp271, i
	add	w0, w0, 1	// tmp270, tmp271,
	str	w0, [sp, 52]	// tmp270, i
.L21:
// problem116.c:48:     for (int i = 0; i < rows; i++) free(grid[i]);
	ldr	w1, [sp, 52]	// tmp272, i
	ldr	w0, [sp, 92]	// tmp273, rows
	cmp	w1, w0	// tmp272, tmp273
	blt	.L22		//,
// problem116.c:49:     free(grid);
	ldr	x0, [sp, 104]	//, grid
	bl	free		//
// problem116.c:52:     rows = 2; cols = 3; capacity = 5;
	mov	w0, 2	// tmp274,
	str	w0, [sp, 92]	// tmp274, rows
// problem116.c:52:     rows = 2; cols = 3; capacity = 5;
	mov	w0, 3	// tmp275,
	str	w0, [sp, 96]	// tmp275, cols
// problem116.c:52:     rows = 2; cols = 3; capacity = 5;
	mov	w0, 5	// tmp276,
	str	w0, [sp, 100]	// tmp276, capacity
// problem116.c:53:     grid = (int **)malloc(rows * sizeof(int *));
	ldrsw	x0, [sp, 92]	// _43, rows
	lsl	x0, x0, 3	// _44, _43,
	bl	malloc		//
	str	x0, [sp, 104]	// tmp277, grid
// problem116.c:54:     int grid3_data[2][3] = {{0,0,0}, {0,0,0}};
	stp	xzr, xzr, [sp, 112]	// grid3_data
	str	xzr, [sp, 128]	//, grid3_data
// problem116.c:55:     for (int i = 0; i < rows; i++) {
	str	wzr, [sp, 56]	//, i
// problem116.c:55:     for (int i = 0; i < rows; i++) {
	b	.L23		//
.L26:
// problem116.c:56:         grid[i] = (int *)malloc(cols * sizeof(int));
	ldrsw	x0, [sp, 96]	// _45, cols
	lsl	x2, x0, 2	// _46, _45,
// problem116.c:56:         grid[i] = (int *)malloc(cols * sizeof(int));
	ldrsw	x0, [sp, 56]	// _47, i
	lsl	x0, x0, 3	// _48, _47,
	ldr	x1, [sp, 104]	// tmp278, grid
	add	x19, x1, x0	// _49, tmp278, _48
// problem116.c:56:         grid[i] = (int *)malloc(cols * sizeof(int));
	mov	x0, x2	//, _46
	bl	malloc		//
// problem116.c:56:         grid[i] = (int *)malloc(cols * sizeof(int));
	str	x0, [x19]	// _50, *_49
// problem116.c:57:         for (int j = 0; j < cols; j++) {
	str	wzr, [sp, 60]	//, j
// problem116.c:57:         for (int j = 0; j < cols; j++) {
	b	.L24		//
.L25:
// problem116.c:58:             grid[i][j] = grid3_data[i][j];
	ldrsw	x0, [sp, 56]	// _51, i
	lsl	x0, x0, 3	// _52, _51,
	ldr	x1, [sp, 104]	// tmp280, grid
	add	x0, x1, x0	// _53, tmp280, _52
	ldr	x1, [x0]	// _54, *_53
// problem116.c:58:             grid[i][j] = grid3_data[i][j];
	ldrsw	x0, [sp, 60]	// _55, j
	lsl	x0, x0, 2	// _56, _55,
	add	x2, x1, x0	// _57, _54, _56
// problem116.c:58:             grid[i][j] = grid3_data[i][j];
	ldrsw	x3, [sp, 60]	// tmp281, j
	ldrsw	x1, [sp, 56]	// tmp282, i
	mov	x0, x1	// tmp283, tmp282
	lsl	x0, x0, 1	// tmp284, tmp283,
	add	x0, x0, x1	// tmp283, tmp283, tmp282
	add	x0, x0, x3	// tmp285, tmp283, tmp281
	lsl	x0, x0, 2	// tmp286, tmp285,
	add	x1, sp, 112	// tmp287,,
	ldr	w0, [x1, x0]	// _58, grid3_data[i_112][j_113]
// problem116.c:58:             grid[i][j] = grid3_data[i][j];
	str	w0, [x2]	// _58, *_57
// problem116.c:57:         for (int j = 0; j < cols; j++) {
	ldr	w0, [sp, 60]	// tmp289, j
	add	w0, w0, 1	// tmp288, tmp289,
	str	w0, [sp, 60]	// tmp288, j
.L24:
// problem116.c:57:         for (int j = 0; j < cols; j++) {
	ldr	w1, [sp, 60]	// tmp290, j
	ldr	w0, [sp, 96]	// tmp291, cols
	cmp	w1, w0	// tmp290, tmp291
	blt	.L25		//,
// problem116.c:55:     for (int i = 0; i < rows; i++) {
	ldr	w0, [sp, 56]	// tmp293, i
	add	w0, w0, 1	// tmp292, tmp293,
	str	w0, [sp, 56]	// tmp292, i
.L23:
// problem116.c:55:     for (int i = 0; i < rows; i++) {
	ldr	w1, [sp, 56]	// tmp294, i
	ldr	w0, [sp, 92]	// tmp295, rows
	cmp	w1, w0	// tmp294, tmp295
	blt	.L26		//,
// problem116.c:61:     assert(func0(grid, rows, cols, capacity) == 0);
	ldr	w3, [sp, 100]	//, capacity
	ldr	w2, [sp, 96]	//, cols
	ldr	w1, [sp, 92]	//, rows
	ldr	x0, [sp, 104]	//, grid
	bl	func0		//
	cmp	w0, 0	// _59,
	beq	.L27		//,
// problem116.c:61:     assert(func0(grid, rows, cols, capacity) == 0);
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp296,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp296,
	mov	w2, 61	//,
	adrp	x0, .LC3	// tmp297,
	add	x1, x0, :lo12:.LC3	//, tmp297,
	adrp	x0, .LC6	// tmp298,
	add	x0, x0, :lo12:.LC6	//, tmp298,
	bl	__assert_fail		//
.L27:
// problem116.c:62:     for (int i = 0; i < rows; i++) free(grid[i]);
	str	wzr, [sp, 64]	//, i
// problem116.c:62:     for (int i = 0; i < rows; i++) free(grid[i]);
	b	.L28		//
.L29:
// problem116.c:62:     for (int i = 0; i < rows; i++) free(grid[i]);
	ldrsw	x0, [sp, 64]	// _60, i
	lsl	x0, x0, 3	// _61, _60,
	ldr	x1, [sp, 104]	// tmp299, grid
	add	x0, x1, x0	// _62, tmp299, _61
// problem116.c:62:     for (int i = 0; i < rows; i++) free(grid[i]);
	ldr	x0, [x0]	// _63, *_62
	bl	free		//
// problem116.c:62:     for (int i = 0; i < rows; i++) free(grid[i]);
	ldr	w0, [sp, 64]	// tmp301, i
	add	w0, w0, 1	// tmp300, tmp301,
	str	w0, [sp, 64]	// tmp300, i
.L28:
// problem116.c:62:     for (int i = 0; i < rows; i++) free(grid[i]);
	ldr	w1, [sp, 64]	// tmp302, i
	ldr	w0, [sp, 92]	// tmp303, rows
	cmp	w1, w0	// tmp302, tmp303
	blt	.L29		//,
// problem116.c:63:     free(grid);
	ldr	x0, [sp, 104]	//, grid
	bl	free		//
// problem116.c:66:     rows = 2; cols = 4; capacity = 2;
	mov	w0, 2	// tmp304,
	str	w0, [sp, 92]	// tmp304, rows
// problem116.c:66:     rows = 2; cols = 4; capacity = 2;
	mov	w0, 4	// tmp305,
	str	w0, [sp, 96]	// tmp305, cols
// problem116.c:66:     rows = 2; cols = 4; capacity = 2;
	mov	w0, 2	// tmp306,
	str	w0, [sp, 100]	// tmp306, capacity
// problem116.c:67:     grid = (int **)malloc(rows * sizeof(int *));
	ldrsw	x0, [sp, 92]	// _64, rows
	lsl	x0, x0, 3	// _65, _64,
	bl	malloc		//
	str	x0, [sp, 104]	// tmp307, grid
// problem116.c:68:     int grid4_data[2][4] = {{1,1,1,1}, {1,1,1,1}};
	adrp	x0, .LC2	// tmp309,
	add	x1, x0, :lo12:.LC2	// tmp308, tmp309,
	add	x0, sp, 136	// tmp310,,
	ldp	q0, q1, [x1]	// tmp312, tmp313,
	stp	q0, q1, [x0]	// tmp312, tmp313, grid4_data
// problem116.c:69:     for (int i = 0; i < rows; i++) {
	str	wzr, [sp, 68]	//, i
// problem116.c:69:     for (int i = 0; i < rows; i++) {
	b	.L30		//
.L33:
// problem116.c:70:         grid[i] = (int *)malloc(cols * sizeof(int));
	ldrsw	x0, [sp, 96]	// _66, cols
	lsl	x2, x0, 2	// _67, _66,
// problem116.c:70:         grid[i] = (int *)malloc(cols * sizeof(int));
	ldrsw	x0, [sp, 68]	// _68, i
	lsl	x0, x0, 3	// _69, _68,
	ldr	x1, [sp, 104]	// tmp314, grid
	add	x19, x1, x0	// _70, tmp314, _69
// problem116.c:70:         grid[i] = (int *)malloc(cols * sizeof(int));
	mov	x0, x2	//, _67
	bl	malloc		//
// problem116.c:70:         grid[i] = (int *)malloc(cols * sizeof(int));
	str	x0, [x19]	// _71, *_70
// problem116.c:71:         for (int j = 0; j < cols; j++) {
	str	wzr, [sp, 72]	//, j
// problem116.c:71:         for (int j = 0; j < cols; j++) {
	b	.L31		//
.L32:
// problem116.c:72:             grid[i][j] = grid4_data[i][j];
	ldrsw	x0, [sp, 68]	// _72, i
	lsl	x0, x0, 3	// _73, _72,
	ldr	x1, [sp, 104]	// tmp316, grid
	add	x0, x1, x0	// _74, tmp316, _73
	ldr	x1, [x0]	// _75, *_74
// problem116.c:72:             grid[i][j] = grid4_data[i][j];
	ldrsw	x0, [sp, 72]	// _76, j
	lsl	x0, x0, 2	// _77, _76,
	add	x0, x1, x0	// _78, _75, _77
// problem116.c:72:             grid[i][j] = grid4_data[i][j];
	ldrsw	x1, [sp, 72]	// tmp317, j
	ldrsw	x2, [sp, 68]	// tmp318, i
	lsl	x2, x2, 2	// tmp319, tmp318,
	add	x1, x2, x1	// tmp320, tmp319, tmp317
	lsl	x1, x1, 2	// tmp321, tmp320,
	add	x2, sp, 136	// tmp322,,
	ldr	w1, [x2, x1]	// _79, grid4_data[i_115][j_116]
// problem116.c:72:             grid[i][j] = grid4_data[i][j];
	str	w1, [x0]	// _79, *_78
// problem116.c:71:         for (int j = 0; j < cols; j++) {
	ldr	w0, [sp, 72]	// tmp324, j
	add	w0, w0, 1	// tmp323, tmp324,
	str	w0, [sp, 72]	// tmp323, j
.L31:
// problem116.c:71:         for (int j = 0; j < cols; j++) {
	ldr	w1, [sp, 72]	// tmp325, j
	ldr	w0, [sp, 96]	// tmp326, cols
	cmp	w1, w0	// tmp325, tmp326
	blt	.L32		//,
// problem116.c:69:     for (int i = 0; i < rows; i++) {
	ldr	w0, [sp, 68]	// tmp328, i
	add	w0, w0, 1	// tmp327, tmp328,
	str	w0, [sp, 68]	// tmp327, i
.L30:
// problem116.c:69:     for (int i = 0; i < rows; i++) {
	ldr	w1, [sp, 68]	// tmp329, i
	ldr	w0, [sp, 92]	// tmp330, rows
	cmp	w1, w0	// tmp329, tmp330
	blt	.L33		//,
// problem116.c:75:     assert(func0(grid, rows, cols, capacity) == 4);
	ldr	w3, [sp, 100]	//, capacity
	ldr	w2, [sp, 96]	//, cols
	ldr	w1, [sp, 92]	//, rows
	ldr	x0, [sp, 104]	//, grid
	bl	func0		//
	cmp	w0, 4	// _80,
	beq	.L34		//,
// problem116.c:75:     assert(func0(grid, rows, cols, capacity) == 4);
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp331,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp331,
	mov	w2, 75	//,
	adrp	x0, .LC3	// tmp332,
	add	x1, x0, :lo12:.LC3	//, tmp332,
	adrp	x0, .LC7	// tmp333,
	add	x0, x0, :lo12:.LC7	//, tmp333,
	bl	__assert_fail		//
.L34:
// problem116.c:76:     for (int i = 0; i < rows; i++) free(grid[i]);
	str	wzr, [sp, 76]	//, i
// problem116.c:76:     for (int i = 0; i < rows; i++) free(grid[i]);
	b	.L35		//
.L36:
// problem116.c:76:     for (int i = 0; i < rows; i++) free(grid[i]);
	ldrsw	x0, [sp, 76]	// _81, i
	lsl	x0, x0, 3	// _82, _81,
	ldr	x1, [sp, 104]	// tmp334, grid
	add	x0, x1, x0	// _83, tmp334, _82
// problem116.c:76:     for (int i = 0; i < rows; i++) free(grid[i]);
	ldr	x0, [x0]	// _84, *_83
	bl	free		//
// problem116.c:76:     for (int i = 0; i < rows; i++) free(grid[i]);
	ldr	w0, [sp, 76]	// tmp336, i
	add	w0, w0, 1	// tmp335, tmp336,
	str	w0, [sp, 76]	// tmp335, i
.L35:
// problem116.c:76:     for (int i = 0; i < rows; i++) free(grid[i]);
	ldr	w1, [sp, 76]	// tmp337, i
	ldr	w0, [sp, 92]	// tmp338, rows
	cmp	w1, w0	// tmp337, tmp338
	blt	.L36		//,
// problem116.c:77:     free(grid);
	ldr	x0, [sp, 104]	//, grid
	bl	free		//
// problem116.c:80:     rows = 2; cols = 4; capacity = 9;
	mov	w0, 2	// tmp339,
	str	w0, [sp, 92]	// tmp339, rows
// problem116.c:80:     rows = 2; cols = 4; capacity = 9;
	mov	w0, 4	// tmp340,
	str	w0, [sp, 96]	// tmp340, cols
// problem116.c:80:     rows = 2; cols = 4; capacity = 9;
	mov	w0, 9	// tmp341,
	str	w0, [sp, 100]	// tmp341, capacity
// problem116.c:81:     grid = (int **)malloc(rows * sizeof(int *));
	ldrsw	x0, [sp, 92]	// _85, rows
	lsl	x0, x0, 3	// _86, _85,
	bl	malloc		//
	str	x0, [sp, 104]	// tmp342, grid
// problem116.c:82:     int grid5_data[2][4] = {{1,1,1,1}, {1,1,1,1}};
	adrp	x0, .LC2	// tmp344,
	add	x1, x0, :lo12:.LC2	// tmp343, tmp344,
	add	x0, sp, 168	// tmp345,,
	ldp	q0, q1, [x1]	// tmp347, tmp348,
	stp	q0, q1, [x0]	// tmp347, tmp348, grid5_data
// problem116.c:83:     for (int i = 0; i < rows; i++) {
	str	wzr, [sp, 80]	//, i
// problem116.c:83:     for (int i = 0; i < rows; i++) {
	b	.L37		//
.L40:
// problem116.c:84:         grid[i] = (int *)malloc(cols * sizeof(int));
	ldrsw	x0, [sp, 96]	// _87, cols
	lsl	x2, x0, 2	// _88, _87,
// problem116.c:84:         grid[i] = (int *)malloc(cols * sizeof(int));
	ldrsw	x0, [sp, 80]	// _89, i
	lsl	x0, x0, 3	// _90, _89,
	ldr	x1, [sp, 104]	// tmp349, grid
	add	x19, x1, x0	// _91, tmp349, _90
// problem116.c:84:         grid[i] = (int *)malloc(cols * sizeof(int));
	mov	x0, x2	//, _88
	bl	malloc		//
// problem116.c:84:         grid[i] = (int *)malloc(cols * sizeof(int));
	str	x0, [x19]	// _92, *_91
// problem116.c:85:         for (int j = 0; j < cols; j++) {
	str	wzr, [sp, 84]	//, j
// problem116.c:85:         for (int j = 0; j < cols; j++) {
	b	.L38		//
.L39:
// problem116.c:86:             grid[i][j] = grid5_data[i][j];
	ldrsw	x0, [sp, 80]	// _93, i
	lsl	x0, x0, 3	// _94, _93,
	ldr	x1, [sp, 104]	// tmp351, grid
	add	x0, x1, x0	// _95, tmp351, _94
	ldr	x1, [x0]	// _96, *_95
// problem116.c:86:             grid[i][j] = grid5_data[i][j];
	ldrsw	x0, [sp, 84]	// _97, j
	lsl	x0, x0, 2	// _98, _97,
	add	x0, x1, x0	// _99, _96, _98
// problem116.c:86:             grid[i][j] = grid5_data[i][j];
	ldrsw	x1, [sp, 84]	// tmp352, j
	ldrsw	x2, [sp, 80]	// tmp353, i
	lsl	x2, x2, 2	// tmp354, tmp353,
	add	x1, x2, x1	// tmp355, tmp354, tmp352
	lsl	x1, x1, 2	// tmp356, tmp355,
	add	x2, sp, 168	// tmp357,,
	ldr	w1, [x2, x1]	// _100, grid5_data[i_118][j_119]
// problem116.c:86:             grid[i][j] = grid5_data[i][j];
	str	w1, [x0]	// _100, *_99
// problem116.c:85:         for (int j = 0; j < cols; j++) {
	ldr	w0, [sp, 84]	// tmp359, j
	add	w0, w0, 1	// tmp358, tmp359,
	str	w0, [sp, 84]	// tmp358, j
.L38:
// problem116.c:85:         for (int j = 0; j < cols; j++) {
	ldr	w1, [sp, 84]	// tmp360, j
	ldr	w0, [sp, 96]	// tmp361, cols
	cmp	w1, w0	// tmp360, tmp361
	blt	.L39		//,
// problem116.c:83:     for (int i = 0; i < rows; i++) {
	ldr	w0, [sp, 80]	// tmp363, i
	add	w0, w0, 1	// tmp362, tmp363,
	str	w0, [sp, 80]	// tmp362, i
.L37:
// problem116.c:83:     for (int i = 0; i < rows; i++) {
	ldr	w1, [sp, 80]	// tmp364, i
	ldr	w0, [sp, 92]	// tmp365, rows
	cmp	w1, w0	// tmp364, tmp365
	blt	.L40		//,
// problem116.c:89:     assert(func0(grid, rows, cols, capacity) == 2);
	ldr	w3, [sp, 100]	//, capacity
	ldr	w2, [sp, 96]	//, cols
	ldr	w1, [sp, 92]	//, rows
	ldr	x0, [sp, 104]	//, grid
	bl	func0		//
	cmp	w0, 2	// _101,
	beq	.L41		//,
// problem116.c:89:     assert(func0(grid, rows, cols, capacity) == 2);
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp366,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp366,
	mov	w2, 89	//,
	adrp	x0, .LC3	// tmp367,
	add	x1, x0, :lo12:.LC3	//, tmp367,
	adrp	x0, .LC8	// tmp368,
	add	x0, x0, :lo12:.LC8	//, tmp368,
	bl	__assert_fail		//
.L41:
// problem116.c:90: for (int i = 0; i < rows; i++) free(grid[i]);
	str	wzr, [sp, 88]	//, i
// problem116.c:90: for (int i = 0; i < rows; i++) free(grid[i]);
	b	.L42		//
.L43:
// problem116.c:90: for (int i = 0; i < rows; i++) free(grid[i]);
	ldrsw	x0, [sp, 88]	// _102, i
	lsl	x0, x0, 3	// _103, _102,
	ldr	x1, [sp, 104]	// tmp369, grid
	add	x0, x1, x0	// _104, tmp369, _103
// problem116.c:90: for (int i = 0; i < rows; i++) free(grid[i]);
	ldr	x0, [x0]	// _105, *_104
	bl	free		//
// problem116.c:90: for (int i = 0; i < rows; i++) free(grid[i]);
	ldr	w0, [sp, 88]	// tmp371, i
	add	w0, w0, 1	// tmp370, tmp371,
	str	w0, [sp, 88]	// tmp370, i
.L42:
// problem116.c:90: for (int i = 0; i < rows; i++) free(grid[i]);
	ldr	w1, [sp, 88]	// tmp372, i
	ldr	w0, [sp, 92]	// tmp373, rows
	cmp	w1, w0	// tmp372, tmp373
	blt	.L43		//,
// problem116.c:91:     free(grid);
	ldr	x0, [sp, 104]	//, grid
	bl	free		//
// problem116.c:93:     printf("All tests passed!\n");
	adrp	x0, .LC9	// tmp374,
	add	x0, x0, :lo12:.LC9	//, tmp374,
	bl	puts		//
// problem116.c:94:     return 0;
	mov	w0, 0	// _193,
// problem116.c:95: }
	mov	w1, w0	// <retval>, _193
	adrp	x0, :got:__stack_chk_guard	// tmp377,
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]	// tmp376, tmp377,
	ldr	x3, [sp, 312]	// tmp379, D.4917
	ldr	x2, [x0]	// tmp380,
	subs	x3, x3, x2	// tmp379, tmp380
	mov	x2, 0	// tmp380
	beq	.L45		//,
	bl	__stack_chk_fail		//
.L45:
	mov	w0, w1	//, <retval>
	ldr	x19, [sp, 16]	//,
	ldp	x29, x30, [sp], 320	//,,,
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE7:
	.size	main, .-main
	.section	.rodata
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
	.section	.rodata
	.align	3
	.type	__PRETTY_FUNCTION__.0, %object
	.size	__PRETTY_FUNCTION__.0, 5
__PRETTY_FUNCTION__.0:
	.string	"main"
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
