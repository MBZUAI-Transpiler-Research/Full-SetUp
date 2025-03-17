	.arch armv8-a
	.file	"problem158.c"
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
	sub	sp, sp, #16	//,,
	.cfi_def_cfa_offset 16
	str	s0, [sp, 12]	// a, a
	str	s1, [sp, 8]	// b, b
	str	s2, [sp, 4]	// c, c
// problem158.c:5:     if (fabs(a*a + b*b - c*c) < 1e-4 || fabs(a*a + c*c - b*b) < 1e-4 || fabs(b*b + c*c - a*a) < 1e-4) return 1;
	ldr	s0, [sp, 12]	// tmp115, a
	fmul	s1, s0, s0	// _1, tmp115, tmp115
// problem158.c:5:     if (fabs(a*a + b*b - c*c) < 1e-4 || fabs(a*a + c*c - b*b) < 1e-4 || fabs(b*b + c*c - a*a) < 1e-4) return 1;
	ldr	s0, [sp, 8]	// tmp116, b
	fmul	s0, s0, s0	// _2, tmp116, tmp116
// problem158.c:5:     if (fabs(a*a + b*b - c*c) < 1e-4 || fabs(a*a + c*c - b*b) < 1e-4 || fabs(b*b + c*c - a*a) < 1e-4) return 1;
	fadd	s1, s1, s0	// _3, _1, _2
// problem158.c:5:     if (fabs(a*a + b*b - c*c) < 1e-4 || fabs(a*a + c*c - b*b) < 1e-4 || fabs(b*b + c*c - a*a) < 1e-4) return 1;
	ldr	s0, [sp, 4]	// tmp117, c
	fmul	s0, s0, s0	// _4, tmp117, tmp117
// problem158.c:5:     if (fabs(a*a + b*b - c*c) < 1e-4 || fabs(a*a + c*c - b*b) < 1e-4 || fabs(b*b + c*c - a*a) < 1e-4) return 1;
	fsub	s0, s1, s0	// _5, _3, _4
// problem158.c:5:     if (fabs(a*a + b*b - c*c) < 1e-4 || fabs(a*a + c*c - b*b) < 1e-4 || fabs(b*b + c*c - a*a) < 1e-4) return 1;
	fabs	s0, s0	// _6, _5
	fcvt	d0, s0	// _7, _6
// problem158.c:5:     if (fabs(a*a + b*b - c*c) < 1e-4 || fabs(a*a + c*c - b*b) < 1e-4 || fabs(b*b + c*c - a*a) < 1e-4) return 1;
	adrp	x0, .LC0	// tmp129,
	ldr	d1, [x0, #:lo12:.LC0]	// tmp118,
	fcmpe	d0, d1	// _7, tmp118
	bmi	.L2		//,
// problem158.c:5:     if (fabs(a*a + b*b - c*c) < 1e-4 || fabs(a*a + c*c - b*b) < 1e-4 || fabs(b*b + c*c - a*a) < 1e-4) return 1;
	ldr	s0, [sp, 12]	// tmp119, a
	fmul	s1, s0, s0	// _8, tmp119, tmp119
// problem158.c:5:     if (fabs(a*a + b*b - c*c) < 1e-4 || fabs(a*a + c*c - b*b) < 1e-4 || fabs(b*b + c*c - a*a) < 1e-4) return 1;
	ldr	s0, [sp, 4]	// tmp120, c
	fmul	s0, s0, s0	// _9, tmp120, tmp120
// problem158.c:5:     if (fabs(a*a + b*b - c*c) < 1e-4 || fabs(a*a + c*c - b*b) < 1e-4 || fabs(b*b + c*c - a*a) < 1e-4) return 1;
	fadd	s1, s1, s0	// _10, _8, _9
// problem158.c:5:     if (fabs(a*a + b*b - c*c) < 1e-4 || fabs(a*a + c*c - b*b) < 1e-4 || fabs(b*b + c*c - a*a) < 1e-4) return 1;
	ldr	s0, [sp, 8]	// tmp121, b
	fmul	s0, s0, s0	// _11, tmp121, tmp121
// problem158.c:5:     if (fabs(a*a + b*b - c*c) < 1e-4 || fabs(a*a + c*c - b*b) < 1e-4 || fabs(b*b + c*c - a*a) < 1e-4) return 1;
	fsub	s0, s1, s0	// _12, _10, _11
// problem158.c:5:     if (fabs(a*a + b*b - c*c) < 1e-4 || fabs(a*a + c*c - b*b) < 1e-4 || fabs(b*b + c*c - a*a) < 1e-4) return 1;
	fabs	s0, s0	// _13, _12
	fcvt	d0, s0	// _14, _13
// problem158.c:5:     if (fabs(a*a + b*b - c*c) < 1e-4 || fabs(a*a + c*c - b*b) < 1e-4 || fabs(b*b + c*c - a*a) < 1e-4) return 1;
	adrp	x0, .LC0	// tmp130,
	ldr	d1, [x0, #:lo12:.LC0]	// tmp122,
	fcmpe	d0, d1	// _14, tmp122
	bmi	.L2		//,
// problem158.c:5:     if (fabs(a*a + b*b - c*c) < 1e-4 || fabs(a*a + c*c - b*b) < 1e-4 || fabs(b*b + c*c - a*a) < 1e-4) return 1;
	ldr	s0, [sp, 8]	// tmp123, b
	fmul	s1, s0, s0	// _15, tmp123, tmp123
// problem158.c:5:     if (fabs(a*a + b*b - c*c) < 1e-4 || fabs(a*a + c*c - b*b) < 1e-4 || fabs(b*b + c*c - a*a) < 1e-4) return 1;
	ldr	s0, [sp, 4]	// tmp124, c
	fmul	s0, s0, s0	// _16, tmp124, tmp124
// problem158.c:5:     if (fabs(a*a + b*b - c*c) < 1e-4 || fabs(a*a + c*c - b*b) < 1e-4 || fabs(b*b + c*c - a*a) < 1e-4) return 1;
	fadd	s1, s1, s0	// _17, _15, _16
// problem158.c:5:     if (fabs(a*a + b*b - c*c) < 1e-4 || fabs(a*a + c*c - b*b) < 1e-4 || fabs(b*b + c*c - a*a) < 1e-4) return 1;
	ldr	s0, [sp, 12]	// tmp125, a
	fmul	s0, s0, s0	// _18, tmp125, tmp125
// problem158.c:5:     if (fabs(a*a + b*b - c*c) < 1e-4 || fabs(a*a + c*c - b*b) < 1e-4 || fabs(b*b + c*c - a*a) < 1e-4) return 1;
	fsub	s0, s1, s0	// _19, _17, _18
// problem158.c:5:     if (fabs(a*a + b*b - c*c) < 1e-4 || fabs(a*a + c*c - b*b) < 1e-4 || fabs(b*b + c*c - a*a) < 1e-4) return 1;
	fabs	s0, s0	// _20, _19
	fcvt	d0, s0	// _21, _20
// problem158.c:5:     if (fabs(a*a + b*b - c*c) < 1e-4 || fabs(a*a + c*c - b*b) < 1e-4 || fabs(b*b + c*c - a*a) < 1e-4) return 1;
	adrp	x0, .LC0	// tmp131,
	ldr	d1, [x0, #:lo12:.LC0]	// tmp126,
	fcmpe	d0, d1	// _21, tmp126
	bmi	.L2		//,
	b	.L6		//
.L2:
// problem158.c:5:     if (fabs(a*a + b*b - c*c) < 1e-4 || fabs(a*a + c*c - b*b) < 1e-4 || fabs(b*b + c*c - a*a) < 1e-4) return 1;
	mov	w0, 1	// _22,
// problem158.c:5:     if (fabs(a*a + b*b - c*c) < 1e-4 || fabs(a*a + c*c - b*b) < 1e-4 || fabs(b*b + c*c - a*a) < 1e-4) return 1;
	b	.L5		//
.L6:
// problem158.c:6:     return 0;
	mov	w0, 0	// _22,
.L5:
// problem158.c:7: }
	add	sp, sp, 16	//,,
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE0:
	.size	func0, .-func0
	.section	.rodata
	.align	3
.LC1:
	.string	"problem158.c"
	.align	3
.LC2:
	.string	"func0(3, 4, 5) == 1"
	.align	3
.LC3:
	.string	"func0(1, 2, 3) == 0"
	.align	3
.LC4:
	.string	"func0(10, 6, 8) == 1"
	.align	3
.LC5:
	.string	"func0(2, 2, 2) == 0"
	.align	3
.LC6:
	.string	"func0(7, 24, 25) == 1"
	.align	3
.LC7:
	.string	"func0(10, 5, 7) == 0"
	.align	3
.LC8:
	.string	"func0(5, 12, 13) == 1"
	.align	3
.LC9:
	.string	"func0(15, 8, 17) == 1"
	.align	3
.LC10:
	.string	"func0(48, 55, 73) == 1"
	.align	3
.LC11:
	.string	"func0(1, 1, 1) == 0"
	.align	3
.LC12:
	.string	"func0(2, 2, 10) == 0"
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
// problem158.c:14:     assert(func0(3, 4, 5) == 1);
	fmov	s2, 5.0e+0	//,
	fmov	s1, 4.0e+0	//,
	fmov	s0, 3.0e+0	//,
	bl	func0		//
// problem158.c:14:     assert(func0(3, 4, 5) == 1);
	cmp	w0, 1	// _1,
	beq	.L8		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp105,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp105,
	mov	w2, 14	//,
	adrp	x0, .LC1	// tmp106,
	add	x1, x0, :lo12:.LC1	//, tmp106,
	adrp	x0, .LC2	// tmp107,
	add	x0, x0, :lo12:.LC2	//, tmp107,
	bl	__assert_fail		//
.L8:
// problem158.c:15:     assert(func0(1, 2, 3) == 0);
	fmov	s2, 3.0e+0	//,
	fmov	s1, 2.0e+0	//,
	fmov	s0, 1.0e+0	//,
	bl	func0		//
// problem158.c:15:     assert(func0(1, 2, 3) == 0);
	cmp	w0, 0	// _2,
	beq	.L9		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp108,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp108,
	mov	w2, 15	//,
	adrp	x0, .LC1	// tmp109,
	add	x1, x0, :lo12:.LC1	//, tmp109,
	adrp	x0, .LC3	// tmp110,
	add	x0, x0, :lo12:.LC3	//, tmp110,
	bl	__assert_fail		//
.L9:
// problem158.c:16:     assert(func0(10, 6, 8) == 1);
	fmov	s2, 8.0e+0	//,
	fmov	s1, 6.0e+0	//,
	fmov	s0, 1.0e+1	//,
	bl	func0		//
// problem158.c:16:     assert(func0(10, 6, 8) == 1);
	cmp	w0, 1	// _3,
	beq	.L10		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp111,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp111,
	mov	w2, 16	//,
	adrp	x0, .LC1	// tmp112,
	add	x1, x0, :lo12:.LC1	//, tmp112,
	adrp	x0, .LC4	// tmp113,
	add	x0, x0, :lo12:.LC4	//, tmp113,
	bl	__assert_fail		//
.L10:
// problem158.c:17:     assert(func0(2, 2, 2) == 0);
	fmov	s2, 2.0e+0	//,
	fmov	s1, 2.0e+0	//,
	fmov	s0, 2.0e+0	//,
	bl	func0		//
// problem158.c:17:     assert(func0(2, 2, 2) == 0);
	cmp	w0, 0	// _4,
	beq	.L11		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp114,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp114,
	mov	w2, 17	//,
	adrp	x0, .LC1	// tmp115,
	add	x1, x0, :lo12:.LC1	//, tmp115,
	adrp	x0, .LC5	// tmp116,
	add	x0, x0, :lo12:.LC5	//, tmp116,
	bl	__assert_fail		//
.L11:
// problem158.c:18:     assert(func0(7, 24, 25) == 1);
	fmov	s2, 2.5e+1	//,
	fmov	s1, 2.4e+1	//,
	fmov	s0, 7.0e+0	//,
	bl	func0		//
// problem158.c:18:     assert(func0(7, 24, 25) == 1);
	cmp	w0, 1	// _5,
	beq	.L12		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp117,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp117,
	mov	w2, 18	//,
	adrp	x0, .LC1	// tmp118,
	add	x1, x0, :lo12:.LC1	//, tmp118,
	adrp	x0, .LC6	// tmp119,
	add	x0, x0, :lo12:.LC6	//, tmp119,
	bl	__assert_fail		//
.L12:
// problem158.c:19:     assert(func0(10, 5, 7) == 0);
	fmov	s2, 7.0e+0	//,
	fmov	s1, 5.0e+0	//,
	fmov	s0, 1.0e+1	//,
	bl	func0		//
// problem158.c:19:     assert(func0(10, 5, 7) == 0);
	cmp	w0, 0	// _6,
	beq	.L13		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp120,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp120,
	mov	w2, 19	//,
	adrp	x0, .LC1	// tmp121,
	add	x1, x0, :lo12:.LC1	//, tmp121,
	adrp	x0, .LC7	// tmp122,
	add	x0, x0, :lo12:.LC7	//, tmp122,
	bl	__assert_fail		//
.L13:
// problem158.c:20:     assert(func0(5, 12, 13) == 1);
	fmov	s2, 1.3e+1	//,
	fmov	s1, 1.2e+1	//,
	fmov	s0, 5.0e+0	//,
	bl	func0		//
// problem158.c:20:     assert(func0(5, 12, 13) == 1);
	cmp	w0, 1	// _7,
	beq	.L14		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp123,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp123,
	mov	w2, 20	//,
	adrp	x0, .LC1	// tmp124,
	add	x1, x0, :lo12:.LC1	//, tmp124,
	adrp	x0, .LC8	// tmp125,
	add	x0, x0, :lo12:.LC8	//, tmp125,
	bl	__assert_fail		//
.L14:
// problem158.c:21:     assert(func0(15, 8, 17) == 1);
	fmov	s2, 1.7e+1	//,
	fmov	s1, 8.0e+0	//,
	fmov	s0, 1.5e+1	//,
	bl	func0		//
// problem158.c:21:     assert(func0(15, 8, 17) == 1);
	cmp	w0, 1	// _8,
	beq	.L15		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp126,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp126,
	mov	w2, 21	//,
	adrp	x0, .LC1	// tmp127,
	add	x1, x0, :lo12:.LC1	//, tmp127,
	adrp	x0, .LC9	// tmp128,
	add	x0, x0, :lo12:.LC9	//, tmp128,
	bl	__assert_fail		//
.L15:
// problem158.c:22:     assert(func0(48, 55, 73) == 1);
	mov	w0, 1116864512	// tmp139,
	fmov	s2, w0	//, tmp139
	mov	w0, 1113325568	// tmp140,
	fmov	s1, w0	//, tmp140
	mov	w0, 1111490560	// tmp141,
	fmov	s0, w0	//, tmp141
	bl	func0		//
// problem158.c:22:     assert(func0(48, 55, 73) == 1);
	cmp	w0, 1	// _9,
	beq	.L16		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp129,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp129,
	mov	w2, 22	//,
	adrp	x0, .LC1	// tmp130,
	add	x1, x0, :lo12:.LC1	//, tmp130,
	adrp	x0, .LC10	// tmp131,
	add	x0, x0, :lo12:.LC10	//, tmp131,
	bl	__assert_fail		//
.L16:
// problem158.c:23:     assert(func0(1, 1, 1) == 0);
	fmov	s2, 1.0e+0	//,
	fmov	s1, 1.0e+0	//,
	fmov	s0, 1.0e+0	//,
	bl	func0		//
// problem158.c:23:     assert(func0(1, 1, 1) == 0);
	cmp	w0, 0	// _10,
	beq	.L17		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp132,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp132,
	mov	w2, 23	//,
	adrp	x0, .LC1	// tmp133,
	add	x1, x0, :lo12:.LC1	//, tmp133,
	adrp	x0, .LC11	// tmp134,
	add	x0, x0, :lo12:.LC11	//, tmp134,
	bl	__assert_fail		//
.L17:
// problem158.c:24:     assert(func0(2, 2, 10) == 0);
	fmov	s2, 1.0e+1	//,
	fmov	s1, 2.0e+0	//,
	fmov	s0, 2.0e+0	//,
	bl	func0		//
// problem158.c:24:     assert(func0(2, 2, 10) == 0);
	cmp	w0, 0	// _11,
	beq	.L18		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp135,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp135,
	mov	w2, 24	//,
	adrp	x0, .LC1	// tmp136,
	add	x1, x0, :lo12:.LC1	//, tmp136,
	adrp	x0, .LC12	// tmp137,
	add	x0, x0, :lo12:.LC12	//, tmp137,
	bl	__assert_fail		//
.L18:
// problem158.c:26:     return 0;
	mov	w0, 0	// _35,
// problem158.c:27: }
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
.LC0:
	.word	-350469331
	.word	1058682594
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
