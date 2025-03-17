	.arch armv8-a
	.file	"problem116.c"
// GNU C17 (Ubuntu 13.3.0-6ubuntu2~24.04) version 13.3.0 (aarch64-linux-gnu)
//	compiled by GNU C version 13.3.0, GMP version 6.3.0, MPFR version 4.2.1, MPC version 1.3.1, isl version isl-0.26-GMP

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
	sub	sp, sp, #320	//,,
	.cfi_def_cfa_offset 320
	stp	x29, x30, [sp, 288]	//,,
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	add	x29, sp, 288	//,,
	str	x19, [sp, 304]	//,
	.cfi_offset 19, -16
// problem116.c:19: int main() {
	adrp	x0, :got:__stack_chk_guard	// tmp199,
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]	// tmp199,
	ldr	x1, [x0]	// tmp376,
	str	x1, [sp, 280]	// tmp376, D.5506
	mov	x1, 0	// tmp376
// problem116.c:24:     rows = 3; cols = 4; capacity = 1;
	mov	w0, 3	// tmp200,
	str	w0, [sp, 60]	// tmp200, rows
// problem116.c:24:     rows = 3; cols = 4; capacity = 1;
	mov	w0, 4	// tmp201,
	str	w0, [sp, 64]	// tmp201, cols
// problem116.c:24:     rows = 3; cols = 4; capacity = 1;
	mov	w0, 1	// tmp202,
	str	w0, [sp, 68]	// tmp202, capacity
// problem116.c:25:     grid = (int **)malloc(rows * sizeof(int *));
	ldrsw	x0, [sp, 60]	// _1, rows
	lsl	x0, x0, 3	// _2, _1,
	bl	malloc		//
	str	x0, [sp, 72]	// tmp203, grid
// problem116.c:26:     int grid1_data[3][4] = {{0,0,1,0}, {0,1,0,0}, {1,1,1,1}};
	adrp	x0, .LC0	// tmp205,
	add	x1, x0, :lo12:.LC0	// tmp204, tmp205,
	add	x0, sp, 168	// tmp206,,
	ldp	q0, q1, [x1]	// tmp208, tmp209,
	stp	q0, q1, [x0]	// tmp208, tmp209, grid1_data
	ldr	q0, [x1, 32]	// tmp210,
	str	q0, [x0, 32]	// tmp210, grid1_data
// problem116.c:27:     for (int i = 0; i < rows; i++) {
	str	wzr, [sp]	//, i
// problem116.c:27:     for (int i = 0; i < rows; i++) {
	b	.L9		//
.L12:
// problem116.c:28:         grid[i] = (int *)malloc(cols * sizeof(int));
	ldrsw	x0, [sp, 64]	// _3, cols
	lsl	x2, x0, 2	// _4, _3,
// problem116.c:28:         grid[i] = (int *)malloc(cols * sizeof(int));
	ldrsw	x0, [sp]	// _5, i
	lsl	x0, x0, 3	// _6, _5,
	ldr	x1, [sp, 72]	// tmp211, grid
	add	x19, x1, x0	// _7, tmp211, _6
// problem116.c:28:         grid[i] = (int *)malloc(cols * sizeof(int));
	mov	x0, x2	//, _4
	bl	malloc		//
// problem116.c:28:         grid[i] = (int *)malloc(cols * sizeof(int));
	str	x0, [x19]	// _8, *_7
// problem116.c:29:         for (int j = 0; j < cols; j++) {
	str	wzr, [sp, 4]	//, j
// problem116.c:29:         for (int j = 0; j < cols; j++) {
	b	.L10		//
.L11:
// problem116.c:30:             grid[i][j] = grid1_data[i][j];
	ldrsw	x0, [sp]	// _9, i
	lsl	x0, x0, 3	// _10, _9,
	ldr	x1, [sp, 72]	// tmp213, grid
	add	x0, x1, x0	// _11, tmp213, _10
	ldr	x1, [x0]	// _12, *_11
// problem116.c:30:             grid[i][j] = grid1_data[i][j];
	ldrsw	x0, [sp, 4]	// _13, j
	lsl	x0, x0, 2	// _14, _13,
	add	x0, x1, x0	// _15, _12, _14
// problem116.c:30:             grid[i][j] = grid1_data[i][j];
	ldrsw	x1, [sp, 4]	// tmp214, j
	ldrsw	x2, [sp]	// tmp215, i
	lsl	x2, x2, 2	// tmp216, tmp215,
	add	x1, x2, x1	// tmp217, tmp216, tmp214
	lsl	x1, x1, 2	// tmp218, tmp217,
	add	x2, sp, 168	// tmp219,,
	ldr	w1, [x2, x1]	// _16, grid1_data[i_106][j_107]
// problem116.c:30:             grid[i][j] = grid1_data[i][j];
	str	w1, [x0]	// _16, *_15
// problem116.c:29:         for (int j = 0; j < cols; j++) {
	ldr	w0, [sp, 4]	// tmp221, j
	add	w0, w0, 1	// tmp220, tmp221,
	str	w0, [sp, 4]	// tmp220, j
.L10:
// problem116.c:29:         for (int j = 0; j < cols; j++) {
	ldr	w1, [sp, 4]	// tmp222, j
	ldr	w0, [sp, 64]	// tmp223, cols
	cmp	w1, w0	// tmp222, tmp223
	blt	.L11		//,
// problem116.c:27:     for (int i = 0; i < rows; i++) {
	ldr	w0, [sp]	// tmp225, i
	add	w0, w0, 1	// tmp224, tmp225,
	str	w0, [sp]	// tmp224, i
.L9:
// problem116.c:27:     for (int i = 0; i < rows; i++) {
	ldr	w1, [sp]	// tmp226, i
	ldr	w0, [sp, 60]	// tmp227, rows
	cmp	w1, w0	// tmp226, tmp227
	blt	.L12		//,
// problem116.c:33:     assert(func0(grid, rows, cols, capacity) == 6);
	ldr	w3, [sp, 68]	//, capacity
	ldr	w2, [sp, 64]	//, cols
	ldr	w1, [sp, 60]	//, rows
	ldr	x0, [sp, 72]	//, grid
	bl	func0		//
// problem116.c:33:     assert(func0(grid, rows, cols, capacity) == 6);
	cmp	w0, 6	// _17,
	beq	.L13		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp228,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp228,
	mov	w2, 33	//,
	adrp	x0, .LC3	// tmp229,
	add	x1, x0, :lo12:.LC3	//, tmp229,
	adrp	x0, .LC4	// tmp230,
	add	x0, x0, :lo12:.LC4	//, tmp230,
	bl	__assert_fail		//
.L13:
// problem116.c:34:     for (int i = 0; i < rows; i++) free(grid[i]);
	str	wzr, [sp, 8]	//, i
// problem116.c:34:     for (int i = 0; i < rows; i++) free(grid[i]);
	b	.L14		//
.L15:
// problem116.c:34:     for (int i = 0; i < rows; i++) free(grid[i]);
	ldrsw	x0, [sp, 8]	// _18, i
	lsl	x0, x0, 3	// _19, _18,
	ldr	x1, [sp, 72]	// tmp231, grid
	add	x0, x1, x0	// _20, tmp231, _19
// problem116.c:34:     for (int i = 0; i < rows; i++) free(grid[i]);
	ldr	x0, [x0]	// _21, *_20
	bl	free		//
// problem116.c:34:     for (int i = 0; i < rows; i++) free(grid[i]);
	ldr	w0, [sp, 8]	// tmp233, i
	add	w0, w0, 1	// tmp232, tmp233,
	str	w0, [sp, 8]	// tmp232, i
.L14:
// problem116.c:34:     for (int i = 0; i < rows; i++) free(grid[i]);
	ldr	w1, [sp, 8]	// tmp234, i
	ldr	w0, [sp, 60]	// tmp235, rows
	cmp	w1, w0	// tmp234, tmp235
	blt	.L15		//,
// problem116.c:35:     free(grid);
	ldr	x0, [sp, 72]	//, grid
	bl	free		//
// problem116.c:38:     rows = 4; cols = 4; capacity = 2;
	mov	w0, 4	// tmp236,
	str	w0, [sp, 60]	// tmp236, rows
// problem116.c:38:     rows = 4; cols = 4; capacity = 2;
	mov	w0, 4	// tmp237,
	str	w0, [sp, 64]	// tmp237, cols
// problem116.c:38:     rows = 4; cols = 4; capacity = 2;
	mov	w0, 2	// tmp238,
	str	w0, [sp, 68]	// tmp238, capacity
// problem116.c:39:     grid = (int **)malloc(rows * sizeof(int *));
	ldrsw	x0, [sp, 60]	// _22, rows
	lsl	x0, x0, 3	// _23, _22,
	bl	malloc		//
	str	x0, [sp, 72]	// tmp239, grid
// problem116.c:40:     int grid2_data[4][4] = {{0,0,1,1}, {0,0,0,0}, {1,1,1,1}, {0,1,1,1}};
	adrp	x0, .LC1	// tmp241,
	add	x1, x0, :lo12:.LC1	// tmp240, tmp241,
	add	x0, sp, 216	// tmp242,,
	ldp	q0, q1, [x1]	// tmp244, tmp245,
	stp	q0, q1, [x0]	// tmp244, tmp245, grid2_data
	ldp	q0, q1, [x1, 32]	// tmp246, tmp247,
	stp	q0, q1, [x0, 32]	// tmp246, tmp247, grid2_data
// problem116.c:41:     for (int i = 0; i < rows; i++) {
	str	wzr, [sp, 12]	//, i
// problem116.c:41:     for (int i = 0; i < rows; i++) {
	b	.L16		//
.L19:
// problem116.c:42:         grid[i] = (int *)malloc(cols * sizeof(int));
	ldrsw	x0, [sp, 64]	// _24, cols
	lsl	x2, x0, 2	// _25, _24,
// problem116.c:42:         grid[i] = (int *)malloc(cols * sizeof(int));
	ldrsw	x0, [sp, 12]	// _26, i
	lsl	x0, x0, 3	// _27, _26,
	ldr	x1, [sp, 72]	// tmp248, grid
	add	x19, x1, x0	// _28, tmp248, _27
// problem116.c:42:         grid[i] = (int *)malloc(cols * sizeof(int));
	mov	x0, x2	//, _25
	bl	malloc		//
// problem116.c:42:         grid[i] = (int *)malloc(cols * sizeof(int));
	str	x0, [x19]	// _29, *_28
// problem116.c:43:         for (int j = 0; j < cols; j++) {
	str	wzr, [sp, 16]	//, j
// problem116.c:43:         for (int j = 0; j < cols; j++) {
	b	.L17		//
.L18:
// problem116.c:44:             grid[i][j] = grid2_data[i][j];
	ldrsw	x0, [sp, 12]	// _30, i
	lsl	x0, x0, 3	// _31, _30,
	ldr	x1, [sp, 72]	// tmp250, grid
	add	x0, x1, x0	// _32, tmp250, _31
	ldr	x1, [x0]	// _33, *_32
// problem116.c:44:             grid[i][j] = grid2_data[i][j];
	ldrsw	x0, [sp, 16]	// _34, j
	lsl	x0, x0, 2	// _35, _34,
	add	x0, x1, x0	// _36, _33, _35
// problem116.c:44:             grid[i][j] = grid2_data[i][j];
	ldrsw	x1, [sp, 16]	// tmp251, j
	ldrsw	x2, [sp, 12]	// tmp252, i
	lsl	x2, x2, 2	// tmp253, tmp252,
	add	x1, x2, x1	// tmp254, tmp253, tmp251
	lsl	x1, x1, 2	// tmp255, tmp254,
	add	x2, sp, 216	// tmp256,,
	ldr	w1, [x2, x1]	// _37, grid2_data[i_109][j_110]
// problem116.c:44:             grid[i][j] = grid2_data[i][j];
	str	w1, [x0]	// _37, *_36
// problem116.c:43:         for (int j = 0; j < cols; j++) {
	ldr	w0, [sp, 16]	// tmp258, j
	add	w0, w0, 1	// tmp257, tmp258,
	str	w0, [sp, 16]	// tmp257, j
.L17:
// problem116.c:43:         for (int j = 0; j < cols; j++) {
	ldr	w1, [sp, 16]	// tmp259, j
	ldr	w0, [sp, 64]	// tmp260, cols
	cmp	w1, w0	// tmp259, tmp260
	blt	.L18		//,
// problem116.c:41:     for (int i = 0; i < rows; i++) {
	ldr	w0, [sp, 12]	// tmp262, i
	add	w0, w0, 1	// tmp261, tmp262,
	str	w0, [sp, 12]	// tmp261, i
.L16:
// problem116.c:41:     for (int i = 0; i < rows; i++) {
	ldr	w1, [sp, 12]	// tmp263, i
	ldr	w0, [sp, 60]	// tmp264, rows
	cmp	w1, w0	// tmp263, tmp264
	blt	.L19		//,
// problem116.c:47:     assert(func0(grid, rows, cols, capacity) == 5);
	ldr	w3, [sp, 68]	//, capacity
	ldr	w2, [sp, 64]	//, cols
	ldr	w1, [sp, 60]	//, rows
	ldr	x0, [sp, 72]	//, grid
	bl	func0		//
// problem116.c:47:     assert(func0(grid, rows, cols, capacity) == 5);
	cmp	w0, 5	// _38,
	beq	.L20		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp265,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp265,
	mov	w2, 47	//,
	adrp	x0, .LC3	// tmp266,
	add	x1, x0, :lo12:.LC3	//, tmp266,
	adrp	x0, .LC5	// tmp267,
	add	x0, x0, :lo12:.LC5	//, tmp267,
	bl	__assert_fail		//
.L20:
// problem116.c:48:     for (int i = 0; i < rows; i++) free(grid[i]);
	str	wzr, [sp, 20]	//, i
// problem116.c:48:     for (int i = 0; i < rows; i++) free(grid[i]);
	b	.L21		//
.L22:
// problem116.c:48:     for (int i = 0; i < rows; i++) free(grid[i]);
	ldrsw	x0, [sp, 20]	// _39, i
	lsl	x0, x0, 3	// _40, _39,
	ldr	x1, [sp, 72]	// tmp268, grid
	add	x0, x1, x0	// _41, tmp268, _40
// problem116.c:48:     for (int i = 0; i < rows; i++) free(grid[i]);
	ldr	x0, [x0]	// _42, *_41
	bl	free		//
// problem116.c:48:     for (int i = 0; i < rows; i++) free(grid[i]);
	ldr	w0, [sp, 20]	// tmp270, i
	add	w0, w0, 1	// tmp269, tmp270,
	str	w0, [sp, 20]	// tmp269, i
.L21:
// problem116.c:48:     for (int i = 0; i < rows; i++) free(grid[i]);
	ldr	w1, [sp, 20]	// tmp271, i
	ldr	w0, [sp, 60]	// tmp272, rows
	cmp	w1, w0	// tmp271, tmp272
	blt	.L22		//,
// problem116.c:49:     free(grid);
	ldr	x0, [sp, 72]	//, grid
	bl	free		//
// problem116.c:52:     rows = 2; cols = 3; capacity = 5;
	mov	w0, 2	// tmp273,
	str	w0, [sp, 60]	// tmp273, rows
// problem116.c:52:     rows = 2; cols = 3; capacity = 5;
	mov	w0, 3	// tmp274,
	str	w0, [sp, 64]	// tmp274, cols
// problem116.c:52:     rows = 2; cols = 3; capacity = 5;
	mov	w0, 5	// tmp275,
	str	w0, [sp, 68]	// tmp275, capacity
// problem116.c:53:     grid = (int **)malloc(rows * sizeof(int *));
	ldrsw	x0, [sp, 60]	// _43, rows
	lsl	x0, x0, 3	// _44, _43,
	bl	malloc		//
	str	x0, [sp, 72]	// tmp276, grid
// problem116.c:54:     int grid3_data[2][3] = {{0,0,0}, {0,0,0}};
	stp	xzr, xzr, [sp, 80]	// grid3_data
	str	xzr, [sp, 96]	//, grid3_data
// problem116.c:55:     for (int i = 0; i < rows; i++) {
	str	wzr, [sp, 24]	//, i
// problem116.c:55:     for (int i = 0; i < rows; i++) {
	b	.L23		//
.L26:
// problem116.c:56:         grid[i] = (int *)malloc(cols * sizeof(int));
	ldrsw	x0, [sp, 64]	// _45, cols
	lsl	x2, x0, 2	// _46, _45,
// problem116.c:56:         grid[i] = (int *)malloc(cols * sizeof(int));
	ldrsw	x0, [sp, 24]	// _47, i
	lsl	x0, x0, 3	// _48, _47,
	ldr	x1, [sp, 72]	// tmp277, grid
	add	x19, x1, x0	// _49, tmp277, _48
// problem116.c:56:         grid[i] = (int *)malloc(cols * sizeof(int));
	mov	x0, x2	//, _46
	bl	malloc		//
// problem116.c:56:         grid[i] = (int *)malloc(cols * sizeof(int));
	str	x0, [x19]	// _50, *_49
// problem116.c:57:         for (int j = 0; j < cols; j++) {
	str	wzr, [sp, 28]	//, j
// problem116.c:57:         for (int j = 0; j < cols; j++) {
	b	.L24		//
.L25:
// problem116.c:58:             grid[i][j] = grid3_data[i][j];
	ldrsw	x0, [sp, 24]	// _51, i
	lsl	x0, x0, 3	// _52, _51,
	ldr	x1, [sp, 72]	// tmp279, grid
	add	x0, x1, x0	// _53, tmp279, _52
	ldr	x1, [x0]	// _54, *_53
// problem116.c:58:             grid[i][j] = grid3_data[i][j];
	ldrsw	x0, [sp, 28]	// _55, j
	lsl	x0, x0, 2	// _56, _55,
	add	x2, x1, x0	// _57, _54, _56
// problem116.c:58:             grid[i][j] = grid3_data[i][j];
	ldrsw	x3, [sp, 28]	// tmp280, j
	ldrsw	x1, [sp, 24]	// tmp281, i
	mov	x0, x1	// tmp282, tmp281
	lsl	x0, x0, 1	// tmp283, tmp282,
	add	x0, x0, x1	// tmp282, tmp282, tmp281
	add	x0, x0, x3	// tmp284, tmp282, tmp280
	lsl	x0, x0, 2	// tmp285, tmp284,
	add	x1, sp, 80	// tmp286,,
	ldr	w0, [x1, x0]	// _58, grid3_data[i_112][j_113]
// problem116.c:58:             grid[i][j] = grid3_data[i][j];
	str	w0, [x2]	// _58, *_57
// problem116.c:57:         for (int j = 0; j < cols; j++) {
	ldr	w0, [sp, 28]	// tmp288, j
	add	w0, w0, 1	// tmp287, tmp288,
	str	w0, [sp, 28]	// tmp287, j
.L24:
// problem116.c:57:         for (int j = 0; j < cols; j++) {
	ldr	w1, [sp, 28]	// tmp289, j
	ldr	w0, [sp, 64]	// tmp290, cols
	cmp	w1, w0	// tmp289, tmp290
	blt	.L25		//,
// problem116.c:55:     for (int i = 0; i < rows; i++) {
	ldr	w0, [sp, 24]	// tmp292, i
	add	w0, w0, 1	// tmp291, tmp292,
	str	w0, [sp, 24]	// tmp291, i
.L23:
// problem116.c:55:     for (int i = 0; i < rows; i++) {
	ldr	w1, [sp, 24]	// tmp293, i
	ldr	w0, [sp, 60]	// tmp294, rows
	cmp	w1, w0	// tmp293, tmp294
	blt	.L26		//,
// problem116.c:61:     assert(func0(grid, rows, cols, capacity) == 0);
	ldr	w3, [sp, 68]	//, capacity
	ldr	w2, [sp, 64]	//, cols
	ldr	w1, [sp, 60]	//, rows
	ldr	x0, [sp, 72]	//, grid
	bl	func0		//
// problem116.c:61:     assert(func0(grid, rows, cols, capacity) == 0);
	cmp	w0, 0	// _59,
	beq	.L27		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp295,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp295,
	mov	w2, 61	//,
	adrp	x0, .LC3	// tmp296,
	add	x1, x0, :lo12:.LC3	//, tmp296,
	adrp	x0, .LC6	// tmp297,
	add	x0, x0, :lo12:.LC6	//, tmp297,
	bl	__assert_fail		//
.L27:
// problem116.c:62:     for (int i = 0; i < rows; i++) free(grid[i]);
	str	wzr, [sp, 32]	//, i
// problem116.c:62:     for (int i = 0; i < rows; i++) free(grid[i]);
	b	.L28		//
.L29:
// problem116.c:62:     for (int i = 0; i < rows; i++) free(grid[i]);
	ldrsw	x0, [sp, 32]	// _60, i
	lsl	x0, x0, 3	// _61, _60,
	ldr	x1, [sp, 72]	// tmp298, grid
	add	x0, x1, x0	// _62, tmp298, _61
// problem116.c:62:     for (int i = 0; i < rows; i++) free(grid[i]);
	ldr	x0, [x0]	// _63, *_62
	bl	free		//
// problem116.c:62:     for (int i = 0; i < rows; i++) free(grid[i]);
	ldr	w0, [sp, 32]	// tmp300, i
	add	w0, w0, 1	// tmp299, tmp300,
	str	w0, [sp, 32]	// tmp299, i
.L28:
// problem116.c:62:     for (int i = 0; i < rows; i++) free(grid[i]);
	ldr	w1, [sp, 32]	// tmp301, i
	ldr	w0, [sp, 60]	// tmp302, rows
	cmp	w1, w0	// tmp301, tmp302
	blt	.L29		//,
// problem116.c:63:     free(grid);
	ldr	x0, [sp, 72]	//, grid
	bl	free		//
// problem116.c:66:     rows = 2; cols = 4; capacity = 2;
	mov	w0, 2	// tmp303,
	str	w0, [sp, 60]	// tmp303, rows
// problem116.c:66:     rows = 2; cols = 4; capacity = 2;
	mov	w0, 4	// tmp304,
	str	w0, [sp, 64]	// tmp304, cols
// problem116.c:66:     rows = 2; cols = 4; capacity = 2;
	mov	w0, 2	// tmp305,
	str	w0, [sp, 68]	// tmp305, capacity
// problem116.c:67:     grid = (int **)malloc(rows * sizeof(int *));
	ldrsw	x0, [sp, 60]	// _64, rows
	lsl	x0, x0, 3	// _65, _64,
	bl	malloc		//
	str	x0, [sp, 72]	// tmp306, grid
// problem116.c:68:     int grid4_data[2][4] = {{1,1,1,1}, {1,1,1,1}};
	adrp	x0, .LC2	// tmp308,
	add	x1, x0, :lo12:.LC2	// tmp307, tmp308,
	add	x0, sp, 104	// tmp309,,
	ldp	q0, q1, [x1]	// tmp311, tmp312,
	stp	q0, q1, [x0]	// tmp311, tmp312, grid4_data
// problem116.c:69:     for (int i = 0; i < rows; i++) {
	str	wzr, [sp, 36]	//, i
// problem116.c:69:     for (int i = 0; i < rows; i++) {
	b	.L30		//
.L33:
// problem116.c:70:         grid[i] = (int *)malloc(cols * sizeof(int));
	ldrsw	x0, [sp, 64]	// _66, cols
	lsl	x2, x0, 2	// _67, _66,
// problem116.c:70:         grid[i] = (int *)malloc(cols * sizeof(int));
	ldrsw	x0, [sp, 36]	// _68, i
	lsl	x0, x0, 3	// _69, _68,
	ldr	x1, [sp, 72]	// tmp313, grid
	add	x19, x1, x0	// _70, tmp313, _69
// problem116.c:70:         grid[i] = (int *)malloc(cols * sizeof(int));
	mov	x0, x2	//, _67
	bl	malloc		//
// problem116.c:70:         grid[i] = (int *)malloc(cols * sizeof(int));
	str	x0, [x19]	// _71, *_70
// problem116.c:71:         for (int j = 0; j < cols; j++) {
	str	wzr, [sp, 40]	//, j
// problem116.c:71:         for (int j = 0; j < cols; j++) {
	b	.L31		//
.L32:
// problem116.c:72:             grid[i][j] = grid4_data[i][j];
	ldrsw	x0, [sp, 36]	// _72, i
	lsl	x0, x0, 3	// _73, _72,
	ldr	x1, [sp, 72]	// tmp315, grid
	add	x0, x1, x0	// _74, tmp315, _73
	ldr	x1, [x0]	// _75, *_74
// problem116.c:72:             grid[i][j] = grid4_data[i][j];
	ldrsw	x0, [sp, 40]	// _76, j
	lsl	x0, x0, 2	// _77, _76,
	add	x0, x1, x0	// _78, _75, _77
// problem116.c:72:             grid[i][j] = grid4_data[i][j];
	ldrsw	x1, [sp, 40]	// tmp316, j
	ldrsw	x2, [sp, 36]	// tmp317, i
	lsl	x2, x2, 2	// tmp318, tmp317,
	add	x1, x2, x1	// tmp319, tmp318, tmp316
	lsl	x1, x1, 2	// tmp320, tmp319,
	add	x2, sp, 104	// tmp321,,
	ldr	w1, [x2, x1]	// _79, grid4_data[i_115][j_116]
// problem116.c:72:             grid[i][j] = grid4_data[i][j];
	str	w1, [x0]	// _79, *_78
// problem116.c:71:         for (int j = 0; j < cols; j++) {
	ldr	w0, [sp, 40]	// tmp323, j
	add	w0, w0, 1	// tmp322, tmp323,
	str	w0, [sp, 40]	// tmp322, j
.L31:
// problem116.c:71:         for (int j = 0; j < cols; j++) {
	ldr	w1, [sp, 40]	// tmp324, j
	ldr	w0, [sp, 64]	// tmp325, cols
	cmp	w1, w0	// tmp324, tmp325
	blt	.L32		//,
// problem116.c:69:     for (int i = 0; i < rows; i++) {
	ldr	w0, [sp, 36]	// tmp327, i
	add	w0, w0, 1	// tmp326, tmp327,
	str	w0, [sp, 36]	// tmp326, i
.L30:
// problem116.c:69:     for (int i = 0; i < rows; i++) {
	ldr	w1, [sp, 36]	// tmp328, i
	ldr	w0, [sp, 60]	// tmp329, rows
	cmp	w1, w0	// tmp328, tmp329
	blt	.L33		//,
// problem116.c:75:     assert(func0(grid, rows, cols, capacity) == 4);
	ldr	w3, [sp, 68]	//, capacity
	ldr	w2, [sp, 64]	//, cols
	ldr	w1, [sp, 60]	//, rows
	ldr	x0, [sp, 72]	//, grid
	bl	func0		//
// problem116.c:75:     assert(func0(grid, rows, cols, capacity) == 4);
	cmp	w0, 4	// _80,
	beq	.L34		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp330,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp330,
	mov	w2, 75	//,
	adrp	x0, .LC3	// tmp331,
	add	x1, x0, :lo12:.LC3	//, tmp331,
	adrp	x0, .LC7	// tmp332,
	add	x0, x0, :lo12:.LC7	//, tmp332,
	bl	__assert_fail		//
.L34:
// problem116.c:76:     for (int i = 0; i < rows; i++) free(grid[i]);
	str	wzr, [sp, 44]	//, i
// problem116.c:76:     for (int i = 0; i < rows; i++) free(grid[i]);
	b	.L35		//
.L36:
// problem116.c:76:     for (int i = 0; i < rows; i++) free(grid[i]);
	ldrsw	x0, [sp, 44]	// _81, i
	lsl	x0, x0, 3	// _82, _81,
	ldr	x1, [sp, 72]	// tmp333, grid
	add	x0, x1, x0	// _83, tmp333, _82
// problem116.c:76:     for (int i = 0; i < rows; i++) free(grid[i]);
	ldr	x0, [x0]	// _84, *_83
	bl	free		//
// problem116.c:76:     for (int i = 0; i < rows; i++) free(grid[i]);
	ldr	w0, [sp, 44]	// tmp335, i
	add	w0, w0, 1	// tmp334, tmp335,
	str	w0, [sp, 44]	// tmp334, i
.L35:
// problem116.c:76:     for (int i = 0; i < rows; i++) free(grid[i]);
	ldr	w1, [sp, 44]	// tmp336, i
	ldr	w0, [sp, 60]	// tmp337, rows
	cmp	w1, w0	// tmp336, tmp337
	blt	.L36		//,
// problem116.c:77:     free(grid);
	ldr	x0, [sp, 72]	//, grid
	bl	free		//
// problem116.c:80:     rows = 2; cols = 4; capacity = 9;
	mov	w0, 2	// tmp338,
	str	w0, [sp, 60]	// tmp338, rows
// problem116.c:80:     rows = 2; cols = 4; capacity = 9;
	mov	w0, 4	// tmp339,
	str	w0, [sp, 64]	// tmp339, cols
// problem116.c:80:     rows = 2; cols = 4; capacity = 9;
	mov	w0, 9	// tmp340,
	str	w0, [sp, 68]	// tmp340, capacity
// problem116.c:81:     grid = (int **)malloc(rows * sizeof(int *));
	ldrsw	x0, [sp, 60]	// _85, rows
	lsl	x0, x0, 3	// _86, _85,
	bl	malloc		//
	str	x0, [sp, 72]	// tmp341, grid
// problem116.c:82:     int grid5_data[2][4] = {{1,1,1,1}, {1,1,1,1}};
	adrp	x0, .LC2	// tmp343,
	add	x1, x0, :lo12:.LC2	// tmp342, tmp343,
	add	x0, sp, 136	// tmp344,,
	ldp	q0, q1, [x1]	// tmp346, tmp347,
	stp	q0, q1, [x0]	// tmp346, tmp347, grid5_data
// problem116.c:83:     for (int i = 0; i < rows; i++) {
	str	wzr, [sp, 48]	//, i
// problem116.c:83:     for (int i = 0; i < rows; i++) {
	b	.L37		//
.L40:
// problem116.c:84:         grid[i] = (int *)malloc(cols * sizeof(int));
	ldrsw	x0, [sp, 64]	// _87, cols
	lsl	x2, x0, 2	// _88, _87,
// problem116.c:84:         grid[i] = (int *)malloc(cols * sizeof(int));
	ldrsw	x0, [sp, 48]	// _89, i
	lsl	x0, x0, 3	// _90, _89,
	ldr	x1, [sp, 72]	// tmp348, grid
	add	x19, x1, x0	// _91, tmp348, _90
// problem116.c:84:         grid[i] = (int *)malloc(cols * sizeof(int));
	mov	x0, x2	//, _88
	bl	malloc		//
// problem116.c:84:         grid[i] = (int *)malloc(cols * sizeof(int));
	str	x0, [x19]	// _92, *_91
// problem116.c:85:         for (int j = 0; j < cols; j++) {
	str	wzr, [sp, 52]	//, j
// problem116.c:85:         for (int j = 0; j < cols; j++) {
	b	.L38		//
.L39:
// problem116.c:86:             grid[i][j] = grid5_data[i][j];
	ldrsw	x0, [sp, 48]	// _93, i
	lsl	x0, x0, 3	// _94, _93,
	ldr	x1, [sp, 72]	// tmp350, grid
	add	x0, x1, x0	// _95, tmp350, _94
	ldr	x1, [x0]	// _96, *_95
// problem116.c:86:             grid[i][j] = grid5_data[i][j];
	ldrsw	x0, [sp, 52]	// _97, j
	lsl	x0, x0, 2	// _98, _97,
	add	x0, x1, x0	// _99, _96, _98
// problem116.c:86:             grid[i][j] = grid5_data[i][j];
	ldrsw	x1, [sp, 52]	// tmp351, j
	ldrsw	x2, [sp, 48]	// tmp352, i
	lsl	x2, x2, 2	// tmp353, tmp352,
	add	x1, x2, x1	// tmp354, tmp353, tmp351
	lsl	x1, x1, 2	// tmp355, tmp354,
	add	x2, sp, 136	// tmp356,,
	ldr	w1, [x2, x1]	// _100, grid5_data[i_118][j_119]
// problem116.c:86:             grid[i][j] = grid5_data[i][j];
	str	w1, [x0]	// _100, *_99
// problem116.c:85:         for (int j = 0; j < cols; j++) {
	ldr	w0, [sp, 52]	// tmp358, j
	add	w0, w0, 1	// tmp357, tmp358,
	str	w0, [sp, 52]	// tmp357, j
.L38:
// problem116.c:85:         for (int j = 0; j < cols; j++) {
	ldr	w1, [sp, 52]	// tmp359, j
	ldr	w0, [sp, 64]	// tmp360, cols
	cmp	w1, w0	// tmp359, tmp360
	blt	.L39		//,
// problem116.c:83:     for (int i = 0; i < rows; i++) {
	ldr	w0, [sp, 48]	// tmp362, i
	add	w0, w0, 1	// tmp361, tmp362,
	str	w0, [sp, 48]	// tmp361, i
.L37:
// problem116.c:83:     for (int i = 0; i < rows; i++) {
	ldr	w1, [sp, 48]	// tmp363, i
	ldr	w0, [sp, 60]	// tmp364, rows
	cmp	w1, w0	// tmp363, tmp364
	blt	.L40		//,
// problem116.c:89:     assert(func0(grid, rows, cols, capacity) == 2);
	ldr	w3, [sp, 68]	//, capacity
	ldr	w2, [sp, 64]	//, cols
	ldr	w1, [sp, 60]	//, rows
	ldr	x0, [sp, 72]	//, grid
	bl	func0		//
// problem116.c:89:     assert(func0(grid, rows, cols, capacity) == 2);
	cmp	w0, 2	// _101,
	beq	.L41		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp365,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp365,
	mov	w2, 89	//,
	adrp	x0, .LC3	// tmp366,
	add	x1, x0, :lo12:.LC3	//, tmp366,
	adrp	x0, .LC8	// tmp367,
	add	x0, x0, :lo12:.LC8	//, tmp367,
	bl	__assert_fail		//
.L41:
// problem116.c:90: for (int i = 0; i < rows; i++) free(grid[i]);
	str	wzr, [sp, 56]	//, i
// problem116.c:90: for (int i = 0; i < rows; i++) free(grid[i]);
	b	.L42		//
.L43:
// problem116.c:90: for (int i = 0; i < rows; i++) free(grid[i]);
	ldrsw	x0, [sp, 56]	// _102, i
	lsl	x0, x0, 3	// _103, _102,
	ldr	x1, [sp, 72]	// tmp368, grid
	add	x0, x1, x0	// _104, tmp368, _103
// problem116.c:90: for (int i = 0; i < rows; i++) free(grid[i]);
	ldr	x0, [x0]	// _105, *_104
	bl	free		//
// problem116.c:90: for (int i = 0; i < rows; i++) free(grid[i]);
	ldr	w0, [sp, 56]	// tmp370, i
	add	w0, w0, 1	// tmp369, tmp370,
	str	w0, [sp, 56]	// tmp369, i
.L42:
// problem116.c:90: for (int i = 0; i < rows; i++) free(grid[i]);
	ldr	w1, [sp, 56]	// tmp371, i
	ldr	w0, [sp, 60]	// tmp372, rows
	cmp	w1, w0	// tmp371, tmp372
	blt	.L43		//,
// problem116.c:91:     free(grid);
	ldr	x0, [sp, 72]	//, grid
	bl	free		//
// problem116.c:93:     printf("All tests passed!\n");
	adrp	x0, .LC9	// tmp373,
	add	x0, x0, :lo12:.LC9	//, tmp373,
	bl	puts		//
// problem116.c:94:     return 0;
	mov	w0, 0	// _193,
// problem116.c:95: }
	mov	w1, w0	// <retval>, _193
	adrp	x0, :got:__stack_chk_guard	// tmp375,
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]	// tmp375,
	ldr	x3, [sp, 280]	// tmp377, D.5506
	ldr	x2, [x0]	// tmp378,
	subs	x3, x3, x2	// tmp377, tmp378
	mov	x2, 0	// tmp378
	beq	.L45		//,
	bl	__stack_chk_fail		//
.L45:
	mov	w0, w1	//, <retval>
	ldr	x19, [sp, 304]	//,
	ldp	x29, x30, [sp, 288]	//,,
	add	sp, sp, 320	//,,
	.cfi_restore 29
	.cfi_restore 30
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
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
