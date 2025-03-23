	.arch armv8-a
	.file	"problem82.c"
// GNU C17 (Ubuntu 11.4.0-1ubuntu1~22.04) version 11.4.0 (aarch64-linux-gnu)
//	compiled by GNU C version 11.4.0, GMP version 6.2.1, MPFR version 4.1.0, MPC version 1.2.1, isl version isl-0.24-GMP

// GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
// options passed: -mlittle-endian -mabi=lp64 -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection
	.text
	.section	.rodata
	.align	3
.LC1:
	.string	"A+"
	.align	3
.LC12:
	.string	"A"
	.align	3
.LC5:
	.string	"A-"
	.align	3
.LC10:
	.string	"B+"
	.align	3
.LC2:
	.string	"B"
	.align	3
.LC13:
	.string	"B-"
	.align	3
.LC14:
	.string	"C+"
	.align	3
.LC4:
	.string	"C"
	.align	3
.LC3:
	.string	"C-"
	.align	3
.LC15:
	.string	"D+"
	.align	3
.LC8:
	.string	"D"
	.align	3
.LC9:
	.string	"D-"
	.align	3
.LC16:
	.string	"E"
	.text
	.align	2
	.global	func0
	.type	func0, %function
func0:
.LFB6:
	.cfi_startproc
	stp	x29, x30, [sp, -48]!	//,,,
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	mov	x29, sp	//,
	str	x0, [sp, 24]	// grades, grades
	str	w1, [sp, 20]	// size, size
// problem82.c:5:     char** out = malloc(size * sizeof(char*));
	ldrsw	x0, [sp, 20]	// _1, size
	lsl	x0, x0, 3	// _2, _1,
	bl	malloc		//
	str	x0, [sp, 40]	// tmp195, out
// problem82.c:6:     for (int i = 0; i < size; ++i) {
	str	wzr, [sp, 36]	//, i
// problem82.c:6:     for (int i = 0; i < size; ++i) {
	b	.L2		//
.L28:
// problem82.c:7:         if (grades[i] >= 3.9999) out[i] = "A+";
	ldrsw	x0, [sp, 36]	// _3, i
	lsl	x0, x0, 2	// _4, _3,
	ldr	x1, [sp, 24]	// tmp196, grades
	add	x0, x1, x0	// _5, tmp196, _4
	ldr	s0, [x0]	// _6, *_5
	fcvt	d0, s0	// _7, _6
// problem82.c:7:         if (grades[i] >= 3.9999) out[i] = "A+";
	adrp	x0, .LC17	// tmp265,
	ldr	d1, [x0, #:lo12:.LC17]	// tmp197,
	fcmpe	d0, d1	// _7, tmp197
	bge	.L30		//,
	b	.L42		//
.L30:
// problem82.c:7:         if (grades[i] >= 3.9999) out[i] = "A+";
	ldrsw	x0, [sp, 36]	// _8, i
	lsl	x0, x0, 3	// _9, _8,
	ldr	x1, [sp, 40]	// tmp198, out
	add	x0, x1, x0	// _10, tmp198, _9
// problem82.c:7:         if (grades[i] >= 3.9999) out[i] = "A+";
	adrp	x1, .LC1	// tmp200,
	add	x1, x1, :lo12:.LC1	// tmp199, tmp200,
	str	x1, [x0]	// tmp199, *_10
	b	.L5		//
.L42:
// problem82.c:8:         else if (grades[i] > 3.7001) out[i] = "A";
	ldrsw	x0, [sp, 36]	// _11, i
	lsl	x0, x0, 2	// _12, _11,
	ldr	x1, [sp, 24]	// tmp201, grades
	add	x0, x1, x0	// _13, tmp201, _12
	ldr	s0, [x0]	// _14, *_13
	fcvt	d0, s0	// _15, _14
// problem82.c:8:         else if (grades[i] > 3.7001) out[i] = "A";
	adrp	x0, .LC18	// tmp266,
	ldr	d1, [x0, #:lo12:.LC18]	// tmp202,
	fcmpe	d0, d1	// _15, tmp202
	bgt	.L31		//,
	b	.L43		//
.L31:
// problem82.c:8:         else if (grades[i] > 3.7001) out[i] = "A";
	ldrsw	x0, [sp, 36]	// _16, i
	lsl	x0, x0, 3	// _17, _16,
	ldr	x1, [sp, 40]	// tmp203, out
	add	x0, x1, x0	// _18, tmp203, _17
// problem82.c:8:         else if (grades[i] > 3.7001) out[i] = "A";
	adrp	x1, .LC12	// tmp205,
	add	x1, x1, :lo12:.LC12	// tmp204, tmp205,
	str	x1, [x0]	// tmp204, *_18
	b	.L5		//
.L43:
// problem82.c:9:         else if (grades[i] > 3.3001) out[i] = "A-";
	ldrsw	x0, [sp, 36]	// _19, i
	lsl	x0, x0, 2	// _20, _19,
	ldr	x1, [sp, 24]	// tmp206, grades
	add	x0, x1, x0	// _21, tmp206, _20
	ldr	s0, [x0]	// _22, *_21
	fcvt	d0, s0	// _23, _22
// problem82.c:9:         else if (grades[i] > 3.3001) out[i] = "A-";
	adrp	x0, .LC19	// tmp267,
	ldr	d1, [x0, #:lo12:.LC19]	// tmp207,
	fcmpe	d0, d1	// _23, tmp207
	bgt	.L32		//,
	b	.L44		//
.L32:
// problem82.c:9:         else if (grades[i] > 3.3001) out[i] = "A-";
	ldrsw	x0, [sp, 36]	// _24, i
	lsl	x0, x0, 3	// _25, _24,
	ldr	x1, [sp, 40]	// tmp208, out
	add	x0, x1, x0	// _26, tmp208, _25
// problem82.c:9:         else if (grades[i] > 3.3001) out[i] = "A-";
	adrp	x1, .LC5	// tmp210,
	add	x1, x1, :lo12:.LC5	// tmp209, tmp210,
	str	x1, [x0]	// tmp209, *_26
	b	.L5		//
.L44:
// problem82.c:10:         else if (grades[i] > 3.0001) out[i] = "B+";
	ldrsw	x0, [sp, 36]	// _27, i
	lsl	x0, x0, 2	// _28, _27,
	ldr	x1, [sp, 24]	// tmp211, grades
	add	x0, x1, x0	// _29, tmp211, _28
	ldr	s0, [x0]	// _30, *_29
	fcvt	d0, s0	// _31, _30
// problem82.c:10:         else if (grades[i] > 3.0001) out[i] = "B+";
	adrp	x0, .LC20	// tmp268,
	ldr	d1, [x0, #:lo12:.LC20]	// tmp212,
	fcmpe	d0, d1	// _31, tmp212
	bgt	.L33		//,
	b	.L45		//
.L33:
// problem82.c:10:         else if (grades[i] > 3.0001) out[i] = "B+";
	ldrsw	x0, [sp, 36]	// _32, i
	lsl	x0, x0, 3	// _33, _32,
	ldr	x1, [sp, 40]	// tmp213, out
	add	x0, x1, x0	// _34, tmp213, _33
// problem82.c:10:         else if (grades[i] > 3.0001) out[i] = "B+";
	adrp	x1, .LC10	// tmp215,
	add	x1, x1, :lo12:.LC10	// tmp214, tmp215,
	str	x1, [x0]	// tmp214, *_34
	b	.L5		//
.L45:
// problem82.c:11:         else if (grades[i] > 2.7001) out[i] = "B";
	ldrsw	x0, [sp, 36]	// _35, i
	lsl	x0, x0, 2	// _36, _35,
	ldr	x1, [sp, 24]	// tmp216, grades
	add	x0, x1, x0	// _37, tmp216, _36
	ldr	s0, [x0]	// _38, *_37
	fcvt	d0, s0	// _39, _38
// problem82.c:11:         else if (grades[i] > 2.7001) out[i] = "B";
	adrp	x0, .LC21	// tmp269,
	ldr	d1, [x0, #:lo12:.LC21]	// tmp217,
	fcmpe	d0, d1	// _39, tmp217
	bgt	.L34		//,
	b	.L46		//
.L34:
// problem82.c:11:         else if (grades[i] > 2.7001) out[i] = "B";
	ldrsw	x0, [sp, 36]	// _40, i
	lsl	x0, x0, 3	// _41, _40,
	ldr	x1, [sp, 40]	// tmp218, out
	add	x0, x1, x0	// _42, tmp218, _41
// problem82.c:11:         else if (grades[i] > 2.7001) out[i] = "B";
	adrp	x1, .LC2	// tmp220,
	add	x1, x1, :lo12:.LC2	// tmp219, tmp220,
	str	x1, [x0]	// tmp219, *_42
	b	.L5		//
.L46:
// problem82.c:12:         else if (grades[i] > 2.3001) out[i] = "B-";
	ldrsw	x0, [sp, 36]	// _43, i
	lsl	x0, x0, 2	// _44, _43,
	ldr	x1, [sp, 24]	// tmp221, grades
	add	x0, x1, x0	// _45, tmp221, _44
	ldr	s0, [x0]	// _46, *_45
	fcvt	d0, s0	// _47, _46
// problem82.c:12:         else if (grades[i] > 2.3001) out[i] = "B-";
	adrp	x0, .LC22	// tmp270,
	ldr	d1, [x0, #:lo12:.LC22]	// tmp222,
	fcmpe	d0, d1	// _47, tmp222
	bgt	.L35		//,
	b	.L47		//
.L35:
// problem82.c:12:         else if (grades[i] > 2.3001) out[i] = "B-";
	ldrsw	x0, [sp, 36]	// _48, i
	lsl	x0, x0, 3	// _49, _48,
	ldr	x1, [sp, 40]	// tmp223, out
	add	x0, x1, x0	// _50, tmp223, _49
// problem82.c:12:         else if (grades[i] > 2.3001) out[i] = "B-";
	adrp	x1, .LC13	// tmp225,
	add	x1, x1, :lo12:.LC13	// tmp224, tmp225,
	str	x1, [x0]	// tmp224, *_50
	b	.L5		//
.L47:
// problem82.c:13:         else if (grades[i] > 2.0001) out[i] = "C+";
	ldrsw	x0, [sp, 36]	// _51, i
	lsl	x0, x0, 2	// _52, _51,
	ldr	x1, [sp, 24]	// tmp226, grades
	add	x0, x1, x0	// _53, tmp226, _52
	ldr	s0, [x0]	// _54, *_53
	fcvt	d0, s0	// _55, _54
// problem82.c:13:         else if (grades[i] > 2.0001) out[i] = "C+";
	adrp	x0, .LC23	// tmp271,
	ldr	d1, [x0, #:lo12:.LC23]	// tmp227,
	fcmpe	d0, d1	// _55, tmp227
	bgt	.L36		//,
	b	.L48		//
.L36:
// problem82.c:13:         else if (grades[i] > 2.0001) out[i] = "C+";
	ldrsw	x0, [sp, 36]	// _56, i
	lsl	x0, x0, 3	// _57, _56,
	ldr	x1, [sp, 40]	// tmp228, out
	add	x0, x1, x0	// _58, tmp228, _57
// problem82.c:13:         else if (grades[i] > 2.0001) out[i] = "C+";
	adrp	x1, .LC14	// tmp230,
	add	x1, x1, :lo12:.LC14	// tmp229, tmp230,
	str	x1, [x0]	// tmp229, *_58
	b	.L5		//
.L48:
// problem82.c:14:         else if (grades[i] > 1.7001) out[i] = "C";
	ldrsw	x0, [sp, 36]	// _59, i
	lsl	x0, x0, 2	// _60, _59,
	ldr	x1, [sp, 24]	// tmp231, grades
	add	x0, x1, x0	// _61, tmp231, _60
	ldr	s0, [x0]	// _62, *_61
	fcvt	d0, s0	// _63, _62
// problem82.c:14:         else if (grades[i] > 1.7001) out[i] = "C";
	adrp	x0, .LC24	// tmp272,
	ldr	d1, [x0, #:lo12:.LC24]	// tmp232,
	fcmpe	d0, d1	// _63, tmp232
	bgt	.L37		//,
	b	.L49		//
.L37:
// problem82.c:14:         else if (grades[i] > 1.7001) out[i] = "C";
	ldrsw	x0, [sp, 36]	// _64, i
	lsl	x0, x0, 3	// _65, _64,
	ldr	x1, [sp, 40]	// tmp233, out
	add	x0, x1, x0	// _66, tmp233, _65
// problem82.c:14:         else if (grades[i] > 1.7001) out[i] = "C";
	adrp	x1, .LC4	// tmp235,
	add	x1, x1, :lo12:.LC4	// tmp234, tmp235,
	str	x1, [x0]	// tmp234, *_66
	b	.L5		//
.L49:
// problem82.c:15:         else if (grades[i] > 1.3001) out[i] = "C-";
	ldrsw	x0, [sp, 36]	// _67, i
	lsl	x0, x0, 2	// _68, _67,
	ldr	x1, [sp, 24]	// tmp236, grades
	add	x0, x1, x0	// _69, tmp236, _68
	ldr	s0, [x0]	// _70, *_69
	fcvt	d0, s0	// _71, _70
// problem82.c:15:         else if (grades[i] > 1.3001) out[i] = "C-";
	adrp	x0, .LC25	// tmp273,
	ldr	d1, [x0, #:lo12:.LC25]	// tmp237,
	fcmpe	d0, d1	// _71, tmp237
	bgt	.L38		//,
	b	.L50		//
.L38:
// problem82.c:15:         else if (grades[i] > 1.3001) out[i] = "C-";
	ldrsw	x0, [sp, 36]	// _72, i
	lsl	x0, x0, 3	// _73, _72,
	ldr	x1, [sp, 40]	// tmp238, out
	add	x0, x1, x0	// _74, tmp238, _73
// problem82.c:15:         else if (grades[i] > 1.3001) out[i] = "C-";
	adrp	x1, .LC3	// tmp240,
	add	x1, x1, :lo12:.LC3	// tmp239, tmp240,
	str	x1, [x0]	// tmp239, *_74
	b	.L5		//
.L50:
// problem82.c:16:         else if (grades[i] > 1.0001) out[i] = "D+";
	ldrsw	x0, [sp, 36]	// _75, i
	lsl	x0, x0, 2	// _76, _75,
	ldr	x1, [sp, 24]	// tmp241, grades
	add	x0, x1, x0	// _77, tmp241, _76
	ldr	s0, [x0]	// _78, *_77
	fcvt	d0, s0	// _79, _78
// problem82.c:16:         else if (grades[i] > 1.0001) out[i] = "D+";
	adrp	x0, .LC26	// tmp274,
	ldr	d1, [x0, #:lo12:.LC26]	// tmp242,
	fcmpe	d0, d1	// _79, tmp242
	bgt	.L39		//,
	b	.L51		//
.L39:
// problem82.c:16:         else if (grades[i] > 1.0001) out[i] = "D+";
	ldrsw	x0, [sp, 36]	// _80, i
	lsl	x0, x0, 3	// _81, _80,
	ldr	x1, [sp, 40]	// tmp243, out
	add	x0, x1, x0	// _82, tmp243, _81
// problem82.c:16:         else if (grades[i] > 1.0001) out[i] = "D+";
	adrp	x1, .LC15	// tmp245,
	add	x1, x1, :lo12:.LC15	// tmp244, tmp245,
	str	x1, [x0]	// tmp244, *_82
	b	.L5		//
.L51:
// problem82.c:17:         else if (grades[i] > 0.7001) out[i] = "D";
	ldrsw	x0, [sp, 36]	// _83, i
	lsl	x0, x0, 2	// _84, _83,
	ldr	x1, [sp, 24]	// tmp246, grades
	add	x0, x1, x0	// _85, tmp246, _84
	ldr	s0, [x0]	// _86, *_85
	fcvt	d0, s0	// _87, _86
// problem82.c:17:         else if (grades[i] > 0.7001) out[i] = "D";
	adrp	x0, .LC27	// tmp275,
	ldr	d1, [x0, #:lo12:.LC27]	// tmp247,
	fcmpe	d0, d1	// _87, tmp247
	bgt	.L40		//,
	b	.L52		//
.L40:
// problem82.c:17:         else if (grades[i] > 0.7001) out[i] = "D";
	ldrsw	x0, [sp, 36]	// _88, i
	lsl	x0, x0, 3	// _89, _88,
	ldr	x1, [sp, 40]	// tmp248, out
	add	x0, x1, x0	// _90, tmp248, _89
// problem82.c:17:         else if (grades[i] > 0.7001) out[i] = "D";
	adrp	x1, .LC8	// tmp250,
	add	x1, x1, :lo12:.LC8	// tmp249, tmp250,
	str	x1, [x0]	// tmp249, *_90
	b	.L5		//
.L52:
// problem82.c:18:         else if (grades[i] > 0.0001) out[i] = "D-";
	ldrsw	x0, [sp, 36]	// _91, i
	lsl	x0, x0, 2	// _92, _91,
	ldr	x1, [sp, 24]	// tmp251, grades
	add	x0, x1, x0	// _93, tmp251, _92
	ldr	s0, [x0]	// _94, *_93
	fcvt	d0, s0	// _95, _94
// problem82.c:18:         else if (grades[i] > 0.0001) out[i] = "D-";
	adrp	x0, .LC28	// tmp276,
	ldr	d1, [x0, #:lo12:.LC28]	// tmp252,
	fcmpe	d0, d1	// _95, tmp252
	bgt	.L41		//,
	b	.L53		//
.L41:
// problem82.c:18:         else if (grades[i] > 0.0001) out[i] = "D-";
	ldrsw	x0, [sp, 36]	// _96, i
	lsl	x0, x0, 3	// _97, _96,
	ldr	x1, [sp, 40]	// tmp253, out
	add	x0, x1, x0	// _98, tmp253, _97
// problem82.c:18:         else if (grades[i] > 0.0001) out[i] = "D-";
	adrp	x1, .LC9	// tmp255,
	add	x1, x1, :lo12:.LC9	// tmp254, tmp255,
	str	x1, [x0]	// tmp254, *_98
	b	.L5		//
.L53:
// problem82.c:19:         else out[i] = "E";
	ldrsw	x0, [sp, 36]	// _99, i
	lsl	x0, x0, 3	// _100, _99,
	ldr	x1, [sp, 40]	// tmp256, out
	add	x0, x1, x0	// _101, tmp256, _100
// problem82.c:19:         else out[i] = "E";
	adrp	x1, .LC16	// tmp258,
	add	x1, x1, :lo12:.LC16	// tmp257, tmp258,
	str	x1, [x0]	// tmp257, *_101
.L5:
// problem82.c:6:     for (int i = 0; i < size; ++i) {
	ldr	w0, [sp, 36]	// tmp260, i
	add	w0, w0, 1	// tmp259, tmp260,
	str	w0, [sp, 36]	// tmp259, i
.L2:
// problem82.c:6:     for (int i = 0; i < size; ++i) {
	ldr	w1, [sp, 36]	// tmp261, i
	ldr	w0, [sp, 20]	// tmp262, size
	cmp	w1, w0	// tmp261, tmp262
	blt	.L28		//,
// problem82.c:21:     return out;
	ldr	x0, [sp, 40]	// _110, out
// problem82.c:22: }
	ldp	x29, x30, [sp], 48	//,,,
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
	stp	x29, x30, [sp, -64]!	//,,,
	.cfi_def_cfa_offset 64
	.cfi_offset 29, -64
	.cfi_offset 30, -56
	mov	x29, sp	//,
	str	x0, [sp, 40]	// a, a
	str	x1, [sp, 32]	// b, b
	str	w2, [sp, 28]	// size, size
// problem82.c:32:     for (int i = 0; i < size; i++) {
	str	wzr, [sp, 60]	//, i
// problem82.c:32:     for (int i = 0; i < size; i++) {
	b	.L55		//
.L58:
// problem82.c:33:         if (strcmp(a[i], b[i]) != 0) return false;
	ldrsw	x0, [sp, 60]	// _1, i
	lsl	x0, x0, 3	// _2, _1,
	ldr	x1, [sp, 40]	// tmp103, a
	add	x0, x1, x0	// _3, tmp103, _2
// problem82.c:33:         if (strcmp(a[i], b[i]) != 0) return false;
	ldr	x2, [x0]	// _4, *_3
// problem82.c:33:         if (strcmp(a[i], b[i]) != 0) return false;
	ldrsw	x0, [sp, 60]	// _5, i
	lsl	x0, x0, 3	// _6, _5,
	ldr	x1, [sp, 32]	// tmp104, b
	add	x0, x1, x0	// _7, tmp104, _6
// problem82.c:33:         if (strcmp(a[i], b[i]) != 0) return false;
	ldr	x0, [x0]	// _8, *_7
	mov	x1, x0	//, _8
	mov	x0, x2	//, _4
	bl	strcmp		//
// problem82.c:33:         if (strcmp(a[i], b[i]) != 0) return false;
	cmp	w0, 0	// _9,
	beq	.L56		//,
// problem82.c:33:         if (strcmp(a[i], b[i]) != 0) return false;
	mov	w0, 0	// _11,
	b	.L57		//
.L56:
// problem82.c:32:     for (int i = 0; i < size; i++) {
	ldr	w0, [sp, 60]	// tmp106, i
	add	w0, w0, 1	// tmp105, tmp106,
	str	w0, [sp, 60]	// tmp105, i
.L55:
// problem82.c:32:     for (int i = 0; i < size; i++) {
	ldr	w1, [sp, 60]	// tmp107, i
	ldr	w0, [sp, 28]	// tmp108, size
	cmp	w1, w0	// tmp107, tmp108
	blt	.L58		//,
// problem82.c:35:     return true;
	mov	w0, 1	// _11,
.L57:
// problem82.c:36: }
	ldp	x29, x30, [sp], 64	//,,,
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE7:
	.size	issame, .-issame
	.section	.rodata
	.align	3
.LC30:
	.string	"problem82.c"
	.align	3
.LC31:
	.string	"issame(result1, expected1, 5)"
	.align	3
.LC32:
	.string	"issame(result2, expected2, 1)"
	.align	3
.LC33:
	.string	"issame(result3, expected3, 1)"
	.align	3
.LC34:
	.string	"issame(result4, expected4, 1)"
	.align	3
.LC36:
	.string	"issame(result5, expected5, 5)"
	.align	3
.LC37:
	.string	"issame(result6, expected6, 2)"
	.text
	.align	2
	.global	main
	.type	main, %function
main:
.LFB8:
	.cfi_startproc
	stp	x29, x30, [sp, -272]!	//,,,
	.cfi_def_cfa_offset 272
	.cfi_offset 29, -272
	.cfi_offset 30, -264
	mov	x29, sp	//,
// problem82.c:38: int main() {
	adrp	x0, :got:__stack_chk_guard	// tmp101,
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]	// tmp100, tmp101,
	ldr	x1, [x0]	// tmp182,
	str	x1, [sp, 264]	// tmp182, D.5089
	mov	x1, 0	// tmp182
// problem82.c:39:     float grades1[] = {4.0, 3, 1.7, 2, 3.5};
	adrp	x0, .LC0	// tmp103,
	add	x0, x0, :lo12:.LC0	// tmp102, tmp103,
	add	x2, sp, 136	// tmp104,,
	mov	x3, x0	// tmp105, tmp102
	ldp	x0, x1, [x3]	// tmp106,
	stp	x0, x1, [x2]	// tmp106, grades1
	ldr	w0, [x3, 16]	// tmp107,
	str	w0, [x2, 16]	// tmp107, grades1
// problem82.c:40:     char* expected1[] = {"A+", "B", "C-", "C", "A-"};
	adrp	x0, .LC29	// tmp109,
	add	x1, x0, :lo12:.LC29	// tmp108, tmp109,
	add	x0, sp, 184	// tmp110,,
	ldp	q0, q1, [x1]	// tmp112, tmp113,
	stp	q0, q1, [x0]	// tmp112, tmp113, expected1
	ldr	x1, [x1, 32]	// tmp114,
	str	x1, [x0, 32]	// tmp114, expected1
// problem82.c:41:     char** result1 = func0(grades1, 5);
	add	x0, sp, 136	// tmp115,,
	mov	w1, 5	//,
	bl	func0		//
	str	x0, [sp, 16]	//, result1
// problem82.c:42:     assert(issame(result1, expected1, 5));
	add	x0, sp, 184	// tmp116,,
	mov	w2, 5	//,
	mov	x1, x0	//, tmp116
	ldr	x0, [sp, 16]	//, result1
	bl	issame		//
	and	w0, w0, 255	// _1, tmp117
	cmp	w0, 0	// _1,
	bne	.L60		//,
// problem82.c:42:     assert(issame(result1, expected1, 5));
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp118,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp118,
	mov	w2, 42	//,
	adrp	x0, .LC30	// tmp119,
	add	x1, x0, :lo12:.LC30	//, tmp119,
	adrp	x0, .LC31	// tmp120,
	add	x0, x0, :lo12:.LC31	//, tmp120,
	bl	__assert_fail		//
.L60:
// problem82.c:43:     free(result1);
	ldr	x0, [sp, 16]	//, result1
	bl	free		//
// problem82.c:45:     float grades2[] = {1.2};
	mov	w0, 39322	// tmp181,
	movk	w0, 0x3f99, lsl 16	// tmp181,,
	fmov	s0, w0	// tmp121, tmp181
	str	s0, [sp, 64]	// tmp121, grades2[0]
// problem82.c:46:     char* expected2[] = {"D+"};
	adrp	x0, .LC15	// tmp123,
	add	x0, x0, :lo12:.LC15	// tmp122, tmp123,
	str	x0, [sp, 88]	// tmp122, expected2[0]
// problem82.c:47:     char** result2 = func0(grades2, 1);
	add	x0, sp, 64	// tmp124,,
	mov	w1, 1	//,
	bl	func0		//
	str	x0, [sp, 24]	//, result2
// problem82.c:48:     assert(issame(result2, expected2, 1));
	add	x0, sp, 88	// tmp125,,
	mov	w2, 1	//,
	mov	x1, x0	//, tmp125
	ldr	x0, [sp, 24]	//, result2
	bl	issame		//
	and	w0, w0, 255	// _2, tmp126
	cmp	w0, 0	// _2,
	bne	.L61		//,
// problem82.c:48:     assert(issame(result2, expected2, 1));
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp127,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp127,
	mov	w2, 48	//,
	adrp	x0, .LC30	// tmp128,
	add	x1, x0, :lo12:.LC30	//, tmp128,
	adrp	x0, .LC32	// tmp129,
	add	x0, x0, :lo12:.LC32	//, tmp129,
	bl	__assert_fail		//
.L61:
// problem82.c:49:     free(result2);
	ldr	x0, [sp, 24]	//, result2
	bl	free		//
// problem82.c:51:     float grades3[] = {0.5};
	fmov	s0, 5.0e-1	// tmp130,
	str	s0, [sp, 72]	// tmp130, grades3[0]
// problem82.c:52:     char* expected3[] = {"D-"};
	adrp	x0, .LC9	// tmp132,
	add	x0, x0, :lo12:.LC9	// tmp131, tmp132,
	str	x0, [sp, 96]	// tmp131, expected3[0]
// problem82.c:53:     char** result3 = func0(grades3, 1);
	add	x0, sp, 72	// tmp133,,
	mov	w1, 1	//,
	bl	func0		//
	str	x0, [sp, 32]	//, result3
// problem82.c:54:     assert(issame(result3, expected3, 1));
	add	x0, sp, 96	// tmp134,,
	mov	w2, 1	//,
	mov	x1, x0	//, tmp134
	ldr	x0, [sp, 32]	//, result3
	bl	issame		//
	and	w0, w0, 255	// _3, tmp135
	cmp	w0, 0	// _3,
	bne	.L62		//,
// problem82.c:54:     assert(issame(result3, expected3, 1));
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp136,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp136,
	mov	w2, 54	//,
	adrp	x0, .LC30	// tmp137,
	add	x1, x0, :lo12:.LC30	//, tmp137,
	adrp	x0, .LC33	// tmp138,
	add	x0, x0, :lo12:.LC33	//, tmp138,
	bl	__assert_fail		//
.L62:
// problem82.c:55:     free(result3);
	ldr	x0, [sp, 32]	//, result3
	bl	free		//
// problem82.c:57:     float grades4[] = {0.0};
	str	wzr, [sp, 80]	//, grades4[0]
// problem82.c:58:     char* expected4[] = {"E"};
	adrp	x0, .LC16	// tmp140,
	add	x0, x0, :lo12:.LC16	// tmp139, tmp140,
	str	x0, [sp, 104]	// tmp139, expected4[0]
// problem82.c:59:     char** result4 = func0(grades4, 1);
	add	x0, sp, 80	// tmp141,,
	mov	w1, 1	//,
	bl	func0		//
	str	x0, [sp, 40]	//, result4
// problem82.c:60:     assert(issame(result4, expected4, 1));
	add	x0, sp, 104	// tmp142,,
	mov	w2, 1	//,
	mov	x1, x0	//, tmp142
	ldr	x0, [sp, 40]	//, result4
	bl	issame		//
	and	w0, w0, 255	// _4, tmp143
	cmp	w0, 0	// _4,
	bne	.L63		//,
// problem82.c:60:     assert(issame(result4, expected4, 1));
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp144,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp144,
	mov	w2, 60	//,
	adrp	x0, .LC30	// tmp145,
	add	x1, x0, :lo12:.LC30	//, tmp145,
	adrp	x0, .LC34	// tmp146,
	add	x0, x0, :lo12:.LC34	//, tmp146,
	bl	__assert_fail		//
.L63:
// problem82.c:61:     free(result4);
	ldr	x0, [sp, 40]	//, result4
	bl	free		//
// problem82.c:63:     float grades5[] = {1, 0.3, 1.5, 2.8, 3.3};
	adrp	x0, .LC7	// tmp148,
	add	x0, x0, :lo12:.LC7	// tmp147, tmp148,
	add	x2, sp, 160	// tmp149,,
	mov	x3, x0	// tmp150, tmp147
	ldp	x0, x1, [x3]	// tmp151,
	stp	x0, x1, [x2]	// tmp151, grades5
	ldr	w0, [x3, 16]	// tmp152,
	str	w0, [x2, 16]	// tmp152, grades5
// problem82.c:64:     char* expected5[] = {"D", "D-", "C-", "B", "B+"};
	adrp	x0, .LC35	// tmp154,
	add	x1, x0, :lo12:.LC35	// tmp153, tmp154,
	add	x0, sp, 224	// tmp155,,
	ldp	q0, q1, [x1]	// tmp157, tmp158,
	stp	q0, q1, [x0]	// tmp157, tmp158, expected5
	ldr	x1, [x1, 32]	// tmp159,
	str	x1, [x0, 32]	// tmp159, expected5
// problem82.c:65:     char** result5 = func0(grades5, 5);
	add	x0, sp, 160	// tmp160,,
	mov	w1, 5	//,
	bl	func0		//
	str	x0, [sp, 48]	//, result5
// problem82.c:66:     assert(issame(result5, expected5, 5));
	add	x0, sp, 224	// tmp161,,
	mov	w2, 5	//,
	mov	x1, x0	//, tmp161
	ldr	x0, [sp, 48]	//, result5
	bl	issame		//
	and	w0, w0, 255	// _5, tmp162
	cmp	w0, 0	// _5,
	bne	.L64		//,
// problem82.c:66:     assert(issame(result5, expected5, 5));
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp163,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp163,
	mov	w2, 66	//,
	adrp	x0, .LC30	// tmp164,
	add	x1, x0, :lo12:.LC30	//, tmp164,
	adrp	x0, .LC36	// tmp165,
	add	x0, x0, :lo12:.LC36	//, tmp165,
	bl	__assert_fail		//
.L64:
// problem82.c:67:     free(result5);
	ldr	x0, [sp, 48]	//, result5
	bl	free		//
// problem82.c:69:     float grades6[] = {0, 0.7};
	str	wzr, [sp, 112]	//, grades6[0]
	mov	w0, 13107	// tmp180,
	movk	w0, 0x3f33, lsl 16	// tmp180,,
	fmov	s0, w0	// tmp166, tmp180
	str	s0, [sp, 116]	// tmp166, grades6[1]
// problem82.c:70:     char* expected6[] = {"E", "D-"};
	adrp	x0, .LC16	// tmp168,
	add	x0, x0, :lo12:.LC16	// tmp167, tmp168,
	str	x0, [sp, 120]	// tmp167, expected6[0]
	adrp	x0, .LC9	// tmp170,
	add	x0, x0, :lo12:.LC9	// tmp169, tmp170,
	str	x0, [sp, 128]	// tmp169, expected6[1]
// problem82.c:71:     char** result6 = func0(grades6, 2);
	add	x0, sp, 112	// tmp171,,
	mov	w1, 2	//,
	bl	func0		//
	str	x0, [sp, 56]	//, result6
// problem82.c:72:     assert(issame(result6, expected6, 2));
	add	x0, sp, 120	// tmp172,,
	mov	w2, 2	//,
	mov	x1, x0	//, tmp172
	ldr	x0, [sp, 56]	//, result6
	bl	issame		//
	and	w0, w0, 255	// _6, tmp173
	cmp	w0, 0	// _6,
	bne	.L65		//,
// problem82.c:72:     assert(issame(result6, expected6, 2));
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp174,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp174,
	mov	w2, 72	//,
	adrp	x0, .LC30	// tmp175,
	add	x1, x0, :lo12:.LC30	//, tmp175,
	adrp	x0, .LC37	// tmp176,
	add	x0, x0, :lo12:.LC37	//, tmp176,
	bl	__assert_fail		//
.L65:
// problem82.c:73:     free(result6);
	ldr	x0, [sp, 56]	//, result6
	bl	free		//
// problem82.c:75:     return 0;
	mov	w0, 0	// _52,
// problem82.c:76: }
	mov	w1, w0	// <retval>, _52
	adrp	x0, :got:__stack_chk_guard	// tmp179,
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]	// tmp178, tmp179,
	ldr	x3, [sp, 264]	// tmp183, D.5089
	ldr	x2, [x0]	// tmp184,
	subs	x3, x3, x2	// tmp183, tmp184
	mov	x2, 0	// tmp184
	beq	.L67		//,
	bl	__stack_chk_fail		//
.L67:
	mov	w0, w1	//, <retval>
	ldp	x29, x30, [sp], 272	//,,,
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
	.word	1082130432
	.word	1077936128
	.word	1071225242
	.word	1073741824
	.word	1080033280
	.data
	.align	3
.LC29:
	.xword	.LC1
	.xword	.LC2
	.xword	.LC3
	.xword	.LC4
	.xword	.LC5
	.section	.rodata
	.align	3
.LC7:
	.word	1065353216
	.word	1050253722
	.word	1069547520
	.word	1077097267
	.word	1079194419
	.data
	.align	3
.LC35:
	.xword	.LC8
	.xword	.LC9
	.xword	.LC3
	.xword	.LC2
	.xword	.LC10
	.text
	.section	.rodata
	.align	3
	.type	__PRETTY_FUNCTION__.0, %object
	.size	__PRETTY_FUNCTION__.0, 5
__PRETTY_FUNCTION__.0:
	.string	"main"
	.align	3
.LC17:
	.word	-1841681977
	.word	1074790347
	.align	3
.LC18:
	.word	123695058
	.word	1074633166
	.align	3
.LC19:
	.word	-735298401
	.word	1074423450
	.align	3
.LC20:
	.word	1841681977
	.word	1074266164
	.align	3
.LC21:
	.word	123695058
	.word	1074108878
	.align	3
.LC22:
	.word	-735298401
	.word	1073899162
	.align	3
.LC23:
	.word	1841681977
	.word	1073741876
	.align	3
.LC24:
	.word	247390116
	.word	1073427356
	.align	3
.LC25:
	.word	-1470596802
	.word	1073007925
	.align	3
.LC26:
	.word	-611603343
	.word	1072693352
	.align	3
.LC27:
	.word	494780232
	.word	1072064312
	.align	3
.LC28:
	.word	-350469331
	.word	1058682594
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
