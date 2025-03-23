	.arch armv8-a
	.file	"code.c"
// GNU C17 (Ubuntu 11.4.0-1ubuntu1~22.04) version 11.4.0 (aarch64-linux-gnu)
//	compiled by GNU C version 11.4.0, GMP version 6.2.1, MPFR version 4.1.0, MPC version 1.2.1, isl version isl-0.24-GMP

// GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
// options passed: -mlittle-endian -mabi=lp64 -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection
	.text
	.section	.rodata
	.align	3
.LC0:
	.string	"**"
	.align	3
.LC1:
	.string	"*"
	.align	3
.LC2:
	.string	"//"
	.align	3
.LC3:
	.string	"+"
	.align	3
.LC4:
	.string	"-"
	.text
	.align	2
	.global	func0
	.type	func0, %function
func0:
.LFB6:
	.cfi_startproc
	stp	x29, x30, [sp, -96]!	//,,,
	.cfi_def_cfa_offset 96
	.cfi_offset 29, -96
	.cfi_offset 30, -88
	mov	x29, sp	//,
	str	x0, [sp, 40]	// operato, operato
	str	x1, [sp, 32]	// operand, operand
	str	w2, [sp, 28]	// operato_size, operato_size
	str	w3, [sp, 24]	// operand_size, operand_size
// eval/problem161//code.c:7:     int *num = (int*)malloc(operand_size * sizeof(int));
	ldrsw	x0, [sp, 24]	// _1, operand_size
	lsl	x0, x0, 2	// _2, _1,
	bl	malloc		//
	str	x0, [sp, 80]	// tmp445, num
// eval/problem161//code.c:8:     int *posto = (int*)malloc(operand_size * sizeof(int));
	ldrsw	x0, [sp, 24]	// _3, operand_size
	lsl	x0, x0, 2	// _4, _3,
	bl	malloc		//
	str	x0, [sp, 88]	// tmp446, posto
// eval/problem161//code.c:9:     for (int i = 0; i < operand_size; i++) {
	str	wzr, [sp, 60]	//, i
// eval/problem161//code.c:9:     for (int i = 0; i < operand_size; i++) {
	b	.L2		//
.L3:
// eval/problem161//code.c:10:         num[i] = operand[i];
	ldrsw	x0, [sp, 60]	// _5, i
	lsl	x0, x0, 2	// _6, _5,
	ldr	x1, [sp, 32]	// tmp447, operand
	add	x1, x1, x0	// _7, tmp447, _6
// eval/problem161//code.c:10:         num[i] = operand[i];
	ldrsw	x0, [sp, 60]	// _8, i
	lsl	x0, x0, 2	// _9, _8,
	ldr	x2, [sp, 80]	// tmp448, num
	add	x0, x2, x0	// _10, tmp448, _9
// eval/problem161//code.c:10:         num[i] = operand[i];
	ldr	w1, [x1]	// _11, *_7
// eval/problem161//code.c:10:         num[i] = operand[i];
	str	w1, [x0]	// _11, *_10
// eval/problem161//code.c:11:         posto[i] = i;
	ldrsw	x0, [sp, 60]	// _12, i
	lsl	x0, x0, 2	// _13, _12,
	ldr	x1, [sp, 88]	// tmp449, posto
	add	x0, x1, x0	// _14, tmp449, _13
// eval/problem161//code.c:11:         posto[i] = i;
	ldr	w1, [sp, 60]	// tmp450, i
	str	w1, [x0]	// tmp450, *_14
// eval/problem161//code.c:9:     for (int i = 0; i < operand_size; i++) {
	ldr	w0, [sp, 60]	// tmp452, i
	add	w0, w0, 1	// tmp451, tmp452,
	str	w0, [sp, 60]	// tmp451, i
.L2:
// eval/problem161//code.c:9:     for (int i = 0; i < operand_size; i++) {
	ldr	w1, [sp, 60]	// tmp453, i
	ldr	w0, [sp, 24]	// tmp454, operand_size
	cmp	w1, w0	// tmp453, tmp454
	blt	.L3		//,
// eval/problem161//code.c:13:     for (int i = 0; i < operato_size; i++) {
	str	wzr, [sp, 64]	//, i
// eval/problem161//code.c:13:     for (int i = 0; i < operato_size; i++) {
	b	.L4		//
.L10:
// eval/problem161//code.c:14:         if (strcmp(operato[i], "**") == 0) {
	ldrsw	x0, [sp, 64]	// _15, i
	lsl	x0, x0, 3	// _16, _15,
	ldr	x1, [sp, 40]	// tmp455, operato
	add	x0, x1, x0	// _17, tmp455, _16
// eval/problem161//code.c:14:         if (strcmp(operato[i], "**") == 0) {
	ldr	x2, [x0]	// _18, *_17
	adrp	x0, .LC0	// tmp456,
	add	x1, x0, :lo12:.LC0	//, tmp456,
	mov	x0, x2	//, _18
	bl	strcmp		//
// eval/problem161//code.c:14:         if (strcmp(operato[i], "**") == 0) {
	cmp	w0, 0	// _19,
	bne	.L5		//,
// eval/problem161//code.c:15:             while (posto[posto[i]] != posto[i]) posto[i] = posto[posto[i]];
	b	.L6		//
.L7:
// eval/problem161//code.c:15:             while (posto[posto[i]] != posto[i]) posto[i] = posto[posto[i]];
	ldrsw	x0, [sp, 64]	// _20, i
	lsl	x0, x0, 2	// _21, _20,
	ldr	x1, [sp, 88]	// tmp457, posto
	add	x0, x1, x0	// _22, tmp457, _21
	ldr	w0, [x0]	// _23, *_22
	sxtw	x0, w0	// _24, _23
// eval/problem161//code.c:15:             while (posto[posto[i]] != posto[i]) posto[i] = posto[posto[i]];
	lsl	x0, x0, 2	// _25, _24,
	ldr	x1, [sp, 88]	// tmp458, posto
	add	x1, x1, x0	// _26, tmp458, _25
// eval/problem161//code.c:15:             while (posto[posto[i]] != posto[i]) posto[i] = posto[posto[i]];
	ldrsw	x0, [sp, 64]	// _27, i
	lsl	x0, x0, 2	// _28, _27,
	ldr	x2, [sp, 88]	// tmp459, posto
	add	x0, x2, x0	// _29, tmp459, _28
// eval/problem161//code.c:15:             while (posto[posto[i]] != posto[i]) posto[i] = posto[posto[i]];
	ldr	w1, [x1]	// _30, *_26
// eval/problem161//code.c:15:             while (posto[posto[i]] != posto[i]) posto[i] = posto[posto[i]];
	str	w1, [x0]	// _30, *_29
.L6:
// eval/problem161//code.c:15:             while (posto[posto[i]] != posto[i]) posto[i] = posto[posto[i]];
	ldrsw	x0, [sp, 64]	// _31, i
	lsl	x0, x0, 2	// _32, _31,
	ldr	x1, [sp, 88]	// tmp460, posto
	add	x0, x1, x0	// _33, tmp460, _32
	ldr	w0, [x0]	// _34, *_33
	sxtw	x0, w0	// _35, _34
// eval/problem161//code.c:15:             while (posto[posto[i]] != posto[i]) posto[i] = posto[posto[i]];
	lsl	x0, x0, 2	// _36, _35,
	ldr	x1, [sp, 88]	// tmp461, posto
	add	x0, x1, x0	// _37, tmp461, _36
	ldr	w1, [x0]	// _38, *_37
// eval/problem161//code.c:15:             while (posto[posto[i]] != posto[i]) posto[i] = posto[posto[i]];
	ldrsw	x0, [sp, 64]	// _39, i
	lsl	x0, x0, 2	// _40, _39,
	ldr	x2, [sp, 88]	// tmp462, posto
	add	x0, x2, x0	// _41, tmp462, _40
	ldr	w0, [x0]	// _42, *_41
// eval/problem161//code.c:15:             while (posto[posto[i]] != posto[i]) posto[i] = posto[posto[i]];
	cmp	w1, w0	// _38, _42
	bne	.L7		//,
// eval/problem161//code.c:16:             while (posto[posto[i + 1]] != posto[i + 1]) posto[i + 1] = posto[posto[i + 1]];
	b	.L8		//
.L9:
// eval/problem161//code.c:16:             while (posto[posto[i + 1]] != posto[i + 1]) posto[i + 1] = posto[posto[i + 1]];
	ldrsw	x0, [sp, 64]	// _43, i
	add	x0, x0, 1	// _44, _43,
	lsl	x0, x0, 2	// _45, _44,
	ldr	x1, [sp, 88]	// tmp463, posto
	add	x0, x1, x0	// _46, tmp463, _45
	ldr	w0, [x0]	// _47, *_46
	sxtw	x0, w0	// _48, _47
// eval/problem161//code.c:16:             while (posto[posto[i + 1]] != posto[i + 1]) posto[i + 1] = posto[posto[i + 1]];
	lsl	x0, x0, 2	// _49, _48,
	ldr	x1, [sp, 88]	// tmp464, posto
	add	x1, x1, x0	// _50, tmp464, _49
// eval/problem161//code.c:16:             while (posto[posto[i + 1]] != posto[i + 1]) posto[i + 1] = posto[posto[i + 1]];
	ldrsw	x0, [sp, 64]	// _51, i
	add	x0, x0, 1	// _52, _51,
	lsl	x0, x0, 2	// _53, _52,
	ldr	x2, [sp, 88]	// tmp465, posto
	add	x0, x2, x0	// _54, tmp465, _53
// eval/problem161//code.c:16:             while (posto[posto[i + 1]] != posto[i + 1]) posto[i + 1] = posto[posto[i + 1]];
	ldr	w1, [x1]	// _55, *_50
// eval/problem161//code.c:16:             while (posto[posto[i + 1]] != posto[i + 1]) posto[i + 1] = posto[posto[i + 1]];
	str	w1, [x0]	// _55, *_54
.L8:
// eval/problem161//code.c:16:             while (posto[posto[i + 1]] != posto[i + 1]) posto[i + 1] = posto[posto[i + 1]];
	ldrsw	x0, [sp, 64]	// _56, i
	add	x0, x0, 1	// _57, _56,
	lsl	x0, x0, 2	// _58, _57,
	ldr	x1, [sp, 88]	// tmp466, posto
	add	x0, x1, x0	// _59, tmp466, _58
	ldr	w0, [x0]	// _60, *_59
	sxtw	x0, w0	// _61, _60
// eval/problem161//code.c:16:             while (posto[posto[i + 1]] != posto[i + 1]) posto[i + 1] = posto[posto[i + 1]];
	lsl	x0, x0, 2	// _62, _61,
	ldr	x1, [sp, 88]	// tmp467, posto
	add	x0, x1, x0	// _63, tmp467, _62
	ldr	w1, [x0]	// _64, *_63
// eval/problem161//code.c:16:             while (posto[posto[i + 1]] != posto[i + 1]) posto[i + 1] = posto[posto[i + 1]];
	ldrsw	x0, [sp, 64]	// _65, i
	add	x0, x0, 1	// _66, _65,
	lsl	x0, x0, 2	// _67, _66,
	ldr	x2, [sp, 88]	// tmp468, posto
	add	x0, x2, x0	// _68, tmp468, _67
	ldr	w0, [x0]	// _69, *_68
// eval/problem161//code.c:16:             while (posto[posto[i + 1]] != posto[i + 1]) posto[i + 1] = posto[posto[i + 1]];
	cmp	w1, w0	// _64, _69
	bne	.L9		//,
// eval/problem161//code.c:17:             num[posto[i]] = pow(num[posto[i]], num[posto[i + 1]]);
	ldrsw	x0, [sp, 64]	// _70, i
	lsl	x0, x0, 2	// _71, _70,
	ldr	x1, [sp, 88]	// tmp469, posto
	add	x0, x1, x0	// _72, tmp469, _71
	ldr	w0, [x0]	// _73, *_72
	sxtw	x0, w0	// _74, _73
// eval/problem161//code.c:17:             num[posto[i]] = pow(num[posto[i]], num[posto[i + 1]]);
	lsl	x0, x0, 2	// _75, _74,
	ldr	x1, [sp, 80]	// tmp470, num
	add	x0, x1, x0	// _76, tmp470, _75
	ldr	w0, [x0]	// _77, *_76
// eval/problem161//code.c:17:             num[posto[i]] = pow(num[posto[i]], num[posto[i + 1]]);
	scvtf	d0, w0	// _78, _77
// eval/problem161//code.c:17:             num[posto[i]] = pow(num[posto[i]], num[posto[i + 1]]);
	ldrsw	x0, [sp, 64]	// _79, i
	add	x0, x0, 1	// _80, _79,
	lsl	x0, x0, 2	// _81, _80,
	ldr	x1, [sp, 88]	// tmp471, posto
	add	x0, x1, x0	// _82, tmp471, _81
	ldr	w0, [x0]	// _83, *_82
	sxtw	x0, w0	// _84, _83
// eval/problem161//code.c:17:             num[posto[i]] = pow(num[posto[i]], num[posto[i + 1]]);
	lsl	x0, x0, 2	// _85, _84,
	ldr	x1, [sp, 80]	// tmp472, num
	add	x0, x1, x0	// _86, tmp472, _85
	ldr	w0, [x0]	// _87, *_86
// eval/problem161//code.c:17:             num[posto[i]] = pow(num[posto[i]], num[posto[i + 1]]);
	scvtf	d1, w0	// _88, _87
	bl	pow		//
// eval/problem161//code.c:17:             num[posto[i]] = pow(num[posto[i]], num[posto[i + 1]]);
	ldrsw	x0, [sp, 64]	// _90, i
	lsl	x0, x0, 2	// _91, _90,
	ldr	x1, [sp, 88]	// tmp473, posto
	add	x0, x1, x0	// _92, tmp473, _91
	ldr	w0, [x0]	// _93, *_92
	sxtw	x0, w0	// _94, _93
// eval/problem161//code.c:17:             num[posto[i]] = pow(num[posto[i]], num[posto[i + 1]]);
	lsl	x0, x0, 2	// _95, _94,
	ldr	x1, [sp, 80]	// tmp474, num
	add	x0, x1, x0	// _96, tmp474, _95
// eval/problem161//code.c:17:             num[posto[i]] = pow(num[posto[i]], num[posto[i + 1]]);
	fcvtzs	w1, d0	// _97, _89
	str	w1, [x0]	// _97, *_96
// eval/problem161//code.c:18:             posto[i + 1] = posto[i];
	ldrsw	x0, [sp, 64]	// _98, i
	lsl	x0, x0, 2	// _99, _98,
	ldr	x1, [sp, 88]	// tmp475, posto
	add	x1, x1, x0	// _100, tmp475, _99
// eval/problem161//code.c:18:             posto[i + 1] = posto[i];
	ldrsw	x0, [sp, 64]	// _101, i
	add	x0, x0, 1	// _102, _101,
	lsl	x0, x0, 2	// _103, _102,
	ldr	x2, [sp, 88]	// tmp476, posto
	add	x0, x2, x0	// _104, tmp476, _103
// eval/problem161//code.c:18:             posto[i + 1] = posto[i];
	ldr	w1, [x1]	// _105, *_100
// eval/problem161//code.c:18:             posto[i + 1] = posto[i];
	str	w1, [x0]	// _105, *_104
.L5:
// eval/problem161//code.c:13:     for (int i = 0; i < operato_size; i++) {
	ldr	w0, [sp, 64]	// tmp478, i
	add	w0, w0, 1	// tmp477, tmp478,
	str	w0, [sp, 64]	// tmp477, i
.L4:
// eval/problem161//code.c:13:     for (int i = 0; i < operato_size; i++) {
	ldr	w1, [sp, 64]	// tmp479, i
	ldr	w0, [sp, 28]	// tmp480, operato_size
	cmp	w1, w0	// tmp479, tmp480
	blt	.L10		//,
// eval/problem161//code.c:21:     for (int i = 0; i < operato_size; i++) {
	str	wzr, [sp, 68]	//, i
// eval/problem161//code.c:21:     for (int i = 0; i < operato_size; i++) {
	b	.L11		//
.L20:
// eval/problem161//code.c:22:         if (strcmp(operato[i], "*") == 0 || strcmp(operato[i], "//") == 0) {
	ldrsw	x0, [sp, 68]	// _106, i
	lsl	x0, x0, 3	// _107, _106,
	ldr	x1, [sp, 40]	// tmp481, operato
	add	x0, x1, x0	// _108, tmp481, _107
// eval/problem161//code.c:22:         if (strcmp(operato[i], "*") == 0 || strcmp(operato[i], "//") == 0) {
	ldr	x2, [x0]	// _109, *_108
	adrp	x0, .LC1	// tmp482,
	add	x1, x0, :lo12:.LC1	//, tmp482,
	mov	x0, x2	//, _109
	bl	strcmp		//
// eval/problem161//code.c:22:         if (strcmp(operato[i], "*") == 0 || strcmp(operato[i], "//") == 0) {
	cmp	w0, 0	// _110,
	beq	.L14		//,
// eval/problem161//code.c:22:         if (strcmp(operato[i], "*") == 0 || strcmp(operato[i], "//") == 0) {
	ldrsw	x0, [sp, 68]	// _111, i
	lsl	x0, x0, 3	// _112, _111,
	ldr	x1, [sp, 40]	// tmp483, operato
	add	x0, x1, x0	// _113, tmp483, _112
// eval/problem161//code.c:22:         if (strcmp(operato[i], "*") == 0 || strcmp(operato[i], "//") == 0) {
	ldr	x2, [x0]	// _114, *_113
	adrp	x0, .LC2	// tmp484,
	add	x1, x0, :lo12:.LC2	//, tmp484,
	mov	x0, x2	//, _114
	bl	strcmp		//
// eval/problem161//code.c:22:         if (strcmp(operato[i], "*") == 0 || strcmp(operato[i], "//") == 0) {
	cmp	w0, 0	// _115,
	bne	.L13		//,
// eval/problem161//code.c:23:             while (posto[posto[i]] != posto[i]) posto[i] = posto[posto[i]];
	b	.L14		//
.L15:
// eval/problem161//code.c:23:             while (posto[posto[i]] != posto[i]) posto[i] = posto[posto[i]];
	ldrsw	x0, [sp, 68]	// _116, i
	lsl	x0, x0, 2	// _117, _116,
	ldr	x1, [sp, 88]	// tmp485, posto
	add	x0, x1, x0	// _118, tmp485, _117
	ldr	w0, [x0]	// _119, *_118
	sxtw	x0, w0	// _120, _119
// eval/problem161//code.c:23:             while (posto[posto[i]] != posto[i]) posto[i] = posto[posto[i]];
	lsl	x0, x0, 2	// _121, _120,
	ldr	x1, [sp, 88]	// tmp486, posto
	add	x1, x1, x0	// _122, tmp486, _121
// eval/problem161//code.c:23:             while (posto[posto[i]] != posto[i]) posto[i] = posto[posto[i]];
	ldrsw	x0, [sp, 68]	// _123, i
	lsl	x0, x0, 2	// _124, _123,
	ldr	x2, [sp, 88]	// tmp487, posto
	add	x0, x2, x0	// _125, tmp487, _124
// eval/problem161//code.c:23:             while (posto[posto[i]] != posto[i]) posto[i] = posto[posto[i]];
	ldr	w1, [x1]	// _126, *_122
// eval/problem161//code.c:23:             while (posto[posto[i]] != posto[i]) posto[i] = posto[posto[i]];
	str	w1, [x0]	// _126, *_125
.L14:
// eval/problem161//code.c:23:             while (posto[posto[i]] != posto[i]) posto[i] = posto[posto[i]];
	ldrsw	x0, [sp, 68]	// _127, i
	lsl	x0, x0, 2	// _128, _127,
	ldr	x1, [sp, 88]	// tmp488, posto
	add	x0, x1, x0	// _129, tmp488, _128
	ldr	w0, [x0]	// _130, *_129
	sxtw	x0, w0	// _131, _130
// eval/problem161//code.c:23:             while (posto[posto[i]] != posto[i]) posto[i] = posto[posto[i]];
	lsl	x0, x0, 2	// _132, _131,
	ldr	x1, [sp, 88]	// tmp489, posto
	add	x0, x1, x0	// _133, tmp489, _132
	ldr	w1, [x0]	// _134, *_133
// eval/problem161//code.c:23:             while (posto[posto[i]] != posto[i]) posto[i] = posto[posto[i]];
	ldrsw	x0, [sp, 68]	// _135, i
	lsl	x0, x0, 2	// _136, _135,
	ldr	x2, [sp, 88]	// tmp490, posto
	add	x0, x2, x0	// _137, tmp490, _136
	ldr	w0, [x0]	// _138, *_137
// eval/problem161//code.c:23:             while (posto[posto[i]] != posto[i]) posto[i] = posto[posto[i]];
	cmp	w1, w0	// _134, _138
	bne	.L15		//,
// eval/problem161//code.c:24:             while (posto[posto[i + 1]] != posto[i + 1]) posto[i + 1] = posto[posto[i + 1]];
	b	.L16		//
.L17:
// eval/problem161//code.c:24:             while (posto[posto[i + 1]] != posto[i + 1]) posto[i + 1] = posto[posto[i + 1]];
	ldrsw	x0, [sp, 68]	// _139, i
	add	x0, x0, 1	// _140, _139,
	lsl	x0, x0, 2	// _141, _140,
	ldr	x1, [sp, 88]	// tmp491, posto
	add	x0, x1, x0	// _142, tmp491, _141
	ldr	w0, [x0]	// _143, *_142
	sxtw	x0, w0	// _144, _143
// eval/problem161//code.c:24:             while (posto[posto[i + 1]] != posto[i + 1]) posto[i + 1] = posto[posto[i + 1]];
	lsl	x0, x0, 2	// _145, _144,
	ldr	x1, [sp, 88]	// tmp492, posto
	add	x1, x1, x0	// _146, tmp492, _145
// eval/problem161//code.c:24:             while (posto[posto[i + 1]] != posto[i + 1]) posto[i + 1] = posto[posto[i + 1]];
	ldrsw	x0, [sp, 68]	// _147, i
	add	x0, x0, 1	// _148, _147,
	lsl	x0, x0, 2	// _149, _148,
	ldr	x2, [sp, 88]	// tmp493, posto
	add	x0, x2, x0	// _150, tmp493, _149
// eval/problem161//code.c:24:             while (posto[posto[i + 1]] != posto[i + 1]) posto[i + 1] = posto[posto[i + 1]];
	ldr	w1, [x1]	// _151, *_146
// eval/problem161//code.c:24:             while (posto[posto[i + 1]] != posto[i + 1]) posto[i + 1] = posto[posto[i + 1]];
	str	w1, [x0]	// _151, *_150
.L16:
// eval/problem161//code.c:24:             while (posto[posto[i + 1]] != posto[i + 1]) posto[i + 1] = posto[posto[i + 1]];
	ldrsw	x0, [sp, 68]	// _152, i
	add	x0, x0, 1	// _153, _152,
	lsl	x0, x0, 2	// _154, _153,
	ldr	x1, [sp, 88]	// tmp494, posto
	add	x0, x1, x0	// _155, tmp494, _154
	ldr	w0, [x0]	// _156, *_155
	sxtw	x0, w0	// _157, _156
// eval/problem161//code.c:24:             while (posto[posto[i + 1]] != posto[i + 1]) posto[i + 1] = posto[posto[i + 1]];
	lsl	x0, x0, 2	// _158, _157,
	ldr	x1, [sp, 88]	// tmp495, posto
	add	x0, x1, x0	// _159, tmp495, _158
	ldr	w1, [x0]	// _160, *_159
// eval/problem161//code.c:24:             while (posto[posto[i + 1]] != posto[i + 1]) posto[i + 1] = posto[posto[i + 1]];
	ldrsw	x0, [sp, 68]	// _161, i
	add	x0, x0, 1	// _162, _161,
	lsl	x0, x0, 2	// _163, _162,
	ldr	x2, [sp, 88]	// tmp496, posto
	add	x0, x2, x0	// _164, tmp496, _163
	ldr	w0, [x0]	// _165, *_164
// eval/problem161//code.c:24:             while (posto[posto[i + 1]] != posto[i + 1]) posto[i + 1] = posto[posto[i + 1]];
	cmp	w1, w0	// _160, _165
	bne	.L17		//,
// eval/problem161//code.c:25:             if (strcmp(operato[i], "*") == 0)
	ldrsw	x0, [sp, 68]	// _166, i
	lsl	x0, x0, 3	// _167, _166,
	ldr	x1, [sp, 40]	// tmp497, operato
	add	x0, x1, x0	// _168, tmp497, _167
// eval/problem161//code.c:25:             if (strcmp(operato[i], "*") == 0)
	ldr	x2, [x0]	// _169, *_168
	adrp	x0, .LC1	// tmp498,
	add	x1, x0, :lo12:.LC1	//, tmp498,
	mov	x0, x2	//, _169
	bl	strcmp		//
// eval/problem161//code.c:25:             if (strcmp(operato[i], "*") == 0)
	cmp	w0, 0	// _170,
	bne	.L18		//,
// eval/problem161//code.c:26:                 num[posto[i]] *= num[posto[i + 1]];
	ldrsw	x0, [sp, 68]	// _171, i
	lsl	x0, x0, 2	// _172, _171,
	ldr	x1, [sp, 88]	// tmp499, posto
	add	x0, x1, x0	// _173, tmp499, _172
	ldr	w0, [x0]	// _174, *_173
// eval/problem161//code.c:26:                 num[posto[i]] *= num[posto[i + 1]];
	sxtw	x0, w0	// _175, _174
	lsl	x0, x0, 2	// _176, _175,
	ldr	x1, [sp, 80]	// tmp500, num
	add	x0, x1, x0	// _177, tmp500, _176
	ldr	w2, [x0]	// _178, *_177
// eval/problem161//code.c:26:                 num[posto[i]] *= num[posto[i + 1]];
	ldrsw	x0, [sp, 68]	// _179, i
	add	x0, x0, 1	// _180, _179,
	lsl	x0, x0, 2	// _181, _180,
	ldr	x1, [sp, 88]	// tmp501, posto
	add	x0, x1, x0	// _182, tmp501, _181
	ldr	w0, [x0]	// _183, *_182
	sxtw	x0, w0	// _184, _183
// eval/problem161//code.c:26:                 num[posto[i]] *= num[posto[i + 1]];
	lsl	x0, x0, 2	// _185, _184,
	ldr	x1, [sp, 80]	// tmp502, num
	add	x0, x1, x0	// _186, tmp502, _185
	ldr	w1, [x0]	// _187, *_186
// eval/problem161//code.c:26:                 num[posto[i]] *= num[posto[i + 1]];
	ldrsw	x0, [sp, 68]	// _188, i
	lsl	x0, x0, 2	// _189, _188,
	ldr	x3, [sp, 88]	// tmp503, posto
	add	x0, x3, x0	// _190, tmp503, _189
	ldr	w0, [x0]	// _191, *_190
// eval/problem161//code.c:26:                 num[posto[i]] *= num[posto[i + 1]];
	sxtw	x0, w0	// _192, _191
	lsl	x0, x0, 2	// _193, _192,
	ldr	x3, [sp, 80]	// tmp504, num
	add	x0, x3, x0	// _194, tmp504, _193
	mul	w1, w2, w1	// _195, _178, _187
	str	w1, [x0]	// _195, *_194
	b	.L19		//
.L18:
// eval/problem161//code.c:28:                 num[posto[i]] /= num[posto[i + 1]];
	ldrsw	x0, [sp, 68]	// _196, i
	lsl	x0, x0, 2	// _197, _196,
	ldr	x1, [sp, 88]	// tmp505, posto
	add	x0, x1, x0	// _198, tmp505, _197
	ldr	w0, [x0]	// _199, *_198
// eval/problem161//code.c:28:                 num[posto[i]] /= num[posto[i + 1]];
	sxtw	x0, w0	// _200, _199
	lsl	x0, x0, 2	// _201, _200,
	ldr	x1, [sp, 80]	// tmp506, num
	add	x0, x1, x0	// _202, tmp506, _201
	ldr	w2, [x0]	// _203, *_202
// eval/problem161//code.c:28:                 num[posto[i]] /= num[posto[i + 1]];
	ldrsw	x0, [sp, 68]	// _204, i
	add	x0, x0, 1	// _205, _204,
	lsl	x0, x0, 2	// _206, _205,
	ldr	x1, [sp, 88]	// tmp507, posto
	add	x0, x1, x0	// _207, tmp507, _206
	ldr	w0, [x0]	// _208, *_207
	sxtw	x0, w0	// _209, _208
// eval/problem161//code.c:28:                 num[posto[i]] /= num[posto[i + 1]];
	lsl	x0, x0, 2	// _210, _209,
	ldr	x1, [sp, 80]	// tmp508, num
	add	x0, x1, x0	// _211, tmp508, _210
	ldr	w1, [x0]	// _212, *_211
// eval/problem161//code.c:28:                 num[posto[i]] /= num[posto[i + 1]];
	ldrsw	x0, [sp, 68]	// _213, i
	lsl	x0, x0, 2	// _214, _213,
	ldr	x3, [sp, 88]	// tmp509, posto
	add	x0, x3, x0	// _215, tmp509, _214
	ldr	w0, [x0]	// _216, *_215
// eval/problem161//code.c:28:                 num[posto[i]] /= num[posto[i + 1]];
	sxtw	x0, w0	// _217, _216
	lsl	x0, x0, 2	// _218, _217,
	ldr	x3, [sp, 80]	// tmp510, num
	add	x0, x3, x0	// _219, tmp510, _218
	sdiv	w1, w2, w1	// _220, _203, _212
	str	w1, [x0]	// _220, *_219
.L19:
// eval/problem161//code.c:29:             posto[i + 1] = posto[i];
	ldrsw	x0, [sp, 68]	// _221, i
	lsl	x0, x0, 2	// _222, _221,
	ldr	x1, [sp, 88]	// tmp511, posto
	add	x1, x1, x0	// _223, tmp511, _222
// eval/problem161//code.c:29:             posto[i + 1] = posto[i];
	ldrsw	x0, [sp, 68]	// _224, i
	add	x0, x0, 1	// _225, _224,
	lsl	x0, x0, 2	// _226, _225,
	ldr	x2, [sp, 88]	// tmp512, posto
	add	x0, x2, x0	// _227, tmp512, _226
// eval/problem161//code.c:29:             posto[i + 1] = posto[i];
	ldr	w1, [x1]	// _228, *_223
// eval/problem161//code.c:29:             posto[i + 1] = posto[i];
	str	w1, [x0]	// _228, *_227
.L13:
// eval/problem161//code.c:21:     for (int i = 0; i < operato_size; i++) {
	ldr	w0, [sp, 68]	// tmp514, i
	add	w0, w0, 1	// tmp513, tmp514,
	str	w0, [sp, 68]	// tmp513, i
.L11:
// eval/problem161//code.c:21:     for (int i = 0; i < operato_size; i++) {
	ldr	w1, [sp, 68]	// tmp515, i
	ldr	w0, [sp, 28]	// tmp516, operato_size
	cmp	w1, w0	// tmp515, tmp516
	blt	.L20		//,
// eval/problem161//code.c:32:     for (int i = 0; i < operato_size; i++) {
	str	wzr, [sp, 72]	//, i
// eval/problem161//code.c:32:     for (int i = 0; i < operato_size; i++) {
	b	.L21		//
.L30:
// eval/problem161//code.c:33:         if (strcmp(operato[i], "+") == 0 || strcmp(operato[i], "-") == 0) {
	ldrsw	x0, [sp, 72]	// _229, i
	lsl	x0, x0, 3	// _230, _229,
	ldr	x1, [sp, 40]	// tmp517, operato
	add	x0, x1, x0	// _231, tmp517, _230
// eval/problem161//code.c:33:         if (strcmp(operato[i], "+") == 0 || strcmp(operato[i], "-") == 0) {
	ldr	x2, [x0]	// _232, *_231
	adrp	x0, .LC3	// tmp518,
	add	x1, x0, :lo12:.LC3	//, tmp518,
	mov	x0, x2	//, _232
	bl	strcmp		//
// eval/problem161//code.c:33:         if (strcmp(operato[i], "+") == 0 || strcmp(operato[i], "-") == 0) {
	cmp	w0, 0	// _233,
	beq	.L24		//,
// eval/problem161//code.c:33:         if (strcmp(operato[i], "+") == 0 || strcmp(operato[i], "-") == 0) {
	ldrsw	x0, [sp, 72]	// _234, i
	lsl	x0, x0, 3	// _235, _234,
	ldr	x1, [sp, 40]	// tmp519, operato
	add	x0, x1, x0	// _236, tmp519, _235
// eval/problem161//code.c:33:         if (strcmp(operato[i], "+") == 0 || strcmp(operato[i], "-") == 0) {
	ldr	x2, [x0]	// _237, *_236
	adrp	x0, .LC4	// tmp520,
	add	x1, x0, :lo12:.LC4	//, tmp520,
	mov	x0, x2	//, _237
	bl	strcmp		//
// eval/problem161//code.c:33:         if (strcmp(operato[i], "+") == 0 || strcmp(operato[i], "-") == 0) {
	cmp	w0, 0	// _238,
	bne	.L23		//,
// eval/problem161//code.c:34:             while (posto[posto[i]] != posto[i]) posto[i] = posto[posto[i]];
	b	.L24		//
.L25:
// eval/problem161//code.c:34:             while (posto[posto[i]] != posto[i]) posto[i] = posto[posto[i]];
	ldrsw	x0, [sp, 72]	// _239, i
	lsl	x0, x0, 2	// _240, _239,
	ldr	x1, [sp, 88]	// tmp521, posto
	add	x0, x1, x0	// _241, tmp521, _240
	ldr	w0, [x0]	// _242, *_241
	sxtw	x0, w0	// _243, _242
// eval/problem161//code.c:34:             while (posto[posto[i]] != posto[i]) posto[i] = posto[posto[i]];
	lsl	x0, x0, 2	// _244, _243,
	ldr	x1, [sp, 88]	// tmp522, posto
	add	x1, x1, x0	// _245, tmp522, _244
// eval/problem161//code.c:34:             while (posto[posto[i]] != posto[i]) posto[i] = posto[posto[i]];
	ldrsw	x0, [sp, 72]	// _246, i
	lsl	x0, x0, 2	// _247, _246,
	ldr	x2, [sp, 88]	// tmp523, posto
	add	x0, x2, x0	// _248, tmp523, _247
// eval/problem161//code.c:34:             while (posto[posto[i]] != posto[i]) posto[i] = posto[posto[i]];
	ldr	w1, [x1]	// _249, *_245
// eval/problem161//code.c:34:             while (posto[posto[i]] != posto[i]) posto[i] = posto[posto[i]];
	str	w1, [x0]	// _249, *_248
.L24:
// eval/problem161//code.c:34:             while (posto[posto[i]] != posto[i]) posto[i] = posto[posto[i]];
	ldrsw	x0, [sp, 72]	// _250, i
	lsl	x0, x0, 2	// _251, _250,
	ldr	x1, [sp, 88]	// tmp524, posto
	add	x0, x1, x0	// _252, tmp524, _251
	ldr	w0, [x0]	// _253, *_252
	sxtw	x0, w0	// _254, _253
// eval/problem161//code.c:34:             while (posto[posto[i]] != posto[i]) posto[i] = posto[posto[i]];
	lsl	x0, x0, 2	// _255, _254,
	ldr	x1, [sp, 88]	// tmp525, posto
	add	x0, x1, x0	// _256, tmp525, _255
	ldr	w1, [x0]	// _257, *_256
// eval/problem161//code.c:34:             while (posto[posto[i]] != posto[i]) posto[i] = posto[posto[i]];
	ldrsw	x0, [sp, 72]	// _258, i
	lsl	x0, x0, 2	// _259, _258,
	ldr	x2, [sp, 88]	// tmp526, posto
	add	x0, x2, x0	// _260, tmp526, _259
	ldr	w0, [x0]	// _261, *_260
// eval/problem161//code.c:34:             while (posto[posto[i]] != posto[i]) posto[i] = posto[posto[i]];
	cmp	w1, w0	// _257, _261
	bne	.L25		//,
// eval/problem161//code.c:35:             while (posto[posto[i + 1]] != posto[i + 1]) posto[i + 1] = posto[posto[i + 1]];
	b	.L26		//
.L27:
// eval/problem161//code.c:35:             while (posto[posto[i + 1]] != posto[i + 1]) posto[i + 1] = posto[posto[i + 1]];
	ldrsw	x0, [sp, 72]	// _262, i
	add	x0, x0, 1	// _263, _262,
	lsl	x0, x0, 2	// _264, _263,
	ldr	x1, [sp, 88]	// tmp527, posto
	add	x0, x1, x0	// _265, tmp527, _264
	ldr	w0, [x0]	// _266, *_265
	sxtw	x0, w0	// _267, _266
// eval/problem161//code.c:35:             while (posto[posto[i + 1]] != posto[i + 1]) posto[i + 1] = posto[posto[i + 1]];
	lsl	x0, x0, 2	// _268, _267,
	ldr	x1, [sp, 88]	// tmp528, posto
	add	x1, x1, x0	// _269, tmp528, _268
// eval/problem161//code.c:35:             while (posto[posto[i + 1]] != posto[i + 1]) posto[i + 1] = posto[posto[i + 1]];
	ldrsw	x0, [sp, 72]	// _270, i
	add	x0, x0, 1	// _271, _270,
	lsl	x0, x0, 2	// _272, _271,
	ldr	x2, [sp, 88]	// tmp529, posto
	add	x0, x2, x0	// _273, tmp529, _272
// eval/problem161//code.c:35:             while (posto[posto[i + 1]] != posto[i + 1]) posto[i + 1] = posto[posto[i + 1]];
	ldr	w1, [x1]	// _274, *_269
// eval/problem161//code.c:35:             while (posto[posto[i + 1]] != posto[i + 1]) posto[i + 1] = posto[posto[i + 1]];
	str	w1, [x0]	// _274, *_273
.L26:
// eval/problem161//code.c:35:             while (posto[posto[i + 1]] != posto[i + 1]) posto[i + 1] = posto[posto[i + 1]];
	ldrsw	x0, [sp, 72]	// _275, i
	add	x0, x0, 1	// _276, _275,
	lsl	x0, x0, 2	// _277, _276,
	ldr	x1, [sp, 88]	// tmp530, posto
	add	x0, x1, x0	// _278, tmp530, _277
	ldr	w0, [x0]	// _279, *_278
	sxtw	x0, w0	// _280, _279
// eval/problem161//code.c:35:             while (posto[posto[i + 1]] != posto[i + 1]) posto[i + 1] = posto[posto[i + 1]];
	lsl	x0, x0, 2	// _281, _280,
	ldr	x1, [sp, 88]	// tmp531, posto
	add	x0, x1, x0	// _282, tmp531, _281
	ldr	w1, [x0]	// _283, *_282
// eval/problem161//code.c:35:             while (posto[posto[i + 1]] != posto[i + 1]) posto[i + 1] = posto[posto[i + 1]];
	ldrsw	x0, [sp, 72]	// _284, i
	add	x0, x0, 1	// _285, _284,
	lsl	x0, x0, 2	// _286, _285,
	ldr	x2, [sp, 88]	// tmp532, posto
	add	x0, x2, x0	// _287, tmp532, _286
	ldr	w0, [x0]	// _288, *_287
// eval/problem161//code.c:35:             while (posto[posto[i + 1]] != posto[i + 1]) posto[i + 1] = posto[posto[i + 1]];
	cmp	w1, w0	// _283, _288
	bne	.L27		//,
// eval/problem161//code.c:36:             if (strcmp(operato[i], "+") == 0)
	ldrsw	x0, [sp, 72]	// _289, i
	lsl	x0, x0, 3	// _290, _289,
	ldr	x1, [sp, 40]	// tmp533, operato
	add	x0, x1, x0	// _291, tmp533, _290
// eval/problem161//code.c:36:             if (strcmp(operato[i], "+") == 0)
	ldr	x2, [x0]	// _292, *_291
	adrp	x0, .LC3	// tmp534,
	add	x1, x0, :lo12:.LC3	//, tmp534,
	mov	x0, x2	//, _292
	bl	strcmp		//
// eval/problem161//code.c:36:             if (strcmp(operato[i], "+") == 0)
	cmp	w0, 0	// _293,
	bne	.L28		//,
// eval/problem161//code.c:37:                 num[posto[i]] += num[posto[i + 1]];
	ldrsw	x0, [sp, 72]	// _294, i
	lsl	x0, x0, 2	// _295, _294,
	ldr	x1, [sp, 88]	// tmp535, posto
	add	x0, x1, x0	// _296, tmp535, _295
	ldr	w0, [x0]	// _297, *_296
// eval/problem161//code.c:37:                 num[posto[i]] += num[posto[i + 1]];
	sxtw	x0, w0	// _298, _297
	lsl	x0, x0, 2	// _299, _298,
	ldr	x1, [sp, 80]	// tmp536, num
	add	x0, x1, x0	// _300, tmp536, _299
	ldr	w2, [x0]	// _301, *_300
// eval/problem161//code.c:37:                 num[posto[i]] += num[posto[i + 1]];
	ldrsw	x0, [sp, 72]	// _302, i
	add	x0, x0, 1	// _303, _302,
	lsl	x0, x0, 2	// _304, _303,
	ldr	x1, [sp, 88]	// tmp537, posto
	add	x0, x1, x0	// _305, tmp537, _304
	ldr	w0, [x0]	// _306, *_305
	sxtw	x0, w0	// _307, _306
// eval/problem161//code.c:37:                 num[posto[i]] += num[posto[i + 1]];
	lsl	x0, x0, 2	// _308, _307,
	ldr	x1, [sp, 80]	// tmp538, num
	add	x0, x1, x0	// _309, tmp538, _308
	ldr	w1, [x0]	// _310, *_309
// eval/problem161//code.c:37:                 num[posto[i]] += num[posto[i + 1]];
	ldrsw	x0, [sp, 72]	// _311, i
	lsl	x0, x0, 2	// _312, _311,
	ldr	x3, [sp, 88]	// tmp539, posto
	add	x0, x3, x0	// _313, tmp539, _312
	ldr	w0, [x0]	// _314, *_313
// eval/problem161//code.c:37:                 num[posto[i]] += num[posto[i + 1]];
	sxtw	x0, w0	// _315, _314
	lsl	x0, x0, 2	// _316, _315,
	ldr	x3, [sp, 80]	// tmp540, num
	add	x0, x3, x0	// _317, tmp540, _316
	add	w1, w2, w1	// _318, _301, _310
	str	w1, [x0]	// _318, *_317
	b	.L29		//
.L28:
// eval/problem161//code.c:39:                 num[posto[i]] -= num[posto[i + 1]];
	ldrsw	x0, [sp, 72]	// _319, i
	lsl	x0, x0, 2	// _320, _319,
	ldr	x1, [sp, 88]	// tmp541, posto
	add	x0, x1, x0	// _321, tmp541, _320
	ldr	w0, [x0]	// _322, *_321
// eval/problem161//code.c:39:                 num[posto[i]] -= num[posto[i + 1]];
	sxtw	x0, w0	// _323, _322
	lsl	x0, x0, 2	// _324, _323,
	ldr	x1, [sp, 80]	// tmp542, num
	add	x0, x1, x0	// _325, tmp542, _324
	ldr	w2, [x0]	// _326, *_325
// eval/problem161//code.c:39:                 num[posto[i]] -= num[posto[i + 1]];
	ldrsw	x0, [sp, 72]	// _327, i
	add	x0, x0, 1	// _328, _327,
	lsl	x0, x0, 2	// _329, _328,
	ldr	x1, [sp, 88]	// tmp543, posto
	add	x0, x1, x0	// _330, tmp543, _329
	ldr	w0, [x0]	// _331, *_330
	sxtw	x0, w0	// _332, _331
// eval/problem161//code.c:39:                 num[posto[i]] -= num[posto[i + 1]];
	lsl	x0, x0, 2	// _333, _332,
	ldr	x1, [sp, 80]	// tmp544, num
	add	x0, x1, x0	// _334, tmp544, _333
	ldr	w1, [x0]	// _335, *_334
// eval/problem161//code.c:39:                 num[posto[i]] -= num[posto[i + 1]];
	ldrsw	x0, [sp, 72]	// _336, i
	lsl	x0, x0, 2	// _337, _336,
	ldr	x3, [sp, 88]	// tmp545, posto
	add	x0, x3, x0	// _338, tmp545, _337
	ldr	w0, [x0]	// _339, *_338
// eval/problem161//code.c:39:                 num[posto[i]] -= num[posto[i + 1]];
	sxtw	x0, w0	// _340, _339
	lsl	x0, x0, 2	// _341, _340,
	ldr	x3, [sp, 80]	// tmp546, num
	add	x0, x3, x0	// _342, tmp546, _341
	sub	w1, w2, w1	// _343, _326, _335
	str	w1, [x0]	// _343, *_342
.L29:
// eval/problem161//code.c:40:             posto[i + 1] = posto[i];
	ldrsw	x0, [sp, 72]	// _344, i
	lsl	x0, x0, 2	// _345, _344,
	ldr	x1, [sp, 88]	// tmp547, posto
	add	x1, x1, x0	// _346, tmp547, _345
// eval/problem161//code.c:40:             posto[i + 1] = posto[i];
	ldrsw	x0, [sp, 72]	// _347, i
	add	x0, x0, 1	// _348, _347,
	lsl	x0, x0, 2	// _349, _348,
	ldr	x2, [sp, 88]	// tmp548, posto
	add	x0, x2, x0	// _350, tmp548, _349
// eval/problem161//code.c:40:             posto[i + 1] = posto[i];
	ldr	w1, [x1]	// _351, *_346
// eval/problem161//code.c:40:             posto[i + 1] = posto[i];
	str	w1, [x0]	// _351, *_350
.L23:
// eval/problem161//code.c:32:     for (int i = 0; i < operato_size; i++) {
	ldr	w0, [sp, 72]	// tmp550, i
	add	w0, w0, 1	// tmp549, tmp550,
	str	w0, [sp, 72]	// tmp549, i
.L21:
// eval/problem161//code.c:32:     for (int i = 0; i < operato_size; i++) {
	ldr	w1, [sp, 72]	// tmp551, i
	ldr	w0, [sp, 28]	// tmp552, operato_size
	cmp	w1, w0	// tmp551, tmp552
	blt	.L30		//,
// eval/problem161//code.c:43:     int result = num[0];
	ldr	x0, [sp, 80]	// tmp553, num
	ldr	w0, [x0]	// tmp554, *num_374
	str	w0, [sp, 76]	// tmp554, result
// eval/problem161//code.c:44:     free(num);
	ldr	x0, [sp, 80]	//, num
	bl	free		//
// eval/problem161//code.c:45:     free(posto);
	ldr	x0, [sp, 88]	//, posto
	bl	free		//
// eval/problem161//code.c:46:     return result;
	ldr	w0, [sp, 76]	// _385, result
// eval/problem161//code.c:47: }
	ldp	x29, x30, [sp], 96	//,,,
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE6:
	.size	func0, .-func0
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
