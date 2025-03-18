	.arch armv8-a
	.file	"problem50.c"
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
	sub	sp, sp, #32	//,,
	.cfi_def_cfa_offset 32
	str	w0, [sp, 12]	// n, n
	str	w1, [sp, 8]	// p, p
// problem50.c:4:     int out = 1;
	mov	w0, 1	// tmp95,
	str	w0, [sp, 24]	// tmp95, out
// problem50.c:5:     for (int i = 0; i < n; i++)
	str	wzr, [sp, 28]	//, i
// problem50.c:5:     for (int i = 0; i < n; i++)
	b	.L2		//
.L3:
// problem50.c:6:         out = (out * 2) % p;
	ldr	w0, [sp, 24]	// tmp96, out
	lsl	w0, w0, 1	// _1, tmp96,
// problem50.c:6:         out = (out * 2) % p;
	ldr	w1, [sp, 8]	// tmp111, p
	sdiv	w2, w0, w1	// tmp110, _1, tmp111
	ldr	w1, [sp, 8]	// tmp113, p
	mul	w1, w2, w1	// tmp112, tmp110, tmp113
	sub	w0, w0, w1	// tmp114, _1, tmp112
	str	w0, [sp, 24]	// tmp114, out
// problem50.c:5:     for (int i = 0; i < n; i++)
	ldr	w0, [sp, 28]	// tmp116, i
	add	w0, w0, 1	// tmp115, tmp116,
	str	w0, [sp, 28]	// tmp115, i
.L2:
// problem50.c:5:     for (int i = 0; i < n; i++)
	ldr	w1, [sp, 28]	// tmp117, i
	ldr	w0, [sp, 12]	// tmp118, n
	cmp	w1, w0	// tmp117, tmp118
	blt	.L3		//,
// problem50.c:7:     return out;
	ldr	w0, [sp, 24]	// _7, out
// problem50.c:8: }
	add	sp, sp, 32	//,,
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE0:
	.size	func0, .-func0
	.section	.rodata
	.align	3
.LC0:
	.string	"problem50.c"
	.align	3
.LC1:
	.string	"func0(3, 5) == 3"
	.align	3
.LC2:
	.string	"func0(1101, 101) == 2"
	.align	3
.LC3:
	.string	"func0(0, 101) == 1"
	.align	3
.LC4:
	.string	"func0(3, 11) == 8"
	.align	3
.LC5:
	.string	"func0(100, 101) == 1"
	.align	3
.LC6:
	.string	"func0(30, 5) == 4"
	.align	3
.LC7:
	.string	"func0(31, 5) == 3"
	.align	3
.LC8:
	.string	"All tests passed."
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
// problem50.c:16:     assert(func0(3, 5) == 3);
	mov	w1, 5	//,
	mov	w0, 3	//,
	bl	func0		//
// problem50.c:16:     assert(func0(3, 5) == 3);
	cmp	w0, 3	// _1,
	beq	.L6		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp101,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp101,
	mov	w2, 16	//,
	adrp	x0, .LC0	// tmp102,
	add	x1, x0, :lo12:.LC0	//, tmp102,
	adrp	x0, .LC1	// tmp103,
	add	x0, x0, :lo12:.LC1	//, tmp103,
	bl	__assert_fail		//
.L6:
// problem50.c:17:     assert(func0(1101, 101) == 2);
	mov	w1, 101	//,
	mov	w0, 1101	//,
	bl	func0		//
// problem50.c:17:     assert(func0(1101, 101) == 2);
	cmp	w0, 2	// _2,
	beq	.L7		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp104,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp104,
	mov	w2, 17	//,
	adrp	x0, .LC0	// tmp105,
	add	x1, x0, :lo12:.LC0	//, tmp105,
	adrp	x0, .LC2	// tmp106,
	add	x0, x0, :lo12:.LC2	//, tmp106,
	bl	__assert_fail		//
.L7:
// problem50.c:18:     assert(func0(0, 101) == 1);
	mov	w1, 101	//,
	mov	w0, 0	//,
	bl	func0		//
// problem50.c:18:     assert(func0(0, 101) == 1);
	cmp	w0, 1	// _3,
	beq	.L8		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp107,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp107,
	mov	w2, 18	//,
	adrp	x0, .LC0	// tmp108,
	add	x1, x0, :lo12:.LC0	//, tmp108,
	adrp	x0, .LC3	// tmp109,
	add	x0, x0, :lo12:.LC3	//, tmp109,
	bl	__assert_fail		//
.L8:
// problem50.c:19:     assert(func0(3, 11) == 8);
	mov	w1, 11	//,
	mov	w0, 3	//,
	bl	func0		//
// problem50.c:19:     assert(func0(3, 11) == 8);
	cmp	w0, 8	// _4,
	beq	.L9		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp110,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp110,
	mov	w2, 19	//,
	adrp	x0, .LC0	// tmp111,
	add	x1, x0, :lo12:.LC0	//, tmp111,
	adrp	x0, .LC4	// tmp112,
	add	x0, x0, :lo12:.LC4	//, tmp112,
	bl	__assert_fail		//
.L9:
// problem50.c:20:     assert(func0(100, 101) == 1);
	mov	w1, 101	//,
	mov	w0, 100	//,
	bl	func0		//
// problem50.c:20:     assert(func0(100, 101) == 1);
	cmp	w0, 1	// _5,
	beq	.L10		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp113,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp113,
	mov	w2, 20	//,
	adrp	x0, .LC0	// tmp114,
	add	x1, x0, :lo12:.LC0	//, tmp114,
	adrp	x0, .LC5	// tmp115,
	add	x0, x0, :lo12:.LC5	//, tmp115,
	bl	__assert_fail		//
.L10:
// problem50.c:21:     assert(func0(30, 5) == 4);
	mov	w1, 5	//,
	mov	w0, 30	//,
	bl	func0		//
// problem50.c:21:     assert(func0(30, 5) == 4);
	cmp	w0, 4	// _6,
	beq	.L11		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp116,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp116,
	mov	w2, 21	//,
	adrp	x0, .LC0	// tmp117,
	add	x1, x0, :lo12:.LC0	//, tmp117,
	adrp	x0, .LC6	// tmp118,
	add	x0, x0, :lo12:.LC6	//, tmp118,
	bl	__assert_fail		//
.L11:
// problem50.c:22:     assert(func0(31, 5) == 3);
	mov	w1, 5	//,
	mov	w0, 31	//,
	bl	func0		//
// problem50.c:22:     assert(func0(31, 5) == 3);
	cmp	w0, 3	// _7,
	beq	.L12		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp119,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp119,
	mov	w2, 22	//,
	adrp	x0, .LC0	// tmp120,
	add	x1, x0, :lo12:.LC0	//, tmp120,
	adrp	x0, .LC7	// tmp121,
	add	x0, x0, :lo12:.LC7	//, tmp121,
	bl	__assert_fail		//
.L12:
// problem50.c:24:     printf("All tests passed.\n");
	adrp	x0, .LC8	// tmp122,
	add	x0, x0, :lo12:.LC8	//, tmp122,
	bl	puts		//
// problem50.c:25:     return 0;
	mov	w0, 0	// _24,
// problem50.c:26: }
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
