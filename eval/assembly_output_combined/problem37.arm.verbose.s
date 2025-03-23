	.arch armv8-a
	.file	"problem37.c"
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
// problem37.c:4:     int count = 0;
	str	wzr, [sp, 20]	//, count
// problem37.c:5:     for (int i = 0; i < n; i++)
	str	wzr, [sp, 24]	//, i
// problem37.c:5:     for (int i = 0; i < n; i++)
	b	.L2		//
.L8:
// problem37.c:6:         if (i % 11 == 0 || i % 13 == 0) {
	ldr	w1, [sp, 24]	// tmp97, i
	mov	w0, 41705	// tmp99,
	movk	w0, 0x2e8b, lsl 16	// tmp99,,
	smull	x0, w1, w0	// tmp98, tmp97, tmp99
	lsr	x0, x0, 32	// tmp100, tmp98,
	asr	w2, w0, 1	// tmp101, tmp100,
	asr	w0, w1, 31	// tmp102, tmp97,
	sub	w0, w2, w0	// _1, tmp101, tmp102
	mov	w2, 11	// tmp104,
	mul	w0, w0, w2	// tmp103, _1, tmp104
	sub	w0, w1, w0	// _1, tmp97, tmp103
// problem37.c:6:         if (i % 11 == 0 || i % 13 == 0) {
	cmp	w0, 0	// _1,
	beq	.L3		//,
// problem37.c:6:         if (i % 11 == 0 || i % 13 == 0) {
	ldr	w1, [sp, 24]	// tmp105, i
	mov	w0, 60495	// tmp107,
	movk	w0, 0x4ec4, lsl 16	// tmp107,,
	smull	x0, w1, w0	// tmp106, tmp105, tmp107
	lsr	x0, x0, 32	// tmp108, tmp106,
	asr	w2, w0, 2	// tmp109, tmp108,
	asr	w0, w1, 31	// tmp110, tmp105,
	sub	w0, w2, w0	// _2, tmp109, tmp110
	mov	w2, 13	// tmp112,
	mul	w0, w0, w2	// tmp111, _2, tmp112
	sub	w0, w1, w0	// _2, tmp105, tmp111
// problem37.c:6:         if (i % 11 == 0 || i % 13 == 0) {
	cmp	w0, 0	// _2,
	bne	.L4		//,
.L3:
// problem37.c:7:             int q = i;
	ldr	w0, [sp, 24]	// tmp113, i
	str	w0, [sp, 28]	// tmp113, q
// problem37.c:8:             while (q > 0) {
	b	.L5		//
.L7:
// problem37.c:9:                 if (q % 10 == 7) count += 1;
	ldr	w2, [sp, 28]	// tmp114, q
	mov	w0, 26215	// tmp116,
	movk	w0, 0x6666, lsl 16	// tmp116,,
	smull	x0, w2, w0	// tmp115, tmp114, tmp116
	lsr	x0, x0, 32	// tmp117, tmp115,
	asr	w1, w0, 2	// tmp118, tmp117,
	asr	w0, w2, 31	// tmp119, tmp114,
	sub	w1, w1, w0	// _3, tmp118, tmp119
	mov	w0, w1	// tmp120, _3
	lsl	w0, w0, 2	// tmp121, tmp120,
	add	w0, w0, w1	// tmp120, tmp120, _3
	lsl	w0, w0, 1	// tmp122, tmp120,
	sub	w1, w2, w0	// _3, tmp114, tmp120
// problem37.c:9:                 if (q % 10 == 7) count += 1;
	cmp	w1, 7	// _3,
	bne	.L6		//,
// problem37.c:9:                 if (q % 10 == 7) count += 1;
	ldr	w0, [sp, 20]	// tmp124, count
	add	w0, w0, 1	// tmp123, tmp124,
	str	w0, [sp, 20]	// tmp123, count
.L6:
// problem37.c:10:                 q = q / 10;
	ldr	w0, [sp, 28]	// tmp126, q
	mov	w1, 26215	// tmp128,
	movk	w1, 0x6666, lsl 16	// tmp128,,
	smull	x1, w0, w1	// tmp127, tmp126, tmp128
	lsr	x1, x1, 32	// tmp129, tmp127,
	asr	w1, w1, 2	// tmp130, tmp129,
	asr	w0, w0, 31	// tmp131, tmp126,
	sub	w0, w1, w0	// tmp125, tmp130, tmp131
	str	w0, [sp, 28]	// tmp125, q
.L5:
// problem37.c:8:             while (q > 0) {
	ldr	w0, [sp, 28]	// tmp132, q
	cmp	w0, 0	// tmp132,
	bgt	.L7		//,
.L4:
// problem37.c:5:     for (int i = 0; i < n; i++)
	ldr	w0, [sp, 24]	// tmp134, i
	add	w0, w0, 1	// tmp133, tmp134,
	str	w0, [sp, 24]	// tmp133, i
.L2:
// problem37.c:5:     for (int i = 0; i < n; i++)
	ldr	w1, [sp, 24]	// tmp135, i
	ldr	w0, [sp, 12]	// tmp136, n
	cmp	w1, w0	// tmp135, tmp136
	blt	.L8		//,
// problem37.c:13:     return count;
	ldr	w0, [sp, 20]	// _13, count
// problem37.c:14: }
	add	sp, sp, 32	//,,
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE0:
	.size	func0, .-func0
	.section	.rodata
	.align	3
.LC0:
	.string	"problem37.c"
	.align	3
.LC1:
	.string	"func0(50) == 0"
	.align	3
.LC2:
	.string	"func0(78) == 2"
	.align	3
.LC3:
	.string	"func0(79) == 3"
	.align	3
.LC4:
	.string	"func0(100) == 3"
	.align	3
.LC5:
	.string	"func0(200) == 6"
	.align	3
.LC6:
	.string	"func0(4000) == 192"
	.align	3
.LC7:
	.string	"func0(10000) == 639"
	.align	3
.LC8:
	.string	"func0(100000) == 8026"
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
// problem37.c:22:     assert(func0(50) == 0);
	mov	w0, 50	//,
	bl	func0		//
	cmp	w0, 0	// _1,
	beq	.L11		//,
// problem37.c:22:     assert(func0(50) == 0);
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp102,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp102,
	mov	w2, 22	//,
	adrp	x0, .LC0	// tmp103,
	add	x1, x0, :lo12:.LC0	//, tmp103,
	adrp	x0, .LC1	// tmp104,
	add	x0, x0, :lo12:.LC1	//, tmp104,
	bl	__assert_fail		//
.L11:
// problem37.c:23:     assert(func0(78) == 2);
	mov	w0, 78	//,
	bl	func0		//
	cmp	w0, 2	// _2,
	beq	.L12		//,
// problem37.c:23:     assert(func0(78) == 2);
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp105,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp105,
	mov	w2, 23	//,
	adrp	x0, .LC0	// tmp106,
	add	x1, x0, :lo12:.LC0	//, tmp106,
	adrp	x0, .LC2	// tmp107,
	add	x0, x0, :lo12:.LC2	//, tmp107,
	bl	__assert_fail		//
.L12:
// problem37.c:24:     assert(func0(79) == 3);
	mov	w0, 79	//,
	bl	func0		//
	cmp	w0, 3	// _3,
	beq	.L13		//,
// problem37.c:24:     assert(func0(79) == 3);
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp108,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp108,
	mov	w2, 24	//,
	adrp	x0, .LC0	// tmp109,
	add	x1, x0, :lo12:.LC0	//, tmp109,
	adrp	x0, .LC3	// tmp110,
	add	x0, x0, :lo12:.LC3	//, tmp110,
	bl	__assert_fail		//
.L13:
// problem37.c:25:     assert(func0(100) == 3);
	mov	w0, 100	//,
	bl	func0		//
	cmp	w0, 3	// _4,
	beq	.L14		//,
// problem37.c:25:     assert(func0(100) == 3);
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp111,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp111,
	mov	w2, 25	//,
	adrp	x0, .LC0	// tmp112,
	add	x1, x0, :lo12:.LC0	//, tmp112,
	adrp	x0, .LC4	// tmp113,
	add	x0, x0, :lo12:.LC4	//, tmp113,
	bl	__assert_fail		//
.L14:
// problem37.c:26:     assert(func0(200) == 6);
	mov	w0, 200	//,
	bl	func0		//
	cmp	w0, 6	// _5,
	beq	.L15		//,
// problem37.c:26:     assert(func0(200) == 6);
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp114,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp114,
	mov	w2, 26	//,
	adrp	x0, .LC0	// tmp115,
	add	x1, x0, :lo12:.LC0	//, tmp115,
	adrp	x0, .LC5	// tmp116,
	add	x0, x0, :lo12:.LC5	//, tmp116,
	bl	__assert_fail		//
.L15:
// problem37.c:27:     assert(func0(4000) == 192);
	mov	w0, 4000	//,
	bl	func0		//
	cmp	w0, 192	// _6,
	beq	.L16		//,
// problem37.c:27:     assert(func0(4000) == 192);
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp117,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp117,
	mov	w2, 27	//,
	adrp	x0, .LC0	// tmp118,
	add	x1, x0, :lo12:.LC0	//, tmp118,
	adrp	x0, .LC6	// tmp119,
	add	x0, x0, :lo12:.LC6	//, tmp119,
	bl	__assert_fail		//
.L16:
// problem37.c:28:     assert(func0(10000) == 639);
	mov	w0, 10000	//,
	bl	func0		//
	cmp	w0, 639	// _7,
	beq	.L17		//,
// problem37.c:28:     assert(func0(10000) == 639);
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp120,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp120,
	mov	w2, 28	//,
	adrp	x0, .LC0	// tmp121,
	add	x1, x0, :lo12:.LC0	//, tmp121,
	adrp	x0, .LC7	// tmp122,
	add	x0, x0, :lo12:.LC7	//, tmp122,
	bl	__assert_fail		//
.L17:
// problem37.c:29:     assert(func0(100000) == 8026);
	mov	w0, 34464	//,
	movk	w0, 0x1, lsl 16	//,,
	bl	func0		//
	mov	w1, w0	// _8,
	mov	w0, 8026	// tmp123,
	cmp	w1, w0	// _8, tmp123
	beq	.L18		//,
// problem37.c:29:     assert(func0(100000) == 8026);
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp124,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp124,
	mov	w2, 29	//,
	adrp	x0, .LC0	// tmp125,
	add	x1, x0, :lo12:.LC0	//, tmp125,
	adrp	x0, .LC8	// tmp126,
	add	x0, x0, :lo12:.LC8	//, tmp126,
	bl	__assert_fail		//
.L18:
	mov	w0, 0	// _26,
// problem37.c:30: }
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
