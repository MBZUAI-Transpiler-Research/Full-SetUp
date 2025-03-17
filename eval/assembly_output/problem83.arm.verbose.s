	.arch armv8-a
	.file	"problem83.c"
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
	stp	x29, x30, [sp, -48]!	//,,,
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	mov	x29, sp	//,
	str	x0, [sp, 24]	// str, str
// problem83.c:6:     int l = strlen(str);
	ldr	x0, [sp, 24]	//, str
	bl	strlen		//
// problem83.c:6:     int l = strlen(str);
	str	w0, [sp, 44]	// tmp97, l
// problem83.c:7:     if (l < 2) return false;
	ldr	w0, [sp, 44]	// tmp98, l
	cmp	w0, 1	// tmp98,
	bgt	.L2		//,
// problem83.c:7:     if (l < 2) return false;
	mov	w0, 0	// _5,
// problem83.c:7:     if (l < 2) return false;
	b	.L3		//
.L2:
// problem83.c:8:     for (int i = 2; i * i <= l; i++) {
	mov	w0, 2	// tmp99,
	str	w0, [sp, 40]	// tmp99, i
// problem83.c:8:     for (int i = 2; i * i <= l; i++) {
	b	.L4		//
.L6:
// problem83.c:9:         if (l % i == 0) return false;
	ldr	w0, [sp, 44]	// tmp100, l
	ldr	w1, [sp, 40]	// tmp113, i
	sdiv	w2, w0, w1	// tmp112, tmp100, tmp113
	ldr	w1, [sp, 40]	// tmp115, i
	mul	w1, w2, w1	// tmp114, tmp112, tmp115
	sub	w0, w0, w1	// _2, tmp100, tmp114
// problem83.c:9:         if (l % i == 0) return false;
	cmp	w0, 0	// _2,
	bne	.L5		//,
// problem83.c:9:         if (l % i == 0) return false;
	mov	w0, 0	// _5,
// problem83.c:9:         if (l % i == 0) return false;
	b	.L3		//
.L5:
// problem83.c:8:     for (int i = 2; i * i <= l; i++) {
	ldr	w0, [sp, 40]	// tmp117, i
	add	w0, w0, 1	// tmp116, tmp117,
	str	w0, [sp, 40]	// tmp116, i
.L4:
// problem83.c:8:     for (int i = 2; i * i <= l; i++) {
	ldr	w0, [sp, 40]	// tmp118, i
	mul	w0, w0, w0	// _3, tmp118, tmp118
// problem83.c:8:     for (int i = 2; i * i <= l; i++) {
	ldr	w1, [sp, 44]	// tmp119, l
	cmp	w1, w0	// tmp119, _3
	bge	.L6		//,
// problem83.c:11:     return true;
	mov	w0, 1	// _5,
.L3:
// problem83.c:12: }
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
	.string	"Hello"
	.align	3
.LC1:
	.string	"problem83.c"
	.align	3
.LC2:
	.string	"func0(\"Hello\") == true"
	.align	3
.LC3:
	.string	"abcdcba"
	.align	3
.LC4:
	.string	"func0(\"abcdcba\") == true"
	.align	3
.LC5:
	.string	"kittens"
	.align	3
.LC6:
	.string	"func0(\"kittens\") == true"
	.align	3
.LC7:
	.string	"orange"
	.align	3
.LC8:
	.string	"func0(\"orange\") == false"
	.align	3
.LC9:
	.string	"wow"
	.align	3
.LC10:
	.string	"func0(\"wow\") == true"
	.align	3
.LC11:
	.string	"world"
	.align	3
.LC12:
	.string	"func0(\"world\") == true"
	.align	3
.LC13:
	.string	"MadaM"
	.align	3
.LC14:
	.string	"func0(\"MadaM\") == true"
	.align	3
.LC15:
	.string	"Wow"
	.align	3
.LC16:
	.string	"func0(\"Wow\") == true"
	.align	3
.LC17:
	.string	""
	.align	3
.LC18:
	.string	"func0(\"\") == false"
	.align	3
.LC19:
	.string	"HI"
	.align	3
.LC20:
	.string	"func0(\"HI\") == true"
	.align	3
.LC21:
	.string	"go"
	.align	3
.LC22:
	.string	"func0(\"go\") == true"
	.align	3
.LC23:
	.string	"gogo"
	.align	3
.LC24:
	.string	"func0(\"gogo\") == false"
	.align	3
.LC25:
	.string	"aaaaaaaaaaaaaaa"
	.align	3
.LC26:
	.string	"func0(\"aaaaaaaaaaaaaaa\") == false"
	.align	3
.LC27:
	.string	"Madam"
	.align	3
.LC28:
	.string	"func0(\"Madam\") == true"
	.align	3
.LC29:
	.string	"M"
	.align	3
.LC30:
	.string	"func0(\"M\") == false"
	.align	3
.LC31:
	.string	"0"
	.align	3
.LC32:
	.string	"func0(\"0\") == false"
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
// problem83.c:20:     assert(func0("Hello") == true);
	adrp	x0, .LC0	// tmp116,
	add	x0, x0, :lo12:.LC0	//, tmp116,
	bl	func0		//
	and	w0, w0, 255	// _1, tmp117
// problem83.c:20:     assert(func0("Hello") == true);
	and	w0, w0, 1	// tmp118, _1,
	cmp	w0, 0	// tmp118,
	bne	.L8		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp119,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp119,
	mov	w2, 20	//,
	adrp	x0, .LC1	// tmp120,
	add	x1, x0, :lo12:.LC1	//, tmp120,
	adrp	x0, .LC2	// tmp121,
	add	x0, x0, :lo12:.LC2	//, tmp121,
	bl	__assert_fail		//
.L8:
// problem83.c:21:     assert(func0("abcdcba") == true);
	adrp	x0, .LC3	// tmp122,
	add	x0, x0, :lo12:.LC3	//, tmp122,
	bl	func0		//
	and	w0, w0, 255	// _2, tmp123
// problem83.c:21:     assert(func0("abcdcba") == true);
	and	w0, w0, 1	// tmp124, _2,
	cmp	w0, 0	// tmp124,
	bne	.L9		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp125,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp125,
	mov	w2, 21	//,
	adrp	x0, .LC1	// tmp126,
	add	x1, x0, :lo12:.LC1	//, tmp126,
	adrp	x0, .LC4	// tmp127,
	add	x0, x0, :lo12:.LC4	//, tmp127,
	bl	__assert_fail		//
.L9:
// problem83.c:22:     assert(func0("kittens") == true);
	adrp	x0, .LC5	// tmp128,
	add	x0, x0, :lo12:.LC5	//, tmp128,
	bl	func0		//
	and	w0, w0, 255	// _3, tmp129
// problem83.c:22:     assert(func0("kittens") == true);
	and	w0, w0, 1	// tmp130, _3,
	cmp	w0, 0	// tmp130,
	bne	.L10		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp131,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp131,
	mov	w2, 22	//,
	adrp	x0, .LC1	// tmp132,
	add	x1, x0, :lo12:.LC1	//, tmp132,
	adrp	x0, .LC6	// tmp133,
	add	x0, x0, :lo12:.LC6	//, tmp133,
	bl	__assert_fail		//
.L10:
// problem83.c:23:     assert(func0("orange") == false);
	adrp	x0, .LC7	// tmp134,
	add	x0, x0, :lo12:.LC7	//, tmp134,
	bl	func0		//
	and	w0, w0, 255	// _4, tmp135
// problem83.c:23:     assert(func0("orange") == false);
	eor	w0, w0, 1	// tmp136, _4,
	and	w0, w0, 255	// _5, tmp136
	and	w0, w0, 1	// tmp137, _5,
	cmp	w0, 0	// tmp137,
	bne	.L11		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp138,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp138,
	mov	w2, 23	//,
	adrp	x0, .LC1	// tmp139,
	add	x1, x0, :lo12:.LC1	//, tmp139,
	adrp	x0, .LC8	// tmp140,
	add	x0, x0, :lo12:.LC8	//, tmp140,
	bl	__assert_fail		//
.L11:
// problem83.c:24:     assert(func0("wow") == true);
	adrp	x0, .LC9	// tmp141,
	add	x0, x0, :lo12:.LC9	//, tmp141,
	bl	func0		//
	and	w0, w0, 255	// _6, tmp142
// problem83.c:24:     assert(func0("wow") == true);
	and	w0, w0, 1	// tmp143, _6,
	cmp	w0, 0	// tmp143,
	bne	.L12		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp144,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp144,
	mov	w2, 24	//,
	adrp	x0, .LC1	// tmp145,
	add	x1, x0, :lo12:.LC1	//, tmp145,
	adrp	x0, .LC10	// tmp146,
	add	x0, x0, :lo12:.LC10	//, tmp146,
	bl	__assert_fail		//
.L12:
// problem83.c:25:     assert(func0("world") == true);
	adrp	x0, .LC11	// tmp147,
	add	x0, x0, :lo12:.LC11	//, tmp147,
	bl	func0		//
	and	w0, w0, 255	// _7, tmp148
// problem83.c:25:     assert(func0("world") == true);
	and	w0, w0, 1	// tmp149, _7,
	cmp	w0, 0	// tmp149,
	bne	.L13		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp150,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp150,
	mov	w2, 25	//,
	adrp	x0, .LC1	// tmp151,
	add	x1, x0, :lo12:.LC1	//, tmp151,
	adrp	x0, .LC12	// tmp152,
	add	x0, x0, :lo12:.LC12	//, tmp152,
	bl	__assert_fail		//
.L13:
// problem83.c:26:     assert(func0("MadaM") == true);
	adrp	x0, .LC13	// tmp153,
	add	x0, x0, :lo12:.LC13	//, tmp153,
	bl	func0		//
	and	w0, w0, 255	// _8, tmp154
// problem83.c:26:     assert(func0("MadaM") == true);
	and	w0, w0, 1	// tmp155, _8,
	cmp	w0, 0	// tmp155,
	bne	.L14		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp156,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp156,
	mov	w2, 26	//,
	adrp	x0, .LC1	// tmp157,
	add	x1, x0, :lo12:.LC1	//, tmp157,
	adrp	x0, .LC14	// tmp158,
	add	x0, x0, :lo12:.LC14	//, tmp158,
	bl	__assert_fail		//
.L14:
// problem83.c:27:     assert(func0("Wow") == true);
	adrp	x0, .LC15	// tmp159,
	add	x0, x0, :lo12:.LC15	//, tmp159,
	bl	func0		//
	and	w0, w0, 255	// _9, tmp160
// problem83.c:27:     assert(func0("Wow") == true);
	and	w0, w0, 1	// tmp161, _9,
	cmp	w0, 0	// tmp161,
	bne	.L15		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp162,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp162,
	mov	w2, 27	//,
	adrp	x0, .LC1	// tmp163,
	add	x1, x0, :lo12:.LC1	//, tmp163,
	adrp	x0, .LC16	// tmp164,
	add	x0, x0, :lo12:.LC16	//, tmp164,
	bl	__assert_fail		//
.L15:
// problem83.c:28:     assert(func0("") == false);
	adrp	x0, .LC17	// tmp165,
	add	x0, x0, :lo12:.LC17	//, tmp165,
	bl	func0		//
	and	w0, w0, 255	// _10, tmp166
// problem83.c:28:     assert(func0("") == false);
	eor	w0, w0, 1	// tmp167, _10,
	and	w0, w0, 255	// _11, tmp167
	and	w0, w0, 1	// tmp168, _11,
	cmp	w0, 0	// tmp168,
	bne	.L16		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp169,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp169,
	mov	w2, 28	//,
	adrp	x0, .LC1	// tmp170,
	add	x1, x0, :lo12:.LC1	//, tmp170,
	adrp	x0, .LC18	// tmp171,
	add	x0, x0, :lo12:.LC18	//, tmp171,
	bl	__assert_fail		//
.L16:
// problem83.c:29:     assert(func0("HI") == true);
	adrp	x0, .LC19	// tmp172,
	add	x0, x0, :lo12:.LC19	//, tmp172,
	bl	func0		//
	and	w0, w0, 255	// _12, tmp173
// problem83.c:29:     assert(func0("HI") == true);
	and	w0, w0, 1	// tmp174, _12,
	cmp	w0, 0	// tmp174,
	bne	.L17		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp175,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp175,
	mov	w2, 29	//,
	adrp	x0, .LC1	// tmp176,
	add	x1, x0, :lo12:.LC1	//, tmp176,
	adrp	x0, .LC20	// tmp177,
	add	x0, x0, :lo12:.LC20	//, tmp177,
	bl	__assert_fail		//
.L17:
// problem83.c:30:     assert(func0("go") == true);
	adrp	x0, .LC21	// tmp178,
	add	x0, x0, :lo12:.LC21	//, tmp178,
	bl	func0		//
	and	w0, w0, 255	// _13, tmp179
// problem83.c:30:     assert(func0("go") == true);
	and	w0, w0, 1	// tmp180, _13,
	cmp	w0, 0	// tmp180,
	bne	.L18		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp181,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp181,
	mov	w2, 30	//,
	adrp	x0, .LC1	// tmp182,
	add	x1, x0, :lo12:.LC1	//, tmp182,
	adrp	x0, .LC22	// tmp183,
	add	x0, x0, :lo12:.LC22	//, tmp183,
	bl	__assert_fail		//
.L18:
// problem83.c:31:     assert(func0("gogo") == false);
	adrp	x0, .LC23	// tmp184,
	add	x0, x0, :lo12:.LC23	//, tmp184,
	bl	func0		//
	and	w0, w0, 255	// _14, tmp185
// problem83.c:31:     assert(func0("gogo") == false);
	eor	w0, w0, 1	// tmp186, _14,
	and	w0, w0, 255	// _15, tmp186
	and	w0, w0, 1	// tmp187, _15,
	cmp	w0, 0	// tmp187,
	bne	.L19		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp188,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp188,
	mov	w2, 31	//,
	adrp	x0, .LC1	// tmp189,
	add	x1, x0, :lo12:.LC1	//, tmp189,
	adrp	x0, .LC24	// tmp190,
	add	x0, x0, :lo12:.LC24	//, tmp190,
	bl	__assert_fail		//
.L19:
// problem83.c:32:     assert(func0("aaaaaaaaaaaaaaa") == false);
	adrp	x0, .LC25	// tmp191,
	add	x0, x0, :lo12:.LC25	//, tmp191,
	bl	func0		//
	and	w0, w0, 255	// _16, tmp192
// problem83.c:32:     assert(func0("aaaaaaaaaaaaaaa") == false);
	eor	w0, w0, 1	// tmp193, _16,
	and	w0, w0, 255	// _17, tmp193
	and	w0, w0, 1	// tmp194, _17,
	cmp	w0, 0	// tmp194,
	bne	.L20		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp195,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp195,
	mov	w2, 32	//,
	adrp	x0, .LC1	// tmp196,
	add	x1, x0, :lo12:.LC1	//, tmp196,
	adrp	x0, .LC26	// tmp197,
	add	x0, x0, :lo12:.LC26	//, tmp197,
	bl	__assert_fail		//
.L20:
// problem83.c:33:     assert(func0("Madam") == true);
	adrp	x0, .LC27	// tmp198,
	add	x0, x0, :lo12:.LC27	//, tmp198,
	bl	func0		//
	and	w0, w0, 255	// _18, tmp199
// problem83.c:33:     assert(func0("Madam") == true);
	and	w0, w0, 1	// tmp200, _18,
	cmp	w0, 0	// tmp200,
	bne	.L21		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp201,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp201,
	mov	w2, 33	//,
	adrp	x0, .LC1	// tmp202,
	add	x1, x0, :lo12:.LC1	//, tmp202,
	adrp	x0, .LC28	// tmp203,
	add	x0, x0, :lo12:.LC28	//, tmp203,
	bl	__assert_fail		//
.L21:
// problem83.c:34:     assert(func0("M") == false);
	adrp	x0, .LC29	// tmp204,
	add	x0, x0, :lo12:.LC29	//, tmp204,
	bl	func0		//
	and	w0, w0, 255	// _19, tmp205
// problem83.c:34:     assert(func0("M") == false);
	eor	w0, w0, 1	// tmp206, _19,
	and	w0, w0, 255	// _20, tmp206
	and	w0, w0, 1	// tmp207, _20,
	cmp	w0, 0	// tmp207,
	bne	.L22		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp208,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp208,
	mov	w2, 34	//,
	adrp	x0, .LC1	// tmp209,
	add	x1, x0, :lo12:.LC1	//, tmp209,
	adrp	x0, .LC30	// tmp210,
	add	x0, x0, :lo12:.LC30	//, tmp210,
	bl	__assert_fail		//
.L22:
// problem83.c:35:     assert(func0("0") == false);
	adrp	x0, .LC31	// tmp211,
	add	x0, x0, :lo12:.LC31	//, tmp211,
	bl	func0		//
	and	w0, w0, 255	// _21, tmp212
// problem83.c:35:     assert(func0("0") == false);
	eor	w0, w0, 1	// tmp213, _21,
	and	w0, w0, 255	// _22, tmp213
	and	w0, w0, 1	// tmp214, _22,
	cmp	w0, 0	// tmp214,
	bne	.L23		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp215,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp215,
	mov	w2, 35	//,
	adrp	x0, .LC1	// tmp216,
	add	x1, x0, :lo12:.LC1	//, tmp216,
	adrp	x0, .LC32	// tmp217,
	add	x0, x0, :lo12:.LC32	//, tmp217,
	bl	__assert_fail		//
.L23:
// problem83.c:37:     return 0;
	mov	w0, 0	// _56,
// problem83.c:38: }
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
