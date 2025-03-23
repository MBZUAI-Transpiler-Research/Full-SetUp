	.arch armv8-a
	.file	"problem93.c"
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
	stp	x29, x30, [sp, -32]!	//,,,
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	mov	x29, sp	//,
	str	s0, [sp, 28]	// a, a
	str	s1, [sp, 24]	// b, b
	str	s2, [sp, 20]	// c, c
// problem93.c:5:     if (roundf(a) != a) return 0;
	ldr	s0, [sp, 28]	//, a
	bl	roundf		//
	fmov	s1, s0	// _1,
// problem93.c:5:     if (roundf(a) != a) return 0;
	ldr	s0, [sp, 28]	// tmp100, a
	fcmp	s0, s1	// tmp100, _1
	beq	.L2		//,
// problem93.c:5:     if (roundf(a) != a) return 0;
	mov	w0, 0	// _7,
// problem93.c:5:     if (roundf(a) != a) return 0;
	b	.L3		//
.L2:
// problem93.c:6:     if (roundf(b) != b) return 0;
	ldr	s0, [sp, 24]	//, b
	bl	roundf		//
	fmov	s1, s0	// _2,
// problem93.c:6:     if (roundf(b) != b) return 0;
	ldr	s0, [sp, 24]	// tmp101, b
	fcmp	s0, s1	// tmp101, _2
	beq	.L4		//,
// problem93.c:6:     if (roundf(b) != b) return 0;
	mov	w0, 0	// _7,
// problem93.c:6:     if (roundf(b) != b) return 0;
	b	.L3		//
.L4:
// problem93.c:7:     if (roundf(c) != c) return 0;
	ldr	s0, [sp, 20]	//, c
	bl	roundf		//
	fmov	s1, s0	// _3,
// problem93.c:7:     if (roundf(c) != c) return 0;
	ldr	s0, [sp, 20]	// tmp102, c
	fcmp	s0, s1	// tmp102, _3
	beq	.L5		//,
// problem93.c:7:     if (roundf(c) != c) return 0;
	mov	w0, 0	// _7,
// problem93.c:7:     if (roundf(c) != c) return 0;
	b	.L3		//
.L5:
// problem93.c:8:     if ((a + b == c) || (a + c == b) || (b + c == a)) return 1;
	ldr	s1, [sp, 28]	// tmp103, a
	ldr	s0, [sp, 24]	// tmp104, b
	fadd	s0, s1, s0	// _4, tmp103, tmp104
// problem93.c:8:     if ((a + b == c) || (a + c == b) || (b + c == a)) return 1;
	ldr	s1, [sp, 20]	// tmp105, c
	fcmp	s1, s0	// tmp105, _4
	beq	.L6		//,
// problem93.c:8:     if ((a + b == c) || (a + c == b) || (b + c == a)) return 1;
	ldr	s1, [sp, 28]	// tmp106, a
	ldr	s0, [sp, 20]	// tmp107, c
	fadd	s0, s1, s0	// _5, tmp106, tmp107
// problem93.c:8:     if ((a + b == c) || (a + c == b) || (b + c == a)) return 1;
	ldr	s1, [sp, 24]	// tmp108, b
	fcmp	s1, s0	// tmp108, _5
	beq	.L6		//,
// problem93.c:8:     if ((a + b == c) || (a + c == b) || (b + c == a)) return 1;
	ldr	s1, [sp, 24]	// tmp109, b
	ldr	s0, [sp, 20]	// tmp110, c
	fadd	s0, s1, s0	// _6, tmp109, tmp110
// problem93.c:8:     if ((a + b == c) || (a + c == b) || (b + c == a)) return 1;
	ldr	s1, [sp, 28]	// tmp111, a
	fcmp	s1, s0	// tmp111, _6
	bne	.L7		//,
.L6:
// problem93.c:8:     if ((a + b == c) || (a + c == b) || (b + c == a)) return 1;
	mov	w0, 1	// _7,
// problem93.c:8:     if ((a + b == c) || (a + c == b) || (b + c == a)) return 1;
	b	.L3		//
.L7:
// problem93.c:9:     return 0;
	mov	w0, 0	// _7,
.L3:
// problem93.c:10: }
	ldp	x29, x30, [sp], 32	//,,,
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
	.string	"problem93.c"
	.align	3
.LC1:
	.string	"func0(2, 3, 1) == 1"
	.align	3
.LC2:
	.string	"func0(2.5, 2, 3) == 0"
	.align	3
.LC3:
	.string	"func0(1.5, 5, 3.5) == 0"
	.align	3
.LC4:
	.string	"func0(2, 6, 2) == 0"
	.align	3
.LC5:
	.string	"func0(4, 2, 2) == 1"
	.align	3
.LC6:
	.string	"func0(2.2, 2.2, 2.2) == 0"
	.align	3
.LC7:
	.string	"func0(-4, 6, 2) == 1"
	.align	3
.LC8:
	.string	"func0(2, 1, 1) == 1"
	.align	3
.LC9:
	.string	"func0(3, 4, 7) == 1"
	.align	3
.LC10:
	.string	"func0(3.01, 4, 7) == 0"
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
// problem93.c:17:     assert(func0(2, 3, 1) == 1);
	fmov	s2, 1.0e+0	//,
	fmov	s1, 3.0e+0	//,
	fmov	s0, 2.0e+0	//,
	bl	func0		//
// problem93.c:17:     assert(func0(2, 3, 1) == 1);
	cmp	w0, 1	// _1,
	beq	.L9		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp104,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp104,
	mov	w2, 17	//,
	adrp	x0, .LC0	// tmp105,
	add	x1, x0, :lo12:.LC0	//, tmp105,
	adrp	x0, .LC1	// tmp106,
	add	x0, x0, :lo12:.LC1	//, tmp106,
	bl	__assert_fail		//
.L9:
// problem93.c:18:     assert(func0(2.5, 2, 3) == 0);
	fmov	s2, 3.0e+0	//,
	fmov	s1, 2.0e+0	//,
	fmov	s0, 2.5e+0	//,
	bl	func0		//
// problem93.c:18:     assert(func0(2.5, 2, 3) == 0);
	cmp	w0, 0	// _2,
	beq	.L10		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp107,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp107,
	mov	w2, 18	//,
	adrp	x0, .LC0	// tmp108,
	add	x1, x0, :lo12:.LC0	//, tmp108,
	adrp	x0, .LC2	// tmp109,
	add	x0, x0, :lo12:.LC2	//, tmp109,
	bl	__assert_fail		//
.L10:
// problem93.c:19:     assert(func0(1.5, 5, 3.5) == 0);
	fmov	s2, 3.5e+0	//,
	fmov	s1, 5.0e+0	//,
	fmov	s0, 1.5e+0	//,
	bl	func0		//
// problem93.c:19:     assert(func0(1.5, 5, 3.5) == 0);
	cmp	w0, 0	// _3,
	beq	.L11		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp110,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp110,
	mov	w2, 19	//,
	adrp	x0, .LC0	// tmp111,
	add	x1, x0, :lo12:.LC0	//, tmp111,
	adrp	x0, .LC3	// tmp112,
	add	x0, x0, :lo12:.LC3	//, tmp112,
	bl	__assert_fail		//
.L11:
// problem93.c:20:     assert(func0(2, 6, 2) == 0);
	fmov	s2, 2.0e+0	//,
	fmov	s1, 6.0e+0	//,
	fmov	s0, 2.0e+0	//,
	bl	func0		//
// problem93.c:20:     assert(func0(2, 6, 2) == 0);
	cmp	w0, 0	// _4,
	beq	.L12		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp113,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp113,
	mov	w2, 20	//,
	adrp	x0, .LC0	// tmp114,
	add	x1, x0, :lo12:.LC0	//, tmp114,
	adrp	x0, .LC4	// tmp115,
	add	x0, x0, :lo12:.LC4	//, tmp115,
	bl	__assert_fail		//
.L12:
// problem93.c:21:     assert(func0(4, 2, 2) == 1);
	fmov	s2, 2.0e+0	//,
	fmov	s1, 2.0e+0	//,
	fmov	s0, 4.0e+0	//,
	bl	func0		//
// problem93.c:21:     assert(func0(4, 2, 2) == 1);
	cmp	w0, 1	// _5,
	beq	.L13		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp116,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp116,
	mov	w2, 21	//,
	adrp	x0, .LC0	// tmp117,
	add	x1, x0, :lo12:.LC0	//, tmp117,
	adrp	x0, .LC5	// tmp118,
	add	x0, x0, :lo12:.LC5	//, tmp118,
	bl	__assert_fail		//
.L13:
// problem93.c:22:     assert(func0(2.2, 2.2, 2.2) == 0);
	mov	w0, 52429	// tmp136,
	movk	w0, 0x400c, lsl 16	// tmp136,,
	fmov	s2, w0	//, tmp136
	mov	w0, 52429	// tmp137,
	movk	w0, 0x400c, lsl 16	// tmp137,,
	fmov	s1, w0	//, tmp137
	mov	w0, 52429	// tmp138,
	movk	w0, 0x400c, lsl 16	// tmp138,,
	fmov	s0, w0	//, tmp138
	bl	func0		//
// problem93.c:22:     assert(func0(2.2, 2.2, 2.2) == 0);
	cmp	w0, 0	// _6,
	beq	.L14		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp119,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp119,
	mov	w2, 22	//,
	adrp	x0, .LC0	// tmp120,
	add	x1, x0, :lo12:.LC0	//, tmp120,
	adrp	x0, .LC6	// tmp121,
	add	x0, x0, :lo12:.LC6	//, tmp121,
	bl	__assert_fail		//
.L14:
// problem93.c:23:     assert(func0(-4, 6, 2) == 1);
	fmov	s2, 2.0e+0	//,
	fmov	s1, 6.0e+0	//,
	fmov	s0, -4.0e+0	//,
	bl	func0		//
// problem93.c:23:     assert(func0(-4, 6, 2) == 1);
	cmp	w0, 1	// _7,
	beq	.L15		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp122,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp122,
	mov	w2, 23	//,
	adrp	x0, .LC0	// tmp123,
	add	x1, x0, :lo12:.LC0	//, tmp123,
	adrp	x0, .LC7	// tmp124,
	add	x0, x0, :lo12:.LC7	//, tmp124,
	bl	__assert_fail		//
.L15:
// problem93.c:24:     assert(func0(2, 1, 1) == 1);
	fmov	s2, 1.0e+0	//,
	fmov	s1, 1.0e+0	//,
	fmov	s0, 2.0e+0	//,
	bl	func0		//
// problem93.c:24:     assert(func0(2, 1, 1) == 1);
	cmp	w0, 1	// _8,
	beq	.L16		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp125,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp125,
	mov	w2, 24	//,
	adrp	x0, .LC0	// tmp126,
	add	x1, x0, :lo12:.LC0	//, tmp126,
	adrp	x0, .LC8	// tmp127,
	add	x0, x0, :lo12:.LC8	//, tmp127,
	bl	__assert_fail		//
.L16:
// problem93.c:25:     assert(func0(3, 4, 7) == 1);
	fmov	s2, 7.0e+0	//,
	fmov	s1, 4.0e+0	//,
	fmov	s0, 3.0e+0	//,
	bl	func0		//
// problem93.c:25:     assert(func0(3, 4, 7) == 1);
	cmp	w0, 1	// _9,
	beq	.L17		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp128,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp128,
	mov	w2, 25	//,
	adrp	x0, .LC0	// tmp129,
	add	x1, x0, :lo12:.LC0	//, tmp129,
	adrp	x0, .LC9	// tmp130,
	add	x0, x0, :lo12:.LC9	//, tmp130,
	bl	__assert_fail		//
.L17:
// problem93.c:26:     assert(func0(3.01, 4, 7) == 0);
	fmov	s2, 7.0e+0	//,
	fmov	s1, 4.0e+0	//,
	mov	w0, 41943	// tmp135,
	movk	w0, 0x4040, lsl 16	// tmp135,,
	fmov	s0, w0	//, tmp135
	bl	func0		//
// problem93.c:26:     assert(func0(3.01, 4, 7) == 0);
	cmp	w0, 0	// _10,
	beq	.L18		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp131,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp131,
	mov	w2, 26	//,
	adrp	x0, .LC0	// tmp132,
	add	x1, x0, :lo12:.LC0	//, tmp132,
	adrp	x0, .LC10	// tmp133,
	add	x0, x0, :lo12:.LC10	//, tmp133,
	bl	__assert_fail		//
.L18:
// problem93.c:28:     return 0;
	mov	w0, 0	// _32,
// problem93.c:29: }
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
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
