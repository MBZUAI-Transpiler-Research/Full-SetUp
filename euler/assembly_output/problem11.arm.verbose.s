	.arch armv8-a
	.file	"problem11.c"
// GNU C17 (Ubuntu 13.3.0-6ubuntu2~24.04) version 13.3.0 (aarch64-linux-gnu)
//	compiled by GNU C version 13.3.0, GMP version 6.3.0, MPFR version 4.2.1, MPC version 1.3.1, isl version isl-0.26-GMP

// GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
// options passed: -mlittle-endian -mabi=lp64 -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection
	.text
	.section	.rodata
	.align	3
.LC1:
	.string	"%u\n"
	.text
	.align	2
	.global	main
	.type	main, %function
main:
.LFB0:
	.cfi_startproc
	stp	x29, x30, [sp, -16]!	//,,,
	.cfi_def_cfa_offset 16
	.cfi_offset 29, -16
	.cfi_offset 30, -8
	mov	x29, sp	//,
	sub	sp, sp, #1648	//,,
	.cfi_def_cfa_offset 1664
	str	xzr, [sp, 1024]	//,
// problem11.c:13: {
	adrp	x0, :got:__stack_chk_guard	// tmp140,
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]	// tmp140,
	ldr	x1, [x0]	// tmp311,
	str	x1, [sp, 1640]	// tmp311, D.4861
	mov	x1, 0	// tmp311
// problem11.c:14:   unsigned grid[20][20] = {
	adrp	x0, .LC0	// tmp142,
	add	x1, x0, :lo12:.LC0	// tmp141, tmp142,
	add	x0, sp, 40	// tmp143,,
	mov	x3, x1	// tmp144, tmp141
	mov	x1, 1600	// tmp145,
	mov	x2, x1	//, tmp145
	mov	x1, x3	//, tmp144
	bl	memcpy		//
// problem11.c:36:   unsigned m = 0;
	str	wzr, [sp, 12]	//, m
// problem11.c:39:   for (i = 0; i < N-3; i++) {
	str	wzr, [sp, 16]	//, i
// problem11.c:39:   for (i = 0; i < N-3; i++) {
	b	.L2		//
.L5:
// problem11.c:40:     for (j = 0; j < N-3; j++) {
	str	wzr, [sp, 20]	//, j
// problem11.c:40:     for (j = 0; j < N-3; j++) {
	b	.L3		//
.L4:
// problem11.c:41:       unsigned h = grid[i][j] * grid[i][j+1] * grid[i][j+2] * grid[i][j+3];
	ldr	w2, [sp, 20]	// tmp147, j
	ldr	w1, [sp, 16]	// tmp148, i
	mov	x0, x1	// tmp149, tmp148
	lsl	x0, x0, 2	// tmp150, tmp149,
	add	x0, x0, x1	// tmp149, tmp149, tmp148
	lsl	x0, x0, 2	// tmp151, tmp149,
	add	x0, x0, x2	// tmp152, tmp149, tmp147
	lsl	x0, x0, 2	// tmp153, tmp152,
	add	x1, sp, 40	// tmp154,,
	ldr	w2, [x1, x0]	// _1, grid[i_49][j_50]
// problem11.c:41:       unsigned h = grid[i][j] * grid[i][j+1] * grid[i][j+2] * grid[i][j+3];
	ldr	w0, [sp, 20]	// tmp155, j
	add	w0, w0, 1	// _2, tmp155,
// problem11.c:41:       unsigned h = grid[i][j] * grid[i][j+1] * grid[i][j+2] * grid[i][j+3];
	uxtw	x3, w0	// tmp156, _2
	ldr	w1, [sp, 16]	// tmp157, i
	mov	x0, x1	// tmp158, tmp157
	lsl	x0, x0, 2	// tmp159, tmp158,
	add	x0, x0, x1	// tmp158, tmp158, tmp157
	lsl	x0, x0, 2	// tmp160, tmp158,
	add	x0, x0, x3	// tmp161, tmp158, tmp156
	lsl	x0, x0, 2	// tmp162, tmp161,
	add	x1, sp, 40	// tmp163,,
	ldr	w0, [x1, x0]	// _3, grid[i_49][_2]
// problem11.c:41:       unsigned h = grid[i][j] * grid[i][j+1] * grid[i][j+2] * grid[i][j+3];
	mul	w2, w2, w0	// _4, _1, _3
// problem11.c:41:       unsigned h = grid[i][j] * grid[i][j+1] * grid[i][j+2] * grid[i][j+3];
	ldr	w0, [sp, 20]	// tmp164, j
	add	w0, w0, 2	// _5, tmp164,
// problem11.c:41:       unsigned h = grid[i][j] * grid[i][j+1] * grid[i][j+2] * grid[i][j+3];
	uxtw	x3, w0	// tmp165, _5
	ldr	w1, [sp, 16]	// tmp166, i
	mov	x0, x1	// tmp167, tmp166
	lsl	x0, x0, 2	// tmp168, tmp167,
	add	x0, x0, x1	// tmp167, tmp167, tmp166
	lsl	x0, x0, 2	// tmp169, tmp167,
	add	x0, x0, x3	// tmp170, tmp167, tmp165
	lsl	x0, x0, 2	// tmp171, tmp170,
	add	x1, sp, 40	// tmp172,,
	ldr	w0, [x1, x0]	// _6, grid[i_49][_5]
// problem11.c:41:       unsigned h = grid[i][j] * grid[i][j+1] * grid[i][j+2] * grid[i][j+3];
	mul	w2, w2, w0	// _7, _4, _6
// problem11.c:41:       unsigned h = grid[i][j] * grid[i][j+1] * grid[i][j+2] * grid[i][j+3];
	ldr	w0, [sp, 20]	// tmp173, j
	add	w0, w0, 3	// _8, tmp173,
// problem11.c:41:       unsigned h = grid[i][j] * grid[i][j+1] * grid[i][j+2] * grid[i][j+3];
	uxtw	x3, w0	// tmp174, _8
	ldr	w1, [sp, 16]	// tmp175, i
	mov	x0, x1	// tmp176, tmp175
	lsl	x0, x0, 2	// tmp177, tmp176,
	add	x0, x0, x1	// tmp176, tmp176, tmp175
	lsl	x0, x0, 2	// tmp178, tmp176,
	add	x0, x0, x3	// tmp179, tmp176, tmp174
	lsl	x0, x0, 2	// tmp180, tmp179,
	add	x1, sp, 40	// tmp181,,
	ldr	w0, [x1, x0]	// _9, grid[i_49][_8]
// problem11.c:41:       unsigned h = grid[i][j] * grid[i][j+1] * grid[i][j+2] * grid[i][j+3];
	mul	w0, w2, w0	// tmp182, _7, _9
	str	w0, [sp, 24]	// tmp182, h
// problem11.c:42:       unsigned v = grid[j][i] * grid[j+1][i] * grid[j+2][i] * grid[j+3][i];
	ldr	w2, [sp, 16]	// tmp183, i
	ldr	w1, [sp, 20]	// tmp184, j
	mov	x0, x1	// tmp185, tmp184
	lsl	x0, x0, 2	// tmp186, tmp185,
	add	x0, x0, x1	// tmp185, tmp185, tmp184
	lsl	x0, x0, 2	// tmp187, tmp185,
	add	x0, x0, x2	// tmp188, tmp185, tmp183
	lsl	x0, x0, 2	// tmp189, tmp188,
	add	x1, sp, 40	// tmp190,,
	ldr	w2, [x1, x0]	// _10, grid[j_50][i_49]
// problem11.c:42:       unsigned v = grid[j][i] * grid[j+1][i] * grid[j+2][i] * grid[j+3][i];
	ldr	w0, [sp, 20]	// tmp191, j
	add	w0, w0, 1	// _11, tmp191,
// problem11.c:42:       unsigned v = grid[j][i] * grid[j+1][i] * grid[j+2][i] * grid[j+3][i];
	ldr	w3, [sp, 16]	// tmp192, i
	uxtw	x1, w0	// tmp193, _11
	mov	x0, x1	// tmp194, tmp193
	lsl	x0, x0, 2	// tmp195, tmp194,
	add	x0, x0, x1	// tmp194, tmp194, tmp193
	lsl	x0, x0, 2	// tmp196, tmp194,
	add	x0, x0, x3	// tmp197, tmp194, tmp192
	lsl	x0, x0, 2	// tmp198, tmp197,
	add	x1, sp, 40	// tmp199,,
	ldr	w0, [x1, x0]	// _12, grid[_11][i_49]
// problem11.c:42:       unsigned v = grid[j][i] * grid[j+1][i] * grid[j+2][i] * grid[j+3][i];
	mul	w2, w2, w0	// _13, _10, _12
// problem11.c:42:       unsigned v = grid[j][i] * grid[j+1][i] * grid[j+2][i] * grid[j+3][i];
	ldr	w0, [sp, 20]	// tmp200, j
	add	w0, w0, 2	// _14, tmp200,
// problem11.c:42:       unsigned v = grid[j][i] * grid[j+1][i] * grid[j+2][i] * grid[j+3][i];
	ldr	w3, [sp, 16]	// tmp201, i
	uxtw	x1, w0	// tmp202, _14
	mov	x0, x1	// tmp203, tmp202
	lsl	x0, x0, 2	// tmp204, tmp203,
	add	x0, x0, x1	// tmp203, tmp203, tmp202
	lsl	x0, x0, 2	// tmp205, tmp203,
	add	x0, x0, x3	// tmp206, tmp203, tmp201
	lsl	x0, x0, 2	// tmp207, tmp206,
	add	x1, sp, 40	// tmp208,,
	ldr	w0, [x1, x0]	// _15, grid[_14][i_49]
// problem11.c:42:       unsigned v = grid[j][i] * grid[j+1][i] * grid[j+2][i] * grid[j+3][i];
	mul	w2, w2, w0	// _16, _13, _15
// problem11.c:42:       unsigned v = grid[j][i] * grid[j+1][i] * grid[j+2][i] * grid[j+3][i];
	ldr	w0, [sp, 20]	// tmp209, j
	add	w0, w0, 3	// _17, tmp209,
// problem11.c:42:       unsigned v = grid[j][i] * grid[j+1][i] * grid[j+2][i] * grid[j+3][i];
	ldr	w3, [sp, 16]	// tmp210, i
	uxtw	x1, w0	// tmp211, _17
	mov	x0, x1	// tmp212, tmp211
	lsl	x0, x0, 2	// tmp213, tmp212,
	add	x0, x0, x1	// tmp212, tmp212, tmp211
	lsl	x0, x0, 2	// tmp214, tmp212,
	add	x0, x0, x3	// tmp215, tmp212, tmp210
	lsl	x0, x0, 2	// tmp216, tmp215,
	add	x1, sp, 40	// tmp217,,
	ldr	w0, [x1, x0]	// _18, grid[_17][i_49]
// problem11.c:42:       unsigned v = grid[j][i] * grid[j+1][i] * grid[j+2][i] * grid[j+3][i];
	mul	w0, w2, w0	// tmp218, _16, _18
	str	w0, [sp, 28]	// tmp218, v
// problem11.c:43:       unsigned d1 = grid[i][j] * grid[i+1][j+1] * grid[i+2][j+2] * grid[i+3][j+3];
	ldr	w2, [sp, 20]	// tmp219, j
	ldr	w1, [sp, 16]	// tmp220, i
	mov	x0, x1	// tmp221, tmp220
	lsl	x0, x0, 2	// tmp222, tmp221,
	add	x0, x0, x1	// tmp221, tmp221, tmp220
	lsl	x0, x0, 2	// tmp223, tmp221,
	add	x0, x0, x2	// tmp224, tmp221, tmp219
	lsl	x0, x0, 2	// tmp225, tmp224,
	add	x1, sp, 40	// tmp226,,
	ldr	w2, [x1, x0]	// _19, grid[i_49][j_50]
// problem11.c:43:       unsigned d1 = grid[i][j] * grid[i+1][j+1] * grid[i+2][j+2] * grid[i+3][j+3];
	ldr	w0, [sp, 16]	// tmp227, i
	add	w1, w0, 1	// _20, tmp227,
// problem11.c:43:       unsigned d1 = grid[i][j] * grid[i+1][j+1] * grid[i+2][j+2] * grid[i+3][j+3];
	ldr	w0, [sp, 20]	// tmp228, j
	add	w0, w0, 1	// _21, tmp228,
// problem11.c:43:       unsigned d1 = grid[i][j] * grid[i+1][j+1] * grid[i+2][j+2] * grid[i+3][j+3];
	uxtw	x3, w0	// tmp229, _21
	uxtw	x1, w1	// tmp230, _20
	mov	x0, x1	// tmp231, tmp230
	lsl	x0, x0, 2	// tmp232, tmp231,
	add	x0, x0, x1	// tmp231, tmp231, tmp230
	lsl	x0, x0, 2	// tmp233, tmp231,
	add	x0, x0, x3	// tmp234, tmp231, tmp229
	lsl	x0, x0, 2	// tmp235, tmp234,
	add	x1, sp, 40	// tmp236,,
	ldr	w0, [x1, x0]	// _22, grid[_20][_21]
// problem11.c:43:       unsigned d1 = grid[i][j] * grid[i+1][j+1] * grid[i+2][j+2] * grid[i+3][j+3];
	mul	w2, w2, w0	// _23, _19, _22
// problem11.c:43:       unsigned d1 = grid[i][j] * grid[i+1][j+1] * grid[i+2][j+2] * grid[i+3][j+3];
	ldr	w0, [sp, 16]	// tmp237, i
	add	w1, w0, 2	// _24, tmp237,
// problem11.c:43:       unsigned d1 = grid[i][j] * grid[i+1][j+1] * grid[i+2][j+2] * grid[i+3][j+3];
	ldr	w0, [sp, 20]	// tmp238, j
	add	w0, w0, 2	// _25, tmp238,
// problem11.c:43:       unsigned d1 = grid[i][j] * grid[i+1][j+1] * grid[i+2][j+2] * grid[i+3][j+3];
	uxtw	x3, w0	// tmp239, _25
	uxtw	x1, w1	// tmp240, _24
	mov	x0, x1	// tmp241, tmp240
	lsl	x0, x0, 2	// tmp242, tmp241,
	add	x0, x0, x1	// tmp241, tmp241, tmp240
	lsl	x0, x0, 2	// tmp243, tmp241,
	add	x0, x0, x3	// tmp244, tmp241, tmp239
	lsl	x0, x0, 2	// tmp245, tmp244,
	add	x1, sp, 40	// tmp246,,
	ldr	w0, [x1, x0]	// _26, grid[_24][_25]
// problem11.c:43:       unsigned d1 = grid[i][j] * grid[i+1][j+1] * grid[i+2][j+2] * grid[i+3][j+3];
	mul	w2, w2, w0	// _27, _23, _26
// problem11.c:43:       unsigned d1 = grid[i][j] * grid[i+1][j+1] * grid[i+2][j+2] * grid[i+3][j+3];
	ldr	w0, [sp, 16]	// tmp247, i
	add	w1, w0, 3	// _28, tmp247,
// problem11.c:43:       unsigned d1 = grid[i][j] * grid[i+1][j+1] * grid[i+2][j+2] * grid[i+3][j+3];
	ldr	w0, [sp, 20]	// tmp248, j
	add	w0, w0, 3	// _29, tmp248,
// problem11.c:43:       unsigned d1 = grid[i][j] * grid[i+1][j+1] * grid[i+2][j+2] * grid[i+3][j+3];
	uxtw	x3, w0	// tmp249, _29
	uxtw	x1, w1	// tmp250, _28
	mov	x0, x1	// tmp251, tmp250
	lsl	x0, x0, 2	// tmp252, tmp251,
	add	x0, x0, x1	// tmp251, tmp251, tmp250
	lsl	x0, x0, 2	// tmp253, tmp251,
	add	x0, x0, x3	// tmp254, tmp251, tmp249
	lsl	x0, x0, 2	// tmp255, tmp254,
	add	x1, sp, 40	// tmp256,,
	ldr	w0, [x1, x0]	// _30, grid[_28][_29]
// problem11.c:43:       unsigned d1 = grid[i][j] * grid[i+1][j+1] * grid[i+2][j+2] * grid[i+3][j+3];
	mul	w0, w2, w0	// tmp257, _27, _30
	str	w0, [sp, 32]	// tmp257, d1
// problem11.c:44:       unsigned d2 = grid[i][N-j-1] * grid[i+1][N-j-2] * grid[i+2][N-j-3] * grid[i+3][N-j-4];
	mov	w1, 19	// tmp258,
	ldr	w0, [sp, 20]	// tmp259, j
	sub	w0, w1, w0	// _31, tmp258, tmp259
// problem11.c:44:       unsigned d2 = grid[i][N-j-1] * grid[i+1][N-j-2] * grid[i+2][N-j-3] * grid[i+3][N-j-4];
	uxtw	x2, w0	// tmp260, _31
	ldr	w1, [sp, 16]	// tmp261, i
	mov	x0, x1	// tmp262, tmp261
	lsl	x0, x0, 2	// tmp263, tmp262,
	add	x0, x0, x1	// tmp262, tmp262, tmp261
	lsl	x0, x0, 2	// tmp264, tmp262,
	add	x0, x0, x2	// tmp265, tmp262, tmp260
	lsl	x0, x0, 2	// tmp266, tmp265,
	add	x1, sp, 40	// tmp267,,
	ldr	w2, [x1, x0]	// _32, grid[i_49][_31]
// problem11.c:44:       unsigned d2 = grid[i][N-j-1] * grid[i+1][N-j-2] * grid[i+2][N-j-3] * grid[i+3][N-j-4];
	ldr	w0, [sp, 16]	// tmp268, i
	add	w4, w0, 1	// _33, tmp268,
// problem11.c:44:       unsigned d2 = grid[i][N-j-1] * grid[i+1][N-j-2] * grid[i+2][N-j-3] * grid[i+3][N-j-4];
	mov	w1, 18	// tmp269,
	ldr	w0, [sp, 20]	// tmp270, j
	sub	w0, w1, w0	// _34, tmp269, tmp270
// problem11.c:44:       unsigned d2 = grid[i][N-j-1] * grid[i+1][N-j-2] * grid[i+2][N-j-3] * grid[i+3][N-j-4];
	uxtw	x3, w0	// tmp271, _34
	uxtw	x1, w4	// tmp272, _33
	mov	x0, x1	// tmp273, tmp272
	lsl	x0, x0, 2	// tmp274, tmp273,
	add	x0, x0, x1	// tmp273, tmp273, tmp272
	lsl	x0, x0, 2	// tmp275, tmp273,
	add	x0, x0, x3	// tmp276, tmp273, tmp271
	lsl	x0, x0, 2	// tmp277, tmp276,
	add	x1, sp, 40	// tmp278,,
	ldr	w0, [x1, x0]	// _35, grid[_33][_34]
// problem11.c:44:       unsigned d2 = grid[i][N-j-1] * grid[i+1][N-j-2] * grid[i+2][N-j-3] * grid[i+3][N-j-4];
	mul	w2, w2, w0	// _36, _32, _35
// problem11.c:44:       unsigned d2 = grid[i][N-j-1] * grid[i+1][N-j-2] * grid[i+2][N-j-3] * grid[i+3][N-j-4];
	ldr	w0, [sp, 16]	// tmp279, i
	add	w4, w0, 2	// _37, tmp279,
// problem11.c:44:       unsigned d2 = grid[i][N-j-1] * grid[i+1][N-j-2] * grid[i+2][N-j-3] * grid[i+3][N-j-4];
	mov	w1, 17	// tmp280,
	ldr	w0, [sp, 20]	// tmp281, j
	sub	w0, w1, w0	// _38, tmp280, tmp281
// problem11.c:44:       unsigned d2 = grid[i][N-j-1] * grid[i+1][N-j-2] * grid[i+2][N-j-3] * grid[i+3][N-j-4];
	uxtw	x3, w0	// tmp282, _38
	uxtw	x1, w4	// tmp283, _37
	mov	x0, x1	// tmp284, tmp283
	lsl	x0, x0, 2	// tmp285, tmp284,
	add	x0, x0, x1	// tmp284, tmp284, tmp283
	lsl	x0, x0, 2	// tmp286, tmp284,
	add	x0, x0, x3	// tmp287, tmp284, tmp282
	lsl	x0, x0, 2	// tmp288, tmp287,
	add	x1, sp, 40	// tmp289,,
	ldr	w0, [x1, x0]	// _39, grid[_37][_38]
// problem11.c:44:       unsigned d2 = grid[i][N-j-1] * grid[i+1][N-j-2] * grid[i+2][N-j-3] * grid[i+3][N-j-4];
	mul	w2, w2, w0	// _40, _36, _39
// problem11.c:44:       unsigned d2 = grid[i][N-j-1] * grid[i+1][N-j-2] * grid[i+2][N-j-3] * grid[i+3][N-j-4];
	ldr	w0, [sp, 16]	// tmp290, i
	add	w4, w0, 3	// _41, tmp290,
// problem11.c:44:       unsigned d2 = grid[i][N-j-1] * grid[i+1][N-j-2] * grid[i+2][N-j-3] * grid[i+3][N-j-4];
	mov	w1, 16	// tmp291,
	ldr	w0, [sp, 20]	// tmp292, j
	sub	w0, w1, w0	// _42, tmp291, tmp292
// problem11.c:44:       unsigned d2 = grid[i][N-j-1] * grid[i+1][N-j-2] * grid[i+2][N-j-3] * grid[i+3][N-j-4];
	uxtw	x3, w0	// tmp293, _42
	uxtw	x1, w4	// tmp294, _41
	mov	x0, x1	// tmp295, tmp294
	lsl	x0, x0, 2	// tmp296, tmp295,
	add	x0, x0, x1	// tmp295, tmp295, tmp294
	lsl	x0, x0, 2	// tmp297, tmp295,
	add	x0, x0, x3	// tmp298, tmp295, tmp293
	lsl	x0, x0, 2	// tmp299, tmp298,
	add	x1, sp, 40	// tmp300,,
	ldr	w0, [x1, x0]	// _43, grid[_41][_42]
// problem11.c:44:       unsigned d2 = grid[i][N-j-1] * grid[i+1][N-j-2] * grid[i+2][N-j-3] * grid[i+3][N-j-4];
	mul	w0, w2, w0	// tmp301, _40, _43
	str	w0, [sp, 36]	// tmp301, d2
// problem11.c:45:       m = max(m, max(h, max(v, max(d1, d2))));
	ldr	w1, [sp, 36]	//, d2
	ldr	w0, [sp, 32]	//, d1
	bl	max		//
// problem11.c:45:       m = max(m, max(h, max(v, max(d1, d2))));
	mov	w1, w0	//, _44
	ldr	w0, [sp, 28]	//, v
	bl	max		//
// problem11.c:45:       m = max(m, max(h, max(v, max(d1, d2))));
	mov	w1, w0	//, _45
	ldr	w0, [sp, 24]	//, h
	bl	max		//
// problem11.c:45:       m = max(m, max(h, max(v, max(d1, d2))));
	mov	w1, w0	//, _46
	ldr	w0, [sp, 12]	//, m
	bl	max		//
	str	w0, [sp, 12]	//, m
// problem11.c:40:     for (j = 0; j < N-3; j++) {
	ldr	w0, [sp, 20]	// tmp303, j
	add	w0, w0, 1	// tmp302, tmp303,
	str	w0, [sp, 20]	// tmp302, j
.L3:
// problem11.c:40:     for (j = 0; j < N-3; j++) {
	ldr	w0, [sp, 20]	// tmp304, j
	cmp	w0, 16	// tmp304,
	bls	.L4		//,
// problem11.c:39:   for (i = 0; i < N-3; i++) {
	ldr	w0, [sp, 16]	// tmp306, i
	add	w0, w0, 1	// tmp305, tmp306,
	str	w0, [sp, 16]	// tmp305, i
.L2:
// problem11.c:39:   for (i = 0; i < N-3; i++) {
	ldr	w0, [sp, 16]	// tmp307, i
	cmp	w0, 16	// tmp307,
	bls	.L5		//,
// problem11.c:48:   printf("%u\n", m);
	ldr	w1, [sp, 12]	//, m
	adrp	x0, .LC1	// tmp308,
	add	x0, x0, :lo12:.LC1	//, tmp308,
	bl	printf		//
// problem11.c:50:   return 0;
	mov	w0, 0	// _58,
// problem11.c:51: }
	mov	w1, w0	// <retval>, _58
	adrp	x0, :got:__stack_chk_guard	// tmp310,
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]	// tmp310,
	ldr	x3, [sp, 1640]	// tmp312, D.4861
	ldr	x2, [x0]	// tmp313,
	subs	x3, x3, x2	// tmp312, tmp313
	mov	x2, 0	// tmp313
	beq	.L7		//,
	bl	__stack_chk_fail		//
.L7:
	mov	w0, w1	//, <retval>
	add	sp, sp, 1648	//,,
	.cfi_def_cfa_offset 16
	ldp	x29, x30, [sp], 16	//,,,
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.section	.rodata
	.align	3
.LC0:
	.word	8
	.word	2
	.word	22
	.word	97
	.word	38
	.word	15
	.word	0
	.word	40
	.word	0
	.word	75
	.word	4
	.word	5
	.word	7
	.word	78
	.word	52
	.word	12
	.word	50
	.word	77
	.word	91
	.word	8
	.word	49
	.word	49
	.word	99
	.word	40
	.word	17
	.word	81
	.word	18
	.word	57
	.word	60
	.word	87
	.word	17
	.word	40
	.word	98
	.word	43
	.word	69
	.word	48
	.word	4
	.word	56
	.word	62
	.word	0
	.word	81
	.word	49
	.word	31
	.word	73
	.word	55
	.word	79
	.word	14
	.word	29
	.word	93
	.word	71
	.word	40
	.word	67
	.word	53
	.word	88
	.word	30
	.word	3
	.word	49
	.word	13
	.word	36
	.word	65
	.word	52
	.word	70
	.word	95
	.word	23
	.word	4
	.word	60
	.word	11
	.word	42
	.word	69
	.word	24
	.word	68
	.word	56
	.word	1
	.word	32
	.word	56
	.word	71
	.word	37
	.word	2
	.word	36
	.word	91
	.word	22
	.word	31
	.word	16
	.word	71
	.word	51
	.word	67
	.word	63
	.word	89
	.word	41
	.word	92
	.word	36
	.word	54
	.word	22
	.word	40
	.word	40
	.word	28
	.word	66
	.word	33
	.word	13
	.word	80
	.word	24
	.word	47
	.word	32
	.word	60
	.word	99
	.word	3
	.word	45
	.word	2
	.word	44
	.word	75
	.word	33
	.word	53
	.word	78
	.word	36
	.word	84
	.word	20
	.word	35
	.word	17
	.word	12
	.word	50
	.word	32
	.word	98
	.word	81
	.word	28
	.word	64
	.word	23
	.word	67
	.word	10
	.word	26
	.word	38
	.word	40
	.word	67
	.word	59
	.word	54
	.word	70
	.word	66
	.word	18
	.word	38
	.word	64
	.word	70
	.word	67
	.word	26
	.word	20
	.word	68
	.word	2
	.word	62
	.word	12
	.word	20
	.word	95
	.word	63
	.word	94
	.word	39
	.word	63
	.word	8
	.word	40
	.word	91
	.word	66
	.word	49
	.word	94
	.word	21
	.word	24
	.word	55
	.word	58
	.word	5
	.word	66
	.word	73
	.word	99
	.word	26
	.word	97
	.word	17
	.word	78
	.word	78
	.word	96
	.word	83
	.word	14
	.word	88
	.word	34
	.word	89
	.word	63
	.word	72
	.word	21
	.word	36
	.word	23
	.word	9
	.word	75
	.word	0
	.word	76
	.word	44
	.word	20
	.word	45
	.word	35
	.word	14
	.word	0
	.word	61
	.word	33
	.word	97
	.word	34
	.word	31
	.word	33
	.word	95
	.word	78
	.word	17
	.word	53
	.word	28
	.word	22
	.word	75
	.word	31
	.word	67
	.word	15
	.word	94
	.word	3
	.word	80
	.word	4
	.word	62
	.word	16
	.word	14
	.word	9
	.word	53
	.word	56
	.word	92
	.word	16
	.word	39
	.word	5
	.word	42
	.word	96
	.word	35
	.word	31
	.word	47
	.word	55
	.word	58
	.word	88
	.word	24
	.word	0
	.word	17
	.word	54
	.word	24
	.word	36
	.word	29
	.word	85
	.word	57
	.word	86
	.word	56
	.word	0
	.word	48
	.word	35
	.word	71
	.word	89
	.word	7
	.word	5
	.word	44
	.word	44
	.word	37
	.word	44
	.word	60
	.word	21
	.word	58
	.word	51
	.word	54
	.word	17
	.word	58
	.word	19
	.word	80
	.word	81
	.word	68
	.word	5
	.word	94
	.word	47
	.word	69
	.word	28
	.word	73
	.word	92
	.word	13
	.word	86
	.word	52
	.word	17
	.word	77
	.word	4
	.word	89
	.word	55
	.word	40
	.word	4
	.word	52
	.word	8
	.word	83
	.word	97
	.word	35
	.word	99
	.word	16
	.word	7
	.word	97
	.word	57
	.word	32
	.word	16
	.word	26
	.word	26
	.word	79
	.word	33
	.word	27
	.word	98
	.word	66
	.word	88
	.word	36
	.word	68
	.word	87
	.word	57
	.word	62
	.word	20
	.word	72
	.word	3
	.word	46
	.word	33
	.word	67
	.word	46
	.word	55
	.word	12
	.word	32
	.word	63
	.word	93
	.word	53
	.word	69
	.word	4
	.word	42
	.word	16
	.word	73
	.word	38
	.word	25
	.word	39
	.word	11
	.word	24
	.word	94
	.word	72
	.word	18
	.word	8
	.word	46
	.word	29
	.word	32
	.word	40
	.word	62
	.word	76
	.word	36
	.word	20
	.word	69
	.word	36
	.word	41
	.word	72
	.word	30
	.word	23
	.word	88
	.word	34
	.word	62
	.word	99
	.word	69
	.word	82
	.word	67
	.word	59
	.word	85
	.word	74
	.word	4
	.word	36
	.word	16
	.word	20
	.word	73
	.word	35
	.word	29
	.word	78
	.word	31
	.word	90
	.word	1
	.word	74
	.word	31
	.word	49
	.word	71
	.word	48
	.word	86
	.word	81
	.word	16
	.word	23
	.word	57
	.word	5
	.word	54
	.word	1
	.word	70
	.word	54
	.word	71
	.word	83
	.word	51
	.word	54
	.word	69
	.word	16
	.word	92
	.word	33
	.word	48
	.word	61
	.word	43
	.word	52
	.word	1
	.word	89
	.word	19
	.word	67
	.word	48
	.text
	.align	2
	.type	max, %function
max:
.LFB1:
	.cfi_startproc
	sub	sp, sp, #16	//,,
	.cfi_def_cfa_offset 16
	str	w0, [sp, 12]	// a, a
	str	w1, [sp, 8]	// b, b
// problem11.c:55:   return a > b ? a : b;
	ldr	w0, [sp, 12]	// tmp94, a
	ldr	w2, [sp, 8]	// tmp95, b
	ldr	w1, [sp, 8]	// tmp96, b
	cmp	w2, w0	// tmp95, tmp94
	csel	w0, w1, w0, cs	// _3, tmp96, tmp94,
// problem11.c:56: }
	add	sp, sp, 16	//,,
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE1:
	.size	max, .-max
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
