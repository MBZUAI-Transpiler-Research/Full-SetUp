	.arch armv8-a
	.file	"problem81.c"
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
	stp	x29, x30, [sp, -64]!	//,,,
	.cfi_def_cfa_offset 64
	.cfi_offset 29, -64
	.cfi_offset 30, -56
	mov	x29, sp	//,
	str	x19, [sp, 16]	//,
	.cfi_offset 19, -48
	str	x0, [sp, 40]	// s, s
// problem81.c:5:     if (strlen(s) < 3) return false;
	ldr	x0, [sp, 40]	//, s
	bl	strlen		//
// problem81.c:5:     if (strlen(s) < 3) return false;
	cmp	x0, 2	// _1,
	bhi	.L2		//,
// problem81.c:5:     if (strlen(s) < 3) return false;
	mov	w0, 0	// _19,
// problem81.c:5:     if (strlen(s) < 3) return false;
	b	.L3		//
.L2:
// problem81.c:6:     for (int i = 2; i < strlen(s); i++)
	mov	w0, 2	// tmp111,
	str	w0, [sp, 60]	// tmp111, i
// problem81.c:6:     for (int i = 2; i < strlen(s); i++)
	b	.L4		//
.L7:
// problem81.c:7:         if (s[i] == s[i-1] || s[i] == s[i-2]) return false;
	ldrsw	x0, [sp, 60]	// _2, i
	ldr	x1, [sp, 40]	// tmp112, s
	add	x0, x1, x0	// _3, tmp112, _2
	ldrb	w1, [x0]	// _4, *_3
// problem81.c:7:         if (s[i] == s[i-1] || s[i] == s[i-2]) return false;
	ldrsw	x0, [sp, 60]	// _5, i
	sub	x0, x0, #1	// _6, _5,
	ldr	x2, [sp, 40]	// tmp113, s
	add	x0, x2, x0	// _7, tmp113, _6
	ldrb	w0, [x0]	// _8, *_7
// problem81.c:7:         if (s[i] == s[i-1] || s[i] == s[i-2]) return false;
	cmp	w1, w0	// _4, _8
	beq	.L5		//,
// problem81.c:7:         if (s[i] == s[i-1] || s[i] == s[i-2]) return false;
	ldrsw	x0, [sp, 60]	// _9, i
	ldr	x1, [sp, 40]	// tmp114, s
	add	x0, x1, x0	// _10, tmp114, _9
	ldrb	w1, [x0]	// _11, *_10
// problem81.c:7:         if (s[i] == s[i-1] || s[i] == s[i-2]) return false;
	ldrsw	x0, [sp, 60]	// _12, i
	sub	x0, x0, #2	// _13, _12,
	ldr	x2, [sp, 40]	// tmp115, s
	add	x0, x2, x0	// _14, tmp115, _13
	ldrb	w0, [x0]	// _15, *_14
// problem81.c:7:         if (s[i] == s[i-1] || s[i] == s[i-2]) return false;
	cmp	w1, w0	// _11, _15
	bne	.L6		//,
.L5:
// problem81.c:7:         if (s[i] == s[i-1] || s[i] == s[i-2]) return false;
	mov	w0, 0	// _19,
// problem81.c:7:         if (s[i] == s[i-1] || s[i] == s[i-2]) return false;
	b	.L3		//
.L6:
// problem81.c:6:     for (int i = 2; i < strlen(s); i++)
	ldr	w0, [sp, 60]	// tmp117, i
	add	w0, w0, 1	// tmp116, tmp117,
	str	w0, [sp, 60]	// tmp116, i
.L4:
// problem81.c:6:     for (int i = 2; i < strlen(s); i++)
	ldrsw	x19, [sp, 60]	// _16, i
// problem81.c:6:     for (int i = 2; i < strlen(s); i++)
	ldr	x0, [sp, 40]	//, s
	bl	strlen		//
// problem81.c:6:     for (int i = 2; i < strlen(s); i++)
	cmp	x19, x0	// _16, _17
	bcc	.L7		//,
// problem81.c:8:     return true;
	mov	w0, 1	// _19,
.L3:
// problem81.c:9: }
	ldr	x19, [sp, 16]	//,
	ldp	x29, x30, [sp], 64	//,,,
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE0:
	.size	func0, .-func0
	.section	.rodata
	.align	3
.LC0:
	.string	"a"
	.align	3
.LC1:
	.string	"problem81.c"
	.align	3
.LC2:
	.string	"func0(\"a\") == false"
	.align	3
.LC3:
	.string	"aa"
	.align	3
.LC4:
	.string	"func0(\"aa\") == false"
	.align	3
.LC5:
	.string	"abcd"
	.align	3
.LC6:
	.string	"func0(\"abcd\") == true"
	.align	3
.LC7:
	.string	"aabb"
	.align	3
.LC8:
	.string	"func0(\"aabb\") == false"
	.align	3
.LC9:
	.string	"adb"
	.align	3
.LC10:
	.string	"func0(\"adb\") == true"
	.align	3
.LC11:
	.string	"xyy"
	.align	3
.LC12:
	.string	"func0(\"xyy\") == false"
	.align	3
.LC13:
	.string	"iopaxpoi"
	.align	3
.LC14:
	.string	"func0(\"iopaxpoi\") == true"
	.align	3
.LC15:
	.string	"iopaxioi"
	.align	3
.LC16:
	.string	"func0(\"iopaxioi\") == false"
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
// problem81.c:17:     assert(func0("a") == false);
	adrp	x0, .LC0	// tmp107,
	add	x0, x0, :lo12:.LC0	//, tmp107,
	bl	func0		//
	and	w0, w0, 255	// _1, tmp108
// problem81.c:17:     assert(func0("a") == false);
	eor	w0, w0, 1	// tmp109, _1,
	and	w0, w0, 255	// _2, tmp109
	and	w0, w0, 1	// tmp110, _2,
	cmp	w0, 0	// tmp110,
	bne	.L9		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp111,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp111,
	mov	w2, 17	//,
	adrp	x0, .LC1	// tmp112,
	add	x1, x0, :lo12:.LC1	//, tmp112,
	adrp	x0, .LC2	// tmp113,
	add	x0, x0, :lo12:.LC2	//, tmp113,
	bl	__assert_fail		//
.L9:
// problem81.c:18:     assert(func0("aa") == false);
	adrp	x0, .LC3	// tmp114,
	add	x0, x0, :lo12:.LC3	//, tmp114,
	bl	func0		//
	and	w0, w0, 255	// _3, tmp115
// problem81.c:18:     assert(func0("aa") == false);
	eor	w0, w0, 1	// tmp116, _3,
	and	w0, w0, 255	// _4, tmp116
	and	w0, w0, 1	// tmp117, _4,
	cmp	w0, 0	// tmp117,
	bne	.L10		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp118,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp118,
	mov	w2, 18	//,
	adrp	x0, .LC1	// tmp119,
	add	x1, x0, :lo12:.LC1	//, tmp119,
	adrp	x0, .LC4	// tmp120,
	add	x0, x0, :lo12:.LC4	//, tmp120,
	bl	__assert_fail		//
.L10:
// problem81.c:19:     assert(func0("abcd") == true);
	adrp	x0, .LC5	// tmp121,
	add	x0, x0, :lo12:.LC5	//, tmp121,
	bl	func0		//
	and	w0, w0, 255	// _5, tmp122
// problem81.c:19:     assert(func0("abcd") == true);
	and	w0, w0, 1	// tmp123, _5,
	cmp	w0, 0	// tmp123,
	bne	.L11		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp124,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp124,
	mov	w2, 19	//,
	adrp	x0, .LC1	// tmp125,
	add	x1, x0, :lo12:.LC1	//, tmp125,
	adrp	x0, .LC6	// tmp126,
	add	x0, x0, :lo12:.LC6	//, tmp126,
	bl	__assert_fail		//
.L11:
// problem81.c:20:     assert(func0("aabb") == false);
	adrp	x0, .LC7	// tmp127,
	add	x0, x0, :lo12:.LC7	//, tmp127,
	bl	func0		//
	and	w0, w0, 255	// _6, tmp128
// problem81.c:20:     assert(func0("aabb") == false);
	eor	w0, w0, 1	// tmp129, _6,
	and	w0, w0, 255	// _7, tmp129
	and	w0, w0, 1	// tmp130, _7,
	cmp	w0, 0	// tmp130,
	bne	.L12		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp131,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp131,
	mov	w2, 20	//,
	adrp	x0, .LC1	// tmp132,
	add	x1, x0, :lo12:.LC1	//, tmp132,
	adrp	x0, .LC8	// tmp133,
	add	x0, x0, :lo12:.LC8	//, tmp133,
	bl	__assert_fail		//
.L12:
// problem81.c:21:     assert(func0("adb") == true);
	adrp	x0, .LC9	// tmp134,
	add	x0, x0, :lo12:.LC9	//, tmp134,
	bl	func0		//
	and	w0, w0, 255	// _8, tmp135
// problem81.c:21:     assert(func0("adb") == true);
	and	w0, w0, 1	// tmp136, _8,
	cmp	w0, 0	// tmp136,
	bne	.L13		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp137,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp137,
	mov	w2, 21	//,
	adrp	x0, .LC1	// tmp138,
	add	x1, x0, :lo12:.LC1	//, tmp138,
	adrp	x0, .LC10	// tmp139,
	add	x0, x0, :lo12:.LC10	//, tmp139,
	bl	__assert_fail		//
.L13:
// problem81.c:22:     assert(func0("xyy") == false);
	adrp	x0, .LC11	// tmp140,
	add	x0, x0, :lo12:.LC11	//, tmp140,
	bl	func0		//
	and	w0, w0, 255	// _9, tmp141
// problem81.c:22:     assert(func0("xyy") == false);
	eor	w0, w0, 1	// tmp142, _9,
	and	w0, w0, 255	// _10, tmp142
	and	w0, w0, 1	// tmp143, _10,
	cmp	w0, 0	// tmp143,
	bne	.L14		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp144,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp144,
	mov	w2, 22	//,
	adrp	x0, .LC1	// tmp145,
	add	x1, x0, :lo12:.LC1	//, tmp145,
	adrp	x0, .LC12	// tmp146,
	add	x0, x0, :lo12:.LC12	//, tmp146,
	bl	__assert_fail		//
.L14:
// problem81.c:23:     assert(func0("iopaxpoi") == true);
	adrp	x0, .LC13	// tmp147,
	add	x0, x0, :lo12:.LC13	//, tmp147,
	bl	func0		//
	and	w0, w0, 255	// _11, tmp148
// problem81.c:23:     assert(func0("iopaxpoi") == true);
	and	w0, w0, 1	// tmp149, _11,
	cmp	w0, 0	// tmp149,
	bne	.L15		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp150,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp150,
	mov	w2, 23	//,
	adrp	x0, .LC1	// tmp151,
	add	x1, x0, :lo12:.LC1	//, tmp151,
	adrp	x0, .LC14	// tmp152,
	add	x0, x0, :lo12:.LC14	//, tmp152,
	bl	__assert_fail		//
.L15:
// problem81.c:24:     assert(func0("iopaxioi") == false);
	adrp	x0, .LC15	// tmp153,
	add	x0, x0, :lo12:.LC15	//, tmp153,
	bl	func0		//
	and	w0, w0, 255	// _12, tmp154
// problem81.c:24:     assert(func0("iopaxioi") == false);
	eor	w0, w0, 1	// tmp155, _12,
	and	w0, w0, 255	// _13, tmp155
	and	w0, w0, 1	// tmp156, _13,
	cmp	w0, 0	// tmp156,
	bne	.L16		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp157,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp157,
	mov	w2, 24	//,
	adrp	x0, .LC1	// tmp158,
	add	x1, x0, :lo12:.LC1	//, tmp158,
	adrp	x0, .LC16	// tmp159,
	add	x0, x0, :lo12:.LC16	//, tmp159,
	bl	__assert_fail		//
.L16:
// problem81.c:26:     return 0;
	mov	w0, 0	// _31,
// problem81.c:27: }
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
