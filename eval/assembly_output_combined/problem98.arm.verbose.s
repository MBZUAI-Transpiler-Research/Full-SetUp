	.arch armv8-a
	.file	"problem98.c"
// GNU C17 (Ubuntu 13.3.0-6ubuntu2~24.04) version 13.3.0 (aarch64-linux-gnu)
//	compiled by GNU C version 13.3.0, GMP version 6.3.0, MPFR version 4.2.1, MPC version 1.3.1, isl version isl-0.26-GMP

// GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
// options passed: -mlittle-endian -mabi=lp64 -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection
	.text
	.align	2
	.global	func0
	.type	func0, %function
func0:
.LFB6:
	.cfi_startproc
	sub	sp, sp, #16	//,,
	.cfi_def_cfa_offset 16
	str	w0, [sp, 12]	// a, a
	str	w1, [sp, 8]	// b, b
// problem98.c:5:     return (abs(a) % 10) * (abs(b) % 10);
	ldr	w0, [sp, 12]	// tmp98, a
	cmp	w0, 0	// tmp98,
	csneg	w1, w0, w0, ge	// _1, tmp98, tmp98,
// problem98.c:5:     return (abs(a) % 10) * (abs(b) % 10);
	mov	w0, 26215	// tmp100,
	movk	w0, 0x6666, lsl 16	// tmp100,,
	smull	x0, w1, w0	// tmp99, _1, tmp100
	lsr	x0, x0, 32	// tmp101, tmp99,
	asr	w2, w0, 2	// tmp102, tmp101,
	asr	w0, w1, 31	// tmp103, _1,
	sub	w2, w2, w0	// _2, tmp102, tmp103
	mov	w0, w2	// tmp104, _2
	lsl	w0, w0, 2	// tmp105, tmp104,
	add	w0, w0, w2	// tmp104, tmp104, _2
	lsl	w0, w0, 1	// tmp106, tmp104,
	sub	w2, w1, w0	// _2, _1, tmp104
// problem98.c:5:     return (abs(a) % 10) * (abs(b) % 10);
	ldr	w0, [sp, 8]	// tmp107, b
	cmp	w0, 0	// tmp107,
	csneg	w3, w0, w0, ge	// _3, tmp107, tmp107,
// problem98.c:5:     return (abs(a) % 10) * (abs(b) % 10);
	mov	w0, 26215	// tmp109,
	movk	w0, 0x6666, lsl 16	// tmp109,,
	smull	x0, w3, w0	// tmp108, _3, tmp109
	lsr	x0, x0, 32	// tmp110, tmp108,
	asr	w1, w0, 2	// tmp111, tmp110,
	asr	w0, w3, 31	// tmp112, _3,
	sub	w1, w1, w0	// _4, tmp111, tmp112
	mov	w0, w1	// tmp113, _4
	lsl	w0, w0, 2	// tmp114, tmp113,
	add	w0, w0, w1	// tmp113, tmp113, _4
	lsl	w0, w0, 1	// tmp115, tmp113,
	sub	w1, w3, w0	// _4, _3, tmp113
// problem98.c:5:     return (abs(a) % 10) * (abs(b) % 10);
	mul	w0, w2, w1	// _7, _2, _4
// problem98.c:6: }
	add	sp, sp, 16	//,,
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE6:
	.size	func0, .-func0
	.section	.rodata
	.align	3
.LC0:
	.string	"problem98.c"
	.align	3
.LC1:
	.string	"func0(148, 412) == 16"
	.align	3
.LC2:
	.string	"func0(19, 28) == 72"
	.align	3
.LC3:
	.string	"func0(2020, 1851) == 0"
	.align	3
.LC4:
	.string	"func0(14, -15) == 20"
	.align	3
.LC5:
	.string	"func0(76, 67) == 42"
	.align	3
.LC6:
	.string	"func0(17, 27) == 49"
	.align	3
.LC7:
	.string	"func0(0, 1) == 0"
	.align	3
.LC8:
	.string	"func0(0, 0) == 0"
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
// problem98.c:13:     assert(func0(148, 412) == 16);
	mov	w1, 412	//,
	mov	w0, 148	//,
	bl	func0		//
// problem98.c:13:     assert(func0(148, 412) == 16);
	cmp	w0, 16	// _1,
	beq	.L4		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp102,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp102,
	mov	w2, 13	//,
	adrp	x0, .LC0	// tmp103,
	add	x1, x0, :lo12:.LC0	//, tmp103,
	adrp	x0, .LC1	// tmp104,
	add	x0, x0, :lo12:.LC1	//, tmp104,
	bl	__assert_fail		//
.L4:
// problem98.c:14:     assert(func0(19, 28) == 72);
	mov	w1, 28	//,
	mov	w0, 19	//,
	bl	func0		//
// problem98.c:14:     assert(func0(19, 28) == 72);
	cmp	w0, 72	// _2,
	beq	.L5		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp105,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp105,
	mov	w2, 14	//,
	adrp	x0, .LC0	// tmp106,
	add	x1, x0, :lo12:.LC0	//, tmp106,
	adrp	x0, .LC2	// tmp107,
	add	x0, x0, :lo12:.LC2	//, tmp107,
	bl	__assert_fail		//
.L5:
// problem98.c:15:     assert(func0(2020, 1851) == 0);
	mov	w1, 1851	//,
	mov	w0, 2020	//,
	bl	func0		//
// problem98.c:15:     assert(func0(2020, 1851) == 0);
	cmp	w0, 0	// _3,
	beq	.L6		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp108,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp108,
	mov	w2, 15	//,
	adrp	x0, .LC0	// tmp109,
	add	x1, x0, :lo12:.LC0	//, tmp109,
	adrp	x0, .LC3	// tmp110,
	add	x0, x0, :lo12:.LC3	//, tmp110,
	bl	__assert_fail		//
.L6:
// problem98.c:16:     assert(func0(14, -15) == 20);
	mov	w1, -15	//,
	mov	w0, 14	//,
	bl	func0		//
// problem98.c:16:     assert(func0(14, -15) == 20);
	cmp	w0, 20	// _4,
	beq	.L7		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp111,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp111,
	mov	w2, 16	//,
	adrp	x0, .LC0	// tmp112,
	add	x1, x0, :lo12:.LC0	//, tmp112,
	adrp	x0, .LC4	// tmp113,
	add	x0, x0, :lo12:.LC4	//, tmp113,
	bl	__assert_fail		//
.L7:
// problem98.c:17:     assert(func0(76, 67) == 42);
	mov	w1, 67	//,
	mov	w0, 76	//,
	bl	func0		//
// problem98.c:17:     assert(func0(76, 67) == 42);
	cmp	w0, 42	// _5,
	beq	.L8		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp114,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp114,
	mov	w2, 17	//,
	adrp	x0, .LC0	// tmp115,
	add	x1, x0, :lo12:.LC0	//, tmp115,
	adrp	x0, .LC5	// tmp116,
	add	x0, x0, :lo12:.LC5	//, tmp116,
	bl	__assert_fail		//
.L8:
// problem98.c:18:     assert(func0(17, 27) == 49);
	mov	w1, 27	//,
	mov	w0, 17	//,
	bl	func0		//
// problem98.c:18:     assert(func0(17, 27) == 49);
	cmp	w0, 49	// _6,
	beq	.L9		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp117,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp117,
	mov	w2, 18	//,
	adrp	x0, .LC0	// tmp118,
	add	x1, x0, :lo12:.LC0	//, tmp118,
	adrp	x0, .LC6	// tmp119,
	add	x0, x0, :lo12:.LC6	//, tmp119,
	bl	__assert_fail		//
.L9:
// problem98.c:19:     assert(func0(0, 1) == 0);
	mov	w1, 1	//,
	mov	w0, 0	//,
	bl	func0		//
// problem98.c:19:     assert(func0(0, 1) == 0);
	cmp	w0, 0	// _7,
	beq	.L10		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp120,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp120,
	mov	w2, 19	//,
	adrp	x0, .LC0	// tmp121,
	add	x1, x0, :lo12:.LC0	//, tmp121,
	adrp	x0, .LC7	// tmp122,
	add	x0, x0, :lo12:.LC7	//, tmp122,
	bl	__assert_fail		//
.L10:
// problem98.c:20:     assert(func0(0, 0) == 0);
	mov	w1, 0	//,
	mov	w0, 0	//,
	bl	func0		//
// problem98.c:20:     assert(func0(0, 0) == 0);
	cmp	w0, 0	// _8,
	beq	.L11		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp123,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp123,
	mov	w2, 20	//,
	adrp	x0, .LC0	// tmp124,
	add	x1, x0, :lo12:.LC0	//, tmp124,
	adrp	x0, .LC8	// tmp125,
	add	x0, x0, :lo12:.LC8	//, tmp125,
	bl	__assert_fail		//
.L11:
// problem98.c:22:     return 0;
	mov	w0, 0	// _26,
// problem98.c:23: }
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
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
