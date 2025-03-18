	.arch armv8-a
	.file	"problem139.c"
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
	str	w0, [sp, 12]	// n, n
// problem139.c:4:     if (n % 2 == 0 && n >= 8) return 1;
	ldr	w0, [sp, 12]	// n.0_1, n
	and	w0, w0, 1	// _2, n.0_1,
// problem139.c:4:     if (n % 2 == 0 && n >= 8) return 1;
	cmp	w0, 0	// _2,
	bne	.L2		//,
// problem139.c:4:     if (n % 2 == 0 && n >= 8) return 1;
	ldr	w0, [sp, 12]	// tmp96, n
	cmp	w0, 7	// tmp96,
	ble	.L2		//,
// problem139.c:4:     if (n % 2 == 0 && n >= 8) return 1;
	mov	w0, 1	// _3,
// problem139.c:4:     if (n % 2 == 0 && n >= 8) return 1;
	b	.L3		//
.L2:
// problem139.c:5:     return 0;
	mov	w0, 0	// _3,
.L3:
// problem139.c:6: }
	add	sp, sp, 16	//,,
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE0:
	.size	func0, .-func0
	.section	.rodata
	.align	3
.LC0:
	.string	"problem139.c"
	.align	3
.LC1:
	.string	"func0(4) == 0"
	.align	3
.LC2:
	.string	"func0(6) == 0"
	.align	3
.LC3:
	.string	"func0(8) == 1"
	.align	3
.LC4:
	.string	"func0(10) == 1"
	.align	3
.LC5:
	.string	"func0(11) == 0"
	.align	3
.LC6:
	.string	"func0(12) == 1"
	.align	3
.LC7:
	.string	"func0(13) == 0"
	.align	3
.LC8:
	.string	"func0(16) == 1"
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
// problem139.c:13:     assert(func0(4) == 0);
	mov	w0, 4	//,
	bl	func0		//
// problem139.c:13:     assert(func0(4) == 0);
	cmp	w0, 0	// _1,
	beq	.L5		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp102,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp102,
	mov	w2, 13	//,
	adrp	x0, .LC0	// tmp103,
	add	x1, x0, :lo12:.LC0	//, tmp103,
	adrp	x0, .LC1	// tmp104,
	add	x0, x0, :lo12:.LC1	//, tmp104,
	bl	__assert_fail		//
.L5:
// problem139.c:14:     assert(func0(6) == 0);
	mov	w0, 6	//,
	bl	func0		//
// problem139.c:14:     assert(func0(6) == 0);
	cmp	w0, 0	// _2,
	beq	.L6		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp105,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp105,
	mov	w2, 14	//,
	adrp	x0, .LC0	// tmp106,
	add	x1, x0, :lo12:.LC0	//, tmp106,
	adrp	x0, .LC2	// tmp107,
	add	x0, x0, :lo12:.LC2	//, tmp107,
	bl	__assert_fail		//
.L6:
// problem139.c:15:     assert(func0(8) == 1);
	mov	w0, 8	//,
	bl	func0		//
// problem139.c:15:     assert(func0(8) == 1);
	cmp	w0, 1	// _3,
	beq	.L7		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp108,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp108,
	mov	w2, 15	//,
	adrp	x0, .LC0	// tmp109,
	add	x1, x0, :lo12:.LC0	//, tmp109,
	adrp	x0, .LC3	// tmp110,
	add	x0, x0, :lo12:.LC3	//, tmp110,
	bl	__assert_fail		//
.L7:
// problem139.c:16:     assert(func0(10) == 1);
	mov	w0, 10	//,
	bl	func0		//
// problem139.c:16:     assert(func0(10) == 1);
	cmp	w0, 1	// _4,
	beq	.L8		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp111,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp111,
	mov	w2, 16	//,
	adrp	x0, .LC0	// tmp112,
	add	x1, x0, :lo12:.LC0	//, tmp112,
	adrp	x0, .LC4	// tmp113,
	add	x0, x0, :lo12:.LC4	//, tmp113,
	bl	__assert_fail		//
.L8:
// problem139.c:17:     assert(func0(11) == 0);
	mov	w0, 11	//,
	bl	func0		//
// problem139.c:17:     assert(func0(11) == 0);
	cmp	w0, 0	// _5,
	beq	.L9		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp114,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp114,
	mov	w2, 17	//,
	adrp	x0, .LC0	// tmp115,
	add	x1, x0, :lo12:.LC0	//, tmp115,
	adrp	x0, .LC5	// tmp116,
	add	x0, x0, :lo12:.LC5	//, tmp116,
	bl	__assert_fail		//
.L9:
// problem139.c:18:     assert(func0(12) == 1);
	mov	w0, 12	//,
	bl	func0		//
// problem139.c:18:     assert(func0(12) == 1);
	cmp	w0, 1	// _6,
	beq	.L10		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp117,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp117,
	mov	w2, 18	//,
	adrp	x0, .LC0	// tmp118,
	add	x1, x0, :lo12:.LC0	//, tmp118,
	adrp	x0, .LC6	// tmp119,
	add	x0, x0, :lo12:.LC6	//, tmp119,
	bl	__assert_fail		//
.L10:
// problem139.c:19:     assert(func0(13) == 0);
	mov	w0, 13	//,
	bl	func0		//
// problem139.c:19:     assert(func0(13) == 0);
	cmp	w0, 0	// _7,
	beq	.L11		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp120,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp120,
	mov	w2, 19	//,
	adrp	x0, .LC0	// tmp121,
	add	x1, x0, :lo12:.LC0	//, tmp121,
	adrp	x0, .LC7	// tmp122,
	add	x0, x0, :lo12:.LC7	//, tmp122,
	bl	__assert_fail		//
.L11:
// problem139.c:20:     assert(func0(16) == 1);
	mov	w0, 16	//,
	bl	func0		//
// problem139.c:20:     assert(func0(16) == 1);
	cmp	w0, 1	// _8,
	beq	.L12		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp123,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp123,
	mov	w2, 20	//,
	adrp	x0, .LC0	// tmp124,
	add	x1, x0, :lo12:.LC0	//, tmp124,
	adrp	x0, .LC8	// tmp125,
	add	x0, x0, :lo12:.LC8	//, tmp125,
	bl	__assert_fail		//
.L12:
// problem139.c:22:     return 0;
	mov	w0, 0	// _26,
// problem139.c:23: }
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
