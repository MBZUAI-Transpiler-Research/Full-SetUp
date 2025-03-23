	.arch armv8-a
	.file	"problem130.c"
// GNU C17 (Ubuntu 11.4.0-1ubuntu1~22.04) version 11.4.0 (aarch64-linux-gnu)
//	compiled by GNU C version 11.4.0, GMP version 6.2.1, MPFR version 4.1.0, MPC version 1.2.1, isl version isl-0.24-GMP

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
	sub	sp, sp, #592	//,,
	.cfi_def_cfa_offset 592
	stp	x29, x30, [sp]	//,,
	.cfi_offset 29, -592
	.cfi_offset 30, -584
	mov	x29, sp	//,
// problem130.c:39: int main() {
	adrp	x0, :got:__stack_chk_guard	// tmp105,
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]	// tmp104, tmp105,
	ldr	x1, [x0]	// tmp267,
	str	x1, [sp, 584]	// tmp267, D.4899
	mov	x1, 0	// tmp267
// problem130.c:43:     int grid1[3][3] = {{1, 2, 3}, {4, 5, 6}, {7, 8, 9}};
	adrp	x0, .LC0	// tmp107,
	add	x1, x0, :lo12:.LC0	// tmp106, tmp107,
	add	x0, sp, 312	// tmp108,,
	ldp	q0, q1, [x1]	// tmp110, tmp111,
	stp	q0, q1, [x0]	// tmp110, tmp111, grid1
	ldr	w1, [x1, 32]	// tmp112,
	str	w1, [x0, 32]	// tmp112, grid1
// problem130.c:44:     int *grid1_ptrs[] = {grid1[0], grid1[1], grid1[2]};
	add	x0, sp, 312	// tmp113,,
	str	x0, [sp, 136]	// tmp113, grid1_ptrs[0]
	add	x0, sp, 312	// tmp114,,
	add	x0, x0, 12	// tmp115, tmp114,
	str	x0, [sp, 144]	// tmp115, grid1_ptrs[1]
	add	x0, sp, 312	// tmp116,,
	add	x0, x0, 24	// tmp117, tmp116,
	str	x0, [sp, 152]	// tmp117, grid1_ptrs[2]
// problem130.c:45:     int result1[] = {1, 2, 1};
	adrp	x0, .LC1	// tmp119,
	add	x1, x0, :lo12:.LC1	// tmp118, tmp119,
	add	x0, sp, 80	// tmp120,,
	ldr	x2, [x1]	// tmp122,
	str	x2, [x0]	// tmp122, result1
	ldr	w1, [x1, 8]	// tmp123,
	str	w1, [x0, 8]	// tmp123, result1
// problem130.c:46:     int *out1 = func0(grid1_ptrs, 3, 3, &size);
	add	x1, sp, 28	// tmp124,,
	add	x0, sp, 136	// tmp125,,
	mov	x3, x1	//, tmp124
	mov	w2, 3	//,
	mov	w1, 3	//,
	bl	func0		//
	str	x0, [sp, 32]	//, out1
// problem130.c:47:     assert(issame(out1, result1, size));
	ldr	w1, [sp, 28]	// size.1_1, size
	add	x0, sp, 80	// tmp126,,
	mov	w2, w1	//, size.1_1
	mov	x1, x0	//, tmp126
	ldr	x0, [sp, 32]	//, out1
	bl	issame		//
	cmp	w0, 0	// _2,
	bne	.L22		//,
// problem130.c:47:     assert(issame(out1, result1, size));
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp127,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp127,
	mov	w2, 47	//,
	adrp	x0, .LC8	// tmp128,
	add	x1, x0, :lo12:.LC8	//, tmp128,
	adrp	x0, .LC9	// tmp129,
	add	x0, x0, :lo12:.LC9	//, tmp129,
	bl	__assert_fail		//
.L22:
// problem130.c:48:     free(out1);
	ldr	x0, [sp, 32]	//, out1
	bl	free		//
// problem130.c:51:     int grid2[3][3] = {{5, 9, 3}, {4, 1, 6}, {7, 8, 2}};
	adrp	x0, .LC2	// tmp131,
	add	x1, x0, :lo12:.LC2	// tmp130, tmp131,
	add	x0, sp, 352	// tmp132,,
	ldp	q0, q1, [x1]	// tmp134, tmp135,
	stp	q0, q1, [x0]	// tmp134, tmp135, grid2
	ldr	w1, [x1, 32]	// tmp136,
	str	w1, [x0, 32]	// tmp136, grid2
// problem130.c:52:     int *grid2_ptrs[] = {grid2[0], grid2[1], grid2[2]};
	add	x0, sp, 352	// tmp137,,
	str	x0, [sp, 160]	// tmp137, grid2_ptrs[0]
	add	x0, sp, 352	// tmp138,,
	add	x0, x0, 12	// tmp139, tmp138,
	str	x0, [sp, 168]	// tmp139, grid2_ptrs[1]
	add	x0, sp, 352	// tmp140,,
	add	x0, x0, 24	// tmp141, tmp140,
	str	x0, [sp, 176]	// tmp141, grid2_ptrs[2]
// problem130.c:53:     int result2[] = {1};
	mov	w0, 1	// tmp142,
	str	w0, [sp, 72]	// tmp142, result2[0]
// problem130.c:54:     int *out2 = func0(grid2_ptrs, 3, 1, &size);
	add	x1, sp, 28	// tmp143,,
	add	x0, sp, 160	// tmp144,,
	mov	x3, x1	//, tmp143
	mov	w2, 1	//,
	mov	w1, 3	//,
	bl	func0		//
	str	x0, [sp, 40]	//, out2
// problem130.c:55:     assert(issame(out2, result2, size));
	ldr	w1, [sp, 28]	// size.2_3, size
	add	x0, sp, 72	// tmp145,,
	mov	w2, w1	//, size.2_3
	mov	x1, x0	//, tmp145
	ldr	x0, [sp, 40]	//, out2
	bl	issame		//
	cmp	w0, 0	// _4,
	bne	.L23		//,
// problem130.c:55:     assert(issame(out2, result2, size));
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp146,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp146,
	mov	w2, 55	//,
	adrp	x0, .LC8	// tmp147,
	add	x1, x0, :lo12:.LC8	//, tmp147,
	adrp	x0, .LC10	// tmp148,
	add	x0, x0, :lo12:.LC10	//, tmp148,
	bl	__assert_fail		//
.L23:
// problem130.c:56:     free(out2);
	ldr	x0, [sp, 40]	//, out2
	bl	free		//
// problem130.c:59:     int grid3[4][4] = {{1, 2, 3, 4}, {5, 6, 7, 8}, {9, 10, 11, 12}, {13, 14, 15, 16}};
	adrp	x0, .LC3	// tmp150,
	add	x1, x0, :lo12:.LC3	// tmp149, tmp150,
	add	x0, sp, 392	// tmp151,,
	ldp	q0, q1, [x1]	// tmp153, tmp154,
	stp	q0, q1, [x0]	// tmp153, tmp154, grid3
	ldp	q0, q1, [x1, 32]	// tmp155, tmp156,
	stp	q0, q1, [x0, 32]	// tmp155, tmp156, grid3
// problem130.c:60:     int *grid3_ptrs[] = {grid3[0], grid3[1], grid3[2], grid3[3]};
	add	x0, sp, 600	// tmp157,,
	sub	x0, x0, #384	// tmp159, tmp157,
	add	x1, sp, 392	// tmp160,,
	str	x1, [x0]	// tmp160, grid3_ptrs[0]
	add	x0, sp, 600	// tmp161,,
	sub	x0, x0, #384	// tmp163, tmp161,
	add	x1, sp, 392	// tmp164,,
	add	x1, x1, 16	// tmp165, tmp164,
	str	x1, [x0, 8]	// tmp165, grid3_ptrs[1]
	add	x0, sp, 600	// tmp166,,
	sub	x0, x0, #384	// tmp168, tmp166,
	add	x1, sp, 392	// tmp169,,
	add	x1, x1, 32	// tmp170, tmp169,
	str	x1, [x0, 16]	// tmp170, grid3_ptrs[2]
	add	x0, sp, 600	// tmp171,,
	sub	x0, x0, #384	// tmp173, tmp171,
	add	x1, sp, 392	// tmp174,,
	add	x1, x1, 48	// tmp175, tmp174,
	str	x1, [x0, 24]	// tmp175, grid3_ptrs[3]
// problem130.c:61:     int result3[] = {1, 2, 1, 2};
	mov	w0, 1	// tmp176,
	str	w0, [sp, 96]	// tmp176, result3[0]
	mov	w0, 2	// tmp177,
	str	w0, [sp, 100]	// tmp177, result3[1]
	mov	w0, 1	// tmp178,
	str	w0, [sp, 104]	// tmp178, result3[2]
	mov	w0, 2	// tmp179,
	str	w0, [sp, 108]	// tmp179, result3[3]
// problem130.c:62:     int *out3 = func0(grid3_ptrs, 4, 4, &size);
	add	x1, sp, 28	// tmp180,,
	add	x0, sp, 216	// tmp181,,
	mov	x3, x1	//, tmp180
	mov	w2, 4	//,
	mov	w1, 4	//,
	bl	func0		//
	str	x0, [sp, 48]	//, out3
// problem130.c:63:     assert(issame(out3, result3, size));
	ldr	w1, [sp, 28]	// size.3_5, size
	add	x0, sp, 96	// tmp182,,
	mov	w2, w1	//, size.3_5
	mov	x1, x0	//, tmp182
	ldr	x0, [sp, 48]	//, out3
	bl	issame		//
	cmp	w0, 0	// _6,
	bne	.L24		//,
// problem130.c:63:     assert(issame(out3, result3, size));
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp183,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp183,
	mov	w2, 63	//,
	adrp	x0, .LC8	// tmp184,
	add	x1, x0, :lo12:.LC8	//, tmp184,
	adrp	x0, .LC11	// tmp185,
	add	x0, x0, :lo12:.LC11	//, tmp185,
	bl	__assert_fail		//
.L24:
// problem130.c:64:     free(out3);
	ldr	x0, [sp, 48]	//, out3
	bl	free		//
// problem130.c:67:     int grid4[4][4] = {{6, 4, 13, 10}, {5, 7, 12, 1}, {3, 16, 11, 15}, {8, 14, 9, 2}};
	adrp	x0, .LC4	// tmp187,
	add	x1, x0, :lo12:.LC4	// tmp186, tmp187,
	add	x0, sp, 456	// tmp188,,
	ldp	q0, q1, [x1]	// tmp190, tmp191,
	stp	q0, q1, [x0]	// tmp190, tmp191, grid4
	ldp	q0, q1, [x1, 32]	// tmp192, tmp193,
	stp	q0, q1, [x0, 32]	// tmp192, tmp193, grid4
// problem130.c:68:     int *grid4_ptrs[] = {grid4[0], grid4[1], grid4[2], grid4[3]};
	add	x0, sp, 600	// tmp194,,
	sub	x0, x0, #352	// tmp196, tmp194,
	add	x1, sp, 456	// tmp197,,
	str	x1, [x0]	// tmp197, grid4_ptrs[0]
	add	x0, sp, 600	// tmp198,,
	sub	x0, x0, #352	// tmp200, tmp198,
	add	x1, sp, 456	// tmp201,,
	add	x1, x1, 16	// tmp202, tmp201,
	str	x1, [x0, 8]	// tmp202, grid4_ptrs[1]
	add	x0, sp, 600	// tmp203,,
	sub	x0, x0, #352	// tmp205, tmp203,
	add	x1, sp, 456	// tmp206,,
	add	x1, x1, 32	// tmp207, tmp206,
	str	x1, [x0, 16]	// tmp207, grid4_ptrs[2]
	add	x0, sp, 600	// tmp208,,
	sub	x0, x0, #352	// tmp210, tmp208,
	add	x1, sp, 456	// tmp211,,
	add	x1, x1, 48	// tmp212, tmp211,
	str	x1, [x0, 24]	// tmp212, grid4_ptrs[3]
// problem130.c:69:     int result4[] = {1, 10, 1, 10, 1, 10, 1};
	adrp	x0, .LC5	// tmp214,
	add	x1, x0, :lo12:.LC5	// tmp213, tmp214,
	add	x0, sp, 184	// tmp215,,
	ldr	q0, [x1]	// tmp217,
	str	q0, [x0]	// tmp217, result4
	ldr	q0, [x1, 12]	// tmp218,
	str	q0, [x0, 12]	// tmp218, result4
// problem130.c:70:     int *out4 = func0(grid4_ptrs, 4, 7, &size);
	add	x1, sp, 28	// tmp219,,
	add	x0, sp, 248	// tmp220,,
	mov	x3, x1	//, tmp219
	mov	w2, 7	//,
	mov	w1, 4	//,
	bl	func0		//
	str	x0, [sp, 56]	//, out4
// problem130.c:71:     assert(issame(out4, result4, size));
	ldr	w1, [sp, 28]	// size.4_7, size
	add	x0, sp, 184	// tmp221,,
	mov	w2, w1	//, size.4_7
	mov	x1, x0	//, tmp221
	ldr	x0, [sp, 56]	//, out4
	bl	issame		//
	cmp	w0, 0	// _8,
	bne	.L25		//,
// problem130.c:71:     assert(issame(out4, result4, size));
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp222,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp222,
	mov	w2, 71	//,
	adrp	x0, .LC8	// tmp223,
	add	x1, x0, :lo12:.LC8	//, tmp223,
	adrp	x0, .LC12	// tmp224,
	add	x0, x0, :lo12:.LC12	//, tmp224,
	bl	__assert_fail		//
.L25:
// problem130.c:72:     free(out4);
	ldr	x0, [sp, 56]	//, out4
	bl	free		//
// problem130.c:75:     int grid5[4][4] = {{8, 14, 9, 2}, {6, 4, 13, 15}, {5, 7, 1, 12}, {3, 10, 11, 16}};
	adrp	x0, .LC6	// tmp226,
	add	x1, x0, :lo12:.LC6	// tmp225, tmp226,
	add	x0, sp, 520	// tmp227,,
	ldp	q0, q1, [x1]	// tmp229, tmp230,
	stp	q0, q1, [x0]	// tmp229, tmp230, grid5
	ldp	q0, q1, [x1, 32]	// tmp231, tmp232,
	stp	q0, q1, [x0, 32]	// tmp231, tmp232, grid5
// problem130.c:76:     int *grid5_ptrs[] = {grid5[0], grid5[1], grid5[2], grid5[3]};
	add	x0, sp, 600	// tmp233,,
	sub	x0, x0, #320	// tmp235, tmp233,
	add	x1, sp, 520	// tmp236,,
	str	x1, [x0]	// tmp236, grid5_ptrs[0]
	add	x0, sp, 600	// tmp237,,
	sub	x0, x0, #320	// tmp239, tmp237,
	add	x1, sp, 520	// tmp240,,
	add	x1, x1, 16	// tmp241, tmp240,
	str	x1, [x0, 8]	// tmp241, grid5_ptrs[1]
	add	x0, sp, 600	// tmp242,,
	sub	x0, x0, #320	// tmp244, tmp242,
	add	x1, sp, 520	// tmp245,,
	add	x1, x1, 32	// tmp246, tmp245,
	str	x1, [x0, 16]	// tmp246, grid5_ptrs[2]
	add	x0, sp, 600	// tmp247,,
	sub	x0, x0, #320	// tmp249, tmp247,
	add	x1, sp, 520	// tmp250,,
	add	x1, x1, 48	// tmp251, tmp250,
	str	x1, [x0, 24]	// tmp251, grid5_ptrs[3]
// problem130.c:77:     int result5[] = {1, 7, 1, 7, 1};
	adrp	x0, .LC7	// tmp253,
	add	x0, x0, :lo12:.LC7	// tmp252, tmp253,
	add	x2, sp, 112	// tmp254,,
	mov	x3, x0	// tmp255, tmp252
	ldp	x0, x1, [x3]	// tmp256,
	stp	x0, x1, [x2]	// tmp256, result5
	ldr	w0, [x3, 16]	// tmp257,
	str	w0, [x2, 16]	// tmp257, result5
// problem130.c:78:     int *out5 = func0(grid5_ptrs, 4, 5, &size);
	add	x1, sp, 28	// tmp258,,
	add	x0, sp, 280	// tmp259,,
	mov	x3, x1	//, tmp258
	mov	w2, 5	//,
	mov	w1, 4	//,
	bl	func0		//
	str	x0, [sp, 64]	//, out5
// problem130.c:79:     assert(issame(out5, result5, size));
	ldr	w1, [sp, 28]	// size.5_9, size
	add	x0, sp, 112	// tmp260,,
	mov	w2, w1	//, size.5_9
	mov	x1, x0	//, tmp260
	ldr	x0, [sp, 64]	//, out5
	bl	issame		//
	cmp	w0, 0	// _10,
	bne	.L26		//,
// problem130.c:79:     assert(issame(out5, result5, size));
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp261,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp261,
	mov	w2, 79	//,
	adrp	x0, .LC8	// tmp262,
	add	x1, x0, :lo12:.LC8	//, tmp262,
	adrp	x0, .LC13	// tmp263,
	add	x0, x0, :lo12:.LC13	//, tmp263,
	bl	__assert_fail		//
.L26:
// problem130.c:80:     free(out5);
	ldr	x0, [sp, 64]	//, out5
	bl	free		//
// problem130.c:82:     return 0;
	mov	w0, 0	// _68,
// problem130.c:83: }
	mov	w1, w0	// <retval>, _68
	adrp	x0, :got:__stack_chk_guard	// tmp266,
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]	// tmp265, tmp266,
	ldr	x3, [sp, 584]	// tmp268, D.4899
	ldr	x2, [x0]	// tmp269,
	subs	x3, x3, x2	// tmp268, tmp269
	mov	x2, 0	// tmp269
	beq	.L28		//,
	bl	__stack_chk_fail		//
.L28:
	mov	w0, w1	//, <retval>
	ldp	x29, x30, [sp]	//,,
	add	sp, sp, 592	//,,
	.cfi_restore 29
	.cfi_restore 30
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
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
