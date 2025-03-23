	.arch armv8-a
	.file	"problem135.c"
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
	stp	x29, x30, [sp, -48]!	//,,,
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	mov	x29, sp	//,
	str	x0, [sp, 24]	// txt, txt
// problem135.c:6:     int len = strlen(txt);
	ldr	x0, [sp, 24]	//, txt
	bl	strlen		//
// problem135.c:6:     int len = strlen(txt);
	str	w0, [sp, 44]	// tmp117, len
// problem135.c:7:     if (len == 0) return 0;
	ldr	w0, [sp, 44]	// tmp118, len
	cmp	w0, 0	// tmp118,
	bne	.L2		//,
// problem135.c:7:     if (len == 0) return 0;
	mov	w0, 0	// _24,
	b	.L3		//
.L2:
// problem135.c:8:     char last_char = txt[len - 1];
	ldrsw	x0, [sp, 44]	// _2, len
	sub	x0, x0, #1	// _3, _2,
	ldr	x1, [sp, 24]	// tmp119, txt
	add	x0, x1, x0	// _4, tmp119, _3
// problem135.c:8:     char last_char = txt[len - 1];
	ldrb	w0, [x0]	// tmp120, *_4
	strb	w0, [sp, 42]	// tmp120, last_char
// problem135.c:9:     if (!isalpha((unsigned char)last_char)) return 0;
	bl	__ctype_b_loc		//
	ldr	x1, [x0]	// _6, *_5
	ldrb	w0, [sp, 42]	// _7, last_char
	lsl	x0, x0, 1	// _8, _7,
	add	x0, x1, x0	// _9, _6, _8
	ldrh	w0, [x0]	// _10, *_9
	and	w0, w0, 1024	// _12, _11,
// problem135.c:9:     if (!isalpha((unsigned char)last_char)) return 0;
	cmp	w0, 0	// _12,
	bne	.L4		//,
// problem135.c:9:     if (!isalpha((unsigned char)last_char)) return 0;
	mov	w0, 0	// _24,
	b	.L3		//
.L4:
// problem135.c:10:     if (len == 1) return 1;
	ldr	w0, [sp, 44]	// tmp121, len
	cmp	w0, 1	// tmp121,
	bne	.L5		//,
// problem135.c:10:     if (len == 1) return 1;
	mov	w0, 1	// _24,
	b	.L3		//
.L5:
// problem135.c:11:     char second_last_char = txt[len - 2];
	ldrsw	x0, [sp, 44]	// _13, len
	sub	x0, x0, #2	// _14, _13,
	ldr	x1, [sp, 24]	// tmp122, txt
	add	x0, x1, x0	// _15, tmp122, _14
// problem135.c:11:     char second_last_char = txt[len - 2];
	ldrb	w0, [x0]	// tmp123, *_15
	strb	w0, [sp, 43]	// tmp123, second_last_char
// problem135.c:12:     if (isalpha((unsigned char)second_last_char)) return 0;
	bl	__ctype_b_loc		//
	ldr	x1, [x0]	// _17, *_16
	ldrb	w0, [sp, 43]	// _18, second_last_char
	lsl	x0, x0, 1	// _19, _18,
	add	x0, x1, x0	// _20, _17, _19
	ldrh	w0, [x0]	// _21, *_20
	and	w0, w0, 1024	// _23, _22,
// problem135.c:12:     if (isalpha((unsigned char)second_last_char)) return 0;
	cmp	w0, 0	// _23,
	beq	.L6		//,
// problem135.c:12:     if (isalpha((unsigned char)second_last_char)) return 0;
	mov	w0, 0	// _24,
	b	.L3		//
.L6:
// problem135.c:13:     return 1;
	mov	w0, 1	// _24,
.L3:
// problem135.c:14: }
	ldp	x29, x30, [sp], 48	//,,,
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE0:
	.size	func0, .-func0
	.section	.rodata
	.align	3
.LC0:
	.string	"apple"
	.align	3
.LC1:
	.string	"problem135.c"
	.align	3
.LC2:
	.string	"func0(\"apple\") == 0"
	.align	3
.LC3:
	.string	"apple pi e"
	.align	3
.LC4:
	.string	"func0(\"apple pi e\") == 1"
	.align	3
.LC5:
	.string	"eeeee"
	.align	3
.LC6:
	.string	"func0(\"eeeee\") == 0"
	.align	3
.LC7:
	.string	"A"
	.align	3
.LC8:
	.string	"func0(\"A\") == 1"
	.align	3
.LC9:
	.string	"Pumpkin pie "
	.align	3
.LC10:
	.string	"func0(\"Pumpkin pie \") == 0"
	.align	3
.LC11:
	.string	"Pumpkin pie 1"
	.align	3
.LC12:
	.string	"func0(\"Pumpkin pie 1\") == 0"
	.align	3
.LC13:
	.string	""
	.align	3
.LC14:
	.string	"func0(\"\") == 0"
	.align	3
.LC15:
	.string	"eeeee e "
	.align	3
.LC16:
	.string	"func0(\"eeeee e \") == 0"
	.align	3
.LC17:
	.string	"apple pie"
	.align	3
.LC18:
	.string	"func0(\"apple pie\") == 0"
	.align	3
.LC19:
	.string	"apple pi e "
	.align	3
.LC20:
	.string	"func0(\"apple pi e \") == 0"
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
// problem135.c:21:     assert(func0("apple") == 0);
	adrp	x0, .LC0	// tmp104,
	add	x0, x0, :lo12:.LC0	//, tmp104,
	bl	func0		//
	cmp	w0, 0	// _1,
	beq	.L8		//,
// problem135.c:21:     assert(func0("apple") == 0);
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp105,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp105,
	mov	w2, 21	//,
	adrp	x0, .LC1	// tmp106,
	add	x1, x0, :lo12:.LC1	//, tmp106,
	adrp	x0, .LC2	// tmp107,
	add	x0, x0, :lo12:.LC2	//, tmp107,
	bl	__assert_fail		//
.L8:
// problem135.c:22:     assert(func0("apple pi e") == 1);
	adrp	x0, .LC3	// tmp108,
	add	x0, x0, :lo12:.LC3	//, tmp108,
	bl	func0		//
	cmp	w0, 1	// _2,
	beq	.L9		//,
// problem135.c:22:     assert(func0("apple pi e") == 1);
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp109,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp109,
	mov	w2, 22	//,
	adrp	x0, .LC1	// tmp110,
	add	x1, x0, :lo12:.LC1	//, tmp110,
	adrp	x0, .LC4	// tmp111,
	add	x0, x0, :lo12:.LC4	//, tmp111,
	bl	__assert_fail		//
.L9:
// problem135.c:23:     assert(func0("eeeee") == 0);
	adrp	x0, .LC5	// tmp112,
	add	x0, x0, :lo12:.LC5	//, tmp112,
	bl	func0		//
	cmp	w0, 0	// _3,
	beq	.L10		//,
// problem135.c:23:     assert(func0("eeeee") == 0);
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp113,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp113,
	mov	w2, 23	//,
	adrp	x0, .LC1	// tmp114,
	add	x1, x0, :lo12:.LC1	//, tmp114,
	adrp	x0, .LC6	// tmp115,
	add	x0, x0, :lo12:.LC6	//, tmp115,
	bl	__assert_fail		//
.L10:
// problem135.c:24:     assert(func0("A") == 1);
	adrp	x0, .LC7	// tmp116,
	add	x0, x0, :lo12:.LC7	//, tmp116,
	bl	func0		//
	cmp	w0, 1	// _4,
	beq	.L11		//,
// problem135.c:24:     assert(func0("A") == 1);
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp117,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp117,
	mov	w2, 24	//,
	adrp	x0, .LC1	// tmp118,
	add	x1, x0, :lo12:.LC1	//, tmp118,
	adrp	x0, .LC8	// tmp119,
	add	x0, x0, :lo12:.LC8	//, tmp119,
	bl	__assert_fail		//
.L11:
// problem135.c:25:     assert(func0("Pumpkin pie ") == 0);
	adrp	x0, .LC9	// tmp120,
	add	x0, x0, :lo12:.LC9	//, tmp120,
	bl	func0		//
	cmp	w0, 0	// _5,
	beq	.L12		//,
// problem135.c:25:     assert(func0("Pumpkin pie ") == 0);
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp121,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp121,
	mov	w2, 25	//,
	adrp	x0, .LC1	// tmp122,
	add	x1, x0, :lo12:.LC1	//, tmp122,
	adrp	x0, .LC10	// tmp123,
	add	x0, x0, :lo12:.LC10	//, tmp123,
	bl	__assert_fail		//
.L12:
// problem135.c:26:     assert(func0("Pumpkin pie 1") == 0);
	adrp	x0, .LC11	// tmp124,
	add	x0, x0, :lo12:.LC11	//, tmp124,
	bl	func0		//
	cmp	w0, 0	// _6,
	beq	.L13		//,
// problem135.c:26:     assert(func0("Pumpkin pie 1") == 0);
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp125,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp125,
	mov	w2, 26	//,
	adrp	x0, .LC1	// tmp126,
	add	x1, x0, :lo12:.LC1	//, tmp126,
	adrp	x0, .LC12	// tmp127,
	add	x0, x0, :lo12:.LC12	//, tmp127,
	bl	__assert_fail		//
.L13:
// problem135.c:27:     assert(func0("") == 0);
	adrp	x0, .LC13	// tmp128,
	add	x0, x0, :lo12:.LC13	//, tmp128,
	bl	func0		//
	cmp	w0, 0	// _7,
	beq	.L14		//,
// problem135.c:27:     assert(func0("") == 0);
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp129,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp129,
	mov	w2, 27	//,
	adrp	x0, .LC1	// tmp130,
	add	x1, x0, :lo12:.LC1	//, tmp130,
	adrp	x0, .LC14	// tmp131,
	add	x0, x0, :lo12:.LC14	//, tmp131,
	bl	__assert_fail		//
.L14:
// problem135.c:28:     assert(func0("eeeee e ") == 0);
	adrp	x0, .LC15	// tmp132,
	add	x0, x0, :lo12:.LC15	//, tmp132,
	bl	func0		//
	cmp	w0, 0	// _8,
	beq	.L15		//,
// problem135.c:28:     assert(func0("eeeee e ") == 0);
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp133,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp133,
	mov	w2, 28	//,
	adrp	x0, .LC1	// tmp134,
	add	x1, x0, :lo12:.LC1	//, tmp134,
	adrp	x0, .LC16	// tmp135,
	add	x0, x0, :lo12:.LC16	//, tmp135,
	bl	__assert_fail		//
.L15:
// problem135.c:29:     assert(func0("apple pie") == 0);
	adrp	x0, .LC17	// tmp136,
	add	x0, x0, :lo12:.LC17	//, tmp136,
	bl	func0		//
	cmp	w0, 0	// _9,
	beq	.L16		//,
// problem135.c:29:     assert(func0("apple pie") == 0);
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp137,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp137,
	mov	w2, 29	//,
	adrp	x0, .LC1	// tmp138,
	add	x1, x0, :lo12:.LC1	//, tmp138,
	adrp	x0, .LC18	// tmp139,
	add	x0, x0, :lo12:.LC18	//, tmp139,
	bl	__assert_fail		//
.L16:
// problem135.c:30:     assert(func0("apple pi e ") == 0);
	adrp	x0, .LC19	// tmp140,
	add	x0, x0, :lo12:.LC19	//, tmp140,
	bl	func0		//
	cmp	w0, 0	// _10,
	beq	.L17		//,
// problem135.c:30:     assert(func0("apple pi e ") == 0);
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp141,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp141,
	mov	w2, 30	//,
	adrp	x0, .LC1	// tmp142,
	add	x1, x0, :lo12:.LC1	//, tmp142,
	adrp	x0, .LC20	// tmp143,
	add	x0, x0, :lo12:.LC20	//, tmp143,
	bl	__assert_fail		//
.L17:
// problem135.c:32:     return 0;
	mov	w0, 0	// _32,
// problem135.c:33: }
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
