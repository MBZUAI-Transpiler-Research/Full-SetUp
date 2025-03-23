	.arch armv8-a
	.file	"problem67.c"
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
	str	x0, [sp, 8]	// s, s
// problem67.c:5:     int sum = 0;
	str	wzr, [sp, 24]	//, sum
// problem67.c:6:     for (int i = 0; s[i] != '\0'; i++)
	str	wzr, [sp, 28]	//, i
// problem67.c:6:     for (int i = 0; s[i] != '\0'; i++)
	b	.L2		//
.L4:
// problem67.c:7:         if (s[i] >= 'A' && s[i] <= 'Z')
	ldrsw	x0, [sp, 28]	// _1, i
	ldr	x1, [sp, 8]	// tmp107, s
	add	x0, x1, x0	// _2, tmp107, _1
	ldrb	w0, [x0]	// _3, *_2
// problem67.c:7:         if (s[i] >= 'A' && s[i] <= 'Z')
	cmp	w0, 64	// _3,
	bls	.L3		//,
// problem67.c:7:         if (s[i] >= 'A' && s[i] <= 'Z')
	ldrsw	x0, [sp, 28]	// _4, i
	ldr	x1, [sp, 8]	// tmp108, s
	add	x0, x1, x0	// _5, tmp108, _4
	ldrb	w0, [x0]	// _6, *_5
// problem67.c:7:         if (s[i] >= 'A' && s[i] <= 'Z')
	cmp	w0, 90	// _6,
	bhi	.L3		//,
// problem67.c:8:             sum += s[i];
	ldrsw	x0, [sp, 28]	// _7, i
	ldr	x1, [sp, 8]	// tmp109, s
	add	x0, x1, x0	// _8, tmp109, _7
	ldrb	w0, [x0]	// _9, *_8
	mov	w1, w0	// _10, _9
// problem67.c:8:             sum += s[i];
	ldr	w0, [sp, 24]	// tmp111, sum
	add	w0, w0, w1	// tmp110, tmp111, _10
	str	w0, [sp, 24]	// tmp110, sum
.L3:
// problem67.c:6:     for (int i = 0; s[i] != '\0'; i++)
	ldr	w0, [sp, 28]	// tmp113, i
	add	w0, w0, 1	// tmp112, tmp113,
	str	w0, [sp, 28]	// tmp112, i
.L2:
// problem67.c:6:     for (int i = 0; s[i] != '\0'; i++)
	ldrsw	x0, [sp, 28]	// _11, i
	ldr	x1, [sp, 8]	// tmp114, s
	add	x0, x1, x0	// _12, tmp114, _11
	ldrb	w0, [x0]	// _13, *_12
// problem67.c:6:     for (int i = 0; s[i] != '\0'; i++)
	cmp	w0, 0	// _13,
	bne	.L4		//,
// problem67.c:9:     return sum;
	ldr	w0, [sp, 24]	// _21, sum
// problem67.c:10: }
	add	sp, sp, 32	//,,
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE0:
	.size	func0, .-func0
	.section	.rodata
	.align	3
.LC0:
	.string	""
	.align	3
.LC1:
	.string	"problem67.c"
	.align	3
.LC2:
	.string	"func0(\"\") == 0"
	.align	3
.LC3:
	.string	"abAB"
	.align	3
.LC4:
	.string	"func0(\"abAB\") == 131"
	.align	3
.LC5:
	.string	"abcCd"
	.align	3
.LC6:
	.string	"func0(\"abcCd\") == 67"
	.align	3
.LC7:
	.string	"helloE"
	.align	3
.LC8:
	.string	"func0(\"helloE\") == 69"
	.align	3
.LC9:
	.string	"woArBld"
	.align	3
.LC10:
	.string	"func0(\"woArBld\") == 131"
	.align	3
.LC11:
	.string	"aAaaaXa"
	.align	3
.LC12:
	.string	"func0(\"aAaaaXa\") == 153"
	.align	3
.LC13:
	.string	" How are yOu?"
	.align	3
.LC14:
	.string	"func0(\" How are yOu?\") == 151"
	.align	3
.LC15:
	.string	"You arE Very Smart"
	.align	3
.LC16:
	.string	"func0(\"You arE Very Smart\") == 327"
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
// problem67.c:17:     assert(func0("") == 0);
	adrp	x0, .LC0	// tmp102,
	add	x0, x0, :lo12:.LC0	//, tmp102,
	bl	func0		//
	cmp	w0, 0	// _1,
	beq	.L7		//,
// problem67.c:17:     assert(func0("") == 0);
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp103,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp103,
	mov	w2, 17	//,
	adrp	x0, .LC1	// tmp104,
	add	x1, x0, :lo12:.LC1	//, tmp104,
	adrp	x0, .LC2	// tmp105,
	add	x0, x0, :lo12:.LC2	//, tmp105,
	bl	__assert_fail		//
.L7:
// problem67.c:18:     assert(func0("abAB") == 131);
	adrp	x0, .LC3	// tmp106,
	add	x0, x0, :lo12:.LC3	//, tmp106,
	bl	func0		//
	cmp	w0, 131	// _2,
	beq	.L8		//,
// problem67.c:18:     assert(func0("abAB") == 131);
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp107,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp107,
	mov	w2, 18	//,
	adrp	x0, .LC1	// tmp108,
	add	x1, x0, :lo12:.LC1	//, tmp108,
	adrp	x0, .LC4	// tmp109,
	add	x0, x0, :lo12:.LC4	//, tmp109,
	bl	__assert_fail		//
.L8:
// problem67.c:19:     assert(func0("abcCd") == 67);
	adrp	x0, .LC5	// tmp110,
	add	x0, x0, :lo12:.LC5	//, tmp110,
	bl	func0		//
	cmp	w0, 67	// _3,
	beq	.L9		//,
// problem67.c:19:     assert(func0("abcCd") == 67);
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp111,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp111,
	mov	w2, 19	//,
	adrp	x0, .LC1	// tmp112,
	add	x1, x0, :lo12:.LC1	//, tmp112,
	adrp	x0, .LC6	// tmp113,
	add	x0, x0, :lo12:.LC6	//, tmp113,
	bl	__assert_fail		//
.L9:
// problem67.c:20:     assert(func0("helloE") == 69);
	adrp	x0, .LC7	// tmp114,
	add	x0, x0, :lo12:.LC7	//, tmp114,
	bl	func0		//
	cmp	w0, 69	// _4,
	beq	.L10		//,
// problem67.c:20:     assert(func0("helloE") == 69);
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp115,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp115,
	mov	w2, 20	//,
	adrp	x0, .LC1	// tmp116,
	add	x1, x0, :lo12:.LC1	//, tmp116,
	adrp	x0, .LC8	// tmp117,
	add	x0, x0, :lo12:.LC8	//, tmp117,
	bl	__assert_fail		//
.L10:
// problem67.c:21:     assert(func0("woArBld") == 131);
	adrp	x0, .LC9	// tmp118,
	add	x0, x0, :lo12:.LC9	//, tmp118,
	bl	func0		//
	cmp	w0, 131	// _5,
	beq	.L11		//,
// problem67.c:21:     assert(func0("woArBld") == 131);
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp119,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp119,
	mov	w2, 21	//,
	adrp	x0, .LC1	// tmp120,
	add	x1, x0, :lo12:.LC1	//, tmp120,
	adrp	x0, .LC10	// tmp121,
	add	x0, x0, :lo12:.LC10	//, tmp121,
	bl	__assert_fail		//
.L11:
// problem67.c:22:     assert(func0("aAaaaXa") == 153);
	adrp	x0, .LC11	// tmp122,
	add	x0, x0, :lo12:.LC11	//, tmp122,
	bl	func0		//
	cmp	w0, 153	// _6,
	beq	.L12		//,
// problem67.c:22:     assert(func0("aAaaaXa") == 153);
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp123,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp123,
	mov	w2, 22	//,
	adrp	x0, .LC1	// tmp124,
	add	x1, x0, :lo12:.LC1	//, tmp124,
	adrp	x0, .LC12	// tmp125,
	add	x0, x0, :lo12:.LC12	//, tmp125,
	bl	__assert_fail		//
.L12:
// problem67.c:23:     assert(func0(" How are yOu?") == 151);
	adrp	x0, .LC13	// tmp126,
	add	x0, x0, :lo12:.LC13	//, tmp126,
	bl	func0		//
	cmp	w0, 151	// _7,
	beq	.L13		//,
// problem67.c:23:     assert(func0(" How are yOu?") == 151);
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp127,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp127,
	mov	w2, 23	//,
	adrp	x0, .LC1	// tmp128,
	add	x1, x0, :lo12:.LC1	//, tmp128,
	adrp	x0, .LC14	// tmp129,
	add	x0, x0, :lo12:.LC14	//, tmp129,
	bl	__assert_fail		//
.L13:
// problem67.c:24:     assert(func0("You arE Very Smart") == 327);
	adrp	x0, .LC15	// tmp130,
	add	x0, x0, :lo12:.LC15	//, tmp130,
	bl	func0		//
	cmp	w0, 327	// _8,
	beq	.L14		//,
// problem67.c:24:     assert(func0("You arE Very Smart") == 327);
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp131,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp131,
	mov	w2, 24	//,
	adrp	x0, .LC1	// tmp132,
	add	x1, x0, :lo12:.LC1	//, tmp132,
	adrp	x0, .LC16	// tmp133,
	add	x0, x0, :lo12:.LC16	//, tmp133,
	bl	__assert_fail		//
.L14:
// problem67.c:26:     return 0;
	mov	w0, 0	// _26,
// problem67.c:27: }
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
