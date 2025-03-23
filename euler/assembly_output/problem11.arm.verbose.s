	.arch armv8-a
	.file	"problem11.c"
// GNU C17 (Ubuntu 11.4.0-1ubuntu1~22.04) version 11.4.0 (aarch64-linux-gnu)
//	compiled by GNU C version 11.4.0, GMP version 6.2.1, MPFR version 4.1.0, MPC version 1.2.1, isl version isl-0.24-GMP

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
	sub	sp, sp, #1664	//,,
	.cfi_def_cfa_offset 1664
	stp	x29, x30, [sp]	//,,
	.cfi_offset 29, -1664
	.cfi_offset 30, -1656
	mov	x29, sp	//,
// problem11.c:13: {
	adrp	x0, :got:__stack_chk_guard	// tmp141,
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]	// tmp140, tmp141,
	ldr	x1, [x0]	// tmp313,
	str	x1, [sp, 1656]	// tmp313, D.4279
	mov	x1, 0	// tmp313
// problem11.c:14:   unsigned grid[20][20] = {
	adrp	x0, .LC0	// tmp143,
	add	x1, x0, :lo12:.LC0	// tmp142, tmp143,
	add	x0, sp, 56	// tmp144,,
	mov	x3, x1	// tmp145, tmp142
	mov	x1, 1600	// tmp146,
	mov	x2, x1	//, tmp146
	mov	x1, x3	//, tmp145
	bl	memcpy		//
// problem11.c:36:   unsigned m = 0;
	str	wzr, [sp, 28]	//, m
// problem11.c:39:   for (i = 0; i < N-3; i++) {
	str	wzr, [sp, 32]	//, i
// problem11.c:39:   for (i = 0; i < N-3; i++) {
	b	.L2		//
.L5:
// problem11.c:40:     for (j = 0; j < N-3; j++) {
	str	wzr, [sp, 36]	//, j
// problem11.c:40:     for (j = 0; j < N-3; j++) {
	b	.L3		//
.L4:
// problem11.c:41:       unsigned h = grid[i][j] * grid[i][j+1] * grid[i][j+2] * grid[i][j+3];
	ldr	w2, [sp, 36]	// tmp148, j
	ldr	w1, [sp, 32]	// tmp149, i
	mov	x0, x1	// tmp150, tmp149
	lsl	x0, x0, 2	// tmp151, tmp150,
	add	x0, x0, x1	// tmp150, tmp150, tmp149
	lsl	x0, x0, 2	// tmp152, tmp150,
	add	x0, x0, x2	// tmp153, tmp150, tmp148
	lsl	x0, x0, 2	// tmp154, tmp153,
	add	x1, sp, 56	// tmp155,,
	ldr	w2, [x1, x0]	// _1, grid[i_49][j_50]
// problem11.c:41:       unsigned h = grid[i][j] * grid[i][j+1] * grid[i][j+2] * grid[i][j+3];
	ldr	w0, [sp, 36]	// tmp156, j
	add	w0, w0, 1	// _2, tmp156,
// problem11.c:41:       unsigned h = grid[i][j] * grid[i][j+1] * grid[i][j+2] * grid[i][j+3];
	uxtw	x3, w0	// tmp157, _2
	ldr	w1, [sp, 32]	// tmp158, i
	mov	x0, x1	// tmp159, tmp158
	lsl	x0, x0, 2	// tmp160, tmp159,
	add	x0, x0, x1	// tmp159, tmp159, tmp158
	lsl	x0, x0, 2	// tmp161, tmp159,
	add	x0, x0, x3	// tmp162, tmp159, tmp157
	lsl	x0, x0, 2	// tmp163, tmp162,
	add	x1, sp, 56	// tmp164,,
	ldr	w0, [x1, x0]	// _3, grid[i_49][_2]
// problem11.c:41:       unsigned h = grid[i][j] * grid[i][j+1] * grid[i][j+2] * grid[i][j+3];
	mul	w2, w2, w0	// _4, _1, _3
// problem11.c:41:       unsigned h = grid[i][j] * grid[i][j+1] * grid[i][j+2] * grid[i][j+3];
	ldr	w0, [sp, 36]	// tmp165, j
	add	w0, w0, 2	// _5, tmp165,
// problem11.c:41:       unsigned h = grid[i][j] * grid[i][j+1] * grid[i][j+2] * grid[i][j+3];
	uxtw	x3, w0	// tmp166, _5
	ldr	w1, [sp, 32]	// tmp167, i
	mov	x0, x1	// tmp168, tmp167
	lsl	x0, x0, 2	// tmp169, tmp168,
	add	x0, x0, x1	// tmp168, tmp168, tmp167
	lsl	x0, x0, 2	// tmp170, tmp168,
	add	x0, x0, x3	// tmp171, tmp168, tmp166
	lsl	x0, x0, 2	// tmp172, tmp171,
	add	x1, sp, 56	// tmp173,,
	ldr	w0, [x1, x0]	// _6, grid[i_49][_5]
// problem11.c:41:       unsigned h = grid[i][j] * grid[i][j+1] * grid[i][j+2] * grid[i][j+3];
	mul	w2, w2, w0	// _7, _4, _6
// problem11.c:41:       unsigned h = grid[i][j] * grid[i][j+1] * grid[i][j+2] * grid[i][j+3];
	ldr	w0, [sp, 36]	// tmp174, j
	add	w0, w0, 3	// _8, tmp174,
// problem11.c:41:       unsigned h = grid[i][j] * grid[i][j+1] * grid[i][j+2] * grid[i][j+3];
	uxtw	x3, w0	// tmp175, _8
	ldr	w1, [sp, 32]	// tmp176, i
	mov	x0, x1	// tmp177, tmp176
	lsl	x0, x0, 2	// tmp178, tmp177,
	add	x0, x0, x1	// tmp177, tmp177, tmp176
	lsl	x0, x0, 2	// tmp179, tmp177,
	add	x0, x0, x3	// tmp180, tmp177, tmp175
	lsl	x0, x0, 2	// tmp181, tmp180,
	add	x1, sp, 56	// tmp182,,
	ldr	w0, [x1, x0]	// _9, grid[i_49][_8]
// problem11.c:41:       unsigned h = grid[i][j] * grid[i][j+1] * grid[i][j+2] * grid[i][j+3];
	mul	w0, w2, w0	// tmp183, _7, _9
	str	w0, [sp, 40]	// tmp183, h
// problem11.c:42:       unsigned v = grid[j][i] * grid[j+1][i] * grid[j+2][i] * grid[j+3][i];
	ldr	w2, [sp, 32]	// tmp184, i
	ldr	w1, [sp, 36]	// tmp185, j
	mov	x0, x1	// tmp186, tmp185
	lsl	x0, x0, 2	// tmp187, tmp186,
	add	x0, x0, x1	// tmp186, tmp186, tmp185
	lsl	x0, x0, 2	// tmp188, tmp186,
	add	x0, x0, x2	// tmp189, tmp186, tmp184
	lsl	x0, x0, 2	// tmp190, tmp189,
	add	x1, sp, 56	// tmp191,,
	ldr	w2, [x1, x0]	// _10, grid[j_50][i_49]
// problem11.c:42:       unsigned v = grid[j][i] * grid[j+1][i] * grid[j+2][i] * grid[j+3][i];
	ldr	w0, [sp, 36]	// tmp192, j
	add	w0, w0, 1	// _11, tmp192,
// problem11.c:42:       unsigned v = grid[j][i] * grid[j+1][i] * grid[j+2][i] * grid[j+3][i];
	ldr	w3, [sp, 32]	// tmp193, i
	uxtw	x1, w0	// tmp194, _11
	mov	x0, x1	// tmp195, tmp194
	lsl	x0, x0, 2	// tmp196, tmp195,
	add	x0, x0, x1	// tmp195, tmp195, tmp194
	lsl	x0, x0, 2	// tmp197, tmp195,
	add	x0, x0, x3	// tmp198, tmp195, tmp193
	lsl	x0, x0, 2	// tmp199, tmp198,
	add	x1, sp, 56	// tmp200,,
	ldr	w0, [x1, x0]	// _12, grid[_11][i_49]
// problem11.c:42:       unsigned v = grid[j][i] * grid[j+1][i] * grid[j+2][i] * grid[j+3][i];
	mul	w2, w2, w0	// _13, _10, _12
// problem11.c:42:       unsigned v = grid[j][i] * grid[j+1][i] * grid[j+2][i] * grid[j+3][i];
	ldr	w0, [sp, 36]	// tmp201, j
	add	w0, w0, 2	// _14, tmp201,
// problem11.c:42:       unsigned v = grid[j][i] * grid[j+1][i] * grid[j+2][i] * grid[j+3][i];
	ldr	w3, [sp, 32]	// tmp202, i
	uxtw	x1, w0	// tmp203, _14
	mov	x0, x1	// tmp204, tmp203
	lsl	x0, x0, 2	// tmp205, tmp204,
	add	x0, x0, x1	// tmp204, tmp204, tmp203
	lsl	x0, x0, 2	// tmp206, tmp204,
	add	x0, x0, x3	// tmp207, tmp204, tmp202
	lsl	x0, x0, 2	// tmp208, tmp207,
	add	x1, sp, 56	// tmp209,,
	ldr	w0, [x1, x0]	// _15, grid[_14][i_49]
// problem11.c:42:       unsigned v = grid[j][i] * grid[j+1][i] * grid[j+2][i] * grid[j+3][i];
	mul	w2, w2, w0	// _16, _13, _15
// problem11.c:42:       unsigned v = grid[j][i] * grid[j+1][i] * grid[j+2][i] * grid[j+3][i];
	ldr	w0, [sp, 36]	// tmp210, j
	add	w0, w0, 3	// _17, tmp210,
// problem11.c:42:       unsigned v = grid[j][i] * grid[j+1][i] * grid[j+2][i] * grid[j+3][i];
	ldr	w3, [sp, 32]	// tmp211, i
	uxtw	x1, w0	// tmp212, _17
	mov	x0, x1	// tmp213, tmp212
	lsl	x0, x0, 2	// tmp214, tmp213,
	add	x0, x0, x1	// tmp213, tmp213, tmp212
	lsl	x0, x0, 2	// tmp215, tmp213,
	add	x0, x0, x3	// tmp216, tmp213, tmp211
	lsl	x0, x0, 2	// tmp217, tmp216,
	add	x1, sp, 56	// tmp218,,
	ldr	w0, [x1, x0]	// _18, grid[_17][i_49]
// problem11.c:42:       unsigned v = grid[j][i] * grid[j+1][i] * grid[j+2][i] * grid[j+3][i];
	mul	w0, w2, w0	// tmp219, _16, _18
	str	w0, [sp, 44]	// tmp219, v
// problem11.c:43:       unsigned d1 = grid[i][j] * grid[i+1][j+1] * grid[i+2][j+2] * grid[i+3][j+3];
	ldr	w2, [sp, 36]	// tmp220, j
	ldr	w1, [sp, 32]	// tmp221, i
	mov	x0, x1	// tmp222, tmp221
	lsl	x0, x0, 2	// tmp223, tmp222,
	add	x0, x0, x1	// tmp222, tmp222, tmp221
	lsl	x0, x0, 2	// tmp224, tmp222,
	add	x0, x0, x2	// tmp225, tmp222, tmp220
	lsl	x0, x0, 2	// tmp226, tmp225,
	add	x1, sp, 56	// tmp227,,
	ldr	w2, [x1, x0]	// _19, grid[i_49][j_50]
// problem11.c:43:       unsigned d1 = grid[i][j] * grid[i+1][j+1] * grid[i+2][j+2] * grid[i+3][j+3];
	ldr	w0, [sp, 32]	// tmp228, i
	add	w1, w0, 1	// _20, tmp228,
// problem11.c:43:       unsigned d1 = grid[i][j] * grid[i+1][j+1] * grid[i+2][j+2] * grid[i+3][j+3];
	ldr	w0, [sp, 36]	// tmp229, j
	add	w0, w0, 1	// _21, tmp229,
// problem11.c:43:       unsigned d1 = grid[i][j] * grid[i+1][j+1] * grid[i+2][j+2] * grid[i+3][j+3];
	uxtw	x3, w0	// tmp230, _21
	uxtw	x1, w1	// tmp231, _20
	mov	x0, x1	// tmp232, tmp231
	lsl	x0, x0, 2	// tmp233, tmp232,
	add	x0, x0, x1	// tmp232, tmp232, tmp231
	lsl	x0, x0, 2	// tmp234, tmp232,
	add	x0, x0, x3	// tmp235, tmp232, tmp230
	lsl	x0, x0, 2	// tmp236, tmp235,
	add	x1, sp, 56	// tmp237,,
	ldr	w0, [x1, x0]	// _22, grid[_20][_21]
// problem11.c:43:       unsigned d1 = grid[i][j] * grid[i+1][j+1] * grid[i+2][j+2] * grid[i+3][j+3];
	mul	w2, w2, w0	// _23, _19, _22
// problem11.c:43:       unsigned d1 = grid[i][j] * grid[i+1][j+1] * grid[i+2][j+2] * grid[i+3][j+3];
	ldr	w0, [sp, 32]	// tmp238, i
	add	w1, w0, 2	// _24, tmp238,
// problem11.c:43:       unsigned d1 = grid[i][j] * grid[i+1][j+1] * grid[i+2][j+2] * grid[i+3][j+3];
	ldr	w0, [sp, 36]	// tmp239, j
	add	w0, w0, 2	// _25, tmp239,
// problem11.c:43:       unsigned d1 = grid[i][j] * grid[i+1][j+1] * grid[i+2][j+2] * grid[i+3][j+3];
	uxtw	x3, w0	// tmp240, _25
	uxtw	x1, w1	// tmp241, _24
	mov	x0, x1	// tmp242, tmp241
	lsl	x0, x0, 2	// tmp243, tmp242,
	add	x0, x0, x1	// tmp242, tmp242, tmp241
	lsl	x0, x0, 2	// tmp244, tmp242,
	add	x0, x0, x3	// tmp245, tmp242, tmp240
	lsl	x0, x0, 2	// tmp246, tmp245,
	add	x1, sp, 56	// tmp247,,
	ldr	w0, [x1, x0]	// _26, grid[_24][_25]
// problem11.c:43:       unsigned d1 = grid[i][j] * grid[i+1][j+1] * grid[i+2][j+2] * grid[i+3][j+3];
	mul	w2, w2, w0	// _27, _23, _26
// problem11.c:43:       unsigned d1 = grid[i][j] * grid[i+1][j+1] * grid[i+2][j+2] * grid[i+3][j+3];
	ldr	w0, [sp, 32]	// tmp248, i
	add	w1, w0, 3	// _28, tmp248,
// problem11.c:43:       unsigned d1 = grid[i][j] * grid[i+1][j+1] * grid[i+2][j+2] * grid[i+3][j+3];
	ldr	w0, [sp, 36]	// tmp249, j
	add	w0, w0, 3	// _29, tmp249,
// problem11.c:43:       unsigned d1 = grid[i][j] * grid[i+1][j+1] * grid[i+2][j+2] * grid[i+3][j+3];
	uxtw	x3, w0	// tmp250, _29
	uxtw	x1, w1	// tmp251, _28
	mov	x0, x1	// tmp252, tmp251
	lsl	x0, x0, 2	// tmp253, tmp252,
	add	x0, x0, x1	// tmp252, tmp252, tmp251
	lsl	x0, x0, 2	// tmp254, tmp252,
	add	x0, x0, x3	// tmp255, tmp252, tmp250
	lsl	x0, x0, 2	// tmp256, tmp255,
	add	x1, sp, 56	// tmp257,,
	ldr	w0, [x1, x0]	// _30, grid[_28][_29]
// problem11.c:43:       unsigned d1 = grid[i][j] * grid[i+1][j+1] * grid[i+2][j+2] * grid[i+3][j+3];
	mul	w0, w2, w0	// tmp258, _27, _30
	str	w0, [sp, 48]	// tmp258, d1
// problem11.c:44:       unsigned d2 = grid[i][N-j-1] * grid[i+1][N-j-2] * grid[i+2][N-j-3] * grid[i+3][N-j-4];
	mov	w1, 19	// tmp259,
	ldr	w0, [sp, 36]	// tmp260, j
	sub	w0, w1, w0	// _31, tmp259, tmp260
// problem11.c:44:       unsigned d2 = grid[i][N-j-1] * grid[i+1][N-j-2] * grid[i+2][N-j-3] * grid[i+3][N-j-4];
	uxtw	x2, w0	// tmp261, _31
	ldr	w1, [sp, 32]	// tmp262, i
	mov	x0, x1	// tmp263, tmp262
	lsl	x0, x0, 2	// tmp264, tmp263,
	add	x0, x0, x1	// tmp263, tmp263, tmp262
	lsl	x0, x0, 2	// tmp265, tmp263,
	add	x0, x0, x2	// tmp266, tmp263, tmp261
	lsl	x0, x0, 2	// tmp267, tmp266,
	add	x1, sp, 56	// tmp268,,
	ldr	w2, [x1, x0]	// _32, grid[i_49][_31]
// problem11.c:44:       unsigned d2 = grid[i][N-j-1] * grid[i+1][N-j-2] * grid[i+2][N-j-3] * grid[i+3][N-j-4];
	ldr	w0, [sp, 32]	// tmp269, i
	add	w4, w0, 1	// _33, tmp269,
// problem11.c:44:       unsigned d2 = grid[i][N-j-1] * grid[i+1][N-j-2] * grid[i+2][N-j-3] * grid[i+3][N-j-4];
	mov	w1, 18	// tmp270,
	ldr	w0, [sp, 36]	// tmp271, j
	sub	w0, w1, w0	// _34, tmp270, tmp271
// problem11.c:44:       unsigned d2 = grid[i][N-j-1] * grid[i+1][N-j-2] * grid[i+2][N-j-3] * grid[i+3][N-j-4];
	uxtw	x3, w0	// tmp272, _34
	uxtw	x1, w4	// tmp273, _33
	mov	x0, x1	// tmp274, tmp273
	lsl	x0, x0, 2	// tmp275, tmp274,
	add	x0, x0, x1	// tmp274, tmp274, tmp273
	lsl	x0, x0, 2	// tmp276, tmp274,
	add	x0, x0, x3	// tmp277, tmp274, tmp272
	lsl	x0, x0, 2	// tmp278, tmp277,
	add	x1, sp, 56	// tmp279,,
	ldr	w0, [x1, x0]	// _35, grid[_33][_34]
// problem11.c:44:       unsigned d2 = grid[i][N-j-1] * grid[i+1][N-j-2] * grid[i+2][N-j-3] * grid[i+3][N-j-4];
	mul	w2, w2, w0	// _36, _32, _35
// problem11.c:44:       unsigned d2 = grid[i][N-j-1] * grid[i+1][N-j-2] * grid[i+2][N-j-3] * grid[i+3][N-j-4];
	ldr	w0, [sp, 32]	// tmp280, i
	add	w4, w0, 2	// _37, tmp280,
// problem11.c:44:       unsigned d2 = grid[i][N-j-1] * grid[i+1][N-j-2] * grid[i+2][N-j-3] * grid[i+3][N-j-4];
	mov	w1, 17	// tmp281,
	ldr	w0, [sp, 36]	// tmp282, j
	sub	w0, w1, w0	// _38, tmp281, tmp282
// problem11.c:44:       unsigned d2 = grid[i][N-j-1] * grid[i+1][N-j-2] * grid[i+2][N-j-3] * grid[i+3][N-j-4];
	uxtw	x3, w0	// tmp283, _38
	uxtw	x1, w4	// tmp284, _37
	mov	x0, x1	// tmp285, tmp284
	lsl	x0, x0, 2	// tmp286, tmp285,
	add	x0, x0, x1	// tmp285, tmp285, tmp284
	lsl	x0, x0, 2	// tmp287, tmp285,
	add	x0, x0, x3	// tmp288, tmp285, tmp283
	lsl	x0, x0, 2	// tmp289, tmp288,
	add	x1, sp, 56	// tmp290,,
	ldr	w0, [x1, x0]	// _39, grid[_37][_38]
// problem11.c:44:       unsigned d2 = grid[i][N-j-1] * grid[i+1][N-j-2] * grid[i+2][N-j-3] * grid[i+3][N-j-4];
	mul	w2, w2, w0	// _40, _36, _39
// problem11.c:44:       unsigned d2 = grid[i][N-j-1] * grid[i+1][N-j-2] * grid[i+2][N-j-3] * grid[i+3][N-j-4];
	ldr	w0, [sp, 32]	// tmp291, i
	add	w4, w0, 3	// _41, tmp291,
// problem11.c:44:       unsigned d2 = grid[i][N-j-1] * grid[i+1][N-j-2] * grid[i+2][N-j-3] * grid[i+3][N-j-4];
	mov	w1, 16	// tmp292,
	ldr	w0, [sp, 36]	// tmp293, j
	sub	w0, w1, w0	// _42, tmp292, tmp293
// problem11.c:44:       unsigned d2 = grid[i][N-j-1] * grid[i+1][N-j-2] * grid[i+2][N-j-3] * grid[i+3][N-j-4];
	uxtw	x3, w0	// tmp294, _42
	uxtw	x1, w4	// tmp295, _41
	mov	x0, x1	// tmp296, tmp295
	lsl	x0, x0, 2	// tmp297, tmp296,
	add	x0, x0, x1	// tmp296, tmp296, tmp295
	lsl	x0, x0, 2	// tmp298, tmp296,
	add	x0, x0, x3	// tmp299, tmp296, tmp294
	lsl	x0, x0, 2	// tmp300, tmp299,
	add	x1, sp, 56	// tmp301,,
	ldr	w0, [x1, x0]	// _43, grid[_41][_42]
// problem11.c:44:       unsigned d2 = grid[i][N-j-1] * grid[i+1][N-j-2] * grid[i+2][N-j-3] * grid[i+3][N-j-4];
	mul	w0, w2, w0	// tmp302, _40, _43
	str	w0, [sp, 52]	// tmp302, d2
// problem11.c:45:       m = max(m, max(h, max(v, max(d1, d2))));
	ldr	w1, [sp, 52]	//, d2
	ldr	w0, [sp, 48]	//, d1
	bl	max		//
	mov	w1, w0	//, _44
	ldr	w0, [sp, 44]	//, v
	bl	max		//
	mov	w1, w0	//, _45
	ldr	w0, [sp, 40]	//, h
	bl	max		//
	mov	w1, w0	//, _46
	ldr	w0, [sp, 28]	//, m
	bl	max		//
	str	w0, [sp, 28]	//, m
// problem11.c:40:     for (j = 0; j < N-3; j++) {
	ldr	w0, [sp, 36]	// tmp304, j
	add	w0, w0, 1	// tmp303, tmp304,
	str	w0, [sp, 36]	// tmp303, j
.L3:
// problem11.c:40:     for (j = 0; j < N-3; j++) {
	ldr	w0, [sp, 36]	// tmp305, j
	cmp	w0, 16	// tmp305,
	bls	.L4		//,
// problem11.c:39:   for (i = 0; i < N-3; i++) {
	ldr	w0, [sp, 32]	// tmp307, i
	add	w0, w0, 1	// tmp306, tmp307,
	str	w0, [sp, 32]	// tmp306, i
.L2:
// problem11.c:39:   for (i = 0; i < N-3; i++) {
	ldr	w0, [sp, 32]	// tmp308, i
	cmp	w0, 16	// tmp308,
	bls	.L5		//,
// problem11.c:48:   printf("%u\n", m);
	ldr	w1, [sp, 28]	//, m
	adrp	x0, .LC1	// tmp309,
	add	x0, x0, :lo12:.LC1	//, tmp309,
	bl	printf		//
// problem11.c:50:   return 0;
	mov	w0, 0	// _58,
// problem11.c:51: }
	mov	w1, w0	// <retval>, _58
	adrp	x0, :got:__stack_chk_guard	// tmp312,
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]	// tmp311, tmp312,
	ldr	x3, [sp, 1656]	// tmp314, D.4279
	ldr	x2, [x0]	// tmp315,
	subs	x3, x3, x2	// tmp314, tmp315
	mov	x2, 0	// tmp315
	beq	.L7		//,
	bl	__stack_chk_fail		//
.L7:
	mov	w0, w1	//, <retval>
	ldp	x29, x30, [sp]	//,,
	add	sp, sp, 1664	//,,
	.cfi_restore 29
	.cfi_restore 30
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
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
