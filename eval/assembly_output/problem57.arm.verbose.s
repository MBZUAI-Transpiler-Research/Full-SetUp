	.arch armv8-a
	.file	"problem57.c"
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
	str	x0, [sp, 8]	// brackets, brackets
// problem57.c:6:     int level = 0;
	str	wzr, [sp, 24]	//, level
// problem57.c:7:     int i = 0;
	str	wzr, [sp, 28]	//, i
// problem57.c:8:     while (brackets[i]) {
	b	.L2		//
.L7:
// problem57.c:9:         if (brackets[i] == '<') level++;
	ldrsw	x0, [sp, 28]	// _1, i
	ldr	x1, [sp, 8]	// tmp103, brackets
	add	x0, x1, x0	// _2, tmp103, _1
	ldrb	w0, [x0]	// _3, *_2
// problem57.c:9:         if (brackets[i] == '<') level++;
	cmp	w0, 60	// _3,
	bne	.L3		//,
// problem57.c:9:         if (brackets[i] == '<') level++;
	ldr	w0, [sp, 24]	// tmp105, level
	add	w0, w0, 1	// tmp104, tmp105,
	str	w0, [sp, 24]	// tmp104, level
.L3:
// problem57.c:10:         if (brackets[i] == '>') level--;
	ldrsw	x0, [sp, 28]	// _4, i
	ldr	x1, [sp, 8]	// tmp106, brackets
	add	x0, x1, x0	// _5, tmp106, _4
	ldrb	w0, [x0]	// _6, *_5
// problem57.c:10:         if (brackets[i] == '>') level--;
	cmp	w0, 62	// _6,
	bne	.L4		//,
// problem57.c:10:         if (brackets[i] == '>') level--;
	ldr	w0, [sp, 24]	// tmp108, level
	sub	w0, w0, #1	// tmp107, tmp108,
	str	w0, [sp, 24]	// tmp107, level
.L4:
// problem57.c:11:         if (level < 0) return false;
	ldr	w0, [sp, 24]	// tmp109, level
	cmp	w0, 0	// tmp109,
	bge	.L5		//,
// problem57.c:11:         if (level < 0) return false;
	mov	w0, 0	// _14,
// problem57.c:11:         if (level < 0) return false;
	b	.L6		//
.L5:
// problem57.c:12:         i++;
	ldr	w0, [sp, 28]	// tmp111, i
	add	w0, w0, 1	// tmp110, tmp111,
	str	w0, [sp, 28]	// tmp110, i
.L2:
// problem57.c:8:     while (brackets[i]) {
	ldrsw	x0, [sp, 28]	// _7, i
	ldr	x1, [sp, 8]	// tmp112, brackets
	add	x0, x1, x0	// _8, tmp112, _7
	ldrb	w0, [x0]	// _9, *_8
// problem57.c:8:     while (brackets[i]) {
	cmp	w0, 0	// _9,
	bne	.L7		//,
// problem57.c:14:     if (level != 0) return false;
	ldr	w0, [sp, 24]	// tmp113, level
	cmp	w0, 0	// tmp113,
	beq	.L8		//,
// problem57.c:14:     if (level != 0) return false;
	mov	w0, 0	// _14,
// problem57.c:14:     if (level != 0) return false;
	b	.L6		//
.L8:
// problem57.c:15:     return true;
	mov	w0, 1	// _14,
.L6:
// problem57.c:16: }
	add	sp, sp, 32	//,,
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE0:
	.size	func0, .-func0
	.section	.rodata
	.align	3
.LC0:
	.string	"<>"
	.align	3
.LC1:
	.string	"problem57.c"
	.align	3
.LC2:
	.string	"func0(\"<>\")"
	.align	3
.LC3:
	.string	"<<><>>"
	.align	3
.LC4:
	.string	"func0(\"<<><>>\")"
	.align	3
.LC5:
	.string	"<><><<><>><>"
	.align	3
.LC6:
	.string	"func0(\"<><><<><>><>\")"
	.align	3
.LC7:
	.string	"<><><<<><><>><>><<><><<>>>"
	.align	3
.LC8:
	.string	"func0(\"<><><<<><><>><>><<><><<>>>\")"
	.align	3
.LC9:
	.string	"<<<><>>>>"
	.align	3
.LC10:
	.string	"!func0(\"<<<><>>>>\")"
	.align	3
.LC11:
	.string	"><<>"
	.align	3
.LC12:
	.string	"!func0(\"><<>\")"
	.align	3
.LC13:
	.string	"<"
	.align	3
.LC14:
	.string	"!func0(\"<\")"
	.align	3
.LC15:
	.string	"<<<<"
	.align	3
.LC16:
	.string	"!func0(\"<<<<\")"
	.align	3
.LC17:
	.string	">"
	.align	3
.LC18:
	.string	"!func0(\">\")"
	.align	3
.LC19:
	.string	"<<>"
	.align	3
.LC20:
	.string	"!func0(\"<<>\")"
	.align	3
.LC21:
	.string	"<><><<><>><>><<>"
	.align	3
.LC22:
	.string	"!func0(\"<><><<><>><>><<>\")"
	.align	3
.LC23:
	.string	"<><><<><>><>>><>"
	.align	3
.LC24:
	.string	"!func0(\"<><><<><>><>>><>\")"
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
// problem57.c:24:     assert(func0("<>"));
	adrp	x0, .LC0	// tmp114,
	add	x0, x0, :lo12:.LC0	//, tmp114,
	bl	func0		//
	and	w0, w0, 255	// _1, tmp115
// problem57.c:24:     assert(func0("<>"));
	and	w0, w0, 1	// tmp116, _1,
	cmp	w0, 0	// tmp116,
	bne	.L10		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp117,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp117,
	mov	w2, 24	//,
	adrp	x0, .LC1	// tmp118,
	add	x1, x0, :lo12:.LC1	//, tmp118,
	adrp	x0, .LC2	// tmp119,
	add	x0, x0, :lo12:.LC2	//, tmp119,
	bl	__assert_fail		//
.L10:
// problem57.c:25:     assert(func0("<<><>>"));
	adrp	x0, .LC3	// tmp120,
	add	x0, x0, :lo12:.LC3	//, tmp120,
	bl	func0		//
	and	w0, w0, 255	// _2, tmp121
// problem57.c:25:     assert(func0("<<><>>"));
	and	w0, w0, 1	// tmp122, _2,
	cmp	w0, 0	// tmp122,
	bne	.L11		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp123,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp123,
	mov	w2, 25	//,
	adrp	x0, .LC1	// tmp124,
	add	x1, x0, :lo12:.LC1	//, tmp124,
	adrp	x0, .LC4	// tmp125,
	add	x0, x0, :lo12:.LC4	//, tmp125,
	bl	__assert_fail		//
.L11:
// problem57.c:26:     assert(func0("<><><<><>><>"));
	adrp	x0, .LC5	// tmp126,
	add	x0, x0, :lo12:.LC5	//, tmp126,
	bl	func0		//
	and	w0, w0, 255	// _3, tmp127
// problem57.c:26:     assert(func0("<><><<><>><>"));
	and	w0, w0, 1	// tmp128, _3,
	cmp	w0, 0	// tmp128,
	bne	.L12		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp129,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp129,
	mov	w2, 26	//,
	adrp	x0, .LC1	// tmp130,
	add	x1, x0, :lo12:.LC1	//, tmp130,
	adrp	x0, .LC6	// tmp131,
	add	x0, x0, :lo12:.LC6	//, tmp131,
	bl	__assert_fail		//
.L12:
// problem57.c:27:     assert(func0("<><><<<><><>><>><<><><<>>>"));
	adrp	x0, .LC7	// tmp132,
	add	x0, x0, :lo12:.LC7	//, tmp132,
	bl	func0		//
	and	w0, w0, 255	// _4, tmp133
// problem57.c:27:     assert(func0("<><><<<><><>><>><<><><<>>>"));
	and	w0, w0, 1	// tmp134, _4,
	cmp	w0, 0	// tmp134,
	bne	.L13		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp135,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp135,
	mov	w2, 27	//,
	adrp	x0, .LC1	// tmp136,
	add	x1, x0, :lo12:.LC1	//, tmp136,
	adrp	x0, .LC8	// tmp137,
	add	x0, x0, :lo12:.LC8	//, tmp137,
	bl	__assert_fail		//
.L13:
// problem57.c:28:     assert(!func0("<<<><>>>>"));
	adrp	x0, .LC9	// tmp138,
	add	x0, x0, :lo12:.LC9	//, tmp138,
	bl	func0		//
	and	w0, w0, 255	// _5, tmp139
// problem57.c:28:     assert(!func0("<<<><>>>>"));
	eor	w0, w0, 1	// tmp140, _5,
	and	w0, w0, 255	// _6, tmp140
	and	w0, w0, 1	// tmp141, _6,
	cmp	w0, 0	// tmp141,
	bne	.L14		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp142,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp142,
	mov	w2, 28	//,
	adrp	x0, .LC1	// tmp143,
	add	x1, x0, :lo12:.LC1	//, tmp143,
	adrp	x0, .LC10	// tmp144,
	add	x0, x0, :lo12:.LC10	//, tmp144,
	bl	__assert_fail		//
.L14:
// problem57.c:29:     assert(!func0("><<>"));
	adrp	x0, .LC11	// tmp145,
	add	x0, x0, :lo12:.LC11	//, tmp145,
	bl	func0		//
	and	w0, w0, 255	// _7, tmp146
// problem57.c:29:     assert(!func0("><<>"));
	eor	w0, w0, 1	// tmp147, _7,
	and	w0, w0, 255	// _8, tmp147
	and	w0, w0, 1	// tmp148, _8,
	cmp	w0, 0	// tmp148,
	bne	.L15		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp149,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp149,
	mov	w2, 29	//,
	adrp	x0, .LC1	// tmp150,
	add	x1, x0, :lo12:.LC1	//, tmp150,
	adrp	x0, .LC12	// tmp151,
	add	x0, x0, :lo12:.LC12	//, tmp151,
	bl	__assert_fail		//
.L15:
// problem57.c:30:     assert(!func0("<"));
	adrp	x0, .LC13	// tmp152,
	add	x0, x0, :lo12:.LC13	//, tmp152,
	bl	func0		//
	and	w0, w0, 255	// _9, tmp153
// problem57.c:30:     assert(!func0("<"));
	eor	w0, w0, 1	// tmp154, _9,
	and	w0, w0, 255	// _10, tmp154
	and	w0, w0, 1	// tmp155, _10,
	cmp	w0, 0	// tmp155,
	bne	.L16		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp156,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp156,
	mov	w2, 30	//,
	adrp	x0, .LC1	// tmp157,
	add	x1, x0, :lo12:.LC1	//, tmp157,
	adrp	x0, .LC14	// tmp158,
	add	x0, x0, :lo12:.LC14	//, tmp158,
	bl	__assert_fail		//
.L16:
// problem57.c:31:     assert(!func0("<<<<"));
	adrp	x0, .LC15	// tmp159,
	add	x0, x0, :lo12:.LC15	//, tmp159,
	bl	func0		//
	and	w0, w0, 255	// _11, tmp160
// problem57.c:31:     assert(!func0("<<<<"));
	eor	w0, w0, 1	// tmp161, _11,
	and	w0, w0, 255	// _12, tmp161
	and	w0, w0, 1	// tmp162, _12,
	cmp	w0, 0	// tmp162,
	bne	.L17		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp163,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp163,
	mov	w2, 31	//,
	adrp	x0, .LC1	// tmp164,
	add	x1, x0, :lo12:.LC1	//, tmp164,
	adrp	x0, .LC16	// tmp165,
	add	x0, x0, :lo12:.LC16	//, tmp165,
	bl	__assert_fail		//
.L17:
// problem57.c:32:     assert(!func0(">"));
	adrp	x0, .LC17	// tmp166,
	add	x0, x0, :lo12:.LC17	//, tmp166,
	bl	func0		//
	and	w0, w0, 255	// _13, tmp167
// problem57.c:32:     assert(!func0(">"));
	eor	w0, w0, 1	// tmp168, _13,
	and	w0, w0, 255	// _14, tmp168
	and	w0, w0, 1	// tmp169, _14,
	cmp	w0, 0	// tmp169,
	bne	.L18		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp170,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp170,
	mov	w2, 32	//,
	adrp	x0, .LC1	// tmp171,
	add	x1, x0, :lo12:.LC1	//, tmp171,
	adrp	x0, .LC18	// tmp172,
	add	x0, x0, :lo12:.LC18	//, tmp172,
	bl	__assert_fail		//
.L18:
// problem57.c:33:     assert(!func0("<<>"));
	adrp	x0, .LC19	// tmp173,
	add	x0, x0, :lo12:.LC19	//, tmp173,
	bl	func0		//
	and	w0, w0, 255	// _15, tmp174
// problem57.c:33:     assert(!func0("<<>"));
	eor	w0, w0, 1	// tmp175, _15,
	and	w0, w0, 255	// _16, tmp175
	and	w0, w0, 1	// tmp176, _16,
	cmp	w0, 0	// tmp176,
	bne	.L19		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp177,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp177,
	mov	w2, 33	//,
	adrp	x0, .LC1	// tmp178,
	add	x1, x0, :lo12:.LC1	//, tmp178,
	adrp	x0, .LC20	// tmp179,
	add	x0, x0, :lo12:.LC20	//, tmp179,
	bl	__assert_fail		//
.L19:
// problem57.c:34:     assert(!func0("<><><<><>><>><<>"));
	adrp	x0, .LC21	// tmp180,
	add	x0, x0, :lo12:.LC21	//, tmp180,
	bl	func0		//
	and	w0, w0, 255	// _17, tmp181
// problem57.c:34:     assert(!func0("<><><<><>><>><<>"));
	eor	w0, w0, 1	// tmp182, _17,
	and	w0, w0, 255	// _18, tmp182
	and	w0, w0, 1	// tmp183, _18,
	cmp	w0, 0	// tmp183,
	bne	.L20		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp184,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp184,
	mov	w2, 34	//,
	adrp	x0, .LC1	// tmp185,
	add	x1, x0, :lo12:.LC1	//, tmp185,
	adrp	x0, .LC22	// tmp186,
	add	x0, x0, :lo12:.LC22	//, tmp186,
	bl	__assert_fail		//
.L20:
// problem57.c:35:     assert(!func0("<><><<><>><>>><>"));
	adrp	x0, .LC23	// tmp187,
	add	x0, x0, :lo12:.LC23	//, tmp187,
	bl	func0		//
	and	w0, w0, 255	// _19, tmp188
// problem57.c:35:     assert(!func0("<><><<><>><>>><>"));
	eor	w0, w0, 1	// tmp189, _19,
	and	w0, w0, 255	// _20, tmp189
	and	w0, w0, 1	// tmp190, _20,
	cmp	w0, 0	// tmp190,
	bne	.L21		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp191,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp191,
	mov	w2, 35	//,
	adrp	x0, .LC1	// tmp192,
	add	x1, x0, :lo12:.LC1	//, tmp192,
	adrp	x0, .LC24	// tmp193,
	add	x0, x0, :lo12:.LC24	//, tmp193,
	bl	__assert_fail		//
.L21:
// problem57.c:37:     return 0;
	mov	w0, 0	// _46,
// problem57.c:38: }
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
