	.arch armv8-a
	.file	"problem103.c"
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
	str	w0, [sp, 12]	// x, x
	str	w1, [sp, 8]	// y, y
// problem103.c:4:     if (y < x) return -1;
	ldr	w1, [sp, 8]	// tmp96, y
	ldr	w0, [sp, 12]	// tmp97, x
	cmp	w1, w0	// tmp96, tmp97
	bge	.L2		//,
// problem103.c:4:     if (y < x) return -1;
	mov	w0, -1	// _3,
// problem103.c:4:     if (y < x) return -1;
	b	.L3		//
.L2:
// problem103.c:5:     if (y == x && y % 2 == 1) return -1;
	ldr	w1, [sp, 8]	// tmp98, y
	ldr	w0, [sp, 12]	// tmp99, x
	cmp	w1, w0	// tmp98, tmp99
	bne	.L4		//,
// problem103.c:5:     if (y == x && y % 2 == 1) return -1;
	ldr	w0, [sp, 8]	// tmp100, y
	cmp	w0, 0	// tmp100,
	and	w0, w0, 1	// tmp101, tmp100,
	csneg	w0, w0, w0, ge	// _1, tmp101, tmp101,
// problem103.c:5:     if (y == x && y % 2 == 1) return -1;
	cmp	w0, 1	// _1,
	bne	.L4		//,
// problem103.c:5:     if (y == x && y % 2 == 1) return -1;
	mov	w0, -1	// _3,
// problem103.c:5:     if (y == x && y % 2 == 1) return -1;
	b	.L3		//
.L4:
// problem103.c:6:     if (y % 2 == 1) return y - 1;
	ldr	w0, [sp, 8]	// tmp102, y
	cmp	w0, 0	// tmp102,
	and	w0, w0, 1	// tmp103, tmp102,
	csneg	w0, w0, w0, ge	// _2, tmp103, tmp103,
// problem103.c:6:     if (y % 2 == 1) return y - 1;
	cmp	w0, 1	// _2,
	bne	.L5		//,
// problem103.c:6:     if (y % 2 == 1) return y - 1;
	ldr	w0, [sp, 8]	// tmp104, y
	sub	w0, w0, #1	// _3, tmp104,
// problem103.c:6:     if (y % 2 == 1) return y - 1;
	b	.L3		//
.L5:
// problem103.c:7:     return y;
	ldr	w0, [sp, 8]	// _3, y
.L3:
// problem103.c:8: }
	add	sp, sp, 16	//,,
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE0:
	.size	func0, .-func0
	.section	.rodata
	.align	3
.LC0:
	.string	"problem103.c"
	.align	3
.LC1:
	.string	"func0(12, 15) == 14"
	.align	3
.LC2:
	.string	"func0(13, 12) == -1"
	.align	3
.LC3:
	.string	"func0(33, 12354) == 12354"
	.align	3
.LC4:
	.string	"func0(5234, 5233) == -1"
	.align	3
.LC5:
	.string	"func0(6, 29) == 28"
	.align	3
.LC6:
	.string	"func0(27, 10) == -1"
	.align	3
.LC7:
	.string	"func0(7, 7) == -1"
	.align	3
.LC8:
	.string	"func0(546, 546) == 546"
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
// problem103.c:15:     assert(func0(12, 15) == 14);
	mov	w1, 15	//,
	mov	w0, 12	//,
	bl	func0		//
// problem103.c:15:     assert(func0(12, 15) == 14);
	cmp	w0, 14	// _1,
	beq	.L7		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp102,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp102,
	mov	w2, 15	//,
	adrp	x0, .LC0	// tmp103,
	add	x1, x0, :lo12:.LC0	//, tmp103,
	adrp	x0, .LC1	// tmp104,
	add	x0, x0, :lo12:.LC1	//, tmp104,
	bl	__assert_fail		//
.L7:
// problem103.c:16:     assert(func0(13, 12) == -1);
	mov	w1, 12	//,
	mov	w0, 13	//,
	bl	func0		//
// problem103.c:16:     assert(func0(13, 12) == -1);
	cmn	w0, #1	// _2,
	beq	.L8		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp105,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp105,
	mov	w2, 16	//,
	adrp	x0, .LC0	// tmp106,
	add	x1, x0, :lo12:.LC0	//, tmp106,
	adrp	x0, .LC2	// tmp107,
	add	x0, x0, :lo12:.LC2	//, tmp107,
	bl	__assert_fail		//
.L8:
// problem103.c:17:     assert(func0(33, 12354) == 12354);
	mov	w1, 12354	//,
	mov	w0, 33	//,
	bl	func0		//
	mov	w1, w0	// _3,
// problem103.c:17:     assert(func0(33, 12354) == 12354);
	mov	w0, 12354	// tmp108,
	cmp	w1, w0	// _3, tmp108
	beq	.L9		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp109,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp109,
	mov	w2, 17	//,
	adrp	x0, .LC0	// tmp110,
	add	x1, x0, :lo12:.LC0	//, tmp110,
	adrp	x0, .LC3	// tmp111,
	add	x0, x0, :lo12:.LC3	//, tmp111,
	bl	__assert_fail		//
.L9:
// problem103.c:18:     assert(func0(5234, 5233) == -1);
	mov	w1, 5233	//,
	mov	w0, 5234	//,
	bl	func0		//
// problem103.c:18:     assert(func0(5234, 5233) == -1);
	cmn	w0, #1	// _4,
	beq	.L10		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp112,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp112,
	mov	w2, 18	//,
	adrp	x0, .LC0	// tmp113,
	add	x1, x0, :lo12:.LC0	//, tmp113,
	adrp	x0, .LC4	// tmp114,
	add	x0, x0, :lo12:.LC4	//, tmp114,
	bl	__assert_fail		//
.L10:
// problem103.c:19:     assert(func0(6, 29) == 28);
	mov	w1, 29	//,
	mov	w0, 6	//,
	bl	func0		//
// problem103.c:19:     assert(func0(6, 29) == 28);
	cmp	w0, 28	// _5,
	beq	.L11		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp115,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp115,
	mov	w2, 19	//,
	adrp	x0, .LC0	// tmp116,
	add	x1, x0, :lo12:.LC0	//, tmp116,
	adrp	x0, .LC5	// tmp117,
	add	x0, x0, :lo12:.LC5	//, tmp117,
	bl	__assert_fail		//
.L11:
// problem103.c:20:     assert(func0(27, 10) == -1);
	mov	w1, 10	//,
	mov	w0, 27	//,
	bl	func0		//
// problem103.c:20:     assert(func0(27, 10) == -1);
	cmn	w0, #1	// _6,
	beq	.L12		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp118,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp118,
	mov	w2, 20	//,
	adrp	x0, .LC0	// tmp119,
	add	x1, x0, :lo12:.LC0	//, tmp119,
	adrp	x0, .LC6	// tmp120,
	add	x0, x0, :lo12:.LC6	//, tmp120,
	bl	__assert_fail		//
.L12:
// problem103.c:21:     assert(func0(7, 7) == -1);
	mov	w1, 7	//,
	mov	w0, 7	//,
	bl	func0		//
// problem103.c:21:     assert(func0(7, 7) == -1);
	cmn	w0, #1	// _7,
	beq	.L13		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp121,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp121,
	mov	w2, 21	//,
	adrp	x0, .LC0	// tmp122,
	add	x1, x0, :lo12:.LC0	//, tmp122,
	adrp	x0, .LC7	// tmp123,
	add	x0, x0, :lo12:.LC7	//, tmp123,
	bl	__assert_fail		//
.L13:
// problem103.c:22:     assert(func0(546, 546) == 546);
	mov	w1, 546	//,
	mov	w0, 546	//,
	bl	func0		//
// problem103.c:22:     assert(func0(546, 546) == 546);
	cmp	w0, 546	// _8,
	beq	.L14		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp124,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp124,
	mov	w2, 22	//,
	adrp	x0, .LC0	// tmp125,
	add	x1, x0, :lo12:.LC0	//, tmp125,
	adrp	x0, .LC8	// tmp126,
	add	x0, x0, :lo12:.LC8	//, tmp126,
	bl	__assert_fail		//
.L14:
// problem103.c:24:     return 0;
	mov	w0, 0	// _26,
// problem103.c:25: }
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
