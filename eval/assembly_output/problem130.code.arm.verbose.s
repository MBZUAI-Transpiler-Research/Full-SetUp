	.arch armv8-a
	.file	"code.c"
// GNU C17 (Ubuntu 13.3.0-6ubuntu2~24.04) version 13.3.0 (aarch64-linux-gnu)
//	compiled by GNU C version 13.3.0, GMP version 6.3.0, MPFR version 4.2.1, MPC version 1.3.1, isl version isl-0.26-GMP

// GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
// options passed: -mlittle-endian -mabi=lp64 -O0 -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection
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
// code.c:6:     for (i = 0; i < N; i++)
	str	wzr, [sp, 52]	//, i
// code.c:6:     for (i = 0; i < N; i++)
	b	.L2		//
.L6:
// code.c:7:         for (j = 0; j < N; j++)
	str	wzr, [sp, 56]	//, j
// code.c:7:         for (j = 0; j < N; j++)
	b	.L3		//
.L5:
// code.c:8:             if (grid[i][j] == 1) {
	ldrsw	x0, [sp, 52]	// _1, i
	lsl	x0, x0, 3	// _2, _1,
	ldr	x1, [sp, 40]	// tmp182, grid
	add	x0, x1, x0	// _3, tmp182, _2
	ldr	x1, [x0]	// _4, *_3
// code.c:8:             if (grid[i][j] == 1) {
	ldrsw	x0, [sp, 56]	// _5, j
	lsl	x0, x0, 2	// _6, _5,
	add	x0, x1, x0	// _7, _4, _6
	ldr	w0, [x0]	// _8, *_7
// code.c:8:             if (grid[i][j] == 1) {
	cmp	w0, 1	// _8,
	bne	.L4		//,
// code.c:9:                 x = i;
	ldr	w0, [sp, 52]	// tmp183, i
	str	w0, [sp, 60]	// tmp183, x
// code.c:10:                 y = j;
	ldr	w0, [sp, 56]	// tmp184, j
	str	w0, [sp, 64]	// tmp184, y
.L4:
// code.c:7:         for (j = 0; j < N; j++)
	ldr	w0, [sp, 56]	// tmp186, j
	add	w0, w0, 1	// tmp185, tmp186,
	str	w0, [sp, 56]	// tmp185, j
.L3:
// code.c:7:         for (j = 0; j < N; j++)
	ldr	w1, [sp, 56]	// tmp187, j
	ldr	w0, [sp, 36]	// tmp188, N
	cmp	w1, w0	// tmp187, tmp188
	blt	.L5		//,
// code.c:6:     for (i = 0; i < N; i++)
	ldr	w0, [sp, 52]	// tmp190, i
	add	w0, w0, 1	// tmp189, tmp190,
	str	w0, [sp, 52]	// tmp189, i
.L2:
// code.c:6:     for (i = 0; i < N; i++)
	ldr	w1, [sp, 52]	// tmp191, i
	ldr	w0, [sp, 36]	// tmp192, N
	cmp	w1, w0	// tmp191, tmp192
	blt	.L6		//,
// code.c:12:     min = N * N;
	ldr	w0, [sp, 36]	// tmp194, N
	mul	w0, w0, w0	// tmp193, tmp194, tmp194
	str	w0, [sp, 68]	// tmp193, min
// code.c:13:     if (x > 0 && grid[x - 1][y] < min) min = grid[x - 1][y];
	ldr	w0, [sp, 60]	// tmp195, x
	cmp	w0, 0	// tmp195,
	ble	.L7		//,
// code.c:13:     if (x > 0 && grid[x - 1][y] < min) min = grid[x - 1][y];
	ldrsw	x0, [sp, 60]	// _9, x
	lsl	x0, x0, 3	// _10, _9,
	sub	x0, x0, #8	// _11, _10,
	ldr	x1, [sp, 40]	// tmp196, grid
	add	x0, x1, x0	// _12, tmp196, _11
	ldr	x1, [x0]	// _13, *_12
// code.c:13:     if (x > 0 && grid[x - 1][y] < min) min = grid[x - 1][y];
	ldrsw	x0, [sp, 64]	// _14, y
	lsl	x0, x0, 2	// _15, _14,
	add	x0, x1, x0	// _16, _13, _15
	ldr	w0, [x0]	// _17, *_16
// code.c:13:     if (x > 0 && grid[x - 1][y] < min) min = grid[x - 1][y];
	ldr	w1, [sp, 68]	// tmp197, min
	cmp	w1, w0	// tmp197, _17
	ble	.L7		//,
// code.c:13:     if (x > 0 && grid[x - 1][y] < min) min = grid[x - 1][y];
	ldrsw	x0, [sp, 60]	// _18, x
	lsl	x0, x0, 3	// _19, _18,
	sub	x0, x0, #8	// _20, _19,
	ldr	x1, [sp, 40]	// tmp198, grid
	add	x0, x1, x0	// _21, tmp198, _20
	ldr	x1, [x0]	// _22, *_21
// code.c:13:     if (x > 0 && grid[x - 1][y] < min) min = grid[x - 1][y];
	ldrsw	x0, [sp, 64]	// _23, y
	lsl	x0, x0, 2	// _24, _23,
	add	x0, x1, x0	// _25, _22, _24
// code.c:13:     if (x > 0 && grid[x - 1][y] < min) min = grid[x - 1][y];
	ldr	w0, [x0]	// tmp199, *_25
	str	w0, [sp, 68]	// tmp199, min
.L7:
// code.c:14:     if (x < N - 1 && grid[x + 1][y] < min) min = grid[x + 1][y];
	ldr	w0, [sp, 36]	// tmp200, N
	sub	w0, w0, #1	// _26, tmp200,
// code.c:14:     if (x < N - 1 && grid[x + 1][y] < min) min = grid[x + 1][y];
	ldr	w1, [sp, 60]	// tmp201, x
	cmp	w1, w0	// tmp201, _26
	bge	.L8		//,
// code.c:14:     if (x < N - 1 && grid[x + 1][y] < min) min = grid[x + 1][y];
	ldrsw	x0, [sp, 60]	// _27, x
	add	x0, x0, 1	// _28, _27,
	lsl	x0, x0, 3	// _29, _28,
	ldr	x1, [sp, 40]	// tmp202, grid
	add	x0, x1, x0	// _30, tmp202, _29
	ldr	x1, [x0]	// _31, *_30
// code.c:14:     if (x < N - 1 && grid[x + 1][y] < min) min = grid[x + 1][y];
	ldrsw	x0, [sp, 64]	// _32, y
	lsl	x0, x0, 2	// _33, _32,
	add	x0, x1, x0	// _34, _31, _33
	ldr	w0, [x0]	// _35, *_34
// code.c:14:     if (x < N - 1 && grid[x + 1][y] < min) min = grid[x + 1][y];
	ldr	w1, [sp, 68]	// tmp203, min
	cmp	w1, w0	// tmp203, _35
	ble	.L8		//,
// code.c:14:     if (x < N - 1 && grid[x + 1][y] < min) min = grid[x + 1][y];
	ldrsw	x0, [sp, 60]	// _36, x
	add	x0, x0, 1	// _37, _36,
	lsl	x0, x0, 3	// _38, _37,
	ldr	x1, [sp, 40]	// tmp204, grid
	add	x0, x1, x0	// _39, tmp204, _38
	ldr	x1, [x0]	// _40, *_39
// code.c:14:     if (x < N - 1 && grid[x + 1][y] < min) min = grid[x + 1][y];
	ldrsw	x0, [sp, 64]	// _41, y
	lsl	x0, x0, 2	// _42, _41,
	add	x0, x1, x0	// _43, _40, _42
// code.c:14:     if (x < N - 1 && grid[x + 1][y] < min) min = grid[x + 1][y];
	ldr	w0, [x0]	// tmp205, *_43
	str	w0, [sp, 68]	// tmp205, min
.L8:
// code.c:15:     if (y > 0 && grid[x][y - 1] < min) min = grid[x][y - 1];
	ldr	w0, [sp, 64]	// tmp206, y
	cmp	w0, 0	// tmp206,
	ble	.L9		//,
// code.c:15:     if (y > 0 && grid[x][y - 1] < min) min = grid[x][y - 1];
	ldrsw	x0, [sp, 60]	// _44, x
	lsl	x0, x0, 3	// _45, _44,
	ldr	x1, [sp, 40]	// tmp207, grid
	add	x0, x1, x0	// _46, tmp207, _45
	ldr	x1, [x0]	// _47, *_46
// code.c:15:     if (y > 0 && grid[x][y - 1] < min) min = grid[x][y - 1];
	ldrsw	x0, [sp, 64]	// _48, y
	lsl	x0, x0, 2	// _49, _48,
	sub	x0, x0, #4	// _50, _49,
	add	x0, x1, x0	// _51, _47, _50
	ldr	w0, [x0]	// _52, *_51
// code.c:15:     if (y > 0 && grid[x][y - 1] < min) min = grid[x][y - 1];
	ldr	w1, [sp, 68]	// tmp208, min
	cmp	w1, w0	// tmp208, _52
	ble	.L9		//,
// code.c:15:     if (y > 0 && grid[x][y - 1] < min) min = grid[x][y - 1];
	ldrsw	x0, [sp, 60]	// _53, x
	lsl	x0, x0, 3	// _54, _53,
	ldr	x1, [sp, 40]	// tmp209, grid
	add	x0, x1, x0	// _55, tmp209, _54
	ldr	x1, [x0]	// _56, *_55
// code.c:15:     if (y > 0 && grid[x][y - 1] < min) min = grid[x][y - 1];
	ldrsw	x0, [sp, 64]	// _57, y
	lsl	x0, x0, 2	// _58, _57,
	sub	x0, x0, #4	// _59, _58,
	add	x0, x1, x0	// _60, _56, _59
// code.c:15:     if (y > 0 && grid[x][y - 1] < min) min = grid[x][y - 1];
	ldr	w0, [x0]	// tmp210, *_60
	str	w0, [sp, 68]	// tmp210, min
.L9:
// code.c:16:     if (y < N - 1 && grid[x][y + 1] < min) min = grid[x][y + 1];
	ldr	w0, [sp, 36]	// tmp211, N
	sub	w0, w0, #1	// _61, tmp211,
// code.c:16:     if (y < N - 1 && grid[x][y + 1] < min) min = grid[x][y + 1];
	ldr	w1, [sp, 64]	// tmp212, y
	cmp	w1, w0	// tmp212, _61
	bge	.L10		//,
// code.c:16:     if (y < N - 1 && grid[x][y + 1] < min) min = grid[x][y + 1];
	ldrsw	x0, [sp, 60]	// _62, x
	lsl	x0, x0, 3	// _63, _62,
	ldr	x1, [sp, 40]	// tmp213, grid
	add	x0, x1, x0	// _64, tmp213, _63
	ldr	x1, [x0]	// _65, *_64
// code.c:16:     if (y < N - 1 && grid[x][y + 1] < min) min = grid[x][y + 1];
	ldrsw	x0, [sp, 64]	// _66, y
	add	x0, x0, 1	// _67, _66,
	lsl	x0, x0, 2	// _68, _67,
	add	x0, x1, x0	// _69, _65, _68
	ldr	w0, [x0]	// _70, *_69
// code.c:16:     if (y < N - 1 && grid[x][y + 1] < min) min = grid[x][y + 1];
	ldr	w1, [sp, 68]	// tmp214, min
	cmp	w1, w0	// tmp214, _70
	ble	.L10		//,
// code.c:16:     if (y < N - 1 && grid[x][y + 1] < min) min = grid[x][y + 1];
	ldrsw	x0, [sp, 60]	// _71, x
	lsl	x0, x0, 3	// _72, _71,
	ldr	x1, [sp, 40]	// tmp215, grid
	add	x0, x1, x0	// _73, tmp215, _72
	ldr	x1, [x0]	// _74, *_73
// code.c:16:     if (y < N - 1 && grid[x][y + 1] < min) min = grid[x][y + 1];
	ldrsw	x0, [sp, 64]	// _75, y
	add	x0, x0, 1	// _76, _75,
	lsl	x0, x0, 2	// _77, _76,
	add	x0, x1, x0	// _78, _74, _77
// code.c:16:     if (y < N - 1 && grid[x][y + 1] < min) min = grid[x][y + 1];
	ldr	w0, [x0]	// tmp216, *_78
	str	w0, [sp, 68]	// tmp216, min
.L10:
// code.c:18:     *returnSize = k;
	ldr	x0, [sp, 24]	// tmp217, returnSize
	ldr	w1, [sp, 32]	// tmp218, k
	str	w1, [x0]	// tmp218, *returnSize_115(D)
// code.c:19:     int *out = (int *)malloc(k * sizeof(int));
	ldrsw	x0, [sp, 32]	// _79, k
	lsl	x0, x0, 2	// _80, _79,
	bl	malloc		//
	str	x0, [sp, 72]	// tmp219, out
// code.c:20:     for (i = 0; i < k; i++)
	str	wzr, [sp, 52]	//, i
// code.c:20:     for (i = 0; i < k; i++)
	b	.L11		//
.L14:
// code.c:21:         if (i % 2 == 0) out[i] = 1;
	ldr	w0, [sp, 52]	// i.0_81, i
	and	w0, w0, 1	// _82, i.0_81,
// code.c:21:         if (i % 2 == 0) out[i] = 1;
	cmp	w0, 0	// _82,
	bne	.L12		//,
// code.c:21:         if (i % 2 == 0) out[i] = 1;
	ldrsw	x0, [sp, 52]	// _83, i
	lsl	x0, x0, 2	// _84, _83,
	ldr	x1, [sp, 72]	// tmp220, out
	add	x0, x1, x0	// _85, tmp220, _84
// code.c:21:         if (i % 2 == 0) out[i] = 1;
	mov	w1, 1	// tmp221,
	str	w1, [x0]	// tmp221, *_85
	b	.L13		//
.L12:
// code.c:22:         else out[i] = min;
	ldrsw	x0, [sp, 52]	// _86, i
	lsl	x0, x0, 2	// _87, _86,
	ldr	x1, [sp, 72]	// tmp222, out
	add	x0, x1, x0	// _88, tmp222, _87
// code.c:22:         else out[i] = min;
	ldr	w1, [sp, 68]	// tmp223, min
	str	w1, [x0]	// tmp223, *_88
.L13:
// code.c:20:     for (i = 0; i < k; i++)
	ldr	w0, [sp, 52]	// tmp225, i
	add	w0, w0, 1	// tmp224, tmp225,
	str	w0, [sp, 52]	// tmp224, i
.L11:
// code.c:20:     for (i = 0; i < k; i++)
	ldr	w1, [sp, 52]	// tmp226, i
	ldr	w0, [sp, 32]	// tmp227, k
	cmp	w1, w0	// tmp226, tmp227
	blt	.L14		//,
// code.c:23:     return out;
	ldr	x0, [sp, 72]	// _121, out
// code.c:24: }
	ldp	x29, x30, [sp], 80	//,,,
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE6:
	.size	func0, .-func0
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
