	.arch armv8-a
	.file	"problem128.c"
// GNU C17 (Ubuntu 13.3.0-6ubuntu2~24.04) version 13.3.0 (aarch64-linux-gnu)
//	compiled by GNU C version 13.3.0, GMP version 6.3.0, MPFR version 4.2.1, MPC version 1.3.1, isl version isl-0.26-GMP

// GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
// options passed: -mlittle-endian -mabi=lp64 -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection
	.text
	.section	.rodata
	.align	3
.LC0:
	.string	"NO"
	.align	3
.LC1:
	.string	"YES"
	.text
	.align	2
	.global	func0
	.type	func0, %function
func0:
.LFB0:
	.cfi_startproc
	sub	sp, sp, #32	//,,
	.cfi_def_cfa_offset 32
	str	w0, [sp, 12]	// interval1_start, interval1_start
	str	w1, [sp, 8]	// interval1_end, interval1_end
	str	w2, [sp, 4]	// interval2_start, interval2_start
	str	w3, [sp]	// interval2_end, interval2_end
// problem128.c:5:     inter1 = interval1_start > interval2_start ? interval1_start : interval2_start;
	ldr	w0, [sp, 12]	// tmp97, interval1_start
	ldr	w2, [sp, 4]	// tmp98, interval2_start
	ldr	w1, [sp, 4]	// tmp99, interval2_start
	cmp	w2, w0	// tmp98, tmp97
	csel	w0, w1, w0, ge	// tmp96, tmp99, tmp97,
	str	w0, [sp, 20]	// tmp96, inter1
// problem128.c:6:     inter2 = interval1_end < interval2_end ? interval1_end : interval2_end;
	ldr	w0, [sp, 8]	// tmp101, interval1_end
	ldr	w2, [sp]	// tmp102, interval2_end
	ldr	w1, [sp]	// tmp103, interval2_end
	cmp	w2, w0	// tmp102, tmp101
	csel	w0, w1, w0, le	// tmp100, tmp103, tmp101,
	str	w0, [sp, 24]	// tmp100, inter2
// problem128.c:7:     l = inter2 - inter1;
	ldr	w1, [sp, 24]	// tmp105, inter2
	ldr	w0, [sp, 20]	// tmp106, inter1
	sub	w0, w1, w0	// tmp104, tmp105, tmp106
	str	w0, [sp, 28]	// tmp104, l
// problem128.c:9:     if (l < 2) return "NO";
	ldr	w0, [sp, 28]	// tmp107, l
	cmp	w0, 1	// tmp107,
	bgt	.L2		//,
// problem128.c:9:     if (l < 2) return "NO";
	adrp	x0, .LC0	// tmp108,
	add	x0, x0, :lo12:.LC0	// _4, tmp108,
// problem128.c:9:     if (l < 2) return "NO";
	b	.L3		//
.L2:
// problem128.c:11:     for (i = 2; i * i <= l; i++)
	mov	w0, 2	// tmp109,
	str	w0, [sp, 16]	// tmp109, i
// problem128.c:11:     for (i = 2; i * i <= l; i++)
	b	.L4		//
.L6:
// problem128.c:12:         if (l % i == 0) return "NO";
	ldr	w0, [sp, 28]	// tmp110, l
	ldr	w1, [sp, 16]	// tmp123, i
	sdiv	w2, w0, w1	// tmp122, tmp110, tmp123
	ldr	w1, [sp, 16]	// tmp125, i
	mul	w1, w2, w1	// tmp124, tmp122, tmp125
	sub	w0, w0, w1	// _1, tmp110, tmp124
// problem128.c:12:         if (l % i == 0) return "NO";
	cmp	w0, 0	// _1,
	bne	.L5		//,
// problem128.c:12:         if (l % i == 0) return "NO";
	adrp	x0, .LC0	// tmp126,
	add	x0, x0, :lo12:.LC0	// _4, tmp126,
// problem128.c:12:         if (l % i == 0) return "NO";
	b	.L3		//
.L5:
// problem128.c:11:     for (i = 2; i * i <= l; i++)
	ldr	w0, [sp, 16]	// tmp128, i
	add	w0, w0, 1	// tmp127, tmp128,
	str	w0, [sp, 16]	// tmp127, i
.L4:
// problem128.c:11:     for (i = 2; i * i <= l; i++)
	ldr	w0, [sp, 16]	// tmp129, i
	mul	w0, w0, w0	// _2, tmp129, tmp129
// problem128.c:11:     for (i = 2; i * i <= l; i++)
	ldr	w1, [sp, 28]	// tmp130, l
	cmp	w1, w0	// tmp130, _2
	bge	.L6		//,
// problem128.c:14:     return "YES";
	adrp	x0, .LC1	// tmp131,
	add	x0, x0, :lo12:.LC1	// _4, tmp131,
.L3:
// problem128.c:15: }
	add	sp, sp, 32	//,,
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE0:
	.size	func0, .-func0
	.section	.rodata
	.align	3
.LC2:
	.string	"problem128.c"
	.align	3
.LC3:
	.string	"strcmp(func0(1, 2, 2, 3), \"NO\") == 0"
	.align	3
.LC4:
	.string	"strcmp(func0(-1, 1, 0, 4), \"NO\") == 0"
	.align	3
.LC5:
	.string	"strcmp(func0(-3, -1, -5, 5), \"YES\") == 0"
	.align	3
.LC6:
	.string	"strcmp(func0(-2, 2, -4, 0), \"YES\") == 0"
	.align	3
.LC7:
	.string	"strcmp(func0(-11, 2, -1, -1), \"NO\") == 0"
	.align	3
.LC8:
	.string	"strcmp(func0(1, 2, 3, 5), \"NO\") == 0"
	.align	3
.LC9:
	.string	"strcmp(func0(1, 2, 1, 2), \"NO\") == 0"
	.align	3
.LC10:
	.string	"strcmp(func0(-2, -2, -3, -2), \"NO\") == 0"
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
// problem128.c:24:     assert(strcmp(func0(1, 2, 2, 3), "NO") == 0);
	mov	w3, 3	//,
	mov	w2, 2	//,
	mov	w1, 2	//,
	mov	w0, 1	//,
	bl	func0		//
	mov	x2, x0	// _1,
// problem128.c:24:     assert(strcmp(func0(1, 2, 2, 3), "NO") == 0);
	adrp	x0, .LC0	// tmp110,
	add	x1, x0, :lo12:.LC0	//, tmp110,
	mov	x0, x2	//, _1
	bl	strcmp		//
// problem128.c:24:     assert(strcmp(func0(1, 2, 2, 3), "NO") == 0);
	cmp	w0, 0	// _2,
	beq	.L8		//,
// problem128.c:24:     assert(strcmp(func0(1, 2, 2, 3), "NO") == 0);
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp111,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp111,
	mov	w2, 24	//,
	adrp	x0, .LC2	// tmp112,
	add	x1, x0, :lo12:.LC2	//, tmp112,
	adrp	x0, .LC3	// tmp113,
	add	x0, x0, :lo12:.LC3	//, tmp113,
	bl	__assert_fail		//
.L8:
// problem128.c:25:     assert(strcmp(func0(-1, 1, 0, 4), "NO") == 0);
	mov	w3, 4	//,
	mov	w2, 0	//,
	mov	w1, 1	//,
	mov	w0, -1	//,
	bl	func0		//
	mov	x2, x0	// _3,
// problem128.c:25:     assert(strcmp(func0(-1, 1, 0, 4), "NO") == 0);
	adrp	x0, .LC0	// tmp114,
	add	x1, x0, :lo12:.LC0	//, tmp114,
	mov	x0, x2	//, _3
	bl	strcmp		//
// problem128.c:25:     assert(strcmp(func0(-1, 1, 0, 4), "NO") == 0);
	cmp	w0, 0	// _4,
	beq	.L9		//,
// problem128.c:25:     assert(strcmp(func0(-1, 1, 0, 4), "NO") == 0);
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp115,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp115,
	mov	w2, 25	//,
	adrp	x0, .LC2	// tmp116,
	add	x1, x0, :lo12:.LC2	//, tmp116,
	adrp	x0, .LC4	// tmp117,
	add	x0, x0, :lo12:.LC4	//, tmp117,
	bl	__assert_fail		//
.L9:
// problem128.c:26:     assert(strcmp(func0(-3, -1, -5, 5), "YES") == 0);
	mov	w3, 5	//,
	mov	w2, -5	//,
	mov	w1, -1	//,
	mov	w0, -3	//,
	bl	func0		//
	mov	x2, x0	// _5,
// problem128.c:26:     assert(strcmp(func0(-3, -1, -5, 5), "YES") == 0);
	adrp	x0, .LC1	// tmp118,
	add	x1, x0, :lo12:.LC1	//, tmp118,
	mov	x0, x2	//, _5
	bl	strcmp		//
// problem128.c:26:     assert(strcmp(func0(-3, -1, -5, 5), "YES") == 0);
	cmp	w0, 0	// _6,
	beq	.L10		//,
// problem128.c:26:     assert(strcmp(func0(-3, -1, -5, 5), "YES") == 0);
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp119,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp119,
	mov	w2, 26	//,
	adrp	x0, .LC2	// tmp120,
	add	x1, x0, :lo12:.LC2	//, tmp120,
	adrp	x0, .LC5	// tmp121,
	add	x0, x0, :lo12:.LC5	//, tmp121,
	bl	__assert_fail		//
.L10:
// problem128.c:27:     assert(strcmp(func0(-2, 2, -4, 0), "YES") == 0);
	mov	w3, 0	//,
	mov	w2, -4	//,
	mov	w1, 2	//,
	mov	w0, -2	//,
	bl	func0		//
	mov	x2, x0	// _7,
// problem128.c:27:     assert(strcmp(func0(-2, 2, -4, 0), "YES") == 0);
	adrp	x0, .LC1	// tmp122,
	add	x1, x0, :lo12:.LC1	//, tmp122,
	mov	x0, x2	//, _7
	bl	strcmp		//
// problem128.c:27:     assert(strcmp(func0(-2, 2, -4, 0), "YES") == 0);
	cmp	w0, 0	// _8,
	beq	.L11		//,
// problem128.c:27:     assert(strcmp(func0(-2, 2, -4, 0), "YES") == 0);
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp123,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp123,
	mov	w2, 27	//,
	adrp	x0, .LC2	// tmp124,
	add	x1, x0, :lo12:.LC2	//, tmp124,
	adrp	x0, .LC6	// tmp125,
	add	x0, x0, :lo12:.LC6	//, tmp125,
	bl	__assert_fail		//
.L11:
// problem128.c:28:     assert(strcmp(func0(-11, 2, -1, -1), "NO") == 0);
	mov	w3, -1	//,
	mov	w2, -1	//,
	mov	w1, 2	//,
	mov	w0, -11	//,
	bl	func0		//
	mov	x2, x0	// _9,
// problem128.c:28:     assert(strcmp(func0(-11, 2, -1, -1), "NO") == 0);
	adrp	x0, .LC0	// tmp126,
	add	x1, x0, :lo12:.LC0	//, tmp126,
	mov	x0, x2	//, _9
	bl	strcmp		//
// problem128.c:28:     assert(strcmp(func0(-11, 2, -1, -1), "NO") == 0);
	cmp	w0, 0	// _10,
	beq	.L12		//,
// problem128.c:28:     assert(strcmp(func0(-11, 2, -1, -1), "NO") == 0);
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp127,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp127,
	mov	w2, 28	//,
	adrp	x0, .LC2	// tmp128,
	add	x1, x0, :lo12:.LC2	//, tmp128,
	adrp	x0, .LC7	// tmp129,
	add	x0, x0, :lo12:.LC7	//, tmp129,
	bl	__assert_fail		//
.L12:
// problem128.c:29:     assert(strcmp(func0(1, 2, 3, 5), "NO") == 0);
	mov	w3, 5	//,
	mov	w2, 3	//,
	mov	w1, 2	//,
	mov	w0, 1	//,
	bl	func0		//
	mov	x2, x0	// _11,
// problem128.c:29:     assert(strcmp(func0(1, 2, 3, 5), "NO") == 0);
	adrp	x0, .LC0	// tmp130,
	add	x1, x0, :lo12:.LC0	//, tmp130,
	mov	x0, x2	//, _11
	bl	strcmp		//
// problem128.c:29:     assert(strcmp(func0(1, 2, 3, 5), "NO") == 0);
	cmp	w0, 0	// _12,
	beq	.L13		//,
// problem128.c:29:     assert(strcmp(func0(1, 2, 3, 5), "NO") == 0);
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp131,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp131,
	mov	w2, 29	//,
	adrp	x0, .LC2	// tmp132,
	add	x1, x0, :lo12:.LC2	//, tmp132,
	adrp	x0, .LC8	// tmp133,
	add	x0, x0, :lo12:.LC8	//, tmp133,
	bl	__assert_fail		//
.L13:
// problem128.c:30:     assert(strcmp(func0(1, 2, 1, 2), "NO") == 0);
	mov	w3, 2	//,
	mov	w2, 1	//,
	mov	w1, 2	//,
	mov	w0, 1	//,
	bl	func0		//
	mov	x2, x0	// _13,
// problem128.c:30:     assert(strcmp(func0(1, 2, 1, 2), "NO") == 0);
	adrp	x0, .LC0	// tmp134,
	add	x1, x0, :lo12:.LC0	//, tmp134,
	mov	x0, x2	//, _13
	bl	strcmp		//
// problem128.c:30:     assert(strcmp(func0(1, 2, 1, 2), "NO") == 0);
	cmp	w0, 0	// _14,
	beq	.L14		//,
// problem128.c:30:     assert(strcmp(func0(1, 2, 1, 2), "NO") == 0);
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp135,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp135,
	mov	w2, 30	//,
	adrp	x0, .LC2	// tmp136,
	add	x1, x0, :lo12:.LC2	//, tmp136,
	adrp	x0, .LC9	// tmp137,
	add	x0, x0, :lo12:.LC9	//, tmp137,
	bl	__assert_fail		//
.L14:
// problem128.c:31:     assert(strcmp(func0(-2, -2, -3, -2), "NO") == 0);
	mov	w3, -2	//,
	mov	w2, -3	//,
	mov	w1, -2	//,
	mov	w0, -2	//,
	bl	func0		//
	mov	x2, x0	// _15,
// problem128.c:31:     assert(strcmp(func0(-2, -2, -3, -2), "NO") == 0);
	adrp	x0, .LC0	// tmp138,
	add	x1, x0, :lo12:.LC0	//, tmp138,
	mov	x0, x2	//, _15
	bl	strcmp		//
// problem128.c:31:     assert(strcmp(func0(-2, -2, -3, -2), "NO") == 0);
	cmp	w0, 0	// _16,
	beq	.L15		//,
// problem128.c:31:     assert(strcmp(func0(-2, -2, -3, -2), "NO") == 0);
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp139,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp139,
	mov	w2, 31	//,
	adrp	x0, .LC2	// tmp140,
	add	x1, x0, :lo12:.LC2	//, tmp140,
	adrp	x0, .LC10	// tmp141,
	add	x0, x0, :lo12:.LC10	//, tmp141,
	bl	__assert_fail		//
.L15:
// problem128.c:33:     return 0;
	mov	w0, 0	// _34,
// problem128.c:34: }
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
