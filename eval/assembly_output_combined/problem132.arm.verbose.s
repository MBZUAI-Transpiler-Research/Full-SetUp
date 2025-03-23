	.arch armv8-a
	.file	"problem132.c"
// GNU C17 (Ubuntu 11.4.0-1ubuntu1~22.04) version 11.4.0 (aarch64-linux-gnu)
//	compiled by GNU C version 11.4.0, GMP version 6.2.1, MPFR version 4.1.0, MPC version 1.2.1, isl version isl-0.24-GMP

// GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
// options passed: -mlittle-endian -mabi=lp64 -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection
	.text
	.align	2
	.global	func0
	.type	func0, %function
func0:
.LFB0:
	.cfi_startproc
	sub	sp, sp, #32	//,,
	.cfi_def_cfa_offset 32
	str	w0, [sp, 12]	// n, n
// problem132.c:4:     int prod = 1, has_odd = 0, digit;
	mov	w0, 1	// tmp95,
	str	w0, [sp, 20]	// tmp95, prod
// problem132.c:4:     int prod = 1, has_odd = 0, digit;
	str	wzr, [sp, 24]	//, has_odd
// problem132.c:5:     while (n > 0) {
	b	.L2		//
.L4:
// problem132.c:6:         digit = n % 10;
	ldr	w1, [sp, 12]	// tmp97, n
	mov	w0, 26215	// tmp99,
	movk	w0, 0x6666, lsl 16	// tmp99,,
	smull	x0, w1, w0	// tmp98, tmp97, tmp99
	lsr	x0, x0, 32	// tmp100, tmp98,
	asr	w2, w0, 2	// tmp101, tmp100,
	asr	w0, w1, 31	// tmp102, tmp97,
	sub	w2, w2, w0	// tmp96, tmp101, tmp102
	mov	w0, w2	// tmp103, tmp96
	lsl	w0, w0, 2	// tmp104, tmp103,
	add	w0, w0, w2	// tmp103, tmp103, tmp96
	lsl	w0, w0, 1	// tmp105, tmp103,
	sub	w0, w1, w0	// tmp106, tmp97, tmp103
	str	w0, [sp, 28]	// tmp106, digit
// problem132.c:7:         if (digit % 2 == 1) {
	ldr	w0, [sp, 28]	// tmp107, digit
	cmp	w0, 0	// tmp107,
	and	w0, w0, 1	// tmp108, tmp107,
	csneg	w0, w0, w0, ge	// _1, tmp108, tmp108,
// problem132.c:7:         if (digit % 2 == 1) {
	cmp	w0, 1	// _1,
	bne	.L3		//,
// problem132.c:8:             has_odd = 1;
	mov	w0, 1	// tmp109,
	str	w0, [sp, 24]	// tmp109, has_odd
// problem132.c:9:             prod *= digit;
	ldr	w1, [sp, 20]	// tmp111, prod
	ldr	w0, [sp, 28]	// tmp112, digit
	mul	w0, w1, w0	// tmp110, tmp111, tmp112
	str	w0, [sp, 20]	// tmp110, prod
.L3:
// problem132.c:11:         n /= 10;
	ldr	w0, [sp, 12]	// tmp114, n
	mov	w1, 26215	// tmp116,
	movk	w1, 0x6666, lsl 16	// tmp116,,
	smull	x1, w0, w1	// tmp115, tmp114, tmp116
	lsr	x1, x1, 32	// tmp117, tmp115,
	asr	w1, w1, 2	// tmp118, tmp117,
	asr	w0, w0, 31	// tmp119, tmp114,
	sub	w0, w1, w0	// tmp113, tmp118, tmp119
	str	w0, [sp, 12]	// tmp113, n
.L2:
// problem132.c:5:     while (n > 0) {
	ldr	w0, [sp, 12]	// tmp120, n
	cmp	w0, 0	// tmp120,
	bgt	.L4		//,
// problem132.c:13:     return has_odd ? prod : 0;
	ldr	w0, [sp, 24]	// tmp121, has_odd
	cmp	w0, 0	// tmp121,
	beq	.L5		//,
// problem132.c:13:     return has_odd ? prod : 0;
	ldr	w0, [sp, 20]	// iftmp.0_7, prod
	b	.L7		//
.L5:
// problem132.c:13:     return has_odd ? prod : 0;
	mov	w0, 0	// iftmp.0_7,
.L7:
// problem132.c:14: }
	add	sp, sp, 32	//,,
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE0:
	.size	func0, .-func0
	.section	.rodata
	.align	3
.LC0:
	.string	"problem132.c"
	.align	3
.LC1:
	.string	"func0(5) == 5"
	.align	3
.LC2:
	.string	"func0(54) == 5"
	.align	3
.LC3:
	.string	"func0(120) == 1"
	.align	3
.LC4:
	.string	"func0(5014) == 5"
	.align	3
.LC5:
	.string	"func0(98765) == 315"
	.align	3
.LC6:
	.string	"func0(5576543) == 2625"
	.align	3
.LC7:
	.string	"func0(2468) == 0"
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
// problem132.c:21:     assert(func0(5) == 5);
	mov	w0, 5	//,
	bl	func0		//
	cmp	w0, 5	// _1,
	beq	.L9		//,
// problem132.c:21:     assert(func0(5) == 5);
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp101,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp101,
	mov	w2, 21	//,
	adrp	x0, .LC0	// tmp102,
	add	x1, x0, :lo12:.LC0	//, tmp102,
	adrp	x0, .LC1	// tmp103,
	add	x0, x0, :lo12:.LC1	//, tmp103,
	bl	__assert_fail		//
.L9:
// problem132.c:22:     assert(func0(54) == 5);
	mov	w0, 54	//,
	bl	func0		//
	cmp	w0, 5	// _2,
	beq	.L10		//,
// problem132.c:22:     assert(func0(54) == 5);
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp104,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp104,
	mov	w2, 22	//,
	adrp	x0, .LC0	// tmp105,
	add	x1, x0, :lo12:.LC0	//, tmp105,
	adrp	x0, .LC2	// tmp106,
	add	x0, x0, :lo12:.LC2	//, tmp106,
	bl	__assert_fail		//
.L10:
// problem132.c:23:     assert(func0(120) == 1);
	mov	w0, 120	//,
	bl	func0		//
	cmp	w0, 1	// _3,
	beq	.L11		//,
// problem132.c:23:     assert(func0(120) == 1);
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp107,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp107,
	mov	w2, 23	//,
	adrp	x0, .LC0	// tmp108,
	add	x1, x0, :lo12:.LC0	//, tmp108,
	adrp	x0, .LC3	// tmp109,
	add	x0, x0, :lo12:.LC3	//, tmp109,
	bl	__assert_fail		//
.L11:
// problem132.c:24:     assert(func0(5014) == 5);
	mov	w0, 5014	//,
	bl	func0		//
	cmp	w0, 5	// _4,
	beq	.L12		//,
// problem132.c:24:     assert(func0(5014) == 5);
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp110,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp110,
	mov	w2, 24	//,
	adrp	x0, .LC0	// tmp111,
	add	x1, x0, :lo12:.LC0	//, tmp111,
	adrp	x0, .LC4	// tmp112,
	add	x0, x0, :lo12:.LC4	//, tmp112,
	bl	__assert_fail		//
.L12:
// problem132.c:25:     assert(func0(98765) == 315);
	mov	w0, 33229	//,
	movk	w0, 0x1, lsl 16	//,,
	bl	func0		//
	cmp	w0, 315	// _5,
	beq	.L13		//,
// problem132.c:25:     assert(func0(98765) == 315);
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp113,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp113,
	mov	w2, 25	//,
	adrp	x0, .LC0	// tmp114,
	add	x1, x0, :lo12:.LC0	//, tmp114,
	adrp	x0, .LC5	// tmp115,
	add	x0, x0, :lo12:.LC5	//, tmp115,
	bl	__assert_fail		//
.L13:
// problem132.c:26:     assert(func0(5576543) == 2625);
	mov	w0, 5983	//,
	movk	w0, 0x55, lsl 16	//,,
	bl	func0		//
	cmp	w0, 2625	// _6,
	beq	.L14		//,
// problem132.c:26:     assert(func0(5576543) == 2625);
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp116,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp116,
	mov	w2, 26	//,
	adrp	x0, .LC0	// tmp117,
	add	x1, x0, :lo12:.LC0	//, tmp117,
	adrp	x0, .LC6	// tmp118,
	add	x0, x0, :lo12:.LC6	//, tmp118,
	bl	__assert_fail		//
.L14:
// problem132.c:27:     assert(func0(2468) == 0);
	mov	w0, 2468	//,
	bl	func0		//
	cmp	w0, 0	// _7,
	beq	.L15		//,
// problem132.c:27:     assert(func0(2468) == 0);
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp119,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp119,
	mov	w2, 27	//,
	adrp	x0, .LC0	// tmp120,
	add	x1, x0, :lo12:.LC0	//, tmp120,
	adrp	x0, .LC7	// tmp121,
	add	x0, x0, :lo12:.LC7	//, tmp121,
	bl	__assert_fail		//
.L15:
// problem132.c:29:     return 0;
	mov	w0, 0	// _23,
// problem132.c:30: }
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
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
