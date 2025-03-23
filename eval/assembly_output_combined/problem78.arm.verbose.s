	.arch armv8-a
	.file	"problem78.c"
// GNU C17 (Ubuntu 13.3.0-6ubuntu2~24.04) version 13.3.0 (aarch64-linux-gnu)
//	compiled by GNU C version 13.3.0, GMP version 6.3.0, MPFR version 4.2.1, MPC version 1.3.1, isl version isl-0.26-GMP

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
// problem78.c:6:     for (int i = 0; i * i * i <= abs(a); i++)
	str	wzr, [sp, 28]	//, i
// problem78.c:6:     for (int i = 0; i * i * i <= abs(a); i++)
	b	.L2		//
.L5:
// problem78.c:7:         if (i * i * i == abs(a)) return 1;
	ldr	w0, [sp, 28]	// tmp100, i
	mul	w1, w0, w0	// _1, tmp100, tmp100
// problem78.c:7:         if (i * i * i == abs(a)) return 1;
	ldr	w0, [sp, 28]	// tmp101, i
	mul	w1, w1, w0	// _2, _1, tmp101
// problem78.c:7:         if (i * i * i == abs(a)) return 1;
	ldr	w0, [sp, 12]	// tmp102, a
	cmp	w0, 0	// tmp102,
	csneg	w0, w0, w0, ge	// _3, tmp102, tmp102,
// problem78.c:7:         if (i * i * i == abs(a)) return 1;
	cmp	w1, w0	// _2, _3
	bne	.L3		//,
// problem78.c:7:         if (i * i * i == abs(a)) return 1;
	mov	w0, 1	// _8,
// problem78.c:7:         if (i * i * i == abs(a)) return 1;
	b	.L4		//
.L3:
// problem78.c:6:     for (int i = 0; i * i * i <= abs(a); i++)
	ldr	w0, [sp, 28]	// tmp104, i
	add	w0, w0, 1	// tmp103, tmp104,
	str	w0, [sp, 28]	// tmp103, i
.L2:
// problem78.c:6:     for (int i = 0; i * i * i <= abs(a); i++)
	ldr	w0, [sp, 28]	// tmp105, i
	mul	w1, w0, w0	// _4, tmp105, tmp105
// problem78.c:6:     for (int i = 0; i * i * i <= abs(a); i++)
	ldr	w0, [sp, 28]	// tmp106, i
	mul	w1, w1, w0	// _5, _4, tmp106
// problem78.c:6:     for (int i = 0; i * i * i <= abs(a); i++)
	ldr	w0, [sp, 12]	// tmp107, a
	cmp	w0, 0	// tmp107,
	csneg	w0, w0, w0, ge	// _6, tmp107, tmp107,
// problem78.c:6:     for (int i = 0; i * i * i <= abs(a); i++)
	cmp	w1, w0	// _5, _6
	ble	.L5		//,
// problem78.c:8:     return 0;
	mov	w0, 0	// _8,
.L4:
// problem78.c:9: }
	add	sp, sp, 32	//,,
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE6:
	.size	func0, .-func0
	.section	.rodata
	.align	3
.LC0:
	.string	"problem78.c"
	.align	3
.LC1:
	.string	"func0(1) == 1"
	.align	3
.LC2:
	.string	"func0(2) == 0"
	.align	3
.LC3:
	.string	"func0(-1) == 1"
	.align	3
.LC4:
	.string	"func0(64) == 1"
	.align	3
.LC5:
	.string	"func0(180) == 0"
	.align	3
.LC6:
	.string	"func0(1000) == 1"
	.align	3
.LC7:
	.string	"func0(0) == 1"
	.align	3
.LC8:
	.string	"func0(1729) == 0"
	.align	3
.LC9:
	.string	"All tests passed."
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
// problem78.c:17:     assert(func0(1) == 1);
	mov	w0, 1	//,
	bl	func0		//
// problem78.c:17:     assert(func0(1) == 1);
	cmp	w0, 1	// _1,
	beq	.L7		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp102,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp102,
	mov	w2, 17	//,
	adrp	x0, .LC0	// tmp103,
	add	x1, x0, :lo12:.LC0	//, tmp103,
	adrp	x0, .LC1	// tmp104,
	add	x0, x0, :lo12:.LC1	//, tmp104,
	bl	__assert_fail		//
.L7:
// problem78.c:18:     assert(func0(2) == 0);
	mov	w0, 2	//,
	bl	func0		//
// problem78.c:18:     assert(func0(2) == 0);
	cmp	w0, 0	// _2,
	beq	.L8		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp105,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp105,
	mov	w2, 18	//,
	adrp	x0, .LC0	// tmp106,
	add	x1, x0, :lo12:.LC0	//, tmp106,
	adrp	x0, .LC2	// tmp107,
	add	x0, x0, :lo12:.LC2	//, tmp107,
	bl	__assert_fail		//
.L8:
// problem78.c:19:     assert(func0(-1) == 1);
	mov	w0, -1	//,
	bl	func0		//
// problem78.c:19:     assert(func0(-1) == 1);
	cmp	w0, 1	// _3,
	beq	.L9		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp108,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp108,
	mov	w2, 19	//,
	adrp	x0, .LC0	// tmp109,
	add	x1, x0, :lo12:.LC0	//, tmp109,
	adrp	x0, .LC3	// tmp110,
	add	x0, x0, :lo12:.LC3	//, tmp110,
	bl	__assert_fail		//
.L9:
// problem78.c:20:     assert(func0(64) == 1);
	mov	w0, 64	//,
	bl	func0		//
// problem78.c:20:     assert(func0(64) == 1);
	cmp	w0, 1	// _4,
	beq	.L10		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp111,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp111,
	mov	w2, 20	//,
	adrp	x0, .LC0	// tmp112,
	add	x1, x0, :lo12:.LC0	//, tmp112,
	adrp	x0, .LC4	// tmp113,
	add	x0, x0, :lo12:.LC4	//, tmp113,
	bl	__assert_fail		//
.L10:
// problem78.c:21:     assert(func0(180) == 0);
	mov	w0, 180	//,
	bl	func0		//
// problem78.c:21:     assert(func0(180) == 0);
	cmp	w0, 0	// _5,
	beq	.L11		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp114,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp114,
	mov	w2, 21	//,
	adrp	x0, .LC0	// tmp115,
	add	x1, x0, :lo12:.LC0	//, tmp115,
	adrp	x0, .LC5	// tmp116,
	add	x0, x0, :lo12:.LC5	//, tmp116,
	bl	__assert_fail		//
.L11:
// problem78.c:22:     assert(func0(1000) == 1);
	mov	w0, 1000	//,
	bl	func0		//
// problem78.c:22:     assert(func0(1000) == 1);
	cmp	w0, 1	// _6,
	beq	.L12		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp117,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp117,
	mov	w2, 22	//,
	adrp	x0, .LC0	// tmp118,
	add	x1, x0, :lo12:.LC0	//, tmp118,
	adrp	x0, .LC6	// tmp119,
	add	x0, x0, :lo12:.LC6	//, tmp119,
	bl	__assert_fail		//
.L12:
// problem78.c:23:     assert(func0(0) == 1);
	mov	w0, 0	//,
	bl	func0		//
// problem78.c:23:     assert(func0(0) == 1);
	cmp	w0, 1	// _7,
	beq	.L13		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp120,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp120,
	mov	w2, 23	//,
	adrp	x0, .LC0	// tmp121,
	add	x1, x0, :lo12:.LC0	//, tmp121,
	adrp	x0, .LC7	// tmp122,
	add	x0, x0, :lo12:.LC7	//, tmp122,
	bl	__assert_fail		//
.L13:
// problem78.c:24:     assert(func0(1729) == 0);
	mov	w0, 1729	//,
	bl	func0		//
// problem78.c:24:     assert(func0(1729) == 0);
	cmp	w0, 0	// _8,
	beq	.L14		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp123,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp123,
	mov	w2, 24	//,
	adrp	x0, .LC0	// tmp124,
	add	x1, x0, :lo12:.LC0	//, tmp124,
	adrp	x0, .LC8	// tmp125,
	add	x0, x0, :lo12:.LC8	//, tmp125,
	bl	__assert_fail		//
.L14:
// problem78.c:26:     printf("All tests passed.\n");
	adrp	x0, .LC9	// tmp126,
	add	x0, x0, :lo12:.LC9	//, tmp126,
	bl	puts		//
// problem78.c:27:     return 0;
	mov	w0, 0	// _27,
// problem78.c:28: }
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
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
