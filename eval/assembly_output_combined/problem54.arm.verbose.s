	.arch armv8-a
	.file	"problem54.c"
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
// problem54.c:4:     return x + y;
	ldr	w1, [sp, 12]	// tmp94, x
	ldr	w0, [sp, 8]	// tmp95, y
	add	w0, w1, w0	// _3, tmp94, tmp95
// problem54.c:5: }
	add	sp, sp, 16	//,,
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE0:
	.size	func0, .-func0
	.section	.rodata
	.align	3
.LC0:
	.string	"problem54.c"
	.align	3
.LC1:
	.string	"func0(0, 1) == 1"
	.align	3
.LC2:
	.string	"func0(1, 0) == 1"
	.align	3
.LC3:
	.string	"func0(2, 3) == 5"
	.align	3
.LC4:
	.string	"func0(5, 7) == 12"
	.align	3
.LC5:
	.string	"func0(7, 5) == 12"
	.align	3
.LC6:
	.string	"func0(x, y) == x + y"
	.text
	.align	2
	.global	main
	.type	main, %function
main:
.LFB7:
	.cfi_startproc
	stp	x29, x30, [sp, -32]!	//,,,
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	mov	x29, sp	//,
// problem54.c:13:     assert(func0(0, 1) == 1);
	mov	w1, 1	//,
	mov	w0, 0	//,
	bl	func0		//
// problem54.c:13:     assert(func0(0, 1) == 1);
	cmp	w0, 1	// _1,
	beq	.L4		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp103,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp103,
	mov	w2, 13	//,
	adrp	x0, .LC0	// tmp104,
	add	x1, x0, :lo12:.LC0	//, tmp104,
	adrp	x0, .LC1	// tmp105,
	add	x0, x0, :lo12:.LC1	//, tmp105,
	bl	__assert_fail		//
.L4:
// problem54.c:14:     assert(func0(1, 0) == 1);
	mov	w1, 0	//,
	mov	w0, 1	//,
	bl	func0		//
// problem54.c:14:     assert(func0(1, 0) == 1);
	cmp	w0, 1	// _2,
	beq	.L5		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp106,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp106,
	mov	w2, 14	//,
	adrp	x0, .LC0	// tmp107,
	add	x1, x0, :lo12:.LC0	//, tmp107,
	adrp	x0, .LC2	// tmp108,
	add	x0, x0, :lo12:.LC2	//, tmp108,
	bl	__assert_fail		//
.L5:
// problem54.c:15:     assert(func0(2, 3) == 5);
	mov	w1, 3	//,
	mov	w0, 2	//,
	bl	func0		//
// problem54.c:15:     assert(func0(2, 3) == 5);
	cmp	w0, 5	// _3,
	beq	.L6		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp109,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp109,
	mov	w2, 15	//,
	adrp	x0, .LC0	// tmp110,
	add	x1, x0, :lo12:.LC0	//, tmp110,
	adrp	x0, .LC3	// tmp111,
	add	x0, x0, :lo12:.LC3	//, tmp111,
	bl	__assert_fail		//
.L6:
// problem54.c:16:     assert(func0(5, 7) == 12);
	mov	w1, 7	//,
	mov	w0, 5	//,
	bl	func0		//
// problem54.c:16:     assert(func0(5, 7) == 12);
	cmp	w0, 12	// _4,
	beq	.L7		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp112,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp112,
	mov	w2, 16	//,
	adrp	x0, .LC0	// tmp113,
	add	x1, x0, :lo12:.LC0	//, tmp113,
	adrp	x0, .LC4	// tmp114,
	add	x0, x0, :lo12:.LC4	//, tmp114,
	bl	__assert_fail		//
.L7:
// problem54.c:17:     assert(func0(7, 5) == 12);
	mov	w1, 5	//,
	mov	w0, 7	//,
	bl	func0		//
// problem54.c:17:     assert(func0(7, 5) == 12);
	cmp	w0, 12	// _5,
	beq	.L8		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp115,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp115,
	mov	w2, 17	//,
	adrp	x0, .LC0	// tmp116,
	add	x1, x0, :lo12:.LC0	//, tmp116,
	adrp	x0, .LC5	// tmp117,
	add	x0, x0, :lo12:.LC5	//, tmp117,
	bl	__assert_fail		//
.L8:
// problem54.c:18:     for (int i = 0; i < 100; i += 1) {
	str	wzr, [sp, 20]	//, i
// problem54.c:18:     for (int i = 0; i < 100; i += 1) {
	b	.L9		//
.L11:
// problem54.c:19:         int x = rand() % 1000;
	bl	rand		//
// problem54.c:19:         int x = rand() % 1000;
	mov	w1, 19923	// tmp119,
	movk	w1, 0x1062, lsl 16	// tmp119,,
	smull	x1, w0, w1	// tmp118, _6, tmp119
	lsr	x1, x1, 32	// tmp120, tmp118,
	asr	w2, w1, 6	// tmp121, tmp120,
	asr	w1, w0, 31	// tmp122, _6,
	sub	w2, w2, w1	// tmp123, tmp121, tmp122
	mov	w1, 1000	// tmp125,
	mul	w1, w2, w1	// tmp124, tmp123, tmp125
	sub	w0, w0, w1	// tmp126, _6, tmp124
	str	w0, [sp, 24]	// tmp126, x
// problem54.c:20:         int y = rand() % 1000;
	bl	rand		//
// problem54.c:20:         int y = rand() % 1000;
	mov	w1, 19923	// tmp128,
	movk	w1, 0x1062, lsl 16	// tmp128,,
	smull	x1, w0, w1	// tmp127, _7, tmp128
	lsr	x1, x1, 32	// tmp129, tmp127,
	asr	w2, w1, 6	// tmp130, tmp129,
	asr	w1, w0, 31	// tmp131, _7,
	sub	w2, w2, w1	// tmp132, tmp130, tmp131
	mov	w1, 1000	// tmp134,
	mul	w1, w2, w1	// tmp133, tmp132, tmp134
	sub	w0, w0, w1	// tmp135, _7, tmp133
	str	w0, [sp, 28]	// tmp135, y
// problem54.c:21:         assert(func0(x, y) == x + y);
	ldr	w1, [sp, 28]	//, y
	ldr	w0, [sp, 24]	//, x
	bl	func0		//
	mov	w2, w0	// _8,
// problem54.c:21:         assert(func0(x, y) == x + y);
	ldr	w1, [sp, 24]	// tmp136, x
	ldr	w0, [sp, 28]	// tmp137, y
	add	w0, w1, w0	// _9, tmp136, tmp137
	cmp	w2, w0	// _8, _9
	beq	.L10		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp138,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp138,
	mov	w2, 21	//,
	adrp	x0, .LC0	// tmp139,
	add	x1, x0, :lo12:.LC0	//, tmp139,
	adrp	x0, .LC6	// tmp140,
	add	x0, x0, :lo12:.LC6	//, tmp140,
	bl	__assert_fail		//
.L10:
// problem54.c:18:     for (int i = 0; i < 100; i += 1) {
	ldr	w0, [sp, 20]	// tmp142, i
	add	w0, w0, 1	// tmp141, tmp142,
	str	w0, [sp, 20]	// tmp141, i
.L9:
// problem54.c:18:     for (int i = 0; i < 100; i += 1) {
	ldr	w0, [sp, 20]	// tmp143, i
	cmp	w0, 99	// tmp143,
	ble	.L11		//,
// problem54.c:23:     return 0;
	mov	w0, 0	// _24,
// problem54.c:24: }
	ldp	x29, x30, [sp], 32	//,,,
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
