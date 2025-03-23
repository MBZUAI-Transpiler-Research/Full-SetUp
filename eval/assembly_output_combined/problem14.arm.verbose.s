	.arch armv8-a
	.file	"problem14.c"
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
	str	w0, [sp, 12]	// a, a
	str	w1, [sp, 8]	// b, b
// problem14.c:4:     while (b != 0) {
	b	.L2		//
.L3:
// problem14.c:5:         int m = a % b;
	ldr	w0, [sp, 12]	// tmp95, a
	ldr	w1, [sp, 8]	// tmp109, b
	sdiv	w2, w0, w1	// tmp108, tmp95, tmp109
	ldr	w1, [sp, 8]	// tmp111, b
	mul	w1, w2, w1	// tmp110, tmp108, tmp111
	sub	w0, w0, w1	// tmp112, tmp95, tmp110
	str	w0, [sp, 28]	// tmp112, m
// problem14.c:6:         a = b;
	ldr	w0, [sp, 8]	// tmp113, b
	str	w0, [sp, 12]	// tmp113, a
// problem14.c:7:         b = m;
	ldr	w0, [sp, 28]	// tmp114, m
	str	w0, [sp, 8]	// tmp114, b
.L2:
// problem14.c:4:     while (b != 0) {
	ldr	w0, [sp, 8]	// tmp115, b
	cmp	w0, 0	// tmp115,
	bne	.L3		//,
// problem14.c:9:     return a;
	ldr	w0, [sp, 12]	// _5, a
// problem14.c:10: }
	add	sp, sp, 32	//,,
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE0:
	.size	func0, .-func0
	.section	.rodata
	.align	3
.LC0:
	.string	"problem14.c"
	.align	3
.LC1:
	.string	"func0(3, 7) == 1"
	.align	3
.LC2:
	.string	"func0(10, 15) == 5"
	.align	3
.LC3:
	.string	"func0(49, 14) == 7"
	.align	3
.LC4:
	.string	"func0(144, 60) == 12"
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
// problem14.c:17:     assert(func0(3, 7) == 1);
	mov	w1, 7	//,
	mov	w0, 3	//,
	bl	func0		//
	cmp	w0, 1	// _1,
	beq	.L6		//,
// problem14.c:17:     assert(func0(3, 7) == 1);
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp98,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp98,
	mov	w2, 17	//,
	adrp	x0, .LC0	// tmp99,
	add	x1, x0, :lo12:.LC0	//, tmp99,
	adrp	x0, .LC1	// tmp100,
	add	x0, x0, :lo12:.LC1	//, tmp100,
	bl	__assert_fail		//
.L6:
// problem14.c:18:     assert(func0(10, 15) == 5);
	mov	w1, 15	//,
	mov	w0, 10	//,
	bl	func0		//
	cmp	w0, 5	// _2,
	beq	.L7		//,
// problem14.c:18:     assert(func0(10, 15) == 5);
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp101,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp101,
	mov	w2, 18	//,
	adrp	x0, .LC0	// tmp102,
	add	x1, x0, :lo12:.LC0	//, tmp102,
	adrp	x0, .LC2	// tmp103,
	add	x0, x0, :lo12:.LC2	//, tmp103,
	bl	__assert_fail		//
.L7:
// problem14.c:19:     assert(func0(49, 14) == 7);
	mov	w1, 14	//,
	mov	w0, 49	//,
	bl	func0		//
	cmp	w0, 7	// _3,
	beq	.L8		//,
// problem14.c:19:     assert(func0(49, 14) == 7);
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp104,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp104,
	mov	w2, 19	//,
	adrp	x0, .LC0	// tmp105,
	add	x1, x0, :lo12:.LC0	//, tmp105,
	adrp	x0, .LC3	// tmp106,
	add	x0, x0, :lo12:.LC3	//, tmp106,
	bl	__assert_fail		//
.L8:
// problem14.c:20:     assert(func0(144, 60) == 12);
	mov	w1, 60	//,
	mov	w0, 144	//,
	bl	func0		//
	cmp	w0, 12	// _4,
	beq	.L9		//,
// problem14.c:20:     assert(func0(144, 60) == 12);
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp107,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp107,
	mov	w2, 20	//,
	adrp	x0, .LC0	// tmp108,
	add	x1, x0, :lo12:.LC0	//, tmp108,
	adrp	x0, .LC4	// tmp109,
	add	x0, x0, :lo12:.LC4	//, tmp109,
	bl	__assert_fail		//
.L9:
// problem14.c:22:     return 0;
	mov	w0, 0	// _14,
// problem14.c:23: }
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
