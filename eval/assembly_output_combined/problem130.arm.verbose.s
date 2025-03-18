	.arch armv8-a
	.file	"problem130.c"
// GNU C17 (Ubuntu 13.3.0-6ubuntu2~24.04) version 13.3.0 (aarch64-linux-gnu)
//	compiled by GNU C version 13.3.0, GMP version 6.3.0, MPFR version 4.2.1, MPC version 1.3.1, isl version isl-0.26-GMP

// GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
// options passed: -mlittle-endian -mabi=lp64 -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection
	.text
	.align	2
	.global	func0
	.type	func0, %function
func0:
.LFB6:
	.cfi_startproc
	stp	x29, x30, [sp, -80]!	//,,,
	.cfi_def_cfa_offset 80
	.cfi_offset 29, -80
	.cfi_offset 30, -72
	mov	x29, sp	//,
	str	x0, [sp, 40]	// grid, grid
	str	w1, [sp, 36]	// N, N
	str	w2, [sp, 32]	// k, k
	str	x3, [sp, 24]	// returnSize, returnSize
// problem130.c:6:     for (i = 0; i < N; i++)
	str	wzr, [sp, 52]	//, i
// problem130.c:6:     for (i = 0; i < N; i++)
	b	.L2		//
.L6:
// problem130.c:7:         for (j = 0; j < N; j++)
	str	wzr, [sp, 56]	//, j
// problem130.c:7:         for (j = 0; j < N; j++)
	b	.L3		//
.L5:
// problem130.c:8:             if (grid[i][j] == 1) {
	ldrsw	x0, [sp, 52]	// _1, i
	lsl	x0, x0, 3	// _2, _1,
	ldr	x1, [sp, 40]	// tmp182, grid
	add	x0, x1, x0	// _3, tmp182, _2
	ldr	x1, [x0]	// _4, *_3
// problem130.c:8:             if (grid[i][j] == 1) {
	ldrsw	x0, [sp, 56]	// _5, j
	lsl	x0, x0, 2	// _6, _5,
	add	x0, x1, x0	// _7, _4, _6
	ldr	w0, [x0]	// _8, *_7
// problem130.c:8:             if (grid[i][j] == 1) {
	cmp	w0, 1	// _8,
	bne	.L4		//,
// problem130.c:9:                 x = i;
	ldr	w0, [sp, 52]	// tmp183, i
	str	w0, [sp, 60]	// tmp183, x
// problem130.c:10:                 y = j;
	ldr	w0, [sp, 56]	// tmp184, j
	str	w0, [sp, 64]	// tmp184, y
.L4:
// problem130.c:7:         for (j = 0; j < N; j++)
	ldr	w0, [sp, 56]	// tmp186, j
	add	w0, w0, 1	// tmp185, tmp186,
	str	w0, [sp, 56]	// tmp185, j
.L3:
// problem130.c:7:         for (j = 0; j < N; j++)
	ldr	w1, [sp, 56]	// tmp187, j
	ldr	w0, [sp, 36]	// tmp188, N
	cmp	w1, w0	// tmp187, tmp188
	blt	.L5		//,
// problem130.c:6:     for (i = 0; i < N; i++)
	ldr	w0, [sp, 52]	// tmp190, i
	add	w0, w0, 1	// tmp189, tmp190,
	str	w0, [sp, 52]	// tmp189, i
.L2:
// problem130.c:6:     for (i = 0; i < N; i++)
	ldr	w1, [sp, 52]	// tmp191, i
	ldr	w0, [sp, 36]	// tmp192, N
	cmp	w1, w0	// tmp191, tmp192
	blt	.L6		//,
// problem130.c:12:     min = N * N;
	ldr	w0, [sp, 36]	// tmp194, N
	mul	w0, w0, w0	// tmp193, tmp194, tmp194
	str	w0, [sp, 68]	// tmp193, min
// problem130.c:13:     if (x > 0 && grid[x - 1][y] < min) min = grid[x - 1][y];
	ldr	w0, [sp, 60]	// tmp195, x
	cmp	w0, 0	// tmp195,
	ble	.L7		//,
// problem130.c:13:     if (x > 0 && grid[x - 1][y] < min) min = grid[x - 1][y];
	ldrsw	x0, [sp, 60]	// _9, x
	lsl	x0, x0, 3	// _10, _9,
	sub	x0, x0, #8	// _11, _10,
	ldr	x1, [sp, 40]	// tmp196, grid
	add	x0, x1, x0	// _12, tmp196, _11
	ldr	x1, [x0]	// _13, *_12
// problem130.c:13:     if (x > 0 && grid[x - 1][y] < min) min = grid[x - 1][y];
	ldrsw	x0, [sp, 64]	// _14, y
	lsl	x0, x0, 2	// _15, _14,
	add	x0, x1, x0	// _16, _13, _15
	ldr	w0, [x0]	// _17, *_16
// problem130.c:13:     if (x > 0 && grid[x - 1][y] < min) min = grid[x - 1][y];
	ldr	w1, [sp, 68]	// tmp197, min
	cmp	w1, w0	// tmp197, _17
	ble	.L7		//,
// problem130.c:13:     if (x > 0 && grid[x - 1][y] < min) min = grid[x - 1][y];
	ldrsw	x0, [sp, 60]	// _18, x
	lsl	x0, x0, 3	// _19, _18,
	sub	x0, x0, #8	// _20, _19,
	ldr	x1, [sp, 40]	// tmp198, grid
	add	x0, x1, x0	// _21, tmp198, _20
	ldr	x1, [x0]	// _22, *_21
// problem130.c:13:     if (x > 0 && grid[x - 1][y] < min) min = grid[x - 1][y];
	ldrsw	x0, [sp, 64]	// _23, y
	lsl	x0, x0, 2	// _24, _23,
	add	x0, x1, x0	// _25, _22, _24
// problem130.c:13:     if (x > 0 && grid[x - 1][y] < min) min = grid[x - 1][y];
	ldr	w0, [x0]	// tmp199, *_25
	str	w0, [sp, 68]	// tmp199, min
.L7:
// problem130.c:14:     if (x < N - 1 && grid[x + 1][y] < min) min = grid[x + 1][y];
	ldr	w0, [sp, 36]	// tmp200, N
	sub	w0, w0, #1	// _26, tmp200,
// problem130.c:14:     if (x < N - 1 && grid[x + 1][y] < min) min = grid[x + 1][y];
	ldr	w1, [sp, 60]	// tmp201, x
	cmp	w1, w0	// tmp201, _26
	bge	.L8		//,
// problem130.c:14:     if (x < N - 1 && grid[x + 1][y] < min) min = grid[x + 1][y];
	ldrsw	x0, [sp, 60]	// _27, x
	add	x0, x0, 1	// _28, _27,
	lsl	x0, x0, 3	// _29, _28,
	ldr	x1, [sp, 40]	// tmp202, grid
	add	x0, x1, x0	// _30, tmp202, _29
	ldr	x1, [x0]	// _31, *_30
// problem130.c:14:     if (x < N - 1 && grid[x + 1][y] < min) min = grid[x + 1][y];
	ldrsw	x0, [sp, 64]	// _32, y
	lsl	x0, x0, 2	// _33, _32,
	add	x0, x1, x0	// _34, _31, _33
	ldr	w0, [x0]	// _35, *_34
// problem130.c:14:     if (x < N - 1 && grid[x + 1][y] < min) min = grid[x + 1][y];
	ldr	w1, [sp, 68]	// tmp203, min
	cmp	w1, w0	// tmp203, _35
	ble	.L8		//,
// problem130.c:14:     if (x < N - 1 && grid[x + 1][y] < min) min = grid[x + 1][y];
	ldrsw	x0, [sp, 60]	// _36, x
	add	x0, x0, 1	// _37, _36,
	lsl	x0, x0, 3	// _38, _37,
	ldr	x1, [sp, 40]	// tmp204, grid
	add	x0, x1, x0	// _39, tmp204, _38
	ldr	x1, [x0]	// _40, *_39
// problem130.c:14:     if (x < N - 1 && grid[x + 1][y] < min) min = grid[x + 1][y];
	ldrsw	x0, [sp, 64]	// _41, y
	lsl	x0, x0, 2	// _42, _41,
	add	x0, x1, x0	// _43, _40, _42
// problem130.c:14:     if (x < N - 1 && grid[x + 1][y] < min) min = grid[x + 1][y];
	ldr	w0, [x0]	// tmp205, *_43
	str	w0, [sp, 68]	// tmp205, min
.L8:
// problem130.c:15:     if (y > 0 && grid[x][y - 1] < min) min = grid[x][y - 1];
	ldr	w0, [sp, 64]	// tmp206, y
	cmp	w0, 0	// tmp206,
	ble	.L9		//,
// problem130.c:15:     if (y > 0 && grid[x][y - 1] < min) min = grid[x][y - 1];
	ldrsw	x0, [sp, 60]	// _44, x
	lsl	x0, x0, 3	// _45, _44,
	ldr	x1, [sp, 40]	// tmp207, grid
	add	x0, x1, x0	// _46, tmp207, _45
	ldr	x1, [x0]	// _47, *_46
// problem130.c:15:     if (y > 0 && grid[x][y - 1] < min) min = grid[x][y - 1];
	ldrsw	x0, [sp, 64]	// _48, y
	lsl	x0, x0, 2	// _49, _48,
	sub	x0, x0, #4	// _50, _49,
	add	x0, x1, x0	// _51, _47, _50
	ldr	w0, [x0]	// _52, *_51
// problem130.c:15:     if (y > 0 && grid[x][y - 1] < min) min = grid[x][y - 1];
	ldr	w1, [sp, 68]	// tmp208, min
	cmp	w1, w0	// tmp208, _52
	ble	.L9		//,
// problem130.c:15:     if (y > 0 && grid[x][y - 1] < min) min = grid[x][y - 1];
	ldrsw	x0, [sp, 60]	// _53, x
	lsl	x0, x0, 3	// _54, _53,
	ldr	x1, [sp, 40]	// tmp209, grid
	add	x0, x1, x0	// _55, tmp209, _54
	ldr	x1, [x0]	// _56, *_55
// problem130.c:15:     if (y > 0 && grid[x][y - 1] < min) min = grid[x][y - 1];
	ldrsw	x0, [sp, 64]	// _57, y
	lsl	x0, x0, 2	// _58, _57,
	sub	x0, x0, #4	// _59, _58,
	add	x0, x1, x0	// _60, _56, _59
// problem130.c:15:     if (y > 0 && grid[x][y - 1] < min) min = grid[x][y - 1];
	ldr	w0, [x0]	// tmp210, *_60
	str	w0, [sp, 68]	// tmp210, min
.L9:
// problem130.c:16:     if (y < N - 1 && grid[x][y + 1] < min) min = grid[x][y + 1];
	ldr	w0, [sp, 36]	// tmp211, N
	sub	w0, w0, #1	// _61, tmp211,
// problem130.c:16:     if (y < N - 1 && grid[x][y + 1] < min) min = grid[x][y + 1];
	ldr	w1, [sp, 64]	// tmp212, y
	cmp	w1, w0	// tmp212, _61
	bge	.L10		//,
// problem130.c:16:     if (y < N - 1 && grid[x][y + 1] < min) min = grid[x][y + 1];
	ldrsw	x0, [sp, 60]	// _62, x
	lsl	x0, x0, 3	// _63, _62,
	ldr	x1, [sp, 40]	// tmp213, grid
	add	x0, x1, x0	// _64, tmp213, _63
	ldr	x1, [x0]	// _65, *_64
// problem130.c:16:     if (y < N - 1 && grid[x][y + 1] < min) min = grid[x][y + 1];
	ldrsw	x0, [sp, 64]	// _66, y
	add	x0, x0, 1	// _67, _66,
	lsl	x0, x0, 2	// _68, _67,
	add	x0, x1, x0	// _69, _65, _68
	ldr	w0, [x0]	// _70, *_69
// problem130.c:16:     if (y < N - 1 && grid[x][y + 1] < min) min = grid[x][y + 1];
	ldr	w1, [sp, 68]	// tmp214, min
	cmp	w1, w0	// tmp214, _70
	ble	.L10		//,
// problem130.c:16:     if (y < N - 1 && grid[x][y + 1] < min) min = grid[x][y + 1];
	ldrsw	x0, [sp, 60]	// _71, x
	lsl	x0, x0, 3	// _72, _71,
	ldr	x1, [sp, 40]	// tmp215, grid
	add	x0, x1, x0	// _73, tmp215, _72
	ldr	x1, [x0]	// _74, *_73
// problem130.c:16:     if (y < N - 1 && grid[x][y + 1] < min) min = grid[x][y + 1];
	ldrsw	x0, [sp, 64]	// _75, y
	add	x0, x0, 1	// _76, _75,
	lsl	x0, x0, 2	// _77, _76,
	add	x0, x1, x0	// _78, _74, _77
// problem130.c:16:     if (y < N - 1 && grid[x][y + 1] < min) min = grid[x][y + 1];
	ldr	w0, [x0]	// tmp216, *_78
	str	w0, [sp, 68]	// tmp216, min
.L10:
// problem130.c:18:     *returnSize = k;
	ldr	x0, [sp, 24]	// tmp217, returnSize
	ldr	w1, [sp, 32]	// tmp218, k
	str	w1, [x0]	// tmp218, *returnSize_115(D)
// problem130.c:19:     int *out = (int *)malloc(k * sizeof(int));
	ldrsw	x0, [sp, 32]	// _79, k
	lsl	x0, x0, 2	// _80, _79,
	bl	malloc		//
	str	x0, [sp, 72]	// tmp219, out
// problem130.c:20:     for (i = 0; i < k; i++)
	str	wzr, [sp, 52]	//, i
// problem130.c:20:     for (i = 0; i < k; i++)
	b	.L11		//
.L14:
// problem130.c:21:         if (i % 2 == 0) out[i] = 1;
	ldr	w0, [sp, 52]	// i.0_81, i
	and	w0, w0, 1	// _82, i.0_81,
// problem130.c:21:         if (i % 2 == 0) out[i] = 1;
	cmp	w0, 0	// _82,
	bne	.L12		//,
// problem130.c:21:         if (i % 2 == 0) out[i] = 1;
	ldrsw	x0, [sp, 52]	// _83, i
	lsl	x0, x0, 2	// _84, _83,
	ldr	x1, [sp, 72]	// tmp220, out
	add	x0, x1, x0	// _85, tmp220, _84
// problem130.c:21:         if (i % 2 == 0) out[i] = 1;
	mov	w1, 1	// tmp221,
	str	w1, [x0]	// tmp221, *_85
	b	.L13		//
.L12:
// problem130.c:22:         else out[i] = min;
	ldrsw	x0, [sp, 52]	// _86, i
	lsl	x0, x0, 2	// _87, _86,
	ldr	x1, [sp, 72]	// tmp222, out
	add	x0, x1, x0	// _88, tmp222, _87
// problem130.c:22:         else out[i] = min;
	ldr	w1, [sp, 68]	// tmp223, min
	str	w1, [x0]	// tmp223, *_88
.L13:
// problem130.c:20:     for (i = 0; i < k; i++)
	ldr	w0, [sp, 52]	// tmp225, i
	add	w0, w0, 1	// tmp224, tmp225,
	str	w0, [sp, 52]	// tmp224, i
.L11:
// problem130.c:20:     for (i = 0; i < k; i++)
	ldr	w1, [sp, 52]	// tmp226, i
	ldr	w0, [sp, 32]	// tmp227, k
	cmp	w1, w0	// tmp226, tmp227
	blt	.L14		//,
// problem130.c:23:     return out;
	ldr	x0, [sp, 72]	// _121, out
// problem130.c:24: }
	ldp	x29, x30, [sp], 80	//,,,
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE6:
	.size	func0, .-func0
	.align	2
	.global	issame
	.type	issame, %function
issame:
.LFB7:
	.cfi_startproc
	sub	sp, sp, #48	//,,
	.cfi_def_cfa_offset 48
	str	x0, [sp, 24]	// a, a
	str	x1, [sp, 16]	// b, b
	str	w2, [sp, 12]	// size, size
// problem130.c:33:     for (int i = 0; i < size; i++) {
	str	wzr, [sp, 44]	//, i
// problem130.c:33:     for (int i = 0; i < size; i++) {
	b	.L17		//
.L20:
// problem130.c:34:         if (a[i] != b[i]) return 0;
	ldrsw	x0, [sp, 44]	// _1, i
	lsl	x0, x0, 2	// _2, _1,
	ldr	x1, [sp, 24]	// tmp102, a
	add	x0, x1, x0	// _3, tmp102, _2
	ldr	w1, [x0]	// _4, *_3
// problem130.c:34:         if (a[i] != b[i]) return 0;
	ldrsw	x0, [sp, 44]	// _5, i
	lsl	x0, x0, 2	// _6, _5,
	ldr	x2, [sp, 16]	// tmp103, b
	add	x0, x2, x0	// _7, tmp103, _6
	ldr	w0, [x0]	// _8, *_7
// problem130.c:34:         if (a[i] != b[i]) return 0;
	cmp	w1, w0	// _4, _8
	beq	.L18		//,
// problem130.c:34:         if (a[i] != b[i]) return 0;
	mov	w0, 0	// _10,
// problem130.c:34:         if (a[i] != b[i]) return 0;
	b	.L19		//
.L18:
// problem130.c:33:     for (int i = 0; i < size; i++) {
	ldr	w0, [sp, 44]	// tmp105, i
	add	w0, w0, 1	// tmp104, tmp105,
	str	w0, [sp, 44]	// tmp104, i
.L17:
// problem130.c:33:     for (int i = 0; i < size; i++) {
	ldr	w1, [sp, 44]	// tmp106, i
	ldr	w0, [sp, 12]	// tmp107, size
	cmp	w1, w0	// tmp106, tmp107
	blt	.L20		//,
// problem130.c:36:     return 1;
	mov	w0, 1	// _10,
.L19:
// problem130.c:37: }
	add	sp, sp, 48	//,,
	.cfi_def_cfa_offset 0
	ret	
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
	.text
	.align	2
	.global	main
	.type	main, %function
main:
.LFB8:
	.cfi_startproc
	stp	x29, x30, [sp, -16]!	//,,,
	.cfi_def_cfa_offset 16
	.cfi_offset 29, -16
	.cfi_offset 30, -8
	mov	x29, sp	//,
	sub	sp, sp, #576	//,,
	.cfi_def_cfa_offset 592
// problem130.c:39: int main() {
	adrp	x0, :got:__stack_chk_guard	// tmp104,
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]	// tmp104,
	ldr	x1, [x0]	// tmp265,
	str	x1, [sp, 568]	// tmp265, D.5488
	mov	x1, 0	// tmp265
// problem130.c:43:     int grid1[3][3] = {{1, 2, 3}, {4, 5, 6}, {7, 8, 9}};
	adrp	x0, .LC0	// tmp106,
	add	x1, x0, :lo12:.LC0	// tmp105, tmp106,
	add	x0, sp, 296	// tmp107,,
	ldp	q0, q1, [x1]	// tmp109, tmp110,
	stp	q0, q1, [x0]	// tmp109, tmp110, grid1
	ldr	w1, [x1, 32]	// tmp111,
	str	w1, [x0, 32]	// tmp111, grid1
// problem130.c:44:     int *grid1_ptrs[] = {grid1[0], grid1[1], grid1[2]};
	add	x0, sp, 296	// tmp112,,
	str	x0, [sp, 120]	// tmp112, grid1_ptrs[0]
	add	x0, sp, 296	// tmp113,,
	add	x0, x0, 12	// tmp114, tmp113,
	str	x0, [sp, 128]	// tmp114, grid1_ptrs[1]
	add	x0, sp, 296	// tmp115,,
	add	x0, x0, 24	// tmp116, tmp115,
	str	x0, [sp, 136]	// tmp116, grid1_ptrs[2]
// problem130.c:45:     int result1[] = {1, 2, 1};
	adrp	x0, .LC1	// tmp118,
	add	x1, x0, :lo12:.LC1	// tmp117, tmp118,
	add	x0, sp, 64	// tmp119,,
	ldr	x2, [x1]	// tmp121,
	str	x2, [x0]	// tmp121, result1
	ldr	w1, [x1, 8]	// tmp122,
	str	w1, [x0, 8]	// tmp122, result1
// problem130.c:46:     int *out1 = func0(grid1_ptrs, 3, 3, &size);
	add	x1, sp, 12	// tmp123,,
	add	x0, sp, 120	// tmp124,,
	mov	x3, x1	//, tmp123
	mov	w2, 3	//,
	mov	w1, 3	//,
	bl	func0		//
	str	x0, [sp, 16]	//, out1
// problem130.c:47:     assert(issame(out1, result1, size));
	ldr	w1, [sp, 12]	// size.1_1, size
	add	x0, sp, 64	// tmp125,,
	mov	w2, w1	//, size.1_1
	mov	x1, x0	//, tmp125
	ldr	x0, [sp, 16]	//, out1
	bl	issame		//
// problem130.c:47:     assert(issame(out1, result1, size));
	cmp	w0, 0	// _2,
	bne	.L22		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp126,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp126,
	mov	w2, 47	//,
	adrp	x0, .LC8	// tmp127,
	add	x1, x0, :lo12:.LC8	//, tmp127,
	adrp	x0, .LC9	// tmp128,
	add	x0, x0, :lo12:.LC9	//, tmp128,
	bl	__assert_fail		//
.L22:
// problem130.c:48:     free(out1);
	ldr	x0, [sp, 16]	//, out1
	bl	free		//
// problem130.c:51:     int grid2[3][3] = {{5, 9, 3}, {4, 1, 6}, {7, 8, 2}};
	adrp	x0, .LC2	// tmp130,
	add	x1, x0, :lo12:.LC2	// tmp129, tmp130,
	add	x0, sp, 336	// tmp131,,
	ldp	q0, q1, [x1]	// tmp133, tmp134,
	stp	q0, q1, [x0]	// tmp133, tmp134, grid2
	ldr	w1, [x1, 32]	// tmp135,
	str	w1, [x0, 32]	// tmp135, grid2
// problem130.c:52:     int *grid2_ptrs[] = {grid2[0], grid2[1], grid2[2]};
	add	x0, sp, 336	// tmp136,,
	str	x0, [sp, 144]	// tmp136, grid2_ptrs[0]
	add	x0, sp, 336	// tmp137,,
	add	x0, x0, 12	// tmp138, tmp137,
	str	x0, [sp, 152]	// tmp138, grid2_ptrs[1]
	add	x0, sp, 336	// tmp139,,
	add	x0, x0, 24	// tmp140, tmp139,
	str	x0, [sp, 160]	// tmp140, grid2_ptrs[2]
// problem130.c:53:     int result2[] = {1};
	mov	w0, 1	// tmp141,
	str	w0, [sp, 56]	// tmp141, result2[0]
// problem130.c:54:     int *out2 = func0(grid2_ptrs, 3, 1, &size);
	add	x1, sp, 12	// tmp142,,
	add	x0, sp, 144	// tmp143,,
	mov	x3, x1	//, tmp142
	mov	w2, 1	//,
	mov	w1, 3	//,
	bl	func0		//
	str	x0, [sp, 24]	//, out2
// problem130.c:55:     assert(issame(out2, result2, size));
	ldr	w1, [sp, 12]	// size.2_3, size
	add	x0, sp, 56	// tmp144,,
	mov	w2, w1	//, size.2_3
	mov	x1, x0	//, tmp144
	ldr	x0, [sp, 24]	//, out2
	bl	issame		//
// problem130.c:55:     assert(issame(out2, result2, size));
	cmp	w0, 0	// _4,
	bne	.L23		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp145,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp145,
	mov	w2, 55	//,
	adrp	x0, .LC8	// tmp146,
	add	x1, x0, :lo12:.LC8	//, tmp146,
	adrp	x0, .LC10	// tmp147,
	add	x0, x0, :lo12:.LC10	//, tmp147,
	bl	__assert_fail		//
.L23:
// problem130.c:56:     free(out2);
	ldr	x0, [sp, 24]	//, out2
	bl	free		//
// problem130.c:59:     int grid3[4][4] = {{1, 2, 3, 4}, {5, 6, 7, 8}, {9, 10, 11, 12}, {13, 14, 15, 16}};
	adrp	x0, .LC3	// tmp149,
	add	x1, x0, :lo12:.LC3	// tmp148, tmp149,
	add	x0, sp, 376	// tmp150,,
	ldp	q0, q1, [x1]	// tmp152, tmp153,
	stp	q0, q1, [x0]	// tmp152, tmp153, grid3
	ldp	q0, q1, [x1, 32]	// tmp154, tmp155,
	stp	q0, q1, [x0, 32]	// tmp154, tmp155, grid3
// problem130.c:60:     int *grid3_ptrs[] = {grid3[0], grid3[1], grid3[2], grid3[3]};
	add	x0, sp, 584	// tmp156,,
	sub	x0, x0, #384	// tmp158, tmp156,
	add	x1, sp, 376	// tmp159,,
	str	x1, [x0]	// tmp159, grid3_ptrs[0]
	add	x0, sp, 584	// tmp160,,
	sub	x0, x0, #384	// tmp162, tmp160,
	add	x1, sp, 376	// tmp163,,
	add	x1, x1, 16	// tmp164, tmp163,
	str	x1, [x0, 8]	// tmp164, grid3_ptrs[1]
	add	x0, sp, 584	// tmp165,,
	sub	x0, x0, #384	// tmp167, tmp165,
	add	x1, sp, 376	// tmp168,,
	add	x1, x1, 32	// tmp169, tmp168,
	str	x1, [x0, 16]	// tmp169, grid3_ptrs[2]
	add	x0, sp, 584	// tmp170,,
	sub	x0, x0, #384	// tmp172, tmp170,
	add	x1, sp, 376	// tmp173,,
	add	x1, x1, 48	// tmp174, tmp173,
	str	x1, [x0, 24]	// tmp174, grid3_ptrs[3]
// problem130.c:61:     int result3[] = {1, 2, 1, 2};
	mov	w0, 1	// tmp175,
	str	w0, [sp, 80]	// tmp175, result3[0]
	mov	w0, 2	// tmp176,
	str	w0, [sp, 84]	// tmp176, result3[1]
	mov	w0, 1	// tmp177,
	str	w0, [sp, 88]	// tmp177, result3[2]
	mov	w0, 2	// tmp178,
	str	w0, [sp, 92]	// tmp178, result3[3]
// problem130.c:62:     int *out3 = func0(grid3_ptrs, 4, 4, &size);
	add	x1, sp, 12	// tmp179,,
	add	x0, sp, 200	// tmp180,,
	mov	x3, x1	//, tmp179
	mov	w2, 4	//,
	mov	w1, 4	//,
	bl	func0		//
	str	x0, [sp, 32]	//, out3
// problem130.c:63:     assert(issame(out3, result3, size));
	ldr	w1, [sp, 12]	// size.3_5, size
	add	x0, sp, 80	// tmp181,,
	mov	w2, w1	//, size.3_5
	mov	x1, x0	//, tmp181
	ldr	x0, [sp, 32]	//, out3
	bl	issame		//
// problem130.c:63:     assert(issame(out3, result3, size));
	cmp	w0, 0	// _6,
	bne	.L24		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp182,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp182,
	mov	w2, 63	//,
	adrp	x0, .LC8	// tmp183,
	add	x1, x0, :lo12:.LC8	//, tmp183,
	adrp	x0, .LC11	// tmp184,
	add	x0, x0, :lo12:.LC11	//, tmp184,
	bl	__assert_fail		//
.L24:
// problem130.c:64:     free(out3);
	ldr	x0, [sp, 32]	//, out3
	bl	free		//
// problem130.c:67:     int grid4[4][4] = {{6, 4, 13, 10}, {5, 7, 12, 1}, {3, 16, 11, 15}, {8, 14, 9, 2}};
	adrp	x0, .LC4	// tmp186,
	add	x1, x0, :lo12:.LC4	// tmp185, tmp186,
	add	x0, sp, 440	// tmp187,,
	ldp	q0, q1, [x1]	// tmp189, tmp190,
	stp	q0, q1, [x0]	// tmp189, tmp190, grid4
	ldp	q0, q1, [x1, 32]	// tmp191, tmp192,
	stp	q0, q1, [x0, 32]	// tmp191, tmp192, grid4
// problem130.c:68:     int *grid4_ptrs[] = {grid4[0], grid4[1], grid4[2], grid4[3]};
	add	x0, sp, 584	// tmp193,,
	sub	x0, x0, #352	// tmp195, tmp193,
	add	x1, sp, 440	// tmp196,,
	str	x1, [x0]	// tmp196, grid4_ptrs[0]
	add	x0, sp, 584	// tmp197,,
	sub	x0, x0, #352	// tmp199, tmp197,
	add	x1, sp, 440	// tmp200,,
	add	x1, x1, 16	// tmp201, tmp200,
	str	x1, [x0, 8]	// tmp201, grid4_ptrs[1]
	add	x0, sp, 584	// tmp202,,
	sub	x0, x0, #352	// tmp204, tmp202,
	add	x1, sp, 440	// tmp205,,
	add	x1, x1, 32	// tmp206, tmp205,
	str	x1, [x0, 16]	// tmp206, grid4_ptrs[2]
	add	x0, sp, 584	// tmp207,,
	sub	x0, x0, #352	// tmp209, tmp207,
	add	x1, sp, 440	// tmp210,,
	add	x1, x1, 48	// tmp211, tmp210,
	str	x1, [x0, 24]	// tmp211, grid4_ptrs[3]
// problem130.c:69:     int result4[] = {1, 10, 1, 10, 1, 10, 1};
	adrp	x0, .LC5	// tmp213,
	add	x1, x0, :lo12:.LC5	// tmp212, tmp213,
	add	x0, sp, 168	// tmp214,,
	ldr	q0, [x1]	// tmp216,
	str	q0, [x0]	// tmp216, result4
	ldr	q0, [x1, 12]	// tmp217,
	str	q0, [x0, 12]	// tmp217, result4
// problem130.c:70:     int *out4 = func0(grid4_ptrs, 4, 7, &size);
	add	x1, sp, 12	// tmp218,,
	add	x0, sp, 232	// tmp219,,
	mov	x3, x1	//, tmp218
	mov	w2, 7	//,
	mov	w1, 4	//,
	bl	func0		//
	str	x0, [sp, 40]	//, out4
// problem130.c:71:     assert(issame(out4, result4, size));
	ldr	w1, [sp, 12]	// size.4_7, size
	add	x0, sp, 168	// tmp220,,
	mov	w2, w1	//, size.4_7
	mov	x1, x0	//, tmp220
	ldr	x0, [sp, 40]	//, out4
	bl	issame		//
// problem130.c:71:     assert(issame(out4, result4, size));
	cmp	w0, 0	// _8,
	bne	.L25		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp221,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp221,
	mov	w2, 71	//,
	adrp	x0, .LC8	// tmp222,
	add	x1, x0, :lo12:.LC8	//, tmp222,
	adrp	x0, .LC12	// tmp223,
	add	x0, x0, :lo12:.LC12	//, tmp223,
	bl	__assert_fail		//
.L25:
// problem130.c:72:     free(out4);
	ldr	x0, [sp, 40]	//, out4
	bl	free		//
// problem130.c:75:     int grid5[4][4] = {{8, 14, 9, 2}, {6, 4, 13, 15}, {5, 7, 1, 12}, {3, 10, 11, 16}};
	adrp	x0, .LC6	// tmp225,
	add	x1, x0, :lo12:.LC6	// tmp224, tmp225,
	add	x0, sp, 504	// tmp226,,
	ldp	q0, q1, [x1]	// tmp228, tmp229,
	stp	q0, q1, [x0]	// tmp228, tmp229, grid5
	ldp	q0, q1, [x1, 32]	// tmp230, tmp231,
	stp	q0, q1, [x0, 32]	// tmp230, tmp231, grid5
// problem130.c:76:     int *grid5_ptrs[] = {grid5[0], grid5[1], grid5[2], grid5[3]};
	add	x0, sp, 584	// tmp232,,
	sub	x0, x0, #320	// tmp234, tmp232,
	add	x1, sp, 504	// tmp235,,
	str	x1, [x0]	// tmp235, grid5_ptrs[0]
	add	x0, sp, 584	// tmp236,,
	sub	x0, x0, #320	// tmp238, tmp236,
	add	x1, sp, 504	// tmp239,,
	add	x1, x1, 16	// tmp240, tmp239,
	str	x1, [x0, 8]	// tmp240, grid5_ptrs[1]
	add	x0, sp, 584	// tmp241,,
	sub	x0, x0, #320	// tmp243, tmp241,
	add	x1, sp, 504	// tmp244,,
	add	x1, x1, 32	// tmp245, tmp244,
	str	x1, [x0, 16]	// tmp245, grid5_ptrs[2]
	add	x0, sp, 584	// tmp246,,
	sub	x0, x0, #320	// tmp248, tmp246,
	add	x1, sp, 504	// tmp249,,
	add	x1, x1, 48	// tmp250, tmp249,
	str	x1, [x0, 24]	// tmp250, grid5_ptrs[3]
// problem130.c:77:     int result5[] = {1, 7, 1, 7, 1};
	adrp	x0, .LC7	// tmp252,
	add	x0, x0, :lo12:.LC7	// tmp251, tmp252,
	add	x2, sp, 96	// tmp253,,
	mov	x3, x0	// tmp254, tmp251
	ldp	x0, x1, [x3]	// tmp255,
	stp	x0, x1, [x2]	// tmp255, result5
	ldr	w0, [x3, 16]	// tmp256,
	str	w0, [x2, 16]	// tmp256, result5
// problem130.c:78:     int *out5 = func0(grid5_ptrs, 4, 5, &size);
	add	x1, sp, 12	// tmp257,,
	add	x0, sp, 264	// tmp258,,
	mov	x3, x1	//, tmp257
	mov	w2, 5	//,
	mov	w1, 4	//,
	bl	func0		//
	str	x0, [sp, 48]	//, out5
// problem130.c:79:     assert(issame(out5, result5, size));
	ldr	w1, [sp, 12]	// size.5_9, size
	add	x0, sp, 96	// tmp259,,
	mov	w2, w1	//, size.5_9
	mov	x1, x0	//, tmp259
	ldr	x0, [sp, 48]	//, out5
	bl	issame		//
// problem130.c:79:     assert(issame(out5, result5, size));
	cmp	w0, 0	// _10,
	bne	.L26		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp260,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp260,
	mov	w2, 79	//,
	adrp	x0, .LC8	// tmp261,
	add	x1, x0, :lo12:.LC8	//, tmp261,
	adrp	x0, .LC13	// tmp262,
	add	x0, x0, :lo12:.LC13	//, tmp262,
	bl	__assert_fail		//
.L26:
// problem130.c:80:     free(out5);
	ldr	x0, [sp, 48]	//, out5
	bl	free		//
// problem130.c:82:     return 0;
	mov	w0, 0	// _68,
// problem130.c:83: }
	mov	w1, w0	// <retval>, _68
	adrp	x0, :got:__stack_chk_guard	// tmp264,
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]	// tmp264,
	ldr	x3, [sp, 568]	// tmp266, D.5488
	ldr	x2, [x0]	// tmp267,
	subs	x3, x3, x2	// tmp266, tmp267
	mov	x2, 0	// tmp267
	beq	.L28		//,
	bl	__stack_chk_fail		//
.L28:
	mov	w0, w1	//, <retval>
	add	sp, sp, 576	//,,
	.cfi_def_cfa_offset 16
	ldp	x29, x30, [sp], 16	//,,,
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE8:
	.size	main, .-main
	.section	.rodata
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
	.word	1
	.word	2
	.word	1
	.align	3
.LC2:
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
.LC3:
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
	.section	.rodata
	.align	3
	.type	__PRETTY_FUNCTION__.0, %object
	.size	__PRETTY_FUNCTION__.0, 5
__PRETTY_FUNCTION__.0:
	.string	"main"
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
