	.arch armv8-a
	.file	"problem46.c"
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
	str	s1, [sp, 8]	// h, h
// problem46.c:5:     return (a * h) * 0.5;
	ldr	s1, [sp, 12]	// tmp95, a
	ldr	s0, [sp, 8]	// tmp96, h
	fmul	s1, s1, s0	// _1, tmp95, tmp96
// problem46.c:5:     return (a * h) * 0.5;
	fmov	s0, 5.0e-1	// tmp97,
	fmul	s0, s1, s0	// _4, _1, tmp97
// problem46.c:6: }
	add	sp, sp, 16	//,,
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE0:
	.size	func0, .-func0
	.section	.rodata
	.align	3
.LC0:
	.string	"problem46.c"
	.align	3
.LC1:
	.string	"fabs(func0(5, 3) - 7.5) < 1e-4"
	.align	3
.LC2:
	.string	"fabs(func0(2, 2) - 2.0) < 1e-4"
	.align	3
.LC3:
	.string	"fabs(func0(10, 8) - 40.0) < 1e-4"
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
// problem46.c:15:     assert(fabs(func0(5, 3) - 7.5) < 1e-4);
	fmov	s1, 3.0e+0	//,
	fmov	s0, 5.0e+0	//,
	bl	func0		//
// problem46.c:15:     assert(fabs(func0(5, 3) - 7.5) < 1e-4);
	fcvt	d1, s0	// _2, _1
	fmov	d0, 7.5e+0	// tmp106,
	fsub	d0, d1, d0	// _3, _2, tmp106
	fabs	d0, d0	// _4, _3
	adrp	x0, .LC4	// tmp124,
	ldr	d1, [x0, #:lo12:.LC4]	// tmp107,
	fcmpe	d0, d1	// _4, tmp107
	bmi	.L4		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp108,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp108,
	mov	w2, 15	//,
	adrp	x0, .LC0	// tmp109,
	add	x1, x0, :lo12:.LC0	//, tmp109,
	adrp	x0, .LC1	// tmp110,
	add	x0, x0, :lo12:.LC1	//, tmp110,
	bl	__assert_fail		//
.L4:
// problem46.c:16:     assert(fabs(func0(2, 2) - 2.0) < 1e-4);
	fmov	s1, 2.0e+0	//,
	fmov	s0, 2.0e+0	//,
	bl	func0		//
// problem46.c:16:     assert(fabs(func0(2, 2) - 2.0) < 1e-4);
	fcvt	d1, s0	// _6, _5
	fmov	d0, 2.0e+0	// tmp111,
	fsub	d0, d1, d0	// _7, _6, tmp111
	fabs	d0, d0	// _8, _7
	adrp	x0, .LC4	// tmp125,
	ldr	d1, [x0, #:lo12:.LC4]	// tmp112,
	fcmpe	d0, d1	// _8, tmp112
	bmi	.L5		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp113,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp113,
	mov	w2, 16	//,
	adrp	x0, .LC0	// tmp114,
	add	x1, x0, :lo12:.LC0	//, tmp114,
	adrp	x0, .LC2	// tmp115,
	add	x0, x0, :lo12:.LC2	//, tmp115,
	bl	__assert_fail		//
.L5:
// problem46.c:17:     assert(fabs(func0(10, 8) - 40.0) < 1e-4);
	fmov	s1, 8.0e+0	//,
	fmov	s0, 1.0e+1	//,
	bl	func0		//
// problem46.c:17:     assert(fabs(func0(10, 8) - 40.0) < 1e-4);
	fcvt	d0, s0	// _10, _9
	mov	x0, 4630826316843712512	// tmp122,
	fmov	d1, x0	// tmp116, tmp122
	fsub	d0, d0, d1	// _11, _10, tmp116
	fabs	d0, d0	// _12, _11
	adrp	x0, .LC4	// tmp126,
	ldr	d1, [x0, #:lo12:.LC4]	// tmp117,
	fcmpe	d0, d1	// _12, tmp117
	bmi	.L6		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp118,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp118,
	mov	w2, 17	//,
	adrp	x0, .LC0	// tmp119,
	add	x1, x0, :lo12:.LC0	//, tmp119,
	adrp	x0, .LC3	// tmp120,
	add	x0, x0, :lo12:.LC3	//, tmp120,
	bl	__assert_fail		//
.L6:
// problem46.c:19:     return 0;
	mov	w0, 0	// _20,
// problem46.c:20: }
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
.LC4:
	.word	-350469331
	.word	1058682594
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
