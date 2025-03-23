	.arch armv8-a
	.file	"problem61.c"
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
	str	w0, [sp, 12]	// n, n
// problem61.c:4:     return n * (n + 1) / 2;
	ldr	w0, [sp, 12]	// tmp96, n
	add	w1, w0, 1	// _1, tmp96,
// problem61.c:4:     return n * (n + 1) / 2;
	ldr	w0, [sp, 12]	// tmp97, n
	mul	w0, w1, w0	// _2, _1, tmp97
// problem61.c:4:     return n * (n + 1) / 2;
	lsr	w1, w0, 31	// tmp98, _2,
	add	w0, w1, w0	// tmp99, tmp98, _2
	asr	w0, w0, 1	// tmp100, tmp99,
// problem61.c:5: }
	add	sp, sp, 16	//,,
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE0:
	.size	func0, .-func0
	.section	.rodata
	.align	3
.LC0:
	.string	"problem61.c"
	.align	3
.LC1:
	.string	"func0(1) == 1"
	.align	3
.LC2:
	.string	"func0(6) == 21"
	.align	3
.LC3:
	.string	"func0(11) == 66"
	.align	3
.LC4:
	.string	"func0(30) == 465"
	.align	3
.LC5:
	.string	"func0(100) == 5050"
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
// problem61.c:12:     assert(func0(1) == 1);
	mov	w0, 1	//,
	bl	func0		//
// problem61.c:12:     assert(func0(1) == 1);
	cmp	w0, 1	// _1,
	beq	.L4		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp99,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp99,
	mov	w2, 12	//,
	adrp	x0, .LC0	// tmp100,
	add	x1, x0, :lo12:.LC0	//, tmp100,
	adrp	x0, .LC1	// tmp101,
	add	x0, x0, :lo12:.LC1	//, tmp101,
	bl	__assert_fail		//
.L4:
// problem61.c:13:     assert(func0(6) == 21);
	mov	w0, 6	//,
	bl	func0		//
// problem61.c:13:     assert(func0(6) == 21);
	cmp	w0, 21	// _2,
	beq	.L5		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp102,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp102,
	mov	w2, 13	//,
	adrp	x0, .LC0	// tmp103,
	add	x1, x0, :lo12:.LC0	//, tmp103,
	adrp	x0, .LC2	// tmp104,
	add	x0, x0, :lo12:.LC2	//, tmp104,
	bl	__assert_fail		//
.L5:
// problem61.c:14:     assert(func0(11) == 66);
	mov	w0, 11	//,
	bl	func0		//
// problem61.c:14:     assert(func0(11) == 66);
	cmp	w0, 66	// _3,
	beq	.L6		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp105,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp105,
	mov	w2, 14	//,
	adrp	x0, .LC0	// tmp106,
	add	x1, x0, :lo12:.LC0	//, tmp106,
	adrp	x0, .LC3	// tmp107,
	add	x0, x0, :lo12:.LC3	//, tmp107,
	bl	__assert_fail		//
.L6:
// problem61.c:15:     assert(func0(30) == 465);
	mov	w0, 30	//,
	bl	func0		//
// problem61.c:15:     assert(func0(30) == 465);
	cmp	w0, 465	// _4,
	beq	.L7		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp108,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp108,
	mov	w2, 15	//,
	adrp	x0, .LC0	// tmp109,
	add	x1, x0, :lo12:.LC0	//, tmp109,
	adrp	x0, .LC4	// tmp110,
	add	x0, x0, :lo12:.LC4	//, tmp110,
	bl	__assert_fail		//
.L7:
// problem61.c:16:     assert(func0(100) == 5050);
	mov	w0, 100	//,
	bl	func0		//
	mov	w1, w0	// _5,
// problem61.c:16:     assert(func0(100) == 5050);
	mov	w0, 5050	// tmp111,
	cmp	w1, w0	// _5, tmp111
	beq	.L8		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp112,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp112,
	mov	w2, 16	//,
	adrp	x0, .LC0	// tmp113,
	add	x1, x0, :lo12:.LC0	//, tmp113,
	adrp	x0, .LC5	// tmp114,
	add	x0, x0, :lo12:.LC5	//, tmp114,
	bl	__assert_fail		//
.L8:
// problem61.c:18:     return 0;
	mov	w0, 0	// _17,
// problem61.c:19: }
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
