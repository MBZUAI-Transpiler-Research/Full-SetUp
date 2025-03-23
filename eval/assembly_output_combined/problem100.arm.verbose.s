	.arch armv8-a
	.file	"problem100.c"
// GNU C17 (Ubuntu 11.4.0-1ubuntu1~22.04) version 11.4.0 (aarch64-linux-gnu)
//	compiled by GNU C version 11.4.0, GMP version 6.2.1, MPFR version 4.1.0, MPC version 1.2.1, isl version isl-0.24-GMP

// GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
// options passed: -mlittle-endian -mabi=lp64 -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection
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
	str	x0, [sp, 24]	// value, value
// problem100.c:7:     w = atof(value);
	ldr	x0, [sp, 24]	//, value
	bl	atof		//
	str	d0, [sp, 40]	//, w
// problem100.c:8:     return (int)(w < 0 ? ceil(w - 0.5) : floor(w + 0.5));
	ldr	d0, [sp, 40]	// tmp98, w
	fcmpe	d0, #0.0	// tmp98
	bmi	.L6		//,
	b	.L7		//
.L6:
// problem100.c:8:     return (int)(w < 0 ? ceil(w - 0.5) : floor(w + 0.5));
	ldr	d1, [sp, 40]	// tmp99, w
	fmov	d0, 5.0e-1	// tmp100,
	fsub	d0, d1, d0	// _1, tmp99, tmp100
	bl	ceil		//
// problem100.c:8:     return (int)(w < 0 ? ceil(w - 0.5) : floor(w + 0.5));
	fcvtzs	w0, d0	// iftmp.0_5, _2
	b	.L5		//
.L7:
// problem100.c:8:     return (int)(w < 0 ? ceil(w - 0.5) : floor(w + 0.5));
	ldr	d1, [sp, 40]	// tmp101, w
	fmov	d0, 5.0e-1	// tmp102,
	fadd	d0, d1, d0	// _3, tmp101, tmp102
	bl	floor		//
// problem100.c:8:     return (int)(w < 0 ? ceil(w - 0.5) : floor(w + 0.5));
	fcvtzs	w0, d0	// iftmp.0_5, _4
.L5:
// problem100.c:9: }
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
.LC0:
	.string	"10"
	.align	3
.LC1:
	.string	"problem100.c"
	.align	3
.LC2:
	.string	"func0(\"10\") == 10"
	.align	3
.LC3:
	.string	"14.5"
	.align	3
.LC4:
	.string	"func0(\"14.5\") == 15"
	.align	3
.LC5:
	.string	"-15.5"
	.align	3
.LC6:
	.string	"func0(\"-15.5\") == -16"
	.align	3
.LC7:
	.string	"15.3"
	.align	3
.LC8:
	.string	"func0(\"15.3\") == 15"
	.align	3
.LC9:
	.string	"0"
	.align	3
.LC10:
	.string	"func0(\"0\") == 0"
	.text
	.align	2
	.global	main
	.type	main, %function
main:
.LFB7:
	.cfi_startproc
	stp	x29, x30, [sp, -16]!	//,,,
	.cfi_def_cfa_offset 16
	.cfi_offset 29, -16
	.cfi_offset 30, -8
	mov	x29, sp	//,
// problem100.c:16:     assert(func0("10") == 10);
	adrp	x0, .LC0	// tmp99,
	add	x0, x0, :lo12:.LC0	//, tmp99,
	bl	func0		//
	cmp	w0, 10	// _1,
	beq	.L9		//,
// problem100.c:16:     assert(func0("10") == 10);
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp100,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp100,
	mov	w2, 16	//,
	adrp	x0, .LC1	// tmp101,
	add	x1, x0, :lo12:.LC1	//, tmp101,
	adrp	x0, .LC2	// tmp102,
	add	x0, x0, :lo12:.LC2	//, tmp102,
	bl	__assert_fail		//
.L9:
// problem100.c:17:     assert(func0("14.5") == 15);
	adrp	x0, .LC3	// tmp103,
	add	x0, x0, :lo12:.LC3	//, tmp103,
	bl	func0		//
	cmp	w0, 15	// _2,
	beq	.L10		//,
// problem100.c:17:     assert(func0("14.5") == 15);
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp104,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp104,
	mov	w2, 17	//,
	adrp	x0, .LC1	// tmp105,
	add	x1, x0, :lo12:.LC1	//, tmp105,
	adrp	x0, .LC4	// tmp106,
	add	x0, x0, :lo12:.LC4	//, tmp106,
	bl	__assert_fail		//
.L10:
// problem100.c:18:     assert(func0("-15.5") == -16);
	adrp	x0, .LC5	// tmp107,
	add	x0, x0, :lo12:.LC5	//, tmp107,
	bl	func0		//
	cmn	w0, #16	// _3,
	beq	.L11		//,
// problem100.c:18:     assert(func0("-15.5") == -16);
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp108,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp108,
	mov	w2, 18	//,
	adrp	x0, .LC1	// tmp109,
	add	x1, x0, :lo12:.LC1	//, tmp109,
	adrp	x0, .LC6	// tmp110,
	add	x0, x0, :lo12:.LC6	//, tmp110,
	bl	__assert_fail		//
.L11:
// problem100.c:19:     assert(func0("15.3") == 15);
	adrp	x0, .LC7	// tmp111,
	add	x0, x0, :lo12:.LC7	//, tmp111,
	bl	func0		//
	cmp	w0, 15	// _4,
	beq	.L12		//,
// problem100.c:19:     assert(func0("15.3") == 15);
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp112,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp112,
	mov	w2, 19	//,
	adrp	x0, .LC1	// tmp113,
	add	x1, x0, :lo12:.LC1	//, tmp113,
	adrp	x0, .LC8	// tmp114,
	add	x0, x0, :lo12:.LC8	//, tmp114,
	bl	__assert_fail		//
.L12:
// problem100.c:20:     assert(func0("0") == 0);
	adrp	x0, .LC9	// tmp115,
	add	x0, x0, :lo12:.LC9	//, tmp115,
	bl	func0		//
	cmp	w0, 0	// _5,
	beq	.L13		//,
// problem100.c:20:     assert(func0("0") == 0);
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp116,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp116,
	mov	w2, 20	//,
	adrp	x0, .LC1	// tmp117,
	add	x1, x0, :lo12:.LC1	//, tmp117,
	adrp	x0, .LC10	// tmp118,
	add	x0, x0, :lo12:.LC10	//, tmp118,
	bl	__assert_fail		//
.L13:
// problem100.c:22:     return 0;
	mov	w0, 0	// _17,
// problem100.c:23: }
	ldp	x29, x30, [sp], 16	//,,,
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE7:
	.size	main, .-main
	.section	.rodata
	.align	3
	.type	__PRETTY_FUNCTION__.0, %object
	.size	__PRETTY_FUNCTION__.0, 5
__PRETTY_FUNCTION__.0:
	.string	"main"
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
