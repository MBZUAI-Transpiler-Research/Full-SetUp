	.arch armv8-a
	.file	"code.c"
// GNU C17 (Ubuntu 13.3.0-6ubuntu2~24.04) version 13.3.0 (aarch64-linux-gnu)
//	compiled by GNU C version 13.3.0, GMP version 6.3.0, MPFR version 4.2.1, MPC version 1.3.1, isl version isl-0.26-GMP

// GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
// options passed: -mlittle-endian -mabi=lp64 -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection
	.text
	.section	.rodata
	.align	3
.LC0:
	.string	"A+"
	.align	3
.LC1:
	.string	"A"
	.align	3
.LC2:
	.string	"A-"
	.align	3
.LC3:
	.string	"B+"
	.align	3
.LC4:
	.string	"B"
	.align	3
.LC5:
	.string	"B-"
	.align	3
.LC6:
	.string	"C+"
	.align	3
.LC7:
	.string	"C"
	.align	3
.LC8:
	.string	"C-"
	.align	3
.LC9:
	.string	"D+"
	.align	3
.LC10:
	.string	"D"
	.align	3
.LC11:
	.string	"D-"
	.align	3
.LC12:
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
// eval/problem82//code.c:5:     char** out = malloc(size * sizeof(char*));
	ldrsw	x0, [sp, 20]	// _1, size
	lsl	x0, x0, 3	// _2, _1,
	bl	malloc		//
	str	x0, [sp, 40]	// tmp195, out
// eval/problem82//code.c:6:     for (int i = 0; i < size; ++i) {
	str	wzr, [sp, 36]	//, i
// eval/problem82//code.c:6:     for (int i = 0; i < size; ++i) {
	b	.L2		//
.L28:
// eval/problem82//code.c:7:         if (grades[i] >= 3.9999) out[i] = "A+";
	ldrsw	x0, [sp, 36]	// _3, i
	lsl	x0, x0, 2	// _4, _3,
	ldr	x1, [sp, 24]	// tmp196, grades
	add	x0, x1, x0	// _5, tmp196, _4
	ldr	s0, [x0]	// _6, *_5
	fcvt	d0, s0	// _7, _6
// eval/problem82//code.c:7:         if (grades[i] >= 3.9999) out[i] = "A+";
	adrp	x0, .LC13	// tmp265,
	ldr	d1, [x0, #:lo12:.LC13]	// tmp197,
	fcmpe	d0, d1	// _7, tmp197
	bge	.L30		//,
	b	.L42		//
.L30:
// eval/problem82//code.c:7:         if (grades[i] >= 3.9999) out[i] = "A+";
	ldrsw	x0, [sp, 36]	// _8, i
	lsl	x0, x0, 3	// _9, _8,
	ldr	x1, [sp, 40]	// tmp198, out
	add	x0, x1, x0	// _10, tmp198, _9
// eval/problem82//code.c:7:         if (grades[i] >= 3.9999) out[i] = "A+";
	adrp	x1, .LC0	// tmp200,
	add	x1, x1, :lo12:.LC0	// tmp199, tmp200,
	str	x1, [x0]	// tmp199, *_10
	b	.L5		//
.L42:
// eval/problem82//code.c:8:         else if (grades[i] > 3.7001) out[i] = "A";
	ldrsw	x0, [sp, 36]	// _11, i
	lsl	x0, x0, 2	// _12, _11,
	ldr	x1, [sp, 24]	// tmp201, grades
	add	x0, x1, x0	// _13, tmp201, _12
	ldr	s0, [x0]	// _14, *_13
	fcvt	d0, s0	// _15, _14
// eval/problem82//code.c:8:         else if (grades[i] > 3.7001) out[i] = "A";
	adrp	x0, .LC14	// tmp266,
	ldr	d1, [x0, #:lo12:.LC14]	// tmp202,
	fcmpe	d0, d1	// _15, tmp202
	bgt	.L31		//,
	b	.L43		//
.L31:
// eval/problem82//code.c:8:         else if (grades[i] > 3.7001) out[i] = "A";
	ldrsw	x0, [sp, 36]	// _16, i
	lsl	x0, x0, 3	// _17, _16,
	ldr	x1, [sp, 40]	// tmp203, out
	add	x0, x1, x0	// _18, tmp203, _17
// eval/problem82//code.c:8:         else if (grades[i] > 3.7001) out[i] = "A";
	adrp	x1, .LC1	// tmp205,
	add	x1, x1, :lo12:.LC1	// tmp204, tmp205,
	str	x1, [x0]	// tmp204, *_18
	b	.L5		//
.L43:
// eval/problem82//code.c:9:         else if (grades[i] > 3.3001) out[i] = "A-";
	ldrsw	x0, [sp, 36]	// _19, i
	lsl	x0, x0, 2	// _20, _19,
	ldr	x1, [sp, 24]	// tmp206, grades
	add	x0, x1, x0	// _21, tmp206, _20
	ldr	s0, [x0]	// _22, *_21
	fcvt	d0, s0	// _23, _22
// eval/problem82//code.c:9:         else if (grades[i] > 3.3001) out[i] = "A-";
	adrp	x0, .LC15	// tmp267,
	ldr	d1, [x0, #:lo12:.LC15]	// tmp207,
	fcmpe	d0, d1	// _23, tmp207
	bgt	.L32		//,
	b	.L44		//
.L32:
// eval/problem82//code.c:9:         else if (grades[i] > 3.3001) out[i] = "A-";
	ldrsw	x0, [sp, 36]	// _24, i
	lsl	x0, x0, 3	// _25, _24,
	ldr	x1, [sp, 40]	// tmp208, out
	add	x0, x1, x0	// _26, tmp208, _25
// eval/problem82//code.c:9:         else if (grades[i] > 3.3001) out[i] = "A-";
	adrp	x1, .LC2	// tmp210,
	add	x1, x1, :lo12:.LC2	// tmp209, tmp210,
	str	x1, [x0]	// tmp209, *_26
	b	.L5		//
.L44:
// eval/problem82//code.c:10:         else if (grades[i] > 3.0001) out[i] = "B+";
	ldrsw	x0, [sp, 36]	// _27, i
	lsl	x0, x0, 2	// _28, _27,
	ldr	x1, [sp, 24]	// tmp211, grades
	add	x0, x1, x0	// _29, tmp211, _28
	ldr	s0, [x0]	// _30, *_29
	fcvt	d0, s0	// _31, _30
// eval/problem82//code.c:10:         else if (grades[i] > 3.0001) out[i] = "B+";
	adrp	x0, .LC16	// tmp268,
	ldr	d1, [x0, #:lo12:.LC16]	// tmp212,
	fcmpe	d0, d1	// _31, tmp212
	bgt	.L33		//,
	b	.L45		//
.L33:
// eval/problem82//code.c:10:         else if (grades[i] > 3.0001) out[i] = "B+";
	ldrsw	x0, [sp, 36]	// _32, i
	lsl	x0, x0, 3	// _33, _32,
	ldr	x1, [sp, 40]	// tmp213, out
	add	x0, x1, x0	// _34, tmp213, _33
// eval/problem82//code.c:10:         else if (grades[i] > 3.0001) out[i] = "B+";
	adrp	x1, .LC3	// tmp215,
	add	x1, x1, :lo12:.LC3	// tmp214, tmp215,
	str	x1, [x0]	// tmp214, *_34
	b	.L5		//
.L45:
// eval/problem82//code.c:11:         else if (grades[i] > 2.7001) out[i] = "B";
	ldrsw	x0, [sp, 36]	// _35, i
	lsl	x0, x0, 2	// _36, _35,
	ldr	x1, [sp, 24]	// tmp216, grades
	add	x0, x1, x0	// _37, tmp216, _36
	ldr	s0, [x0]	// _38, *_37
	fcvt	d0, s0	// _39, _38
// eval/problem82//code.c:11:         else if (grades[i] > 2.7001) out[i] = "B";
	adrp	x0, .LC17	// tmp269,
	ldr	d1, [x0, #:lo12:.LC17]	// tmp217,
	fcmpe	d0, d1	// _39, tmp217
	bgt	.L34		//,
	b	.L46		//
.L34:
// eval/problem82//code.c:11:         else if (grades[i] > 2.7001) out[i] = "B";
	ldrsw	x0, [sp, 36]	// _40, i
	lsl	x0, x0, 3	// _41, _40,
	ldr	x1, [sp, 40]	// tmp218, out
	add	x0, x1, x0	// _42, tmp218, _41
// eval/problem82//code.c:11:         else if (grades[i] > 2.7001) out[i] = "B";
	adrp	x1, .LC4	// tmp220,
	add	x1, x1, :lo12:.LC4	// tmp219, tmp220,
	str	x1, [x0]	// tmp219, *_42
	b	.L5		//
.L46:
// eval/problem82//code.c:12:         else if (grades[i] > 2.3001) out[i] = "B-";
	ldrsw	x0, [sp, 36]	// _43, i
	lsl	x0, x0, 2	// _44, _43,
	ldr	x1, [sp, 24]	// tmp221, grades
	add	x0, x1, x0	// _45, tmp221, _44
	ldr	s0, [x0]	// _46, *_45
	fcvt	d0, s0	// _47, _46
// eval/problem82//code.c:12:         else if (grades[i] > 2.3001) out[i] = "B-";
	adrp	x0, .LC18	// tmp270,
	ldr	d1, [x0, #:lo12:.LC18]	// tmp222,
	fcmpe	d0, d1	// _47, tmp222
	bgt	.L35		//,
	b	.L47		//
.L35:
// eval/problem82//code.c:12:         else if (grades[i] > 2.3001) out[i] = "B-";
	ldrsw	x0, [sp, 36]	// _48, i
	lsl	x0, x0, 3	// _49, _48,
	ldr	x1, [sp, 40]	// tmp223, out
	add	x0, x1, x0	// _50, tmp223, _49
// eval/problem82//code.c:12:         else if (grades[i] > 2.3001) out[i] = "B-";
	adrp	x1, .LC5	// tmp225,
	add	x1, x1, :lo12:.LC5	// tmp224, tmp225,
	str	x1, [x0]	// tmp224, *_50
	b	.L5		//
.L47:
// eval/problem82//code.c:13:         else if (grades[i] > 2.0001) out[i] = "C+";
	ldrsw	x0, [sp, 36]	// _51, i
	lsl	x0, x0, 2	// _52, _51,
	ldr	x1, [sp, 24]	// tmp226, grades
	add	x0, x1, x0	// _53, tmp226, _52
	ldr	s0, [x0]	// _54, *_53
	fcvt	d0, s0	// _55, _54
// eval/problem82//code.c:13:         else if (grades[i] > 2.0001) out[i] = "C+";
	adrp	x0, .LC19	// tmp271,
	ldr	d1, [x0, #:lo12:.LC19]	// tmp227,
	fcmpe	d0, d1	// _55, tmp227
	bgt	.L36		//,
	b	.L48		//
.L36:
// eval/problem82//code.c:13:         else if (grades[i] > 2.0001) out[i] = "C+";
	ldrsw	x0, [sp, 36]	// _56, i
	lsl	x0, x0, 3	// _57, _56,
	ldr	x1, [sp, 40]	// tmp228, out
	add	x0, x1, x0	// _58, tmp228, _57
// eval/problem82//code.c:13:         else if (grades[i] > 2.0001) out[i] = "C+";
	adrp	x1, .LC6	// tmp230,
	add	x1, x1, :lo12:.LC6	// tmp229, tmp230,
	str	x1, [x0]	// tmp229, *_58
	b	.L5		//
.L48:
// eval/problem82//code.c:14:         else if (grades[i] > 1.7001) out[i] = "C";
	ldrsw	x0, [sp, 36]	// _59, i
	lsl	x0, x0, 2	// _60, _59,
	ldr	x1, [sp, 24]	// tmp231, grades
	add	x0, x1, x0	// _61, tmp231, _60
	ldr	s0, [x0]	// _62, *_61
	fcvt	d0, s0	// _63, _62
// eval/problem82//code.c:14:         else if (grades[i] > 1.7001) out[i] = "C";
	adrp	x0, .LC20	// tmp272,
	ldr	d1, [x0, #:lo12:.LC20]	// tmp232,
	fcmpe	d0, d1	// _63, tmp232
	bgt	.L37		//,
	b	.L49		//
.L37:
// eval/problem82//code.c:14:         else if (grades[i] > 1.7001) out[i] = "C";
	ldrsw	x0, [sp, 36]	// _64, i
	lsl	x0, x0, 3	// _65, _64,
	ldr	x1, [sp, 40]	// tmp233, out
	add	x0, x1, x0	// _66, tmp233, _65
// eval/problem82//code.c:14:         else if (grades[i] > 1.7001) out[i] = "C";
	adrp	x1, .LC7	// tmp235,
	add	x1, x1, :lo12:.LC7	// tmp234, tmp235,
	str	x1, [x0]	// tmp234, *_66
	b	.L5		//
.L49:
// eval/problem82//code.c:15:         else if (grades[i] > 1.3001) out[i] = "C-";
	ldrsw	x0, [sp, 36]	// _67, i
	lsl	x0, x0, 2	// _68, _67,
	ldr	x1, [sp, 24]	// tmp236, grades
	add	x0, x1, x0	// _69, tmp236, _68
	ldr	s0, [x0]	// _70, *_69
	fcvt	d0, s0	// _71, _70
// eval/problem82//code.c:15:         else if (grades[i] > 1.3001) out[i] = "C-";
	adrp	x0, .LC21	// tmp273,
	ldr	d1, [x0, #:lo12:.LC21]	// tmp237,
	fcmpe	d0, d1	// _71, tmp237
	bgt	.L38		//,
	b	.L50		//
.L38:
// eval/problem82//code.c:15:         else if (grades[i] > 1.3001) out[i] = "C-";
	ldrsw	x0, [sp, 36]	// _72, i
	lsl	x0, x0, 3	// _73, _72,
	ldr	x1, [sp, 40]	// tmp238, out
	add	x0, x1, x0	// _74, tmp238, _73
// eval/problem82//code.c:15:         else if (grades[i] > 1.3001) out[i] = "C-";
	adrp	x1, .LC8	// tmp240,
	add	x1, x1, :lo12:.LC8	// tmp239, tmp240,
	str	x1, [x0]	// tmp239, *_74
	b	.L5		//
.L50:
// eval/problem82//code.c:16:         else if (grades[i] > 1.0001) out[i] = "D+";
	ldrsw	x0, [sp, 36]	// _75, i
	lsl	x0, x0, 2	// _76, _75,
	ldr	x1, [sp, 24]	// tmp241, grades
	add	x0, x1, x0	// _77, tmp241, _76
	ldr	s0, [x0]	// _78, *_77
	fcvt	d0, s0	// _79, _78
// eval/problem82//code.c:16:         else if (grades[i] > 1.0001) out[i] = "D+";
	adrp	x0, .LC22	// tmp274,
	ldr	d1, [x0, #:lo12:.LC22]	// tmp242,
	fcmpe	d0, d1	// _79, tmp242
	bgt	.L39		//,
	b	.L51		//
.L39:
// eval/problem82//code.c:16:         else if (grades[i] > 1.0001) out[i] = "D+";
	ldrsw	x0, [sp, 36]	// _80, i
	lsl	x0, x0, 3	// _81, _80,
	ldr	x1, [sp, 40]	// tmp243, out
	add	x0, x1, x0	// _82, tmp243, _81
// eval/problem82//code.c:16:         else if (grades[i] > 1.0001) out[i] = "D+";
	adrp	x1, .LC9	// tmp245,
	add	x1, x1, :lo12:.LC9	// tmp244, tmp245,
	str	x1, [x0]	// tmp244, *_82
	b	.L5		//
.L51:
// eval/problem82//code.c:17:         else if (grades[i] > 0.7001) out[i] = "D";
	ldrsw	x0, [sp, 36]	// _83, i
	lsl	x0, x0, 2	// _84, _83,
	ldr	x1, [sp, 24]	// tmp246, grades
	add	x0, x1, x0	// _85, tmp246, _84
	ldr	s0, [x0]	// _86, *_85
	fcvt	d0, s0	// _87, _86
// eval/problem82//code.c:17:         else if (grades[i] > 0.7001) out[i] = "D";
	adrp	x0, .LC23	// tmp275,
	ldr	d1, [x0, #:lo12:.LC23]	// tmp247,
	fcmpe	d0, d1	// _87, tmp247
	bgt	.L40		//,
	b	.L52		//
.L40:
// eval/problem82//code.c:17:         else if (grades[i] > 0.7001) out[i] = "D";
	ldrsw	x0, [sp, 36]	// _88, i
	lsl	x0, x0, 3	// _89, _88,
	ldr	x1, [sp, 40]	// tmp248, out
	add	x0, x1, x0	// _90, tmp248, _89
// eval/problem82//code.c:17:         else if (grades[i] > 0.7001) out[i] = "D";
	adrp	x1, .LC10	// tmp250,
	add	x1, x1, :lo12:.LC10	// tmp249, tmp250,
	str	x1, [x0]	// tmp249, *_90
	b	.L5		//
.L52:
// eval/problem82//code.c:18:         else if (grades[i] > 0.0001) out[i] = "D-";
	ldrsw	x0, [sp, 36]	// _91, i
	lsl	x0, x0, 2	// _92, _91,
	ldr	x1, [sp, 24]	// tmp251, grades
	add	x0, x1, x0	// _93, tmp251, _92
	ldr	s0, [x0]	// _94, *_93
	fcvt	d0, s0	// _95, _94
// eval/problem82//code.c:18:         else if (grades[i] > 0.0001) out[i] = "D-";
	adrp	x0, .LC24	// tmp276,
	ldr	d1, [x0, #:lo12:.LC24]	// tmp252,
	fcmpe	d0, d1	// _95, tmp252
	bgt	.L41		//,
	b	.L53		//
.L41:
// eval/problem82//code.c:18:         else if (grades[i] > 0.0001) out[i] = "D-";
	ldrsw	x0, [sp, 36]	// _96, i
	lsl	x0, x0, 3	// _97, _96,
	ldr	x1, [sp, 40]	// tmp253, out
	add	x0, x1, x0	// _98, tmp253, _97
// eval/problem82//code.c:18:         else if (grades[i] > 0.0001) out[i] = "D-";
	adrp	x1, .LC11	// tmp255,
	add	x1, x1, :lo12:.LC11	// tmp254, tmp255,
	str	x1, [x0]	// tmp254, *_98
	b	.L5		//
.L53:
// eval/problem82//code.c:19:         else out[i] = "E";
	ldrsw	x0, [sp, 36]	// _99, i
	lsl	x0, x0, 3	// _100, _99,
	ldr	x1, [sp, 40]	// tmp256, out
	add	x0, x1, x0	// _101, tmp256, _100
// eval/problem82//code.c:19:         else out[i] = "E";
	adrp	x1, .LC12	// tmp258,
	add	x1, x1, :lo12:.LC12	// tmp257, tmp258,
	str	x1, [x0]	// tmp257, *_101
.L5:
// eval/problem82//code.c:6:     for (int i = 0; i < size; ++i) {
	ldr	w0, [sp, 36]	// tmp260, i
	add	w0, w0, 1	// tmp259, tmp260,
	str	w0, [sp, 36]	// tmp259, i
.L2:
// eval/problem82//code.c:6:     for (int i = 0; i < size; ++i) {
	ldr	w1, [sp, 36]	// tmp261, i
	ldr	w0, [sp, 20]	// tmp262, size
	cmp	w1, w0	// tmp261, tmp262
	blt	.L28		//,
// eval/problem82//code.c:21:     return out;
	ldr	x0, [sp, 40]	// _110, out
// eval/problem82//code.c:22: }
	ldp	x29, x30, [sp], 48	//,,,
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE6:
	.size	func0, .-func0
	.section	.rodata
	.align	3
.LC13:
	.word	-1841681977
	.word	1074790347
	.align	3
.LC14:
	.word	123695058
	.word	1074633166
	.align	3
.LC15:
	.word	-735298401
	.word	1074423450
	.align	3
.LC16:
	.word	1841681977
	.word	1074266164
	.align	3
.LC17:
	.word	123695058
	.word	1074108878
	.align	3
.LC18:
	.word	-735298401
	.word	1073899162
	.align	3
.LC19:
	.word	1841681977
	.word	1073741876
	.align	3
.LC20:
	.word	247390116
	.word	1073427356
	.align	3
.LC21:
	.word	-1470596802
	.word	1073007925
	.align	3
.LC22:
	.word	-611603343
	.word	1072693352
	.align	3
.LC23:
	.word	494780232
	.word	1072064312
	.align	3
.LC24:
	.word	-350469331
	.word	1058682594
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
