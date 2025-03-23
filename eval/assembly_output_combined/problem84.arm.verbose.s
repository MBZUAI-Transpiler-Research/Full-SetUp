	.arch armv8-a
	.file	"problem84.c"
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
// problem84.c:4:     if (n < 1) return 0;
	ldr	w0, [sp, 12]	// tmp94, n
	cmp	w0, 0	// tmp94,
	bgt	.L2		//,
// problem84.c:4:     if (n < 1) return 0;
	mov	w0, 0	// _3,
	b	.L3		//
.L2:
// problem84.c:5:     if (n == 1) return 1;
	ldr	w0, [sp, 12]	// tmp95, n
	cmp	w0, 1	// tmp95,
	bne	.L4		//,
// problem84.c:5:     if (n == 1) return 1;
	mov	w0, 1	// _3,
	b	.L3		//
.L4:
// problem84.c:6:     int out = 18;
	mov	w0, 18	// tmp96,
	str	w0, [sp, 24]	// tmp96, out
// problem84.c:7:     for (int i = 2; i < n; i++)
	mov	w0, 2	// tmp97,
	str	w0, [sp, 28]	// tmp97, i
// problem84.c:7:     for (int i = 2; i < n; i++)
	b	.L5		//
.L6:
// problem84.c:8:         out = out * 10;
	ldr	w1, [sp, 24]	// tmp98, out
	mov	w0, w1	// tmp99, tmp98
	lsl	w0, w0, 2	// tmp100, tmp99,
	add	w0, w0, w1	// tmp99, tmp99, tmp98
	lsl	w0, w0, 1	// tmp101, tmp99,
	str	w0, [sp, 24]	// tmp99, out
// problem84.c:7:     for (int i = 2; i < n; i++)
	ldr	w0, [sp, 28]	// tmp103, i
	add	w0, w0, 1	// tmp102, tmp103,
	str	w0, [sp, 28]	// tmp102, i
.L5:
// problem84.c:7:     for (int i = 2; i < n; i++)
	ldr	w1, [sp, 28]	// tmp104, i
	ldr	w0, [sp, 12]	// tmp105, n
	cmp	w1, w0	// tmp104, tmp105
	blt	.L6		//,
// problem84.c:9:     return out;
	ldr	w0, [sp, 24]	// _3, out
.L3:
// problem84.c:10: }
	add	sp, sp, 32	//,,
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE0:
	.size	func0, .-func0
	.section	.rodata
	.align	3
.LC0:
	.string	"problem84.c"
	.align	3
.LC1:
	.string	"func0(1) == 1"
	.align	3
.LC2:
	.string	"func0(2) == 18"
	.align	3
.LC3:
	.string	"func0(3) == 180"
	.align	3
.LC4:
	.string	"func0(4) == 1800"
	.align	3
.LC5:
	.string	"func0(5) == 18000"
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
// problem84.c:17:     assert(func0(1) == 1);
	mov	w0, 1	//,
	bl	func0		//
	cmp	w0, 1	// _1,
	beq	.L8		//,
// problem84.c:17:     assert(func0(1) == 1);
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp99,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp99,
	mov	w2, 17	//,
	adrp	x0, .LC0	// tmp100,
	add	x1, x0, :lo12:.LC0	//, tmp100,
	adrp	x0, .LC1	// tmp101,
	add	x0, x0, :lo12:.LC1	//, tmp101,
	bl	__assert_fail		//
.L8:
// problem84.c:18:     assert(func0(2) == 18);
	mov	w0, 2	//,
	bl	func0		//
	cmp	w0, 18	// _2,
	beq	.L9		//,
// problem84.c:18:     assert(func0(2) == 18);
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp102,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp102,
	mov	w2, 18	//,
	adrp	x0, .LC0	// tmp103,
	add	x1, x0, :lo12:.LC0	//, tmp103,
	adrp	x0, .LC2	// tmp104,
	add	x0, x0, :lo12:.LC2	//, tmp104,
	bl	__assert_fail		//
.L9:
// problem84.c:19:     assert(func0(3) == 180);
	mov	w0, 3	//,
	bl	func0		//
	cmp	w0, 180	// _3,
	beq	.L10		//,
// problem84.c:19:     assert(func0(3) == 180);
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp105,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp105,
	mov	w2, 19	//,
	adrp	x0, .LC0	// tmp106,
	add	x1, x0, :lo12:.LC0	//, tmp106,
	adrp	x0, .LC3	// tmp107,
	add	x0, x0, :lo12:.LC3	//, tmp107,
	bl	__assert_fail		//
.L10:
// problem84.c:20:     assert(func0(4) == 1800);
	mov	w0, 4	//,
	bl	func0		//
	cmp	w0, 1800	// _4,
	beq	.L11		//,
// problem84.c:20:     assert(func0(4) == 1800);
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp108,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp108,
	mov	w2, 20	//,
	adrp	x0, .LC0	// tmp109,
	add	x1, x0, :lo12:.LC0	//, tmp109,
	adrp	x0, .LC4	// tmp110,
	add	x0, x0, :lo12:.LC4	//, tmp110,
	bl	__assert_fail		//
.L11:
// problem84.c:21:     assert(func0(5) == 18000);
	mov	w0, 5	//,
	bl	func0		//
	mov	w1, w0	// _5,
	mov	w0, 18000	// tmp111,
	cmp	w1, w0	// _5, tmp111
	beq	.L12		//,
// problem84.c:21:     assert(func0(5) == 18000);
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp112,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp112,
	mov	w2, 21	//,
	adrp	x0, .LC0	// tmp113,
	add	x1, x0, :lo12:.LC0	//, tmp113,
	adrp	x0, .LC5	// tmp114,
	add	x0, x0, :lo12:.LC5	//, tmp114,
	bl	__assert_fail		//
.L12:
// problem84.c:23:     return 0;
	mov	w0, 0	// _17,
// problem84.c:24: }
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
