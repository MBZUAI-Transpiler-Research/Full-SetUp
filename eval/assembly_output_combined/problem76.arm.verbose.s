	.arch armv8-a
	.file	"problem76.c"
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
	sub	sp, sp, #32	//,,
	.cfi_def_cfa_offset 32
	str	w0, [sp, 12]	// a, a
// problem76.c:5:     if (a < 2) return 0;
	ldr	w0, [sp, 12]	// tmp97, a
	cmp	w0, 1	// tmp97,
	bgt	.L2		//,
// problem76.c:5:     if (a < 2) return 0;
	mov	w0, 0	// _10,
	b	.L3		//
.L2:
// problem76.c:6:     int num = 0;
	str	wzr, [sp, 24]	//, num
// problem76.c:7:     for (int i = 2; i * i <= a; i++) {
	mov	w0, 2	// tmp98,
	str	w0, [sp, 28]	// tmp98, i
// problem76.c:7:     for (int i = 2; i * i <= a; i++) {
	b	.L4		//
.L6:
// problem76.c:9:             a = a / i;
	ldr	w1, [sp, 12]	// tmp101, a
	ldr	w0, [sp, 28]	// tmp102, i
	sdiv	w0, w1, w0	// tmp100, tmp101, tmp102
	str	w0, [sp, 12]	// tmp100, a
// problem76.c:10:             num++;
	ldr	w0, [sp, 24]	// tmp104, num
	add	w0, w0, 1	// tmp103, tmp104,
	str	w0, [sp, 24]	// tmp103, num
.L5:
// problem76.c:8:         while (a % i == 0) {
	ldr	w0, [sp, 12]	// tmp105, a
	ldr	w1, [sp, 28]	// tmp118, i
	sdiv	w2, w0, w1	// tmp117, tmp105, tmp118
	ldr	w1, [sp, 28]	// tmp120, i
	mul	w1, w2, w1	// tmp119, tmp117, tmp120
	sub	w0, w0, w1	// _1, tmp105, tmp119
// problem76.c:8:         while (a % i == 0) {
	cmp	w0, 0	// _1,
	beq	.L6		//,
// problem76.c:7:     for (int i = 2; i * i <= a; i++) {
	ldr	w0, [sp, 28]	// tmp122, i
	add	w0, w0, 1	// tmp121, tmp122,
	str	w0, [sp, 28]	// tmp121, i
.L4:
// problem76.c:7:     for (int i = 2; i * i <= a; i++) {
	ldr	w0, [sp, 28]	// tmp123, i
	mul	w0, w0, w0	// _2, tmp123, tmp123
// problem76.c:7:     for (int i = 2; i * i <= a; i++) {
	ldr	w1, [sp, 12]	// tmp124, a
	cmp	w1, w0	// tmp124, _2
	bge	.L5		//,
// problem76.c:13:     if (a > 1) num++;
	ldr	w0, [sp, 12]	// tmp125, a
	cmp	w0, 1	// tmp125,
	ble	.L8		//,
// problem76.c:13:     if (a > 1) num++;
	ldr	w0, [sp, 24]	// tmp127, num
	add	w0, w0, 1	// tmp126, tmp127,
	str	w0, [sp, 24]	// tmp126, num
.L8:
// problem76.c:14:     return num == 3;
	ldr	w0, [sp, 24]	// tmp129, num
	cmp	w0, 3	// tmp129,
	cset	w0, eq	// tmp130,
	and	w0, w0, 255	// _3, tmp128
.L3:
// problem76.c:15: }
	add	sp, sp, 32	//,,
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE6:
	.size	func0, .-func0
	.section	.rodata
	.align	3
.LC0:
	.string	"problem76.c"
	.align	3
.LC1:
	.string	"func0(5) == 0"
	.align	3
.LC2:
	.string	"func0(30) == 1"
	.align	3
.LC3:
	.string	"func0(8) == 1"
	.align	3
.LC4:
	.string	"func0(10) == 0"
	.align	3
.LC5:
	.string	"func0(125) == 1"
	.align	3
.LC6:
	.string	"func0(3 * 5 * 7) == 1"
	.align	3
.LC7:
	.string	"func0(3 * 6 * 7) == 0"
	.align	3
.LC8:
	.string	"func0(9 * 9 * 9) == 0"
	.align	3
.LC9:
	.string	"func0(11 * 9 * 9) == 0"
	.align	3
.LC10:
	.string	"func0(11 * 13 * 7) == 1"
	.align	3
.LC11:
	.string	"All tests passed!"
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
// problem76.c:23:     assert(func0(5) == 0);
	mov	w0, 5	//,
	bl	func0		//
	cmp	w0, 0	// _1,
	beq	.L10		//,
// problem76.c:23:     assert(func0(5) == 0);
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp104,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp104,
	mov	w2, 23	//,
	adrp	x0, .LC0	// tmp105,
	add	x1, x0, :lo12:.LC0	//, tmp105,
	adrp	x0, .LC1	// tmp106,
	add	x0, x0, :lo12:.LC1	//, tmp106,
	bl	__assert_fail		//
.L10:
// problem76.c:24:     assert(func0(30) == 1);
	mov	w0, 30	//,
	bl	func0		//
	cmp	w0, 1	// _2,
	beq	.L11		//,
// problem76.c:24:     assert(func0(30) == 1);
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp107,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp107,
	mov	w2, 24	//,
	adrp	x0, .LC0	// tmp108,
	add	x1, x0, :lo12:.LC0	//, tmp108,
	adrp	x0, .LC2	// tmp109,
	add	x0, x0, :lo12:.LC2	//, tmp109,
	bl	__assert_fail		//
.L11:
// problem76.c:25:     assert(func0(8) == 1); // 8 = 2 * 2 * 2
	mov	w0, 8	//,
	bl	func0		//
	cmp	w0, 1	// _3,
	beq	.L12		//,
// problem76.c:25:     assert(func0(8) == 1); // 8 = 2 * 2 * 2
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp110,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp110,
	mov	w2, 25	//,
	adrp	x0, .LC0	// tmp111,
	add	x1, x0, :lo12:.LC0	//, tmp111,
	adrp	x0, .LC3	// tmp112,
	add	x0, x0, :lo12:.LC3	//, tmp112,
	bl	__assert_fail		//
.L12:
// problem76.c:26:     assert(func0(10) == 0);
	mov	w0, 10	//,
	bl	func0		//
	cmp	w0, 0	// _4,
	beq	.L13		//,
// problem76.c:26:     assert(func0(10) == 0);
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp113,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp113,
	mov	w2, 26	//,
	adrp	x0, .LC0	// tmp114,
	add	x1, x0, :lo12:.LC0	//, tmp114,
	adrp	x0, .LC4	// tmp115,
	add	x0, x0, :lo12:.LC4	//, tmp115,
	bl	__assert_fail		//
.L13:
// problem76.c:27:     assert(func0(125) == 1); // 125 = 5 * 5 * 5 (three times the same prime)
	mov	w0, 125	//,
	bl	func0		//
	cmp	w0, 1	// _5,
	beq	.L14		//,
// problem76.c:27:     assert(func0(125) == 1); // 125 = 5 * 5 * 5 (three times the same prime)
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp116,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp116,
	mov	w2, 27	//,
	adrp	x0, .LC0	// tmp117,
	add	x1, x0, :lo12:.LC0	//, tmp117,
	adrp	x0, .LC5	// tmp118,
	add	x0, x0, :lo12:.LC5	//, tmp118,
	bl	__assert_fail		//
.L14:
// problem76.c:28:     assert(func0(3 * 5 * 7) == 1);
	mov	w0, 105	//,
	bl	func0		//
	cmp	w0, 1	// _6,
	beq	.L15		//,
// problem76.c:28:     assert(func0(3 * 5 * 7) == 1);
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp119,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp119,
	mov	w2, 28	//,
	adrp	x0, .LC0	// tmp120,
	add	x1, x0, :lo12:.LC0	//, tmp120,
	adrp	x0, .LC6	// tmp121,
	add	x0, x0, :lo12:.LC6	//, tmp121,
	bl	__assert_fail		//
.L15:
// problem76.c:29:     assert(func0(3 * 6 * 7) == 0);
	mov	w0, 126	//,
	bl	func0		//
	cmp	w0, 0	// _7,
	beq	.L16		//,
// problem76.c:29:     assert(func0(3 * 6 * 7) == 0);
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp122,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp122,
	mov	w2, 29	//,
	adrp	x0, .LC0	// tmp123,
	add	x1, x0, :lo12:.LC0	//, tmp123,
	adrp	x0, .LC7	// tmp124,
	add	x0, x0, :lo12:.LC7	//, tmp124,
	bl	__assert_fail		//
.L16:
// problem76.c:30:     assert(func0(9 * 9 * 9) == 0);
	mov	w0, 729	//,
	bl	func0		//
	cmp	w0, 0	// _8,
	beq	.L17		//,
// problem76.c:30:     assert(func0(9 * 9 * 9) == 0);
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp125,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp125,
	mov	w2, 30	//,
	adrp	x0, .LC0	// tmp126,
	add	x1, x0, :lo12:.LC0	//, tmp126,
	adrp	x0, .LC8	// tmp127,
	add	x0, x0, :lo12:.LC8	//, tmp127,
	bl	__assert_fail		//
.L17:
// problem76.c:31:     assert(func0(11 * 9 * 9) == 0);
	mov	w0, 891	//,
	bl	func0		//
	cmp	w0, 0	// _9,
	beq	.L18		//,
// problem76.c:31:     assert(func0(11 * 9 * 9) == 0);
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp128,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp128,
	mov	w2, 31	//,
	adrp	x0, .LC0	// tmp129,
	add	x1, x0, :lo12:.LC0	//, tmp129,
	adrp	x0, .LC9	// tmp130,
	add	x0, x0, :lo12:.LC9	//, tmp130,
	bl	__assert_fail		//
.L18:
// problem76.c:32:     assert(func0(11 * 13 * 7) == 1);
	mov	w0, 1001	//,
	bl	func0		//
	cmp	w0, 1	// _10,
	beq	.L19		//,
// problem76.c:32:     assert(func0(11 * 13 * 7) == 1);
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp131,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp131,
	mov	w2, 32	//,
	adrp	x0, .LC0	// tmp132,
	add	x1, x0, :lo12:.LC0	//, tmp132,
	adrp	x0, .LC10	// tmp133,
	add	x0, x0, :lo12:.LC10	//, tmp133,
	bl	__assert_fail		//
.L19:
// problem76.c:34:     printf("All tests passed!\n");
	adrp	x0, .LC11	// tmp134,
	add	x0, x0, :lo12:.LC11	//, tmp134,
	bl	puts		//
// problem76.c:36:     return 0;
	mov	w0, 0	// _33,
// problem76.c:37: }
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
