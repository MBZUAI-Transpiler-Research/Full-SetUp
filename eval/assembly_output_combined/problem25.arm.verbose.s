	.arch armv8-a
	.file	"problem25.c"
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
// problem25.c:4:     for (int i = 2; i * i <= n; i++)
	mov	w0, 2	// tmp96,
	str	w0, [sp, 28]	// tmp96, i
// problem25.c:4:     for (int i = 2; i * i <= n; i++)
	b	.L2		//
.L5:
// problem25.c:5:         if (n % i == 0) return n / i;
	ldr	w0, [sp, 12]	// tmp97, n
	ldr	w1, [sp, 28]	// tmp110, i
	sdiv	w2, w0, w1	// tmp109, tmp97, tmp110
	ldr	w1, [sp, 28]	// tmp112, i
	mul	w1, w2, w1	// tmp111, tmp109, tmp112
	sub	w0, w0, w1	// _1, tmp97, tmp111
// problem25.c:5:         if (n % i == 0) return n / i;
	cmp	w0, 0	// _1,
	bne	.L3		//,
// problem25.c:5:         if (n % i == 0) return n / i;
	ldr	w1, [sp, 12]	// tmp113, n
	ldr	w0, [sp, 28]	// tmp114, i
	sdiv	w0, w1, w0	// _4, tmp113, tmp114
// problem25.c:5:         if (n % i == 0) return n / i;
	b	.L4		//
.L3:
// problem25.c:4:     for (int i = 2; i * i <= n; i++)
	ldr	w0, [sp, 28]	// tmp116, i
	add	w0, w0, 1	// tmp115, tmp116,
	str	w0, [sp, 28]	// tmp115, i
.L2:
// problem25.c:4:     for (int i = 2; i * i <= n; i++)
	ldr	w0, [sp, 28]	// tmp117, i
	mul	w0, w0, w0	// _2, tmp117, tmp117
// problem25.c:4:     for (int i = 2; i * i <= n; i++)
	ldr	w1, [sp, 12]	// tmp118, n
	cmp	w1, w0	// tmp118, _2
	bge	.L5		//,
// problem25.c:6:     return 1;
	mov	w0, 1	// _4,
.L4:
// problem25.c:7: }
	add	sp, sp, 32	//,,
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE0:
	.size	func0, .-func0
	.section	.rodata
	.align	3
.LC0:
	.string	"problem25.c"
	.align	3
.LC1:
	.string	"func0(3) == 1"
	.align	3
.LC2:
	.string	"func0(7) == 1"
	.align	3
.LC3:
	.string	"func0(10) == 5"
	.align	3
.LC4:
	.string	"func0(100) == 50"
	.align	3
.LC5:
	.string	"func0(49) == 7"
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
// problem25.c:14:     assert(func0(3) == 1);
	mov	w0, 3	//,
	bl	func0		//
// problem25.c:14:     assert(func0(3) == 1);
	cmp	w0, 1	// _1,
	beq	.L7		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp99,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp99,
	mov	w2, 14	//,
	adrp	x0, .LC0	// tmp100,
	add	x1, x0, :lo12:.LC0	//, tmp100,
	adrp	x0, .LC1	// tmp101,
	add	x0, x0, :lo12:.LC1	//, tmp101,
	bl	__assert_fail		//
.L7:
// problem25.c:15:     assert(func0(7) == 1);
	mov	w0, 7	//,
	bl	func0		//
// problem25.c:15:     assert(func0(7) == 1);
	cmp	w0, 1	// _2,
	beq	.L8		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp102,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp102,
	mov	w2, 15	//,
	adrp	x0, .LC0	// tmp103,
	add	x1, x0, :lo12:.LC0	//, tmp103,
	adrp	x0, .LC2	// tmp104,
	add	x0, x0, :lo12:.LC2	//, tmp104,
	bl	__assert_fail		//
.L8:
// problem25.c:16:     assert(func0(10) == 5);
	mov	w0, 10	//,
	bl	func0		//
// problem25.c:16:     assert(func0(10) == 5);
	cmp	w0, 5	// _3,
	beq	.L9		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp105,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp105,
	mov	w2, 16	//,
	adrp	x0, .LC0	// tmp106,
	add	x1, x0, :lo12:.LC0	//, tmp106,
	adrp	x0, .LC3	// tmp107,
	add	x0, x0, :lo12:.LC3	//, tmp107,
	bl	__assert_fail		//
.L9:
// problem25.c:17:     assert(func0(100) == 50);
	mov	w0, 100	//,
	bl	func0		//
// problem25.c:17:     assert(func0(100) == 50);
	cmp	w0, 50	// _4,
	beq	.L10		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp108,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp108,
	mov	w2, 17	//,
	adrp	x0, .LC0	// tmp109,
	add	x1, x0, :lo12:.LC0	//, tmp109,
	adrp	x0, .LC4	// tmp110,
	add	x0, x0, :lo12:.LC4	//, tmp110,
	bl	__assert_fail		//
.L10:
// problem25.c:18:     assert(func0(49) == 7);
	mov	w0, 49	//,
	bl	func0		//
// problem25.c:18:     assert(func0(49) == 7);
	cmp	w0, 7	// _5,
	beq	.L11		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp111,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp111,
	mov	w2, 18	//,
	adrp	x0, .LC0	// tmp112,
	add	x1, x0, :lo12:.LC0	//, tmp112,
	adrp	x0, .LC5	// tmp113,
	add	x0, x0, :lo12:.LC5	//, tmp113,
	bl	__assert_fail		//
.L11:
// problem25.c:20:     return 0;
	mov	w0, 0	// _17,
// problem25.c:21: }
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
