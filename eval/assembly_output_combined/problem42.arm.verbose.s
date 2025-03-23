	.arch armv8-a
	.file	"problem42.c"
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
	sub	sp, sp, #16	//,,
	.cfi_def_cfa_offset 16
	str	w0, [sp, 12]	// n, n
// problem42.c:4:     return n * n;
	ldr	w0, [sp, 12]	// tmp94, n
	mul	w0, w0, w0	// _2, tmp94, tmp94
// problem42.c:5: }
	add	sp, sp, 16	//,,
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE0:
	.size	func0, .-func0
	.section	.rodata
	.align	3
.LC0:
	.string	"problem42.c"
	.align	3
.LC1:
	.string	"func0(2) == 4"
	.align	3
.LC2:
	.string	"func0(3) == 9"
	.align	3
.LC3:
	.string	"func0(4) == 16"
	.align	3
.LC4:
	.string	"func0(8) == 64"
	.align	3
.LC5:
	.string	"func0(10) == 100"
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
// problem42.c:13:     assert(func0(2) == 4);
	mov	w0, 2	//,
	bl	func0		//
	cmp	w0, 4	// _1,
	beq	.L4		//,
// problem42.c:13:     assert(func0(2) == 4);
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp99,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp99,
	mov	w2, 13	//,
	adrp	x0, .LC0	// tmp100,
	add	x1, x0, :lo12:.LC0	//, tmp100,
	adrp	x0, .LC1	// tmp101,
	add	x0, x0, :lo12:.LC1	//, tmp101,
	bl	__assert_fail		//
.L4:
// problem42.c:14:     assert(func0(3) == 9);
	mov	w0, 3	//,
	bl	func0		//
	cmp	w0, 9	// _2,
	beq	.L5		//,
// problem42.c:14:     assert(func0(3) == 9);
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp102,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp102,
	mov	w2, 14	//,
	adrp	x0, .LC0	// tmp103,
	add	x1, x0, :lo12:.LC0	//, tmp103,
	adrp	x0, .LC2	// tmp104,
	add	x0, x0, :lo12:.LC2	//, tmp104,
	bl	__assert_fail		//
.L5:
// problem42.c:15:     assert(func0(4) == 16);
	mov	w0, 4	//,
	bl	func0		//
	cmp	w0, 16	// _3,
	beq	.L6		//,
// problem42.c:15:     assert(func0(4) == 16);
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp105,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp105,
	mov	w2, 15	//,
	adrp	x0, .LC0	// tmp106,
	add	x1, x0, :lo12:.LC0	//, tmp106,
	adrp	x0, .LC3	// tmp107,
	add	x0, x0, :lo12:.LC3	//, tmp107,
	bl	__assert_fail		//
.L6:
// problem42.c:16:     assert(func0(8) == 64);
	mov	w0, 8	//,
	bl	func0		//
	cmp	w0, 64	// _4,
	beq	.L7		//,
// problem42.c:16:     assert(func0(8) == 64);
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp108,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp108,
	mov	w2, 16	//,
	adrp	x0, .LC0	// tmp109,
	add	x1, x0, :lo12:.LC0	//, tmp109,
	adrp	x0, .LC4	// tmp110,
	add	x0, x0, :lo12:.LC4	//, tmp110,
	bl	__assert_fail		//
.L7:
// problem42.c:17:     assert(func0(10) == 100);
	mov	w0, 10	//,
	bl	func0		//
	cmp	w0, 100	// _5,
	beq	.L8		//,
// problem42.c:17:     assert(func0(10) == 100);
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp111,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp111,
	mov	w2, 17	//,
	adrp	x0, .LC0	// tmp112,
	add	x1, x0, :lo12:.LC0	//, tmp112,
	adrp	x0, .LC5	// tmp113,
	add	x0, x0, :lo12:.LC5	//, tmp113,
	bl	__assert_fail		//
.L8:
// problem42.c:19:     return 0;
	mov	w0, 0	// _17,
// problem42.c:20: }
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
