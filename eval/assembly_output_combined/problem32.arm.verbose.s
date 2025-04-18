	.arch armv8-a
	.file	"problem32.c"
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
	str	x0, [sp, 8]	// n, n
// problem32.c:4:     if (n < 2) return false;
	ldr	x0, [sp, 8]	// tmp96, n
	cmp	x0, 1	// tmp96,
	bgt	.L2		//,
// problem32.c:4:     if (n < 2) return false;
	mov	w0, 0	// _4,
// problem32.c:4:     if (n < 2) return false;
	b	.L3		//
.L2:
// problem32.c:5:     for (long long i = 2; i * i <= n; i++)
	mov	x0, 2	// tmp97,
	str	x0, [sp, 24]	// tmp97, i
// problem32.c:5:     for (long long i = 2; i * i <= n; i++)
	b	.L4		//
.L6:
// problem32.c:6:         if (n % i == 0) return false;
	ldr	x0, [sp, 8]	// tmp98, n
	ldr	x1, [sp, 24]	// tmp103, i
	sdiv	x2, x0, x1	// tmp102, tmp98, tmp103
	ldr	x1, [sp, 24]	// tmp105, i
	mul	x1, x2, x1	// tmp104, tmp102, tmp105
	sub	x0, x0, x1	// _1, tmp98, tmp104
// problem32.c:6:         if (n % i == 0) return false;
	cmp	x0, 0	// _1,
	bne	.L5		//,
// problem32.c:6:         if (n % i == 0) return false;
	mov	w0, 0	// _4,
// problem32.c:6:         if (n % i == 0) return false;
	b	.L3		//
.L5:
// problem32.c:5:     for (long long i = 2; i * i <= n; i++)
	ldr	x0, [sp, 24]	// tmp107, i
	add	x0, x0, 1	// tmp106, tmp107,
	str	x0, [sp, 24]	// tmp106, i
.L4:
// problem32.c:5:     for (long long i = 2; i * i <= n; i++)
	ldr	x0, [sp, 24]	// tmp108, i
	mul	x0, x0, x0	// _2, tmp108, tmp108
// problem32.c:5:     for (long long i = 2; i * i <= n; i++)
	ldr	x1, [sp, 8]	// tmp109, n
	cmp	x1, x0	// tmp109, _2
	bge	.L6		//,
// problem32.c:7:     return true;
	mov	w0, 1	// _4,
.L3:
// problem32.c:8: }
	add	sp, sp, 32	//,,
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE0:
	.size	func0, .-func0
	.section	.rodata
	.align	3
.LC0:
	.string	"problem32.c"
	.align	3
.LC1:
	.string	"func0(6) == false"
	.align	3
.LC2:
	.string	"func0(101) == true"
	.align	3
.LC3:
	.string	"func0(11) == true"
	.align	3
.LC4:
	.string	"func0(13441) == true"
	.align	3
.LC5:
	.string	"func0(61) == true"
	.align	3
.LC6:
	.string	"func0(4) == false"
	.align	3
.LC7:
	.string	"func0(1) == false"
	.align	3
.LC8:
	.string	"func0(5) == true"
	.align	3
.LC9:
	.string	"func0(17) == true"
	.align	3
.LC10:
	.string	"func0(5 * 17) == false"
	.align	3
.LC11:
	.string	"func0(11 * 7) == false"
	.align	3
.LC12:
	.string	"func0(13441 * 19) == false"
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
// problem32.c:16:     assert(func0(6) == false);
	mov	x0, 6	//,
	bl	func0		//
	and	w0, w0, 255	// _1, tmp113
// problem32.c:16:     assert(func0(6) == false);
	eor	w0, w0, 1	// tmp114, _1,
	and	w0, w0, 255	// _2, tmp114
	and	w0, w0, 1	// tmp115, _2,
	cmp	w0, 0	// tmp115,
	bne	.L8		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp116,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp116,
	mov	w2, 16	//,
	adrp	x0, .LC0	// tmp117,
	add	x1, x0, :lo12:.LC0	//, tmp117,
	adrp	x0, .LC1	// tmp118,
	add	x0, x0, :lo12:.LC1	//, tmp118,
	bl	__assert_fail		//
.L8:
// problem32.c:17:     assert(func0(101) == true);
	mov	x0, 101	//,
	bl	func0		//
	and	w0, w0, 255	// _3, tmp119
// problem32.c:17:     assert(func0(101) == true);
	and	w0, w0, 1	// tmp120, _3,
	cmp	w0, 0	// tmp120,
	bne	.L9		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp121,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp121,
	mov	w2, 17	//,
	adrp	x0, .LC0	// tmp122,
	add	x1, x0, :lo12:.LC0	//, tmp122,
	adrp	x0, .LC2	// tmp123,
	add	x0, x0, :lo12:.LC2	//, tmp123,
	bl	__assert_fail		//
.L9:
// problem32.c:18:     assert(func0(11) == true);
	mov	x0, 11	//,
	bl	func0		//
	and	w0, w0, 255	// _4, tmp124
// problem32.c:18:     assert(func0(11) == true);
	and	w0, w0, 1	// tmp125, _4,
	cmp	w0, 0	// tmp125,
	bne	.L10		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp126,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp126,
	mov	w2, 18	//,
	adrp	x0, .LC0	// tmp127,
	add	x1, x0, :lo12:.LC0	//, tmp127,
	adrp	x0, .LC3	// tmp128,
	add	x0, x0, :lo12:.LC3	//, tmp128,
	bl	__assert_fail		//
.L10:
// problem32.c:19:     assert(func0(13441) == true);
	mov	x0, 13441	//,
	bl	func0		//
	and	w0, w0, 255	// _5, tmp129
// problem32.c:19:     assert(func0(13441) == true);
	and	w0, w0, 1	// tmp130, _5,
	cmp	w0, 0	// tmp130,
	bne	.L11		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp131,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp131,
	mov	w2, 19	//,
	adrp	x0, .LC0	// tmp132,
	add	x1, x0, :lo12:.LC0	//, tmp132,
	adrp	x0, .LC4	// tmp133,
	add	x0, x0, :lo12:.LC4	//, tmp133,
	bl	__assert_fail		//
.L11:
// problem32.c:20:     assert(func0(61) == true);
	mov	x0, 61	//,
	bl	func0		//
	and	w0, w0, 255	// _6, tmp134
// problem32.c:20:     assert(func0(61) == true);
	and	w0, w0, 1	// tmp135, _6,
	cmp	w0, 0	// tmp135,
	bne	.L12		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp136,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp136,
	mov	w2, 20	//,
	adrp	x0, .LC0	// tmp137,
	add	x1, x0, :lo12:.LC0	//, tmp137,
	adrp	x0, .LC5	// tmp138,
	add	x0, x0, :lo12:.LC5	//, tmp138,
	bl	__assert_fail		//
.L12:
// problem32.c:21:     assert(func0(4) == false);
	mov	x0, 4	//,
	bl	func0		//
	and	w0, w0, 255	// _7, tmp139
// problem32.c:21:     assert(func0(4) == false);
	eor	w0, w0, 1	// tmp140, _7,
	and	w0, w0, 255	// _8, tmp140
	and	w0, w0, 1	// tmp141, _8,
	cmp	w0, 0	// tmp141,
	bne	.L13		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp142,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp142,
	mov	w2, 21	//,
	adrp	x0, .LC0	// tmp143,
	add	x1, x0, :lo12:.LC0	//, tmp143,
	adrp	x0, .LC6	// tmp144,
	add	x0, x0, :lo12:.LC6	//, tmp144,
	bl	__assert_fail		//
.L13:
// problem32.c:22:     assert(func0(1) == false);
	mov	x0, 1	//,
	bl	func0		//
	and	w0, w0, 255	// _9, tmp145
// problem32.c:22:     assert(func0(1) == false);
	eor	w0, w0, 1	// tmp146, _9,
	and	w0, w0, 255	// _10, tmp146
	and	w0, w0, 1	// tmp147, _10,
	cmp	w0, 0	// tmp147,
	bne	.L14		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp148,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp148,
	mov	w2, 22	//,
	adrp	x0, .LC0	// tmp149,
	add	x1, x0, :lo12:.LC0	//, tmp149,
	adrp	x0, .LC7	// tmp150,
	add	x0, x0, :lo12:.LC7	//, tmp150,
	bl	__assert_fail		//
.L14:
// problem32.c:23:     assert(func0(5) == true);
	mov	x0, 5	//,
	bl	func0		//
	and	w0, w0, 255	// _11, tmp151
// problem32.c:23:     assert(func0(5) == true);
	and	w0, w0, 1	// tmp152, _11,
	cmp	w0, 0	// tmp152,
	bne	.L15		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp153,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp153,
	mov	w2, 23	//,
	adrp	x0, .LC0	// tmp154,
	add	x1, x0, :lo12:.LC0	//, tmp154,
	adrp	x0, .LC8	// tmp155,
	add	x0, x0, :lo12:.LC8	//, tmp155,
	bl	__assert_fail		//
.L15:
// problem32.c:24:     assert(func0(11) == true);
	mov	x0, 11	//,
	bl	func0		//
	and	w0, w0, 255	// _12, tmp156
// problem32.c:24:     assert(func0(11) == true);
	and	w0, w0, 1	// tmp157, _12,
	cmp	w0, 0	// tmp157,
	bne	.L16		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp158,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp158,
	mov	w2, 24	//,
	adrp	x0, .LC0	// tmp159,
	add	x1, x0, :lo12:.LC0	//, tmp159,
	adrp	x0, .LC3	// tmp160,
	add	x0, x0, :lo12:.LC3	//, tmp160,
	bl	__assert_fail		//
.L16:
// problem32.c:25:     assert(func0(17) == true);
	mov	x0, 17	//,
	bl	func0		//
	and	w0, w0, 255	// _13, tmp161
// problem32.c:25:     assert(func0(17) == true);
	and	w0, w0, 1	// tmp162, _13,
	cmp	w0, 0	// tmp162,
	bne	.L17		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp163,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp163,
	mov	w2, 25	//,
	adrp	x0, .LC0	// tmp164,
	add	x1, x0, :lo12:.LC0	//, tmp164,
	adrp	x0, .LC9	// tmp165,
	add	x0, x0, :lo12:.LC9	//, tmp165,
	bl	__assert_fail		//
.L17:
// problem32.c:26:     assert(func0(5 * 17) == false);
	mov	x0, 85	//,
	bl	func0		//
	and	w0, w0, 255	// _14, tmp166
// problem32.c:26:     assert(func0(5 * 17) == false);
	eor	w0, w0, 1	// tmp167, _14,
	and	w0, w0, 255	// _15, tmp167
	and	w0, w0, 1	// tmp168, _15,
	cmp	w0, 0	// tmp168,
	bne	.L18		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp169,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp169,
	mov	w2, 26	//,
	adrp	x0, .LC0	// tmp170,
	add	x1, x0, :lo12:.LC0	//, tmp170,
	adrp	x0, .LC10	// tmp171,
	add	x0, x0, :lo12:.LC10	//, tmp171,
	bl	__assert_fail		//
.L18:
// problem32.c:27:     assert(func0(11 * 7) == false);
	mov	x0, 77	//,
	bl	func0		//
	and	w0, w0, 255	// _16, tmp172
// problem32.c:27:     assert(func0(11 * 7) == false);
	eor	w0, w0, 1	// tmp173, _16,
	and	w0, w0, 255	// _17, tmp173
	and	w0, w0, 1	// tmp174, _17,
	cmp	w0, 0	// tmp174,
	bne	.L19		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp175,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp175,
	mov	w2, 27	//,
	adrp	x0, .LC0	// tmp176,
	add	x1, x0, :lo12:.LC0	//, tmp176,
	adrp	x0, .LC11	// tmp177,
	add	x0, x0, :lo12:.LC11	//, tmp177,
	bl	__assert_fail		//
.L19:
// problem32.c:28:     assert(func0(13441 * 19) == false);
	mov	x0, 58771	//,
	movk	x0, 0x3, lsl 16	//,,
	bl	func0		//
	and	w0, w0, 255	// _18, tmp178
// problem32.c:28:     assert(func0(13441 * 19) == false);
	eor	w0, w0, 1	// tmp179, _18,
	and	w0, w0, 255	// _19, tmp179
	and	w0, w0, 1	// tmp180, _19,
	cmp	w0, 0	// tmp180,
	bne	.L20		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp181,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp181,
	mov	w2, 28	//,
	adrp	x0, .LC0	// tmp182,
	add	x1, x0, :lo12:.LC0	//, tmp182,
	adrp	x0, .LC12	// tmp183,
	add	x0, x0, :lo12:.LC12	//, tmp183,
	bl	__assert_fail		//
.L20:
// problem32.c:30:     return 0;
	mov	w0, 0	// _47,
// problem32.c:31: }
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
