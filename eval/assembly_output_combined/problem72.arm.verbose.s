	.arch armv8-a
	.file	"problem72.c"
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
	stp	x29, x30, [sp, -48]!	//,,,
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	mov	x29, sp	//,
	str	s0, [sp, 28]	// a, a
	str	s1, [sp, 24]	// b, b
	str	s2, [sp, 20]	// c, c
// problem72.c:5: if (a + b <= c || a + c <= b || b + c <= a) return -1;
	ldr	s1, [sp, 28]	// tmp107, a
	ldr	s0, [sp, 24]	// tmp108, b
	fadd	s0, s1, s0	// _1, tmp107, tmp108
// problem72.c:5: if (a + b <= c || a + c <= b || b + c <= a) return -1;
	ldr	s1, [sp, 20]	// tmp109, c
	fcmpe	s1, s0	// tmp109, _1
	bge	.L2		//,
// problem72.c:5: if (a + b <= c || a + c <= b || b + c <= a) return -1;
	ldr	s1, [sp, 28]	// tmp110, a
	ldr	s0, [sp, 20]	// tmp111, c
	fadd	s0, s1, s0	// _2, tmp110, tmp111
// problem72.c:5: if (a + b <= c || a + c <= b || b + c <= a) return -1;
	ldr	s1, [sp, 24]	// tmp112, b
	fcmpe	s1, s0	// tmp112, _2
	bge	.L2		//,
// problem72.c:5: if (a + b <= c || a + c <= b || b + c <= a) return -1;
	ldr	s1, [sp, 24]	// tmp113, b
	ldr	s0, [sp, 20]	// tmp114, c
	fadd	s0, s1, s0	// _3, tmp113, tmp114
// problem72.c:5: if (a + b <= c || a + c <= b || b + c <= a) return -1;
	ldr	s1, [sp, 28]	// tmp115, a
	fcmpe	s1, s0	// tmp115, _3
	bge	.L2		//,
// problem72.c:5: if (a + b <= c || a + c <= b || b + c <= a) return -1;
	b	.L6		//
.L2:
// problem72.c:5: if (a + b <= c || a + c <= b || b + c <= a) return -1;
	fmov	s0, -1.0e+0	// _14,
	b	.L5		//
.L6:
// problem72.c:6: float s = (a + b + c) / 2;
	ldr	s1, [sp, 28]	// tmp116, a
	ldr	s0, [sp, 24]	// tmp117, b
	fadd	s1, s1, s0	// _4, tmp116, tmp117
// problem72.c:6: float s = (a + b + c) / 2;
	ldr	s0, [sp, 20]	// tmp118, c
	fadd	s1, s1, s0	// _5, _4, tmp118
// problem72.c:6: float s = (a + b + c) / 2;
	fmov	s0, 2.0e+0	// tmp120,
	fdiv	s0, s1, s0	// tmp119, _5, tmp120
	str	s0, [sp, 40]	// tmp119, s
// problem72.c:7: float area = sqrtf(s * (s - a) * (s - b) * (s - c));
	ldr	s1, [sp, 40]	// tmp121, s
	ldr	s0, [sp, 28]	// tmp122, a
	fsub	s1, s1, s0	// _6, tmp121, tmp122
// problem72.c:7: float area = sqrtf(s * (s - a) * (s - b) * (s - c));
	ldr	s0, [sp, 40]	// tmp123, s
	fmul	s1, s1, s0	// _7, _6, tmp123
// problem72.c:7: float area = sqrtf(s * (s - a) * (s - b) * (s - c));
	ldr	s2, [sp, 40]	// tmp124, s
	ldr	s0, [sp, 24]	// tmp125, b
	fsub	s0, s2, s0	// _8, tmp124, tmp125
// problem72.c:7: float area = sqrtf(s * (s - a) * (s - b) * (s - c));
	fmul	s1, s1, s0	// _9, _7, _8
// problem72.c:7: float area = sqrtf(s * (s - a) * (s - b) * (s - c));
	ldr	s2, [sp, 40]	// tmp126, s
	ldr	s0, [sp, 20]	// tmp127, c
	fsub	s0, s2, s0	// _10, tmp126, tmp127
// problem72.c:7: float area = sqrtf(s * (s - a) * (s - b) * (s - c));
	fmul	s0, s1, s0	// _11, _9, _10
	bl	sqrtf		//
	str	s0, [sp, 44]	//, area
// problem72.c:8: return roundf(area * 100) / 100;
	ldr	s0, [sp, 44]	// tmp128, area
	mov	w0, 1120403456	// tmp132,
	fmov	s1, w0	// tmp129, tmp132
	fmul	s0, s0, s1	// _12, tmp128, tmp129
	bl	roundf		//
// problem72.c:8: return roundf(area * 100) / 100;
	mov	w0, 1120403456	// tmp133,
	fmov	s1, w0	// tmp130, tmp133
	fdiv	s0, s0, s1	// _14, _13, tmp130
.L5:
// problem72.c:9: }
	ldp	x29, x30, [sp], 48	//,,,
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE0:
	.size	func0, .-func0
	.section	.rodata
	.align	3
.LC0:
	.string	"problem72.c"
	.align	3
.LC1:
	.string	"fabs(func0(3, 4, 5) - 6.00) < 0.01"
	.align	3
.LC2:
	.string	"fabs(func0(1, 2, 10) + 1) < 0.01"
	.align	3
.LC3:
	.string	"fabs(func0(4, 8, 5) - 8.18) < 0.01"
	.align	3
.LC4:
	.string	"fabs(func0(2, 2, 2) - 1.73) < 0.01"
	.align	3
.LC5:
	.string	"fabs(func0(1, 2, 3) + 1) < 0.01"
	.align	3
.LC6:
	.string	"fabs(func0(10, 5, 7) - 16.25) < 0.01"
	.align	3
.LC7:
	.string	"fabs(func0(2, 6, 3) + 1) < 0.01"
	.align	3
.LC8:
	.string	"fabs(func0(1, 1, 1) - 0.43) < 0.01"
	.align	3
.LC9:
	.string	"fabs(func0(2, 2, 10) + 1) < 0.01"
	.text
	.align	2
	.global	main
	.type	main, %function
main:
.LFB1:
	.cfi_startproc
	stp	x29, x30, [sp, -16]!	//,,,
	.cfi_def_cfa_offset 16
	.cfi_offset 29, -16
	.cfi_offset 30, -8
	mov	x29, sp	//,
// problem72.c:18:     assert(fabs(func0(3, 4, 5) - 6.00) < 0.01);
	fmov	s2, 5.0e+0	//,
	fmov	s1, 4.0e+0	//,
	fmov	s0, 3.0e+0	//,
	bl	func0		//
	fcvt	d1, s0	// _2, _1
	fmov	d0, 6.0e+0	// tmp130,
	fsub	d0, d1, d0	// _3, _2, tmp130
	fabs	d0, d0	// _4, _3
	adrp	x0, .LC10	// tmp178,
	ldr	d1, [x0, #:lo12:.LC10]	// tmp131,
	fcmpe	d0, d1	// _4, tmp131
	bmi	.L8		//,
// problem72.c:18:     assert(fabs(func0(3, 4, 5) - 6.00) < 0.01);
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp132,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp132,
	mov	w2, 18	//,
	adrp	x0, .LC0	// tmp133,
	add	x1, x0, :lo12:.LC0	//, tmp133,
	adrp	x0, .LC1	// tmp134,
	add	x0, x0, :lo12:.LC1	//, tmp134,
	bl	__assert_fail		//
.L8:
// problem72.c:19:     assert(fabs(func0(1, 2, 10) + 1) < 0.01);
	fmov	s2, 1.0e+1	//,
	fmov	s1, 2.0e+0	//,
	fmov	s0, 1.0e+0	//,
	bl	func0		//
	fmov	s1, s0	// _5,
	fmov	s0, 1.0e+0	// tmp135,
	fadd	s0, s1, s0	// _6, _5, tmp135
	fabs	s0, s0	// _7, _6
	fcvt	d0, s0	// _8, _7
	adrp	x0, .LC10	// tmp179,
	ldr	d1, [x0, #:lo12:.LC10]	// tmp136,
	fcmpe	d0, d1	// _8, tmp136
	bmi	.L9		//,
// problem72.c:19:     assert(fabs(func0(1, 2, 10) + 1) < 0.01);
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp137,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp137,
	mov	w2, 19	//,
	adrp	x0, .LC0	// tmp138,
	add	x1, x0, :lo12:.LC0	//, tmp138,
	adrp	x0, .LC2	// tmp139,
	add	x0, x0, :lo12:.LC2	//, tmp139,
	bl	__assert_fail		//
.L9:
// problem72.c:20:     assert(fabs(func0(4, 8, 5) - 8.18) < 0.01);
	fmov	s2, 5.0e+0	//,
	fmov	s1, 8.0e+0	//,
	fmov	s0, 4.0e+0	//,
	bl	func0		//
	fcvt	d0, s0	// _10, _9
	adrp	x0, .LC11	// tmp180,
	ldr	d1, [x0, #:lo12:.LC11]	// tmp140,
	fsub	d0, d0, d1	// _11, _10, tmp140
	fabs	d0, d0	// _12, _11
	adrp	x0, .LC10	// tmp181,
	ldr	d1, [x0, #:lo12:.LC10]	// tmp141,
	fcmpe	d0, d1	// _12, tmp141
	bmi	.L10		//,
// problem72.c:20:     assert(fabs(func0(4, 8, 5) - 8.18) < 0.01);
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp142,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp142,
	mov	w2, 20	//,
	adrp	x0, .LC0	// tmp143,
	add	x1, x0, :lo12:.LC0	//, tmp143,
	adrp	x0, .LC3	// tmp144,
	add	x0, x0, :lo12:.LC3	//, tmp144,
	bl	__assert_fail		//
.L10:
// problem72.c:21:     assert(fabs(func0(2, 2, 2) - 1.73) < 0.01);
	fmov	s2, 2.0e+0	//,
	fmov	s1, 2.0e+0	//,
	fmov	s0, 2.0e+0	//,
	bl	func0		//
	fcvt	d0, s0	// _14, _13
	adrp	x0, .LC12	// tmp182,
	ldr	d1, [x0, #:lo12:.LC12]	// tmp145,
	fsub	d0, d0, d1	// _15, _14, tmp145
	fabs	d0, d0	// _16, _15
	adrp	x0, .LC10	// tmp183,
	ldr	d1, [x0, #:lo12:.LC10]	// tmp146,
	fcmpe	d0, d1	// _16, tmp146
	bmi	.L11		//,
// problem72.c:21:     assert(fabs(func0(2, 2, 2) - 1.73) < 0.01);
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp147,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp147,
	mov	w2, 21	//,
	adrp	x0, .LC0	// tmp148,
	add	x1, x0, :lo12:.LC0	//, tmp148,
	adrp	x0, .LC4	// tmp149,
	add	x0, x0, :lo12:.LC4	//, tmp149,
	bl	__assert_fail		//
.L11:
// problem72.c:22:     assert(fabs(func0(1, 2, 3) + 1) < 0.01);
	fmov	s2, 3.0e+0	//,
	fmov	s1, 2.0e+0	//,
	fmov	s0, 1.0e+0	//,
	bl	func0		//
	fmov	s1, s0	// _17,
	fmov	s0, 1.0e+0	// tmp150,
	fadd	s0, s1, s0	// _18, _17, tmp150
	fabs	s0, s0	// _19, _18
	fcvt	d0, s0	// _20, _19
	adrp	x0, .LC10	// tmp184,
	ldr	d1, [x0, #:lo12:.LC10]	// tmp151,
	fcmpe	d0, d1	// _20, tmp151
	bmi	.L12		//,
// problem72.c:22:     assert(fabs(func0(1, 2, 3) + 1) < 0.01);
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp152,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp152,
	mov	w2, 22	//,
	adrp	x0, .LC0	// tmp153,
	add	x1, x0, :lo12:.LC0	//, tmp153,
	adrp	x0, .LC5	// tmp154,
	add	x0, x0, :lo12:.LC5	//, tmp154,
	bl	__assert_fail		//
.L12:
// problem72.c:23:     assert(fabs(func0(10, 5, 7) - 16.25) < 0.01);
	fmov	s2, 7.0e+0	//,
	fmov	s1, 5.0e+0	//,
	fmov	s0, 1.0e+1	//,
	bl	func0		//
	fcvt	d0, s0	// _22, _21
	mov	x0, 70368744177664	// tmp176,
	movk	x0, 0x4030, lsl 48	// tmp176,,
	fmov	d1, x0	// tmp155, tmp176
	fsub	d0, d0, d1	// _23, _22, tmp155
	fabs	d0, d0	// _24, _23
	adrp	x0, .LC10	// tmp185,
	ldr	d1, [x0, #:lo12:.LC10]	// tmp156,
	fcmpe	d0, d1	// _24, tmp156
	bmi	.L13		//,
// problem72.c:23:     assert(fabs(func0(10, 5, 7) - 16.25) < 0.01);
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp157,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp157,
	mov	w2, 23	//,
	adrp	x0, .LC0	// tmp158,
	add	x1, x0, :lo12:.LC0	//, tmp158,
	adrp	x0, .LC6	// tmp159,
	add	x0, x0, :lo12:.LC6	//, tmp159,
	bl	__assert_fail		//
.L13:
// problem72.c:24:     assert(fabs(func0(2, 6, 3) + 1) < 0.01);
	fmov	s2, 3.0e+0	//,
	fmov	s1, 6.0e+0	//,
	fmov	s0, 2.0e+0	//,
	bl	func0		//
	fmov	s1, s0	// _25,
	fmov	s0, 1.0e+0	// tmp160,
	fadd	s0, s1, s0	// _26, _25, tmp160
	fabs	s0, s0	// _27, _26
	fcvt	d0, s0	// _28, _27
	adrp	x0, .LC10	// tmp186,
	ldr	d1, [x0, #:lo12:.LC10]	// tmp161,
	fcmpe	d0, d1	// _28, tmp161
	bmi	.L14		//,
// problem72.c:24:     assert(fabs(func0(2, 6, 3) + 1) < 0.01);
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp162,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp162,
	mov	w2, 24	//,
	adrp	x0, .LC0	// tmp163,
	add	x1, x0, :lo12:.LC0	//, tmp163,
	adrp	x0, .LC7	// tmp164,
	add	x0, x0, :lo12:.LC7	//, tmp164,
	bl	__assert_fail		//
.L14:
// problem72.c:25:     assert(fabs(func0(1, 1, 1) - 0.43) < 0.01);
	fmov	s2, 1.0e+0	//,
	fmov	s1, 1.0e+0	//,
	fmov	s0, 1.0e+0	//,
	bl	func0		//
	fcvt	d0, s0	// _30, _29
	adrp	x0, .LC13	// tmp187,
	ldr	d1, [x0, #:lo12:.LC13]	// tmp165,
	fsub	d0, d0, d1	// _31, _30, tmp165
	fabs	d0, d0	// _32, _31
	adrp	x0, .LC10	// tmp188,
	ldr	d1, [x0, #:lo12:.LC10]	// tmp166,
	fcmpe	d0, d1	// _32, tmp166
	bmi	.L15		//,
// problem72.c:25:     assert(fabs(func0(1, 1, 1) - 0.43) < 0.01);
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp167,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp167,
	mov	w2, 25	//,
	adrp	x0, .LC0	// tmp168,
	add	x1, x0, :lo12:.LC0	//, tmp168,
	adrp	x0, .LC8	// tmp169,
	add	x0, x0, :lo12:.LC8	//, tmp169,
	bl	__assert_fail		//
.L15:
// problem72.c:26:     assert(fabs(func0(2, 2, 10) + 1) < 0.01);
	fmov	s2, 1.0e+1	//,
	fmov	s1, 2.0e+0	//,
	fmov	s0, 2.0e+0	//,
	bl	func0		//
	fmov	s1, s0	// _33,
	fmov	s0, 1.0e+0	// tmp170,
	fadd	s0, s1, s0	// _34, _33, tmp170
	fabs	s0, s0	// _35, _34
	fcvt	d0, s0	// _36, _35
	adrp	x0, .LC10	// tmp189,
	ldr	d1, [x0, #:lo12:.LC10]	// tmp171,
	fcmpe	d0, d1	// _36, tmp171
	bmi	.L16		//,
// problem72.c:26:     assert(fabs(func0(2, 2, 10) + 1) < 0.01);
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp172,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp172,
	mov	w2, 26	//,
	adrp	x0, .LC0	// tmp173,
	add	x1, x0, :lo12:.LC0	//, tmp173,
	adrp	x0, .LC9	// tmp174,
	add	x0, x0, :lo12:.LC9	//, tmp174,
	bl	__assert_fail		//
.L16:
// problem72.c:28:     return 0;
	mov	w0, 0	// _56,
// problem72.c:29: }
	ldp	x29, x30, [sp], 16	//,,,
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE1:
	.size	main, .-main
	.section	.rodata
	.align	3
	.type	__PRETTY_FUNCTION__.0, %object
	.size	__PRETTY_FUNCTION__.0, 5
__PRETTY_FUNCTION__.0:
	.string	"main"
	.align	3
.LC10:
	.word	1202590843
	.word	1065646817
	.align	3
.LC11:
	.word	-171798692
	.word	1075862568
	.align	3
.LC12:
	.word	2061584302
	.word	1073458708
	.align	3
.LC13:
	.word	-1202590843
	.word	1071351070
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
