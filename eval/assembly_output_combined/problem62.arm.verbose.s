	.arch armv8-a
	.file	"problem62.c"
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
	stp	x29, x30, [sp, -64]!	//,,,
	.cfi_def_cfa_offset 64
	.cfi_offset 29, -64
	.cfi_offset 30, -56
	mov	x29, sp	//,
	str	x19, [sp, 16]	//,
	.cfi_offset 19, -48
	str	x0, [sp, 40]	// brackets, brackets
// problem62.c:6:     int level = 0;
	str	wzr, [sp, 56]	//, level
// problem62.c:7:     for (int i = 0; i < strlen(brackets); i++) {
	str	wzr, [sp, 60]	//, i
// problem62.c:7:     for (int i = 0; i < strlen(brackets); i++) {
	b	.L2		//
.L7:
// problem62.c:8:         if (brackets[i] == '(') level += 1;
	ldrsw	x0, [sp, 60]	// _1, i
	ldr	x1, [sp, 40]	// tmp102, brackets
	add	x0, x1, x0	// _2, tmp102, _1
	ldrb	w0, [x0]	// _3, *_2
// problem62.c:8:         if (brackets[i] == '(') level += 1;
	cmp	w0, 40	// _3,
	bne	.L3		//,
// problem62.c:8:         if (brackets[i] == '(') level += 1;
	ldr	w0, [sp, 56]	// tmp104, level
	add	w0, w0, 1	// tmp103, tmp104,
	str	w0, [sp, 56]	// tmp103, level
.L3:
// problem62.c:9:         if (brackets[i] == ')') level -= 1;
	ldrsw	x0, [sp, 60]	// _4, i
	ldr	x1, [sp, 40]	// tmp105, brackets
	add	x0, x1, x0	// _5, tmp105, _4
	ldrb	w0, [x0]	// _6, *_5
// problem62.c:9:         if (brackets[i] == ')') level -= 1;
	cmp	w0, 41	// _6,
	bne	.L4		//,
// problem62.c:9:         if (brackets[i] == ')') level -= 1;
	ldr	w0, [sp, 56]	// tmp107, level
	sub	w0, w0, #1	// tmp106, tmp107,
	str	w0, [sp, 56]	// tmp106, level
.L4:
// problem62.c:10:         if (level < 0) return false;
	ldr	w0, [sp, 56]	// tmp108, level
	cmp	w0, 0	// tmp108,
	bge	.L5		//,
// problem62.c:10:         if (level < 0) return false;
	mov	w0, 0	// _13,
	b	.L6		//
.L5:
// problem62.c:7:     for (int i = 0; i < strlen(brackets); i++) {
	ldr	w0, [sp, 60]	// tmp110, i
	add	w0, w0, 1	// tmp109, tmp110,
	str	w0, [sp, 60]	// tmp109, i
.L2:
// problem62.c:7:     for (int i = 0; i < strlen(brackets); i++) {
	ldrsw	x19, [sp, 60]	// _7, i
// problem62.c:7:     for (int i = 0; i < strlen(brackets); i++) {
	ldr	x0, [sp, 40]	//, brackets
	bl	strlen		//
// problem62.c:7:     for (int i = 0; i < strlen(brackets); i++) {
	cmp	x19, x0	// _7, _8
	bcc	.L7		//,
// problem62.c:12:     return level == 0;
	ldr	w0, [sp, 56]	// tmp112, level
	cmp	w0, 0	// tmp112,
	cset	w0, eq	// tmp113,
	and	w0, w0, 255	// _13, tmp111
.L6:
// problem62.c:13: }
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
	.string	"()"
	.align	3
.LC1:
	.string	"problem62.c"
	.align	3
.LC2:
	.string	"func0(\"()\")"
	.align	3
.LC3:
	.string	"(()())"
	.align	3
.LC4:
	.string	"func0(\"(()())\")"
	.align	3
.LC5:
	.string	"()()(()())()"
	.align	3
.LC6:
	.string	"func0(\"()()(()())()\")"
	.align	3
.LC7:
	.string	"()()((()()())())(()()(()))"
	.align	3
.LC8:
	.string	"func0(\"()()((()()())())(()()(()))\")"
	.align	3
.LC9:
	.string	"((()())))"
	.align	3
.LC10:
	.string	"!func0(\"((()())))\")"
	.align	3
.LC11:
	.string	")(()"
	.align	3
.LC12:
	.string	"!func0(\")(()\")"
	.align	3
.LC13:
	.string	"("
	.align	3
.LC14:
	.string	"!func0(\"(\")"
	.align	3
.LC15:
	.string	"(((("
	.align	3
.LC16:
	.string	"!func0(\"((((\")"
	.align	3
.LC17:
	.string	")"
	.align	3
.LC18:
	.string	"!func0(\")\")"
	.align	3
.LC19:
	.string	"(()"
	.align	3
.LC20:
	.string	"!func0(\"(()\")"
	.align	3
.LC21:
	.string	"()()(()())())(()"
	.align	3
.LC22:
	.string	"!func0(\"()()(()())())(()\")"
	.align	3
.LC23:
	.string	"()()(()())()))()"
	.align	3
.LC24:
	.string	"!func0(\"()()(()())()))()\")"
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
// problem62.c:21:     assert(func0("()"));
	adrp	x0, .LC0	// tmp114,
	add	x0, x0, :lo12:.LC0	//, tmp114,
	bl	func0		//
	and	w0, w0, 255	// _1, tmp115
	cmp	w0, 0	// _1,
	bne	.L9		//,
// problem62.c:21:     assert(func0("()"));
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp116,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp116,
	mov	w2, 21	//,
	adrp	x0, .LC1	// tmp117,
	add	x1, x0, :lo12:.LC1	//, tmp117,
	adrp	x0, .LC2	// tmp118,
	add	x0, x0, :lo12:.LC2	//, tmp118,
	bl	__assert_fail		//
.L9:
// problem62.c:22:     assert(func0("(()())"));
	adrp	x0, .LC3	// tmp119,
	add	x0, x0, :lo12:.LC3	//, tmp119,
	bl	func0		//
	and	w0, w0, 255	// _2, tmp120
	cmp	w0, 0	// _2,
	bne	.L10		//,
// problem62.c:22:     assert(func0("(()())"));
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp121,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp121,
	mov	w2, 22	//,
	adrp	x0, .LC1	// tmp122,
	add	x1, x0, :lo12:.LC1	//, tmp122,
	adrp	x0, .LC4	// tmp123,
	add	x0, x0, :lo12:.LC4	//, tmp123,
	bl	__assert_fail		//
.L10:
// problem62.c:23:     assert(func0("()()(()())()"));
	adrp	x0, .LC5	// tmp124,
	add	x0, x0, :lo12:.LC5	//, tmp124,
	bl	func0		//
	and	w0, w0, 255	// _3, tmp125
	cmp	w0, 0	// _3,
	bne	.L11		//,
// problem62.c:23:     assert(func0("()()(()())()"));
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp126,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp126,
	mov	w2, 23	//,
	adrp	x0, .LC1	// tmp127,
	add	x1, x0, :lo12:.LC1	//, tmp127,
	adrp	x0, .LC6	// tmp128,
	add	x0, x0, :lo12:.LC6	//, tmp128,
	bl	__assert_fail		//
.L11:
// problem62.c:24:     assert(func0("()()((()()())())(()()(()))"));
	adrp	x0, .LC7	// tmp129,
	add	x0, x0, :lo12:.LC7	//, tmp129,
	bl	func0		//
	and	w0, w0, 255	// _4, tmp130
	cmp	w0, 0	// _4,
	bne	.L12		//,
// problem62.c:24:     assert(func0("()()((()()())())(()()(()))"));
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp131,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp131,
	mov	w2, 24	//,
	adrp	x0, .LC1	// tmp132,
	add	x1, x0, :lo12:.LC1	//, tmp132,
	adrp	x0, .LC8	// tmp133,
	add	x0, x0, :lo12:.LC8	//, tmp133,
	bl	__assert_fail		//
.L12:
// problem62.c:25:     assert(!func0("((()())))"));
	adrp	x0, .LC9	// tmp134,
	add	x0, x0, :lo12:.LC9	//, tmp134,
	bl	func0		//
	and	w0, w0, 255	// _5, tmp135
	eor	w0, w0, 1	// tmp136, _5,
	and	w0, w0, 255	// _6, tmp136
	cmp	w0, 0	// _6,
	bne	.L13		//,
// problem62.c:25:     assert(!func0("((()())))"));
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp137,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp137,
	mov	w2, 25	//,
	adrp	x0, .LC1	// tmp138,
	add	x1, x0, :lo12:.LC1	//, tmp138,
	adrp	x0, .LC10	// tmp139,
	add	x0, x0, :lo12:.LC10	//, tmp139,
	bl	__assert_fail		//
.L13:
// problem62.c:26:     assert(!func0(")(()"));
	adrp	x0, .LC11	// tmp140,
	add	x0, x0, :lo12:.LC11	//, tmp140,
	bl	func0		//
	and	w0, w0, 255	// _7, tmp141
	eor	w0, w0, 1	// tmp142, _7,
	and	w0, w0, 255	// _8, tmp142
	cmp	w0, 0	// _8,
	bne	.L14		//,
// problem62.c:26:     assert(!func0(")(()"));
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp143,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp143,
	mov	w2, 26	//,
	adrp	x0, .LC1	// tmp144,
	add	x1, x0, :lo12:.LC1	//, tmp144,
	adrp	x0, .LC12	// tmp145,
	add	x0, x0, :lo12:.LC12	//, tmp145,
	bl	__assert_fail		//
.L14:
// problem62.c:27:     assert(!func0("("));
	adrp	x0, .LC13	// tmp146,
	add	x0, x0, :lo12:.LC13	//, tmp146,
	bl	func0		//
	and	w0, w0, 255	// _9, tmp147
	eor	w0, w0, 1	// tmp148, _9,
	and	w0, w0, 255	// _10, tmp148
	cmp	w0, 0	// _10,
	bne	.L15		//,
// problem62.c:27:     assert(!func0("("));
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp149,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp149,
	mov	w2, 27	//,
	adrp	x0, .LC1	// tmp150,
	add	x1, x0, :lo12:.LC1	//, tmp150,
	adrp	x0, .LC14	// tmp151,
	add	x0, x0, :lo12:.LC14	//, tmp151,
	bl	__assert_fail		//
.L15:
// problem62.c:28:     assert(!func0("(((("));
	adrp	x0, .LC15	// tmp152,
	add	x0, x0, :lo12:.LC15	//, tmp152,
	bl	func0		//
	and	w0, w0, 255	// _11, tmp153
	eor	w0, w0, 1	// tmp154, _11,
	and	w0, w0, 255	// _12, tmp154
	cmp	w0, 0	// _12,
	bne	.L16		//,
// problem62.c:28:     assert(!func0("(((("));
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp155,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp155,
	mov	w2, 28	//,
	adrp	x0, .LC1	// tmp156,
	add	x1, x0, :lo12:.LC1	//, tmp156,
	adrp	x0, .LC16	// tmp157,
	add	x0, x0, :lo12:.LC16	//, tmp157,
	bl	__assert_fail		//
.L16:
// problem62.c:29:     assert(!func0(")"));
	adrp	x0, .LC17	// tmp158,
	add	x0, x0, :lo12:.LC17	//, tmp158,
	bl	func0		//
	and	w0, w0, 255	// _13, tmp159
	eor	w0, w0, 1	// tmp160, _13,
	and	w0, w0, 255	// _14, tmp160
	cmp	w0, 0	// _14,
	bne	.L17		//,
// problem62.c:29:     assert(!func0(")"));
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp161,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp161,
	mov	w2, 29	//,
	adrp	x0, .LC1	// tmp162,
	add	x1, x0, :lo12:.LC1	//, tmp162,
	adrp	x0, .LC18	// tmp163,
	add	x0, x0, :lo12:.LC18	//, tmp163,
	bl	__assert_fail		//
.L17:
// problem62.c:30:     assert(!func0("(()"));
	adrp	x0, .LC19	// tmp164,
	add	x0, x0, :lo12:.LC19	//, tmp164,
	bl	func0		//
	and	w0, w0, 255	// _15, tmp165
	eor	w0, w0, 1	// tmp166, _15,
	and	w0, w0, 255	// _16, tmp166
	cmp	w0, 0	// _16,
	bne	.L18		//,
// problem62.c:30:     assert(!func0("(()"));
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp167,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp167,
	mov	w2, 30	//,
	adrp	x0, .LC1	// tmp168,
	add	x1, x0, :lo12:.LC1	//, tmp168,
	adrp	x0, .LC20	// tmp169,
	add	x0, x0, :lo12:.LC20	//, tmp169,
	bl	__assert_fail		//
.L18:
// problem62.c:31:     assert(!func0("()()(()())())(()"));
	adrp	x0, .LC21	// tmp170,
	add	x0, x0, :lo12:.LC21	//, tmp170,
	bl	func0		//
	and	w0, w0, 255	// _17, tmp171
	eor	w0, w0, 1	// tmp172, _17,
	and	w0, w0, 255	// _18, tmp172
	cmp	w0, 0	// _18,
	bne	.L19		//,
// problem62.c:31:     assert(!func0("()()(()())())(()"));
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp173,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp173,
	mov	w2, 31	//,
	adrp	x0, .LC1	// tmp174,
	add	x1, x0, :lo12:.LC1	//, tmp174,
	adrp	x0, .LC22	// tmp175,
	add	x0, x0, :lo12:.LC22	//, tmp175,
	bl	__assert_fail		//
.L19:
// problem62.c:32:     assert(!func0("()()(()())()))()"));
	adrp	x0, .LC23	// tmp176,
	add	x0, x0, :lo12:.LC23	//, tmp176,
	bl	func0		//
	and	w0, w0, 255	// _19, tmp177
	eor	w0, w0, 1	// tmp178, _19,
	and	w0, w0, 255	// _20, tmp178
	cmp	w0, 0	// _20,
	bne	.L20		//,
// problem62.c:32:     assert(!func0("()()(()())()))()"));
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp179,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp179,
	mov	w2, 32	//,
	adrp	x0, .LC1	// tmp180,
	add	x1, x0, :lo12:.LC1	//, tmp180,
	adrp	x0, .LC24	// tmp181,
	add	x0, x0, :lo12:.LC24	//, tmp181,
	bl	__assert_fail		//
.L20:
// problem62.c:34:     return 0;
	mov	w0, 0	// _46,
// problem62.c:35: }
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
