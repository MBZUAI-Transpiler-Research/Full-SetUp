	.arch armv8-a
	.file	"problem3.c"
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
	str	s0, [sp, 12]	// number, number
// problem3.c:5:     return number - (int)number;
	ldr	s0, [sp, 12]	// tmp96, number
	fcvtzs	s0, s0	// _1, tmp96
// problem3.c:5:     return number - (int)number;
	scvtf	s0, s0	// _2, _1
	ldr	s1, [sp, 12]	// tmp97, number
	fsub	s0, s1, s0	// _4, tmp97, _2
// problem3.c:6: }
	add	sp, sp, 16	//,,
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE0:
	.size	func0, .-func0
	.section	.rodata
	.align	3
.LC0:
	.string	"Testing problem 3"
	.align	3
.LC1:
	.string	"problem3.c"
	.align	3
.LC2:
	.string	"func0(3.5f) == 0.5f"
	.align	3
.LC3:
	.string	"fabs(func0(1.33f) - 0.33f) < 1e-4"
	.align	3
.LC4:
	.string	"fabs(func0(123.456f) - 0.456f) < 1e-4"
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
// problem3.c:15:     printf("Testing problem 3\n");
	adrp	x0, .LC0	// tmp103,
	add	x0, x0, :lo12:.LC0	//, tmp103,
	bl	puts		//
// problem3.c:16:     assert(func0(3.5f) == 0.5f);
	fmov	s0, 3.5e+0	//,
	bl	func0		//
	fmov	s1, s0	// _1,
// problem3.c:16:     assert(func0(3.5f) == 0.5f);
	fmov	s0, 5.0e-1	// tmp104,
	fcmp	s1, s0	// _1, tmp104
	beq	.L4		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp105,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp105,
	mov	w2, 16	//,
	adrp	x0, .LC1	// tmp106,
	add	x1, x0, :lo12:.LC1	//, tmp106,
	adrp	x0, .LC2	// tmp107,
	add	x0, x0, :lo12:.LC2	//, tmp107,
	bl	__assert_fail		//
.L4:
// problem3.c:17:     assert(fabs(func0(1.33f) - 0.33f) < 1e-4);
	mov	w0, 15729	// tmp121,
	movk	w0, 0x3faa, lsl 16	// tmp121,,
	fmov	s0, w0	//, tmp121
	bl	func0		//
// problem3.c:17:     assert(fabs(func0(1.33f) - 0.33f) < 1e-4);
	mov	w0, 62915	// tmp122,
	movk	w0, 0x3ea8, lsl 16	// tmp122,,
	fmov	s1, w0	// tmp108, tmp122
	fsub	s0, s0, s1	// _3, _2, tmp108
	fabs	s0, s0	// _4, _3
	fcvt	d0, s0	// _5, _4
	adrp	x0, .LC5	// tmp124,
	ldr	d1, [x0, #:lo12:.LC5]	// tmp109,
	fcmpe	d0, d1	// _5, tmp109
	bmi	.L5		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp110,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp110,
	mov	w2, 17	//,
	adrp	x0, .LC1	// tmp111,
	add	x1, x0, :lo12:.LC1	//, tmp111,
	adrp	x0, .LC3	// tmp112,
	add	x0, x0, :lo12:.LC3	//, tmp112,
	bl	__assert_fail		//
.L5:
// problem3.c:18:     assert(fabs(func0(123.456f) - 0.456f) < 1e-4);
	mov	w0, 59769	// tmp119,
	movk	w0, 0x42f6, lsl 16	// tmp119,,
	fmov	s0, w0	//, tmp119
	bl	func0		//
// problem3.c:18:     assert(fabs(func0(123.456f) - 0.456f) < 1e-4);
	mov	w0, 30933	// tmp120,
	movk	w0, 0x3ee9, lsl 16	// tmp120,,
	fmov	s1, w0	// tmp113, tmp120
	fsub	s0, s0, s1	// _7, _6, tmp113
	fabs	s0, s0	// _8, _7
	fcvt	d0, s0	// _9, _8
	adrp	x0, .LC5	// tmp125,
	ldr	d1, [x0, #:lo12:.LC5]	// tmp114,
	fcmpe	d0, d1	// _9, tmp114
	bmi	.L6		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp115,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp115,
	mov	w2, 18	//,
	adrp	x0, .LC1	// tmp116,
	add	x1, x0, :lo12:.LC1	//, tmp116,
	adrp	x0, .LC4	// tmp117,
	add	x0, x0, :lo12:.LC4	//, tmp117,
	bl	__assert_fail		//
.L6:
// problem3.c:20:     return 0;
	mov	w0, 0	// _18,
// problem3.c:21: }
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
.LC5:
	.word	-350469331
	.word	1058682594
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
