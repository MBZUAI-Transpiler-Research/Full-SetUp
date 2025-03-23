	.arch armv8-a
	.file	"problem77.c"
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
	str	w0, [sp, 12]	// x, x
	str	w1, [sp, 8]	// n, n
// problem77.c:4:     int p = 1, count = 0;
	mov	w0, 1	// tmp94,
	str	w0, [sp, 24]	// tmp94, p
// problem77.c:4:     int p = 1, count = 0;
	str	wzr, [sp, 28]	//, count
// problem77.c:5:     while (p <= x && count < 100) {
	b	.L2		//
.L6:
// problem77.c:6:         if (p == x) return 1;
	ldr	w1, [sp, 24]	// tmp95, p
	ldr	w0, [sp, 12]	// tmp96, x
	cmp	w1, w0	// tmp95, tmp96
	bne	.L3		//,
// problem77.c:6:         if (p == x) return 1;
	mov	w0, 1	// _3,
	b	.L4		//
.L3:
// problem77.c:7:         p = p * n; count += 1;
	ldr	w1, [sp, 24]	// tmp98, p
	ldr	w0, [sp, 8]	// tmp99, n
	mul	w0, w1, w0	// tmp97, tmp98, tmp99
	str	w0, [sp, 24]	// tmp97, p
// problem77.c:7:         p = p * n; count += 1;
	ldr	w0, [sp, 28]	// tmp101, count
	add	w0, w0, 1	// tmp100, tmp101,
	str	w0, [sp, 28]	// tmp100, count
.L2:
// problem77.c:5:     while (p <= x && count < 100) {
	ldr	w1, [sp, 24]	// tmp102, p
	ldr	w0, [sp, 12]	// tmp103, x
	cmp	w1, w0	// tmp102, tmp103
	bgt	.L5		//,
// problem77.c:5:     while (p <= x && count < 100) {
	ldr	w0, [sp, 28]	// tmp104, count
	cmp	w0, 99	// tmp104,
	ble	.L6		//,
.L5:
// problem77.c:9:     return 0;
	mov	w0, 0	// _3,
.L4:
// problem77.c:10: }
	add	sp, sp, 32	//,,
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE0:
	.size	func0, .-func0
	.section	.rodata
	.align	3
.LC0:
	.string	"problem77.c"
	.align	3
.LC1:
	.string	"func0(1, 4) == 1"
	.align	3
.LC2:
	.string	"func0(2, 2) == 1"
	.align	3
.LC3:
	.string	"func0(8, 2) == 1"
	.align	3
.LC4:
	.string	"func0(3, 2) == 0"
	.align	3
.LC5:
	.string	"func0(3, 1) == 0"
	.align	3
.LC6:
	.string	"func0(5, 3) == 0"
	.align	3
.LC7:
	.string	"func0(16, 2) == 1"
	.align	3
.LC8:
	.string	"func0(143214, 16) == 0"
	.align	3
.LC9:
	.string	"func0(4, 2) == 1"
	.align	3
.LC10:
	.string	"func0(9, 3) == 1"
	.align	3
.LC11:
	.string	"func0(16, 4) == 1"
	.align	3
.LC12:
	.string	"func0(24, 2) == 0"
	.align	3
.LC13:
	.string	"func0(128, 4) == 0"
	.align	3
.LC14:
	.string	"func0(12, 6) == 0"
	.align	3
.LC15:
	.string	"func0(1, 1) == 1"
	.align	3
.LC16:
	.string	"func0(1, 12) == 1"
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
// problem77.c:17:     assert(func0(1, 4) == 1);
	mov	w1, 4	//,
	mov	w0, 1	//,
	bl	func0		//
	cmp	w0, 1	// _1,
	beq	.L8		//,
// problem77.c:17:     assert(func0(1, 4) == 1);
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp110,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp110,
	mov	w2, 17	//,
	adrp	x0, .LC0	// tmp111,
	add	x1, x0, :lo12:.LC0	//, tmp111,
	adrp	x0, .LC1	// tmp112,
	add	x0, x0, :lo12:.LC1	//, tmp112,
	bl	__assert_fail		//
.L8:
// problem77.c:18:     assert(func0(2, 2) == 1);
	mov	w1, 2	//,
	mov	w0, 2	//,
	bl	func0		//
	cmp	w0, 1	// _2,
	beq	.L9		//,
// problem77.c:18:     assert(func0(2, 2) == 1);
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp113,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp113,
	mov	w2, 18	//,
	adrp	x0, .LC0	// tmp114,
	add	x1, x0, :lo12:.LC0	//, tmp114,
	adrp	x0, .LC2	// tmp115,
	add	x0, x0, :lo12:.LC2	//, tmp115,
	bl	__assert_fail		//
.L9:
// problem77.c:19:     assert(func0(8, 2) == 1);
	mov	w1, 2	//,
	mov	w0, 8	//,
	bl	func0		//
	cmp	w0, 1	// _3,
	beq	.L10		//,
// problem77.c:19:     assert(func0(8, 2) == 1);
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp116,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp116,
	mov	w2, 19	//,
	adrp	x0, .LC0	// tmp117,
	add	x1, x0, :lo12:.LC0	//, tmp117,
	adrp	x0, .LC3	// tmp118,
	add	x0, x0, :lo12:.LC3	//, tmp118,
	bl	__assert_fail		//
.L10:
// problem77.c:20:     assert(func0(3, 2) == 0);
	mov	w1, 2	//,
	mov	w0, 3	//,
	bl	func0		//
	cmp	w0, 0	// _4,
	beq	.L11		//,
// problem77.c:20:     assert(func0(3, 2) == 0);
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp119,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp119,
	mov	w2, 20	//,
	adrp	x0, .LC0	// tmp120,
	add	x1, x0, :lo12:.LC0	//, tmp120,
	adrp	x0, .LC4	// tmp121,
	add	x0, x0, :lo12:.LC4	//, tmp121,
	bl	__assert_fail		//
.L11:
// problem77.c:21:     assert(func0(3, 1) == 0);
	mov	w1, 1	//,
	mov	w0, 3	//,
	bl	func0		//
	cmp	w0, 0	// _5,
	beq	.L12		//,
// problem77.c:21:     assert(func0(3, 1) == 0);
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp122,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp122,
	mov	w2, 21	//,
	adrp	x0, .LC0	// tmp123,
	add	x1, x0, :lo12:.LC0	//, tmp123,
	adrp	x0, .LC5	// tmp124,
	add	x0, x0, :lo12:.LC5	//, tmp124,
	bl	__assert_fail		//
.L12:
// problem77.c:22:     assert(func0(5, 3) == 0);
	mov	w1, 3	//,
	mov	w0, 5	//,
	bl	func0		//
	cmp	w0, 0	// _6,
	beq	.L13		//,
// problem77.c:22:     assert(func0(5, 3) == 0);
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp125,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp125,
	mov	w2, 22	//,
	adrp	x0, .LC0	// tmp126,
	add	x1, x0, :lo12:.LC0	//, tmp126,
	adrp	x0, .LC6	// tmp127,
	add	x0, x0, :lo12:.LC6	//, tmp127,
	bl	__assert_fail		//
.L13:
// problem77.c:23:     assert(func0(16, 2) == 1);
	mov	w1, 2	//,
	mov	w0, 16	//,
	bl	func0		//
	cmp	w0, 1	// _7,
	beq	.L14		//,
// problem77.c:23:     assert(func0(16, 2) == 1);
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp128,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp128,
	mov	w2, 23	//,
	adrp	x0, .LC0	// tmp129,
	add	x1, x0, :lo12:.LC0	//, tmp129,
	adrp	x0, .LC7	// tmp130,
	add	x0, x0, :lo12:.LC7	//, tmp130,
	bl	__assert_fail		//
.L14:
// problem77.c:24:     assert(func0(143214, 16) == 0);
	mov	w1, 16	//,
	mov	w0, 12142	//,
	movk	w0, 0x2, lsl 16	//,,
	bl	func0		//
	cmp	w0, 0	// _8,
	beq	.L15		//,
// problem77.c:24:     assert(func0(143214, 16) == 0);
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp131,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp131,
	mov	w2, 24	//,
	adrp	x0, .LC0	// tmp132,
	add	x1, x0, :lo12:.LC0	//, tmp132,
	adrp	x0, .LC8	// tmp133,
	add	x0, x0, :lo12:.LC8	//, tmp133,
	bl	__assert_fail		//
.L15:
// problem77.c:25:     assert(func0(4, 2) == 1);
	mov	w1, 2	//,
	mov	w0, 4	//,
	bl	func0		//
	cmp	w0, 1	// _9,
	beq	.L16		//,
// problem77.c:25:     assert(func0(4, 2) == 1);
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp134,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp134,
	mov	w2, 25	//,
	adrp	x0, .LC0	// tmp135,
	add	x1, x0, :lo12:.LC0	//, tmp135,
	adrp	x0, .LC9	// tmp136,
	add	x0, x0, :lo12:.LC9	//, tmp136,
	bl	__assert_fail		//
.L16:
// problem77.c:26:     assert(func0(9, 3) == 1);
	mov	w1, 3	//,
	mov	w0, 9	//,
	bl	func0		//
	cmp	w0, 1	// _10,
	beq	.L17		//,
// problem77.c:26:     assert(func0(9, 3) == 1);
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp137,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp137,
	mov	w2, 26	//,
	adrp	x0, .LC0	// tmp138,
	add	x1, x0, :lo12:.LC0	//, tmp138,
	adrp	x0, .LC10	// tmp139,
	add	x0, x0, :lo12:.LC10	//, tmp139,
	bl	__assert_fail		//
.L17:
// problem77.c:27:     assert(func0(16, 4) == 1);
	mov	w1, 4	//,
	mov	w0, 16	//,
	bl	func0		//
	cmp	w0, 1	// _11,
	beq	.L18		//,
// problem77.c:27:     assert(func0(16, 4) == 1);
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp140,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp140,
	mov	w2, 27	//,
	adrp	x0, .LC0	// tmp141,
	add	x1, x0, :lo12:.LC0	//, tmp141,
	adrp	x0, .LC11	// tmp142,
	add	x0, x0, :lo12:.LC11	//, tmp142,
	bl	__assert_fail		//
.L18:
// problem77.c:28:     assert(func0(24, 2) == 0);
	mov	w1, 2	//,
	mov	w0, 24	//,
	bl	func0		//
	cmp	w0, 0	// _12,
	beq	.L19		//,
// problem77.c:28:     assert(func0(24, 2) == 0);
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp143,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp143,
	mov	w2, 28	//,
	adrp	x0, .LC0	// tmp144,
	add	x1, x0, :lo12:.LC0	//, tmp144,
	adrp	x0, .LC12	// tmp145,
	add	x0, x0, :lo12:.LC12	//, tmp145,
	bl	__assert_fail		//
.L19:
// problem77.c:29:     assert(func0(128, 4) == 0);
	mov	w1, 4	//,
	mov	w0, 128	//,
	bl	func0		//
	cmp	w0, 0	// _13,
	beq	.L20		//,
// problem77.c:29:     assert(func0(128, 4) == 0);
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp146,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp146,
	mov	w2, 29	//,
	adrp	x0, .LC0	// tmp147,
	add	x1, x0, :lo12:.LC0	//, tmp147,
	adrp	x0, .LC13	// tmp148,
	add	x0, x0, :lo12:.LC13	//, tmp148,
	bl	__assert_fail		//
.L20:
// problem77.c:30:     assert(func0(12, 6) == 0);
	mov	w1, 6	//,
	mov	w0, 12	//,
	bl	func0		//
	cmp	w0, 0	// _14,
	beq	.L21		//,
// problem77.c:30:     assert(func0(12, 6) == 0);
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp149,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp149,
	mov	w2, 30	//,
	adrp	x0, .LC0	// tmp150,
	add	x1, x0, :lo12:.LC0	//, tmp150,
	adrp	x0, .LC14	// tmp151,
	add	x0, x0, :lo12:.LC14	//, tmp151,
	bl	__assert_fail		//
.L21:
// problem77.c:31:     assert(func0(1, 1) == 1);
	mov	w1, 1	//,
	mov	w0, 1	//,
	bl	func0		//
	cmp	w0, 1	// _15,
	beq	.L22		//,
// problem77.c:31:     assert(func0(1, 1) == 1);
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp152,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp152,
	mov	w2, 31	//,
	adrp	x0, .LC0	// tmp153,
	add	x1, x0, :lo12:.LC0	//, tmp153,
	adrp	x0, .LC15	// tmp154,
	add	x0, x0, :lo12:.LC15	//, tmp154,
	bl	__assert_fail		//
.L22:
// problem77.c:32:     assert(func0(1, 12) == 1);
	mov	w1, 12	//,
	mov	w0, 1	//,
	bl	func0		//
	cmp	w0, 1	// _16,
	beq	.L23		//,
// problem77.c:32:     assert(func0(1, 12) == 1);
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp155,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp155,
	mov	w2, 32	//,
	adrp	x0, .LC0	// tmp156,
	add	x1, x0, :lo12:.LC0	//, tmp156,
	adrp	x0, .LC16	// tmp157,
	add	x0, x0, :lo12:.LC16	//, tmp157,
	bl	__assert_fail		//
.L23:
// problem77.c:34:     return 0;
	mov	w0, 0	// _50,
// problem77.c:35: }
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
